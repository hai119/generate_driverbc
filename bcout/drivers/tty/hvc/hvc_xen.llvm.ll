; ModuleID = '../bcout/drivers/tty/hvc/hvc_xen.llvm.bc'
source_filename = "drivers/tty/hvc/hvc_xen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xen_hvc_init6:\09\09\09"
module asm ".long\09xen_hvc_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.con_initcall.init\22, \22a\22\09"
module asm "__initcall_xen_cons_init:\09\09\09"
module asm ".long\09xen_cons_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.66 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i32, %struct.anon.68, %union.anon.69 }
%struct.anon.68 = type { i16, i16, i32 }
%union.anon.69 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.poll_table_struct = type opaque
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.31, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.31 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.module = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.console = type { [16 x i8], {}*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* }
%struct.start_info = type { [32 x i8], i64, i64, i32, i64, i32, %union.anon.70, i64, i64, i64, i64, i64, [1024 x i8], i64, i64 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i64, i32 }
%struct.hv_ops = type { i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)*, i32 (i32, i1)*, i32 (%struct.hvc_struct*, i32)*, void (%struct.hvc_struct*, i32)*, void (%struct.hvc_struct*, i32)*, i32 (%struct.hvc_struct*)*, i32 (%struct.hvc_struct*, i32, i32)*, void (%struct.hvc_struct*, i32)* }
%struct.hvc_struct = type { %struct.tty_port, %struct.spinlock, i32, i32, i8*, i32, i32, i32, %struct.hv_ops*, i32, i32, %struct.winsize, %struct.work_struct, %struct.list_head, i64 }
%struct.xenbus_driver = type { i8*, %struct.xenbus_device_id*, i8, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, void (%struct.xenbus_device*, i32)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)*, %struct.device_driver, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, void (%struct.xenbus_device*)* }
%struct.xenbus_device_id = type { [32 x i8] }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.kmem_cache = type opaque
%struct.xencons_info = type { %struct.list_head, %struct.xenbus_device*, %struct.xencons_interface*, i32, %struct.hvc_struct*, i32, i32, i32 }
%struct.xencons_interface = type { [1024 x i8], [2048 x i8], i32, i32, i32, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xen_hvm_param = type { i16, i32, i64 }
%struct.evtchn_send = type { i32 }
%struct.xenbus_transaction = type { i32 }

@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_xen_hvc_init241 = internal global i8* bitcast (i32 ()* @xen_hvc_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_xen_cons_init242 = internal global i8* bitcast (i32 ()* @xen_cons_init to i8*), section ".discard.addressable", align 8, !dbg !4711
@xenboot_console = dso_local global { [16 x i8], void (%struct.console*, i8*, i32)*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* } { [16 x i8] c"xenboot\00\00\00\00\00\00\00\00\00", void (%struct.console*, i8*, i32)* @xenboot_write_console, i32 (%struct.console*, i8*, i32)* null, %struct.tty_driver* (%struct.console*, i32*)* null, void ()* null, i32 (%struct.console*, i8*)* @xenboot_console_setup, i32 (%struct.console*)* null, i32 (%struct.console*, i8*, i32, i8*)* null, i16 25, i16 -1, i32 0, i8* null, %struct.console* null }, align 8, !dbg !4713
@xen_raw_printk.buf = internal global [512 x i8] zeroinitializer, align 16, !dbg !4751
@xenconsoles = internal global %struct.list_head { %struct.list_head* @xenconsoles, %struct.list_head* @xenconsoles }, align 8, !dbg !4759
@xen_start_info = external dso_local global %struct.start_info*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\013Cannot get hvm parameter %s (%d): %d!\0A\00", align 1
@param_name.names = internal constant [19 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)], align 16, !dbg !4761
@.str.1 = private unnamed_addr constant [13 x i8] c"CALLBACK_IRQ\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"STORE_PFN\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"STORE_EVTCHN\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PAE_ENABLED\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"IOREQ_PFN\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"BUFIOREQ_PFN\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"TIMER_MODE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"HPET_ENABLED\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"IDENT_PT\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"DM_DOMAIN\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ACPI_S_STATE\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"VM86_TSS\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"VPT_ALIGN\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"CONSOLE_PFN\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"CONSOLE_EVTCHN\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@dom0_hvc_ops = internal constant %struct.hv_ops { i32 (i32, i8*, i32)* @dom0_read_console, i32 (i32, i8*, i32)* @dom0_write_console, i32 (i32, i1)* null, i32 (%struct.hvc_struct*, i32)* @notifier_add_irq, void (%struct.hvc_struct*, i32)* @notifier_del_irq, void (%struct.hvc_struct*, i32)* @notifier_hangup_irq, i32 (%struct.hvc_struct*)* null, i32 (%struct.hvc_struct*, i32, i32)* null, void (%struct.hvc_struct*, i32)* null }, align 8, !dbg !4769
@domU_hvc_ops = internal constant %struct.hv_ops { i32 (i32, i8*, i32)* @domU_read_console, i32 (i32, i8*, i32)* @domU_write_console, i32 (i32, i1)* null, i32 (%struct.hvc_struct*, i32)* @notifier_add_irq, void (%struct.hvc_struct*, i32)* @notifier_del_irq, void (%struct.hvc_struct*, i32)* @notifier_hangup_irq, i32 (%struct.hvc_struct*)* null, i32 (%struct.hvc_struct*, i32, i32)* null, void (%struct.hvc_struct*, i32)* null }, align 8, !dbg !4771
@xencons_lock = internal global %struct.spinlock undef, align 1, !dbg !4773
@xencons_driver = internal global %struct.xenbus_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct.xenbus_device_id* getelementptr inbounds ([2 x %struct.xenbus_device_id], [2 x %struct.xenbus_device_id]* @xencons_ids, i32 0, i32 0), i8 0, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xencons_probe, void (%struct.xenbus_device*, i32)* @xencons_backend_changed, i32 (%struct.xenbus_device*)* @xencons_remove, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* @xencons_resume, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)* null, %struct.device_driver zeroinitializer, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* null, void (%struct.xenbus_device*)* null }, align 8, !dbg !4775
@.str.18 = private unnamed_addr constant [8 x i8] c"hvc_xen\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.19 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"drivers/tty/hvc/hvc_xen.c\00", align 1
@page_offset_base = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@machine_to_phys_nr = external dso_local global i64, align 8
@machine_to_phys_mapping = external dso_local global i64*, align 8
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"xenconsole\00", align 1
@xencons_ids = internal constant [2 x %struct.xenbus_device_id] [%struct.xenbus_device_id { [32 x i8] c"console\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.xenbus_device_id zeroinitializer], align 16, !dbg !4812
@.str.22 = private unnamed_addr constant [25 x i8] c"allocating device memory\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"writing xenstore\00", align 1
@phys_base = external dso_local global i64, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"(early) \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@xenboot_console_setup.xenboot = internal global %struct.xencons_info zeroinitializer, align 8, !dbg !4815
@.str.32 = private unnamed_addr constant [13 x i8] c"XenVMMXenVMM\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xen_hvc_init241 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_xen_cons_init242 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_console_resume() #0 !dbg !4824 {
entry:
  %info = alloca %struct.xencons_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !4825, metadata !DIExpression()), !dbg !4826
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !4827
  store %struct.xencons_info* %call, %struct.xencons_info** %info, align 8, !dbg !4826
  %0 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4828
  %cmp = icmp ne %struct.xencons_info* %0, null, !dbg !4830
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !4831

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4832
  %irq = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %1, i32 0, i32 5, !dbg !4833
  %2 = load i32, i32* %irq, align 8, !dbg !4833
  %tobool = icmp ne i32 %2, 0, !dbg !4832
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4834

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @xen_domain_type, align 4, !dbg !4835
  %cmp1 = icmp ne i32 %3, 0, !dbg !4835
  br i1 %cmp1, label %land.lhs.true2, label %if.then4, !dbg !4835

land.lhs.true2:                                   ; preds = %if.then
  %4 = load i32, i32* @xen_start_flags, align 4, !dbg !4835
  %and = and i32 %4, 2, !dbg !4835
  %tobool3 = icmp ne i32 %and, 0, !dbg !4835
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4838

if.then4:                                         ; preds = %land.lhs.true2, %if.then
  %5 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4839
  call void @xen_console_update_evtchn(%struct.xencons_info* %5) #11, !dbg !4840
  br label %if.end, !dbg !4840

if.end:                                           ; preds = %if.then4, %land.lhs.true2
  %6 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4841
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %6, i32 0, i32 3, !dbg !4842
  %7 = load i32, i32* %evtchn, align 8, !dbg !4842
  %8 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4843
  %irq5 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %8, i32 0, i32 5, !dbg !4844
  %9 = load i32, i32* %irq5, align 8, !dbg !4844
  call void @rebind_evtchn_irq(i32 %7, i32 %9) #11, !dbg !4845
  br label %if.end6, !dbg !4846

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void, !dbg !4847
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xencons_info* @vtermno_to_xencons(i32 %vtermno) #0 !dbg !4848 {
entry:
  %retval = alloca %struct.xencons_info*, align 8
  %vtermno.addr = alloca i32, align 4
  %entry1 = alloca %struct.xencons_info*, align 8
  %n = alloca %struct.xencons_info*, align 8
  %ret = alloca %struct.xencons_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xencons_info*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.xencons_info*, align 8
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.xencons_info*, align 8
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %entry1, metadata !4853, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %n, metadata !4855, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %ret, metadata !4857, metadata !DIExpression()), !dbg !4858
  store %struct.xencons_info* null, %struct.xencons_info** %ret, align 8, !dbg !4858
  %call = call i32 @list_empty(%struct.list_head* @xenconsoles) #11, !dbg !4859
  %tobool = icmp ne i32 %call, 0, !dbg !4859
  br i1 %tobool, label %if.then, label %if.end, !dbg !4861

if.then:                                          ; preds = %entry
  store %struct.xencons_info* null, %struct.xencons_info** %retval, align 8, !dbg !4862
  br label %return, !dbg !4862

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4863, metadata !DIExpression()), !dbg !4866
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xenconsoles, i32 0, i32 0), align 8, !dbg !4866
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4866
  store i8* %1, i8** %__mptr, align 8, !dbg !4866
  br label %do.body, !dbg !4866

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4867

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4866
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4866
  %3 = bitcast i8* %add.ptr to %struct.xencons_info*, !dbg !4866
  store %struct.xencons_info* %3, %struct.xencons_info** %tmp, align 8, !dbg !4867
  %4 = load %struct.xencons_info*, %struct.xencons_info** %tmp, align 8, !dbg !4866
  store %struct.xencons_info* %4, %struct.xencons_info** %entry1, align 8, !dbg !4869
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4870, metadata !DIExpression()), !dbg !4872
  %5 = load %struct.xencons_info*, %struct.xencons_info** %entry1, align 8, !dbg !4872
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %5, i32 0, i32 0, !dbg !4872
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4872
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4872
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4872
  store i8* %7, i8** %__mptr2, align 8, !dbg !4872
  br label %do.body3, !dbg !4872

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4873

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !4872
  %add.ptr6 = getelementptr i8, i8* %8, i64 0, !dbg !4872
  %9 = bitcast i8* %add.ptr6 to %struct.xencons_info*, !dbg !4872
  store %struct.xencons_info* %9, %struct.xencons_info** %tmp5, align 8, !dbg !4873
  %10 = load %struct.xencons_info*, %struct.xencons_info** %tmp5, align 8, !dbg !4872
  store %struct.xencons_info* %10, %struct.xencons_info** %n, align 8, !dbg !4869
  br label %for.cond, !dbg !4869

for.cond:                                         ; preds = %do.end16, %do.end4
  %11 = load %struct.xencons_info*, %struct.xencons_info** %entry1, align 8, !dbg !4875
  %list7 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %11, i32 0, i32 0, !dbg !4875
  %cmp = icmp eq %struct.list_head* %list7, @xenconsoles, !dbg !4875
  %lnot = xor i1 %cmp, true, !dbg !4875
  br i1 %lnot, label %for.body, label %for.end, !dbg !4869

for.body:                                         ; preds = %for.cond
  %12 = load %struct.xencons_info*, %struct.xencons_info** %entry1, align 8, !dbg !4877
  %vtermno8 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %12, i32 0, i32 6, !dbg !4880
  %13 = load i32, i32* %vtermno8, align 4, !dbg !4880
  %14 = load i32, i32* %vtermno.addr, align 4, !dbg !4881
  %cmp9 = icmp eq i32 %13, %14, !dbg !4882
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4883

if.then10:                                        ; preds = %for.body
  %15 = load %struct.xencons_info*, %struct.xencons_info** %entry1, align 8, !dbg !4884
  store %struct.xencons_info* %15, %struct.xencons_info** %ret, align 8, !dbg !4886
  br label %for.end, !dbg !4887

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !4888

for.inc:                                          ; preds = %if.end11
  %16 = load %struct.xencons_info*, %struct.xencons_info** %n, align 8, !dbg !4875
  store %struct.xencons_info* %16, %struct.xencons_info** %entry1, align 8, !dbg !4875
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !4889, metadata !DIExpression()), !dbg !4891
  %17 = load %struct.xencons_info*, %struct.xencons_info** %n, align 8, !dbg !4891
  %list13 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %17, i32 0, i32 0, !dbg !4891
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %list13, i32 0, i32 0, !dbg !4891
  %18 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !4891
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4891
  store i8* %19, i8** %__mptr12, align 8, !dbg !4891
  br label %do.body15, !dbg !4891

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !4892

do.end16:                                         ; preds = %do.body15
  %20 = load i8*, i8** %__mptr12, align 8, !dbg !4891
  %add.ptr18 = getelementptr i8, i8* %20, i64 0, !dbg !4891
  %21 = bitcast i8* %add.ptr18 to %struct.xencons_info*, !dbg !4891
  store %struct.xencons_info* %21, %struct.xencons_info** %tmp17, align 8, !dbg !4892
  %22 = load %struct.xencons_info*, %struct.xencons_info** %tmp17, align 8, !dbg !4891
  store %struct.xencons_info* %22, %struct.xencons_info** %n, align 8, !dbg !4875
  br label %for.cond, !dbg !4875, !llvm.loop !4894

for.end:                                          ; preds = %if.then10, %for.cond
  %23 = load %struct.xencons_info*, %struct.xencons_info** %ret, align 8, !dbg !4896
  store %struct.xencons_info* %23, %struct.xencons_info** %retval, align 8, !dbg !4897
  br label %return, !dbg !4897

return:                                           ; preds = %for.end, %if.then
  %24 = load %struct.xencons_info*, %struct.xencons_info** %retval, align 8, !dbg !4898
  ret %struct.xencons_info* %24, !dbg !4898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_console_update_evtchn(%struct.xencons_info* %info) #0 !dbg !4899 {
entry:
  %info.addr = alloca %struct.xencons_info*, align 8
  %v = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4904
  %cmp = icmp eq i32 %0, 2, !dbg !4904
  br i1 %cmp, label %if.then, label %if.else, !dbg !4906

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %v, metadata !4907, metadata !DIExpression()), !dbg !4910
  store i64 0, i64* %v, align 8, !dbg !4910
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4911, metadata !DIExpression()), !dbg !4912
  %call = call i32 @hvm_get_parameter(i32 18, i64* %v) #11, !dbg !4913
  store i32 %call, i32* %err, align 4, !dbg !4914
  %1 = load i32, i32* %err, align 4, !dbg !4915
  %tobool = icmp ne i32 %1, 0, !dbg !4915
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4917

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %v, align 8, !dbg !4918
  %tobool1 = icmp ne i64 %2, 0, !dbg !4918
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4919

if.then2:                                         ; preds = %land.lhs.true
  %3 = load i64, i64* %v, align 8, !dbg !4920
  %conv = trunc i64 %3 to i32, !dbg !4920
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !4921
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %4, i32 0, i32 3, !dbg !4922
  store i32 %conv, i32* %evtchn, align 8, !dbg !4923
  br label %if.end, !dbg !4921

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  br label %if.end5, !dbg !4924

if.else:                                          ; preds = %entry
  %5 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !4925
  %console = getelementptr inbounds %struct.start_info, %struct.start_info* %5, i32 0, i32 6, !dbg !4926
  %domU = bitcast %union.anon.70* %console to %struct.anon.71*, !dbg !4927
  %evtchn3 = getelementptr inbounds %struct.anon.71, %struct.anon.71* %domU, i32 0, i32 1, !dbg !4928
  %6 = load i32, i32* %evtchn3, align 8, !dbg !4928
  %7 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !4929
  %evtchn4 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %7, i32 0, i32 3, !dbg !4930
  store i32 %6, i32* %evtchn4, align 8, !dbg !4931
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  ret void, !dbg !4932
}

; Function Attrs: noredzone
declare dso_local void @rebind_evtchn_irq(i32, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_hvc_init() #3 section ".init.text" !dbg !4933 {
entry:
  %lock.addr.i40 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i40, metadata !4936, metadata !DIExpression()), !dbg !4941
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !4947
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %info = alloca %struct.xencons_info*, align 8
  %ops = alloca %struct.hv_ops*, align 8
  call void @llvm.dbg.declare(metadata i32* %r, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.declare(metadata %struct.hv_ops** %ops, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4955
  %cmp = icmp ne i32 %0, 0, !dbg !4955
  br i1 %cmp, label %if.end, label %if.then, !dbg !4957

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4958
  br label %return, !dbg !4958

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !4959
  %cmp1 = icmp ne i32 %1, 0, !dbg !4959
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !4959

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @xen_start_flags, align 4, !dbg !4959
  %and = and i32 %2, 2, !dbg !4959
  %tobool = icmp ne i32 %and, 0, !dbg !4959
  br i1 %tobool, label %if.then2, label %if.else, !dbg !4961

if.then2:                                         ; preds = %land.lhs.true
  store %struct.hv_ops* @dom0_hvc_ops, %struct.hv_ops** %ops, align 8, !dbg !4962
  %call = call i32 @xen_initial_domain_console_init() #11, !dbg !4964
  store i32 %call, i32* %r, align 4, !dbg !4965
  %3 = load i32, i32* %r, align 4, !dbg !4966
  %cmp3 = icmp slt i32 %3, 0, !dbg !4968
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4969

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %r, align 4, !dbg !4970
  store i32 %4, i32* %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end5:                                          ; preds = %if.then2
  %call6 = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !4972
  store %struct.xencons_info* %call6, %struct.xencons_info** %info, align 8, !dbg !4973
  br label %if.end18, !dbg !4974

if.else:                                          ; preds = %land.lhs.true, %if.end
  store %struct.hv_ops* @domU_hvc_ops, %struct.hv_ops** %ops, align 8, !dbg !4975
  %5 = load i32, i32* @xen_domain_type, align 4, !dbg !4977
  %cmp7 = icmp eq i32 %5, 2, !dbg !4977
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !4979

if.then8:                                         ; preds = %if.else
  %call9 = call i32 @xen_hvm_console_init() #11, !dbg !4980
  store i32 %call9, i32* %r, align 4, !dbg !4981
  br label %if.end12, !dbg !4982

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @xen_pv_console_init() #11, !dbg !4983
  store i32 %call11, i32* %r, align 4, !dbg !4984
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  %6 = load i32, i32* %r, align 4, !dbg !4985
  %cmp13 = icmp slt i32 %6, 0, !dbg !4987
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4988

if.then14:                                        ; preds = %if.end12
  %7 = load i32, i32* %r, align 4, !dbg !4989
  store i32 %7, i32* %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

if.end15:                                         ; preds = %if.end12
  %call16 = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !4991
  store %struct.xencons_info* %call16, %struct.xencons_info** %info, align 8, !dbg !4992
  %8 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4993
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %8, i32 0, i32 3, !dbg !4994
  %9 = load i32, i32* %evtchn, align 8, !dbg !4994
  %call17 = call i32 @bind_evtchn_to_irq(i32 %9) #11, !dbg !4995
  %10 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4996
  %irq = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %10, i32 0, i32 5, !dbg !4997
  store i32 %call17, i32* %irq, align 8, !dbg !4998
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end5
  %11 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !4999
  %irq19 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %11, i32 0, i32 5, !dbg !5001
  %12 = load i32, i32* %irq19, align 8, !dbg !5001
  %cmp20 = icmp slt i32 %12, 0, !dbg !5002
  br i1 %cmp20, label %if.then21, label %if.else23, !dbg !5003

if.then21:                                        ; preds = %if.end18
  %13 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5004
  %irq22 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %13, i32 0, i32 5, !dbg !5005
  store i32 0, i32* %irq22, align 8, !dbg !5006
  br label %if.end25, !dbg !5004

if.else23:                                        ; preds = %if.end18
  %14 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5007
  %irq24 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %14, i32 0, i32 5, !dbg !5008
  %15 = load i32, i32* %irq24, align 8, !dbg !5008
  call void @irq_set_noprobe(i32 %15) #11, !dbg !5009
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then21
  %16 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5010
  %irq26 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %16, i32 0, i32 5, !dbg !5011
  %17 = load i32, i32* %irq26, align 8, !dbg !5011
  %18 = load %struct.hv_ops*, %struct.hv_ops** %ops, align 8, !dbg !5012
  %call27 = call %struct.hvc_struct* @hvc_alloc(i32 5793134, i32 %17, %struct.hv_ops* %18, i32 256) #11, !dbg !5013
  %19 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5014
  %hvc = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %19, i32 0, i32 4, !dbg !5015
  store %struct.hvc_struct* %call27, %struct.hvc_struct** %hvc, align 8, !dbg !5016
  %20 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5017
  %hvc28 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %20, i32 0, i32 4, !dbg !5018
  %21 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc28, align 8, !dbg !5018
  %22 = bitcast %struct.hvc_struct* %21 to i8*, !dbg !5017
  %call29 = call zeroext i1 @IS_ERR(i8* %22) #11, !dbg !5019
  br i1 %call29, label %if.then30, label %if.end38, !dbg !5020

if.then30:                                        ; preds = %if.end25
  %23 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5021
  %hvc31 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %23, i32 0, i32 4, !dbg !5022
  %24 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc31, align 8, !dbg !5022
  %25 = bitcast %struct.hvc_struct* %24 to i8*, !dbg !5021
  %call32 = call i64 @PTR_ERR(i8* %25) #11, !dbg !5023
  %conv = trunc i64 %call32 to i32, !dbg !5023
  store i32 %conv, i32* %r, align 4, !dbg !5024
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5025, !srcloc !5027
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5028
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !5028
  %rlock.i = bitcast %union.anon.1* %27 to %struct.raw_spinlock*, !dbg !5028
  %28 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5030
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %28, i32 0, i32 0, !dbg !5031
  call void @list_del(%struct.list_head* %list) #11, !dbg !5032
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i40, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5033, !srcloc !5035
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i40, align 8, !dbg !5036
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !5036
  %rlock.i41 = bitcast %union.anon.1* %30 to %struct.raw_spinlock*, !dbg !5036
  %31 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5038
  %irq33 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %31, i32 0, i32 5, !dbg !5040
  %32 = load i32, i32* %irq33, align 8, !dbg !5040
  %tobool34 = icmp ne i32 %32, 0, !dbg !5038
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !5041

if.then35:                                        ; preds = %if.then30
  %33 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5042
  %irq36 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %33, i32 0, i32 5, !dbg !5043
  %34 = load i32, i32* %irq36, align 8, !dbg !5043
  call void @unbind_from_irqhandler(i32 %34, i8* null) #11, !dbg !5044
  br label %if.end37, !dbg !5044

if.end37:                                         ; preds = %if.then35, %if.then30
  %35 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5045
  %36 = bitcast %struct.xencons_info* %35 to i8*, !dbg !5045
  call void @kfree(i8* %36) #11, !dbg !5046
  %37 = load i32, i32* %r, align 4, !dbg !5047
  store i32 %37, i32* %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

if.end38:                                         ; preds = %if.end25
  store i32 0, i32* %r, align 4, !dbg !5049
  %call39 = call i32 @__xenbus_register_frontend(%struct.xenbus_driver* @xencons_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !5050
  store i32 %call39, i32* %r, align 4, !dbg !5051
  %38 = load i32, i32* %r, align 4, !dbg !5052
  store i32 %38, i32* %retval, align 4, !dbg !5053
  br label %return, !dbg !5053

return:                                           ; preds = %if.end38, %if.end37, %if.then14, %if.then4, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !5054
  ret i32 %39, !dbg !5054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_cons_init() #0 !dbg !5055 {
entry:
  %retval = alloca i32, align 4
  %ops = alloca %struct.hv_ops*, align 8
  %r = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.hv_ops** %ops, metadata !5056, metadata !DIExpression()), !dbg !5057
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5058
  %cmp = icmp ne i32 %0, 0, !dbg !5058
  br i1 %cmp, label %if.end, label %if.then, !dbg !5060

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5061
  br label %return, !dbg !5061

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5062
  %cmp1 = icmp ne i32 %1, 0, !dbg !5062
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5062

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @xen_start_flags, align 4, !dbg !5062
  %and = and i32 %2, 2, !dbg !5062
  %tobool = icmp ne i32 %and, 0, !dbg !5062
  br i1 %tobool, label %if.then2, label %if.else, !dbg !5064

if.then2:                                         ; preds = %land.lhs.true
  store %struct.hv_ops* @dom0_hvc_ops, %struct.hv_ops** %ops, align 8, !dbg !5065
  br label %if.end11, !dbg !5066

if.else:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5067, metadata !DIExpression()), !dbg !5069
  store %struct.hv_ops* @domU_hvc_ops, %struct.hv_ops** %ops, align 8, !dbg !5070
  %3 = load i32, i32* @xen_domain_type, align 4, !dbg !5071
  %cmp3 = icmp eq i32 %3, 2, !dbg !5071
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5073

if.then4:                                         ; preds = %if.else
  %call = call i32 @xen_hvm_console_init() #11, !dbg !5074
  store i32 %call, i32* %r, align 4, !dbg !5075
  br label %if.end7, !dbg !5076

if.else5:                                         ; preds = %if.else
  %call6 = call i32 @xen_pv_console_init() #11, !dbg !5077
  store i32 %call6, i32* %r, align 4, !dbg !5078
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then4
  %4 = load i32, i32* %r, align 4, !dbg !5079
  %cmp8 = icmp slt i32 %4, 0, !dbg !5081
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5082

if.then9:                                         ; preds = %if.end7
  %5 = load i32, i32* %r, align 4, !dbg !5083
  store i32 %5, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

if.end10:                                         ; preds = %if.end7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then2
  %6 = load %struct.hv_ops*, %struct.hv_ops** %ops, align 8, !dbg !5085
  %call12 = call i32 @hvc_instantiate(i32 5793134, i32 0, %struct.hv_ops* %6) #11, !dbg !5086
  store i32 0, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5088
  ret i32 %7, !dbg !5088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenboot_write_console(%struct.console* %console, i8* %string, i32 %len) #0 !dbg !5089 {
entry:
  %console.addr = alloca %struct.console*, align 8
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %linelen = alloca i32, align 4
  %off = alloca i32, align 4
  %pos = alloca i8*, align 8
  store %struct.console* %console, %struct.console** %console.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console** %console.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata i32* %linelen, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.declare(metadata i32* %off, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i32 0, i32* %off, align 4, !dbg !5099
  call void @llvm.dbg.declare(metadata i8** %pos, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5102
  %cmp = icmp eq i32 %0, 1, !dbg !5102
  br i1 %cmp, label %if.end, label %if.then, !dbg !5104

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8, !dbg !5105
  %2 = load i32, i32* %len.addr, align 4, !dbg !5107
  call void @xen_hvm_early_write(i32 0, i8* %1, i32 %2) #11, !dbg !5108
  br label %if.end26, !dbg !5109

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %string.addr, align 8, !dbg !5110
  %4 = load i32, i32* %len.addr, align 4, !dbg !5111
  %call = call i32 @dom0_write_console(i32 0, i8* %3, i32 %4) #11, !dbg !5112
  %5 = load i32, i32* @xen_domain_type, align 4, !dbg !5113
  %cmp1 = icmp ne i32 %5, 0, !dbg !5113
  br i1 %cmp1, label %land.lhs.true, label %if.end3, !dbg !5113

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* @xen_start_flags, align 4, !dbg !5113
  %and = and i32 %6, 2, !dbg !5113
  %tobool = icmp ne i32 %and, 0, !dbg !5113
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5115

if.then2:                                         ; preds = %land.lhs.true
  br label %if.end26, !dbg !5116

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %call4 = call i32 @domU_write_console(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 8) #11, !dbg !5117
  br label %while.cond, !dbg !5118

while.cond:                                       ; preds = %if.end13, %if.end3
  %7 = load i32, i32* %off, align 4, !dbg !5119
  %8 = load i32, i32* %len.addr, align 4, !dbg !5120
  %cmp5 = icmp ult i32 %7, %8, !dbg !5121
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !5122

land.rhs:                                         ; preds = %while.cond
  %9 = load i8*, i8** %string.addr, align 8, !dbg !5123
  %10 = load i32, i32* %off, align 4, !dbg !5124
  %idx.ext = zext i32 %10 to i64, !dbg !5125
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !5125
  %call6 = call i8* @strchr(i8* %add.ptr, i32 10) #11, !dbg !5126
  store i8* %call6, i8** %pos, align 8, !dbg !5127
  %cmp7 = icmp ne i8* null, %call6, !dbg !5128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ], !dbg !5129
  br i1 %11, label %while.body, label %while.end, !dbg !5118

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %pos, align 8, !dbg !5130
  %13 = load i8*, i8** %string.addr, align 8, !dbg !5132
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64, !dbg !5133
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64, !dbg !5133
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5133
  %14 = load i32, i32* %off, align 4, !dbg !5134
  %conv = zext i32 %14 to i64, !dbg !5134
  %add = add i64 %sub.ptr.sub, %conv, !dbg !5135
  %conv8 = trunc i64 %add to i32, !dbg !5130
  store i32 %conv8, i32* %linelen, align 4, !dbg !5136
  %15 = load i32, i32* %off, align 4, !dbg !5137
  %16 = load i32, i32* %linelen, align 4, !dbg !5139
  %add9 = add i32 %15, %16, !dbg !5140
  %17 = load i32, i32* %len.addr, align 4, !dbg !5141
  %cmp10 = icmp ugt i32 %add9, %17, !dbg !5142
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5143

if.then12:                                        ; preds = %while.body
  br label %while.end, !dbg !5144

if.end13:                                         ; preds = %while.body
  %18 = load i8*, i8** %string.addr, align 8, !dbg !5145
  %19 = load i32, i32* %off, align 4, !dbg !5146
  %idx.ext14 = zext i32 %19 to i64, !dbg !5147
  %add.ptr15 = getelementptr i8, i8* %18, i64 %idx.ext14, !dbg !5147
  %20 = load i32, i32* %linelen, align 4, !dbg !5148
  %call16 = call i32 @domU_write_console(i32 0, i8* %add.ptr15, i32 %20) #11, !dbg !5149
  %call17 = call i32 @domU_write_console(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 2) #11, !dbg !5150
  %21 = load i32, i32* %linelen, align 4, !dbg !5151
  %add18 = add i32 %21, 1, !dbg !5152
  %22 = load i32, i32* %off, align 4, !dbg !5153
  %add19 = add i32 %22, %add18, !dbg !5153
  store i32 %add19, i32* %off, align 4, !dbg !5153
  br label %while.cond, !dbg !5118, !llvm.loop !5154

while.end:                                        ; preds = %if.then12, %land.end
  %23 = load i32, i32* %off, align 4, !dbg !5156
  %24 = load i32, i32* %len.addr, align 4, !dbg !5158
  %cmp20 = icmp ult i32 %23, %24, !dbg !5159
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !5160

if.then22:                                        ; preds = %while.end
  %25 = load i8*, i8** %string.addr, align 8, !dbg !5161
  %26 = load i32, i32* %off, align 4, !dbg !5162
  %idx.ext23 = zext i32 %26 to i64, !dbg !5163
  %add.ptr24 = getelementptr i8, i8* %25, i64 %idx.ext23, !dbg !5163
  %27 = load i32, i32* %len.addr, align 4, !dbg !5164
  %28 = load i32, i32* %off, align 4, !dbg !5165
  %sub = sub i32 %27, %28, !dbg !5166
  %call25 = call i32 @domU_write_console(i32 0, i8* %add.ptr24, i32 %sub) #11, !dbg !5167
  br label %if.end26, !dbg !5167

if.end26:                                         ; preds = %if.then, %if.then2, %if.then22, %while.end
  ret void, !dbg !5168
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenboot_console_setup(%struct.console* %console, i8* %string) #3 section ".init.text" !dbg !4817 {
entry:
  %retval = alloca i32, align 4
  %console.addr = alloca %struct.console*, align 8
  %string.addr = alloca i8*, align 8
  store %struct.console* %console, %struct.console** %console.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console** %console.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5173
  %cmp = icmp ne i32 %0, 0, !dbg !5173
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5173

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @xen_start_flags, align 4, !dbg !5173
  %and = and i32 %1, 2, !dbg !5173
  %tobool = icmp ne i32 %and, 0, !dbg !5173
  br i1 %tobool, label %if.then, label %if.end, !dbg !5175

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5176
  br label %return, !dbg !5176

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* @xen_domain_type, align 4, !dbg !5177
  %cmp1 = icmp eq i32 %2, 1, !dbg !5177
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !5179

if.then2:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end3:                                          ; preds = %if.end
  %call = call i32 @xencons_info_pv_init(%struct.xencons_info* @xenboot_console_setup.xenboot, i32 0) #11, !dbg !5181
  store i32 %call, i32* %retval, align 4, !dbg !5182
  br label %return, !dbg !5182

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5183
  ret i32 %3, !dbg !5183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_raw_console_write(i8* %str) #0 !dbg !5184 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %rc = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5189, metadata !DIExpression()), !dbg !5190
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5191
  %call = call i64 @strlen(i8* %0) #11, !dbg !5192
  store i64 %call, i64* %len, align 8, !dbg !5190
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5193, metadata !DIExpression()), !dbg !5194
  store i32 0, i32* %rc, align 4, !dbg !5194
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5195
  %cmp = icmp ne i32 %1, 0, !dbg !5195
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5197

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !5198
  %3 = load i64, i64* %len, align 8, !dbg !5200
  %conv = trunc i64 %3 to i32, !dbg !5200
  %call1 = call i32 @dom0_write_console(i32 0, i8* %2, i32 %conv) #11, !dbg !5201
  store i32 %call1, i32* %rc, align 4, !dbg !5202
  %4 = load i32, i32* %rc, align 4, !dbg !5203
  %cmp2 = icmp ne i32 %4, -38, !dbg !5205
  br i1 %cmp2, label %if.then6, label %lor.lhs.false, !dbg !5206

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* @xen_domain_type, align 4, !dbg !5207
  %cmp4 = icmp eq i32 %5, 2, !dbg !5207
  br i1 %cmp4, label %if.end, label %if.then6, !dbg !5208

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !5209

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !5210

if.end7:                                          ; preds = %if.end, %entry
  %6 = load i8*, i8** %str.addr, align 8, !dbg !5211
  %7 = load i64, i64* %len, align 8, !dbg !5212
  %conv8 = trunc i64 %7 to i32, !dbg !5212
  call void @xen_hvm_early_write(i32 0, i8* %6, i32 %conv8) #11, !dbg !5213
  br label %return, !dbg !5214

return:                                           ; preds = %if.end7, %if.then6
  ret void, !dbg !5214
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dom0_write_console(i32 %vtermno, i8* %str, i32 %len) #0 !dbg !5215 {
entry:
  %retval = alloca i32, align 4
  %vtermno.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load i32, i32* %len.addr, align 4, !dbg !5224
  %1 = load i8*, i8** %str.addr, align 8, !dbg !5225
  %call = call i32 @HYPERVISOR_console_io(i32 0, i32 %0, i8* %1) #11, !dbg !5226
  store i32 %call, i32* %rc, align 4, !dbg !5223
  %2 = load i32, i32* %rc, align 4, !dbg !5227
  %cmp = icmp slt i32 %2, 0, !dbg !5229
  br i1 %cmp, label %if.then, label %if.end, !dbg !5230

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !5231
  store i32 %3, i32* %retval, align 4, !dbg !5232
  br label %return, !dbg !5232

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4, !dbg !5233
  store i32 %4, i32* %retval, align 4, !dbg !5234
  br label %return, !dbg !5234

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5235
  ret i32 %5, !dbg !5235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_hvm_early_write(i32 %vtermno, i8* %str, i32 %len) #0 !dbg !5236 {
entry:
  %vtermno.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  %call = call i32 @xen_cpuid_base() #11, !dbg !5245
  %tobool = icmp ne i32 %call, 0, !dbg !5245
  br i1 %tobool, label %if.then, label %if.end, !dbg !5247

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5248
  %1 = load i32, i32* %len.addr, align 4, !dbg !5249
  %conv = sext i32 %1 to i64, !dbg !5249
  call void @outsb(i32 233, i8* %0, i64 %conv) #11, !dbg !5250
  br label %if.end, !dbg !5250

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_raw_printk(i8* %fmt, ...) #0 !dbg !4753 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !5254, metadata !DIExpression()), !dbg !5266
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5267
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !5267
  call void @llvm.va_start(i8* %arraydecay1), !dbg !5267
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !5268
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5269
  %call = call i32 @vsnprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @xen_raw_printk.buf, i64 0, i64 0), i64 512, i8* %0, %struct.__va_list_tag* %arraydecay2) #11, !dbg !5270
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5271
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !5271
  call void @llvm.va_end(i8* %arraydecay34), !dbg !5271
  call void @xen_raw_console_write(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @xen_raw_printk.buf, i64 0, i64 0)) #11, !dbg !5272
  ret void, !dbg !5273
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5274 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  br label %do.body, !dbg !5282

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5284

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5282
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5282
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5282
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5284
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5282
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5286
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5287
  %conv = zext i1 %cmp to i32, !dbg !5287
  ret i32 %conv, !dbg !5288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hvm_get_parameter(i32 %idx, i64* %value) #0 !dbg !5289 {
entry:
  %retval = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %xhv = alloca %struct.xen_hvm_param, align 8
  %r = alloca i32, align 4
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata %struct.xen_hvm_param* %xhv, metadata !5297, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5308, metadata !DIExpression()), !dbg !5309
  %domid = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 0, !dbg !5310
  store i16 32752, i16* %domid, align 8, !dbg !5311
  %0 = load i32, i32* %idx.addr, align 4, !dbg !5312
  %index = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 1, !dbg !5313
  store i32 %0, i32* %index, align 4, !dbg !5314
  %1 = bitcast %struct.xen_hvm_param* %xhv to i8*, !dbg !5315
  %call = call i64 @HYPERVISOR_hvm_op(i32 1, i8* %1) #11, !dbg !5316
  %conv = trunc i64 %call to i32, !dbg !5316
  store i32 %conv, i32* %r, align 4, !dbg !5317
  %2 = load i32, i32* %r, align 4, !dbg !5318
  %cmp = icmp slt i32 %2, 0, !dbg !5320
  br i1 %cmp, label %if.then, label %if.end, !dbg !5321

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %idx.addr, align 4, !dbg !5322
  %call2 = call i8* @param_name(i32 %3) #11, !dbg !5322
  %4 = load i32, i32* %idx.addr, align 4, !dbg !5322
  %5 = load i32, i32* %r, align 4, !dbg !5322
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %call2, i32 %4, i32 %5) #12, !dbg !5322
  %6 = load i32, i32* %r, align 4, !dbg !5324
  store i32 %6, i32* %retval, align 4, !dbg !5325
  br label %return, !dbg !5325

if.end:                                           ; preds = %entry
  %value4 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 2, !dbg !5326
  %7 = load i64, i64* %value4, align 8, !dbg !5326
  %8 = load i64*, i64** %value.addr, align 8, !dbg !5327
  store i64 %7, i64* %8, align 8, !dbg !5328
  %9 = load i32, i32* %r, align 4, !dbg !5329
  store i32 %9, i32* %retval, align 4, !dbg !5330
  br label %return, !dbg !5330

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5331
  ret i32 %10, !dbg !5331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @HYPERVISOR_hvm_op(i32 %op, i8* %arg) #0 !dbg !5332 {
entry:
  %op.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !5340, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !5343, metadata !DIExpression()), !dbg !5342
  %0 = load i64, i64* %__arg1, align 8, !dbg !5342
  store i64 %0, i64* %__arg1, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !5344, metadata !DIExpression()), !dbg !5342
  %1 = load i64, i64* %__arg2, align 8, !dbg !5342
  store i64 %1, i64* %__arg2, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !5345, metadata !DIExpression()), !dbg !5342
  %2 = load i64, i64* %__arg3, align 8, !dbg !5342
  store i64 %2, i64* %__arg3, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !5346, metadata !DIExpression()), !dbg !5342
  %3 = load i64, i64* %__arg4, align 8, !dbg !5342
  store i64 %3, i64* %__arg4, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !5347, metadata !DIExpression()), !dbg !5342
  %4 = load i64, i64* %__arg5, align 8, !dbg !5342
  store i64 %4, i64* %__arg5, align 8, !dbg !5342
  %5 = load i32, i32* %op.addr, align 4, !dbg !5342
  %conv = sext i32 %5 to i64, !dbg !5342
  store i64 %conv, i64* %__arg1, align 8, !dbg !5342
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !5342
  %7 = ptrtoint i8* %6 to i64, !dbg !5342
  store i64 %7, i64* %__arg2, align 8, !dbg !5342
  %8 = call i64 @llvm.read_register.i64(metadata !4818), !dbg !5342
  %9 = load i64, i64* %__arg1, align 8, !dbg !5342
  %10 = load i64, i64* %__arg2, align 8, !dbg !5342
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1088, i64 %8, i64 %9, i64 %10) #4, !dbg !5342, !srcloc !5348
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !5342
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !5342
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !5342
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !5342
  store i64 %asmresult, i64* %__res, align 8, !dbg !5342
  call void @llvm.write_register.i64(metadata !4818, i64 %asmresult1), !dbg !5342
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !5342
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !5342
  %12 = load i64, i64* %__res, align 8, !dbg !5342
  store i64 %12, i64* %tmp, align 8, !dbg !5342
  %13 = load i64, i64* %tmp, align 8, !dbg !5342
  ret i64 %13, !dbg !5349
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @param_name(i32 %op) #0 !dbg !4763 {
entry:
  %retval = alloca i8*, align 8
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load i32, i32* %op.addr, align 4, !dbg !5352
  %conv = sext i32 %0 to i64, !dbg !5352
  %cmp = icmp uge i64 %conv, 19, !dbg !5354
  br i1 %cmp, label %if.then, label %if.end, !dbg !5355

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8, !dbg !5356
  br label %return, !dbg !5356

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4, !dbg !5357
  %idxprom = sext i32 %1 to i64, !dbg !5359
  %arrayidx = getelementptr [19 x i8*], [19 x i8*]* @param_name.names, i64 0, i64 %idxprom, !dbg !5359
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !5359
  %tobool = icmp ne i8* %2, null, !dbg !5359
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5360

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8, !dbg !5361
  br label %return, !dbg !5361

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %op.addr, align 4, !dbg !5362
  %idxprom4 = sext i32 %3 to i64, !dbg !5363
  %arrayidx5 = getelementptr [19 x i8*], [19 x i8*]* @param_name.names, i64 0, i64 %idxprom4, !dbg !5363
  %4 = load i8*, i8** %arrayidx5, align 8, !dbg !5363
  store i8* %4, i8** %retval, align 8, !dbg !5364
  br label %return, !dbg !5364

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5365
  ret i8* %5, !dbg !5365
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_initial_domain_console_init() #0 !dbg !5366 {
entry:
  %lock.addr.i9 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i9, metadata !4936, metadata !DIExpression()), !dbg !5367
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !5369
  %retval = alloca i32, align 4
  %info = alloca %struct.xencons_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !5371, metadata !DIExpression()), !dbg !5372
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5373
  %cmp = icmp ne i32 %0, 0, !dbg !5373
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !5373

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @xen_start_flags, align 4, !dbg !5373
  %and = and i32 %1, 2, !dbg !5373
  %tobool = icmp ne i32 %and, 0, !dbg !5373
  br i1 %tobool, label %if.end, label %if.then, !dbg !5375

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -19, i32* %retval, align 4, !dbg !5376
  br label %return, !dbg !5376

if.end:                                           ; preds = %land.lhs.true
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !5377
  store %struct.xencons_info* %call, %struct.xencons_info** %info, align 8, !dbg !5378
  %2 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5379
  %tobool1 = icmp ne %struct.xencons_info* %2, null, !dbg !5379
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !5381

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @kzalloc(i64 64, i32 3264) #11, !dbg !5382
  %3 = bitcast i8* %call3 to %struct.xencons_info*, !dbg !5382
  store %struct.xencons_info* %3, %struct.xencons_info** %info, align 8, !dbg !5384
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5385
  %tobool4 = icmp ne %struct.xencons_info* %4, null, !dbg !5385
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5387

if.then5:                                         ; preds = %if.then2
  store i32 -12, i32* %retval, align 4, !dbg !5388
  br label %return, !dbg !5388

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !5389

if.end7:                                          ; preds = %if.end6, %if.end
  %call8 = call i32 @bind_virq_to_irq(i32 2, i32 0, i1 zeroext false) #11, !dbg !5390
  %5 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5391
  %irq = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %5, i32 0, i32 5, !dbg !5392
  store i32 %call8, i32* %irq, align 8, !dbg !5393
  %6 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5394
  %vtermno = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %6, i32 0, i32 6, !dbg !5395
  store i32 5793134, i32* %vtermno, align 4, !dbg !5396
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5397, !srcloc !5027
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5398
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !5398
  %rlock.i = bitcast %union.anon.1* %8 to %struct.raw_spinlock*, !dbg !5398
  %9 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5399
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %9, i32 0, i32 0, !dbg !5400
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @xenconsoles) #11, !dbg !5401
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i9, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5402, !srcloc !5035
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i9, align 8, !dbg !5403
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5403
  %rlock.i10 = bitcast %union.anon.1* %11 to %struct.raw_spinlock*, !dbg !5403
  store i32 0, i32* %retval, align 4, !dbg !5404
  br label %return, !dbg !5404

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5405
  ret i32 %12, !dbg !5405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_hvm_console_init() #0 !dbg !5406 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !4936, metadata !DIExpression()), !dbg !5407
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !5409
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %v = alloca i64, align 8
  %gfn = alloca i64, align 8
  %info = alloca %struct.xencons_info*, align 8
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5411, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata i64* %v, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i64 0, i64* %v, align 8, !dbg !5414
  call void @llvm.dbg.declare(metadata i64* %gfn, metadata !5415, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !5417, metadata !DIExpression()), !dbg !5418
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5419
  %cmp = icmp eq i32 %0, 2, !dbg !5419
  br i1 %cmp, label %if.end, label %if.then, !dbg !5421

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end:                                           ; preds = %entry
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !5423
  store %struct.xencons_info* %call, %struct.xencons_info** %info, align 8, !dbg !5424
  %1 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5425
  %tobool = icmp ne %struct.xencons_info* %1, null, !dbg !5425
  br i1 %tobool, label %if.else, label %if.then1, !dbg !5427

if.then1:                                         ; preds = %if.end
  %call2 = call i8* @kzalloc(i64 64, i32 3264) #11, !dbg !5428
  %2 = bitcast i8* %call2 to %struct.xencons_info*, !dbg !5428
  store %struct.xencons_info* %2, %struct.xencons_info** %info, align 8, !dbg !5430
  %3 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5431
  %tobool3 = icmp ne %struct.xencons_info* %3, null, !dbg !5431
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5433

if.then4:                                         ; preds = %if.then1
  store i32 -12, i32* %retval, align 4, !dbg !5434
  br label %return, !dbg !5434

if.end5:                                          ; preds = %if.then1
  br label %if.end9, !dbg !5435

if.else:                                          ; preds = %if.end
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5436
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %4, i32 0, i32 2, !dbg !5438
  %5 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !5438
  %cmp6 = icmp ne %struct.xencons_interface* %5, null, !dbg !5439
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5440

if.then7:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !5441
  br label %return, !dbg !5441

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  %call10 = call i32 @hvm_get_parameter(i32 18, i64* %v) #11, !dbg !5443
  store i32 %call10, i32* %r, align 4, !dbg !5444
  %6 = load i32, i32* %r, align 4, !dbg !5445
  %cmp11 = icmp slt i32 %6, 0, !dbg !5447
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !5448

lor.lhs.false:                                    ; preds = %if.end9
  %7 = load i64, i64* %v, align 8, !dbg !5449
  %cmp12 = icmp eq i64 %7, 0, !dbg !5450
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5451

if.then13:                                        ; preds = %lor.lhs.false, %if.end9
  br label %err, !dbg !5452

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i64, i64* %v, align 8, !dbg !5453
  %conv = trunc i64 %8 to i32, !dbg !5453
  %9 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5454
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %9, i32 0, i32 3, !dbg !5455
  store i32 %conv, i32* %evtchn, align 8, !dbg !5456
  store i64 0, i64* %v, align 8, !dbg !5457
  %call15 = call i32 @hvm_get_parameter(i32 17, i64* %v) #11, !dbg !5458
  store i32 %call15, i32* %r, align 4, !dbg !5459
  %10 = load i32, i32* %r, align 4, !dbg !5460
  %cmp16 = icmp slt i32 %10, 0, !dbg !5462
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18, !dbg !5463

lor.lhs.false18:                                  ; preds = %if.end14
  %11 = load i64, i64* %v, align 8, !dbg !5464
  %cmp19 = icmp eq i64 %11, 0, !dbg !5465
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5466

if.then21:                                        ; preds = %lor.lhs.false18, %if.end14
  br label %err, !dbg !5467

if.end22:                                         ; preds = %lor.lhs.false18
  %12 = load i64, i64* %v, align 8, !dbg !5468
  store i64 %12, i64* %gfn, align 8, !dbg !5469
  %13 = load i64, i64* %gfn, align 8, !dbg !5470
  %shl = shl i64 %13, 12, !dbg !5470
  %call23 = call i8* @ioremap(i64 %shl, i64 4096) #11, !dbg !5470
  %14 = bitcast i8* %call23 to %struct.xencons_interface*, !dbg !5470
  %15 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5471
  %intf24 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %15, i32 0, i32 2, !dbg !5472
  store %struct.xencons_interface* %14, %struct.xencons_interface** %intf24, align 8, !dbg !5473
  %16 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5474
  %intf25 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %16, i32 0, i32 2, !dbg !5476
  %17 = load %struct.xencons_interface*, %struct.xencons_interface** %intf25, align 8, !dbg !5476
  %cmp26 = icmp eq %struct.xencons_interface* %17, null, !dbg !5477
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5478

if.then28:                                        ; preds = %if.end22
  br label %err, !dbg !5479

if.end29:                                         ; preds = %if.end22
  %18 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5480
  %vtermno = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %18, i32 0, i32 6, !dbg !5481
  store i32 5793134, i32* %vtermno, align 4, !dbg !5482
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5483, !srcloc !5027
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5484
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !5484
  %rlock.i = bitcast %union.anon.1* %20 to %struct.raw_spinlock*, !dbg !5484
  %21 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5485
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %21, i32 0, i32 0, !dbg !5486
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @xenconsoles) #11, !dbg !5487
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i30, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5488, !srcloc !5035
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !5489
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !5489
  %rlock.i31 = bitcast %union.anon.1* %23 to %struct.raw_spinlock*, !dbg !5489
  store i32 0, i32* %retval, align 4, !dbg !5490
  br label %return, !dbg !5490

err:                                              ; preds = %if.then28, %if.then21, %if.then13
  call void @llvm.dbg.label(metadata !5491), !dbg !5492
  %24 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5493
  %25 = bitcast %struct.xencons_info* %24 to i8*, !dbg !5493
  call void @kfree(i8* %25) #11, !dbg !5494
  store i32 -19, i32* %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

return:                                           ; preds = %err, %if.end29, %if.then7, %if.then4, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5496
  ret i32 %26, !dbg !5496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pv_console_init() #0 !dbg !5497 {
entry:
  %lock.addr.i14 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i14, metadata !4936, metadata !DIExpression()), !dbg !5498
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !5500
  %retval = alloca i32, align 4
  %info = alloca %struct.xencons_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5504
  %cmp = icmp eq i32 %0, 1, !dbg !5504
  br i1 %cmp, label %if.end, label %if.then, !dbg !5506

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5507
  br label %return, !dbg !5507

if.end:                                           ; preds = %entry
  %1 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5508
  %console = getelementptr inbounds %struct.start_info, %struct.start_info* %1, i32 0, i32 6, !dbg !5510
  %domU = bitcast %union.anon.70* %console to %struct.anon.71*, !dbg !5511
  %evtchn = getelementptr inbounds %struct.anon.71, %struct.anon.71* %domU, i32 0, i32 1, !dbg !5512
  %2 = load i32, i32* %evtchn, align 8, !dbg !5512
  %tobool = icmp ne i32 %2, 0, !dbg !5508
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5513

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

if.end2:                                          ; preds = %if.end
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 5793134) #11, !dbg !5515
  store %struct.xencons_info* %call, %struct.xencons_info** %info, align 8, !dbg !5516
  %3 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5517
  %tobool3 = icmp ne %struct.xencons_info* %3, null, !dbg !5517
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !5519

if.then4:                                         ; preds = %if.end2
  %call5 = call i8* @kzalloc(i64 64, i32 3264) #11, !dbg !5520
  %4 = bitcast i8* %call5 to %struct.xencons_info*, !dbg !5520
  store %struct.xencons_info* %4, %struct.xencons_info** %info, align 8, !dbg !5522
  %5 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5523
  %tobool6 = icmp ne %struct.xencons_info* %5, null, !dbg !5523
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5525

if.then7:                                         ; preds = %if.then4
  store i32 -12, i32* %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

if.end8:                                          ; preds = %if.then4
  br label %if.end12, !dbg !5527

if.else:                                          ; preds = %if.end2
  %6 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5528
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %6, i32 0, i32 2, !dbg !5530
  %7 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !5530
  %cmp9 = icmp ne %struct.xencons_interface* %7, null, !dbg !5531
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5532

if.then10:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !5533
  br label %return, !dbg !5533

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end8
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5535, !srcloc !5027
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5536
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5536
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !5536
  %10 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !5537
  %call13 = call i32 @xencons_info_pv_init(%struct.xencons_info* %10, i32 5793134) #11, !dbg !5538
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i14, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5539, !srcloc !5035
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i14, align 8, !dbg !5540
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !5540
  %rlock.i15 = bitcast %union.anon.1* %12 to %struct.raw_spinlock*, !dbg !5540
  store i32 0, i32* %retval, align 4, !dbg !5541
  br label %return, !dbg !5541

return:                                           ; preds = %if.end12, %if.then10, %if.then7, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5542
  ret i32 %13, !dbg !5542
}

; Function Attrs: noredzone
declare dso_local i32 @bind_evtchn_to_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irq_set_noprobe(i32 %irq) #0 !dbg !5543 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  %0 = load i32, i32* %irq.addr, align 4, !dbg !5548
  call void @irq_modify_status(i32 %0, i64 0, i64 1024) #11, !dbg !5549
  ret void, !dbg !5550
}

; Function Attrs: noredzone
declare dso_local %struct.hvc_struct* @hvc_alloc(i32, i32, %struct.hv_ops*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5551 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5557
  %1 = ptrtoint i8* %0 to i64, !dbg !5557
  %2 = inttoptr i64 %1 to i8*, !dbg !5557
  %3 = ptrtoint i8* %2 to i64, !dbg !5557
  %cmp = icmp uge i64 %3, -4095, !dbg !5557
  %lnot = xor i1 %cmp, true, !dbg !5557
  %lnot1 = xor i1 %lnot, true, !dbg !5557
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5557
  %conv = sext i32 %lnot.ext to i64, !dbg !5557
  %tobool = icmp ne i64 %conv, 0, !dbg !5557
  ret i1 %tobool, !dbg !5558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5559 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5564
  %1 = ptrtoint i8* %0 to i64, !dbg !5565
  ret i64 %1, !dbg !5566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5567 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5572
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !5573
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5574
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5575
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5576
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5577
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5578
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5579
  ret void, !dbg !5580
}

; Function Attrs: noredzone
declare dso_local void @unbind_from_irqhandler(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @__xenbus_register_frontend(%struct.xenbus_driver*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dom0_read_console(i32 %vtermno, i8* %buf, i32 %len) #0 !dbg !5581 {
entry:
  %vtermno.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  %0 = load i32, i32* %len.addr, align 4, !dbg !5588
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5589
  %call = call i32 @HYPERVISOR_console_io(i32 1, i32 %0, i8* %1) #11, !dbg !5590
  ret i32 %call, !dbg !5591
}

; Function Attrs: noredzone
declare dso_local i32 @notifier_add_irq(%struct.hvc_struct*, i32) #2

; Function Attrs: noredzone
declare dso_local void @notifier_del_irq(%struct.hvc_struct*, i32) #2

; Function Attrs: noredzone
declare dso_local void @notifier_hangup_irq(%struct.hvc_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_console_io(i32 %cmd, i32 %count, i8* %str) #0 !dbg !5592 {
entry:
  %cmd.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !5601, metadata !DIExpression()), !dbg !5603
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !5604, metadata !DIExpression()), !dbg !5603
  %0 = load i64, i64* %__arg1, align 8, !dbg !5603
  store i64 %0, i64* %__arg1, align 8, !dbg !5603
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !5605, metadata !DIExpression()), !dbg !5603
  %1 = load i64, i64* %__arg2, align 8, !dbg !5603
  store i64 %1, i64* %__arg2, align 8, !dbg !5603
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !5606, metadata !DIExpression()), !dbg !5603
  %2 = load i64, i64* %__arg3, align 8, !dbg !5603
  store i64 %2, i64* %__arg3, align 8, !dbg !5603
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !5607, metadata !DIExpression()), !dbg !5603
  %3 = load i64, i64* %__arg4, align 8, !dbg !5603
  store i64 %3, i64* %__arg4, align 8, !dbg !5603
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !5608, metadata !DIExpression()), !dbg !5603
  %4 = load i64, i64* %__arg5, align 8, !dbg !5603
  store i64 %4, i64* %__arg5, align 8, !dbg !5603
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !5603
  %conv = sext i32 %5 to i64, !dbg !5603
  store i64 %conv, i64* %__arg1, align 8, !dbg !5603
  %6 = load i32, i32* %count.addr, align 4, !dbg !5603
  %conv1 = sext i32 %6 to i64, !dbg !5603
  store i64 %conv1, i64* %__arg2, align 8, !dbg !5603
  %7 = load i8*, i8** %str.addr, align 8, !dbg !5603
  %8 = ptrtoint i8* %7 to i64, !dbg !5603
  store i64 %8, i64* %__arg3, align 8, !dbg !5603
  %9 = call i64 @llvm.read_register.i64(metadata !4818), !dbg !5603
  %10 = load i64, i64* %__arg1, align 8, !dbg !5603
  %11 = load i64, i64* %__arg2, align 8, !dbg !5603
  %12 = load i64, i64* %__arg3, align 8, !dbg !5603
  %13 = call { i64, i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${5:c}", "={rax},={rsp},={rdi},={rsi},={rdx},i,1,2,3,4,~{memory},~{r8},~{r10},~{dirflag},~{fpsr},~{flags}"(i64 576, i64 %9, i64 %10, i64 %11, i64 %12) #4, !dbg !5603, !srcloc !5609
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %13, 0, !dbg !5603
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %13, 1, !dbg !5603
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %13, 2, !dbg !5603
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %13, 3, !dbg !5603
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %13, 4, !dbg !5603
  store i64 %asmresult, i64* %__res, align 8, !dbg !5603
  call void @llvm.write_register.i64(metadata !4818, i64 %asmresult2), !dbg !5603
  store i64 %asmresult3, i64* %__arg1, align 8, !dbg !5603
  store i64 %asmresult4, i64* %__arg2, align 8, !dbg !5603
  store i64 %asmresult5, i64* %__arg3, align 8, !dbg !5603
  %14 = load i64, i64* %__res, align 8, !dbg !5603
  %conv6 = trunc i64 %14 to i32, !dbg !5603
  store i32 %conv6, i32* %tmp, align 4, !dbg !5603
  %15 = load i32, i32* %tmp, align 4, !dbg !5603
  ret i32 %15, !dbg !5610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5611 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5614, metadata !DIExpression()), !dbg !5618
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5624, metadata !DIExpression()), !dbg !5625
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5626, metadata !DIExpression()), !dbg !5627
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5628, metadata !DIExpression()), !dbg !5629
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5630, metadata !DIExpression()), !dbg !5634
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5636, metadata !DIExpression()), !dbg !5640
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5642, metadata !DIExpression()), !dbg !5646
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5651, metadata !DIExpression()), !dbg !5652
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5653, metadata !DIExpression()), !dbg !5654
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5655, metadata !DIExpression()), !dbg !5656
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5657, metadata !DIExpression()), !dbg !5658
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5659, metadata !DIExpression()), !dbg !5660
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5661, metadata !DIExpression()), !dbg !5662
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5663, metadata !DIExpression()), !dbg !5664
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5665, metadata !DIExpression()), !dbg !5666
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  %0 = load i64, i64* %size.addr, align 8, !dbg !5671
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5672
  %or = or i32 %1, 256, !dbg !5673
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5674
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #4, !dbg !5675
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5676

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5677
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5678
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5679

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5680
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5681
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5682
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5683
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5660
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5684
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5685
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5686
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5687
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5688
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5689
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !5690
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5690
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5690
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5690
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !5690
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5691
  br label %kmalloc.exit, !dbg !5691

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5692
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5693
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5693
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5695

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5696
  br label %kmalloc_index.exit.i, !dbg !5696

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5697
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5699
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5700

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5701
  br label %kmalloc_index.exit.i, !dbg !5701

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5702
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5704
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5705

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5706
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5707
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5708

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5709
  br label %kmalloc_index.exit.i, !dbg !5709

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5710
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5712
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5713

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5714
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5715
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5716

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5717
  br label %kmalloc_index.exit.i, !dbg !5717

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5718
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5720
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5721

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5722
  br label %kmalloc_index.exit.i, !dbg !5722

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5723
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5725
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5726

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5730
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5731

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5732
  br label %kmalloc_index.exit.i, !dbg !5732

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5733
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5735
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5736

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5737
  br label %kmalloc_index.exit.i, !dbg !5737

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5738
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5740
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5741

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5742
  br label %kmalloc_index.exit.i, !dbg !5742

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5743
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5745
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5746

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5747
  br label %kmalloc_index.exit.i, !dbg !5747

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5748
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5750
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5751

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5752
  br label %kmalloc_index.exit.i, !dbg !5752

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5753
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5755
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5756

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5757
  br label %kmalloc_index.exit.i, !dbg !5757

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5758
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5760
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5761

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5762
  br label %kmalloc_index.exit.i, !dbg !5762

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5763
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5765
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5766

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5767
  br label %kmalloc_index.exit.i, !dbg !5767

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5768
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5770
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5771

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5772
  br label %kmalloc_index.exit.i, !dbg !5772

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5773
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5775
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5776

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5777
  br label %kmalloc_index.exit.i, !dbg !5777

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5778
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5780
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5781

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5782
  br label %kmalloc_index.exit.i, !dbg !5782

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5783
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5785
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5786

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5787
  br label %kmalloc_index.exit.i, !dbg !5787

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5788
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5790
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5791

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5792
  br label %kmalloc_index.exit.i, !dbg !5792

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5793
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5795
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5796

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5797
  br label %kmalloc_index.exit.i, !dbg !5797

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5798
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5800
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5801

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5802
  br label %kmalloc_index.exit.i, !dbg !5802

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5803
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5805
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5806

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5807
  br label %kmalloc_index.exit.i, !dbg !5807

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5808
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5810
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5811

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5812
  br label %kmalloc_index.exit.i, !dbg !5812

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5813
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5815
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5816

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5817
  br label %kmalloc_index.exit.i, !dbg !5817

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5818
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5820
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5821

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5822
  br label %kmalloc_index.exit.i, !dbg !5822

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5823
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5825
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5826

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5827
  br label %kmalloc_index.exit.i, !dbg !5827

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5828
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5830
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5831

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5832
  br label %kmalloc_index.exit.i, !dbg !5832

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5833
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5835
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5836

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5837
  br label %kmalloc_index.exit.i, !dbg !5837

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !5838, !srcloc !5841
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #4, !dbg !5842, !srcloc !5845
  unreachable, !dbg !5846

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5847
  store i32 %45, i32* %index.i, align 4, !dbg !5848
  %46 = load i32, i32* %index.i, align 4, !dbg !5849
  %tobool.i = icmp ne i32 %46, 0, !dbg !5849
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5851

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5852
  br label %kmalloc.exit, !dbg !5852

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5853
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5854
  %and.i.i = and i32 %48, 17, !dbg !5854
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5854
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5854
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5854
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5854
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5856

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5857
  br label %kmalloc_type.exit.i, !dbg !5857

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5858
  %and2.i.i = and i32 %49, 1, !dbg !5859
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5858
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5858
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5858
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5860
  br label %kmalloc_type.exit.i, !dbg !5860

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5861
  %idxprom.i = zext i32 %51 to i64, !dbg !5862
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5862
  %52 = load i32, i32* %index.i, align 4, !dbg !5863
  %idxprom6.i = zext i32 %52 to i64, !dbg !5862
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5862
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5862
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5864
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5865
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5866
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5867
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !5868
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5868
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5868
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5868
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !5868
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5629
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5869
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5870
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5871
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5872
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !5873
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5874
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5875
  store i8* %62, i8** %retval.i, align 8, !dbg !5876
  br label %kmalloc.exit, !dbg !5876

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5877
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5878
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !5879
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5879
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5879
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5879
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !5879
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5880
  br label %kmalloc.exit, !dbg !5880

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5881
  ret i8* %65, !dbg !5882
}

; Function Attrs: noredzone
declare dso_local i32 @bind_virq_to_irq(i32, i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5883 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5890
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5891
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5892
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5892
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5893
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !5894
  ret void, !dbg !5895
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !5896 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5900, metadata !DIExpression()), !dbg !5905
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5907, metadata !DIExpression()), !dbg !5908
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  %0 = load i64, i64* %size.addr, align 8, !dbg !5911
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5913
  br i1 %1, label %if.then, label %if.end447, !dbg !5914

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5915
  %tobool = icmp ne i64 %2, 0, !dbg !5915
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5918

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5919
  br label %return, !dbg !5919

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5920
  %cmp = icmp ult i64 %3, 4096, !dbg !5922
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5923

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5924
  br label %return, !dbg !5924

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub = sub i64 %4, 1, !dbg !5925
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5925
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5925

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub4 = sub i64 %6, 1, !dbg !5925
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5925
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5925

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub6 = sub i64 %8, 1, !dbg !5925
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5925
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5925

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5925

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub9 = sub i64 %9, 1, !dbg !5925
  %and = and i64 %sub9, -9223372036854775808, !dbg !5925
  %tobool10 = icmp ne i64 %and, 0, !dbg !5925
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5925

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5925

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub13 = sub i64 %10, 1, !dbg !5925
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5925
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5925
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5925

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5925

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub18 = sub i64 %11, 1, !dbg !5925
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5925
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5925
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5925

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5925

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub23 = sub i64 %12, 1, !dbg !5925
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5925
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5925
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5925

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5925

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub28 = sub i64 %13, 1, !dbg !5925
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5925
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5925
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5925

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5925

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub33 = sub i64 %14, 1, !dbg !5925
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5925
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5925
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5925

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5925

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub38 = sub i64 %15, 1, !dbg !5925
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5925
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5925
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5925

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5925

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub43 = sub i64 %16, 1, !dbg !5925
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5925
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5925
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5925

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5925

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub48 = sub i64 %17, 1, !dbg !5925
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5925
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5925
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5925

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5925

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub53 = sub i64 %18, 1, !dbg !5925
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5925
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5925
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5925

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5925

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub58 = sub i64 %19, 1, !dbg !5925
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5925
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5925
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5925

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5925

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub63 = sub i64 %20, 1, !dbg !5925
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5925
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5925
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5925

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5925

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub68 = sub i64 %21, 1, !dbg !5925
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5925
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5925
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5925

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5925

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub73 = sub i64 %22, 1, !dbg !5925
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5925
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5925
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5925

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5925

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub78 = sub i64 %23, 1, !dbg !5925
  %and79 = and i64 %sub78, 562949953421312, !dbg !5925
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5925
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5925

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5925

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub83 = sub i64 %24, 1, !dbg !5925
  %and84 = and i64 %sub83, 281474976710656, !dbg !5925
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5925
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5925

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5925

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub88 = sub i64 %25, 1, !dbg !5925
  %and89 = and i64 %sub88, 140737488355328, !dbg !5925
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5925
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5925

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5925

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub93 = sub i64 %26, 1, !dbg !5925
  %and94 = and i64 %sub93, 70368744177664, !dbg !5925
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5925
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5925

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5925

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub98 = sub i64 %27, 1, !dbg !5925
  %and99 = and i64 %sub98, 35184372088832, !dbg !5925
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5925
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5925

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5925

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub103 = sub i64 %28, 1, !dbg !5925
  %and104 = and i64 %sub103, 17592186044416, !dbg !5925
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5925
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5925

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5925

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub108 = sub i64 %29, 1, !dbg !5925
  %and109 = and i64 %sub108, 8796093022208, !dbg !5925
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5925
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5925

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5925

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub113 = sub i64 %30, 1, !dbg !5925
  %and114 = and i64 %sub113, 4398046511104, !dbg !5925
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5925
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5925

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5925

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub118 = sub i64 %31, 1, !dbg !5925
  %and119 = and i64 %sub118, 2199023255552, !dbg !5925
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5925
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5925

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5925

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub123 = sub i64 %32, 1, !dbg !5925
  %and124 = and i64 %sub123, 1099511627776, !dbg !5925
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5925
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5925

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5925

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub128 = sub i64 %33, 1, !dbg !5925
  %and129 = and i64 %sub128, 549755813888, !dbg !5925
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5925
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5925

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5925

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub133 = sub i64 %34, 1, !dbg !5925
  %and134 = and i64 %sub133, 274877906944, !dbg !5925
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5925
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5925

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5925

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub138 = sub i64 %35, 1, !dbg !5925
  %and139 = and i64 %sub138, 137438953472, !dbg !5925
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5925
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5925

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5925

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub143 = sub i64 %36, 1, !dbg !5925
  %and144 = and i64 %sub143, 68719476736, !dbg !5925
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5925
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5925

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5925

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub148 = sub i64 %37, 1, !dbg !5925
  %and149 = and i64 %sub148, 34359738368, !dbg !5925
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5925
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5925

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5925

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub153 = sub i64 %38, 1, !dbg !5925
  %and154 = and i64 %sub153, 17179869184, !dbg !5925
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5925
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5925

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5925

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub158 = sub i64 %39, 1, !dbg !5925
  %and159 = and i64 %sub158, 8589934592, !dbg !5925
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5925
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5925

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5925

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub163 = sub i64 %40, 1, !dbg !5925
  %and164 = and i64 %sub163, 4294967296, !dbg !5925
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5925
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5925

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5925

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub168 = sub i64 %41, 1, !dbg !5925
  %and169 = and i64 %sub168, 2147483648, !dbg !5925
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5925
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5925

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5925

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub173 = sub i64 %42, 1, !dbg !5925
  %and174 = and i64 %sub173, 1073741824, !dbg !5925
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5925
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5925

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5925

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub178 = sub i64 %43, 1, !dbg !5925
  %and179 = and i64 %sub178, 536870912, !dbg !5925
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5925
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5925

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5925

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub183 = sub i64 %44, 1, !dbg !5925
  %and184 = and i64 %sub183, 268435456, !dbg !5925
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5925
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5925

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5925

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub188 = sub i64 %45, 1, !dbg !5925
  %and189 = and i64 %sub188, 134217728, !dbg !5925
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5925
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5925

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5925

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub193 = sub i64 %46, 1, !dbg !5925
  %and194 = and i64 %sub193, 67108864, !dbg !5925
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5925
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5925

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5925

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub198 = sub i64 %47, 1, !dbg !5925
  %and199 = and i64 %sub198, 33554432, !dbg !5925
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5925
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5925

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5925

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub203 = sub i64 %48, 1, !dbg !5925
  %and204 = and i64 %sub203, 16777216, !dbg !5925
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5925
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5925

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5925

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub208 = sub i64 %49, 1, !dbg !5925
  %and209 = and i64 %sub208, 8388608, !dbg !5925
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5925
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5925

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5925

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub213 = sub i64 %50, 1, !dbg !5925
  %and214 = and i64 %sub213, 4194304, !dbg !5925
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5925
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5925

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5925

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub218 = sub i64 %51, 1, !dbg !5925
  %and219 = and i64 %sub218, 2097152, !dbg !5925
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5925
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5925

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5925

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub223 = sub i64 %52, 1, !dbg !5925
  %and224 = and i64 %sub223, 1048576, !dbg !5925
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5925
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5925

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5925

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub228 = sub i64 %53, 1, !dbg !5925
  %and229 = and i64 %sub228, 524288, !dbg !5925
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5925
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5925

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5925

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub233 = sub i64 %54, 1, !dbg !5925
  %and234 = and i64 %sub233, 262144, !dbg !5925
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5925
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5925

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5925

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub238 = sub i64 %55, 1, !dbg !5925
  %and239 = and i64 %sub238, 131072, !dbg !5925
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5925
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5925

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5925

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub243 = sub i64 %56, 1, !dbg !5925
  %and244 = and i64 %sub243, 65536, !dbg !5925
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5925
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5925

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5925

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub248 = sub i64 %57, 1, !dbg !5925
  %and249 = and i64 %sub248, 32768, !dbg !5925
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5925
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5925

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5925

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub253 = sub i64 %58, 1, !dbg !5925
  %and254 = and i64 %sub253, 16384, !dbg !5925
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5925
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5925

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5925

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub258 = sub i64 %59, 1, !dbg !5925
  %and259 = and i64 %sub258, 8192, !dbg !5925
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5925
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5925

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5925

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub263 = sub i64 %60, 1, !dbg !5925
  %and264 = and i64 %sub263, 4096, !dbg !5925
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5925
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5925

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5925

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub268 = sub i64 %61, 1, !dbg !5925
  %and269 = and i64 %sub268, 2048, !dbg !5925
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5925
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5925

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5925

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub273 = sub i64 %62, 1, !dbg !5925
  %and274 = and i64 %sub273, 1024, !dbg !5925
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5925
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5925

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5925

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub278 = sub i64 %63, 1, !dbg !5925
  %and279 = and i64 %sub278, 512, !dbg !5925
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5925
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5925

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5925

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub283 = sub i64 %64, 1, !dbg !5925
  %and284 = and i64 %sub283, 256, !dbg !5925
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5925
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5925

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5925

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub288 = sub i64 %65, 1, !dbg !5925
  %and289 = and i64 %sub288, 128, !dbg !5925
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5925
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5925

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5925

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub293 = sub i64 %66, 1, !dbg !5925
  %and294 = and i64 %sub293, 64, !dbg !5925
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5925
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5925

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5925

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub298 = sub i64 %67, 1, !dbg !5925
  %and299 = and i64 %sub298, 32, !dbg !5925
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5925
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5925

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5925

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub303 = sub i64 %68, 1, !dbg !5925
  %and304 = and i64 %sub303, 16, !dbg !5925
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5925
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5925

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5925

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub308 = sub i64 %69, 1, !dbg !5925
  %and309 = and i64 %sub308, 8, !dbg !5925
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5925
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5925

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5925

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub313 = sub i64 %70, 1, !dbg !5925
  %and314 = and i64 %sub313, 4, !dbg !5925
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5925
  %71 = zext i1 %tobool315 to i64, !dbg !5925
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5925
  br label %cond.end, !dbg !5925

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5925
  br label %cond.end317, !dbg !5925

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5925
  br label %cond.end319, !dbg !5925

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5925
  br label %cond.end321, !dbg !5925

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5925
  br label %cond.end323, !dbg !5925

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5925
  br label %cond.end325, !dbg !5925

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5925
  br label %cond.end327, !dbg !5925

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5925
  br label %cond.end329, !dbg !5925

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5925
  br label %cond.end331, !dbg !5925

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5925
  br label %cond.end333, !dbg !5925

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5925
  br label %cond.end335, !dbg !5925

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5925
  br label %cond.end337, !dbg !5925

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5925
  br label %cond.end339, !dbg !5925

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5925
  br label %cond.end341, !dbg !5925

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5925
  br label %cond.end343, !dbg !5925

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5925
  br label %cond.end345, !dbg !5925

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5925
  br label %cond.end347, !dbg !5925

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5925
  br label %cond.end349, !dbg !5925

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5925
  br label %cond.end351, !dbg !5925

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5925
  br label %cond.end353, !dbg !5925

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5925
  br label %cond.end355, !dbg !5925

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5925
  br label %cond.end357, !dbg !5925

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5925
  br label %cond.end359, !dbg !5925

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5925
  br label %cond.end361, !dbg !5925

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5925
  br label %cond.end363, !dbg !5925

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5925
  br label %cond.end365, !dbg !5925

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5925
  br label %cond.end367, !dbg !5925

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5925
  br label %cond.end369, !dbg !5925

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5925
  br label %cond.end371, !dbg !5925

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5925
  br label %cond.end373, !dbg !5925

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5925
  br label %cond.end375, !dbg !5925

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5925
  br label %cond.end377, !dbg !5925

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5925
  br label %cond.end379, !dbg !5925

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5925
  br label %cond.end381, !dbg !5925

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5925
  br label %cond.end383, !dbg !5925

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5925
  br label %cond.end385, !dbg !5925

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5925
  br label %cond.end387, !dbg !5925

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5925
  br label %cond.end389, !dbg !5925

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5925
  br label %cond.end391, !dbg !5925

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5925
  br label %cond.end393, !dbg !5925

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5925
  br label %cond.end395, !dbg !5925

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5925
  br label %cond.end397, !dbg !5925

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5925
  br label %cond.end399, !dbg !5925

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5925
  br label %cond.end401, !dbg !5925

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5925
  br label %cond.end403, !dbg !5925

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5925
  br label %cond.end405, !dbg !5925

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5925
  br label %cond.end407, !dbg !5925

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5925
  br label %cond.end409, !dbg !5925

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5925
  br label %cond.end411, !dbg !5925

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5925
  br label %cond.end413, !dbg !5925

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5925
  br label %cond.end415, !dbg !5925

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5925
  br label %cond.end417, !dbg !5925

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5925
  br label %cond.end419, !dbg !5925

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5925
  br label %cond.end421, !dbg !5925

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5925
  br label %cond.end423, !dbg !5925

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5925
  br label %cond.end425, !dbg !5925

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5925
  br label %cond.end427, !dbg !5925

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5925
  br label %cond.end429, !dbg !5925

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5925
  br label %cond.end431, !dbg !5925

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5925
  br label %cond.end433, !dbg !5925

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5925
  br label %cond.end435, !dbg !5925

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5925
  br label %cond.end437, !dbg !5925

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5925
  br label %cond.end440, !dbg !5925

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5925

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5925
  br label %cond.end444, !dbg !5925

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5925
  %sub443 = sub i64 %72, 1, !dbg !5925
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5925
  br label %cond.end444, !dbg !5925

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5925
  %sub446 = sub i32 %cond445, 12, !dbg !5926
  %add = add i32 %sub446, 1, !dbg !5927
  store i32 %add, i32* %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5929
  %dec = add i64 %73, -1, !dbg !5929
  store i64 %dec, i64* %size.addr, align 8, !dbg !5929
  %74 = load i64, i64* %size.addr, align 8, !dbg !5930
  %shr = lshr i64 %74, 12, !dbg !5930
  store i64 %shr, i64* %size.addr, align 8, !dbg !5930
  %75 = load i64, i64* %size.addr, align 8, !dbg !5931
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5908
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5932
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5933
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !5932, !srcloc !5934
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5932
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5935
  %add.i = add i32 %79, 1, !dbg !5936
  store i32 %add.i, i32* %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5938
  ret i32 %80, !dbg !5938
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !5939 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5900, metadata !DIExpression()), !dbg !5943
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5907, metadata !DIExpression()), !dbg !5945
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load i64, i64* %n.addr, align 8, !dbg !5948
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5945
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5949
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5950
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !5949, !srcloc !5934
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5949
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5951
  %add.i = add i32 %4, 1, !dbg !5952
  %sub = sub i32 %add.i, 1, !dbg !5953
  ret i32 %sub, !dbg !5954
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5955 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5963, metadata !DIExpression()), !dbg !5964
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5965, metadata !DIExpression()), !dbg !5966
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5967
  ret i8* %0, !dbg !5968
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5969 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5978
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5980
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5981
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !5982
  br i1 %call, label %if.end, label %if.then, !dbg !5983

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5984

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5985
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5986
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5987
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5988
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5989
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5990
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5991
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5992
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5993
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5994
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5995
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5996
  br label %do.body, !dbg !5997

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5998

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6000

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5998

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6002
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6002
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6002
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6002
  br label %do.end7, !dbg !6002

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5998

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6004
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6005 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  ret i1 true, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @domU_read_console(i32 %vtermno, i8* %buf, i32 %len) #0 !dbg !6015 {
entry:
  %retval = alloca i32, align 4
  %vtermno.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %intf = alloca %struct.xencons_interface*, align 8
  %cons = alloca i32, align 4
  %prod = alloca i32, align 4
  %recv = alloca i32, align 4
  %xencons = alloca %struct.xencons_info*, align 8
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  call void @llvm.dbg.declare(metadata %struct.xencons_interface** %intf, metadata !6022, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata i32* %cons, metadata !6024, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !6026, metadata !DIExpression()), !dbg !6027
  call void @llvm.dbg.declare(metadata i32* %recv, metadata !6028, metadata !DIExpression()), !dbg !6029
  store i32 0, i32* %recv, align 4, !dbg !6029
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %xencons, metadata !6030, metadata !DIExpression()), !dbg !6031
  %0 = load i32, i32* %vtermno.addr, align 4, !dbg !6032
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 %0) #11, !dbg !6033
  store %struct.xencons_info* %call, %struct.xencons_info** %xencons, align 8, !dbg !6031
  %1 = load %struct.xencons_info*, %struct.xencons_info** %xencons, align 8, !dbg !6034
  %cmp = icmp eq %struct.xencons_info* %1, null, !dbg !6036
  br i1 %cmp, label %if.then, label %if.end, !dbg !6037

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6038
  br label %return, !dbg !6038

if.end:                                           ; preds = %entry
  %2 = load %struct.xencons_info*, %struct.xencons_info** %xencons, align 8, !dbg !6039
  %intf1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %2, i32 0, i32 2, !dbg !6040
  %3 = load %struct.xencons_interface*, %struct.xencons_interface** %intf1, align 8, !dbg !6040
  store %struct.xencons_interface* %3, %struct.xencons_interface** %intf, align 8, !dbg !6041
  %4 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6042
  %in_cons = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %4, i32 0, i32 2, !dbg !6043
  %5 = load i32, i32* %in_cons, align 4, !dbg !6043
  store i32 %5, i32* %cons, align 4, !dbg !6044
  %6 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6045
  %in_prod = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %6, i32 0, i32 3, !dbg !6046
  %7 = load i32, i32* %in_prod, align 4, !dbg !6046
  store i32 %7, i32* %prod, align 4, !dbg !6047
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6048, !srcloc !6049
  br label %do.body, !dbg !6050

do.body:                                          ; preds = %if.end
  %8 = load i32, i32* %prod, align 4, !dbg !6051
  %9 = load i32, i32* %cons, align 4, !dbg !6051
  %sub = sub i32 %8, %9, !dbg !6051
  %conv = zext i32 %sub to i64, !dbg !6051
  %cmp2 = icmp ugt i64 %conv, 1024, !dbg !6051
  %lnot = xor i1 %cmp2, true, !dbg !6051
  %lnot4 = xor i1 %lnot, true, !dbg !6051
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6051
  %conv5 = sext i32 %lnot.ext to i64, !dbg !6051
  %tobool = icmp ne i64 %conv5, 0, !dbg !6051
  br i1 %tobool, label %if.then6, label %if.end14, !dbg !6054

if.then6:                                         ; preds = %do.body
  br label %do.body7, !dbg !6051

do.body7:                                         ; preds = %if.then6
  br label %do.body8, !dbg !6055

do.body8:                                         ; preds = %do.body7
  br label %do.end, !dbg !6057

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !6055

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 141, i32 0, i64 12) #4, !dbg !6059, !srcloc !6061
  br label %do.end10, !dbg !6059

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !6055

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #4, !dbg !6062, !srcloc !6065
  unreachable, !dbg !6066

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !6055

do.end13:                                         ; preds = %do.end12
  br label %if.end14, !dbg !6055

if.end14:                                         ; preds = %do.end13, %do.body
  br label %do.end15, !dbg !6054

do.end15:                                         ; preds = %if.end14
  br label %while.cond, !dbg !6067

while.cond:                                       ; preds = %while.body, %do.end15
  %10 = load i32, i32* %cons, align 4, !dbg !6068
  %11 = load i32, i32* %prod, align 4, !dbg !6069
  %cmp16 = icmp ne i32 %10, %11, !dbg !6070
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !6071

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %recv, align 4, !dbg !6072
  %13 = load i32, i32* %len.addr, align 4, !dbg !6073
  %cmp18 = icmp slt i32 %12, %13, !dbg !6074
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ], !dbg !6075
  br i1 %14, label %while.body, label %while.end, !dbg !6067

while.body:                                       ; preds = %land.end
  %15 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6076
  %in = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %15, i32 0, i32 0, !dbg !6077
  %16 = load i32, i32* %cons, align 4, !dbg !6078
  %inc = add i32 %16, 1, !dbg !6078
  store i32 %inc, i32* %cons, align 4, !dbg !6078
  %conv20 = zext i32 %16 to i64, !dbg !6078
  %and = and i64 %conv20, 1023, !dbg !6078
  %arrayidx = getelementptr [1024 x i8], [1024 x i8]* %in, i64 0, i64 %and, !dbg !6076
  %17 = load i8, i8* %arrayidx, align 1, !dbg !6076
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !6079
  %19 = load i32, i32* %recv, align 4, !dbg !6080
  %inc21 = add i32 %19, 1, !dbg !6080
  store i32 %inc21, i32* %recv, align 4, !dbg !6080
  %idxprom = sext i32 %19 to i64, !dbg !6079
  %arrayidx22 = getelementptr i8, i8* %18, i64 %idxprom, !dbg !6079
  store i8 %17, i8* %arrayidx22, align 1, !dbg !6081
  br label %while.cond, !dbg !6067, !llvm.loop !6082

while.end:                                        ; preds = %land.end
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6084, !srcloc !6085
  %20 = load i32, i32* %cons, align 4, !dbg !6086
  %21 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6087
  %in_cons23 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %21, i32 0, i32 2, !dbg !6088
  store i32 %20, i32* %in_cons23, align 4, !dbg !6089
  %22 = load %struct.xencons_info*, %struct.xencons_info** %xencons, align 8, !dbg !6090
  call void @notify_daemon(%struct.xencons_info* %22) #11, !dbg !6091
  %23 = load i32, i32* %recv, align 4, !dbg !6092
  store i32 %23, i32* %retval, align 4, !dbg !6093
  br label %return, !dbg !6093

return:                                           ; preds = %while.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !6094
  ret i32 %24, !dbg !6094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @domU_write_console(i32 %vtermno, i8* %data, i32 %len) #0 !dbg !6095 {
entry:
  %retval = alloca i32, align 4
  %vtermno.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cons = alloca %struct.xencons_info*, align 8
  %sent = alloca i32, align 4
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !6096, metadata !DIExpression()), !dbg !6097
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6102, metadata !DIExpression()), !dbg !6103
  %0 = load i32, i32* %len.addr, align 4, !dbg !6104
  store i32 %0, i32* %ret, align 4, !dbg !6103
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %cons, metadata !6105, metadata !DIExpression()), !dbg !6106
  %1 = load i32, i32* %vtermno.addr, align 4, !dbg !6107
  %call = call %struct.xencons_info* @vtermno_to_xencons(i32 %1) #11, !dbg !6108
  store %struct.xencons_info* %call, %struct.xencons_info** %cons, align 8, !dbg !6106
  %2 = load %struct.xencons_info*, %struct.xencons_info** %cons, align 8, !dbg !6109
  %cmp = icmp eq %struct.xencons_info* %2, null, !dbg !6111
  br i1 %cmp, label %if.then, label %if.end, !dbg !6112

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6113
  br label %return, !dbg !6113

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6114

while.cond:                                       ; preds = %if.end7, %if.end
  %3 = load i32, i32* %len.addr, align 4, !dbg !6115
  %tobool = icmp ne i32 %3, 0, !dbg !6114
  br i1 %tobool, label %while.body, label %while.end, !dbg !6114

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %sent, metadata !6116, metadata !DIExpression()), !dbg !6118
  %4 = load %struct.xencons_info*, %struct.xencons_info** %cons, align 8, !dbg !6119
  %5 = load i8*, i8** %data.addr, align 8, !dbg !6120
  %6 = load i32, i32* %len.addr, align 4, !dbg !6121
  %call1 = call i32 @__write_console(%struct.xencons_info* %4, i8* %5, i32 %6) #11, !dbg !6122
  store i32 %call1, i32* %sent, align 4, !dbg !6118
  %7 = load i32, i32* %sent, align 4, !dbg !6123
  %8 = load i8*, i8** %data.addr, align 8, !dbg !6124
  %idx.ext = sext i32 %7 to i64, !dbg !6124
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !6124
  store i8* %add.ptr, i8** %data.addr, align 8, !dbg !6124
  %9 = load i32, i32* %sent, align 4, !dbg !6125
  %10 = load i32, i32* %len.addr, align 4, !dbg !6126
  %sub = sub i32 %10, %9, !dbg !6126
  store i32 %sub, i32* %len.addr, align 4, !dbg !6126
  %11 = load i32, i32* %len.addr, align 4, !dbg !6127
  %tobool2 = icmp ne i32 %11, 0, !dbg !6127
  %lnot = xor i1 %tobool2, true, !dbg !6127
  %lnot3 = xor i1 %lnot, true, !dbg !6127
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6127
  %conv = sext i32 %lnot.ext to i64, !dbg !6127
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6127
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6129

if.then5:                                         ; preds = %while.body
  %call6 = call i32 @HYPERVISOR_sched_op(i32 0, i8* null) #11, !dbg !6130
  br label %if.end7, !dbg !6130

if.end7:                                          ; preds = %if.then5, %while.body
  br label %while.cond, !dbg !6114, !llvm.loop !6131

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %ret, align 4, !dbg !6133
  store i32 %12, i32* %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !6135
  ret i32 %13, !dbg !6135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @notify_daemon(%struct.xencons_info* %cons) #0 !dbg !6136 {
entry:
  %cons.addr = alloca %struct.xencons_info*, align 8
  store %struct.xencons_info* %cons, %struct.xencons_info** %cons.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %cons.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  %0 = load %struct.xencons_info*, %struct.xencons_info** %cons.addr, align 8, !dbg !6139
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %0, i32 0, i32 3, !dbg !6140
  %1 = load i32, i32* %evtchn, align 8, !dbg !6140
  call void @notify_remote_via_evtchn(i32 %1) #11, !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @notify_remote_via_evtchn(i32 %port) #0 !dbg !6143 {
entry:
  %port.addr = alloca i32, align 4
  %send = alloca %struct.evtchn_send, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6149, metadata !DIExpression()), !dbg !6150
  call void @llvm.dbg.declare(metadata %struct.evtchn_send* %send, metadata !6151, metadata !DIExpression()), !dbg !6155
  %port1 = getelementptr inbounds %struct.evtchn_send, %struct.evtchn_send* %send, i32 0, i32 0, !dbg !6156
  %0 = load i32, i32* %port.addr, align 4, !dbg !6157
  store i32 %0, i32* %port1, align 4, !dbg !6156
  %1 = bitcast %struct.evtchn_send* %send to i8*, !dbg !6158
  %call = call i32 @HYPERVISOR_event_channel_op(i32 4, i8* %1) #11, !dbg !6159
  ret void, !dbg !6160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #0 !dbg !6161 {
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
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6168, metadata !DIExpression()), !dbg !6170
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6171, metadata !DIExpression()), !dbg !6170
  %0 = load i64, i64* %__arg1, align 8, !dbg !6170
  store i64 %0, i64* %__arg1, align 8, !dbg !6170
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6172, metadata !DIExpression()), !dbg !6170
  %1 = load i64, i64* %__arg2, align 8, !dbg !6170
  store i64 %1, i64* %__arg2, align 8, !dbg !6170
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6173, metadata !DIExpression()), !dbg !6170
  %2 = load i64, i64* %__arg3, align 8, !dbg !6170
  store i64 %2, i64* %__arg3, align 8, !dbg !6170
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6174, metadata !DIExpression()), !dbg !6170
  %3 = load i64, i64* %__arg4, align 8, !dbg !6170
  store i64 %3, i64* %__arg4, align 8, !dbg !6170
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6175, metadata !DIExpression()), !dbg !6170
  %4 = load i64, i64* %__arg5, align 8, !dbg !6170
  store i64 %4, i64* %__arg5, align 8, !dbg !6170
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !6170
  %conv = sext i32 %5 to i64, !dbg !6170
  store i64 %conv, i64* %__arg1, align 8, !dbg !6170
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !6170
  %7 = ptrtoint i8* %6 to i64, !dbg !6170
  store i64 %7, i64* %__arg2, align 8, !dbg !6170
  %8 = call i64 @llvm.read_register.i64(metadata !4818), !dbg !6170
  %9 = load i64, i64* %__arg1, align 8, !dbg !6170
  %10 = load i64, i64* %__arg2, align 8, !dbg !6170
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #4, !dbg !6170, !srcloc !6176
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !6170
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !6170
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !6170
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !6170
  store i64 %asmresult, i64* %__res, align 8, !dbg !6170
  call void @llvm.write_register.i64(metadata !4818, i64 %asmresult1), !dbg !6170
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !6170
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !6170
  %12 = load i64, i64* %__res, align 8, !dbg !6170
  %conv4 = trunc i64 %12 to i32, !dbg !6170
  store i32 %conv4, i32* %tmp, align 4, !dbg !6170
  %13 = load i32, i32* %tmp, align 4, !dbg !6170
  ret i32 %13, !dbg !6177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__write_console(%struct.xencons_info* %xencons, i8* %data, i32 %len) #0 !dbg !6178 {
entry:
  %xencons.addr = alloca %struct.xencons_info*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %cons = alloca i32, align 4
  %prod = alloca i32, align 4
  %intf = alloca %struct.xencons_interface*, align 8
  %sent = alloca i32, align 4
  store %struct.xencons_info* %xencons, %struct.xencons_info** %xencons.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %xencons.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  call void @llvm.dbg.declare(metadata i32* %cons, metadata !6187, metadata !DIExpression()), !dbg !6188
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !6189, metadata !DIExpression()), !dbg !6190
  call void @llvm.dbg.declare(metadata %struct.xencons_interface** %intf, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load %struct.xencons_info*, %struct.xencons_info** %xencons.addr, align 8, !dbg !6193
  %intf1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %0, i32 0, i32 2, !dbg !6194
  %1 = load %struct.xencons_interface*, %struct.xencons_interface** %intf1, align 8, !dbg !6194
  store %struct.xencons_interface* %1, %struct.xencons_interface** %intf, align 8, !dbg !6192
  call void @llvm.dbg.declare(metadata i32* %sent, metadata !6195, metadata !DIExpression()), !dbg !6196
  store i32 0, i32* %sent, align 4, !dbg !6196
  %2 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6197
  %out_cons = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %2, i32 0, i32 4, !dbg !6198
  %3 = load i32, i32* %out_cons, align 4, !dbg !6198
  store i32 %3, i32* %cons, align 4, !dbg !6199
  %4 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6200
  %out_prod = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %4, i32 0, i32 5, !dbg !6201
  %5 = load i32, i32* %out_prod, align 4, !dbg !6201
  store i32 %5, i32* %prod, align 4, !dbg !6202
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6203, !srcloc !6204
  br label %do.body, !dbg !6205

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %prod, align 4, !dbg !6206
  %7 = load i32, i32* %cons, align 4, !dbg !6206
  %sub = sub i32 %6, %7, !dbg !6206
  %conv = zext i32 %sub to i64, !dbg !6206
  %cmp = icmp ugt i64 %conv, 2048, !dbg !6206
  %lnot = xor i1 %cmp, true, !dbg !6206
  %lnot3 = xor i1 %lnot, true, !dbg !6206
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6206
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6206
  %tobool = icmp ne i64 %conv4, 0, !dbg !6206
  br i1 %tobool, label %if.then, label %if.end, !dbg !6209

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6206

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !6210

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !6212

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !6210

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 89, i32 0, i64 12) #4, !dbg !6214, !srcloc !6216
  br label %do.end8, !dbg !6214

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6210

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #4, !dbg !6217, !srcloc !6220
  unreachable, !dbg !6221

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !6210

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !6210

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !6209

do.end12:                                         ; preds = %if.end
  br label %while.cond, !dbg !6222

while.cond:                                       ; preds = %while.body, %do.end12
  %8 = load i32, i32* %sent, align 4, !dbg !6223
  %9 = load i32, i32* %len.addr, align 4, !dbg !6224
  %cmp13 = icmp slt i32 %8, %9, !dbg !6225
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !6226

land.rhs:                                         ; preds = %while.cond
  %10 = load i32, i32* %prod, align 4, !dbg !6227
  %11 = load i32, i32* %cons, align 4, !dbg !6228
  %sub15 = sub i32 %10, %11, !dbg !6229
  %conv16 = zext i32 %sub15 to i64, !dbg !6230
  %cmp17 = icmp ult i64 %conv16, 2048, !dbg !6231
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ], !dbg !6232
  br i1 %12, label %while.body, label %while.end, !dbg !6222

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %data.addr, align 8, !dbg !6233
  %14 = load i32, i32* %sent, align 4, !dbg !6234
  %inc = add i32 %14, 1, !dbg !6234
  store i32 %inc, i32* %sent, align 4, !dbg !6234
  %idxprom = sext i32 %14 to i64, !dbg !6233
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6233
  %15 = load i8, i8* %arrayidx, align 1, !dbg !6233
  %16 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6235
  %out = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %16, i32 0, i32 1, !dbg !6236
  %17 = load i32, i32* %prod, align 4, !dbg !6237
  %inc19 = add i32 %17, 1, !dbg !6237
  store i32 %inc19, i32* %prod, align 4, !dbg !6237
  %conv20 = zext i32 %17 to i64, !dbg !6237
  %and = and i64 %conv20, 2047, !dbg !6237
  %arrayidx21 = getelementptr [2048 x i8], [2048 x i8]* %out, i64 0, i64 %and, !dbg !6235
  store i8 %15, i8* %arrayidx21, align 1, !dbg !6238
  br label %while.cond, !dbg !6222, !llvm.loop !6239

while.end:                                        ; preds = %land.end
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6241, !srcloc !6242
  %18 = load i32, i32* %prod, align 4, !dbg !6243
  %19 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6244
  %out_prod22 = getelementptr inbounds %struct.xencons_interface, %struct.xencons_interface* %19, i32 0, i32 5, !dbg !6245
  store i32 %18, i32* %out_prod22, align 4, !dbg !6246
  %20 = load i32, i32* %sent, align 4, !dbg !6247
  %tobool23 = icmp ne i32 %20, 0, !dbg !6247
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6249

if.then24:                                        ; preds = %while.end
  %21 = load %struct.xencons_info*, %struct.xencons_info** %xencons.addr, align 8, !dbg !6250
  call void @notify_daemon(%struct.xencons_info* %21) #11, !dbg !6251
  br label %if.end25, !dbg !6251

if.end25:                                         ; preds = %if.then24, %while.end
  %22 = load i32, i32* %sent, align 4, !dbg !6252
  ret i32 %22, !dbg !6253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_sched_op(i32 %cmd, i8* %arg) #0 !dbg !6254 {
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
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6259, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6262, metadata !DIExpression()), !dbg !6261
  %0 = load i64, i64* %__arg1, align 8, !dbg !6261
  store i64 %0, i64* %__arg1, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6263, metadata !DIExpression()), !dbg !6261
  %1 = load i64, i64* %__arg2, align 8, !dbg !6261
  store i64 %1, i64* %__arg2, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6264, metadata !DIExpression()), !dbg !6261
  %2 = load i64, i64* %__arg3, align 8, !dbg !6261
  store i64 %2, i64* %__arg3, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6265, metadata !DIExpression()), !dbg !6261
  %3 = load i64, i64* %__arg4, align 8, !dbg !6261
  store i64 %3, i64* %__arg4, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6266, metadata !DIExpression()), !dbg !6261
  %4 = load i64, i64* %__arg5, align 8, !dbg !6261
  store i64 %4, i64* %__arg5, align 8, !dbg !6261
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !6261
  %conv = sext i32 %5 to i64, !dbg !6261
  store i64 %conv, i64* %__arg1, align 8, !dbg !6261
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !6261
  %7 = ptrtoint i8* %6 to i64, !dbg !6261
  store i64 %7, i64* %__arg2, align 8, !dbg !6261
  %8 = call i64 @llvm.read_register.i64(metadata !4818), !dbg !6261
  %9 = load i64, i64* %__arg1, align 8, !dbg !6261
  %10 = load i64, i64* %__arg2, align 8, !dbg !6261
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 928, i64 %8, i64 %9, i64 %10) #4, !dbg !6261, !srcloc !6267
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !6261
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !6261
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !6261
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !6261
  store i64 %asmresult, i64* %__res, align 8, !dbg !6261
  call void @llvm.write_register.i64(metadata !4818, i64 %asmresult1), !dbg !6261
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !6261
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !6261
  %12 = load i64, i64* %__res, align 8, !dbg !6261
  %conv4 = trunc i64 %12 to i32, !dbg !6261
  store i32 %conv4, i32* %tmp, align 4, !dbg !6261
  %13 = load i32, i32* %tmp, align 4, !dbg !6261
  ret i32 %13, !dbg !6268
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xencons_info_pv_init(%struct.xencons_info* %info, i32 %vtermno) #0 !dbg !6269 {
entry:
  %info.addr = alloca %struct.xencons_info*, align 8
  %vtermno.addr = alloca i32, align 4
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  store i32 %vtermno, i32* %vtermno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vtermno.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !6276
  %console = getelementptr inbounds %struct.start_info, %struct.start_info* %0, i32 0, i32 6, !dbg !6277
  %domU = bitcast %union.anon.70* %console to %struct.anon.71*, !dbg !6278
  %evtchn = getelementptr inbounds %struct.anon.71, %struct.anon.71* %domU, i32 0, i32 1, !dbg !6279
  %1 = load i32, i32* %evtchn, align 8, !dbg !6279
  %2 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6280
  %evtchn1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %2, i32 0, i32 3, !dbg !6281
  store i32 %1, i32* %evtchn1, align 8, !dbg !6282
  %3 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !6283
  %console2 = getelementptr inbounds %struct.start_info, %struct.start_info* %3, i32 0, i32 6, !dbg !6283
  %domU3 = bitcast %union.anon.70* %console2 to %struct.anon.71*, !dbg !6283
  %mfn = getelementptr inbounds %struct.anon.71, %struct.anon.71* %domU3, i32 0, i32 0, !dbg !6283
  %4 = load i64, i64* %mfn, align 8, !dbg !6283
  %call = call i64 @gfn_to_pfn(i64 %4) #11, !dbg !6283
  %shl = shl i64 %call, 12, !dbg !6283
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !6283
  %add = add i64 %shl, %5, !dbg !6283
  %6 = inttoptr i64 %add to i8*, !dbg !6283
  %7 = bitcast i8* %6 to %struct.xencons_interface*, !dbg !6283
  %8 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6284
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %8, i32 0, i32 2, !dbg !6285
  store %struct.xencons_interface* %7, %struct.xencons_interface** %intf, align 8, !dbg !6286
  %9 = load i32, i32* %vtermno.addr, align 4, !dbg !6287
  %10 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6288
  %vtermno4 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %10, i32 0, i32 6, !dbg !6289
  store i32 %9, i32* %vtermno4, align 4, !dbg !6290
  %11 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6291
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %11, i32 0, i32 0, !dbg !6292
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @xenconsoles) #11, !dbg !6293
  ret i32 0, !dbg !6294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gfn_to_pfn(i64 %gfn) #0 !dbg !6295 {
entry:
  %retval = alloca i64, align 8
  %gfn.addr = alloca i64, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6301
  %tobool = icmp ne i32 %call, 0, !dbg !6301
  br i1 %tobool, label %if.then, label %if.else, !dbg !6303

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %gfn.addr, align 8, !dbg !6304
  store i64 %0, i64* %retval, align 8, !dbg !6305
  br label %return, !dbg !6305

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %gfn.addr, align 8, !dbg !6306
  %call1 = call i64 @mfn_to_pfn(i64 %1) #11, !dbg !6307
  store i64 %call1, i64* %retval, align 8, !dbg !6308
  br label %return, !dbg !6308

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6309
  ret i64 %2, !dbg !6309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !6310 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6314
  %idxprom = sext i32 %0 to i64, !dbg !6315
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !6315
  %1 = load i8, i8* %arrayidx, align 1, !dbg !6315
  %conv = zext i8 %1 to i32, !dbg !6315
  ret i32 %conv, !dbg !6316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn(i64 %mfn) #0 !dbg !6317 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6320, metadata !DIExpression()), !dbg !6321
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6322
  %tobool = icmp ne i32 %call, 0, !dbg !6322
  br i1 %tobool, label %if.then, label %if.end, !dbg !6324

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6325
  store i64 %0, i64* %retval, align 8, !dbg !6326
  br label %return, !dbg !6326

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %mfn.addr, align 8, !dbg !6327
  %call1 = call i64 @mfn_to_pfn_no_overrides(i64 %1) #11, !dbg !6328
  store i64 %call1, i64* %pfn, align 8, !dbg !6329
  %2 = load i64, i64* %pfn, align 8, !dbg !6330
  %call2 = call i64 @__pfn_to_mfn(i64 %2) #11, !dbg !6332
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6333
  %cmp = icmp ne i64 %call2, %3, !dbg !6334
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6335

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %pfn, align 8, !dbg !6336
  br label %if.end4, !dbg !6337

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i64, i64* %pfn, align 8, !dbg !6338
  %cmp5 = icmp eq i64 %4, -1, !dbg !6340
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !6341

land.lhs.true:                                    ; preds = %if.end4
  %5 = load i64, i64* %mfn.addr, align 8, !dbg !6342
  %call6 = call i64 @__pfn_to_mfn(i64 %5) #11, !dbg !6343
  %6 = load i64, i64* %mfn.addr, align 8, !dbg !6344
  %or = or i64 %6, 4611686018427387904, !dbg !6344
  %cmp7 = icmp eq i64 %call6, %or, !dbg !6345
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6346

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %mfn.addr, align 8, !dbg !6347
  store i64 %7, i64* %pfn, align 8, !dbg !6348
  br label %if.end9, !dbg !6349

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  %8 = load i64, i64* %pfn, align 8, !dbg !6350
  store i64 %8, i64* %retval, align 8, !dbg !6351
  br label %return, !dbg !6351

return:                                           ; preds = %if.end9, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !6352
  ret i64 %9, !dbg !6352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn_no_overrides(i64 %mfn) #0 !dbg !6353 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6356, metadata !DIExpression()), !dbg !6357
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6360
  %1 = load i64, i64* @machine_to_phys_nr, align 8, !dbg !6360
  %cmp = icmp uge i64 %0, %1, !dbg !6360
  %lnot = xor i1 %cmp, true, !dbg !6360
  %lnot1 = xor i1 %lnot, true, !dbg !6360
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6360
  %conv = sext i32 %lnot.ext to i64, !dbg !6360
  %tobool = icmp ne i64 %conv, 0, !dbg !6360
  br i1 %tobool, label %if.then, label %if.end, !dbg !6362

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !6363
  br label %return, !dbg !6363

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** @machine_to_phys_mapping, align 8, !dbg !6364
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6365
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6364
  %call = call i32 @xen_safe_read_ulong(i64* %arrayidx, i64* %pfn) #11, !dbg !6366
  store i32 %call, i32* %ret, align 4, !dbg !6367
  %4 = load i32, i32* %ret, align 4, !dbg !6368
  %cmp2 = icmp slt i32 %4, 0, !dbg !6370
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6371

if.then4:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !6372
  br label %return, !dbg !6372

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %pfn, align 8, !dbg !6373
  store i64 %5, i64* %retval, align 8, !dbg !6374
  br label %return, !dbg !6374

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !6375
  ret i64 %6, !dbg !6375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !6376 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6377, metadata !DIExpression()), !dbg !6378
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6381
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !6383
  %cmp = icmp ult i64 %0, %1, !dbg !6384
  br i1 %cmp, label %if.then, label %if.else, !dbg !6385

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !6386
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !6387
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6386
  %4 = load i64, i64* %arrayidx, align 8, !dbg !6386
  store i64 %4, i64* %mfn, align 8, !dbg !6388
  br label %if.end, !dbg !6389

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !6390
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !6390
  %cmp1 = icmp ult i64 %5, %6, !dbg !6390
  %lnot = xor i1 %cmp1, true, !dbg !6390
  %lnot2 = xor i1 %lnot, true, !dbg !6390
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6390
  %conv = sext i32 %lnot.ext to i64, !dbg !6390
  %tobool = icmp ne i64 %conv, 0, !dbg !6390
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !6392

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !6393
  %call = call i64 @get_phys_to_machine(i64 %7) #11, !dbg !6394
  store i64 %call, i64* %retval, align 8, !dbg !6395
  br label %return, !dbg !6395

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !6396
  %or = or i64 %8, 4611686018427387904, !dbg !6396
  store i64 %or, i64* %retval, align 8, !dbg !6397
  br label %return, !dbg !6397

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !6398
  %cmp5 = icmp eq i64 %9, -1, !dbg !6398
  %lnot7 = xor i1 %cmp5, true, !dbg !6398
  %lnot9 = xor i1 %lnot7, true, !dbg !6398
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6398
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6398
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !6398
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6400

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !6401
  %call14 = call i64 @get_phys_to_machine(i64 %10) #11, !dbg !6402
  store i64 %call14, i64* %retval, align 8, !dbg !6403
  br label %return, !dbg !6403

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !6404
  store i64 %11, i64* %retval, align 8, !dbg !6405
  br label %return, !dbg !6405

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !6406
  ret i64 %12, !dbg !6406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_safe_read_ulong(i64* %addr, i64* %val) #0 !dbg !6407 {
entry:
  %addr.addr = alloca i64*, align 8
  %val.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %rval = alloca i64, align 8
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6411, metadata !DIExpression()), !dbg !6412
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6415, metadata !DIExpression()), !dbg !6416
  store i32 0, i32* %ret, align 4, !dbg !6416
  call void @llvm.dbg.declare(metadata i64* %rval, metadata !6417, metadata !DIExpression()), !dbg !6418
  store i64 -1, i64* %rval, align 8, !dbg !6418
  %0 = load i32, i32* %ret, align 4, !dbg !6419
  %1 = load i64, i64* %rval, align 8, !dbg !6419
  %2 = load i64*, i64** %addr.addr, align 8, !dbg !6420
  %3 = call { i32, i64 } asm sideeffect "1: mov $2, $1\0A2:\0A.section .fixup, \22ax\22\0A3: sub $$1, $0\0A   jmp 2b\0A.previous\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (3b) - .\0A .long (ex_handler_default) - .\0A .popsection\0A", "=r,=r,*m,0,1,~{dirflag},~{fpsr},~{flags}"(i64* %2, i32 %0, i64 %1) #4, !dbg !6419, !srcloc !6421
  %asmresult = extractvalue { i32, i64 } %3, 0, !dbg !6419
  %asmresult1 = extractvalue { i32, i64 } %3, 1, !dbg !6419
  store i32 %asmresult, i32* %ret, align 4, !dbg !6419
  store i64 %asmresult1, i64* %rval, align 8, !dbg !6419
  %4 = load i64, i64* %rval, align 8, !dbg !6422
  %5 = load i64*, i64** %val.addr, align 8, !dbg !6423
  store i64 %4, i64* %5, align 8, !dbg !6424
  %6 = load i32, i32* %ret, align 4, !dbg !6425
  ret i32 %6, !dbg !6426
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: noredzone
declare dso_local void @irq_modify_status(i32, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6427 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6430
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !6432
  br i1 %call, label %if.end, label %if.then, !dbg !6433

if.then:                                          ; preds = %entry
  br label %return, !dbg !6434

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6435
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6436
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6436
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6437
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6438
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6438
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !6439
  br label %return, !dbg !6440

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6441 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6444, metadata !DIExpression()), !dbg !6445
  ret i1 true, !dbg !6446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6447 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6452
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6453
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6454
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6455
  br label %do.body, !dbg !6456

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6457

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6459

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6457

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6461
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6461
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6461
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6461
  br label %do.end5, !dbg !6461

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6457

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xencons_probe(%struct.xenbus_device* %dev, %struct.xenbus_device_id* %id) #0 !dbg !6464 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !4936, metadata !DIExpression()), !dbg !6465
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !6467
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %id.addr = alloca %struct.xenbus_device_id*, align 8
  %ret = alloca i32, align 4
  %devid = alloca i32, align 4
  %info = alloca %struct.xencons_info*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6469, metadata !DIExpression()), !dbg !6470
  store %struct.xenbus_device_id* %id, %struct.xenbus_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device_id** %id.addr, metadata !6471, metadata !DIExpression()), !dbg !6472
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6473, metadata !DIExpression()), !dbg !6474
  call void @llvm.dbg.declare(metadata i32* %devid, metadata !6475, metadata !DIExpression()), !dbg !6476
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !6477, metadata !DIExpression()), !dbg !6478
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6479
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 1, !dbg !6480
  %1 = load i8*, i8** %nodename, align 8, !dbg !6480
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6481
  %nodename1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 1, !dbg !6482
  %3 = load i8*, i8** %nodename1, align 8, !dbg !6482
  %call = call i64 @strlen(i8* %3) #11, !dbg !6483
  %sub = sub i64 %call, 1, !dbg !6484
  %arrayidx = getelementptr i8, i8* %1, i64 %sub, !dbg !6479
  %4 = load i8, i8* %arrayidx, align 1, !dbg !6479
  %conv = sext i8 %4 to i32, !dbg !6479
  %sub2 = sub i32 %conv, 48, !dbg !6485
  store i32 %sub2, i32* %devid, align 4, !dbg !6486
  %5 = load i32, i32* %devid, align 4, !dbg !6487
  %cmp = icmp eq i32 %5, 0, !dbg !6489
  br i1 %cmp, label %if.then, label %if.end, !dbg !6490

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !6491
  br label %return, !dbg !6491

if.end:                                           ; preds = %entry
  %call4 = call i8* @kzalloc(i64 64, i32 3264) #11, !dbg !6492
  %6 = bitcast i8* %call4 to %struct.xencons_info*, !dbg !6492
  store %struct.xencons_info* %6, %struct.xencons_info** %info, align 8, !dbg !6493
  %7 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6494
  %tobool = icmp ne %struct.xencons_info* %7, null, !dbg !6494
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6496

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !6497
  br label %return, !dbg !6497

if.end6:                                          ; preds = %if.end
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6498
  %dev7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %8, i32 0, i32 5, !dbg !6499
  %9 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6500
  %10 = bitcast %struct.xencons_info* %9 to i8*, !dbg !6500
  call void @dev_set_drvdata(%struct.device* %dev7, i8* %10) #11, !dbg !6501
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6502
  %12 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6503
  %xbdev = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %12, i32 0, i32 1, !dbg !6504
  store %struct.xenbus_device* %11, %struct.xenbus_device** %xbdev, align 8, !dbg !6505
  %13 = load i32, i32* %devid, align 4, !dbg !6506
  %call8 = call i32 @xenbus_devid_to_vtermno(i32 %13) #11, !dbg !6507
  %14 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6508
  %vtermno = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %14, i32 0, i32 6, !dbg !6509
  store i32 %call8, i32* %vtermno, align 4, !dbg !6510
  %call9 = call i64 @__get_free_pages(i32 3520, i32 0) #11, !dbg !6511
  %15 = inttoptr i64 %call9 to i8*, !dbg !6512
  %16 = bitcast i8* %15 to %struct.xencons_interface*, !dbg !6512
  %17 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6513
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %17, i32 0, i32 2, !dbg !6514
  store %struct.xencons_interface* %16, %struct.xencons_interface** %intf, align 8, !dbg !6515
  %18 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6516
  %intf10 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %18, i32 0, i32 2, !dbg !6518
  %19 = load %struct.xencons_interface*, %struct.xencons_interface** %intf10, align 8, !dbg !6518
  %tobool11 = icmp ne %struct.xencons_interface* %19, null, !dbg !6516
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6519

if.then12:                                        ; preds = %if.end6
  br label %error_nomem, !dbg !6520

if.end13:                                         ; preds = %if.end6
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6521
  %21 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6522
  %call14 = call i32 @xencons_connect_backend(%struct.xenbus_device* %20, %struct.xencons_info* %21) #11, !dbg !6523
  store i32 %call14, i32* %ret, align 4, !dbg !6524
  %22 = load i32, i32* %ret, align 4, !dbg !6525
  %cmp15 = icmp slt i32 %22, 0, !dbg !6527
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6528

if.then17:                                        ; preds = %if.end13
  br label %error, !dbg !6529

if.end18:                                         ; preds = %if.end13
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6530, !srcloc !5027
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6531
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !6531
  %rlock.i = bitcast %union.anon.1* %24 to %struct.raw_spinlock*, !dbg !6531
  %25 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6532
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %25, i32 0, i32 0, !dbg !6533
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @xenconsoles) #11, !dbg !6534
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i19, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6535, !srcloc !5035
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !6536
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !6536
  %rlock.i20 = bitcast %union.anon.1* %27 to %struct.raw_spinlock*, !dbg !6536
  store i32 0, i32* %retval, align 4, !dbg !6537
  br label %return, !dbg !6537

error_nomem:                                      ; preds = %if.then12
  call void @llvm.dbg.label(metadata !6538), !dbg !6539
  store i32 -12, i32* %ret, align 4, !dbg !6540
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6541
  %29 = load i32, i32* %ret, align 4, !dbg !6542
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !6543
  br label %error, !dbg !6543

error:                                            ; preds = %error_nomem, %if.then17
  call void @llvm.dbg.label(metadata !6544), !dbg !6545
  %30 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6546
  call void @xencons_disconnect_backend(%struct.xencons_info* %30) #11, !dbg !6547
  %31 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6548
  call void @xencons_free(%struct.xencons_info* %31) #11, !dbg !6549
  %32 = load i32, i32* %ret, align 4, !dbg !6550
  store i32 %32, i32* %retval, align 4, !dbg !6551
  br label %return, !dbg !6551

return:                                           ; preds = %error, %if.end18, %if.then5, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !6552
  ret i32 %33, !dbg !6552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xencons_backend_changed(%struct.xenbus_device* %dev, i32 %backend_state) #0 !dbg !6553 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %backend_state.addr = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6554, metadata !DIExpression()), !dbg !6555
  store i32 %backend_state, i32* %backend_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %backend_state.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load i32, i32* %backend_state.addr, align 4, !dbg !6558
  switch i32 %0, label %sw.epilog [
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 6, label %sw.bb3
    i32 5, label %sw.bb4
  ], !dbg !6559

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !6560

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog, !dbg !6562

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6563
  %call = call i32 @xenbus_switch_state(%struct.xenbus_device* %1, i32 4) #11, !dbg !6564
  br label %sw.epilog, !dbg !6565

sw.bb3:                                           ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6566
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 6, !dbg !6568
  %3 = load i32, i32* %state, align 8, !dbg !6568
  %cmp = icmp eq i32 %3, 6, !dbg !6569
  br i1 %cmp, label %if.then, label %if.end, !dbg !6570

if.then:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !6571

if.end:                                           ; preds = %sw.bb3
  br label %sw.bb4, !dbg !6572

sw.bb4:                                           ; preds = %entry, %if.end
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6573
  %call5 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %4) #11, !dbg !6574
  br label %sw.epilog, !dbg !6575

sw.epilog:                                        ; preds = %entry, %sw.bb4, %if.then, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !6576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xencons_remove(%struct.xenbus_device* %dev) #0 !dbg !6577 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6580
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !6581
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #11, !dbg !6582
  %1 = bitcast i8* %call to %struct.xencons_info*, !dbg !6582
  %call2 = call i32 @xen_console_remove(%struct.xencons_info* %1) #11, !dbg !6583
  ret i32 %call2, !dbg !6584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xencons_resume(%struct.xenbus_device* %dev) #0 !dbg !6585 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info = alloca %struct.xencons_info*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info, metadata !6588, metadata !DIExpression()), !dbg !6589
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6590
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !6591
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #11, !dbg !6592
  %1 = bitcast i8* %call to %struct.xencons_info*, !dbg !6592
  store %struct.xencons_info* %1, %struct.xencons_info** %info, align 8, !dbg !6589
  %2 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6593
  call void @xencons_disconnect_backend(%struct.xencons_info* %2) #11, !dbg !6594
  %3 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6595
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %3, i32 0, i32 2, !dbg !6596
  %4 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6596
  %5 = bitcast %struct.xencons_interface* %4 to i8*, !dbg !6597
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4096, i1 false), !dbg !6597
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6598
  %7 = load %struct.xencons_info*, %struct.xencons_info** %info, align 8, !dbg !6599
  %call2 = call i32 @xencons_connect_backend(%struct.xenbus_device* %6, %struct.xencons_info* %7) #11, !dbg !6600
  ret i32 %call2, !dbg !6601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6602 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6605, metadata !DIExpression()), !dbg !6606
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6607, metadata !DIExpression()), !dbg !6608
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6609
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6610
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6611
  store i8* %0, i8** %driver_data, align 8, !dbg !6612
  ret void, !dbg !6613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_devid_to_vtermno(i32 %devid) #0 !dbg !6614 {
entry:
  %devid.addr = alloca i32, align 4
  store i32 %devid, i32* %devid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devid.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load i32, i32* %devid.addr, align 4, !dbg !6617
  %add = add i32 %0, 5793134, !dbg !6618
  ret i32 %add, !dbg !6619
}

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xencons_connect_backend(%struct.xenbus_device* %dev, %struct.xencons_info* %info) #0 !dbg !6620 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info.addr = alloca %struct.xencons_info*, align 8
  %ret = alloca i32, align 4
  %evtchn = alloca i32, align 4
  %devid = alloca i32, align 4
  %ref = alloca i32, align 4
  %irq = alloca i32, align 4
  %xbt = alloca %struct.xenbus_transaction, align 4
  %gref_head = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6627, metadata !DIExpression()), !dbg !6628
  call void @llvm.dbg.declare(metadata i32* %evtchn, metadata !6629, metadata !DIExpression()), !dbg !6630
  call void @llvm.dbg.declare(metadata i32* %devid, metadata !6631, metadata !DIExpression()), !dbg !6632
  call void @llvm.dbg.declare(metadata i32* %ref, metadata !6633, metadata !DIExpression()), !dbg !6634
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !6635, metadata !DIExpression()), !dbg !6636
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %xbt, metadata !6637, metadata !DIExpression()), !dbg !6641
  call void @llvm.dbg.declare(metadata i32* %gref_head, metadata !6642, metadata !DIExpression()), !dbg !6643
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6644
  %call = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %0, i32* %evtchn) #11, !dbg !6645
  store i32 %call, i32* %ret, align 4, !dbg !6646
  %1 = load i32, i32* %ret, align 4, !dbg !6647
  %tobool = icmp ne i32 %1, 0, !dbg !6647
  br i1 %tobool, label %if.then, label %if.end, !dbg !6649

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6650
  store i32 %2, i32* %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %evtchn, align 4, !dbg !6652
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6653
  %evtchn1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %4, i32 0, i32 3, !dbg !6654
  store i32 %3, i32* %evtchn1, align 8, !dbg !6655
  %5 = load i32, i32* %evtchn, align 4, !dbg !6656
  %call2 = call i32 @bind_evtchn_to_irq(i32 %5) #11, !dbg !6657
  store i32 %call2, i32* %irq, align 4, !dbg !6658
  %6 = load i32, i32* %irq, align 4, !dbg !6659
  %cmp = icmp slt i32 %6, 0, !dbg !6661
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6662

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %irq, align 4, !dbg !6663
  store i32 %7, i32* %retval, align 4, !dbg !6664
  br label %return, !dbg !6664

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %irq, align 4, !dbg !6665
  %9 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6666
  %irq5 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %9, i32 0, i32 5, !dbg !6667
  store i32 %8, i32* %irq5, align 8, !dbg !6668
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6669
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1, !dbg !6670
  %11 = load i8*, i8** %nodename, align 8, !dbg !6670
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6671
  %nodename6 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 1, !dbg !6672
  %13 = load i8*, i8** %nodename6, align 8, !dbg !6672
  %call7 = call i64 @strlen(i8* %13) #11, !dbg !6673
  %sub = sub i64 %call7, 1, !dbg !6674
  %arrayidx = getelementptr i8, i8* %11, i64 %sub, !dbg !6669
  %14 = load i8, i8* %arrayidx, align 1, !dbg !6669
  %conv = sext i8 %14 to i32, !dbg !6669
  %sub8 = sub i32 %conv, 48, !dbg !6675
  store i32 %sub8, i32* %devid, align 4, !dbg !6676
  %15 = load i32, i32* %devid, align 4, !dbg !6677
  %call9 = call i32 @xenbus_devid_to_vtermno(i32 %15) #11, !dbg !6678
  %16 = load i32, i32* %irq, align 4, !dbg !6679
  %call10 = call %struct.hvc_struct* @hvc_alloc(i32 %call9, i32 %16, %struct.hv_ops* @domU_hvc_ops, i32 256) #11, !dbg !6680
  %17 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6681
  %hvc = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %17, i32 0, i32 4, !dbg !6682
  store %struct.hvc_struct* %call10, %struct.hvc_struct** %hvc, align 8, !dbg !6683
  %18 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6684
  %hvc11 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %18, i32 0, i32 4, !dbg !6686
  %19 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc11, align 8, !dbg !6686
  %20 = bitcast %struct.hvc_struct* %19 to i8*, !dbg !6684
  %call12 = call zeroext i1 @IS_ERR(i8* %20) #11, !dbg !6687
  br i1 %call12, label %if.then13, label %if.end17, !dbg !6688

if.then13:                                        ; preds = %if.end4
  %21 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6689
  %hvc14 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %21, i32 0, i32 4, !dbg !6690
  %22 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc14, align 8, !dbg !6690
  %23 = bitcast %struct.hvc_struct* %22 to i8*, !dbg !6689
  %call15 = call i64 @PTR_ERR(i8* %23) #11, !dbg !6691
  %conv16 = trunc i64 %call15 to i32, !dbg !6691
  store i32 %conv16, i32* %retval, align 4, !dbg !6692
  br label %return, !dbg !6692

if.end17:                                         ; preds = %if.end4
  %call18 = call i32 @gnttab_alloc_grant_references(i16 zeroext 1, i32* %gref_head) #11, !dbg !6693
  store i32 %call18, i32* %ret, align 4, !dbg !6694
  %24 = load i32, i32* %ret, align 4, !dbg !6695
  %cmp19 = icmp slt i32 %24, 0, !dbg !6697
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !6698

if.then21:                                        ; preds = %if.end17
  %25 = load i32, i32* %ret, align 4, !dbg !6699
  store i32 %25, i32* %retval, align 4, !dbg !6700
  br label %return, !dbg !6700

if.end22:                                         ; preds = %if.end17
  %26 = load i32, i32* %gref_head, align 4, !dbg !6701
  %27 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6702
  %gntref = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %27, i32 0, i32 7, !dbg !6703
  store i32 %26, i32* %gntref, align 8, !dbg !6704
  %call23 = call i32 @gnttab_claim_grant_reference(i32* %gref_head) #11, !dbg !6705
  store i32 %call23, i32* %ref, align 4, !dbg !6706
  %28 = load i32, i32* %ref, align 4, !dbg !6707
  %cmp24 = icmp slt i32 %28, 0, !dbg !6709
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6710

if.then26:                                        ; preds = %if.end22
  %29 = load i32, i32* %ref, align 4, !dbg !6711
  store i32 %29, i32* %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

if.end27:                                         ; preds = %if.end22
  %30 = load i32, i32* %ref, align 4, !dbg !6713
  %31 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6714
  %xbdev = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %31, i32 0, i32 1, !dbg !6715
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev, align 8, !dbg !6715
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %32, i32 0, i32 3, !dbg !6716
  %33 = load i32, i32* %otherend_id, align 8, !dbg !6716
  %conv28 = trunc i32 %33 to i16, !dbg !6714
  %34 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6717
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %34, i32 0, i32 2, !dbg !6717
  %35 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6717
  %36 = ptrtoint %struct.xencons_interface* %35 to i64, !dbg !6717
  %call29 = call i64 @__phys_addr_nodebug(i64 %36) #11, !dbg !6717
  %shr = lshr i64 %call29, 12, !dbg !6717
  %call30 = call i64 @pfn_to_gfn(i64 %shr) #11, !dbg !6717
  call void @gnttab_grant_foreign_access_ref(i32 %30, i16 zeroext %conv28, i64 %call30, i32 0) #11, !dbg !6718
  br label %again, !dbg !6718

again:                                            ; preds = %if.then52, %if.end27
  call void @llvm.dbg.label(metadata !6719), !dbg !6720
  %call31 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %xbt) #11, !dbg !6721
  store i32 %call31, i32* %ret, align 4, !dbg !6722
  %37 = load i32, i32* %ret, align 4, !dbg !6723
  %tobool32 = icmp ne i32 %37, 0, !dbg !6723
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6725

if.then33:                                        ; preds = %again
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6726
  %39 = load i32, i32* %ret, align 4, !dbg !6728
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %38, i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !6729
  %40 = load i32, i32* %ret, align 4, !dbg !6730
  store i32 %40, i32* %retval, align 4, !dbg !6731
  br label %return, !dbg !6731

if.end34:                                         ; preds = %again
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6732
  %nodename35 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 1, !dbg !6733
  %42 = load i8*, i8** %nodename35, align 8, !dbg !6733
  %43 = load i32, i32* %ref, align 4, !dbg !6734
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !6735
  %44 = load i32, i32* %coerce.dive, align 4, !dbg !6735
  %call36 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %44, i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %43) #11, !dbg !6735
  store i32 %call36, i32* %ret, align 4, !dbg !6736
  %45 = load i32, i32* %ret, align 4, !dbg !6737
  %tobool37 = icmp ne i32 %45, 0, !dbg !6737
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !6739

if.then38:                                        ; preds = %if.end34
  br label %error_xenbus, !dbg !6740

if.end39:                                         ; preds = %if.end34
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6741
  %nodename40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %46, i32 0, i32 1, !dbg !6742
  %47 = load i8*, i8** %nodename40, align 8, !dbg !6742
  %48 = load i32, i32* %evtchn, align 4, !dbg !6743
  %coerce.dive41 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !6744
  %49 = load i32, i32* %coerce.dive41, align 4, !dbg !6744
  %call42 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %49, i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 %48) #11, !dbg !6744
  store i32 %call42, i32* %ret, align 4, !dbg !6745
  %50 = load i32, i32* %ret, align 4, !dbg !6746
  %tobool43 = icmp ne i32 %50, 0, !dbg !6746
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6748

if.then44:                                        ; preds = %if.end39
  br label %error_xenbus, !dbg !6749

if.end45:                                         ; preds = %if.end39
  %coerce.dive46 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !6750
  %51 = load i32, i32* %coerce.dive46, align 4, !dbg !6750
  %call47 = call i32 @xenbus_transaction_end(i32 %51, i32 0) #11, !dbg !6750
  store i32 %call47, i32* %ret, align 4, !dbg !6751
  %52 = load i32, i32* %ret, align 4, !dbg !6752
  %tobool48 = icmp ne i32 %52, 0, !dbg !6752
  br i1 %tobool48, label %if.then49, label %if.end54, !dbg !6754

if.then49:                                        ; preds = %if.end45
  %53 = load i32, i32* %ret, align 4, !dbg !6755
  %cmp50 = icmp eq i32 %53, -11, !dbg !6758
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !6759

if.then52:                                        ; preds = %if.then49
  br label %again, !dbg !6760

if.end53:                                         ; preds = %if.then49
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6761
  %55 = load i32, i32* %ret, align 4, !dbg !6762
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %54, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !6763
  %56 = load i32, i32* %ret, align 4, !dbg !6764
  store i32 %56, i32* %retval, align 4, !dbg !6765
  br label %return, !dbg !6765

if.end54:                                         ; preds = %if.end45
  %57 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6766
  %call55 = call i32 @xenbus_switch_state(%struct.xenbus_device* %57, i32 3) #11, !dbg !6767
  store i32 0, i32* %retval, align 4, !dbg !6768
  br label %return, !dbg !6768

error_xenbus:                                     ; preds = %if.then44, %if.then38
  call void @llvm.dbg.label(metadata !6769), !dbg !6770
  %coerce.dive56 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !6771
  %58 = load i32, i32* %coerce.dive56, align 4, !dbg !6771
  %call57 = call i32 @xenbus_transaction_end(i32 %58, i32 1) #11, !dbg !6771
  %59 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6772
  %60 = load i32, i32* %ret, align 4, !dbg !6773
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %59, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !6774
  %61 = load i32, i32* %ret, align 4, !dbg !6775
  store i32 %61, i32* %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

return:                                           ; preds = %error_xenbus, %if.end54, %if.end53, %if.then33, %if.then26, %if.then21, %if.then13, %if.then3, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !6777
  ret i32 %62, !dbg !6777
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xencons_disconnect_backend(%struct.xencons_info* %info) #0 !dbg !6778 {
entry:
  %info.addr = alloca %struct.xencons_info*, align 8
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !6779, metadata !DIExpression()), !dbg !6780
  %0 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6781
  %irq = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %0, i32 0, i32 5, !dbg !6783
  %1 = load i32, i32* %irq, align 8, !dbg !6783
  %cmp = icmp sgt i32 %1, 0, !dbg !6784
  br i1 %cmp, label %if.then, label %if.end, !dbg !6785

if.then:                                          ; preds = %entry
  %2 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6786
  %irq1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %2, i32 0, i32 5, !dbg !6787
  %3 = load i32, i32* %irq1, align 8, !dbg !6787
  call void @unbind_from_irqhandler(i32 %3, i8* null) #11, !dbg !6788
  br label %if.end, !dbg !6788

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6789
  %irq2 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %4, i32 0, i32 5, !dbg !6790
  store i32 0, i32* %irq2, align 8, !dbg !6791
  %5 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6792
  %evtchn = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %5, i32 0, i32 3, !dbg !6794
  %6 = load i32, i32* %evtchn, align 8, !dbg !6794
  %cmp3 = icmp ugt i32 %6, 0, !dbg !6795
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !6796

if.then4:                                         ; preds = %if.end
  %7 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6797
  %xbdev = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %7, i32 0, i32 1, !dbg !6798
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev, align 8, !dbg !6798
  %9 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6799
  %evtchn5 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %9, i32 0, i32 3, !dbg !6800
  %10 = load i32, i32* %evtchn5, align 8, !dbg !6800
  %call = call i32 @xenbus_free_evtchn(%struct.xenbus_device* %8, i32 %10) #11, !dbg !6801
  br label %if.end6, !dbg !6801

if.end6:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6802
  %evtchn7 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %11, i32 0, i32 3, !dbg !6803
  store i32 0, i32* %evtchn7, align 8, !dbg !6804
  %12 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6805
  %gntref = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %12, i32 0, i32 7, !dbg !6807
  %13 = load i32, i32* %gntref, align 8, !dbg !6807
  %cmp8 = icmp ugt i32 %13, 0, !dbg !6808
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !6809

if.then9:                                         ; preds = %if.end6
  %14 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6810
  %gntref10 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %14, i32 0, i32 7, !dbg !6811
  %15 = load i32, i32* %gntref10, align 8, !dbg !6811
  call void @gnttab_free_grant_references(i32 %15) #11, !dbg !6812
  br label %if.end11, !dbg !6812

if.end11:                                         ; preds = %if.then9, %if.end6
  %16 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6813
  %gntref12 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %16, i32 0, i32 7, !dbg !6814
  store i32 0, i32* %gntref12, align 8, !dbg !6815
  %17 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6816
  %hvc = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %17, i32 0, i32 4, !dbg !6818
  %18 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc, align 8, !dbg !6818
  %cmp13 = icmp ne %struct.hvc_struct* %18, null, !dbg !6819
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !6820

if.then14:                                        ; preds = %if.end11
  %19 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6821
  %hvc15 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %19, i32 0, i32 4, !dbg !6822
  %20 = load %struct.hvc_struct*, %struct.hvc_struct** %hvc15, align 8, !dbg !6822
  %call16 = call i32 @hvc_remove(%struct.hvc_struct* %20) #11, !dbg !6823
  br label %if.end17, !dbg !6823

if.end17:                                         ; preds = %if.then14, %if.end11
  %21 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6824
  %hvc18 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %21, i32 0, i32 4, !dbg !6825
  store %struct.hvc_struct* null, %struct.hvc_struct** %hvc18, align 8, !dbg !6826
  ret void, !dbg !6827
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xencons_free(%struct.xencons_info* %info) #0 !dbg !6828 {
entry:
  %info.addr = alloca %struct.xencons_info*, align 8
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !6829, metadata !DIExpression()), !dbg !6830
  %0 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6831
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %0, i32 0, i32 2, !dbg !6831
  %1 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6831
  %2 = ptrtoint %struct.xencons_interface* %1 to i64, !dbg !6831
  call void @free_pages(i64 %2, i32 0) #11, !dbg !6831
  %3 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6832
  %intf1 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %3, i32 0, i32 2, !dbg !6833
  store %struct.xencons_interface* null, %struct.xencons_interface** %intf1, align 8, !dbg !6834
  %4 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6835
  %vtermno = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %4, i32 0, i32 6, !dbg !6836
  store i32 0, i32* %vtermno, align 4, !dbg !6837
  %5 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6838
  %6 = bitcast %struct.xencons_info* %5 to i8*, !dbg !6838
  call void @kfree(i8* %6) #11, !dbg !6839
  ret void, !dbg !6840
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @gnttab_alloc_grant_references(i16 zeroext, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @gnttab_claim_grant_reference(i32*) #2

; Function Attrs: noredzone
declare dso_local void @gnttab_grant_foreign_access_ref(i32, i16 zeroext, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !6841 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6842, metadata !DIExpression()), !dbg !6843
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6844
  %tobool = icmp ne i32 %call, 0, !dbg !6844
  br i1 %tobool, label %if.then, label %if.else, !dbg !6846

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6847
  store i64 %0, i64* %retval, align 8, !dbg !6848
  br label %return, !dbg !6848

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6849
  %call1 = call i64 @pfn_to_mfn(i64 %1) #11, !dbg !6850
  store i64 %call1, i64* %retval, align 8, !dbg !6851
  br label %return, !dbg !6851

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6852
  ret i64 %2, !dbg !6852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !6853 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !6855, metadata !DIExpression()), !dbg !6856
  call void @llvm.dbg.declare(metadata i64* %y, metadata !6857, metadata !DIExpression()), !dbg !6858
  %0 = load i64, i64* %x.addr, align 8, !dbg !6859
  %sub = sub i64 %0, -2147483648, !dbg !6860
  store i64 %sub, i64* %y, align 8, !dbg !6858
  %1 = load i64, i64* %y, align 8, !dbg !6861
  %2 = load i64, i64* %x.addr, align 8, !dbg !6862
  %3 = load i64, i64* %y, align 8, !dbg !6863
  %cmp = icmp ugt i64 %2, %3, !dbg !6864
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6865

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !6866
  br label %cond.end, !dbg !6865

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !6867
  %sub1 = sub i64 -2147483648, %5, !dbg !6868
  br label %cond.end, !dbg !6865

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6865
  %add = add i64 %1, %cond, !dbg !6869
  store i64 %add, i64* %x.addr, align 8, !dbg !6870
  %6 = load i64, i64* %x.addr, align 8, !dbg !6871
  ret i64 %6, !dbg !6872
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_end(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !6873 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6874, metadata !DIExpression()), !dbg !6875
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6876, metadata !DIExpression()), !dbg !6877
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6878
  %tobool = icmp ne i32 %call, 0, !dbg !6878
  br i1 %tobool, label %if.then, label %if.end, !dbg !6880

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6881
  store i64 %0, i64* %retval, align 8, !dbg !6882
  br label %return, !dbg !6882

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6883
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #11, !dbg !6884
  store i64 %call1, i64* %mfn, align 8, !dbg !6885
  %2 = load i64, i64* %mfn, align 8, !dbg !6886
  %cmp = icmp ne i64 %2, -1, !dbg !6888
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6889

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !6890
  %and = and i64 %3, 4611686018427387903, !dbg !6890
  store i64 %and, i64* %mfn, align 8, !dbg !6890
  br label %if.end3, !dbg !6891

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !6892
  store i64 %4, i64* %retval, align 8, !dbg !6893
  br label %return, !dbg !6893

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !6894
  ret i64 %5, !dbg !6894
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_free_evtchn(%struct.xenbus_device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @gnttab_free_grant_references(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @hvc_remove(%struct.hvc_struct*) #2

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_console_remove(%struct.xencons_info* %info) #0 !dbg !6895 {
entry:
  %lock.addr.i4 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i4, metadata !4936, metadata !DIExpression()), !dbg !6898
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4945, metadata !DIExpression()), !dbg !6900
  %info.addr = alloca %struct.xencons_info*, align 8
  store %struct.xencons_info* %info, %struct.xencons_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xencons_info** %info.addr, metadata !6902, metadata !DIExpression()), !dbg !6903
  %0 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6904
  call void @xencons_disconnect_backend(%struct.xencons_info* %0) #11, !dbg !6905
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6906, !srcloc !5027
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6907
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !6907
  %rlock.i = bitcast %union.anon.1* %2 to %struct.raw_spinlock*, !dbg !6907
  %3 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6908
  %list = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %3, i32 0, i32 0, !dbg !6909
  call void @list_del(%struct.list_head* %list) #11, !dbg !6910
  store %struct.spinlock* @xencons_lock, %struct.spinlock** %lock.addr.i4, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !6911, !srcloc !5035
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i4, align 8, !dbg !6912
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !6912
  %rlock.i5 = bitcast %union.anon.1* %5 to %struct.raw_spinlock*, !dbg !6912
  %6 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6913
  %xbdev = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %6, i32 0, i32 1, !dbg !6915
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev, align 8, !dbg !6915
  %cmp = icmp ne %struct.xenbus_device* %7, null, !dbg !6916
  br i1 %cmp, label %if.then, label %if.else, !dbg !6917

if.then:                                          ; preds = %entry
  %8 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6918
  call void @xencons_free(%struct.xencons_info* %8) #11, !dbg !6919
  br label %if.end3, !dbg !6919

if.else:                                          ; preds = %entry
  %9 = load i32, i32* @xen_domain_type, align 4, !dbg !6920
  %cmp1 = icmp eq i32 %9, 2, !dbg !6920
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6923

if.then2:                                         ; preds = %if.else
  %10 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6924
  %intf = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %10, i32 0, i32 2, !dbg !6925
  %11 = load %struct.xencons_interface*, %struct.xencons_interface** %intf, align 8, !dbg !6925
  %12 = bitcast %struct.xencons_interface* %11 to i8*, !dbg !6924
  call void @iounmap(i8* %12) #11, !dbg !6926
  br label %if.end, !dbg !6926

if.end:                                           ; preds = %if.then2, %if.else
  %13 = load %struct.xencons_info*, %struct.xencons_info** %info.addr, align 8, !dbg !6927
  %14 = bitcast %struct.xencons_info* %13 to i8*, !dbg !6927
  call void @kfree(i8* %14) #11, !dbg !6928
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret i32 0, !dbg !6929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6930 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6933, metadata !DIExpression()), !dbg !6934
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6935
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6936
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6936
  ret i8* %1, !dbg !6937
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone
declare dso_local i32 @hvc_instantiate(i32, i32, %struct.hv_ops*) #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_cpuid_base() #0 !dbg !6938 {
entry:
  %call = call i32 @hypervisor_cpuid_base(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i32 2) #11, !dbg !6942
  ret i32 %call, !dbg !6943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outsb(i32 %port, i8* %addr, i64 %count) #0 !dbg !6944 {
entry:
  %port.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %value = alloca i8*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6948, metadata !DIExpression()), !dbg !6949
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6950, metadata !DIExpression()), !dbg !6949
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6951, metadata !DIExpression()), !dbg !6949
  %call = call zeroext i1 @sev_key_active() #11, !dbg !6952
  br i1 %call, label %if.then, label %if.else, !dbg !6949

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %value, metadata !6954, metadata !DIExpression()), !dbg !6956
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6956
  store i8* %0, i8** %value, align 8, !dbg !6956
  br label %while.cond, !dbg !6956

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, i64* %count.addr, align 8, !dbg !6956
  %tobool = icmp ne i64 %1, 0, !dbg !6956
  br i1 %tobool, label %while.body, label %while.end, !dbg !6956

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %value, align 8, !dbg !6957
  %3 = load i8, i8* %2, align 1, !dbg !6957
  %4 = load i32, i32* %port.addr, align 4, !dbg !6957
  call void @outb(i8 zeroext %3, i32 %4) #11, !dbg !6957
  %5 = load i8*, i8** %value, align 8, !dbg !6957
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !6957
  store i8* %incdec.ptr, i8** %value, align 8, !dbg !6957
  %6 = load i64, i64* %count.addr, align 8, !dbg !6957
  %dec = add i64 %6, -1, !dbg !6957
  store i64 %dec, i64* %count.addr, align 8, !dbg !6957
  br label %while.cond, !dbg !6956, !llvm.loop !6959

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !6956

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %addr.addr, align 8, !dbg !6960
  %8 = load i64, i64* %count.addr, align 8, !dbg !6960
  %9 = load i32, i32* %port.addr, align 4, !dbg !6960
  %10 = call { i8*, i64 } asm sideeffect "rep; outsb", "={si},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %9, i8* %7, i64 %8) #4, !dbg !6960, !srcloc !6962
  %asmresult = extractvalue { i8*, i64 } %10, 0, !dbg !6960
  %asmresult1 = extractvalue { i8*, i64 } %10, 1, !dbg !6960
  store i8* %asmresult, i8** %addr.addr, align 8, !dbg !6960
  store i64 %asmresult1, i64* %count.addr, align 8, !dbg !6960
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !6949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hypervisor_cpuid_base(i8* %sig, i32 %leaves) #0 !dbg !6963 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  %leaves.addr = alloca i32, align 4
  %base = alloca i32, align 4
  %eax = alloca i32, align 4
  %signature = alloca [3 x i32], align 4
  store i8* %sig, i8** %sig.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sig.addr, metadata !6966, metadata !DIExpression()), !dbg !6967
  store i32 %leaves, i32* %leaves.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %leaves.addr, metadata !6968, metadata !DIExpression()), !dbg !6969
  call void @llvm.dbg.declare(metadata i32* %base, metadata !6970, metadata !DIExpression()), !dbg !6971
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !6972, metadata !DIExpression()), !dbg !6973
  call void @llvm.dbg.declare(metadata [3 x i32]* %signature, metadata !6974, metadata !DIExpression()), !dbg !6976
  store i32 1073741824, i32* %base, align 4, !dbg !6977
  br label %for.cond, !dbg !6979

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %base, align 4, !dbg !6980
  %cmp = icmp ult i32 %0, 1073807360, !dbg !6982
  br i1 %cmp, label %for.body, label %for.end, !dbg !6983

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %base, align 4, !dbg !6984
  %arrayidx = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 0, !dbg !6986
  %arrayidx1 = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 1, !dbg !6987
  %arrayidx2 = getelementptr [3 x i32], [3 x i32]* %signature, i64 0, i64 2, !dbg !6988
  call void @cpuid(i32 %1, i32* %eax, i32* %arrayidx, i32* %arrayidx1, i32* %arrayidx2) #11, !dbg !6989
  %2 = load i8*, i8** %sig.addr, align 8, !dbg !6990
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %signature, i64 0, i64 0, !dbg !6992
  %3 = bitcast i32* %arraydecay to i8*, !dbg !6992
  %call = call i32 @memcmp(i8* %2, i8* %3, i64 12) #11, !dbg !6993
  %tobool = icmp ne i32 %call, 0, !dbg !6993
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6994

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %leaves.addr, align 4, !dbg !6995
  %cmp3 = icmp eq i32 %4, 0, !dbg !6996
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !6997

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %eax, align 4, !dbg !6998
  %6 = load i32, i32* %base, align 4, !dbg !6999
  %sub = sub i32 %5, %6, !dbg !7000
  %7 = load i32, i32* %leaves.addr, align 4, !dbg !7001
  %cmp4 = icmp uge i32 %sub, %7, !dbg !7002
  br i1 %cmp4, label %if.then, label %if.end, !dbg !7003

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load i32, i32* %base, align 4, !dbg !7004
  store i32 %8, i32* %retval, align 4, !dbg !7005
  br label %return, !dbg !7005

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !7006

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %base, align 4, !dbg !7007
  %add = add i32 %9, 256, !dbg !7007
  store i32 %add, i32* %base, align 4, !dbg !7007
  br label %for.cond, !dbg !7008, !llvm.loop !7009

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !7011
  br label %return, !dbg !7011

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !7012
  ret i32 %10, !dbg !7012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuid(i32 %op, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #0 !dbg !7013 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !7016, metadata !DIExpression()), !dbg !7017
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !7018, metadata !DIExpression()), !dbg !7019
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !7020, metadata !DIExpression()), !dbg !7021
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !7022, metadata !DIExpression()), !dbg !7023
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !7024, metadata !DIExpression()), !dbg !7025
  %0 = load i32, i32* %op.addr, align 4, !dbg !7026
  %1 = load i32*, i32** %eax.addr, align 8, !dbg !7027
  store i32 %0, i32* %1, align 4, !dbg !7028
  %2 = load i32*, i32** %ecx.addr, align 8, !dbg !7029
  store i32 0, i32* %2, align 4, !dbg !7030
  %3 = load i32*, i32** %eax.addr, align 8, !dbg !7031
  %4 = load i32*, i32** %ebx.addr, align 8, !dbg !7032
  %5 = load i32*, i32** %ecx.addr, align 8, !dbg !7033
  %6 = load i32*, i32** %edx.addr, align 8, !dbg !7034
  call void @__cpuid(i32* %3, i32* %4, i32* %5, i32* %6) #11, !dbg !7035
  ret void, !dbg !7036
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuid(i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #0 !dbg !7037 {
entry:
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !7041, metadata !DIExpression()), !dbg !7042
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !7043, metadata !DIExpression()), !dbg !7044
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !7045, metadata !DIExpression()), !dbg !7046
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !7047, metadata !DIExpression()), !dbg !7048
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7049, metadata !DIExpression()), !dbg !7051
  %0 = load i64, i64* %__edi, align 8, !dbg !7051
  store i64 %0, i64* %__edi, align 8, !dbg !7051
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7052, metadata !DIExpression()), !dbg !7051
  %1 = load i64, i64* %__esi, align 8, !dbg !7051
  store i64 %1, i64* %__esi, align 8, !dbg !7051
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7053, metadata !DIExpression()), !dbg !7051
  %2 = load i64, i64* %__edx, align 8, !dbg !7051
  store i64 %2, i64* %__edx, align 8, !dbg !7051
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7054, metadata !DIExpression()), !dbg !7051
  %3 = load i64, i64* %__ecx, align 8, !dbg !7051
  store i64 %3, i64* %__ecx, align 8, !dbg !7051
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7055, metadata !DIExpression()), !dbg !7051
  %4 = load i64, i64* %__eax, align 8, !dbg !7051
  store i64 %4, i64* %__eax, align 8, !dbg !7051
  %5 = load void (i32*, i32*, i32*, i32*)*, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), align 8, !dbg !7051
  %6 = call i64 @llvm.read_register.i64(metadata !4818), !dbg !7051
  %7 = load i32*, i32** %eax.addr, align 8, !dbg !7051
  %8 = ptrtoint i32* %7 to i64, !dbg !7051
  %9 = load i32*, i32** %ebx.addr, align 8, !dbg !7051
  %10 = ptrtoint i32* %9 to i64, !dbg !7051
  %11 = load i32*, i32** %ecx.addr, align 8, !dbg !7051
  %12 = ptrtoint i32* %11 to i64, !dbg !7051
  %13 = load i32*, i32** %edx.addr, align 8, !dbg !7051
  %14 = ptrtoint i32* %13 to i64, !dbg !7051
  %15 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},{cx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 25, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), i32 511, i64 %8, i64 %10, i64 %12, i64 %14, i64 %6) #4, !dbg !7051, !srcloc !7056
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %15, 0, !dbg !7051
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %15, 1, !dbg !7051
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %15, 2, !dbg !7051
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %15, 3, !dbg !7051
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %15, 4, !dbg !7051
  store i64 %asmresult, i64* %__edi, align 8, !dbg !7051
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !7051
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !7051
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !7051
  call void @llvm.write_register.i64(metadata !4818, i64 %asmresult4), !dbg !7051
  ret void, !dbg !7057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @sev_key_active() #0 !dbg !7058 {
entry:
  ret i1 false, !dbg !7059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !7060 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !7063, metadata !DIExpression()), !dbg !7064
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !7065, metadata !DIExpression()), !dbg !7064
  %0 = load i8, i8* %value.addr, align 1, !dbg !7064
  %1 = load i32, i32* %port.addr, align 4, !dbg !7064
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #4, !dbg !7064, !srcloc !7066
  ret void, !dbg !7064
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind willreturn }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4818}
!llvm.module.flags = !{!4819, !4820, !4821, !4822}
!llvm.ident = !{!4823}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xen_hvc_init241", scope: !2, file: !3, line: 567, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, globals: !4710, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/hvc/hvc_xen.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !140, !146, !151, !158}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !94, line: 76, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !108, line: 478, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !115, line: 1084, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !123, line: 11, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenbus_state", file: !129, line: 17, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/xen/interface/io/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "XenbusStateUnknown", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "XenbusStateInitialising", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "XenbusStateInitWait", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "XenbusStateInitialised", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "XenbusStateConnected", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "XenbusStateClosing", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "XenbusStateClosed", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "XenbusStateReconfiguring", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "XenbusStateReconfigured", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !141, line: 5, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 10, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 305, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 76, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!160 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8, isUnsigned: true)
!166 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12, isUnsigned: true)
!167 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15, isUnsigned: true)
!168 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15, isUnsigned: true)
!169 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16, isUnsigned: true)
!170 = !DIEnumerator(name: "IRQ_LEVEL", value: 256, isUnsigned: true)
!171 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512, isUnsigned: true)
!172 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024, isUnsigned: true)
!173 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048, isUnsigned: true)
!174 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096, isUnsigned: true)
!175 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192, isUnsigned: true)
!176 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384, isUnsigned: true)
!177 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768, isUnsigned: true)
!178 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536, isUnsigned: true)
!179 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072, isUnsigned: true)
!180 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144, isUnsigned: true)
!181 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288, isUnsigned: true)
!182 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576, isUnsigned: true)
!183 = !{!184, !185, !4706, !326, !207, !635, !798, !4709, !311, !276, !2217}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xencons_info", file: !3, line: 35, size: 512, elements: !187)
!187 = !{!188, !195, !4631, !4646, !4647, !4701, !4702, !4703}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !186, file: !3, line: 36, baseType: !189, size: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !190, line: 178, size: 128, elements: !191)
!190 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !190, line: 179, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !190, line: 179, baseType: !193, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xbdev", scope: !186, file: !3, line: 37, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !198, line: 71, size: 6784, elements: !199)
!198 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !204, !205, !206, !208, !218, !4621, !4622, !4623, !4624}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !197, file: !198, line: 72, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !197, file: !198, line: 73, baseType: !201, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !197, file: !198, line: 74, baseType: !201, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !197, file: !198, line: 75, baseType: !207, size: 32, offset: 192)
!207 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !197, file: !198, line: 76, baseType: !209, size: 256, offset: 256)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !198, line: 57, size: 256, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !209, file: !198, line: 59, baseType: !189, size: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !198, line: 62, baseType: !201, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !209, file: !198, line: 65, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !201, !201}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !197, file: !198, line: 77, baseType: !219, size: 5568, offset: 512)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !220)
!220 = !{!221, !3799, !3800, !3803, !3804, !3855, !3944, !3945, !3946, !3947, !3948, !3957, !4062, !4075, !4548, !4549, !4553, !4555, !4556, !4557, !4561, !4567, !4568, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4609, !4610, !4611, !4614, !4617, !4618, !4619, !4620}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !219, file: !73, line: 462, baseType: !222, size: 512)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !223, line: 64, size: 512, elements: !224)
!223 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !227, !229, !289, !3666, !3793, !3794, !3795, !3796, !3797, !3798}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !223, line: 65, baseType: !201, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !222, file: !223, line: 66, baseType: !189, size: 128, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !223, line: 67, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !222, file: !223, line: 68, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !223, line: 192, size: 704, elements: !232)
!232 = !{!233, !234, !250, !251}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !231, file: !223, line: 193, baseType: !189, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !231, file: !223, line: 194, baseType: !235, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !236, line: 83, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !236, line: 71, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 72, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 72, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !240, file: !236, line: 73, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 20, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !236, line: 21, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !247, line: 25, baseType: !248)
!247 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 25, elements: !249)
!249 = !{}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !223, line: 195, baseType: !222, size: 512, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !231, file: !223, line: 196, baseType: !252, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !223, line: 156, size: 192, elements: !255)
!255 = !{!256, !261, !266}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !254, file: !223, line: 157, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!207, !230, !228}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !223, line: 158, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!201, !230, !228}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !254, file: !223, line: 159, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!207, !230, !228, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !223, line: 148, size: 20736, elements: !273)
!273 = !{!274, !279, !283, !284, !288}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !272, file: !223, line: 149, baseType: !275, size: 192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 192, elements: !277)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!277 = !{!278}
!278 = !DISubrange(count: 3)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !272, file: !223, line: 150, baseType: !280, size: 4096, offset: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4096, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !272, file: !223, line: 151, baseType: !207, size: 32, offset: 4288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !272, file: !223, line: 152, baseType: !285, size: 16384, offset: 4320)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 16384, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 2048)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !272, file: !223, line: 153, baseType: !207, size: 32, offset: 20704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !222, file: !223, line: 69, baseType: !290, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !223, line: 138, size: 448, elements: !292)
!292 = !{!293, !297, !327, !329, !3628, !3656, !3660}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !223, line: 139, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !228}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !291, file: !223, line: 140, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !301, line: 230, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !319}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !300, file: !301, line: 231, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !228, !312, !276}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !190, line: 60, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !309, line: 73, baseType: !310)
!309 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !309, line: 15, baseType: !311)
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !301, line: 30, size: 128, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !301, line: 31, baseType: !201, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !313, file: !301, line: 32, baseType: !317, size: 16, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !190, line: 19, baseType: !318)
!318 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !300, file: !301, line: 232, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!307, !228, !312, !201, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 55, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !309, line: 72, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !309, line: 16, baseType: !326)
!326 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !291, file: !223, line: 141, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !291, file: !223, line: 142, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !301, line: 84, size: 320, elements: !334)
!334 = !{!335, !336, !340, !3625, !3626}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !301, line: 85, baseType: !201, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !333, file: !301, line: 86, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!317, !228, !312, !207}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !333, file: !301, line: 88, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!317, !228, !344, !207}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !301, line: 168, size: 448, elements: !346)
!346 = !{!347, !348, !349, !350, !3620, !3621}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !345, file: !301, line: 169, baseType: !313, size: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !345, file: !301, line: 170, baseType: !323, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !345, file: !301, line: 171, baseType: !184, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !345, file: !301, line: 172, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!307, !354, !228, !344, !276, !533, !323}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !356)
!356 = !{!357, !375, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3603, !3604, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !355, file: !44, line: 920, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 917, size: 128, elements: !359)
!359 = !{!360, !366}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !358, file: !44, line: 918, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !362, line: 58, size: 64, elements: !363)
!362 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !362, line: 59, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !358, file: !44, line: 919, baseType: !367, size: 128, align: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !190, line: 216, size: 128, align: 64, elements: !368)
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !190, line: 217, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !367, file: !190, line: 218, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !370}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !355, file: !44, line: 921, baseType: !376, size: 128, offset: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !377, line: 8, size: 128, elements: !378)
!377 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !376, file: !377, line: 9, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !382, line: 18, flags: DIFlagFwdDecl)
!382 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !376, file: !377, line: 10, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !382, line: 89, size: 1536, elements: !386)
!386 = !{!387, !388, !398, !406, !407, !430, !3553, !3555, !3567, !3568, !3569, !3570, !3571, !3577, !3578, !3579}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !385, file: !382, line: 91, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !385, file: !382, line: 92, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !390, line: 277, baseType: !391)
!390 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !390, line: 277, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !391, file: !390, line: 277, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !390, line: 70, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !390, line: 65, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !395, file: !390, line: 66, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !385, file: !382, line: 93, baseType: !399, size: 128, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !400, line: 38, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !400, line: 39, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !399, file: !400, line: 39, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !385, file: !382, line: 94, baseType: !384, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !385, file: !382, line: 95, baseType: !408, size: 128, offset: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !382, line: 47, size: 128, elements: !409)
!409 = !{!410, !426}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !382, line: 48, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !382, line: 48, size: 64, elements: !412)
!412 = !{!413, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !382, line: 49, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !382, line: 49, size: 64, elements: !415)
!415 = !{!416, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !414, file: !382, line: 50, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !418, line: 21, baseType: !419)
!418 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !420, line: 27, baseType: !7)
!420 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !414, file: !382, line: 50, baseType: !417, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !411, file: !382, line: 52, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !418, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !420, line: 31, baseType: !425)
!425 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !382, line: 54, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !385, file: !382, line: 96, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !433)
!433 = !{!434, !435, !436, !444, !451, !452, !600, !3488, !3489, !3490, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3531, !3539, !3540, !3541, !3549, !3550, !3551, !3552}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !432, file: !44, line: 611, baseType: !317, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !432, file: !44, line: 612, baseType: !318, size: 16, offset: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !432, file: !44, line: 613, baseType: !437, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !438, line: 23, baseType: !439)
!438 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 21, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !438, line: 22, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !190, line: 32, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !309, line: 49, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !432, file: !44, line: 614, baseType: !445, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !438, line: 28, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 26, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !438, line: 27, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !190, line: 33, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !309, line: 50, baseType: !7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !432, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !432, file: !44, line: 622, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !456)
!456 = !{!457, !461, !474, !478, !484, !488, !494, !498, !502, !506, !510, !511, !517, !521, !547, !576, !580, !586, !591, !595, !596}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !455, file: !44, line: 1865, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!384, !431, !384, !7}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !455, file: !44, line: 1866, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!201, !384, !431, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !467, line: 10, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !473}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !466, file: !467, line: 11, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !184}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !466, file: !467, line: 12, baseType: !184, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !455, file: !44, line: 1867, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!207, !431, !207}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !455, file: !44, line: 1868, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !431, !207}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !455, file: !44, line: 1870, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!207, !384, !276, !207}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !455, file: !44, line: 1872, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!207, !431, !384, !317, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !190, line: 30, baseType: !493)
!493 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !455, file: !44, line: 1873, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!207, !384, !431, !384}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !455, file: !44, line: 1874, baseType: !499, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!207, !431, !384}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !455, file: !44, line: 1875, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!207, !431, !384, !201}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !455, file: !44, line: 1876, baseType: !507, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!207, !431, !384, !317}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !455, file: !44, line: 1877, baseType: !499, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !455, file: !44, line: 1878, baseType: !512, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!207, !431, !384, !317, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !190, line: 16, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !190, line: 13, baseType: !417)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !455, file: !44, line: 1879, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!207, !431, !384, !431, !384, !7}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !455, file: !44, line: 1881, baseType: !522, size: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!207, !384, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !536, !544, !545, !546}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !526, file: !44, line: 220, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !526, file: !44, line: 221, baseType: !317, size: 16, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !526, file: !44, line: 222, baseType: !437, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !526, file: !44, line: 223, baseType: !445, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !526, file: !44, line: 224, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !190, line: 46, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !309, line: 88, baseType: !535)
!535 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !526, file: !44, line: 225, baseType: !537, size: 128, offset: 192)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !538, line: 13, size: 128, elements: !539)
!538 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !537, file: !538, line: 14, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !538, line: 8, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !420, line: 30, baseType: !535)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !537, file: !538, line: 15, baseType: !311, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !526, file: !44, line: 226, baseType: !537, size: 128, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !526, file: !44, line: 227, baseType: !537, size: 128, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !526, file: !44, line: 234, baseType: !354, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !455, file: !44, line: 1882, baseType: !548, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!207, !551, !553, !417, !7}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !555, line: 22, size: 1152, elements: !556)
!555 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558, !559, !560, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !554, file: !555, line: 23, baseType: !417, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !554, file: !555, line: 24, baseType: !317, size: 16, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !554, file: !555, line: 25, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !554, file: !555, line: 26, baseType: !561, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !190, line: 104, baseType: !417)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !554, file: !555, line: 27, baseType: !423, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !554, file: !555, line: 28, baseType: !423, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !554, file: !555, line: 37, baseType: !423, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !554, file: !555, line: 38, baseType: !515, size: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !554, file: !555, line: 39, baseType: !515, size: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !554, file: !555, line: 40, baseType: !437, size: 32, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !554, file: !555, line: 41, baseType: !445, size: 32, offset: 416)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !554, file: !555, line: 42, baseType: !533, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !554, file: !555, line: 43, baseType: !537, size: 128, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !554, file: !555, line: 44, baseType: !537, size: 128, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !554, file: !555, line: 45, baseType: !537, size: 128, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !554, file: !555, line: 46, baseType: !537, size: 128, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !554, file: !555, line: 47, baseType: !423, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !554, file: !555, line: 48, baseType: !423, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !455, file: !44, line: 1883, baseType: !577, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!307, !384, !276, !323}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !455, file: !44, line: 1884, baseType: !581, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!207, !431, !584, !423, !423}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !455, file: !44, line: 1886, baseType: !587, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!207, !431, !590, !207}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !455, file: !44, line: 1887, baseType: !592, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!207, !431, !384, !354, !7, !317}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !455, file: !44, line: 1890, baseType: !507, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !455, file: !44, line: 1891, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!207, !431, !482, !207}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !432, file: !44, line: 623, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !659, !3095, !3177, !3260, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3276, !3280, !3281, !3284, !3285, !3288, !3289, !3290, !3331, !3358, !3359, !3360, !3361, !3362, !3363, !3366, !3368, !3375, !3376, !3378, !3379, !3380, !3439, !3440, !3455, !3456, !3457, !3458, !3459, !3462, !3463, !3464, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !602, file: !44, line: 1417, baseType: !189, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !602, file: !44, line: 1418, baseType: !515, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !602, file: !44, line: 1419, baseType: !429, size: 8, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !602, file: !44, line: 1420, baseType: !326, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !602, file: !44, line: 1421, baseType: !533, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !602, file: !44, line: 1422, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !612)
!612 = !{!613, !614, !615, !622, !626, !630, !634, !638, !639, !649, !652, !653, !654, !656, !657, !658}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !44, line: 2229, baseType: !201, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !611, file: !44, line: 2230, baseType: !207, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !611, file: !44, line: 2238, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!207, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !621, line: 28, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !611, file: !44, line: 2239, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !611, file: !44, line: 2240, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!384, !610, !207, !201, !184}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !611, file: !44, line: 2242, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !601}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !44, line: 2243, baseType: !635, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !637, line: 76, flags: DIFlagFwdDecl)
!637 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !44, line: 2244, baseType: !610, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !611, file: !44, line: 2245, baseType: !640, size: 64, offset: 512)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !190, line: 182, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !640, file: !190, line: 183, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !190, line: 186, size: 128, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !190, line: 187, baseType: !643, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !644, file: !190, line: 187, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !611, file: !44, line: 2247, baseType: !650, offset: 576)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !651, line: 187, elements: !249)
!651 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !611, file: !44, line: 2248, baseType: !650, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !611, file: !44, line: 2249, baseType: !650, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !611, file: !44, line: 2250, baseType: !655, offset: 576)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, elements: !277)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !611, file: !44, line: 2252, baseType: !650, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !611, file: !44, line: 2253, baseType: !650, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !611, file: !44, line: 2254, baseType: !650, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !602, file: !44, line: 1423, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !663)
!663 = !{!664, !668, !672, !673, !677, !683, !687, !688, !689, !693, !697, !698, !699, !700, !706, !711, !712, !768, !769, !770, !771, !3079, !3094}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !662, file: !44, line: 1936, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!431, !601}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !662, file: !44, line: 1937, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !431}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !662, file: !44, line: 1938, baseType: !669, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !662, file: !44, line: 1940, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !431, !207}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !662, file: !44, line: 1941, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!207, !431, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !662, file: !44, line: 1942, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!207, !431}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !662, file: !44, line: 1943, baseType: !669, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !662, file: !44, line: 1944, baseType: !631, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !662, file: !44, line: 1945, baseType: !690, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!207, !601, !207}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !662, file: !44, line: 1946, baseType: !694, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!207, !601}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !662, file: !44, line: 1947, baseType: !694, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !662, file: !44, line: 1948, baseType: !694, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !662, file: !44, line: 1949, baseType: !694, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !662, file: !44, line: 1950, baseType: !701, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!207, !384, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !662, file: !44, line: 1951, baseType: !707, size: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!207, !601, !710, !276}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !662, file: !44, line: 1952, baseType: !631, size: 64, offset: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !662, file: !44, line: 1954, baseType: !713, size: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!207, !716, !384}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !718, line: 16, size: 896, elements: !719)
!718 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !741, !763, !764, !767}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !717, file: !718, line: 17, baseType: !276, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !717, file: !718, line: 18, baseType: !323, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !717, file: !718, line: 19, baseType: !323, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !718, line: 20, baseType: !323, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !717, file: !718, line: 21, baseType: !323, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !717, file: !718, line: 22, baseType: !533, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !717, file: !718, line: 23, baseType: !533, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !718, line: 24, baseType: !728, size: 192, offset: 448)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !729, line: 53, size: 192, elements: !730)
!729 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !739, !740}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !728, file: !729, line: 54, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !733, line: 13, baseType: !734)
!733 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !190, line: 175, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 173, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !735, file: !190, line: 174, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !418, line: 22, baseType: !542)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !728, file: !729, line: 55, baseType: !235, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !728, file: !729, line: 59, baseType: !189, size: 128, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !717, file: !718, line: 25, baseType: !742, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !718, line: 31, size: 256, elements: !745)
!745 = !{!746, !751, !755, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !744, file: !718, line: 32, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!184, !716, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !744, file: !718, line: 33, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !716, !184}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !718, line: 34, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!184, !716, !184, !750}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !744, file: !718, line: 35, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!207, !716, !184}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !717, file: !718, line: 26, baseType: !207, size: 32, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !717, file: !718, line: 27, baseType: !765, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !717, file: !718, line: 28, baseType: !184, size: 64, offset: 832)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !662, file: !44, line: 1955, baseType: !713, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !662, file: !44, line: 1956, baseType: !713, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !662, file: !44, line: 1957, baseType: !713, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !662, file: !44, line: 1963, baseType: !772, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!207, !601, !775, !798}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !777, line: 68, size: 512, align: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780, !3071, !3078}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !777, line: 69, baseType: !326, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 77, baseType: !781, size: 320, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 77, size: 320, elements: !782)
!782 = !{!783, !964, !969, !997, !1005, !1011, !3002, !3070}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 78, baseType: !784, size: 320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 78, size: 320, elements: !785)
!785 = !{!786, !787, !962, !963}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !784, file: !777, line: 84, baseType: !189, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !784, file: !777, line: 86, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !790)
!790 = !{!791, !792, !800, !801, !806, !821, !830, !831, !832, !833, !955, !956, !959, !960, !961}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !789, file: !44, line: 452, baseType: !431, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !789, file: !44, line: 453, baseType: !793, size: 128, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !794, line: 292, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797, !799}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !793, file: !794, line: 293, baseType: !235)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !793, file: !794, line: 295, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !190, line: 148, baseType: !7)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !793, file: !794, line: 296, baseType: !184, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !789, file: !44, line: 454, baseType: !798, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !789, file: !44, line: 455, baseType: !802, size: 32, offset: 224)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !190, line: 168, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 166, size: 32, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !803, file: !190, line: 167, baseType: !207, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !789, file: !44, line: 460, baseType: !807, size: 128, offset: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !808, line: 125, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !807, file: !808, line: 126, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !808, line: 31, size: 64, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !811, file: !808, line: 32, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !808, line: 24, size: 192, align: 64, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !815, file: !808, line: 25, baseType: !326, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !815, file: !808, line: 26, baseType: !814, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !815, file: !808, line: 27, baseType: !814, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !807, file: !808, line: 127, baseType: !814, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !789, file: !44, line: 461, baseType: !822, size: 256, offset: 384)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !823, line: 35, size: 256, elements: !824)
!823 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !826, !827, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 36, baseType: !732, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !822, file: !823, line: 42, baseType: !732, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !822, file: !823, line: 46, baseType: !828, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 29, baseType: !243)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !822, file: !823, line: 47, baseType: !189, size: 128, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !789, file: !44, line: 462, baseType: !326, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !789, file: !44, line: 463, baseType: !326, size: 64, offset: 704)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !789, file: !44, line: 464, baseType: !326, size: 64, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !789, file: !44, line: 465, baseType: !834, size: 64, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !837)
!837 = !{!838, !842, !846, !850, !854, !858, !864, !870, !874, !879, !883, !887, !891, !919, !923, !929, !930, !931, !935, !940, !944, !951}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !836, file: !44, line: 368, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!207, !775, !681}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !836, file: !44, line: 369, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!207, !354, !775}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !836, file: !44, line: 372, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!207, !788, !681}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !836, file: !44, line: 375, baseType: !851, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!207, !775}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !836, file: !44, line: 381, baseType: !855, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!207, !354, !788, !193, !7}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !836, file: !44, line: 383, baseType: !859, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !836, file: !44, line: 385, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!207, !354, !788, !533, !7, !7, !868, !869}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !836, file: !44, line: 388, baseType: !871, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!207, !354, !788, !533, !7, !7, !775, !184}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !836, file: !44, line: 393, baseType: !875, size: 64, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!878, !788, !878}
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !190, line: 125, baseType: !423)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !836, file: !44, line: 394, baseType: !880, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !775, !7, !7}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !836, file: !44, line: 395, baseType: !884, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!207, !775, !798}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !836, file: !44, line: 396, baseType: !888, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !775}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !836, file: !44, line: 397, baseType: !892, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!307, !895, !917}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !897)
!897 = !{!898, !899, !900, !904, !905, !906, !909, !910}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !896, file: !44, line: 321, baseType: !354, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !896, file: !44, line: 326, baseType: !533, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !896, file: !44, line: 327, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !895, !311, !311}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !896, file: !44, line: 328, baseType: !184, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !896, file: !44, line: 329, baseType: !207, size: 32, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !896, file: !44, line: 330, baseType: !907, size: 16, offset: 288)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !418, line: 19, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !420, line: 24, baseType: !318)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !896, file: !44, line: 331, baseType: !907, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !44, line: 332, baseType: !911, size: 64, offset: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !44, line: 332, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !911, file: !44, line: 333, baseType: !7, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !911, file: !44, line: 334, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !836, file: !44, line: 402, baseType: !920, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!207, !788, !775, !775, !5}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !836, file: !44, line: 404, baseType: !924, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!492, !775, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !928, line: 305, baseType: !7)
!928 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !836, file: !44, line: 405, baseType: !888, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !836, file: !44, line: 406, baseType: !851, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !836, file: !44, line: 407, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!207, !775, !326, !326}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !836, file: !44, line: 409, baseType: !936, size: 64, offset: 1152)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !775, !939, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !836, file: !44, line: 410, baseType: !941, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!207, !788, !775}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !836, file: !44, line: 413, baseType: !945, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!207, !948, !354, !950}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !836, file: !44, line: 415, baseType: !952, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !354}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !44, line: 466, baseType: !326, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !789, file: !44, line: 467, baseType: !957, size: 32, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !958, line: 8, baseType: !417)
!958 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !789, file: !44, line: 468, baseType: !235, offset: 992)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !789, file: !44, line: 469, baseType: !189, size: 128, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !789, file: !44, line: 470, baseType: !184, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !784, file: !777, line: 87, baseType: !326, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !777, line: 94, baseType: !326, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 96, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 96, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !965, file: !777, line: 101, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !190, line: 143, baseType: !423)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 103, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 103, size: 320, elements: !971)
!971 = !{!972, !982, !985, !986}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !777, line: 104, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !777, line: 104, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !973, file: !777, line: 105, baseType: !189, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !777, line: 106, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !777, line: 106, size: 128, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !777, line: 107, baseType: !775, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !977, file: !777, line: 109, baseType: !207, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !977, file: !777, line: 110, baseType: !207, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !970, file: !777, line: 117, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !777, line: 117, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !970, file: !777, line: 119, baseType: !184, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !777, line: 120, baseType: !987, size: 64, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !777, line: 120, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !987, file: !777, line: 121, baseType: !184, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !987, file: !777, line: 122, baseType: !326, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !777, line: 123, baseType: !992, size: 32)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !777, line: 123, size: 32, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !992, file: !777, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !992, file: !777, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !992, file: !777, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 130, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 130, size: 192, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !998, file: !777, line: 131, baseType: !326, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !998, file: !777, line: 134, baseType: !429, size: 8, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !998, file: !777, line: 135, baseType: !429, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !998, file: !777, line: 136, baseType: !802, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !998, file: !777, line: 137, baseType: !7, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 139, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 139, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1006, file: !777, line: 140, baseType: !326, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1006, file: !777, line: 141, baseType: !802, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1006, file: !777, line: 143, baseType: !189, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 145, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 145, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1018, !1019, !3001}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1012, file: !777, line: 146, baseType: !326, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1012, file: !777, line: 147, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1017, line: 509, baseType: !775)
!1017 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1012, file: !777, line: 148, baseType: !326, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !777, line: 149, baseType: !1020, size: 64, offset: 192)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !777, line: 149, size: 64, elements: !1021)
!1021 = !{!1022, !3000}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1020, file: !777, line: 150, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !777, line: 388, size: 7296, elements: !1025)
!1025 = !{!1026, !2999}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !777, line: 389, baseType: !1027, size: 7296)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !777, line: 389, size: 7296, elements: !1028)
!1028 = !{!1029, !1147, !1148, !1149, !1153, !1154, !1155, !1156, !1157, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1198, !1206, !1209, !1233, !1234, !2983, !2984, !2987, !2988, !2989, !2992, !2993, !2994, !2997, !2998}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1027, file: !777, line: 390, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !777, line: 305, size: 1472, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1047, !1048, !1053, !1054, !1057, !1141, !1142, !1143, !1144, !1145}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1031, file: !777, line: 308, baseType: !326, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1031, file: !777, line: 309, baseType: !326, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1031, file: !777, line: 313, baseType: !1030, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1031, file: !777, line: 313, baseType: !1030, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1031, file: !777, line: 315, baseType: !815, size: 192, align: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1031, file: !777, line: 323, baseType: !326, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1031, file: !777, line: 327, baseType: !1023, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1031, file: !777, line: 333, baseType: !1041, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1017, line: 284, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1017, line: 284, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1042, file: !1017, line: 284, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1046, line: 19, baseType: !326)
!1046 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1031, file: !777, line: 334, baseType: !326, size: 64, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1031, file: !777, line: 343, baseType: !1049, size: 256, offset: 704)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !777, line: 340, size: 256, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1049, file: !777, line: 341, baseType: !815, size: 192, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1049, file: !777, line: 342, baseType: !326, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1031, file: !777, line: 351, baseType: !189, size: 128, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1031, file: !777, line: 353, baseType: !1055, size: 64, offset: 1088)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !777, line: 353, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1031, file: !777, line: 356, baseType: !1058, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1061)
!1061 = !{!1062, !1066, !1067, !1071, !1075, !1115, !1119, !1123, !1127, !1128, !1129, !1133, !1137}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1060, file: !14, line: 558, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1030}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1060, file: !14, line: 559, baseType: !1063, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1060, file: !14, line: 560, baseType: !1068, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!207, !1030, !326}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1060, file: !14, line: 561, baseType: !1072, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!207, !1030}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1060, file: !14, line: 562, baseType: !1076, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !777, line: 682, baseType: !7)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1095, !1102, !1108, !1109, !1110, !1112, !1114}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1081, file: !14, line: 509, baseType: !1030, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1081, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1081, file: !14, line: 511, baseType: !798, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1081, file: !14, line: 512, baseType: !326, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1081, file: !14, line: 513, baseType: !326, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1081, file: !14, line: 514, baseType: !1089, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1017, line: 385, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 385, size: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1091, file: !1017, line: 385, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1046, line: 15, baseType: !326)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1081, file: !14, line: 516, baseType: !1096, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1017, line: 359, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 359, size: 64, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1098, file: !1017, line: 359, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1046, line: 16, baseType: !326)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1081, file: !14, line: 519, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1046, line: 21, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1046, line: 21, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1104, file: !1046, line: 21, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1046, line: 14, baseType: !326)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1081, file: !14, line: 521, baseType: !775, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1081, file: !14, line: 522, baseType: !775, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1081, file: !14, line: 528, baseType: !1111, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1081, file: !14, line: 532, baseType: !1113, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1081, file: !14, line: 536, baseType: !1016, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1060, file: !14, line: 563, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1079, !1080, !13}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1060, file: !14, line: 565, baseType: !1120, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1080, !326, !326}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1060, file: !14, line: 567, baseType: !1124, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!326, !1030}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1060, file: !14, line: 571, baseType: !1076, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1060, file: !14, line: 574, baseType: !1076, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1060, file: !14, line: 579, baseType: !1130, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!207, !1030, !326, !184, !207, !207}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1060, file: !14, line: 585, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!201, !1030}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1060, file: !14, line: 615, baseType: !1138, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!775, !1030, !326}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1031, file: !777, line: 359, baseType: !326, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1031, file: !777, line: 361, baseType: !354, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1031, file: !777, line: 362, baseType: !184, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1031, file: !777, line: 365, baseType: !732, size: 64, offset: 1408)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1031, file: !777, line: 373, baseType: !1146, offset: 1472)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !777, line: 296, elements: !249)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1027, file: !777, line: 391, baseType: !811, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1027, file: !777, line: 392, baseType: !423, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1027, file: !777, line: 394, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!326, !354, !326, !326, !326, !326}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1027, file: !777, line: 398, baseType: !326, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1027, file: !777, line: 399, baseType: !326, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1027, file: !777, line: 405, baseType: !326, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1027, file: !777, line: 406, baseType: !326, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1027, file: !777, line: 407, baseType: !1158, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1017, line: 286, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 286, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1160, file: !1017, line: 286, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1046, line: 18, baseType: !326)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1027, file: !777, line: 416, baseType: !802, size: 32, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1027, file: !777, line: 428, baseType: !802, size: 32, offset: 608)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1027, file: !777, line: 437, baseType: !802, size: 32, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1027, file: !777, line: 447, baseType: !802, size: 32, offset: 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1027, file: !777, line: 450, baseType: !732, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1027, file: !777, line: 452, baseType: !207, size: 32, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1027, file: !777, line: 454, baseType: !235, offset: 800)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1027, file: !777, line: 457, baseType: !822, size: 256, offset: 832)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1027, file: !777, line: 459, baseType: !189, size: 128, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1027, file: !777, line: 466, baseType: !326, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1027, file: !777, line: 467, baseType: !326, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1027, file: !777, line: 469, baseType: !326, size: 64, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1027, file: !777, line: 470, baseType: !326, size: 64, offset: 1408)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1027, file: !777, line: 471, baseType: !734, size: 64, offset: 1472)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1027, file: !777, line: 472, baseType: !326, size: 64, offset: 1536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1027, file: !777, line: 473, baseType: !326, size: 64, offset: 1600)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1027, file: !777, line: 474, baseType: !326, size: 64, offset: 1664)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1027, file: !777, line: 475, baseType: !326, size: 64, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1027, file: !777, line: 477, baseType: !235, offset: 1792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1027, file: !777, line: 478, baseType: !326, size: 64, offset: 1792)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1027, file: !777, line: 478, baseType: !326, size: 64, offset: 1856)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1027, file: !777, line: 478, baseType: !326, size: 64, offset: 1920)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1027, file: !777, line: 478, baseType: !326, size: 64, offset: 1984)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1027, file: !777, line: 479, baseType: !326, size: 64, offset: 2048)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1027, file: !777, line: 479, baseType: !326, size: 64, offset: 2112)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1027, file: !777, line: 479, baseType: !326, size: 64, offset: 2176)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1027, file: !777, line: 480, baseType: !326, size: 64, offset: 2240)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1027, file: !777, line: 480, baseType: !326, size: 64, offset: 2304)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1027, file: !777, line: 480, baseType: !326, size: 64, offset: 2368)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1027, file: !777, line: 480, baseType: !326, size: 64, offset: 2432)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1027, file: !777, line: 482, baseType: !1195, size: 2816, offset: 2496)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2816, elements: !1196)
!1196 = !{!1197}
!1197 = !DISubrange(count: 44)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1027, file: !777, line: 488, baseType: !1199, size: 256, offset: 5312)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1200, line: 60, size: 256, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1199, file: !1200, line: 61, baseType: !1203, size: 256)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 256, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 4)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1027, file: !777, line: 490, baseType: !1207, size: 64, offset: 5568)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !777, line: 490, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1027, file: !777, line: 493, baseType: !1210, size: 896, offset: 5632)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1211, line: 53, baseType: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 13, size: 896, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1220, !1221, !1222, !1223, !1227, !1228, !1229}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1212, file: !1211, line: 18, baseType: !423, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1212, file: !1211, line: 28, baseType: !734, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1212, file: !1211, line: 31, baseType: !822, size: 256, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1212, file: !1211, line: 32, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1211, line: 32, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1212, file: !1211, line: 37, baseType: !318, size: 16, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1212, file: !1211, line: 40, baseType: !728, size: 192, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1212, file: !1211, line: 41, baseType: !184, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1212, file: !1211, line: 42, baseType: !1224, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1211, line: 42, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1212, file: !1211, line: 44, baseType: !802, size: 32, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1212, file: !1211, line: 50, baseType: !907, size: 16, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1212, file: !1211, line: 51, baseType: !1230, size: 16, offset: 880)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !418, line: 18, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !420, line: 23, baseType: !1232)
!1232 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !777, line: 495, baseType: !326, size: 64, offset: 6528)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1027, file: !777, line: 497, baseType: !1235, size: 64, offset: 6592)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !777, line: 381, size: 384, elements: !1237)
!1237 = !{!1238, !1239, !2982}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1236, file: !777, line: 382, baseType: !802, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1236, file: !777, line: 383, baseType: !1240, size: 128, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !777, line: 376, size: 128, elements: !1241)
!1241 = !{!1242, !2980}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1240, file: !777, line: 377, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1245, line: 640, size: 48640, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1253, !1255, !1256, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1291, !1302, !1387, !1388, !1389, !1400, !1401, !1403, !1404, !1405, !1406, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1485, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1523, !1525, !1526, !1527, !1539, !1540, !1541, !1542, !1543, !1544, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1568, !1573, !1757, !1758, !1759, !1760, !1764, !1767, !1770, !1773, !1776, !1779, !2535, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2581, !2582, !2583, !2584, !2585, !2590, !2591, !2592, !2595, !2596, !2599, !2602, !2605, !2608, !2640, !2643, !2644, !2723, !2724, !2727, !2728, !2731, !2732, !2733, !2737, !2738, !2739, !2752, !2753, !2754, !2764, !2769, !2770, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1244, file: !1245, line: 646, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1249, line: 56, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 57, baseType: !326, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1248, file: !1249, line: 58, baseType: !417, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1244, file: !1245, line: 649, baseType: !1254, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1244, file: !1245, line: 657, baseType: !184, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1244, file: !1245, line: 658, baseType: !1257, size: 32, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1258, line: 113, baseType: !1259)
!1258 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1258, line: 111, size: 32, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1259, file: !1258, line: 112, baseType: !802, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !1245, line: 660, baseType: !7, size: 32, offset: 288)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1244, file: !1245, line: 661, baseType: !7, size: 32, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1244, file: !1245, line: 684, baseType: !207, size: 32, offset: 352)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1244, file: !1245, line: 686, baseType: !207, size: 32, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1244, file: !1245, line: 687, baseType: !207, size: 32, offset: 416)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1244, file: !1245, line: 688, baseType: !207, size: 32, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1244, file: !1245, line: 689, baseType: !7, size: 32, offset: 480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1244, file: !1245, line: 691, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1245, line: 691, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1244, file: !1245, line: 692, baseType: !1274, size: 832, offset: 576)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1245, line: 451, size: 832, elements: !1275)
!1275 = !{!1276, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1274, file: !1245, line: 453, baseType: !1277, size: 128)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1245, line: 325, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1277, file: !1245, line: 326, baseType: !326, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1277, file: !1245, line: 327, baseType: !417, size: 32, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1274, file: !1245, line: 454, baseType: !815, size: 192, align: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1274, file: !1245, line: 455, baseType: !189, size: 128, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1274, file: !1245, line: 456, baseType: !7, size: 32, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1274, file: !1245, line: 458, baseType: !423, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1274, file: !1245, line: 459, baseType: !423, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1274, file: !1245, line: 460, baseType: !423, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1274, file: !1245, line: 461, baseType: !423, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1274, file: !1245, line: 463, baseType: !423, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1274, file: !1245, line: 465, baseType: !1290, offset: 832)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1245, line: 415, elements: !249)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1244, file: !1245, line: 693, baseType: !1292, size: 384, offset: 1408)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1245, line: 489, size: 384, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1292, file: !1245, line: 490, baseType: !189, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1292, file: !1245, line: 491, baseType: !326, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1292, file: !1245, line: 492, baseType: !326, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1292, file: !1245, line: 493, baseType: !7, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1292, file: !1245, line: 494, baseType: !318, size: 16, offset: 288)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1292, file: !1245, line: 495, baseType: !318, size: 16, offset: 304)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1292, file: !1245, line: 497, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1244, file: !1245, line: 697, baseType: !1303, size: 1792, offset: 1792)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1245, line: 507, size: 1792, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1384, !1385}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1303, file: !1245, line: 508, baseType: !815, size: 192, align: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1303, file: !1245, line: 515, baseType: !423, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1303, file: !1245, line: 516, baseType: !423, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1303, file: !1245, line: 517, baseType: !423, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1303, file: !1245, line: 518, baseType: !423, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1303, file: !1245, line: 519, baseType: !423, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1303, file: !1245, line: 526, baseType: !738, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1303, file: !1245, line: 527, baseType: !423, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1303, file: !1245, line: 528, baseType: !7, size: 32, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1303, file: !1245, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1303, file: !1245, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1303, file: !1245, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1303, file: !1245, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1303, file: !1245, line: 563, baseType: !1319, size: 512, offset: 704)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1320)
!1320 = !{!1321, !1329, !1330, !1335, !1378, !1381, !1382, !1383}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1319, file: !20, line: 119, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1323, line: 9, size: 256, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1322, file: !1323, line: 10, baseType: !815, size: 192, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1322, file: !1323, line: 11, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1328, line: 29, baseType: !738)
!1328 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1319, file: !20, line: 120, baseType: !1327, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1319, file: !20, line: 121, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!19, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1319, file: !20, line: 122, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1338)
!1338 = !{!1339, !1359, !1360, !1363, !1368, !1369, !1373, !1377}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1337, file: !20, line: 160, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !20, line: 215, baseType: !828)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1341, file: !20, line: 216, baseType: !7, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1341, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1341, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1341, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1341, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1341, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1341, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1341, file: !20, line: 233, baseType: !1327, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1341, file: !20, line: 234, baseType: !1334, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1341, file: !20, line: 235, baseType: !1327, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1341, file: !20, line: 236, baseType: !1334, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1341, file: !20, line: 237, baseType: !1356, size: 4096, offset: 512)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 4096, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 8)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1337, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1337, file: !20, line: 162, baseType: !1361, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !190, line: 27, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !309, line: 96, baseType: !207)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1337, file: !20, line: 163, baseType: !1364, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !390, line: 276, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !390, line: 276, size: 32, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1365, file: !390, line: 276, baseType: !394, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1337, file: !20, line: 164, baseType: !1334, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1337, file: !20, line: 165, baseType: !1370, size: 128, offset: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1323, line: 14, size: 128, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1370, file: !1323, line: 15, baseType: !807, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1337, file: !20, line: 166, baseType: !1374, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1327}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1337, file: !20, line: 167, baseType: !1327, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1319, file: !20, line: 123, baseType: !1379, size: 8, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !418, line: 17, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !420, line: 21, baseType: !429)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1319, file: !20, line: 124, baseType: !1379, size: 8, offset: 456)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1319, file: !20, line: 125, baseType: !1379, size: 8, offset: 464)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1319, file: !20, line: 126, baseType: !1379, size: 8, offset: 472)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1303, file: !1245, line: 572, baseType: !1319, size: 512, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1303, file: !1245, line: 580, baseType: !1386, size: 64, offset: 1728)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1244, file: !1245, line: 721, baseType: !7, size: 32, offset: 3584)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1244, file: !1245, line: 722, baseType: !207, size: 32, offset: 3616)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1244, file: !1245, line: 723, baseType: !1390, size: 64, offset: 3648)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1393, line: 17, baseType: !1394)
!1393 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1393, line: 17, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1394, file: !1393, line: 17, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 1)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1244, file: !1245, line: 724, baseType: !1392, size: 64, offset: 3712)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1244, file: !1245, line: 749, baseType: !1402, offset: 3776)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1245, line: 290, elements: !249)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1244, file: !1245, line: 751, baseType: !189, size: 128, offset: 3776)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1244, file: !1245, line: 757, baseType: !1023, size: 64, offset: 3904)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1244, file: !1245, line: 758, baseType: !1023, size: 64, offset: 3968)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1244, file: !1245, line: 761, baseType: !1407, size: 320, offset: 4032)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1200, line: 34, size: 320, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1407, file: !1200, line: 35, baseType: !423, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1407, file: !1200, line: 36, baseType: !1411, size: 256, offset: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 256, elements: !1204)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1244, file: !1245, line: 766, baseType: !207, size: 32, offset: 4352)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1244, file: !1245, line: 767, baseType: !207, size: 32, offset: 4384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1244, file: !1245, line: 768, baseType: !207, size: 32, offset: 4416)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1244, file: !1245, line: 770, baseType: !207, size: 32, offset: 4448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1244, file: !1245, line: 772, baseType: !326, size: 64, offset: 4480)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1244, file: !1245, line: 775, baseType: !7, size: 32, offset: 4544)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1244, file: !1245, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1244, file: !1245, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1244, file: !1245, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1244, file: !1245, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1244, file: !1245, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1244, file: !1245, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1244, file: !1245, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1244, file: !1245, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1244, file: !1245, line: 831, baseType: !326, size: 64, offset: 4672)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1244, file: !1245, line: 833, baseType: !1428, size: 384, offset: 4736)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1429)
!1429 = !{!1430, !1435}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1428, file: !25, line: 26, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!311, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !25, line: 27, baseType: !1436, size: 320, offset: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !25, line: 27, size: 320, elements: !1437)
!1437 = !{!1438, !1448, !1475}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1436, file: !25, line: 36, baseType: !1439, size: 320)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 29, size: 320, elements: !1440)
!1440 = !{!1441, !1443, !1444, !1445, !1446, !1447}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1439, file: !25, line: 30, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1439, file: !25, line: 31, baseType: !417, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !25, line: 32, baseType: !417, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1439, file: !25, line: 33, baseType: !417, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1439, file: !25, line: 34, baseType: !423, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1439, file: !25, line: 35, baseType: !1442, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1436, file: !25, line: 46, baseType: !1449, size: 192)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 38, size: 192, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1474}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1449, file: !25, line: 39, baseType: !1361, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !25, line: 41, baseType: !1454, size: 64, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !25, line: 41, size: 64, elements: !1455)
!1455 = !{!1456, !1464}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1454, file: !25, line: 42, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1459, line: 7, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1458, file: !1459, line: 8, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !309, line: 93, baseType: !535)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1458, file: !1459, line: 9, baseType: !535, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1454, file: !25, line: 43, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1467, line: 7, size: 64, elements: !1468)
!1467 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1473}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1466, file: !1467, line: 8, baseType: !1470, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1467, line: 5, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !418, line: 20, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !420, line: 26, baseType: !207)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1466, file: !1467, line: 9, baseType: !1471, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1449, file: !25, line: 45, baseType: !423, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1436, file: !25, line: 54, baseType: !1476, size: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 48, size: 256, elements: !1477)
!1477 = !{!1478, !1481, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1476, file: !25, line: 49, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1476, file: !25, line: 50, baseType: !207, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1476, file: !25, line: 51, baseType: !207, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1476, file: !25, line: 52, baseType: !326, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1476, file: !25, line: 53, baseType: !326, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1244, file: !1245, line: 835, baseType: !1486, size: 32, offset: 5120)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !190, line: 22, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !309, line: 28, baseType: !207)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1244, file: !1245, line: 836, baseType: !1486, size: 32, offset: 5152)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1244, file: !1245, line: 840, baseType: !326, size: 64, offset: 5184)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1244, file: !1245, line: 849, baseType: !1243, size: 64, offset: 5248)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1244, file: !1245, line: 852, baseType: !1243, size: 64, offset: 5312)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1244, file: !1245, line: 857, baseType: !189, size: 128, offset: 5376)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1244, file: !1245, line: 858, baseType: !189, size: 128, offset: 5504)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1244, file: !1245, line: 859, baseType: !1243, size: 64, offset: 5632)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1244, file: !1245, line: 867, baseType: !189, size: 128, offset: 5696)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1244, file: !1245, line: 868, baseType: !189, size: 128, offset: 5824)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1244, file: !1245, line: 871, baseType: !1498, size: 64, offset: 5952)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1506, !1507, !1514, !1515}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1499, file: !53, line: 61, baseType: !1257, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1499, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1499, file: !53, line: 63, baseType: !235, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1499, file: !53, line: 65, baseType: !1505, size: 256, offset: 64)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 256, elements: !1204)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1499, file: !53, line: 66, baseType: !640, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1499, file: !53, line: 68, baseType: !1508, size: 128, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1509, line: 40, baseType: !1510)
!1509 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1509, line: 36, size: 128, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !1509, line: 37, baseType: !235)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1510, file: !1509, line: 38, baseType: !189, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1499, file: !53, line: 69, baseType: !367, size: 128, align: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1499, file: !53, line: 70, baseType: !1516, size: 128, offset: 640)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 128, elements: !1398)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1517, file: !53, line: 55, baseType: !207, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1517, file: !53, line: 56, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1244, file: !1245, line: 872, baseType: !1524, size: 512, offset: 6016)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 512, elements: !1204)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1244, file: !1245, line: 873, baseType: !189, size: 128, offset: 6528)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1244, file: !1245, line: 874, baseType: !189, size: 128, offset: 6656)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1244, file: !1245, line: 876, baseType: !1528, size: 64, offset: 6784)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1530, line: 26, size: 192, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1529, file: !1530, line: 27, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1529, file: !1530, line: 28, baseType: !1534, size: 128, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1535, line: 43, size: 128, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1535, line: 44, baseType: !828)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1534, file: !1535, line: 45, baseType: !189, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1244, file: !1245, line: 879, baseType: !710, size: 64, offset: 6848)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1244, file: !1245, line: 882, baseType: !710, size: 64, offset: 6912)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1244, file: !1245, line: 884, baseType: !423, size: 64, offset: 6976)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1244, file: !1245, line: 885, baseType: !423, size: 64, offset: 7040)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1244, file: !1245, line: 890, baseType: !423, size: 64, offset: 7104)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1244, file: !1245, line: 891, baseType: !1545, size: 128, offset: 7168)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1245, line: 242, size: 128, elements: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1545, file: !1245, line: 244, baseType: !423, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1545, file: !1245, line: 245, baseType: !423, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1245, line: 246, baseType: !828, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1244, file: !1245, line: 900, baseType: !326, size: 64, offset: 7296)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1244, file: !1245, line: 901, baseType: !326, size: 64, offset: 7360)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1244, file: !1245, line: 904, baseType: !423, size: 64, offset: 7424)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1244, file: !1245, line: 907, baseType: !423, size: 64, offset: 7488)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1244, file: !1245, line: 910, baseType: !326, size: 64, offset: 7552)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1244, file: !1245, line: 911, baseType: !326, size: 64, offset: 7616)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1244, file: !1245, line: 914, baseType: !1557, size: 640, offset: 7680)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1558, line: 123, size: 640, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1566, !1567}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1557, file: !1558, line: 124, baseType: !1561, size: 576)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 576, elements: !277)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1558, line: 108, size: 192, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1562, file: !1558, line: 109, baseType: !423, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1562, file: !1558, line: 110, baseType: !1370, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1557, file: !1558, line: 125, baseType: !7, size: 32, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1557, file: !1558, line: 126, baseType: !7, size: 32, offset: 608)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1244, file: !1245, line: 917, baseType: !1569, size: 192, offset: 8320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1558, line: 134, size: 192, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1569, file: !1558, line: 135, baseType: !367, size: 128, align: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1569, file: !1558, line: 136, baseType: !7, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1244, file: !1245, line: 923, baseType: !1574, size: 64, offset: 8512)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1577, line: 111, size: 1280, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1598, !1599, !1600, !1601, !1602, !1603, !1710, !1711, !1712, !1713, !1739, !1742, !1752}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1576, file: !1577, line: 112, baseType: !802, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1576, file: !1577, line: 120, baseType: !437, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1576, file: !1577, line: 121, baseType: !445, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1576, file: !1577, line: 122, baseType: !437, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1576, file: !1577, line: 123, baseType: !445, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1576, file: !1577, line: 124, baseType: !437, size: 32, offset: 160)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1576, file: !1577, line: 125, baseType: !445, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1576, file: !1577, line: 126, baseType: !437, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1576, file: !1577, line: 127, baseType: !445, size: 32, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1576, file: !1577, line: 128, baseType: !7, size: 32, offset: 288)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1576, file: !1577, line: 129, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1591, line: 26, baseType: !1592)
!1591 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1591, line: 24, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1592, file: !1591, line: 25, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 2)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1576, file: !1577, line: 130, baseType: !1590, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1576, file: !1577, line: 131, baseType: !1590, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1576, file: !1577, line: 132, baseType: !1590, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1576, file: !1577, line: 133, baseType: !1590, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1576, file: !1577, line: 135, baseType: !429, size: 8, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1576, file: !1577, line: 137, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1606, line: 189, size: 1664, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1609, !1612, !1617, !1618, !1621, !1622, !1627, !1628, !1629, !1630, !1632, !1633, !1634, !1635, !1636, !1674, !1695}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1605, file: !1606, line: 190, baseType: !1257, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1605, file: !1606, line: 191, baseType: !1610, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1606, line: 28, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !190, line: 98, baseType: !1471)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 192, baseType: !1613, size: 192, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 192, size: 192, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1613, file: !1606, line: 193, baseType: !189, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1613, file: !1606, line: 194, baseType: !815, size: 192, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1605, file: !1606, line: 199, baseType: !822, size: 256, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1605, file: !1606, line: 200, baseType: !1619, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1606, line: 200, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1605, file: !1606, line: 201, baseType: !184, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 202, baseType: !1623, size: 64, offset: 640)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 202, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1623, file: !1606, line: 203, baseType: !541, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1623, file: !1606, line: 204, baseType: !541, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1605, file: !1606, line: 206, baseType: !541, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1605, file: !1606, line: 207, baseType: !437, size: 32, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1605, file: !1606, line: 208, baseType: !445, size: 32, offset: 800)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1605, file: !1606, line: 209, baseType: !1631, size: 32, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1606, line: 31, baseType: !561)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1605, file: !1606, line: 210, baseType: !318, size: 16, offset: 864)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1605, file: !1606, line: 211, baseType: !318, size: 16, offset: 880)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1605, file: !1606, line: 215, baseType: !1232, size: 16, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1606, line: 222, baseType: !326, size: 64, offset: 960)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 239, baseType: !1637, size: 320, offset: 1024)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 239, size: 320, elements: !1638)
!1638 = !{!1639, !1666}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1637, file: !1606, line: 240, baseType: !1640, size: 320)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1606, line: 108, size: 320, elements: !1641)
!1641 = !{!1642, !1643, !1655, !1658, !1665}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1640, file: !1606, line: 110, baseType: !326, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1606, line: 111, baseType: !1644, size: 64, offset: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !1606, line: 111, size: 64, elements: !1645)
!1645 = !{!1646, !1654}
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1606, line: 112, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1644, file: !1606, line: 112, size: 64, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1647, file: !1606, line: 114, baseType: !907, size: 16)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1647, file: !1606, line: 115, baseType: !1651, size: 48, offset: 16)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 48, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 6)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1644, file: !1606, line: 121, baseType: !326, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1640, file: !1606, line: 123, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1606, line: 96, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1640, file: !1606, line: 124, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1606, line: 102, size: 192, elements: !1661)
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1660, file: !1606, line: 103, baseType: !367, size: 128, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1660, file: !1606, line: 104, baseType: !1257, size: 32, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1660, file: !1606, line: 105, baseType: !492, size: 8, offset: 160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1640, file: !1606, line: 125, baseType: !201, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1606, line: 241, baseType: !1667, size: 320)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !1606, line: 241, size: 320, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1667, file: !1606, line: 242, baseType: !326, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1667, file: !1606, line: 243, baseType: !326, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1667, file: !1606, line: 244, baseType: !1656, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1667, file: !1606, line: 245, baseType: !1659, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1667, file: !1606, line: 246, baseType: !276, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 254, baseType: !1675, size: 256, offset: 1344)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 254, size: 256, elements: !1676)
!1676 = !{!1677, !1683}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1675, file: !1606, line: 255, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1606, line: 128, size: 256, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1678, file: !1606, line: 129, baseType: !184, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !1606, line: 130, baseType: !1682, size: 256)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !1204)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !1606, line: 256, baseType: !1684, size: 256)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !1606, line: 256, size: 256, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1684, file: !1606, line: 258, baseType: !189, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1684, file: !1606, line: 259, baseType: !1688, size: 128, offset: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1689, line: 22, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1688, file: !1689, line: 23, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1689, line: 23, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1688, file: !1689, line: 24, baseType: !326, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1605, file: !1606, line: 274, baseType: !1696, size: 64, offset: 1600)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1606, line: 170, size: 192, elements: !1698)
!1698 = !{!1699, !1708, !1709}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1697, file: !1606, line: 171, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1606, line: 165, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!207, !1604, !1704, !1706, !1604}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1697, file: !1606, line: 172, baseType: !1604, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1697, file: !1606, line: 173, baseType: !1656, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1576, file: !1577, line: 138, baseType: !1604, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1576, file: !1577, line: 139, baseType: !1604, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1576, file: !1577, line: 140, baseType: !1604, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1576, file: !1577, line: 145, baseType: !1714, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1716, line: 13, size: 896, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1715, file: !1716, line: 14, baseType: !1257, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1715, file: !1716, line: 15, baseType: !802, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1715, file: !1716, line: 16, baseType: !802, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1715, file: !1716, line: 21, baseType: !732, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1715, file: !1716, line: 27, baseType: !326, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1715, file: !1716, line: 28, baseType: !326, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1715, file: !1716, line: 29, baseType: !732, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1715, file: !1716, line: 32, baseType: !644, size: 128, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1715, file: !1716, line: 33, baseType: !437, size: 32, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1715, file: !1716, line: 37, baseType: !732, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1715, file: !1716, line: 44, baseType: !1729, size: 256, offset: 640)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1730, line: 15, size: 256, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1729, file: !1730, line: 16, baseType: !828)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1729, file: !1730, line: 18, baseType: !207, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1729, file: !1730, line: 19, baseType: !207, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1729, file: !1730, line: 20, baseType: !207, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1729, file: !1730, line: 21, baseType: !207, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1729, file: !1730, line: 22, baseType: !326, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1730, line: 23, baseType: !326, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1576, file: !1577, line: 146, baseType: !1740, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !777, line: 516, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1576, file: !1577, line: 147, baseType: !1743, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1577, line: 25, size: 64, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1577, line: 26, baseType: !802, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1744, file: !1577, line: 27, baseType: !207, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1577, line: 28, baseType: !1749, offset: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 149, baseType: !1753, size: 128, offset: 1152)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 149, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1753, file: !1577, line: 150, baseType: !207, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1753, file: !1577, line: 151, baseType: !367, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1244, file: !1245, line: 926, baseType: !1574, size: 64, offset: 8576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1244, file: !1245, line: 929, baseType: !1574, size: 64, offset: 8640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1244, file: !1245, line: 933, baseType: !1604, size: 64, offset: 8704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1244, file: !1245, line: 943, baseType: !1761, size: 128, offset: 8768)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 16)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1244, file: !1245, line: 945, baseType: !1765, size: 64, offset: 8896)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1245, line: 49, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1244, file: !1245, line: 956, baseType: !1768, size: 64, offset: 8960)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1245, line: 45, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1244, file: !1245, line: 959, baseType: !1771, size: 64, offset: 9024)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1245, line: 959, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1244, file: !1245, line: 962, baseType: !1774, size: 64, offset: 9088)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1245, line: 66, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1244, file: !1245, line: 966, baseType: !1777, size: 64, offset: 9152)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1245, line: 50, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1244, file: !1245, line: 969, baseType: !1780, size: 64, offset: 9216)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1782, line: 82, size: 7296, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1819, !1828, !1829, !1831, !1832, !1833, !2491, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2521, !2522, !2529, !2530, !2531, !2532, !2533, !2534}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1781, file: !1782, line: 83, baseType: !1257, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1781, file: !1782, line: 84, baseType: !802, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1781, file: !1782, line: 85, baseType: !207, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1781, file: !1782, line: 86, baseType: !189, size: 128, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1781, file: !1782, line: 88, baseType: !1508, size: 128, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1781, file: !1782, line: 91, baseType: !1243, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1781, file: !1782, line: 94, baseType: !1791, size: 192, offset: 448)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1792, line: 30, size: 192, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1791, file: !1792, line: 31, baseType: !189, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1791, file: !1792, line: 32, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1797, line: 25, baseType: !1798)
!1797 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 23, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1798, file: !1797, line: 24, baseType: !1397, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1781, file: !1782, line: 97, baseType: !640, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1781, file: !1782, line: 100, baseType: !207, size: 32, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1781, file: !1782, line: 106, baseType: !207, size: 32, offset: 736)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1781, file: !1782, line: 107, baseType: !1243, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1781, file: !1782, line: 110, baseType: !207, size: 32, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !1782, line: 111, baseType: !7, size: 32, offset: 864)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1781, file: !1782, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1781, file: !1782, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1781, file: !1782, line: 128, baseType: !207, size: 32, offset: 928)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1781, file: !1782, line: 129, baseType: !189, size: 128, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1781, file: !1782, line: 132, baseType: !1319, size: 512, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1781, file: !1782, line: 133, baseType: !1327, size: 64, offset: 1600)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1781, file: !1782, line: 140, baseType: !1814, size: 256, offset: 1664)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1815, size: 256, elements: !1596)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1782, line: 38, size: 128, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1815, file: !1782, line: 39, baseType: !423, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1815, file: !1782, line: 40, baseType: !423, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1781, file: !1782, line: 146, baseType: !1820, size: 192, offset: 1920)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1782, line: 66, size: 192, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1820, file: !1782, line: 67, baseType: !1823, size: 192)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1782, line: 47, size: 192, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1823, file: !1782, line: 48, baseType: !734, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1823, file: !1782, line: 49, baseType: !734, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1823, file: !1782, line: 50, baseType: !734, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1781, file: !1782, line: 150, baseType: !1557, size: 640, offset: 2112)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1781, file: !1782, line: 153, baseType: !1830, size: 256, offset: 2752)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, size: 256, elements: !1204)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1781, file: !1782, line: 159, baseType: !1498, size: 64, offset: 3008)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1781, file: !1782, line: 162, baseType: !207, size: 32, offset: 3072)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1781, file: !1782, line: 164, baseType: !1834, size: 64, offset: 3136)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1836, line: 285, size: 5056, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1839, !1844, !1846, !2390, !2391, !2392, !2401, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1835, file: !1836, line: 286, baseType: !207, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1835, file: !1836, line: 287, baseType: !1840, size: 32, offset: 32)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1841, line: 19, size: 32, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1840, file: !1841, line: 20, baseType: !1257, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1835, file: !1836, line: 288, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1835, file: !1836, line: 289, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !1849, line: 302, size: 1472, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1852, !1853, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2115, !2116, !2120, !2121, !2123, !2223, !2226, !2227, !2389}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1848, file: !1849, line: 303, baseType: !207, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1848, file: !1849, line: 304, baseType: !1840, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !1848, file: !1849, line: 305, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1857, line: 14, size: 832, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861, !2085, !2086, !2087}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1856, file: !1857, line: 15, baseType: !222, size: 512)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1856, file: !1857, line: 16, baseType: !635, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !1857, line: 17, baseType: !1862, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1865)
!1865 = !{!1866, !1867, !1871, !1875, !1879, !1880, !1881, !1885, !1898, !1899, !1907, !1911, !1912, !1916, !1917, !1921, !1926, !1927, !1931, !1935, !2043, !2047, !2048, !2052, !2053, !2059, !2063, !2068, !2072, !2076, !2080, !2084}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1864, file: !44, line: 1823, baseType: !635, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1864, file: !44, line: 1824, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!533, !354, !533, !207}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1864, file: !44, line: 1825, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!307, !354, !276, !323, !750}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1864, file: !44, line: 1826, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!307, !354, !201, !323, !750}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1864, file: !44, line: 1827, baseType: !892, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1864, file: !44, line: 1828, baseType: !892, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1864, file: !44, line: 1829, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!207, !895, !492}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1864, file: !44, line: 1830, baseType: !1886, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!207, !354, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1891)
!1891 = !{!1892, !1897}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1890, file: !44, line: 1777, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!207, !1889, !201, !207, !533, !423, !7}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1890, file: !44, line: 1778, baseType: !533, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1864, file: !44, line: 1831, baseType: !1886, size: 64, offset: 512)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1864, file: !44, line: 1832, baseType: !1900, size: 64, offset: 576)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1903, !354, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1904, line: 52, baseType: !7)
!1904 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !621, line: 27, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1864, file: !44, line: 1833, baseType: !1908, size: 64, offset: 640)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!311, !354, !7, !326}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1864, file: !44, line: 1834, baseType: !1908, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1864, file: !44, line: 1835, baseType: !1913, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!207, !354, !1030}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1864, file: !44, line: 1836, baseType: !326, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1864, file: !44, line: 1837, baseType: !1918, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!207, !431, !354}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1864, file: !44, line: 1838, baseType: !1922, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!207, !354, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !184)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1864, file: !44, line: 1839, baseType: !1918, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1864, file: !44, line: 1840, baseType: !1928, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!207, !354, !533, !533, !207}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1864, file: !44, line: 1841, baseType: !1932, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!207, !207, !354, !207}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !44, line: 1842, baseType: !1936, size: 64, offset: 1216)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!207, !354, !207, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1973, !1974, !1975, !1988, !2019}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1940, file: !44, line: 1063, baseType: !1939, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1940, file: !44, line: 1064, baseType: !189, size: 128, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1940, file: !44, line: 1065, baseType: !644, size: 128, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1940, file: !44, line: 1066, baseType: !189, size: 128, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1940, file: !44, line: 1069, baseType: !189, size: 128, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1940, file: !44, line: 1072, baseType: !1925, size: 64, offset: 576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1940, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1940, file: !44, line: 1074, baseType: !429, size: 8, offset: 672)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1940, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1940, file: !44, line: 1076, baseType: !207, size: 32, offset: 736)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1940, file: !44, line: 1077, baseType: !1508, size: 128, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1940, file: !44, line: 1078, baseType: !354, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1940, file: !44, line: 1079, baseType: !533, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1940, file: !44, line: 1080, baseType: !533, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1940, file: !44, line: 1082, baseType: !1957, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1959)
!1959 = !{!1960, !1968, !1969, !1970, !1971, !1972}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1958, file: !44, line: 1315, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1962, line: 20, baseType: !1963)
!1962 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1962, line: 11, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1963, file: !1962, line: 12, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !247, line: 33, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 31, elements: !249)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1958, file: !44, line: 1316, baseType: !207, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1958, file: !44, line: 1317, baseType: !207, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1958, file: !44, line: 1318, baseType: !1957, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1958, file: !44, line: 1319, baseType: !354, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1958, file: !44, line: 1320, baseType: !367, size: 128, align: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1940, file: !44, line: 1084, baseType: !326, size: 64, offset: 1152)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1940, file: !44, line: 1085, baseType: !326, size: 64, offset: 1216)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1940, file: !44, line: 1087, baseType: !1976, size: 64, offset: 1280)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1979)
!1979 = !{!1980, !1984}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1978, file: !44, line: 1012, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1939, !1939}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1978, file: !44, line: 1013, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1939}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1940, file: !44, line: 1088, baseType: !1989, size: 64, offset: 1344)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1992)
!1992 = !{!1993, !1997, !2001, !2002, !2006, !2010, !2014, !2018}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1991, file: !44, line: 1017, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1925, !1925}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1991, file: !44, line: 1018, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1925}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1991, file: !44, line: 1019, baseType: !1985, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1991, file: !44, line: 1020, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!207, !1939, !207}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1991, file: !44, line: 1021, baseType: !2007, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!492, !1939}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1991, file: !44, line: 1022, baseType: !2011, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!207, !1939, !207, !193}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1991, file: !44, line: 1023, baseType: !2015, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1939, !869}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1991, file: !44, line: 1024, baseType: !2007, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1940, file: !44, line: 1097, baseType: !2020, size: 256, offset: 1408)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !44, line: 1089, size: 256, elements: !2021)
!2021 = !{!2022, !2031, !2037}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2020, file: !44, line: 1090, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2024, line: 10, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2027, !2030}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2023, file: !2024, line: 11, baseType: !417, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2023, file: !2024, line: 12, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2024, line: 5, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2023, file: !2024, line: 13, baseType: !189, size: 128, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2020, file: !44, line: 1091, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2024, line: 17, size: 64, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2032, file: !2024, line: 18, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2024, line: 16, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2020, file: !44, line: 1096, baseType: !2038, size: 192)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !44, line: 1092, size: 192, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2038, file: !44, line: 1093, baseType: !189, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2038, file: !44, line: 1094, baseType: !207, size: 32, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2038, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1864, file: !44, line: 1843, baseType: !2044, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!307, !354, !775, !207, !323, !750, !207}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1864, file: !44, line: 1844, baseType: !1150, size: 64, offset: 1344)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1864, file: !44, line: 1845, baseType: !2049, size: 64, offset: 1408)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!207, !207}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1864, file: !44, line: 1846, baseType: !1936, size: 64, offset: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1864, file: !44, line: 1847, baseType: !2054, size: 64, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!307, !2057, !354, !750, !323, !7}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1245, line: 53, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1864, file: !44, line: 1848, baseType: !2060, size: 64, offset: 1600)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!307, !354, !750, !2057, !323, !7}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1864, file: !44, line: 1849, baseType: !2064, size: 64, offset: 1664)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!207, !354, !311, !2067, !869}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1864, file: !44, line: 1850, baseType: !2069, size: 64, offset: 1728)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!311, !354, !207, !533, !533}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1864, file: !44, line: 1852, baseType: !2073, size: 64, offset: 1792)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !716, !354}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1864, file: !44, line: 1856, baseType: !2077, size: 64, offset: 1856)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!307, !354, !533, !354, !533, !323, !7}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1864, file: !44, line: 1858, baseType: !2081, size: 64, offset: 1920)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!533, !354, !533, !354, !533, !533, !7}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1864, file: !44, line: 1861, baseType: !1928, size: 64, offset: 1984)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1856, file: !1857, line: 18, baseType: !189, size: 128, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1856, file: !1857, line: 19, baseType: !515, size: 32, offset: 768)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1856, file: !1857, line: 20, baseType: !7, size: 32, offset: 800)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1848, file: !1849, line: 306, baseType: !635, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !1848, file: !1849, line: 307, baseType: !201, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1848, file: !1849, line: 308, baseType: !201, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !1848, file: !1849, line: 309, baseType: !207, size: 32, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1848, file: !1849, line: 310, baseType: !207, size: 32, offset: 352)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !1848, file: !1849, line: 311, baseType: !207, size: 32, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1848, file: !1849, line: 312, baseType: !7, size: 32, offset: 416)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !1849, line: 313, baseType: !1232, size: 16, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1848, file: !1849, line: 314, baseType: !1232, size: 16, offset: 464)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !1848, file: !1849, line: 315, baseType: !2098, size: 352, offset: 480)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2099, line: 32, size: 352, elements: !2100)
!2099 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !{!2101, !2103, !2104, !2105, !2106, !2108, !2112, !2114}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2098, file: !2099, line: 33, baseType: !2102, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2099, line: 9, baseType: !7)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2098, file: !2099, line: 34, baseType: !2102, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2098, file: !2099, line: 35, baseType: !2102, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2098, file: !2099, line: 36, baseType: !2102, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2098, file: !2099, line: 37, baseType: !2107, size: 8, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2099, line: 7, baseType: !429)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2098, file: !2099, line: 38, baseType: !2109, size: 152, offset: 136)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 152, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 19)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2098, file: !2099, line: 39, baseType: !2113, size: 32, offset: 288)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2099, line: 8, baseType: !7)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2098, file: !2099, line: 40, baseType: !2113, size: 32, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1848, file: !1849, line: 316, baseType: !326, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !1848, file: !1849, line: 317, baseType: !2117, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2119, line: 14, flags: DIFlagFwdDecl)
!2119 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1848, file: !1849, line: 318, baseType: !1847, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !1848, file: !1849, line: 323, baseType: !2122, size: 64, offset: 1024)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1848, file: !1849, line: 324, baseType: !2124, size: 64, offset: 1088)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1836, line: 230, size: 2432, elements: !2127)
!2127 = !{!2128, !2171, !2172, !2173, !2195, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2218, !2219, !2220, !2221, !2222}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2126, file: !1836, line: 231, baseType: !2129, size: 1024)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1836, line: 85, size: 1024, elements: !2130)
!2130 = !{!2131, !2149, !2161, !2162, !2163, !2164, !2168, !2169, !2170}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2129, file: !1836, line: 86, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1836, line: 58, size: 256, elements: !2134)
!2134 = !{!2135, !2140, !2141, !2142, !2143, !2144, !2145}
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !1836, line: 59, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !1836, line: 59, size: 64, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2136, file: !1836, line: 60, baseType: !2132, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2136, file: !1836, line: 61, baseType: !361, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2133, file: !1836, line: 63, baseType: !207, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !1836, line: 64, baseType: !207, size: 32, offset: 96)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2133, file: !1836, line: 65, baseType: !207, size: 32, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2133, file: !1836, line: 66, baseType: !207, size: 32, offset: 160)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2133, file: !1836, line: 67, baseType: !207, size: 32, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2133, file: !1836, line: 69, baseType: !2146, offset: 256)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !2147)
!2147 = !{!2148}
!2148 = !DISubrange(count: -1)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2129, file: !1836, line: 87, baseType: !2150, size: 256, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2151, line: 102, size: 256, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2150, file: !2151, line: 103, baseType: !732, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2150, file: !2151, line: 104, baseType: !189, size: 128, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2150, file: !2151, line: 105, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2151, line: 21, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2129, file: !1836, line: 88, baseType: !728, size: 192, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2129, file: !1836, line: 89, baseType: !802, size: 32, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2129, file: !1836, line: 90, baseType: !2133, size: 256, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2129, file: !1836, line: 91, baseType: !2165, size: 64, offset: 832)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !362, line: 54, size: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2165, file: !362, line: 55, baseType: !365, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2129, file: !1836, line: 92, baseType: !802, size: 32, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2129, file: !1836, line: 93, baseType: !207, size: 32, offset: 928)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2129, file: !1836, line: 94, baseType: !2132, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2126, file: !1836, line: 232, baseType: !1834, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2126, file: !1836, line: 233, baseType: !1834, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2126, file: !1836, line: 234, baseType: !2174, size: 64, offset: 1152)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1836, line: 205, size: 320, elements: !2177)
!2177 = !{!2178, !2182, !2186, !2190, !2194}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2176, file: !1836, line: 207, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!207, !2125}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2176, file: !1836, line: 209, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2125, !207}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2176, file: !1836, line: 213, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2125}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2176, file: !1836, line: 218, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!207, !2125, !1834}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2176, file: !1836, line: 220, baseType: !2187, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2126, file: !1836, line: 235, baseType: !2196, size: 64, offset: 1216)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2198)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1836, line: 223, size: 128, elements: !2199)
!2199 = !{!2200, !2204}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2198, file: !1836, line: 224, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!207, !2125, !427, !427, !323}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2198, file: !1836, line: 225, baseType: !2187, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2126, file: !1836, line: 236, baseType: !235, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2126, file: !1836, line: 237, baseType: !207, size: 32, offset: 1280)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2126, file: !1836, line: 238, baseType: !207, size: 32, offset: 1312)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2126, file: !1836, line: 239, baseType: !1508, size: 128, offset: 1344)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2126, file: !1836, line: 240, baseType: !1508, size: 128, offset: 1472)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !1836, line: 241, baseType: !326, size: 64, offset: 1600)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2126, file: !1836, line: 242, baseType: !326, size: 64, offset: 1664)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2126, file: !1836, line: 243, baseType: !429, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2126, file: !1836, line: 244, baseType: !429, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2126, file: !1836, line: 245, baseType: !728, size: 192, offset: 1792)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2126, file: !1836, line: 246, baseType: !728, size: 192, offset: 1984)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2126, file: !1836, line: 247, baseType: !2217, size: 64, offset: 2176)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2126, file: !1836, line: 248, baseType: !7, size: 32, offset: 2240)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2126, file: !1836, line: 249, baseType: !7, size: 32, offset: 2272)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2126, file: !1836, line: 250, baseType: !207, size: 32, offset: 2304)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2126, file: !1836, line: 253, baseType: !1840, size: 32, offset: 2336)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2126, file: !1836, line: 254, baseType: !184, size: 64, offset: 2368)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1848, file: !1849, line: 325, baseType: !2224, size: 64, offset: 1152)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !1848, file: !1849, line: 326, baseType: !184, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1848, file: !1849, line: 332, baseType: !2228, size: 64, offset: 1280)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !1849, line: 254, size: 2176, elements: !2231)
!2231 = !{!2232, !2236, !2240, !2244, !2248, !2252, !2256, !2257, !2261, !2265, !2266, !2270, !2271, !2275, !2279, !2283, !2284, !2285, !2286, !2287, !2288, !2292, !2293, !2294, !2298, !2302, !2303, !2307, !2319, !2334, !2357, !2383, !2384, !2388}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2230, file: !1849, line: 255, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!1834, !1847, !354, !207}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2230, file: !1849, line: 257, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!207, !1847, !1834}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2230, file: !1849, line: 258, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !1847, !1834}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2230, file: !1849, line: 259, baseType: !2245, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!207, !1834, !354}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2230, file: !1849, line: 260, baseType: !2249, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !1834, !354}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2230, file: !1849, line: 261, baseType: !2253, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !1834}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2230, file: !1849, line: 262, baseType: !2253, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2230, file: !1849, line: 263, baseType: !2258, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!207, !1834, !427, !207}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2230, file: !1849, line: 265, baseType: !2262, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!207, !1834, !429}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2230, file: !1849, line: 266, baseType: !2253, size: 64, offset: 576)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2230, file: !1849, line: 267, baseType: !2267, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!207, !1834}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2230, file: !1849, line: 268, baseType: !2267, size: 64, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2230, file: !1849, line: 269, baseType: !2272, size: 64, offset: 768)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!207, !1834, !7, !326}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2230, file: !1849, line: 271, baseType: !2276, size: 64, offset: 832)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!311, !1834, !7, !326}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2230, file: !1849, line: 273, baseType: !2280, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !1834, !2225}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2230, file: !1849, line: 274, baseType: !2253, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2230, file: !1849, line: 275, baseType: !2253, size: 64, offset: 1024)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2230, file: !1849, line: 276, baseType: !2253, size: 64, offset: 1088)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2230, file: !1849, line: 277, baseType: !2253, size: 64, offset: 1152)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2230, file: !1849, line: 278, baseType: !2253, size: 64, offset: 1216)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2230, file: !1849, line: 279, baseType: !2289, size: 64, offset: 1280)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!207, !1834, !207}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2230, file: !1849, line: 280, baseType: !2253, size: 64, offset: 1344)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2230, file: !1849, line: 281, baseType: !2253, size: 64, offset: 1408)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2230, file: !1849, line: 282, baseType: !2295, size: 64, offset: 1472)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !1834, !207}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2230, file: !1849, line: 283, baseType: !2299, size: 64, offset: 1536)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !1834, !203}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2230, file: !1849, line: 284, baseType: !2267, size: 64, offset: 1600)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2230, file: !1849, line: 285, baseType: !2304, size: 64, offset: 1664)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!207, !1834, !7, !7}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2230, file: !1849, line: 287, baseType: !2308, size: 64, offset: 1728)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!207, !1834, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2313, line: 15, size: 64, elements: !2314)
!2313 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2312, file: !2313, line: 16, baseType: !318, size: 16)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2312, file: !2313, line: 17, baseType: !318, size: 16, offset: 16)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2312, file: !2313, line: 18, baseType: !318, size: 16, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2312, file: !2313, line: 19, baseType: !318, size: 16, offset: 48)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2230, file: !1849, line: 288, baseType: !2320, size: 64, offset: 1792)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!207, !1834, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2325, line: 10, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328, !2329, !2333}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2324, file: !2325, line: 12, baseType: !908, size: 16)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2324, file: !2325, line: 13, baseType: !908, size: 16, offset: 16)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2324, file: !2325, line: 14, baseType: !2330, size: 80, offset: 32)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 80, elements: !2331)
!2331 = !{!2332}
!2332 = !DISubrange(count: 5)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2324, file: !2325, line: 15, baseType: !908, size: 16, offset: 112)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2230, file: !1849, line: 289, baseType: !2335, size: 64, offset: 1856)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!207, !1834, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2340, line: 102, size: 640, elements: !2341)
!2340 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !2339, file: !2340, line: 103, baseType: !207, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !2339, file: !2340, line: 103, baseType: !207, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !2339, file: !2340, line: 103, baseType: !207, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !2339, file: !2340, line: 103, baseType: !207, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !2339, file: !2340, line: 104, baseType: !207, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !2339, file: !2340, line: 104, baseType: !207, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2339, file: !2340, line: 105, baseType: !207, size: 32, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !2339, file: !2340, line: 105, baseType: !207, size: 32, offset: 224)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2339, file: !2340, line: 105, baseType: !207, size: 32, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2339, file: !2340, line: 105, baseType: !207, size: 32, offset: 288)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !2339, file: !2340, line: 106, baseType: !207, size: 32, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2339, file: !2340, line: 107, baseType: !2354, size: 288, offset: 352)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 288, elements: !2355)
!2355 = !{!2356}
!2356 = !DISubrange(count: 9)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2230, file: !1849, line: 291, baseType: !2358, size: 64, offset: 1920)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!207, !1834, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2340, line: 19, size: 576, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2362, file: !2340, line: 20, baseType: !207, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2362, file: !2340, line: 21, baseType: !207, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2362, file: !2340, line: 22, baseType: !7, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2362, file: !2340, line: 23, baseType: !207, size: 32, offset: 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2362, file: !2340, line: 24, baseType: !207, size: 32, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !2362, file: !2340, line: 25, baseType: !207, size: 32, offset: 160)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !2362, file: !2340, line: 26, baseType: !207, size: 32, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !2362, file: !2340, line: 27, baseType: !207, size: 32, offset: 224)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2362, file: !2340, line: 28, baseType: !318, size: 16, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !2362, file: !2340, line: 29, baseType: !203, size: 8, offset: 272)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !2362, file: !2340, line: 30, baseType: !2375, size: 8, offset: 280)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 8, elements: !1398)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !2362, file: !2340, line: 31, baseType: !207, size: 32, offset: 288)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2362, file: !2340, line: 32, baseType: !318, size: 16, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !2362, file: !2340, line: 33, baseType: !318, size: 16, offset: 336)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !2362, file: !2340, line: 34, baseType: !2217, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !2362, file: !2340, line: 35, baseType: !318, size: 16, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !2362, file: !2340, line: 36, baseType: !7, size: 32, offset: 480)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !2362, file: !2340, line: 37, baseType: !326, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2230, file: !1849, line: 292, baseType: !2358, size: 64, offset: 1984)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2230, file: !1849, line: 293, baseType: !2385, size: 64, offset: 2048)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1834, !716}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2230, file: !1849, line: 299, baseType: !760, size: 64, offset: 2112)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !1848, file: !1849, line: 333, baseType: !189, size: 128, offset: 1344)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1835, file: !1836, line: 290, baseType: !2228, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1835, file: !1836, line: 291, baseType: !207, size: 32, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1835, file: !1836, line: 294, baseType: !2393, size: 384, offset: 320)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2394, line: 133, size: 384, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397, !2398, !2399, !2400}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2393, file: !2394, line: 134, baseType: !732, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2393, file: !2394, line: 135, baseType: !828, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2393, file: !2394, line: 136, baseType: !7, size: 32, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2393, file: !2394, line: 137, baseType: !189, size: 128, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2393, file: !2394, line: 138, baseType: !189, size: 128, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1835, file: !1836, line: 295, baseType: !2402, size: 64, offset: 704)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2394, line: 215, size: 128, elements: !2404)
!2404 = !{!2405, !2450}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2403, file: !2394, line: 216, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2394, line: 175, size: 1216, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2420, !2424, !2428, !2429, !2430, !2434, !2435, !2439, !2440, !2444, !2448, !2449}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2407, file: !2394, line: 176, baseType: !207, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2407, file: !2394, line: 177, baseType: !276, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2407, file: !2394, line: 178, baseType: !207, size: 32, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2407, file: !2394, line: 179, baseType: !207, size: 32, offset: 160)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2407, file: !2394, line: 184, baseType: !2267, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2407, file: !2394, line: 185, baseType: !2253, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2407, file: !2394, line: 186, baseType: !2253, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2407, file: !2394, line: 187, baseType: !2417, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!307, !1834, !354, !2217, !323}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2407, file: !2394, line: 189, baseType: !2421, size: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!307, !1834, !354, !427, !323}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2407, file: !2394, line: 191, baseType: !2425, size: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!207, !1834, !354, !7, !326}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2407, file: !2394, line: 193, baseType: !2425, size: 64, offset: 576)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2407, file: !2394, line: 195, baseType: !2280, size: 64, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2407, file: !2394, line: 196, baseType: !2431, size: 64, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!1903, !1834, !354, !1905}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2407, file: !2394, line: 198, baseType: !2267, size: 64, offset: 768)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2407, file: !2394, line: 203, baseType: !2436, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{null, !1834, !427, !276, !207}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2407, file: !2394, line: 205, baseType: !2253, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2407, file: !2394, line: 206, baseType: !2441, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !1834, !7}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2407, file: !2394, line: 207, baseType: !2445, size: 64, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!207, !1834, !427, !276, !207}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2407, file: !2394, line: 210, baseType: !635, size: 64, offset: 1088)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2407, file: !2394, line: 212, baseType: !207, size: 32, offset: 1152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2403, file: !2394, line: 217, baseType: !1834, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1835, file: !1836, line: 297, baseType: !728, size: 192, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1835, file: !1836, line: 298, baseType: !728, size: 192, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1835, file: !1836, line: 299, baseType: !728, size: 192, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1835, file: !1836, line: 300, baseType: !822, size: 256, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1835, file: !1836, line: 301, baseType: !728, size: 192, offset: 1600)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1835, file: !1836, line: 302, baseType: !235, offset: 1792)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1835, file: !1836, line: 303, baseType: !235, offset: 1792)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1835, file: !1836, line: 305, baseType: !2098, size: 352, offset: 1792)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1835, file: !1836, line: 305, baseType: !2098, size: 352, offset: 2144)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1835, file: !1836, line: 306, baseType: !2323, size: 64, offset: 2496)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !1836, line: 307, baseType: !2462, size: 512, offset: 2560)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 512, elements: !281)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1835, file: !1836, line: 308, baseType: !1498, size: 64, offset: 3072)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1835, file: !1836, line: 313, baseType: !1498, size: 64, offset: 3136)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !1836, line: 314, baseType: !326, size: 64, offset: 3200)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1835, file: !1836, line: 315, baseType: !207, size: 32, offset: 3264)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1835, file: !1836, line: 316, baseType: !2312, size: 64, offset: 3296)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1835, file: !1836, line: 317, baseType: !326, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1835, file: !1836, line: 318, baseType: !326, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1835, file: !1836, line: 319, baseType: !326, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1835, file: !1836, line: 320, baseType: !207, size: 32, offset: 3456)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1835, file: !1836, line: 321, baseType: !326, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1835, file: !1836, line: 322, baseType: !326, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1835, file: !1836, line: 323, baseType: !326, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1835, file: !1836, line: 324, baseType: !7, size: 32, offset: 3584)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1835, file: !1836, line: 325, baseType: !207, size: 32, offset: 3616)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1835, file: !1836, line: 327, baseType: !1834, size: 64, offset: 3648)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1835, file: !1836, line: 328, baseType: !1957, size: 64, offset: 3712)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1835, file: !1836, line: 329, baseType: !1508, size: 128, offset: 3776)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1835, file: !1836, line: 330, baseType: !1508, size: 128, offset: 3904)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1835, file: !1836, line: 331, baseType: !2150, size: 256, offset: 4032)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1835, file: !1836, line: 332, baseType: !184, size: 64, offset: 4288)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1835, file: !1836, line: 333, baseType: !184, size: 64, offset: 4352)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1835, file: !1836, line: 334, baseType: !235, offset: 4416)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1835, file: !1836, line: 335, baseType: !189, size: 128, offset: 4416)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1835, file: !1836, line: 339, baseType: !207, size: 32, offset: 4544)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1835, file: !1836, line: 340, baseType: !2217, size: 64, offset: 4608)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1835, file: !1836, line: 341, baseType: !207, size: 32, offset: 4672)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1835, file: !1836, line: 343, baseType: !2150, size: 256, offset: 4736)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1835, file: !1836, line: 344, baseType: !2125, size: 64, offset: 4992)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1781, file: !1782, line: 175, baseType: !2492, size: 32, offset: 3200)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !390, line: 805, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 798, size: 32, elements: !2494)
!2494 = !{!2495, !2496}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2493, file: !390, line: 803, baseType: !389, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2493, file: !390, line: 804, baseType: !235, offset: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1781, file: !1782, line: 176, baseType: !423, size: 64, offset: 3264)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1781, file: !1782, line: 176, baseType: !423, size: 64, offset: 3328)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1781, file: !1782, line: 176, baseType: !423, size: 64, offset: 3392)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1781, file: !1782, line: 176, baseType: !423, size: 64, offset: 3456)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1781, file: !1782, line: 177, baseType: !423, size: 64, offset: 3520)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1781, file: !1782, line: 178, baseType: !423, size: 64, offset: 3584)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1781, file: !1782, line: 179, baseType: !1545, size: 128, offset: 3648)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1781, file: !1782, line: 180, baseType: !326, size: 64, offset: 3776)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1781, file: !1782, line: 180, baseType: !326, size: 64, offset: 3840)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1781, file: !1782, line: 180, baseType: !326, size: 64, offset: 3904)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1781, file: !1782, line: 180, baseType: !326, size: 64, offset: 3968)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1781, file: !1782, line: 181, baseType: !326, size: 64, offset: 4032)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1781, file: !1782, line: 181, baseType: !326, size: 64, offset: 4096)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1781, file: !1782, line: 181, baseType: !326, size: 64, offset: 4160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1781, file: !1782, line: 181, baseType: !326, size: 64, offset: 4224)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1781, file: !1782, line: 182, baseType: !326, size: 64, offset: 4288)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1781, file: !1782, line: 182, baseType: !326, size: 64, offset: 4352)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1781, file: !1782, line: 182, baseType: !326, size: 64, offset: 4416)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1781, file: !1782, line: 182, baseType: !326, size: 64, offset: 4480)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1781, file: !1782, line: 183, baseType: !326, size: 64, offset: 4544)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1781, file: !1782, line: 183, baseType: !326, size: 64, offset: 4608)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1781, file: !1782, line: 184, baseType: !2519, offset: 4672)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2520, line: 12, elements: !249)
!2520 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1781, file: !1782, line: 192, baseType: !425, size: 64, offset: 4672)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1781, file: !1782, line: 203, baseType: !2523, size: 2048, offset: 4736)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 2048, elements: !1762)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2525, line: 43, size: 128, elements: !2526)
!2525 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2524, file: !2525, line: 44, baseType: !325, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2524, file: !2525, line: 45, baseType: !325, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1781, file: !1782, line: 220, baseType: !492, size: 8, offset: 6784)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1781, file: !1782, line: 221, baseType: !1232, size: 16, offset: 6800)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1781, file: !1782, line: 222, baseType: !1232, size: 16, offset: 6816)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1781, file: !1782, line: 224, baseType: !1023, size: 64, offset: 6848)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1781, file: !1782, line: 227, baseType: !728, size: 192, offset: 6912)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1781, file: !1782, line: 233, baseType: !728, size: 192, offset: 7104)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1244, file: !1245, line: 970, baseType: !2536, size: 64, offset: 9280)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1782, line: 20, size: 16576, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2542}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2537, file: !1782, line: 21, baseType: !235)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2537, file: !1782, line: 22, baseType: !1257, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2537, file: !1782, line: 23, baseType: !1508, size: 128, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2537, file: !1782, line: 24, baseType: !2543, size: 16384, offset: 192)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 16384, elements: !281)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1792, line: 49, size: 256, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2544, file: !1792, line: 50, baseType: !2547, size: 256)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1792, line: 35, size: 256, elements: !2548)
!2548 = !{!2549, !2556, !2557, !2563}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2547, file: !1792, line: 37, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2551, line: 19, baseType: !2552)
!2551 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2551, line: 18, baseType: !2554)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !207}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2547, file: !1792, line: 38, baseType: !326, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2547, file: !1792, line: 44, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2551, line: 22, baseType: !2559)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2551, line: 21, baseType: !2561)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2547, file: !1792, line: 46, baseType: !1796, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1244, file: !1245, line: 971, baseType: !1796, size: 64, offset: 9344)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1244, file: !1245, line: 972, baseType: !1796, size: 64, offset: 9408)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1244, file: !1245, line: 974, baseType: !1796, size: 64, offset: 9472)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1244, file: !1245, line: 975, baseType: !1791, size: 192, offset: 9536)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1244, file: !1245, line: 976, baseType: !326, size: 64, offset: 9728)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1244, file: !1245, line: 977, baseType: !323, size: 64, offset: 9792)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1244, file: !1245, line: 978, baseType: !7, size: 32, offset: 9856)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1244, file: !1245, line: 980, baseType: !370, size: 64, offset: 9920)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1244, file: !1245, line: 989, baseType: !2573, size: 128, offset: 9984)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2574, line: 35, size: 128, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2575 = !{!2576, !2577, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2573, file: !2574, line: 36, baseType: !207, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2573, file: !2574, line: 37, baseType: !802, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2573, file: !2574, line: 38, baseType: !2579, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2574, line: 23, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1244, file: !1245, line: 992, baseType: !423, size: 64, offset: 10112)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1244, file: !1245, line: 993, baseType: !423, size: 64, offset: 10176)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1244, file: !1245, line: 996, baseType: !235, offset: 10240)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1244, file: !1245, line: 999, baseType: !828, offset: 10240)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1244, file: !1245, line: 1001, baseType: !2586, size: 64, offset: 10240)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1245, line: 636, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2586, file: !1245, line: 637, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1244, file: !1245, line: 1005, baseType: !807, size: 128, offset: 10304)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1244, file: !1245, line: 1007, baseType: !1243, size: 64, offset: 10432)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1244, file: !1245, line: 1009, baseType: !2593, size: 64, offset: 10496)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1245, line: 1009, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1244, file: !1245, line: 1043, baseType: !184, size: 64, offset: 10560)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1244, file: !1245, line: 1046, baseType: !2597, size: 64, offset: 10624)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1245, line: 41, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1244, file: !1245, line: 1050, baseType: !2600, size: 64, offset: 10688)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1245, line: 42, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1244, file: !1245, line: 1054, baseType: !2603, size: 64, offset: 10752)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1245, line: 55, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1244, file: !1245, line: 1056, baseType: !2606, size: 64, offset: 10816)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1245, line: 40, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1244, file: !1245, line: 1058, baseType: !2609, size: 64, offset: 10880)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2611, line: 99, size: 704, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2638, !2639}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2610, file: !2611, line: 100, baseType: !732, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2610, file: !2611, line: 101, baseType: !802, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2610, file: !2611, line: 102, baseType: !802, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2610, file: !2611, line: 105, baseType: !235, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2610, file: !2611, line: 107, baseType: !318, size: 16, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2610, file: !2611, line: 109, baseType: !793, size: 128, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2610, file: !2611, line: 110, baseType: !2620, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2611, line: 73, size: 448, elements: !2622)
!2622 = !{!2623, !2626, !2627, !2632, !2637}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2621, file: !2611, line: 74, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2611, line: 74, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2621, file: !2611, line: 75, baseType: !2609, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !2611, line: 83, baseType: !2628, size: 128, offset: 128)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2621, file: !2611, line: 83, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2628, file: !2611, line: 84, baseType: !189, size: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2628, file: !2611, line: 85, baseType: !983, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !2611, line: 87, baseType: !2633, size: 128, offset: 256)
!2633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2621, file: !2611, line: 87, size: 128, elements: !2634)
!2634 = !{!2635, !2636}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2633, file: !2611, line: 88, baseType: !644, size: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2633, file: !2611, line: 89, baseType: !367, size: 128, align: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2621, file: !2611, line: 92, baseType: !7, size: 32, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2610, file: !2611, line: 111, baseType: !640, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2610, file: !2611, line: 113, baseType: !2150, size: 256, offset: 448)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1244, file: !1245, line: 1061, baseType: !2641, size: 64, offset: 10944)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1245, line: 43, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1244, file: !1245, line: 1064, baseType: !326, size: 64, offset: 11008)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1244, file: !1245, line: 1065, baseType: !2645, size: 64, offset: 11072)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1792, line: 14, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1792, line: 12, size: 384, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2647, file: !1792, line: 13, baseType: !2650, size: 384)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2647, file: !1792, line: 13, size: 384, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2650, file: !1792, line: 13, baseType: !207, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2650, file: !1792, line: 13, baseType: !207, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2650, file: !1792, line: 13, baseType: !207, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2650, file: !1792, line: 13, baseType: !2656, size: 256, offset: 128)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2657, line: 32, size: 256, elements: !2658)
!2657 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2658 = !{!2659, !2664, !2677, !2683, !2692, !2712, !2717}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2656, file: !2657, line: 37, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 34, size: 64, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2660, file: !2657, line: 35, baseType: !1487, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2660, file: !2657, line: 36, baseType: !443, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2656, file: !2657, line: 45, baseType: !2665, size: 192)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 40, size: 192, elements: !2666)
!2666 = !{!2667, !2669, !2670, !2676}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2665, file: !2657, line: 41, baseType: !2668, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !309, line: 95, baseType: !207)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2665, file: !2657, line: 42, baseType: !207, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2665, file: !2657, line: 43, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2657, line: 11, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2657, line: 8, size: 64, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2672, file: !2657, line: 9, baseType: !207, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2672, file: !2657, line: 10, baseType: !184, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2665, file: !2657, line: 44, baseType: !207, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2656, file: !2657, line: 52, baseType: !2678, size: 128)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 48, size: 128, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2678, file: !2657, line: 49, baseType: !1487, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2678, file: !2657, line: 50, baseType: !443, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2678, file: !2657, line: 51, baseType: !2671, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2656, file: !2657, line: 61, baseType: !2684, size: 256)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 55, size: 256, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689, !2691}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2684, file: !2657, line: 56, baseType: !1487, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2684, file: !2657, line: 57, baseType: !443, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2684, file: !2657, line: 58, baseType: !207, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2684, file: !2657, line: 59, baseType: !2690, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !309, line: 94, baseType: !310)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2684, file: !2657, line: 60, baseType: !2690, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2656, file: !2657, line: 95, baseType: !2693, size: 256)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 64, size: 256, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2693, file: !2657, line: 65, baseType: !184, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, scope: !2693, file: !2657, line: 77, baseType: !2697, size: 192, offset: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2693, file: !2657, line: 77, size: 192, elements: !2698)
!2698 = !{!2699, !2700, !2707}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2697, file: !2657, line: 82, baseType: !1232, size: 16)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2697, file: !2657, line: 88, baseType: !2701, size: 192)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2697, file: !2657, line: 84, size: 192, elements: !2702)
!2702 = !{!2703, !2705, !2706}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2701, file: !2657, line: 85, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !1357)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2701, file: !2657, line: 86, baseType: !184, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2701, file: !2657, line: 87, baseType: !184, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2697, file: !2657, line: 93, baseType: !2708, size: 96)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2697, file: !2657, line: 90, size: 96, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2708, file: !2657, line: 91, baseType: !2704, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2708, file: !2657, line: 92, baseType: !419, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2656, file: !2657, line: 101, baseType: !2713, size: 128)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 98, size: 128, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2713, file: !2657, line: 99, baseType: !311, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2713, file: !2657, line: 100, baseType: !207, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2656, file: !2657, line: 108, baseType: !2718, size: 128)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !2657, line: 104, size: 128, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2718, file: !2657, line: 105, baseType: !184, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2718, file: !2657, line: 106, baseType: !207, size: 32, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2718, file: !2657, line: 107, baseType: !7, size: 32, offset: 96)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1244, file: !1245, line: 1067, baseType: !2519, offset: 11136)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1244, file: !1245, line: 1099, baseType: !2725, size: 64, offset: 11136)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1245, line: 56, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1244, file: !1245, line: 1103, baseType: !189, size: 128, offset: 11200)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1244, file: !1245, line: 1104, baseType: !2729, size: 64, offset: 11328)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1245, line: 46, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1244, file: !1245, line: 1105, baseType: !728, size: 192, offset: 11392)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1244, file: !1245, line: 1106, baseType: !7, size: 32, offset: 11584)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1244, file: !1245, line: 1109, baseType: !2734, size: 128, offset: 11648)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2735, size: 128, elements: !1596)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1245, line: 51, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1244, file: !1245, line: 1110, baseType: !728, size: 192, offset: 11776)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1244, file: !1245, line: 1111, baseType: !189, size: 128, offset: 11968)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1244, file: !1245, line: 1173, baseType: !2740, size: 64, offset: 12096)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2742, line: 62, size: 256, align: 256, elements: !2743)
!2742 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2743 = !{!2744, !2745, !2746, !2751}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2741, file: !2742, line: 75, baseType: !419, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2741, file: !2742, line: 90, baseType: !419, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2741, file: !2742, line: 124, baseType: !2747, size: 64, offset: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2741, file: !2742, line: 109, size: 64, elements: !2748)
!2748 = !{!2749, !2750}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2747, file: !2742, line: 110, baseType: !424, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2747, file: !2742, line: 112, baseType: !424, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2741, file: !2742, line: 144, baseType: !419, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1244, file: !1245, line: 1174, baseType: !417, size: 32, offset: 12160)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1244, file: !1245, line: 1179, baseType: !326, size: 64, offset: 12224)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1244, file: !1245, line: 1182, baseType: !2755, size: 128, offset: 12288)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1200, line: 76, size: 128, elements: !2756)
!2756 = !{!2757, !2762, !2763}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2755, file: !1200, line: 85, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2759, line: 7, size: 64, elements: !2760)
!2759 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2760 = !{!2761}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2758, file: !2759, line: 12, baseType: !1394, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2755, file: !1200, line: 88, baseType: !492, size: 8, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2755, file: !1200, line: 95, baseType: !492, size: 8, offset: 72)
!2764 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1245, line: 1184, baseType: !2765, size: 128, offset: 12416)
!2765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 1184, size: 128, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2765, file: !1245, line: 1185, baseType: !1257, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2765, file: !1245, line: 1186, baseType: !367, size: 128, align: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1244, file: !1245, line: 1190, baseType: !2057, size: 64, offset: 12544)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1244, file: !1245, line: 1192, baseType: !2771, size: 128, offset: 12608)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1200, line: 64, size: 128, elements: !2772)
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2771, file: !1200, line: 65, baseType: !775, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2771, file: !1200, line: 67, baseType: !419, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2771, file: !1200, line: 68, baseType: !419, size: 32, offset: 96)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1244, file: !1245, line: 1206, baseType: !207, size: 32, offset: 12736)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1244, file: !1245, line: 1207, baseType: !207, size: 32, offset: 12768)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1244, file: !1245, line: 1209, baseType: !326, size: 64, offset: 12800)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1244, file: !1245, line: 1219, baseType: !423, size: 64, offset: 12864)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1244, file: !1245, line: 1220, baseType: !423, size: 64, offset: 12928)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1244, file: !1245, line: 1317, baseType: !207, size: 32, offset: 12992)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1244, file: !1245, line: 1319, baseType: !1243, size: 64, offset: 13056)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1244, file: !1245, line: 1322, baseType: !2784, size: 64, offset: 13120)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2786, line: 56, size: 512, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2796}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2785, file: !2786, line: 57, baseType: !2784, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2785, file: !2786, line: 58, baseType: !184, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2785, file: !2786, line: 59, baseType: !326, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2785, file: !2786, line: 60, baseType: !326, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2785, file: !2786, line: 61, baseType: !868, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2785, file: !2786, line: 62, baseType: !7, size: 32, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2785, file: !2786, line: 63, baseType: !2795, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !190, line: 153, baseType: !423)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2785, file: !2786, line: 64, baseType: !2797, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1244, file: !1245, line: 1326, baseType: !1257, size: 32, offset: 13184)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1244, file: !1245, line: 1342, baseType: !184, size: 64, offset: 13248)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1244, file: !1245, line: 1343, baseType: !424, size: 64, offset: 13312)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1244, file: !1245, line: 1344, baseType: !423, size: 64, offset: 13376)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1244, file: !1245, line: 1345, baseType: !424, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1244, file: !1245, line: 1346, baseType: !424, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1244, file: !1245, line: 1347, baseType: !424, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1244, file: !1245, line: 1348, baseType: !367, size: 128, align: 64, offset: 13504)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1244, file: !1245, line: 1358, baseType: !2808, size: 34816, offset: 13824)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2809, line: 485, size: 34816, elements: !2810)
!2809 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2840, !2841, !2842, !2843, !2844, !2845, !2848, !2849, !2850}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2808, file: !2809, line: 487, baseType: !2812, size: 192)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2813, size: 192, elements: !277)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2814, line: 16, size: 64, elements: !2815)
!2814 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2813, file: !2814, line: 17, baseType: !907, size: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2813, file: !2814, line: 18, baseType: !907, size: 16, offset: 16)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2813, file: !2814, line: 19, baseType: !907, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2813, file: !2814, line: 19, baseType: !907, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2813, file: !2814, line: 19, baseType: !907, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2813, file: !2814, line: 19, baseType: !907, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2813, file: !2814, line: 19, baseType: !907, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2813, file: !2814, line: 20, baseType: !907, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2813, file: !2814, line: 20, baseType: !907, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2813, file: !2814, line: 20, baseType: !907, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2813, file: !2814, line: 20, baseType: !907, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2813, file: !2814, line: 20, baseType: !907, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2813, file: !2814, line: 20, baseType: !907, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2808, file: !2809, line: 491, baseType: !326, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2808, file: !2809, line: 495, baseType: !318, size: 16, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2808, file: !2809, line: 496, baseType: !318, size: 16, offset: 272)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2808, file: !2809, line: 497, baseType: !318, size: 16, offset: 288)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2808, file: !2809, line: 498, baseType: !318, size: 16, offset: 304)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2808, file: !2809, line: 502, baseType: !326, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2808, file: !2809, line: 503, baseType: !326, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2808, file: !2809, line: 514, baseType: !2837, size: 256, offset: 448)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2838, size: 256, elements: !1204)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2809, line: 483, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2808, file: !2809, line: 516, baseType: !326, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2808, file: !2809, line: 518, baseType: !326, size: 64, offset: 768)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2808, file: !2809, line: 520, baseType: !326, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2808, file: !2809, line: 521, baseType: !326, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2808, file: !2809, line: 522, baseType: !326, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2808, file: !2809, line: 528, baseType: !2846, size: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2809, line: 10, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2808, file: !2809, line: 535, baseType: !326, size: 64, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2808, file: !2809, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2808, file: !2809, line: 540, baseType: !2851, size: 33280, offset: 1536)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2852, line: 317, size: 33280, elements: !2853)
!2852 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2851, file: !2852, line: 330, baseType: !7, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2851, file: !2852, line: 337, baseType: !326, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2851, file: !2852, line: 348, baseType: !2857, size: 32768, offset: 512)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2852, line: 304, size: 32768, elements: !2858)
!2858 = !{!2859, !2874, !2913, !2963, !2976}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2857, file: !2852, line: 305, baseType: !2860, size: 896)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2852, line: 12, size: 896, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2873}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2860, file: !2852, line: 13, baseType: !417, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2860, file: !2852, line: 14, baseType: !417, size: 32, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2860, file: !2852, line: 15, baseType: !417, size: 32, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2860, file: !2852, line: 16, baseType: !417, size: 32, offset: 96)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2860, file: !2852, line: 17, baseType: !417, size: 32, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2860, file: !2852, line: 18, baseType: !417, size: 32, offset: 160)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2860, file: !2852, line: 19, baseType: !417, size: 32, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2860, file: !2852, line: 22, baseType: !2870, size: 640, offset: 224)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 640, elements: !2871)
!2871 = !{!2872}
!2872 = !DISubrange(count: 20)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2860, file: !2852, line: 25, baseType: !417, size: 32, offset: 864)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2857, file: !2852, line: 306, baseType: !2875, size: 4096, align: 128)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2852, line: 34, size: 4096, align: 128, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2896, !2897, !2898, !2902, !2904, !2908}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2875, file: !2852, line: 35, baseType: !907, size: 16)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2875, file: !2852, line: 36, baseType: !907, size: 16, offset: 16)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2875, file: !2852, line: 37, baseType: !907, size: 16, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2875, file: !2852, line: 38, baseType: !907, size: 16, offset: 48)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2875, file: !2852, line: 39, baseType: !2882, size: 128, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2875, file: !2852, line: 39, size: 128, elements: !2883)
!2883 = !{!2884, !2889}
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !2852, line: 40, baseType: !2885, size: 128)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2852, line: 40, size: 128, elements: !2886)
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2885, file: !2852, line: 41, baseType: !423, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2885, file: !2852, line: 42, baseType: !423, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !2852, line: 44, baseType: !2890, size: 128)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2852, line: 44, size: 128, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2890, file: !2852, line: 45, baseType: !417, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2890, file: !2852, line: 46, baseType: !417, size: 32, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2890, file: !2852, line: 47, baseType: !417, size: 32, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2890, file: !2852, line: 48, baseType: !417, size: 32, offset: 96)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2875, file: !2852, line: 51, baseType: !417, size: 32, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2875, file: !2852, line: 52, baseType: !417, size: 32, offset: 224)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2875, file: !2852, line: 55, baseType: !2899, size: 1024, offset: 256)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 1024, elements: !2900)
!2900 = !{!2901}
!2901 = !DISubrange(count: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2875, file: !2852, line: 58, baseType: !2903, size: 2048, offset: 1280)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 2048, elements: !281)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2875, file: !2852, line: 60, baseType: !2905, size: 384, offset: 3328)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 384, elements: !2906)
!2906 = !{!2907}
!2907 = !DISubrange(count: 12)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2875, file: !2852, line: 62, baseType: !2909, size: 384, offset: 3712)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2875, file: !2852, line: 62, size: 384, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2909, file: !2852, line: 63, baseType: !2905, size: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2909, file: !2852, line: 64, baseType: !2905, size: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2857, file: !2852, line: 307, baseType: !2914, size: 1088)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2852, line: 79, size: 1088, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2962}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2914, file: !2852, line: 80, baseType: !417, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2914, file: !2852, line: 81, baseType: !417, size: 32, offset: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2914, file: !2852, line: 82, baseType: !417, size: 32, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2914, file: !2852, line: 83, baseType: !417, size: 32, offset: 96)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2914, file: !2852, line: 84, baseType: !417, size: 32, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2914, file: !2852, line: 85, baseType: !417, size: 32, offset: 160)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2914, file: !2852, line: 86, baseType: !417, size: 32, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2914, file: !2852, line: 88, baseType: !2870, size: 640, offset: 224)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2914, file: !2852, line: 89, baseType: !1379, size: 8, offset: 864)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2914, file: !2852, line: 90, baseType: !1379, size: 8, offset: 872)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2914, file: !2852, line: 91, baseType: !1379, size: 8, offset: 880)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2914, file: !2852, line: 92, baseType: !1379, size: 8, offset: 888)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2914, file: !2852, line: 93, baseType: !1379, size: 8, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2914, file: !2852, line: 94, baseType: !1379, size: 8, offset: 904)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2914, file: !2852, line: 95, baseType: !2931, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2933, line: 11, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2932, file: !2933, line: 12, baseType: !311, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2932, file: !2933, line: 13, baseType: !2937, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2939, line: 56, size: 1344, elements: !2940)
!2939 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2938, file: !2939, line: 61, baseType: !326, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2938, file: !2939, line: 62, baseType: !326, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2938, file: !2939, line: 63, baseType: !326, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2938, file: !2939, line: 64, baseType: !326, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2938, file: !2939, line: 65, baseType: !326, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2938, file: !2939, line: 66, baseType: !326, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2938, file: !2939, line: 68, baseType: !326, size: 64, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2938, file: !2939, line: 69, baseType: !326, size: 64, offset: 448)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2938, file: !2939, line: 70, baseType: !326, size: 64, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2938, file: !2939, line: 71, baseType: !326, size: 64, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2938, file: !2939, line: 72, baseType: !326, size: 64, offset: 640)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2938, file: !2939, line: 73, baseType: !326, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2938, file: !2939, line: 74, baseType: !326, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2938, file: !2939, line: 75, baseType: !326, size: 64, offset: 832)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2938, file: !2939, line: 76, baseType: !326, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2938, file: !2939, line: 81, baseType: !326, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2938, file: !2939, line: 83, baseType: !326, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2938, file: !2939, line: 84, baseType: !326, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2938, file: !2939, line: 85, baseType: !326, size: 64, offset: 1152)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2938, file: !2939, line: 86, baseType: !326, size: 64, offset: 1216)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2938, file: !2939, line: 87, baseType: !326, size: 64, offset: 1280)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2914, file: !2852, line: 96, baseType: !417, size: 32, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2857, file: !2852, line: 308, baseType: !2964, size: 4608, align: 512)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2852, line: 289, size: 4608, align: 512, elements: !2965)
!2965 = !{!2966, !2967, !2974}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2964, file: !2852, line: 290, baseType: !2875, size: 4096, align: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2964, file: !2852, line: 291, baseType: !2968, size: 512, offset: 4096)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2852, line: 268, size: 512, elements: !2969)
!2969 = !{!2970, !2971, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2968, file: !2852, line: 269, baseType: !423, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2968, file: !2852, line: 270, baseType: !423, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2968, file: !2852, line: 271, baseType: !2973, size: 384, offset: 128)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !1652)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2964, file: !2852, line: 292, baseType: !2975, offset: 4608)
!2975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, elements: !1750)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2857, file: !2852, line: 309, baseType: !2977, size: 32768)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 32768, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 4096)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1240, file: !777, line: 378, baseType: !2981, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1236, file: !777, line: 384, baseType: !1529, size: 192, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1027, file: !777, line: 500, baseType: !235, offset: 6656)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1027, file: !777, line: 501, baseType: !2985, size: 64, offset: 6656)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !777, line: 387, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1027, file: !777, line: 516, baseType: !1740, size: 64, offset: 6720)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1027, file: !777, line: 519, baseType: !354, size: 64, offset: 6784)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1027, file: !777, line: 521, baseType: !2990, size: 64, offset: 6848)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !777, line: 521, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1027, file: !777, line: 545, baseType: !802, size: 32, offset: 6912)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1027, file: !777, line: 548, baseType: !492, size: 8, offset: 6944)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1027, file: !777, line: 550, baseType: !2995, offset: 6952)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2996, line: 142, elements: !249)
!2996 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1027, file: !777, line: 554, baseType: !2150, size: 256, offset: 6976)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1027, file: !777, line: 557, baseType: !417, size: 32, offset: 7232)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1024, file: !777, line: 565, baseType: !2146, offset: 7296)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1020, file: !777, line: 151, baseType: !802, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1012, file: !777, line: 156, baseType: !235, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 159, baseType: !3003, size: 128)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 159, size: 128, elements: !3004)
!3004 = !{!3005, !3069}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3003, file: !777, line: 161, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !3008)
!3008 = !{!3009, !3019, !3040, !3041, !3042, !3043, !3044, !3056, !3057, !3058}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3007, file: !31, line: 111, baseType: !3010, size: 384)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !3011)
!3011 = !{!3012, !3014, !3015, !3016, !3017, !3018}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3010, file: !31, line: 20, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3010, file: !31, line: 21, baseType: !3013, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3010, file: !31, line: 22, baseType: !3013, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3010, file: !31, line: 23, baseType: !326, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3010, file: !31, line: 24, baseType: !326, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3010, file: !31, line: 25, baseType: !326, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3007, file: !31, line: 112, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3022, line: 105, size: 128, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3021, file: !3022, line: 110, baseType: !326, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3021, file: !3022, line: 118, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3022, line: 95, size: 448, elements: !3028)
!3028 = !{!3029, !3030, !3035, !3036, !3037, !3038, !3039}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3027, file: !3022, line: 96, baseType: !732, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3027, file: !3022, line: 97, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3022, line: 60, baseType: !3033)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !3020}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3027, file: !3022, line: 98, baseType: !3031, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3027, file: !3022, line: 99, baseType: !492, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3027, file: !3022, line: 100, baseType: !492, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3027, file: !3022, line: 101, baseType: !367, size: 128, align: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3027, file: !3022, line: 102, baseType: !3020, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3007, file: !31, line: 113, baseType: !3021, size: 128, offset: 448)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3007, file: !31, line: 114, baseType: !1529, size: 192, offset: 576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3007, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3007, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3007, file: !31, line: 117, baseType: !3045, size: 64, offset: 832)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3047)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !3048)
!3048 = !{!3049, !3050, !3054, !3055}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3047, file: !31, line: 73, baseType: !888, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3047, file: !31, line: 78, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !3006}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3047, file: !31, line: 83, baseType: !3051, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3047, file: !31, line: 89, baseType: !1076, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3007, file: !31, line: 118, baseType: !184, size: 64, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3007, file: !31, line: 119, baseType: !207, size: 32, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !31, line: 120, baseType: !3059, size: 128, offset: 1024)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3007, file: !31, line: 120, size: 128, elements: !3060)
!3060 = !{!3061, !3067}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3059, file: !31, line: 121, baseType: !3062, size: 128)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3063, line: 6, size: 128, elements: !3064)
!3063 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3062, file: !3063, line: 7, baseType: !423, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3062, file: !3063, line: 8, baseType: !423, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3059, file: !31, line: 122, baseType: !3068)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, elements: !1750)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3003, file: !777, line: 162, baseType: !184, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !781, file: !777, line: 176, baseType: !367, size: 128, align: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 179, baseType: !3072, size: 32, offset: 384)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 179, size: 32, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3077}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3072, file: !777, line: 184, baseType: !802, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3072, file: !777, line: 192, baseType: !7, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3072, file: !777, line: 194, baseType: !7, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3072, file: !777, line: 195, baseType: !207, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !776, file: !777, line: 199, baseType: !802, size: 32, offset: 416)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !662, file: !44, line: 1964, baseType: !3080, size: 64, offset: 1344)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!311, !601, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3085, line: 12, size: 256, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3086 = !{!3087, !3088, !3089, !3090, !3091}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3084, file: !3085, line: 13, baseType: !798, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3084, file: !3085, line: 16, baseType: !207, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3084, file: !3085, line: 23, baseType: !326, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3084, file: !3085, line: 30, baseType: !326, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3084, file: !3085, line: 33, baseType: !3092, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !777, line: 27, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !662, file: !44, line: 1966, baseType: !3080, size: 64, offset: 1408)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !602, file: !44, line: 1424, baseType: !3096, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3098)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !3099)
!3099 = !{!3100, !3146, !3150, !3154, !3155, !3156, !3157, !3158, !3163, !3168, !3172}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3098, file: !38, line: 323, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!207, !3104}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3131, !3132, !3133}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3105, file: !38, line: 295, baseType: !644, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3105, file: !38, line: 296, baseType: !189, size: 128, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3105, file: !38, line: 297, baseType: !189, size: 128, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3105, file: !38, line: 298, baseType: !189, size: 128, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3105, file: !38, line: 299, baseType: !728, size: 192, offset: 512)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3105, file: !38, line: 300, baseType: !235, offset: 704)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3105, file: !38, line: 301, baseType: !802, size: 32, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3105, file: !38, line: 302, baseType: !601, size: 64, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3105, file: !38, line: 303, baseType: !3116, size: 64, offset: 832)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !3117)
!3117 = !{!3118, !3130}
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !38, line: 69, baseType: !3119, size: 32)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !38, line: 69, size: 32, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3119, file: !38, line: 70, baseType: !437, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3119, file: !38, line: 71, baseType: !445, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3119, file: !38, line: 72, baseType: !3124, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3125, line: 24, baseType: !3126)
!3125 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3125, line: 22, size: 32, elements: !3127)
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3126, file: !3125, line: 23, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3125, line: 20, baseType: !443)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3116, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3105, file: !38, line: 304, baseType: !533, size: 64, offset: 896)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3105, file: !38, line: 305, baseType: !326, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3105, file: !38, line: 306, baseType: !3134, size: 576, offset: 1024)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !3135)
!3135 = !{!3136, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3134, file: !38, line: 206, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !535)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3134, file: !38, line: 207, baseType: !3137, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3134, file: !38, line: 208, baseType: !3137, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3134, file: !38, line: 209, baseType: !3137, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3134, file: !38, line: 210, baseType: !3137, size: 64, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3134, file: !38, line: 211, baseType: !3137, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3134, file: !38, line: 212, baseType: !3137, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3134, file: !38, line: 213, baseType: !541, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3134, file: !38, line: 214, baseType: !541, size: 64, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3098, file: !38, line: 324, baseType: !3147, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3104, !601, !207}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3098, file: !38, line: 325, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !3104}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3098, file: !38, line: 326, baseType: !3101, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3098, file: !38, line: 327, baseType: !3101, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3098, file: !38, line: 328, baseType: !3101, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3098, file: !38, line: 329, baseType: !690, size: 64, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3098, file: !38, line: 332, baseType: !3159, size: 64, offset: 448)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!3162, !431}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3098, file: !38, line: 333, baseType: !3164, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!207, !431, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3098, file: !38, line: 335, baseType: !3169, size: 64, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!207, !431, !3162}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3098, file: !38, line: 337, baseType: !3173, size: 64, offset: 640)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!207, !601, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !602, file: !44, line: 1425, baseType: !3178, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !3181)
!3181 = !{!3182, !3186, !3187, !3191, !3192, !3193, !3208, !3231, !3235, !3236, !3259}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3180, file: !38, line: 429, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!207, !601, !207, !207, !551}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3180, file: !38, line: 430, baseType: !690, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3180, file: !38, line: 431, baseType: !3188, size: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!207, !601, !7}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3180, file: !38, line: 432, baseType: !3188, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3180, file: !38, line: 433, baseType: !690, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3180, file: !38, line: 434, baseType: !3194, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!207, !601, !207, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3198, file: !38, line: 416, baseType: !207, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3198, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3198, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3198, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3198, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3198, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3198, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3198, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3180, file: !38, line: 435, baseType: !3209, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!207, !601, !3116, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3213, file: !38, line: 344, baseType: !207, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3213, file: !38, line: 345, baseType: !423, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3213, file: !38, line: 346, baseType: !423, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3213, file: !38, line: 347, baseType: !423, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3213, file: !38, line: 348, baseType: !423, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3213, file: !38, line: 349, baseType: !423, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3213, file: !38, line: 350, baseType: !423, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3213, file: !38, line: 351, baseType: !738, size: 64, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3213, file: !38, line: 353, baseType: !738, size: 64, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3213, file: !38, line: 354, baseType: !207, size: 32, offset: 576)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3213, file: !38, line: 355, baseType: !207, size: 32, offset: 608)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3213, file: !38, line: 356, baseType: !423, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3213, file: !38, line: 357, baseType: !423, size: 64, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3213, file: !38, line: 358, baseType: !423, size: 64, offset: 768)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3213, file: !38, line: 359, baseType: !738, size: 64, offset: 832)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3213, file: !38, line: 360, baseType: !207, size: 32, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3180, file: !38, line: 436, baseType: !3232, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!207, !601, !3176, !3212}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3180, file: !38, line: 438, baseType: !3209, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3180, file: !38, line: 439, baseType: !3237, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!207, !601, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3241, file: !38, line: 410, baseType: !7, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3241, file: !38, line: 411, baseType: !3245, size: 1344, offset: 64)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3246, size: 1344, elements: !277)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3258}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !38, line: 396, baseType: !7, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3246, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3246, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3246, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3246, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3246, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3246, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3246, file: !38, line: 404, baseType: !425, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3246, file: !38, line: 405, baseType: !3257, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !190, line: 126, baseType: !423)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3246, file: !38, line: 406, baseType: !3257, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3180, file: !38, line: 440, baseType: !3188, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !602, file: !44, line: 1426, baseType: !3261, size: 64, offset: 576)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !602, file: !44, line: 1427, baseType: !326, size: 64, offset: 640)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !602, file: !44, line: 1428, baseType: !326, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !602, file: !44, line: 1429, baseType: !326, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !602, file: !44, line: 1430, baseType: !384, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !602, file: !44, line: 1431, baseType: !822, size: 256, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !602, file: !44, line: 1432, baseType: !207, size: 32, offset: 1152)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !602, file: !44, line: 1433, baseType: !802, size: 32, offset: 1184)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !602, file: !44, line: 1437, baseType: !3272, size: 64, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !602, file: !44, line: 1449, baseType: !3277, size: 64, offset: 1280)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !400, line: 34, size: 64, elements: !3278)
!3278 = !{!3279}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3277, file: !400, line: 35, baseType: !403, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !602, file: !44, line: 1450, baseType: !189, size: 128, offset: 1344)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !602, file: !44, line: 1451, baseType: !3282, size: 64, offset: 1472)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !602, file: !44, line: 1452, baseType: !2606, size: 64, offset: 1536)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !602, file: !44, line: 1453, baseType: !3286, size: 64, offset: 1600)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !602, file: !44, line: 1454, baseType: !644, size: 128, offset: 1664)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !602, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !602, file: !44, line: 1456, baseType: !3291, size: 2432, offset: 1856)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3297, !3329}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3291, file: !38, line: 519, baseType: !7, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3291, file: !38, line: 520, baseType: !822, size: 256, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3291, file: !38, line: 521, baseType: !3296, size: 192, offset: 320)
!3296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !277)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3291, file: !38, line: 522, baseType: !3298, size: 1728, offset: 512)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3299, size: 1728, elements: !277)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !3300)
!3300 = !{!3301, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3299, file: !38, line: 223, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !3304)
!3304 = !{!3305, !3306, !3319, !3320}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3303, file: !38, line: 444, baseType: !207, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3303, file: !38, line: 445, baseType: !3307, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3309)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3309, file: !38, line: 311, baseType: !690, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3309, file: !38, line: 312, baseType: !690, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3309, file: !38, line: 313, baseType: !690, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3309, file: !38, line: 314, baseType: !690, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3309, file: !38, line: 315, baseType: !3101, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3309, file: !38, line: 316, baseType: !3101, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3309, file: !38, line: 317, baseType: !3101, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3309, file: !38, line: 318, baseType: !3173, size: 64, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3303, file: !38, line: 446, baseType: !635, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3303, file: !38, line: 447, baseType: !3302, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3299, file: !38, line: 224, baseType: !207, size: 32, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3299, file: !38, line: 226, baseType: !189, size: 128, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3299, file: !38, line: 227, baseType: !326, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3299, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3299, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3299, file: !38, line: 230, baseType: !3137, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3299, file: !38, line: 231, baseType: !3137, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3299, file: !38, line: 232, baseType: !184, size: 64, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3291, file: !38, line: 523, baseType: !3330, size: 192, offset: 2240)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 192, elements: !277)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !602, file: !44, line: 1458, baseType: !3332, size: 2112, offset: 4288)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3332, file: !44, line: 1411, baseType: !207, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3332, file: !44, line: 1412, baseType: !1508, size: 128, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3332, file: !44, line: 1413, baseType: !3337, size: 1920, offset: 192)
!3337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3338, size: 1920, elements: !277)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3339, line: 12, size: 640, elements: !3340)
!3339 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3340 = !{!3341, !3349, !3351, !3356, !3357}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3338, file: !3339, line: 13, baseType: !3342, size: 320)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3343, line: 17, size: 320, elements: !3344)
!3343 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3342, file: !3343, line: 18, baseType: !207, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3342, file: !3343, line: 19, baseType: !207, size: 32, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3342, file: !3343, line: 20, baseType: !1508, size: 128, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3342, file: !3343, line: 22, baseType: !367, size: 128, align: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3338, file: !3339, line: 14, baseType: !3350, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3338, file: !3339, line: 15, baseType: !3352, size: 64, offset: 384)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3353, line: 16, size: 64, elements: !3354)
!3353 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3352, file: !3353, line: 17, baseType: !1243, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3338, file: !3339, line: 16, baseType: !1508, size: 128, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3338, file: !3339, line: 17, baseType: !802, size: 32, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !602, file: !44, line: 1465, baseType: !184, size: 64, offset: 6400)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !602, file: !44, line: 1468, baseType: !417, size: 32, offset: 6464)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !602, file: !44, line: 1470, baseType: !541, size: 64, offset: 6528)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !602, file: !44, line: 1471, baseType: !541, size: 64, offset: 6592)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !602, file: !44, line: 1473, baseType: !419, size: 32, offset: 6656)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !602, file: !44, line: 1474, baseType: !3364, size: 64, offset: 6720)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !602, file: !44, line: 1477, baseType: !3367, size: 256, offset: 6784)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !2900)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !602, file: !44, line: 1478, baseType: !3369, size: 128, offset: 7040)
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3370, line: 18, baseType: !3371)
!3370 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3370, line: 16, size: 128, elements: !3372)
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3371, file: !3370, line: 17, baseType: !3374, size: 128)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 128, elements: !1762)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !602, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !602, file: !44, line: 1481, baseType: !3377, size: 32, offset: 7200)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !190, line: 150, baseType: !7)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !602, file: !44, line: 1487, baseType: !728, size: 192, offset: 7232)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !602, file: !44, line: 1493, baseType: !201, size: 64, offset: 7424)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !602, file: !44, line: 1495, baseType: !3381, size: 64, offset: 7488)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !382, line: 135, size: 1024, align: 512, elements: !3384)
!3384 = !{!3385, !3389, !3390, !3397, !3403, !3407, !3411, !3415, !3416, !3420, !3424, !3429, !3433}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3383, file: !382, line: 136, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!207, !384, !7}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3383, file: !382, line: 137, baseType: !3386, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3383, file: !382, line: 138, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!207, !3394, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3383, file: !382, line: 139, baseType: !3398, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!207, !3394, !7, !201, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3383, file: !382, line: 141, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!207, !3394}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3383, file: !382, line: 142, baseType: !3408, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!207, !384}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3383, file: !382, line: 143, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !384}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3383, file: !382, line: 144, baseType: !3412, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3383, file: !382, line: 145, baseType: !3417, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !384, !431}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3383, file: !382, line: 146, baseType: !3421, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!276, !384, !276, !207}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3383, file: !382, line: 147, baseType: !3425, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!380, !3428}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3383, file: !382, line: 148, baseType: !3430, size: 64, offset: 704)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!207, !551, !492}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3383, file: !382, line: 149, baseType: !3434, size: 64, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!384, !384, !3437}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !602, file: !44, line: 1500, baseType: !207, size: 32, offset: 7552)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !602, file: !44, line: 1502, baseType: !3441, size: 448, offset: 7616)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3085, line: 60, size: 448, elements: !3442)
!3442 = !{!3443, !3448, !3449, !3450, !3451, !3452, !3453}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3441, file: !3085, line: 61, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!326, !3447, !3083}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3441, file: !3085, line: 63, baseType: !3444, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3441, file: !3085, line: 66, baseType: !311, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3441, file: !3085, line: 67, baseType: !207, size: 32, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3441, file: !3085, line: 68, baseType: !7, size: 32, offset: 224)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3441, file: !3085, line: 71, baseType: !189, size: 128, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3441, file: !3085, line: 77, baseType: !3454, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !602, file: !44, line: 1505, baseType: !732, size: 64, offset: 8064)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !602, file: !44, line: 1508, baseType: !732, size: 64, offset: 8128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !602, file: !44, line: 1511, baseType: !207, size: 32, offset: 8192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !602, file: !44, line: 1514, baseType: !957, size: 32, offset: 8224)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !602, file: !44, line: 1517, baseType: !3460, size: 64, offset: 8256)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2151, line: 18, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !602, file: !44, line: 1518, baseType: !640, size: 64, offset: 8320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !602, file: !44, line: 1525, baseType: !1740, size: 64, offset: 8384)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !602, file: !44, line: 1532, baseType: !3465, size: 64, offset: 8448)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3466, line: 52, size: 64, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3465, file: !3466, line: 53, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3466, line: 40, size: 256, elements: !3471)
!3471 = !{!3472, !3473, !3478}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3470, file: !3466, line: 42, baseType: !235)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3470, file: !3466, line: 44, baseType: !3474, size: 192)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3466, line: 28, size: 192, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3474, file: !3466, line: 29, baseType: !189, size: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3474, file: !3466, line: 31, baseType: !311, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3470, file: !3466, line: 49, baseType: !311, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !602, file: !44, line: 1533, baseType: !3465, size: 64, offset: 8512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !44, line: 1534, baseType: !367, size: 128, align: 64, offset: 8576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !602, file: !44, line: 1535, baseType: !2150, size: 256, offset: 8704)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !602, file: !44, line: 1537, baseType: !728, size: 192, offset: 8960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !602, file: !44, line: 1542, baseType: !207, size: 32, offset: 9152)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !602, file: !44, line: 1545, baseType: !235, offset: 9184)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !602, file: !44, line: 1546, baseType: !189, size: 128, offset: 9216)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !602, file: !44, line: 1548, baseType: !235, offset: 9344)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !602, file: !44, line: 1549, baseType: !189, size: 128, offset: 9344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !432, file: !44, line: 624, baseType: !788, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !432, file: !44, line: 631, baseType: !326, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !44, line: 639, baseType: !3491, size: 32, offset: 384)
!3491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !44, line: 639, size: 32, elements: !3492)
!3492 = !{!3493, !3495}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3491, file: !44, line: 640, baseType: !3494, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3491, file: !44, line: 641, baseType: !7, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !432, file: !44, line: 643, baseType: !515, size: 32, offset: 416)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !432, file: !44, line: 644, baseType: !533, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !432, file: !44, line: 645, baseType: !537, size: 128, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !432, file: !44, line: 646, baseType: !537, size: 128, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !432, file: !44, line: 647, baseType: !537, size: 128, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !432, file: !44, line: 648, baseType: !235, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !432, file: !44, line: 649, baseType: !318, size: 16, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !432, file: !44, line: 650, baseType: !1379, size: 8, offset: 912)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !432, file: !44, line: 651, baseType: !1379, size: 8, offset: 920)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !432, file: !44, line: 652, baseType: !3257, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !432, file: !44, line: 659, baseType: !326, size: 64, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !432, file: !44, line: 660, baseType: !822, size: 256, offset: 1088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !432, file: !44, line: 662, baseType: !326, size: 64, offset: 1344)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !432, file: !44, line: 663, baseType: !326, size: 64, offset: 1408)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !432, file: !44, line: 665, baseType: !644, size: 128, offset: 1472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !432, file: !44, line: 666, baseType: !189, size: 128, offset: 1600)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !432, file: !44, line: 675, baseType: !189, size: 128, offset: 1728)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !432, file: !44, line: 676, baseType: !189, size: 128, offset: 1856)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !432, file: !44, line: 677, baseType: !189, size: 128, offset: 1984)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !44, line: 678, baseType: !3516, size: 128, offset: 2112)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !44, line: 678, size: 128, elements: !3517)
!3517 = !{!3518, !3519}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3516, file: !44, line: 679, baseType: !640, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3516, file: !44, line: 680, baseType: !367, size: 128, align: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !432, file: !44, line: 682, baseType: !734, size: 64, offset: 2240)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !432, file: !44, line: 683, baseType: !734, size: 64, offset: 2304)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !432, file: !44, line: 684, baseType: !802, size: 32, offset: 2368)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !432, file: !44, line: 685, baseType: !802, size: 32, offset: 2400)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !432, file: !44, line: 686, baseType: !802, size: 32, offset: 2432)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !432, file: !44, line: 688, baseType: !802, size: 32, offset: 2464)
!3526 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !44, line: 690, baseType: !3527, size: 64, offset: 2496)
!3527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !44, line: 690, size: 64, elements: !3528)
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3527, file: !44, line: 691, baseType: !1862, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3527, file: !44, line: 692, baseType: !669, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !432, file: !44, line: 694, baseType: !3532, size: 64, offset: 2560)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3538}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3533, file: !44, line: 1101, baseType: !235)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3533, file: !44, line: 1102, baseType: !189, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3533, file: !44, line: 1103, baseType: !189, size: 128, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3533, file: !44, line: 1104, baseType: !189, size: 128, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !432, file: !44, line: 695, baseType: !789, size: 1216, align: 64, offset: 2624)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !432, file: !44, line: 696, baseType: !189, size: 128, offset: 3840)
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !44, line: 697, baseType: !3542, size: 64, offset: 3968)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !44, line: 697, size: 64, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3542, file: !44, line: 698, baseType: !2057, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3542, file: !44, line: 699, baseType: !3282, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3542, file: !44, line: 700, baseType: !1855, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3542, file: !44, line: 701, baseType: !276, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3542, file: !44, line: 702, baseType: !7, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !432, file: !44, line: 705, baseType: !419, size: 32, offset: 4032)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !432, file: !44, line: 708, baseType: !419, size: 32, offset: 4064)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !432, file: !44, line: 709, baseType: !3364, size: 64, offset: 4096)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !432, file: !44, line: 720, baseType: !184, size: 64, offset: 4160)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !385, file: !382, line: 98, baseType: !3554, size: 256, offset: 448)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 256, elements: !2900)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !385, file: !382, line: 101, baseType: !3556, size: 32, offset: 704)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3557, line: 25, size: 32, elements: !3558)
!3557 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3558 = !{!3559}
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !3557, line: 26, baseType: !3560, size: 32)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3556, file: !3557, line: 26, size: 32, elements: !3561)
!3561 = !{!3562}
!3562 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !3557, line: 30, baseType: !3563, size: 32)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3560, file: !3557, line: 30, size: 32, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3563, file: !3557, line: 31, baseType: !235)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3563, file: !3557, line: 32, baseType: !207, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !385, file: !382, line: 102, baseType: !3381, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !385, file: !382, line: 103, baseType: !601, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !385, file: !382, line: 104, baseType: !326, size: 64, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !385, file: !382, line: 105, baseType: !184, size: 64, offset: 960)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !382, line: 107, baseType: !3572, size: 128, offset: 1024)
!3572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !382, line: 107, size: 128, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3572, file: !382, line: 108, baseType: !189, size: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3572, file: !382, line: 109, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !385, file: !382, line: 111, baseType: !189, size: 128, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !385, file: !382, line: 112, baseType: !189, size: 128, offset: 1280)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !385, file: !382, line: 120, baseType: !3580, size: 128, offset: 1408)
!3580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !382, line: 116, size: 128, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3580, file: !382, line: 117, baseType: !644, size: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3580, file: !382, line: 118, baseType: !399, size: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3580, file: !382, line: 119, baseType: !367, size: 128, align: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !355, file: !44, line: 922, baseType: !431, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !355, file: !44, line: 923, baseType: !1862, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !355, file: !44, line: 929, baseType: !235, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !355, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !355, file: !44, line: 931, baseType: !732, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !355, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !355, file: !44, line: 933, baseType: !3377, size: 32, offset: 544)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !355, file: !44, line: 934, baseType: !728, size: 192, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !355, file: !44, line: 935, baseType: !533, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !355, file: !44, line: 936, baseType: !3595, size: 192, offset: 832)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3595, file: !44, line: 886, baseType: !1961)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3595, file: !44, line: 887, baseType: !1498, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3595, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3595, file: !44, line: 889, baseType: !437, size: 32, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3595, file: !44, line: 889, baseType: !437, size: 32, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3595, file: !44, line: 890, baseType: !207, size: 32, offset: 160)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !355, file: !44, line: 937, baseType: !1574, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !355, file: !44, line: 938, baseType: !3605, size: 256, offset: 1088)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3605, file: !44, line: 897, baseType: !326, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3605, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3605, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3605, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3605, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3605, file: !44, line: 904, baseType: !533, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !355, file: !44, line: 940, baseType: !423, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !355, file: !44, line: 945, baseType: !184, size: 64, offset: 1408)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !355, file: !44, line: 949, baseType: !189, size: 128, offset: 1472)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !355, file: !44, line: 950, baseType: !189, size: 128, offset: 1600)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !355, file: !44, line: 952, baseType: !788, size: 64, offset: 1728)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !355, file: !44, line: 953, baseType: !957, size: 32, offset: 1792)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !355, file: !44, line: 954, baseType: !957, size: 32, offset: 1824)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !345, file: !301, line: 174, baseType: !351, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !345, file: !301, line: 176, baseType: !3622, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!207, !354, !228, !344, !1030}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !333, file: !301, line: 90, baseType: !328, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !333, file: !301, line: 91, baseType: !3627, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !291, file: !223, line: 143, baseType: !3629, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!3632, !228}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3635)
!3635 = !{!3636, !3637, !3641, !3645, !3651, !3655}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3634, file: !61, line: 40, baseType: !60, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3634, file: !61, line: 41, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!492}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3634, file: !61, line: 42, baseType: !3642, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!184}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3634, file: !61, line: 43, baseType: !3646, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!2797, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3634, file: !61, line: 44, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!2797}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3634, file: !61, line: 45, baseType: !470, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !291, file: !223, line: 144, baseType: !3657, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!2797, !228}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !291, file: !223, line: 145, baseType: !3661, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !228, !3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !222, file: !223, line: 70, baseType: !3667, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !621, line: 123, size: 1024, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3786, !3787, !3788, !3789, !3790}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3668, file: !621, line: 124, baseType: !802, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3668, file: !621, line: 125, baseType: !802, size: 32, offset: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3668, file: !621, line: 135, baseType: !3667, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3668, file: !621, line: 136, baseType: !201, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3668, file: !621, line: 138, baseType: !815, size: 192, align: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3668, file: !621, line: 140, baseType: !2797, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3668, file: !621, line: 141, baseType: !7, size: 32, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !621, line: 142, baseType: !3678, size: 256, offset: 512)
!3678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3668, file: !621, line: 142, size: 256, elements: !3679)
!3679 = !{!3680, !3726, !3730}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3678, file: !621, line: 143, baseType: !3681, size: 192)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !621, line: 91, size: 192, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3681, file: !621, line: 92, baseType: !326, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3681, file: !621, line: 94, baseType: !811, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3681, file: !621, line: 100, baseType: !3686, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !621, line: 180, size: 704, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3698, !3699, !3700, !3724, !3725}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3687, file: !621, line: 182, baseType: !3667, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3687, file: !621, line: 183, baseType: !7, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3687, file: !621, line: 186, baseType: !3692, size: 192, offset: 128)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3693, line: 19, size: 192, elements: !3694)
!3693 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3694 = !{!3695, !3696, !3697}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3692, file: !3693, line: 20, baseType: !793, size: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3692, file: !3693, line: 21, baseType: !7, size: 32, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3692, file: !3693, line: 22, baseType: !7, size: 32, offset: 160)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3687, file: !621, line: 187, baseType: !417, size: 32, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3687, file: !621, line: 188, baseType: !417, size: 32, offset: 352)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3687, file: !621, line: 189, baseType: !3701, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !621, line: 168, size: 320, elements: !3703)
!3703 = !{!3704, !3708, !3712, !3716, !3720}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3702, file: !621, line: 169, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!207, !716, !3686}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3702, file: !621, line: 171, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!207, !3667, !201, !317}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3702, file: !621, line: 173, baseType: !3713, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!207, !3667}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3702, file: !621, line: 174, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!207, !3667, !3667, !201}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3702, file: !621, line: 176, baseType: !3721, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!207, !716, !3667, !3686}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3687, file: !621, line: 192, baseType: !189, size: 128, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3687, file: !621, line: 194, baseType: !1508, size: 128, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3678, file: !621, line: 144, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !621, line: 103, size: 64, elements: !3728)
!3728 = !{!3729}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3727, file: !621, line: 104, baseType: !3667, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3678, file: !621, line: 145, baseType: !3731, size: 256)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !621, line: 107, size: 256, elements: !3732)
!3732 = !{!3733, !3781, !3784, !3785}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3731, file: !621, line: 108, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !621, line: 217, size: 768, elements: !3737)
!3737 = !{!3738, !3758, !3762, !3763, !3764, !3765, !3766, !3770, !3771, !3772, !3773, !3777}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3736, file: !621, line: 222, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!207, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !621, line: 197, size: 1088, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3743, file: !621, line: 199, baseType: !3667, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3743, file: !621, line: 200, baseType: !354, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3743, file: !621, line: 201, baseType: !716, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3743, file: !621, line: 202, baseType: !184, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3743, file: !621, line: 205, baseType: !728, size: 192, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3743, file: !621, line: 206, baseType: !728, size: 192, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3743, file: !621, line: 207, baseType: !207, size: 32, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3743, file: !621, line: 208, baseType: !189, size: 128, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3743, file: !621, line: 209, baseType: !276, size: 64, offset: 832)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3743, file: !621, line: 211, baseType: !323, size: 64, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3743, file: !621, line: 212, baseType: !492, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3743, file: !621, line: 213, baseType: !492, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3743, file: !621, line: 214, baseType: !1058, size: 64, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3736, file: !621, line: 223, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3742}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3736, file: !621, line: 236, baseType: !760, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3736, file: !621, line: 238, baseType: !747, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3736, file: !621, line: 239, baseType: !756, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3736, file: !621, line: 240, baseType: !752, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3736, file: !621, line: 242, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!307, !3742, !276, !323, !533}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3736, file: !621, line: 252, baseType: !323, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3736, file: !621, line: 259, baseType: !492, size: 8, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3736, file: !621, line: 260, baseType: !3767, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3736, file: !621, line: 263, baseType: !3774, size: 64, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!1903, !3742, !1905}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3736, file: !621, line: 266, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!207, !3742, !1030}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3731, file: !621, line: 109, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !621, line: 31, flags: DIFlagFwdDecl)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3731, file: !621, line: 110, baseType: !533, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3731, file: !621, line: 111, baseType: !3667, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3668, file: !621, line: 148, baseType: !184, size: 64, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3668, file: !621, line: 154, baseType: !423, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3668, file: !621, line: 156, baseType: !318, size: 16, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3668, file: !621, line: 157, baseType: !317, size: 16, offset: 912)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3668, file: !621, line: 158, baseType: !3791, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !621, line: 32, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !222, file: !223, line: 71, baseType: !1840, size: 32, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !222, file: !223, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !222, file: !223, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !222, file: !223, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !222, file: !223, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !222, file: !223, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !73, line: 463, baseType: !1845, size: 64, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !219, file: !73, line: 465, baseType: !3801, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !219, file: !73, line: 467, baseType: !201, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !73, line: 468, baseType: !3805, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3815, !3820, !3824}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3807, file: !73, line: 88, baseType: !201, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3807, file: !73, line: 89, baseType: !330, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3807, file: !73, line: 90, baseType: !3812, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!207, !1845, !271}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3807, file: !73, line: 91, baseType: !3816, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!276, !1845, !3819, !3664, !3665}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3807, file: !73, line: 93, baseType: !3821, size: 64, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !1845}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3807, file: !73, line: 95, baseType: !3825, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3827)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3828)
!3828 = !{!3829, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3827, file: !80, line: 279, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!207, !1845}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3827, file: !80, line: 280, baseType: !3821, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3827, file: !80, line: 281, baseType: !3830, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3827, file: !80, line: 282, baseType: !3830, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3827, file: !80, line: 283, baseType: !3830, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3827, file: !80, line: 284, baseType: !3830, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3827, file: !80, line: 285, baseType: !3830, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3827, file: !80, line: 286, baseType: !3830, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3827, file: !80, line: 287, baseType: !3830, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3827, file: !80, line: 288, baseType: !3830, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3827, file: !80, line: 289, baseType: !3830, size: 64, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3827, file: !80, line: 290, baseType: !3830, size: 64, offset: 704)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3827, file: !80, line: 291, baseType: !3830, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3827, file: !80, line: 292, baseType: !3830, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3827, file: !80, line: 293, baseType: !3830, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3827, file: !80, line: 294, baseType: !3830, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3827, file: !80, line: 295, baseType: !3830, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3827, file: !80, line: 296, baseType: !3830, size: 64, offset: 1088)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3827, file: !80, line: 297, baseType: !3830, size: 64, offset: 1152)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3827, file: !80, line: 298, baseType: !3830, size: 64, offset: 1216)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3827, file: !80, line: 299, baseType: !3830, size: 64, offset: 1280)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3827, file: !80, line: 300, baseType: !3830, size: 64, offset: 1344)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3827, file: !80, line: 301, baseType: !3830, size: 64, offset: 1408)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !219, file: !73, line: 470, baseType: !3856, size: 64, offset: 768)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3858, line: 82, size: 1408, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3939, !3942, !3943}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3857, file: !3858, line: 83, baseType: !201, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3857, file: !3858, line: 84, baseType: !201, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3857, file: !3858, line: 85, baseType: !1845, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3857, file: !3858, line: 86, baseType: !330, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3857, file: !3858, line: 87, baseType: !330, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3857, file: !3858, line: 88, baseType: !330, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3857, file: !3858, line: 90, baseType: !3867, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!207, !1845, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3892, !3903, !3904, !3905, !3906, !3907, !3915, !3916, !3917, !3918, !3919, !3920}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3871, file: !67, line: 96, baseType: !201, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3871, file: !67, line: 97, baseType: !3856, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3871, file: !67, line: 99, baseType: !635, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3871, file: !67, line: 100, baseType: !201, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3871, file: !67, line: 102, baseType: !492, size: 8, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3871, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3871, file: !67, line: 105, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3883, line: 262, size: 1600, elements: !3884)
!3883 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3884 = !{!3885, !3886, !3887, !3891}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3882, file: !3883, line: 263, baseType: !3367, size: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3882, file: !3883, line: 264, baseType: !3367, size: 256, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3882, file: !3883, line: 265, baseType: !3888, size: 1024, offset: 512)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 1024, elements: !3889)
!3889 = !{!3890}
!3890 = !DISubrange(count: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3882, file: !3883, line: 266, baseType: !2797, size: 64, offset: 1536)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3871, file: !67, line: 106, baseType: !3893, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3883, line: 210, size: 256, elements: !3896)
!3896 = !{!3897, !3899, !3901, !3902}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3895, file: !3883, line: 211, baseType: !3898, size: 72)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 72, elements: !2355)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3895, file: !3883, line: 212, baseType: !3900, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3883, line: 14, baseType: !326)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3895, file: !3883, line: 213, baseType: !419, size: 32, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3895, file: !3883, line: 214, baseType: !419, size: 32, offset: 224)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3871, file: !67, line: 108, baseType: !3830, size: 64, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3871, file: !67, line: 109, baseType: !3821, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3871, file: !67, line: 110, baseType: !3830, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3871, file: !67, line: 111, baseType: !3821, size: 64, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3871, file: !67, line: 112, baseType: !3908, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!207, !1845, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3913)
!3913 = !{!3914}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3912, file: !80, line: 51, baseType: !207, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3871, file: !67, line: 113, baseType: !3830, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3871, file: !67, line: 114, baseType: !330, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3871, file: !67, line: 115, baseType: !330, size: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3871, file: !67, line: 117, baseType: !3825, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3871, file: !67, line: 118, baseType: !3821, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3871, file: !67, line: 120, baseType: !3921, size: 64, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3857, file: !3858, line: 91, baseType: !3812, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3857, file: !3858, line: 92, baseType: !3830, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3857, file: !3858, line: 93, baseType: !3821, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3857, file: !3858, line: 94, baseType: !3830, size: 64, offset: 640)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3857, file: !3858, line: 95, baseType: !3821, size: 64, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3857, file: !3858, line: 97, baseType: !3830, size: 64, offset: 768)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3857, file: !3858, line: 98, baseType: !3830, size: 64, offset: 832)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3857, file: !3858, line: 100, baseType: !3908, size: 64, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3857, file: !3858, line: 101, baseType: !3830, size: 64, offset: 960)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3857, file: !3858, line: 103, baseType: !3830, size: 64, offset: 1024)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3857, file: !3858, line: 105, baseType: !3830, size: 64, offset: 1088)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3857, file: !3858, line: 107, baseType: !3825, size: 64, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3857, file: !3858, line: 109, baseType: !3936, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3938)
!3938 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3858, line: 109, flags: DIFlagFwdDecl)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3857, file: !3858, line: 111, baseType: !3940, size: 64, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3858, line: 111, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3857, file: !3858, line: 112, baseType: !650, offset: 1344)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3857, file: !3858, line: 114, baseType: !492, size: 8, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !219, file: !73, line: 471, baseType: !3870, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !219, file: !73, line: 473, baseType: !184, size: 64, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !219, file: !73, line: 475, baseType: !184, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !219, file: !73, line: 480, baseType: !728, size: 192, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !219, file: !73, line: 484, baseType: !3949, size: 576, offset: 1216)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3949, file: !73, line: 362, baseType: !189, size: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3949, file: !73, line: 363, baseType: !189, size: 128, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3949, file: !73, line: 364, baseType: !189, size: 128, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3949, file: !73, line: 365, baseType: !189, size: 128, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3949, file: !73, line: 366, baseType: !492, size: 8, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3949, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !219, file: !73, line: 485, baseType: !3958, size: 2304, offset: 1792)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4055, !4059}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3958, file: !80, line: 566, baseType: !3911, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3958, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3958, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3958, file: !80, line: 569, baseType: !492, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3958, file: !80, line: 570, baseType: !492, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3958, file: !80, line: 571, baseType: !492, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3958, file: !80, line: 572, baseType: !492, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3958, file: !80, line: 573, baseType: !492, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3958, file: !80, line: 574, baseType: !492, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3958, file: !80, line: 575, baseType: !492, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3958, file: !80, line: 576, baseType: !492, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3958, file: !80, line: 577, baseType: !417, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3958, file: !80, line: 578, baseType: !235, offset: 96)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3958, file: !80, line: 580, baseType: !189, size: 128, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3958, file: !80, line: 581, baseType: !1529, size: 192, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3958, file: !80, line: 582, baseType: !3976, size: 64, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3978, line: 43, size: 1472, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3987, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3977, file: !3978, line: 44, baseType: !201, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3977, file: !3978, line: 45, baseType: !207, size: 32, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3977, file: !3978, line: 46, baseType: !189, size: 128, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3977, file: !3978, line: 47, baseType: !235, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3977, file: !3978, line: 48, baseType: !3985, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3977, file: !3978, line: 49, baseType: !3988, size: 320, offset: 320)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3989, line: 11, size: 320, elements: !3990)
!3989 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3990 = !{!3991, !3992, !3993, !3998}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3988, file: !3989, line: 16, baseType: !644, size: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3988, file: !3989, line: 17, baseType: !326, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3988, file: !3989, line: 18, baseType: !3994, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3988, file: !3989, line: 19, baseType: !417, size: 32, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3977, file: !3978, line: 50, baseType: !326, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3977, file: !3978, line: 51, baseType: !1327, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3977, file: !3978, line: 52, baseType: !1327, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3977, file: !3978, line: 53, baseType: !1327, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3977, file: !3978, line: 54, baseType: !1327, size: 64, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3977, file: !3978, line: 55, baseType: !1327, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3977, file: !3978, line: 56, baseType: !326, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3977, file: !3978, line: 57, baseType: !326, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3977, file: !3978, line: 58, baseType: !326, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3977, file: !3978, line: 59, baseType: !326, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3977, file: !3978, line: 60, baseType: !326, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3977, file: !3978, line: 61, baseType: !1845, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3977, file: !3978, line: 62, baseType: !492, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3977, file: !3978, line: 63, baseType: !492, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3958, file: !80, line: 583, baseType: !492, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3958, file: !80, line: 584, baseType: !492, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3958, file: !80, line: 585, baseType: !492, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3958, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3958, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3958, file: !80, line: 592, baseType: !1319, size: 512, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3958, file: !80, line: 593, baseType: !423, size: 64, offset: 1088)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3958, file: !80, line: 594, baseType: !2150, size: 256, offset: 1152)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3958, file: !80, line: 595, baseType: !1508, size: 128, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3958, file: !80, line: 596, baseType: !3985, size: 64, offset: 1536)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3958, file: !80, line: 597, baseType: !802, size: 32, offset: 1600)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3958, file: !80, line: 598, baseType: !802, size: 32, offset: 1632)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3958, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3958, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3958, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3958, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3958, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3958, file: !80, line: 604, baseType: !492, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3958, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3958, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3958, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3958, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3958, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3958, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3958, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3958, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3958, file: !80, line: 613, baseType: !207, size: 32, offset: 1792)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3958, file: !80, line: 614, baseType: !207, size: 32, offset: 1824)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3958, file: !80, line: 615, baseType: !423, size: 64, offset: 1856)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3958, file: !80, line: 616, baseType: !423, size: 64, offset: 1920)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3958, file: !80, line: 617, baseType: !423, size: 64, offset: 1984)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3958, file: !80, line: 618, baseType: !423, size: 64, offset: 2048)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3958, file: !80, line: 620, baseType: !4046, size: 64, offset: 2112)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4047, file: !80, line: 537, baseType: !235)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4047, file: !80, line: 538, baseType: !7, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4047, file: !80, line: 540, baseType: !189, size: 128, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4047, file: !80, line: 543, baseType: !4053, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3958, file: !80, line: 621, baseType: !4056, size: 64, offset: 2176)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !1845, !1471}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3958, file: !80, line: 622, baseType: !4060, size: 64, offset: 2240)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !219, file: !73, line: 486, baseType: !4063, size: 64, offset: 4096)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4072, !4073, !4074}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4064, file: !80, line: 643, baseType: !3827, size: 1472)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4064, file: !80, line: 644, baseType: !3830, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4064, file: !80, line: 645, baseType: !4069, size: 64, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !1845, !492}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4064, file: !80, line: 646, baseType: !3830, size: 64, offset: 1600)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4064, file: !80, line: 647, baseType: !3821, size: 64, offset: 1664)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4064, file: !80, line: 648, baseType: !3821, size: 64, offset: 1728)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !219, file: !73, line: 493, baseType: !4076, size: 64, offset: 4160)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4412, !4413, !4414, !4415, !4416, !4417, !4540, !4541, !4542, !4543, !4544, !4545, !4546}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4077, file: !94, line: 163, baseType: !189, size: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4077, file: !94, line: 164, baseType: !201, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4077, file: !94, line: 165, baseType: !4082, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !4085)
!4085 = !{!4086, !4204, !4215, !4220, !4224, !4231, !4235, !4239, !4404, !4408}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4084, file: !94, line: 106, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!207, !4076, !4090, !93}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4092, line: 51, size: 1344, elements: !4093)
!4092 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4093 = !{!4094, !4095, !4097, !4098, !4188, !4197, !4198, !4199, !4200, !4201, !4202, !4203}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4091, file: !4092, line: 52, baseType: !201, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4091, file: !4092, line: 53, baseType: !4096, size: 32, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4092, line: 28, baseType: !417)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4091, file: !4092, line: 54, baseType: !201, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4091, file: !4092, line: 55, baseType: !4099, size: 192, offset: 192)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4100, line: 17, size: 192, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4101 = !{!4102, !4104, !4187}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4099, file: !4100, line: 18, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4099, file: !4100, line: 19, baseType: !4105, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4100, line: 110, size: 1152, elements: !4108)
!4108 = !{!4109, !4113, !4117, !4123, !4129, !4133, !4137, !4142, !4146, !4147, !4151, !4155, !4159, !4170, !4171, !4172, !4173, !4183}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4107, file: !4100, line: 111, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!4103, !4103}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4107, file: !4100, line: 112, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4103}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4107, file: !4100, line: 113, baseType: !4118, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!492, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4107, file: !4100, line: 114, baseType: !4124, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!2797, !4121, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4107, file: !4100, line: 116, baseType: !4130, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!492, !4121, !201}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4107, file: !4100, line: 118, baseType: !4134, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!207, !4121, !201, !7, !184, !323}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4107, file: !4100, line: 123, baseType: !4138, size: 64, offset: 384)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!207, !4121, !201, !4141, !323}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4107, file: !4100, line: 126, baseType: !4143, size: 64, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!201, !4121}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4107, file: !4100, line: 127, baseType: !4143, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4107, file: !4100, line: 128, baseType: !4148, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!4103, !4121}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4107, file: !4100, line: 130, baseType: !4152, size: 64, offset: 640)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!4103, !4121, !4103}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4107, file: !4100, line: 133, baseType: !4156, size: 64, offset: 704)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!4103, !4121, !201}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4107, file: !4100, line: 135, baseType: !4160, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!207, !4121, !201, !201, !7, !7, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4100, line: 43, size: 640, elements: !4165)
!4165 = !{!4166, !4167, !4168}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4164, file: !4100, line: 44, baseType: !4103, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4164, file: !4100, line: 45, baseType: !7, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4164, file: !4100, line: 46, baseType: !4169, size: 512, offset: 128)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 512, elements: !1357)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4107, file: !4100, line: 140, baseType: !4152, size: 64, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4107, file: !4100, line: 143, baseType: !4148, size: 64, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4107, file: !4100, line: 145, baseType: !4110, size: 64, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4107, file: !4100, line: 146, baseType: !4174, size: 64, offset: 1024)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!207, !4121, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4100, line: 29, size: 128, elements: !4179)
!4179 = !{!4180, !4181, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4178, file: !4100, line: 30, baseType: !7, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4178, file: !4100, line: 31, baseType: !7, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4178, file: !4100, line: 32, baseType: !4121, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4107, file: !4100, line: 148, baseType: !4184, size: 64, offset: 1088)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!207, !4121, !1845}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4099, file: !4100, line: 20, baseType: !1845, size: 64, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4091, file: !4092, line: 57, baseType: !4189, size: 64, offset: 384)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4092, line: 31, size: 704, elements: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4190, file: !4092, line: 32, baseType: !276, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4190, file: !4092, line: 33, baseType: !207, size: 32, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4190, file: !4092, line: 34, baseType: !184, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4190, file: !4092, line: 35, baseType: !4189, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4190, file: !4092, line: 43, baseType: !345, size: 448, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4091, file: !4092, line: 58, baseType: !4189, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4091, file: !4092, line: 59, baseType: !4090, size: 64, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4091, file: !4092, line: 60, baseType: !4090, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4091, file: !4092, line: 61, baseType: !4090, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4091, file: !4092, line: 63, baseType: !222, size: 512, offset: 704)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4091, file: !4092, line: 65, baseType: !326, size: 64, offset: 1216)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4091, file: !4092, line: 66, baseType: !184, size: 64, offset: 1280)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4084, file: !94, line: 108, baseType: !4205, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!207, !4076, !4208, !93}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !4210)
!4210 = !{!4211, !4212, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4209, file: !94, line: 64, baseType: !4103, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4209, file: !94, line: 65, baseType: !207, size: 32, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4209, file: !94, line: 66, baseType: !4214, size: 512, offset: 96)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !1762)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4084, file: !94, line: 110, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!207, !4076, !7, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !190, line: 164, baseType: !326)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4084, file: !94, line: 111, baseType: !4221, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4076, !7}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4084, file: !94, line: 112, baseType: !4225, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!207, !4076, !4090, !4228, !7, !4230, !3350}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4084, file: !94, line: 117, baseType: !4232, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!207, !4076, !7, !7, !184}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4084, file: !94, line: 119, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4076, !7, !7}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4084, file: !94, line: 121, baseType: !4240, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!207, !4076, !4243, !492}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4322, !4401, !4402, !4403}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4244, file: !115, line: 176, baseType: !417, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4244, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !4244, file: !115, line: 178, baseType: !326, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4244, file: !115, line: 179, baseType: !4250, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4319}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !4251, file: !115, line: 146, baseType: !7, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4251, file: !115, line: 150, baseType: !184, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !4251, file: !115, line: 151, baseType: !4256, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !4258, line: 85, size: 768, elements: !4259)
!4258 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4270, !4276, !4280, !4281}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4257, file: !4258, line: 87, baseType: !189, size: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4257, file: !4258, line: 88, baseType: !7, size: 32, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !4257, file: !4258, line: 89, baseType: !7, size: 32, offset: 160)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4257, file: !4258, line: 90, baseType: !1845, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4257, file: !4258, line: 91, baseType: !4265, size: 96, offset: 256)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !4258, line: 8, size: 96, elements: !4266)
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !4265, file: !4258, line: 9, baseType: !417, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !4265, file: !4258, line: 10, baseType: !417, size: 32, offset: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4265, file: !4258, line: 11, baseType: !417, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4257, file: !4258, line: 92, baseType: !4271, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !4273)
!4273 = !{!4274, !4275}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4272, file: !108, line: 309, baseType: !1394, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4272, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !4257, file: !4258, line: 97, baseType: !4277, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !4256, !184}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !4257, file: !4258, line: 98, baseType: !184, size: 64, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !4257, file: !4258, line: 100, baseType: !4282, size: 192, offset: 576)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4257, file: !4258, line: 100, size: 192, elements: !4283)
!4283 = !{!4284, !4304, !4311, !4315}
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !4282, file: !4258, line: 102, baseType: !4285, size: 192)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4258, line: 102, size: 192, elements: !4286)
!4286 = !{!4287, !4288, !4299}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !4285, file: !4258, line: 103, baseType: !417, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !4285, file: !4258, line: 113, baseType: !4289, size: 64, offset: 32)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !4258, line: 104, size: 64, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !4289, file: !4258, line: 105, baseType: !1379, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !4289, file: !4258, line: 106, baseType: !1379, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !4289, file: !4258, line: 107, baseType: !1379, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !4289, file: !4258, line: 108, baseType: !1379, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !4289, file: !4258, line: 109, baseType: !1379, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !4289, file: !4258, line: 110, baseType: !1379, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !4289, file: !4258, line: 111, baseType: !907, size: 16, offset: 16)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !4289, file: !4258, line: 112, baseType: !7, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !4258, line: 114, baseType: !4300, size: 64, offset: 128)
!4300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4285, file: !4258, line: 114, size: 64, elements: !4301)
!4301 = !{!4302, !4303}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !4300, file: !4258, line: 115, baseType: !1379, size: 8)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !4300, file: !4258, line: 116, baseType: !184, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !4282, file: !4258, line: 127, baseType: !4305, size: 128)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !4258, line: 37, size: 128, elements: !4306)
!4306 = !{!4307, !4310}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !4305, file: !4258, line: 38, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !4258, line: 19, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4305, file: !4258, line: 39, baseType: !907, size: 16, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !4282, file: !4258, line: 128, baseType: !4312, size: 16)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !4258, line: 46, size: 16, elements: !4313)
!4313 = !{!4314}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4312, file: !4258, line: 47, baseType: !907, size: 16)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !4282, file: !4258, line: 129, baseType: !4316, size: 16)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !4258, line: 54, size: 16, elements: !4317)
!4317 = !{!4318}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !4316, file: !4258, line: 55, baseType: !907, size: 16)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4251, file: !115, line: 152, baseType: !4320, size: 64, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1393, line: 756, baseType: !4321)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 64, elements: !1398)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4244, file: !115, line: 180, baseType: !4323, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4332, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4349, !4353, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4370, !4371, !4372, !4377, !4378, !4382, !4386, !4390, !4394, !4398, !4399, !4400}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !4324, file: !115, line: 504, baseType: !1845, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4324, file: !115, line: 505, baseType: !201, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !4324, file: !115, line: 506, baseType: !4329, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!7, !4243}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !4324, file: !115, line: 507, baseType: !4333, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4243}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4324, file: !115, line: 508, baseType: !4333, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4324, file: !115, line: 509, baseType: !4333, size: 64, offset: 320)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !4324, file: !115, line: 511, baseType: !4333, size: 64, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4324, file: !115, line: 512, baseType: !4333, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !4324, file: !115, line: 513, baseType: !4333, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4324, file: !115, line: 514, baseType: !4333, size: 64, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !4324, file: !115, line: 515, baseType: !4333, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !4324, file: !115, line: 517, baseType: !4344, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!207, !4243, !4347, !492}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !4324, file: !115, line: 518, baseType: !4350, size: 64, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!207, !4243}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !4324, file: !115, line: 519, baseType: !4354, size: 64, offset: 832)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!207, !4243, !7}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !4324, file: !115, line: 520, baseType: !4354, size: 64, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !4324, file: !115, line: 522, baseType: !4333, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !4324, file: !115, line: 523, baseType: !4333, size: 64, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !4324, file: !115, line: 525, baseType: !4333, size: 64, offset: 1088)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !4324, file: !115, line: 526, baseType: !4333, size: 64, offset: 1152)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !4324, file: !115, line: 528, baseType: !4333, size: 64, offset: 1216)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !4324, file: !115, line: 529, baseType: !4333, size: 64, offset: 1280)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !4324, file: !115, line: 530, baseType: !4333, size: 64, offset: 1344)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !4324, file: !115, line: 532, baseType: !4333, size: 64, offset: 1408)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !4324, file: !115, line: 534, baseType: !4367, size: 64, offset: 1472)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4243, !716}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !4324, file: !115, line: 535, baseType: !4350, size: 64, offset: 1536)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !4324, file: !115, line: 536, baseType: !4333, size: 64, offset: 1600)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !4324, file: !115, line: 538, baseType: !4373, size: 64, offset: 1664)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{null, !4243, !4376}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !4324, file: !115, line: 539, baseType: !4373, size: 64, offset: 1728)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !4324, file: !115, line: 541, baseType: !4379, size: 64, offset: 1792)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!207, !4243, !107, !939}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !4324, file: !115, line: 542, baseType: !4383, size: 64, offset: 1856)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!207, !4243, !107, !492}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !4324, file: !115, line: 544, baseType: !4387, size: 64, offset: 1920)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!207, !4243, !184}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !4324, file: !115, line: 546, baseType: !4391, size: 64, offset: 1984)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !4243, !7}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !4324, file: !115, line: 547, baseType: !4395, size: 64, offset: 2048)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4243, !4347}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !4324, file: !115, line: 549, baseType: !4350, size: 64, offset: 2112)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !4324, file: !115, line: 550, baseType: !4333, size: 64, offset: 2176)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4324, file: !115, line: 552, baseType: !326, size: 64, offset: 2240)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4244, file: !115, line: 181, baseType: !4076, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !4244, file: !115, line: 183, baseType: !4243, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !4244, file: !115, line: 185, baseType: !184, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4084, file: !94, line: 122, baseType: !4405, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{null, !4076, !4243}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4084, file: !94, line: 123, baseType: !4409, size: 64, offset: 576)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!207, !4076, !4208, !4230, !3350}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4077, file: !94, line: 166, baseType: !184, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4077, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4077, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4077, file: !94, line: 171, baseType: !4103, size: 64, offset: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4077, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4077, file: !94, line: 173, baseType: !4418, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4419, file: !115, line: 1102, baseType: !7, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4419, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4419, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4419, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4419, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4419, file: !115, line: 1107, baseType: !4427, offset: 192)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4428, elements: !2147)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4437, !4441, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4429, file: !115, line: 1052, baseType: !828)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4429, file: !115, line: 1053, baseType: !184, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4429, file: !115, line: 1054, baseType: !4434, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!417, !184}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4429, file: !115, line: 1055, baseType: !4438, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !417, !184}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4429, file: !115, line: 1056, baseType: !4442, size: 64, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4428}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4429, file: !115, line: 1057, baseType: !4442, size: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4429, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4429, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4429, file: !115, line: 1060, baseType: !417, size: 32, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4429, file: !115, line: 1061, baseType: !417, size: 32, offset: 416)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4429, file: !115, line: 1062, baseType: !417, size: 32, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4429, file: !115, line: 1063, baseType: !417, size: 32, offset: 480)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4429, file: !115, line: 1064, baseType: !417, size: 32, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4429, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4429, file: !115, line: 1066, baseType: !184, size: 64, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4429, file: !115, line: 1067, baseType: !326, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4429, file: !115, line: 1068, baseType: !326, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4429, file: !115, line: 1069, baseType: !4076, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4429, file: !115, line: 1070, baseType: !189, size: 128, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4429, file: !115, line: 1071, baseType: !4460, offset: 960)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, elements: !2147)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4462)
!4462 = !{!4463, !4464, !4474, !4537, !4538, !4539}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4461, file: !115, line: 1010, baseType: !4324, size: 2304)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4461, file: !115, line: 1011, baseType: !4465, size: 448, offset: 2304)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4465, file: !115, line: 987, baseType: !326, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4465, file: !115, line: 988, baseType: !326, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4465, file: !115, line: 989, baseType: !326, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4465, file: !115, line: 990, baseType: !326, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4465, file: !115, line: 991, baseType: !326, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4465, file: !115, line: 992, baseType: !326, size: 64, offset: 320)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4465, file: !115, line: 993, baseType: !326, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4461, file: !115, line: 1012, baseType: !4475, size: 64, offset: 2752)
!4475 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4476, line: 12, baseType: !4477)
!4476 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !4480}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2119, line: 55, size: 2880, elements: !4482)
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4481, file: !2119, line: 56, baseType: !4251, size: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4481, file: !2119, line: 57, baseType: !4244, size: 448, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4481, file: !2119, line: 58, baseType: !3350, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4481, file: !2119, line: 59, baseType: !4475, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4481, file: !2119, line: 60, baseType: !4488, size: 64, offset: 832)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4490)
!4490 = !{!4491, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4489, file: !108, line: 111, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4493)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4496, !207, !184}
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4489, file: !108, line: 112, baseType: !184, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4489, file: !108, line: 113, baseType: !184, size: 64, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4489, file: !108, line: 114, baseType: !4488, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4489, file: !108, line: 115, baseType: !4492, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4489, file: !108, line: 116, baseType: !1243, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4489, file: !108, line: 117, baseType: !4488, size: 64, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4489, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4489, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4489, file: !108, line: 120, baseType: !326, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4489, file: !108, line: 121, baseType: !326, size: 64, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4489, file: !108, line: 122, baseType: !201, size: 64, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4489, file: !108, line: 123, baseType: !2117, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4481, file: !2119, line: 61, baseType: !7, size: 32, offset: 896)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4481, file: !2119, line: 62, baseType: !7, size: 32, offset: 928)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4481, file: !2119, line: 63, baseType: !7, size: 32, offset: 960)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4481, file: !2119, line: 64, baseType: !7, size: 32, offset: 992)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4481, file: !2119, line: 65, baseType: !7, size: 32, offset: 1024)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4481, file: !2119, line: 66, baseType: !7, size: 32, offset: 1056)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4481, file: !2119, line: 67, baseType: !326, size: 64, offset: 1088)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4481, file: !2119, line: 68, baseType: !7, size: 32, offset: 1152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4481, file: !2119, line: 69, baseType: !802, size: 32, offset: 1184)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4481, file: !2119, line: 70, baseType: !207, size: 32, offset: 1216)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4481, file: !2119, line: 71, baseType: !828, offset: 1248)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4481, file: !2119, line: 72, baseType: !4521, size: 64, offset: 1280)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4481, file: !2119, line: 73, baseType: !4347, size: 64, offset: 1344)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4481, file: !2119, line: 81, baseType: !326, size: 64, offset: 1408)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4481, file: !2119, line: 82, baseType: !802, size: 32, offset: 1472)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4481, file: !2119, line: 83, baseType: !1508, size: 128, offset: 1536)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4481, file: !2119, line: 85, baseType: !7, size: 32, offset: 1664)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4481, file: !2119, line: 86, baseType: !7, size: 32, offset: 1696)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4481, file: !2119, line: 87, baseType: !7, size: 32, offset: 1728)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4481, file: !2119, line: 88, baseType: !7, size: 32, offset: 1760)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4481, file: !2119, line: 91, baseType: !2117, size: 64, offset: 1792)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4481, file: !2119, line: 98, baseType: !367, size: 128, align: 64, offset: 1856)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4481, file: !2119, line: 99, baseType: !222, size: 512, offset: 1984)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4481, file: !2119, line: 101, baseType: !728, size: 192, offset: 2496)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4481, file: !2119, line: 102, baseType: !207, size: 32, offset: 2688)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4481, file: !2119, line: 103, baseType: !635, size: 64, offset: 2752)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4481, file: !2119, line: 104, baseType: !201, size: 64, offset: 2816)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4461, file: !115, line: 1013, baseType: !417, size: 32, offset: 2816)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4461, file: !115, line: 1014, baseType: !417, size: 32, offset: 2848)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4461, file: !115, line: 1015, baseType: !1442, size: 64, offset: 2880)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4077, file: !94, line: 175, baseType: !4076, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4077, file: !94, line: 182, baseType: !4219, size: 64, offset: 640)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4077, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4077, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4077, file: !94, line: 185, baseType: !793, size: 128, offset: 768)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4077, file: !94, line: 186, baseType: !728, size: 192, offset: 896)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4077, file: !94, line: 187, baseType: !4547, offset: 1088)
!4547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2147)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !219, file: !73, line: 499, baseType: !189, size: 128, offset: 4224)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !219, file: !73, line: 502, baseType: !4550, size: 64, offset: 4352)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !219, file: !73, line: 504, baseType: !4554, size: 64, offset: 4416)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !219, file: !73, line: 505, baseType: !423, size: 64, offset: 4480)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !219, file: !73, line: 510, baseType: !423, size: 64, offset: 4544)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !219, file: !73, line: 511, baseType: !4558, size: 64, offset: 4608)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4560)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !219, file: !73, line: 513, baseType: !4562, size: 64, offset: 4672)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4564)
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4563, file: !73, line: 293, baseType: !7, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4563, file: !73, line: 294, baseType: !326, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !219, file: !73, line: 515, baseType: !189, size: 128, offset: 4736)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !219, file: !73, line: 526, baseType: !4569, offset: 4864)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4570, line: 5, elements: !249)
!4570 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !219, file: !73, line: 528, baseType: !4090, size: 64, offset: 4864)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !219, file: !73, line: 529, baseType: !4103, size: 64, offset: 4928)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !219, file: !73, line: 534, baseType: !515, size: 32, offset: 4992)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !219, file: !73, line: 535, baseType: !417, size: 32, offset: 5024)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !219, file: !73, line: 537, baseType: !235, offset: 5056)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !219, file: !73, line: 538, baseType: !189, size: 128, offset: 5056)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !219, file: !73, line: 540, baseType: !4578, size: 64, offset: 5184)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4580, line: 54, size: 960, elements: !4581)
!4580 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588, !4592, !4596, !4597, !4598, !4599, !4603, !4607, !4608}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4579, file: !4580, line: 55, baseType: !201, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4579, file: !4580, line: 56, baseType: !635, size: 64, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4579, file: !4580, line: 58, baseType: !330, size: 64, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4579, file: !4580, line: 59, baseType: !330, size: 64, offset: 192)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4579, file: !4580, line: 60, baseType: !228, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4579, file: !4580, line: 62, baseType: !3812, size: 64, offset: 320)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4579, file: !4580, line: 63, baseType: !4589, size: 64, offset: 384)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!276, !1845, !3819}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4579, file: !4580, line: 65, baseType: !4593, size: 64, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !4578}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4579, file: !4580, line: 66, baseType: !3821, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4579, file: !4580, line: 68, baseType: !3830, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4579, file: !4580, line: 70, baseType: !3632, size: 64, offset: 640)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4579, file: !4580, line: 71, baseType: !4600, size: 64, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!2797, !1845}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4579, file: !4580, line: 73, baseType: !4604, size: 64, offset: 768)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !1845, !3664, !3665}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4579, file: !4580, line: 75, baseType: !3825, size: 64, offset: 832)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4579, file: !4580, line: 77, baseType: !3940, size: 64, offset: 896)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !219, file: !73, line: 541, baseType: !330, size: 64, offset: 5248)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !219, file: !73, line: 543, baseType: !3821, size: 64, offset: 5312)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !219, file: !73, line: 544, baseType: !4612, size: 64, offset: 5376)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !219, file: !73, line: 545, baseType: !4615, size: 64, offset: 5440)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !219, file: !73, line: 547, baseType: !492, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !219, file: !73, line: 548, baseType: !492, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !219, file: !73, line: 549, baseType: !492, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !219, file: !73, line: 550, baseType: !492, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !198, line: 78, baseType: !128, size: 32, offset: 6080)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !197, file: !198, line: 79, baseType: !1529, size: 192, offset: 6144)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !197, file: !198, line: 80, baseType: !2150, size: 256, offset: 6336)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !197, file: !198, line: 81, baseType: !4625, size: 192, offset: 6592)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4626, line: 15, size: 192, elements: !4627)
!4626 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4627 = !{!4628, !4629, !4630}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4625, file: !4626, line: 16, baseType: !828)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4625, file: !4626, line: 17, baseType: !7, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4625, file: !4626, line: 18, baseType: !189, size: 128, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !186, file: !3, line: 38, baseType: !4632, size: 64, offset: 192)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xencons_interface", file: !4634, line: 17, size: 24704, elements: !4635)
!4634 = !DIFile(filename: "./include/xen/interface/io/console.h", directory: "/home/lizy2001/genbc/linux")
!4635 = !{!4636, !4640, !4641, !4643, !4644, !4645}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4633, file: !4634, line: 18, baseType: !4637, size: 8192)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 8192, elements: !4638)
!4638 = !{!4639}
!4639 = !DISubrange(count: 1024)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4633, file: !4634, line: 19, baseType: !285, size: 16384, offset: 8192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "in_cons", scope: !4633, file: !4634, line: 20, baseType: !4642, size: 32, offset: 24576)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "XENCONS_RING_IDX", file: !4634, line: 13, baseType: !561)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "in_prod", scope: !4633, file: !4634, line: 20, baseType: !4642, size: 32, offset: 24608)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "out_cons", scope: !4633, file: !4634, line: 21, baseType: !4642, size: 32, offset: 24640)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "out_prod", scope: !4633, file: !4634, line: 21, baseType: !4642, size: 32, offset: 24672)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn", scope: !186, file: !3, line: 39, baseType: !7, size: 32, offset: 256)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "hvc", scope: !186, file: !3, line: 40, baseType: !4648, size: 64, offset: 320)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hvc_struct", file: !4650, line: 35, size: 3328, elements: !4651)
!4650 = !DIFile(filename: "drivers/tty/hvc/hvc_console.h", directory: "/home/lizy2001/genbc/linux")
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4695, !4696, !4697, !4698, !4699, !4700}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4649, file: !4650, line: 36, baseType: !2126, size: 2432)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4649, file: !4650, line: 37, baseType: !235, offset: 2432)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4649, file: !4650, line: 38, baseType: !207, size: 32, offset: 2432)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "do_wakeup", scope: !4649, file: !4650, line: 39, baseType: !207, size: 32, offset: 2464)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "outbuf", scope: !4649, file: !4650, line: 40, baseType: !276, size: 64, offset: 2496)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "outbuf_size", scope: !4649, file: !4650, line: 41, baseType: !207, size: 32, offset: 2560)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "n_outbuf", scope: !4649, file: !4650, line: 42, baseType: !207, size: 32, offset: 2592)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "vtermno", scope: !4649, file: !4650, line: 43, baseType: !561, size: 32, offset: 2624)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4649, file: !4650, line: 44, baseType: !4661, size: 64, offset: 2688)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4663)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ops", file: !4650, line: 54, size: 576, elements: !4664)
!4664 = !{!4665, !4669, !4673, !4677, !4681, !4685, !4686, !4690, !4694}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "get_chars", scope: !4663, file: !4650, line: 55, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!207, !561, !276, !207}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "put_chars", scope: !4663, file: !4650, line: 56, baseType: !4670, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!207, !561, !201, !207}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4663, file: !4650, line: 57, baseType: !4674, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!207, !561, !492}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_add", scope: !4663, file: !4650, line: 60, baseType: !4678, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!207, !4648, !207}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_del", scope: !4663, file: !4650, line: 61, baseType: !4682, size: 64, offset: 256)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{null, !4648, !207}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_hangup", scope: !4663, file: !4650, line: 62, baseType: !4682, size: 64, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4663, file: !4650, line: 65, baseType: !4687, size: 64, offset: 384)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!207, !4648}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4663, file: !4650, line: 66, baseType: !4691, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!207, !4648, !7, !7}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4663, file: !4650, line: 69, baseType: !4682, size: 64, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_requested", scope: !4649, file: !4650, line: 45, baseType: !207, size: 32, offset: 2752)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4649, file: !4650, line: 46, baseType: !207, size: 32, offset: 2784)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4649, file: !4650, line: 47, baseType: !2312, size: 64, offset: 2816)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "tty_resize", scope: !4649, file: !4650, line: 48, baseType: !2150, size: 256, offset: 2880)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4649, file: !4650, line: 49, baseType: !189, size: 128, offset: 3136)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4649, file: !4650, line: 50, baseType: !326, size: 64, offset: 3264)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !186, file: !3, line: 41, baseType: !207, size: 32, offset: 384)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "vtermno", scope: !186, file: !3, line: 42, baseType: !207, size: 32, offset: 416)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "gntref", scope: !186, file: !3, line: 43, baseType: !4704, size: 32, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_typedef, name: "grant_ref_t", file: !4705, line: 90, baseType: !561)
!4705 = !DIFile(filename: "./include/xen/interface/grant_table.h", directory: "/home/lizy2001/genbc/linux")
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4708)
!4708 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !193)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4710 = !{!0, !4711, !4713, !4751, !4759, !4761, !4769, !4771, !4773, !4775, !4812, !4815}
!4711 = !DIGlobalVariableExpression(var: !4712, expr: !DIExpression())
!4712 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xen_cons_init242", scope: !2, file: !3, line: 593, type: !184, isLocal: true, isDefinition: true)
!4713 = !DIGlobalVariableExpression(var: !4714, expr: !DIExpression())
!4714 = distinct !DIGlobalVariable(name: "xenboot_console", scope: !2, file: !3, line: 647, type: !4715, isLocal: false, isDefinition: true)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !4716, line: 141, size: 768, elements: !4717)
!4716 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!4717 = !{!4718, !4719, !4724, !4728, !4732, !4734, !4738, !4742, !4746, !4747, !4748, !4749, !4750}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4715, file: !4716, line: 142, baseType: !1761, size: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4715, file: !4716, line: 143, baseType: !4720, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !4723, !201, !7}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4715, file: !4716, line: 144, baseType: !4725, size: 64, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!207, !4723, !276, !7}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4715, file: !4716, line: 145, baseType: !4729, size: 64, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!1847, !4723, !710}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !4715, file: !4716, line: 146, baseType: !4733, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4715, file: !4716, line: 147, baseType: !4735, size: 64, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!207, !4723, !276}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4715, file: !4716, line: 148, baseType: !4739, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!207, !4723}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4715, file: !4716, line: 149, baseType: !4743, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!207, !4723, !276, !207, !276}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4715, file: !4716, line: 150, baseType: !1232, size: 16, offset: 576)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4715, file: !4716, line: 151, baseType: !1232, size: 16, offset: 592)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !4715, file: !4716, line: 152, baseType: !207, size: 32, offset: 608)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4715, file: !4716, line: 153, baseType: !184, size: 64, offset: 640)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4715, file: !4716, line: 154, baseType: !4723, size: 64, offset: 704)
!4751 = !DIGlobalVariableExpression(var: !4752, expr: !DIExpression())
!4752 = distinct !DIGlobalVariable(name: "buf", scope: !4753, file: !3, line: 671, type: !4756, isLocal: true, isDefinition: true)
!4753 = distinct !DISubprogram(name: "xen_raw_printk", scope: !3, file: !3, line: 669, type: !4754, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !201, null}
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 4096, elements: !4757)
!4757 = !{!4758}
!4758 = !DISubrange(count: 512)
!4759 = !DIGlobalVariableExpression(var: !4760, expr: !DIExpression())
!4760 = distinct !DIGlobalVariable(name: "xenconsoles", scope: !2, file: !3, line: 46, type: !189, isLocal: true, isDefinition: true)
!4761 = !DIGlobalVariableExpression(var: !4762, expr: !DIExpression())
!4762 = distinct !DIGlobalVariable(name: "names", scope: !4763, file: !4764, line: 12, type: !4767, isLocal: true, isDefinition: true)
!4763 = distinct !DISubprogram(name: "param_name", scope: !4764, file: !4764, line: 9, type: !4765, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4764 = !DIFile(filename: "./include/xen/hvm.h", directory: "/home/lizy2001/genbc/linux")
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!201, !207}
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4768, size: 1216, elements: !2110)
!4768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!4769 = !DIGlobalVariableExpression(var: !4770, expr: !DIExpression())
!4770 = distinct !DIGlobalVariable(name: "dom0_hvc_ops", scope: !2, file: !3, line: 179, type: !4662, isLocal: true, isDefinition: true)
!4771 = !DIGlobalVariableExpression(var: !4772, expr: !DIExpression())
!4772 = distinct !DIGlobalVariable(name: "domU_hvc_ops", scope: !2, file: !3, line: 153, type: !4662, isLocal: true, isDefinition: true)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(name: "xencons_lock", scope: !2, file: !3, line: 47, type: !235, isLocal: true, isDefinition: true)
!4775 = !DIGlobalVariableExpression(var: !4776, expr: !DIExpression())
!4776 = distinct !DIGlobalVariable(name: "xencons_driver", scope: !2, file: !3, line: 507, type: !4777, isLocal: true, isDefinition: true)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_driver", file: !198, line: 96, size: 1920, elements: !4778)
!4778 = !{!4779, !4780, !4786, !4787, !4791, !4795, !4799, !4800, !4801, !4805, !4806, !4807, !4808}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4777, file: !198, line: 97, baseType: !201, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4777, file: !198, line: 98, baseType: !4781, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device_id", file: !198, line: 89, size: 256, elements: !4784)
!4784 = !{!4785}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !4783, file: !198, line: 92, baseType: !3367, size: 256)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rebind", scope: !4777, file: !198, line: 99, baseType: !492, size: 8, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4777, file: !198, line: 100, baseType: !4788, size: 64, offset: 192)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!207, !196, !4781}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4777, file: !198, line: 102, baseType: !4792, size: 64, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !196, !128}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4777, file: !198, line: 104, baseType: !4796, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!207, !196}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4777, file: !198, line: 105, baseType: !4796, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4777, file: !198, line: 106, baseType: !4796, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4777, file: !198, line: 107, baseType: !4802, size: 64, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!207, !196, !271}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4777, file: !198, line: 108, baseType: !3871, size: 1152, offset: 576)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "read_otherend_details", scope: !4777, file: !198, line: 109, baseType: !4796, size: 64, offset: 1728)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !4777, file: !198, line: 110, baseType: !4796, size: 64, offset: 1792)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_memory", scope: !4777, file: !198, line: 111, baseType: !4809, size: 64, offset: 1856)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !196}
!4812 = !DIGlobalVariableExpression(var: !4813, expr: !DIExpression())
!4813 = distinct !DIGlobalVariable(name: "xencons_ids", scope: !2, file: !3, line: 502, type: !4814, isLocal: true, isDefinition: true)
!4814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4782, size: 512, elements: !1596)
!4815 = !DIGlobalVariableExpression(var: !4816, expr: !DIExpression())
!4816 = distinct !DIGlobalVariable(name: "xenboot", scope: !4817, file: !3, line: 608, type: !186, isLocal: true, isDefinition: true)
!4817 = distinct !DISubprogram(name: "xenboot_console_setup", scope: !3, file: !3, line: 606, type: !4736, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4818 = !{!"rsp"}
!4819 = !{i32 7, !"Dwarf Version", i32 4}
!4820 = !{i32 2, !"Debug Info Version", i32 3}
!4821 = !{i32 1, !"wchar_size", i32 2}
!4822 = !{i32 1, !"Code Model", i32 2}
!4823 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4824 = distinct !DISubprogram(name: "xen_console_resume", scope: !3, file: !3, line: 311, type: !2561, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4825 = !DILocalVariable(name: "info", scope: !4824, file: !3, line: 313, type: !185)
!4826 = !DILocation(line: 313, column: 23, scope: !4824)
!4827 = !DILocation(line: 313, column: 30, scope: !4824)
!4828 = !DILocation(line: 314, column: 6, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 314, column: 6)
!4830 = !DILocation(line: 314, column: 11, scope: !4829)
!4831 = !DILocation(line: 314, column: 19, scope: !4829)
!4832 = !DILocation(line: 314, column: 22, scope: !4829)
!4833 = !DILocation(line: 314, column: 28, scope: !4829)
!4834 = !DILocation(line: 314, column: 6, scope: !4824)
!4835 = !DILocation(line: 315, column: 8, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 315, column: 7)
!4837 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 314, column: 33)
!4838 = !DILocation(line: 315, column: 7, scope: !4837)
!4839 = !DILocation(line: 316, column: 30, scope: !4836)
!4840 = !DILocation(line: 316, column: 4, scope: !4836)
!4841 = !DILocation(line: 317, column: 21, scope: !4837)
!4842 = !DILocation(line: 317, column: 27, scope: !4837)
!4843 = !DILocation(line: 317, column: 35, scope: !4837)
!4844 = !DILocation(line: 317, column: 41, scope: !4837)
!4845 = !DILocation(line: 317, column: 3, scope: !4837)
!4846 = !DILocation(line: 318, column: 2, scope: !4837)
!4847 = !DILocation(line: 319, column: 1, scope: !4824)
!4848 = distinct !DISubprogram(name: "vtermno_to_xencons", scope: !3, file: !3, line: 51, type: !4849, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!185, !207}
!4851 = !DILocalVariable(name: "vtermno", arg: 1, scope: !4848, file: !3, line: 51, type: !207)
!4852 = !DILocation(line: 51, column: 52, scope: !4848)
!4853 = !DILocalVariable(name: "entry", scope: !4848, file: !3, line: 53, type: !185)
!4854 = !DILocation(line: 53, column: 23, scope: !4848)
!4855 = !DILocalVariable(name: "n", scope: !4848, file: !3, line: 53, type: !185)
!4856 = !DILocation(line: 53, column: 31, scope: !4848)
!4857 = !DILocalVariable(name: "ret", scope: !4848, file: !3, line: 53, type: !185)
!4858 = !DILocation(line: 53, column: 35, scope: !4848)
!4859 = !DILocation(line: 55, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 55, column: 6)
!4861 = !DILocation(line: 55, column: 6, scope: !4848)
!4862 = !DILocation(line: 56, column: 4, scope: !4860)
!4863 = !DILocalVariable(name: "__mptr", scope: !4864, file: !3, line: 58, type: !184)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 58, column: 2)
!4865 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 58, column: 2)
!4866 = !DILocation(line: 58, column: 2, scope: !4864)
!4867 = !DILocation(line: 58, column: 2, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 58, column: 2)
!4869 = !DILocation(line: 58, column: 2, scope: !4865)
!4870 = !DILocalVariable(name: "__mptr", scope: !4871, file: !3, line: 58, type: !184)
!4871 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 58, column: 2)
!4872 = !DILocation(line: 58, column: 2, scope: !4871)
!4873 = !DILocation(line: 58, column: 2, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 58, column: 2)
!4875 = !DILocation(line: 58, column: 2, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 58, column: 2)
!4877 = !DILocation(line: 59, column: 7, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 59, column: 7)
!4879 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 58, column: 57)
!4880 = !DILocation(line: 59, column: 14, scope: !4878)
!4881 = !DILocation(line: 59, column: 25, scope: !4878)
!4882 = !DILocation(line: 59, column: 22, scope: !4878)
!4883 = !DILocation(line: 59, column: 7, scope: !4879)
!4884 = !DILocation(line: 60, column: 11, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 59, column: 34)
!4886 = !DILocation(line: 60, column: 9, scope: !4885)
!4887 = !DILocation(line: 61, column: 4, scope: !4885)
!4888 = !DILocation(line: 63, column: 2, scope: !4879)
!4889 = !DILocalVariable(name: "__mptr", scope: !4890, file: !3, line: 58, type: !184)
!4890 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 58, column: 2)
!4891 = !DILocation(line: 58, column: 2, scope: !4890)
!4892 = !DILocation(line: 58, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 58, column: 2)
!4894 = distinct !{!4894, !4869, !4895}
!4895 = !DILocation(line: 63, column: 2, scope: !4865)
!4896 = !DILocation(line: 65, column: 9, scope: !4848)
!4897 = !DILocation(line: 65, column: 2, scope: !4848)
!4898 = !DILocation(line: 66, column: 1, scope: !4848)
!4899 = distinct !DISubprogram(name: "xen_console_update_evtchn", scope: !3, file: !3, line: 298, type: !4900, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !185}
!4902 = !DILocalVariable(name: "info", arg: 1, scope: !4899, file: !3, line: 298, type: !185)
!4903 = !DILocation(line: 298, column: 60, scope: !4899)
!4904 = !DILocation(line: 300, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 300, column: 6)
!4906 = !DILocation(line: 300, column: 6, scope: !4899)
!4907 = !DILocalVariable(name: "v", scope: !4908, file: !3, line: 301, type: !4909)
!4908 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 300, column: 24)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !190, line: 107, baseType: !423)
!4910 = !DILocation(line: 301, column: 12, scope: !4908)
!4911 = !DILocalVariable(name: "err", scope: !4908, file: !3, line: 302, type: !207)
!4912 = !DILocation(line: 302, column: 7, scope: !4908)
!4913 = !DILocation(line: 304, column: 9, scope: !4908)
!4914 = !DILocation(line: 304, column: 7, scope: !4908)
!4915 = !DILocation(line: 305, column: 8, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 305, column: 7)
!4917 = !DILocation(line: 305, column: 12, scope: !4916)
!4918 = !DILocation(line: 305, column: 15, scope: !4916)
!4919 = !DILocation(line: 305, column: 7, scope: !4908)
!4920 = !DILocation(line: 306, column: 19, scope: !4916)
!4921 = !DILocation(line: 306, column: 4, scope: !4916)
!4922 = !DILocation(line: 306, column: 10, scope: !4916)
!4923 = !DILocation(line: 306, column: 17, scope: !4916)
!4924 = !DILocation(line: 307, column: 2, scope: !4908)
!4925 = !DILocation(line: 308, column: 18, scope: !4905)
!4926 = !DILocation(line: 308, column: 34, scope: !4905)
!4927 = !DILocation(line: 308, column: 42, scope: !4905)
!4928 = !DILocation(line: 308, column: 47, scope: !4905)
!4929 = !DILocation(line: 308, column: 3, scope: !4905)
!4930 = !DILocation(line: 308, column: 9, scope: !4905)
!4931 = !DILocation(line: 308, column: 16, scope: !4905)
!4932 = !DILocation(line: 309, column: 1, scope: !4899)
!4933 = distinct !DISubprogram(name: "xen_hvc_init", scope: !3, file: !3, line: 517, type: !4934, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!207}
!4936 = !DILocalVariable(name: "lock", arg: 1, scope: !4937, file: !4938, line: 392, type: !1113)
!4937 = distinct !DISubprogram(name: "spin_unlock", scope: !4938, file: !4938, line: 392, type: !4939, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4938 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !1113}
!4941 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 554, column: 3, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 550, column: 25)
!4944 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 550, column: 6)
!4945 = !DILocalVariable(name: "lock", arg: 1, scope: !4946, file: !4938, line: 352, type: !1113)
!4946 = distinct !DISubprogram(name: "spin_lock", scope: !4938, file: !4938, line: 352, type: !4939, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4947 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 552, column: 3, scope: !4943)
!4949 = !DILocalVariable(name: "r", scope: !4933, file: !3, line: 519, type: !207)
!4950 = !DILocation(line: 519, column: 6, scope: !4933)
!4951 = !DILocalVariable(name: "info", scope: !4933, file: !3, line: 520, type: !185)
!4952 = !DILocation(line: 520, column: 23, scope: !4933)
!4953 = !DILocalVariable(name: "ops", scope: !4933, file: !3, line: 521, type: !4661)
!4954 = !DILocation(line: 521, column: 23, scope: !4933)
!4955 = !DILocation(line: 523, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 523, column: 6)
!4957 = !DILocation(line: 523, column: 6, scope: !4933)
!4958 = !DILocation(line: 524, column: 3, scope: !4956)
!4959 = !DILocation(line: 526, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 526, column: 6)
!4961 = !DILocation(line: 526, column: 6, scope: !4933)
!4962 = !DILocation(line: 527, column: 7, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 526, column: 28)
!4964 = !DILocation(line: 528, column: 7, scope: !4963)
!4965 = !DILocation(line: 528, column: 5, scope: !4963)
!4966 = !DILocation(line: 529, column: 7, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 529, column: 7)
!4968 = !DILocation(line: 529, column: 9, scope: !4967)
!4969 = !DILocation(line: 529, column: 7, scope: !4963)
!4970 = !DILocation(line: 530, column: 11, scope: !4967)
!4971 = !DILocation(line: 530, column: 4, scope: !4967)
!4972 = !DILocation(line: 531, column: 10, scope: !4963)
!4973 = !DILocation(line: 531, column: 8, scope: !4963)
!4974 = !DILocation(line: 532, column: 2, scope: !4963)
!4975 = !DILocation(line: 533, column: 7, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 532, column: 9)
!4977 = !DILocation(line: 534, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 534, column: 7)
!4979 = !DILocation(line: 534, column: 7, scope: !4976)
!4980 = !DILocation(line: 535, column: 8, scope: !4978)
!4981 = !DILocation(line: 535, column: 6, scope: !4978)
!4982 = !DILocation(line: 535, column: 4, scope: !4978)
!4983 = !DILocation(line: 537, column: 8, scope: !4978)
!4984 = !DILocation(line: 537, column: 6, scope: !4978)
!4985 = !DILocation(line: 538, column: 7, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 538, column: 7)
!4987 = !DILocation(line: 538, column: 9, scope: !4986)
!4988 = !DILocation(line: 538, column: 7, scope: !4976)
!4989 = !DILocation(line: 539, column: 11, scope: !4986)
!4990 = !DILocation(line: 539, column: 4, scope: !4986)
!4991 = !DILocation(line: 541, column: 10, scope: !4976)
!4992 = !DILocation(line: 541, column: 8, scope: !4976)
!4993 = !DILocation(line: 542, column: 34, scope: !4976)
!4994 = !DILocation(line: 542, column: 40, scope: !4976)
!4995 = !DILocation(line: 542, column: 15, scope: !4976)
!4996 = !DILocation(line: 542, column: 3, scope: !4976)
!4997 = !DILocation(line: 542, column: 9, scope: !4976)
!4998 = !DILocation(line: 542, column: 13, scope: !4976)
!4999 = !DILocation(line: 544, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 544, column: 6)
!5001 = !DILocation(line: 544, column: 12, scope: !5000)
!5002 = !DILocation(line: 544, column: 16, scope: !5000)
!5003 = !DILocation(line: 544, column: 6, scope: !4933)
!5004 = !DILocation(line: 545, column: 3, scope: !5000)
!5005 = !DILocation(line: 545, column: 9, scope: !5000)
!5006 = !DILocation(line: 545, column: 13, scope: !5000)
!5007 = !DILocation(line: 547, column: 19, scope: !5000)
!5008 = !DILocation(line: 547, column: 25, scope: !5000)
!5009 = !DILocation(line: 547, column: 3, scope: !5000)
!5010 = !DILocation(line: 549, column: 36, scope: !4933)
!5011 = !DILocation(line: 549, column: 42, scope: !4933)
!5012 = !DILocation(line: 549, column: 47, scope: !4933)
!5013 = !DILocation(line: 549, column: 14, scope: !4933)
!5014 = !DILocation(line: 549, column: 2, scope: !4933)
!5015 = !DILocation(line: 549, column: 8, scope: !4933)
!5016 = !DILocation(line: 549, column: 12, scope: !4933)
!5017 = !DILocation(line: 550, column: 13, scope: !4944)
!5018 = !DILocation(line: 550, column: 19, scope: !4944)
!5019 = !DILocation(line: 550, column: 6, scope: !4944)
!5020 = !DILocation(line: 550, column: 6, scope: !4933)
!5021 = !DILocation(line: 551, column: 15, scope: !4943)
!5022 = !DILocation(line: 551, column: 21, scope: !4943)
!5023 = !DILocation(line: 551, column: 7, scope: !4943)
!5024 = !DILocation(line: 551, column: 5, scope: !4943)
!5025 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !4948)
!5026 = distinct !DILexicalBlock(scope: !4946, file: !4938, line: 354, column: 2)
!5027 = !{i32 -2145560841}
!5028 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !4948)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !4938, line: 354, column: 2)
!5030 = !DILocation(line: 553, column: 13, scope: !4943)
!5031 = !DILocation(line: 553, column: 19, scope: !4943)
!5032 = !DILocation(line: 553, column: 3, scope: !4943)
!5033 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !4942)
!5034 = distinct !DILexicalBlock(scope: !4937, file: !4938, line: 394, column: 2)
!5035 = !{i32 -2145558480}
!5036 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !4942)
!5037 = distinct !DILexicalBlock(scope: !5034, file: !4938, line: 394, column: 2)
!5038 = !DILocation(line: 555, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 555, column: 7)
!5040 = !DILocation(line: 555, column: 13, scope: !5039)
!5041 = !DILocation(line: 555, column: 7, scope: !4943)
!5042 = !DILocation(line: 556, column: 27, scope: !5039)
!5043 = !DILocation(line: 556, column: 33, scope: !5039)
!5044 = !DILocation(line: 556, column: 4, scope: !5039)
!5045 = !DILocation(line: 557, column: 9, scope: !4943)
!5046 = !DILocation(line: 557, column: 3, scope: !4943)
!5047 = !DILocation(line: 558, column: 10, scope: !4943)
!5048 = !DILocation(line: 558, column: 3, scope: !4943)
!5049 = !DILocation(line: 561, column: 4, scope: !4933)
!5050 = !DILocation(line: 563, column: 6, scope: !4933)
!5051 = !DILocation(line: 563, column: 4, scope: !4933)
!5052 = !DILocation(line: 565, column: 9, scope: !4933)
!5053 = !DILocation(line: 565, column: 2, scope: !4933)
!5054 = !DILocation(line: 566, column: 1, scope: !4933)
!5055 = distinct !DISubprogram(name: "xen_cons_init", scope: !3, file: !3, line: 569, type: !4934, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5056 = !DILocalVariable(name: "ops", scope: !5055, file: !3, line: 571, type: !4661)
!5057 = !DILocation(line: 571, column: 23, scope: !5055)
!5058 = !DILocation(line: 573, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 573, column: 6)
!5060 = !DILocation(line: 573, column: 6, scope: !5055)
!5061 = !DILocation(line: 574, column: 3, scope: !5059)
!5062 = !DILocation(line: 576, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 576, column: 6)
!5064 = !DILocation(line: 576, column: 6, scope: !5055)
!5065 = !DILocation(line: 577, column: 7, scope: !5063)
!5066 = !DILocation(line: 577, column: 3, scope: !5063)
!5067 = !DILocalVariable(name: "r", scope: !5068, file: !3, line: 579, type: !207)
!5068 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 578, column: 7)
!5069 = !DILocation(line: 579, column: 7, scope: !5068)
!5070 = !DILocation(line: 580, column: 7, scope: !5068)
!5071 = !DILocation(line: 582, column: 7, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 582, column: 7)
!5073 = !DILocation(line: 582, column: 7, scope: !5068)
!5074 = !DILocation(line: 583, column: 8, scope: !5072)
!5075 = !DILocation(line: 583, column: 6, scope: !5072)
!5076 = !DILocation(line: 583, column: 4, scope: !5072)
!5077 = !DILocation(line: 585, column: 8, scope: !5072)
!5078 = !DILocation(line: 585, column: 6, scope: !5072)
!5079 = !DILocation(line: 586, column: 7, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 586, column: 7)
!5081 = !DILocation(line: 586, column: 9, scope: !5080)
!5082 = !DILocation(line: 586, column: 7, scope: !5068)
!5083 = !DILocation(line: 587, column: 11, scope: !5080)
!5084 = !DILocation(line: 587, column: 4, scope: !5080)
!5085 = !DILocation(line: 590, column: 33, scope: !5055)
!5086 = !DILocation(line: 590, column: 2, scope: !5055)
!5087 = !DILocation(line: 591, column: 2, scope: !5055)
!5088 = !DILocation(line: 592, column: 1, scope: !5055)
!5089 = distinct !DISubprogram(name: "xenboot_write_console", scope: !3, file: !3, line: 618, type: !4721, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5090 = !DILocalVariable(name: "console", arg: 1, scope: !5089, file: !3, line: 618, type: !4723)
!5091 = !DILocation(line: 618, column: 51, scope: !5089)
!5092 = !DILocalVariable(name: "string", arg: 2, scope: !5089, file: !3, line: 618, type: !201)
!5093 = !DILocation(line: 618, column: 72, scope: !5089)
!5094 = !DILocalVariable(name: "len", arg: 3, scope: !5089, file: !3, line: 619, type: !7)
!5095 = !DILocation(line: 619, column: 16, scope: !5089)
!5096 = !DILocalVariable(name: "linelen", scope: !5089, file: !3, line: 621, type: !7)
!5097 = !DILocation(line: 621, column: 15, scope: !5089)
!5098 = !DILocalVariable(name: "off", scope: !5089, file: !3, line: 621, type: !7)
!5099 = !DILocation(line: 621, column: 24, scope: !5089)
!5100 = !DILocalVariable(name: "pos", scope: !5089, file: !3, line: 622, type: !201)
!5101 = !DILocation(line: 622, column: 14, scope: !5089)
!5102 = !DILocation(line: 624, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 624, column: 6)
!5104 = !DILocation(line: 624, column: 6, scope: !5089)
!5105 = !DILocation(line: 625, column: 26, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 624, column: 24)
!5107 = !DILocation(line: 625, column: 34, scope: !5106)
!5108 = !DILocation(line: 625, column: 3, scope: !5106)
!5109 = !DILocation(line: 626, column: 3, scope: !5106)
!5110 = !DILocation(line: 629, column: 24, scope: !5089)
!5111 = !DILocation(line: 629, column: 32, scope: !5089)
!5112 = !DILocation(line: 629, column: 2, scope: !5089)
!5113 = !DILocation(line: 631, column: 6, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 631, column: 6)
!5115 = !DILocation(line: 631, column: 6, scope: !5089)
!5116 = !DILocation(line: 632, column: 3, scope: !5114)
!5117 = !DILocation(line: 634, column: 2, scope: !5089)
!5118 = !DILocation(line: 635, column: 2, scope: !5089)
!5119 = !DILocation(line: 635, column: 9, scope: !5089)
!5120 = !DILocation(line: 635, column: 15, scope: !5089)
!5121 = !DILocation(line: 635, column: 13, scope: !5089)
!5122 = !DILocation(line: 635, column: 19, scope: !5089)
!5123 = !DILocation(line: 635, column: 44, scope: !5089)
!5124 = !DILocation(line: 635, column: 51, scope: !5089)
!5125 = !DILocation(line: 635, column: 50, scope: !5089)
!5126 = !DILocation(line: 635, column: 37, scope: !5089)
!5127 = !DILocation(line: 635, column: 35, scope: !5089)
!5128 = !DILocation(line: 635, column: 27, scope: !5089)
!5129 = !DILocation(line: 0, scope: !5089)
!5130 = !DILocation(line: 636, column: 13, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 635, column: 64)
!5132 = !DILocation(line: 636, column: 17, scope: !5131)
!5133 = !DILocation(line: 636, column: 16, scope: !5131)
!5134 = !DILocation(line: 636, column: 24, scope: !5131)
!5135 = !DILocation(line: 636, column: 23, scope: !5131)
!5136 = !DILocation(line: 636, column: 11, scope: !5131)
!5137 = !DILocation(line: 637, column: 7, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 637, column: 7)
!5139 = !DILocation(line: 637, column: 13, scope: !5138)
!5140 = !DILocation(line: 637, column: 11, scope: !5138)
!5141 = !DILocation(line: 637, column: 23, scope: !5138)
!5142 = !DILocation(line: 637, column: 21, scope: !5138)
!5143 = !DILocation(line: 637, column: 7, scope: !5131)
!5144 = !DILocation(line: 638, column: 4, scope: !5138)
!5145 = !DILocation(line: 639, column: 25, scope: !5131)
!5146 = !DILocation(line: 639, column: 32, scope: !5131)
!5147 = !DILocation(line: 639, column: 31, scope: !5131)
!5148 = !DILocation(line: 639, column: 37, scope: !5131)
!5149 = !DILocation(line: 639, column: 3, scope: !5131)
!5150 = !DILocation(line: 640, column: 3, scope: !5131)
!5151 = !DILocation(line: 641, column: 10, scope: !5131)
!5152 = !DILocation(line: 641, column: 18, scope: !5131)
!5153 = !DILocation(line: 641, column: 7, scope: !5131)
!5154 = distinct !{!5154, !5118, !5155}
!5155 = !DILocation(line: 642, column: 2, scope: !5089)
!5156 = !DILocation(line: 643, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 643, column: 6)
!5158 = !DILocation(line: 643, column: 12, scope: !5157)
!5159 = !DILocation(line: 643, column: 10, scope: !5157)
!5160 = !DILocation(line: 643, column: 6, scope: !5089)
!5161 = !DILocation(line: 644, column: 25, scope: !5157)
!5162 = !DILocation(line: 644, column: 32, scope: !5157)
!5163 = !DILocation(line: 644, column: 31, scope: !5157)
!5164 = !DILocation(line: 644, column: 37, scope: !5157)
!5165 = !DILocation(line: 644, column: 41, scope: !5157)
!5166 = !DILocation(line: 644, column: 40, scope: !5157)
!5167 = !DILocation(line: 644, column: 3, scope: !5157)
!5168 = !DILocation(line: 645, column: 1, scope: !5089)
!5169 = !DILocalVariable(name: "console", arg: 1, scope: !4817, file: !3, line: 606, type: !4723)
!5170 = !DILocation(line: 606, column: 57, scope: !4817)
!5171 = !DILocalVariable(name: "string", arg: 2, scope: !4817, file: !3, line: 606, type: !276)
!5172 = !DILocation(line: 606, column: 72, scope: !4817)
!5173 = !DILocation(line: 610, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 610, column: 6)
!5175 = !DILocation(line: 610, column: 6, scope: !4817)
!5176 = !DILocation(line: 611, column: 3, scope: !5174)
!5177 = !DILocation(line: 612, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 612, column: 6)
!5179 = !DILocation(line: 612, column: 6, scope: !4817)
!5180 = !DILocation(line: 613, column: 3, scope: !5178)
!5181 = !DILocation(line: 615, column: 9, scope: !4817)
!5182 = !DILocation(line: 615, column: 2, scope: !4817)
!5183 = !DILocation(line: 616, column: 1, scope: !4817)
!5184 = distinct !DISubprogram(name: "xen_raw_console_write", scope: !3, file: !3, line: 656, type: !5185, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{null, !201}
!5187 = !DILocalVariable(name: "str", arg: 1, scope: !5184, file: !3, line: 656, type: !201)
!5188 = !DILocation(line: 656, column: 40, scope: !5184)
!5189 = !DILocalVariable(name: "len", scope: !5184, file: !3, line: 658, type: !307)
!5190 = !DILocation(line: 658, column: 10, scope: !5184)
!5191 = !DILocation(line: 658, column: 23, scope: !5184)
!5192 = !DILocation(line: 658, column: 16, scope: !5184)
!5193 = !DILocalVariable(name: "rc", scope: !5184, file: !3, line: 659, type: !207)
!5194 = !DILocation(line: 659, column: 6, scope: !5184)
!5195 = !DILocation(line: 661, column: 6, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 661, column: 6)
!5197 = !DILocation(line: 661, column: 6, scope: !5184)
!5198 = !DILocation(line: 662, column: 30, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 661, column: 20)
!5200 = !DILocation(line: 662, column: 35, scope: !5199)
!5201 = !DILocation(line: 662, column: 8, scope: !5199)
!5202 = !DILocation(line: 662, column: 6, scope: !5199)
!5203 = !DILocation(line: 663, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 663, column: 7)
!5205 = !DILocation(line: 663, column: 10, scope: !5204)
!5206 = !DILocation(line: 663, column: 21, scope: !5204)
!5207 = !DILocation(line: 663, column: 25, scope: !5204)
!5208 = !DILocation(line: 663, column: 7, scope: !5199)
!5209 = !DILocation(line: 664, column: 4, scope: !5204)
!5210 = !DILocation(line: 665, column: 2, scope: !5199)
!5211 = !DILocation(line: 666, column: 25, scope: !5184)
!5212 = !DILocation(line: 666, column: 30, scope: !5184)
!5213 = !DILocation(line: 666, column: 2, scope: !5184)
!5214 = !DILocation(line: 667, column: 1, scope: !5184)
!5215 = distinct !DISubprogram(name: "dom0_write_console", scope: !3, file: !3, line: 170, type: !4671, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5216 = !DILocalVariable(name: "vtermno", arg: 1, scope: !5215, file: !3, line: 170, type: !561)
!5217 = !DILocation(line: 170, column: 40, scope: !5215)
!5218 = !DILocalVariable(name: "str", arg: 2, scope: !5215, file: !3, line: 170, type: !201)
!5219 = !DILocation(line: 170, column: 61, scope: !5215)
!5220 = !DILocalVariable(name: "len", arg: 3, scope: !5215, file: !3, line: 170, type: !207)
!5221 = !DILocation(line: 170, column: 70, scope: !5215)
!5222 = !DILocalVariable(name: "rc", scope: !5215, file: !3, line: 172, type: !207)
!5223 = !DILocation(line: 172, column: 6, scope: !5215)
!5224 = !DILocation(line: 172, column: 50, scope: !5215)
!5225 = !DILocation(line: 172, column: 63, scope: !5215)
!5226 = !DILocation(line: 172, column: 11, scope: !5215)
!5227 = !DILocation(line: 173, column: 6, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 173, column: 6)
!5229 = !DILocation(line: 173, column: 9, scope: !5228)
!5230 = !DILocation(line: 173, column: 6, scope: !5215)
!5231 = !DILocation(line: 174, column: 10, scope: !5228)
!5232 = !DILocation(line: 174, column: 3, scope: !5228)
!5233 = !DILocation(line: 176, column: 9, scope: !5215)
!5234 = !DILocation(line: 176, column: 2, scope: !5215)
!5235 = !DILocation(line: 177, column: 1, scope: !5215)
!5236 = distinct !DISubprogram(name: "xen_hvm_early_write", scope: !3, file: !3, line: 596, type: !5237, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{null, !561, !201, !207}
!5239 = !DILocalVariable(name: "vtermno", arg: 1, scope: !5236, file: !3, line: 596, type: !561)
!5240 = !DILocation(line: 596, column: 42, scope: !5236)
!5241 = !DILocalVariable(name: "str", arg: 2, scope: !5236, file: !3, line: 596, type: !201)
!5242 = !DILocation(line: 596, column: 63, scope: !5236)
!5243 = !DILocalVariable(name: "len", arg: 3, scope: !5236, file: !3, line: 596, type: !207)
!5244 = !DILocation(line: 596, column: 72, scope: !5236)
!5245 = !DILocation(line: 598, column: 6, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 598, column: 6)
!5247 = !DILocation(line: 598, column: 6, scope: !5236)
!5248 = !DILocation(line: 599, column: 15, scope: !5246)
!5249 = !DILocation(line: 599, column: 20, scope: !5246)
!5250 = !DILocation(line: 599, column: 3, scope: !5246)
!5251 = !DILocation(line: 600, column: 1, scope: !5236)
!5252 = !DILocalVariable(name: "fmt", arg: 1, scope: !4753, file: !3, line: 669, type: !201)
!5253 = !DILocation(line: 669, column: 33, scope: !4753)
!5254 = !DILocalVariable(name: "ap", scope: !4753, file: !3, line: 672, type: !5255)
!5255 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5256, line: 99, baseType: !5257)
!5256 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!5257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !5256, line: 40, baseType: !5258)
!5258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 672, baseType: !5259)
!5259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5260, size: 192, elements: !1398)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 672, size: 192, elements: !5261)
!5261 = !{!5262, !5263, !5264, !5265}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5260, file: !3, line: 672, baseType: !7, size: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5260, file: !3, line: 672, baseType: !7, size: 32, offset: 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5260, file: !3, line: 672, baseType: !184, size: 64, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5260, file: !3, line: 672, baseType: !184, size: 64, offset: 128)
!5266 = !DILocation(line: 672, column: 10, scope: !4753)
!5267 = !DILocation(line: 674, column: 2, scope: !4753)
!5268 = !DILocation(line: 675, column: 30, scope: !4753)
!5269 = !DILocation(line: 675, column: 35, scope: !4753)
!5270 = !DILocation(line: 675, column: 2, scope: !4753)
!5271 = !DILocation(line: 676, column: 2, scope: !4753)
!5272 = !DILocation(line: 678, column: 2, scope: !4753)
!5273 = !DILocation(line: 679, column: 1, scope: !4753)
!5274 = distinct !DISubprogram(name: "list_empty", scope: !5275, file: !5275, line: 280, type: !5276, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5275 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!207, !5278}
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!5280 = !DILocalVariable(name: "head", arg: 1, scope: !5274, file: !5275, line: 280, type: !5278)
!5281 = !DILocation(line: 280, column: 54, scope: !5274)
!5282 = !DILocation(line: 282, column: 9, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5274, file: !5275, line: 282, column: 9)
!5284 = !DILocation(line: 282, column: 9, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5283, file: !5275, line: 282, column: 9)
!5286 = !DILocation(line: 282, column: 34, scope: !5274)
!5287 = !DILocation(line: 282, column: 31, scope: !5274)
!5288 = !DILocation(line: 282, column: 2, scope: !5274)
!5289 = distinct !DISubprogram(name: "hvm_get_parameter", scope: !4764, file: !4764, line: 39, type: !5290, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!207, !207, !5292}
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!5293 = !DILocalVariable(name: "idx", arg: 1, scope: !5289, file: !4764, line: 39, type: !207)
!5294 = !DILocation(line: 39, column: 41, scope: !5289)
!5295 = !DILocalVariable(name: "value", arg: 2, scope: !5289, file: !4764, line: 39, type: !5292)
!5296 = !DILocation(line: 39, column: 56, scope: !5289)
!5297 = !DILocalVariable(name: "xhv", scope: !5289, file: !4764, line: 41, type: !5298)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_hvm_param", file: !5299, line: 30, size: 128, elements: !5300)
!5299 = !DIFile(filename: "./include/xen/interface/hvm/hvm_op.h", directory: "/home/lizy2001/genbc/linux")
!5300 = !{!5301, !5305, !5306}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !5298, file: !5299, line: 31, baseType: !5302, size: 16)
!5302 = !DIDerivedType(tag: DW_TAG_typedef, name: "domid_t", file: !5303, line: 437, baseType: !5304)
!5303 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!5304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !190, line: 103, baseType: !907)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5298, file: !5299, line: 32, baseType: !561, size: 32, offset: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5298, file: !5299, line: 33, baseType: !4909, size: 64, offset: 64)
!5307 = !DILocation(line: 41, column: 23, scope: !5289)
!5308 = !DILocalVariable(name: "r", scope: !5289, file: !4764, line: 42, type: !207)
!5309 = !DILocation(line: 42, column: 6, scope: !5289)
!5310 = !DILocation(line: 44, column: 6, scope: !5289)
!5311 = !DILocation(line: 44, column: 12, scope: !5289)
!5312 = !DILocation(line: 45, column: 14, scope: !5289)
!5313 = !DILocation(line: 45, column: 6, scope: !5289)
!5314 = !DILocation(line: 45, column: 12, scope: !5289)
!5315 = !DILocation(line: 46, column: 41, scope: !5289)
!5316 = !DILocation(line: 46, column: 6, scope: !5289)
!5317 = !DILocation(line: 46, column: 4, scope: !5289)
!5318 = !DILocation(line: 47, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5289, file: !4764, line: 47, column: 6)
!5320 = !DILocation(line: 47, column: 8, scope: !5319)
!5321 = !DILocation(line: 47, column: 6, scope: !5289)
!5322 = !DILocation(line: 48, column: 3, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5319, file: !4764, line: 47, column: 13)
!5324 = !DILocation(line: 50, column: 10, scope: !5323)
!5325 = !DILocation(line: 50, column: 3, scope: !5323)
!5326 = !DILocation(line: 52, column: 15, scope: !5289)
!5327 = !DILocation(line: 52, column: 3, scope: !5289)
!5328 = !DILocation(line: 52, column: 9, scope: !5289)
!5329 = !DILocation(line: 53, column: 9, scope: !5289)
!5330 = !DILocation(line: 53, column: 2, scope: !5289)
!5331 = !DILocation(line: 54, column: 1, scope: !5289)
!5332 = distinct !DISubprogram(name: "HYPERVISOR_hvm_op", scope: !5333, file: !5333, line: 420, type: !5334, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5333 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!326, !207, !184}
!5336 = !DILocalVariable(name: "op", arg: 1, scope: !5332, file: !5333, line: 420, type: !207)
!5337 = !DILocation(line: 420, column: 23, scope: !5332)
!5338 = !DILocalVariable(name: "arg", arg: 2, scope: !5332, file: !5333, line: 420, type: !184)
!5339 = !DILocation(line: 420, column: 33, scope: !5332)
!5340 = !DILocalVariable(name: "__res", scope: !5341, file: !5333, line: 422, type: !326)
!5341 = distinct !DILexicalBlock(scope: !5332, file: !5333, line: 422, column: 15)
!5342 = !DILocation(line: 422, column: 15, scope: !5341)
!5343 = !DILocalVariable(name: "__arg1", scope: !5341, file: !5333, line: 422, type: !326)
!5344 = !DILocalVariable(name: "__arg2", scope: !5341, file: !5333, line: 422, type: !326)
!5345 = !DILocalVariable(name: "__arg3", scope: !5341, file: !5333, line: 422, type: !326)
!5346 = !DILocalVariable(name: "__arg4", scope: !5341, file: !5333, line: 422, type: !326)
!5347 = !DILocalVariable(name: "__arg5", scope: !5341, file: !5333, line: 422, type: !326)
!5348 = !{i32 -2141888054}
!5349 = !DILocation(line: 422, column: 8, scope: !5332)
!5350 = !DILocalVariable(name: "op", arg: 1, scope: !4763, file: !4764, line: 9, type: !207)
!5351 = !DILocation(line: 9, column: 35, scope: !4763)
!5352 = !DILocation(line: 31, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !4763, file: !4764, line: 31, column: 6)
!5354 = !DILocation(line: 31, column: 9, scope: !5353)
!5355 = !DILocation(line: 31, column: 6, scope: !4763)
!5356 = !DILocation(line: 32, column: 3, scope: !5353)
!5357 = !DILocation(line: 34, column: 13, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !4763, file: !4764, line: 34, column: 6)
!5359 = !DILocation(line: 34, column: 7, scope: !5358)
!5360 = !DILocation(line: 34, column: 6, scope: !4763)
!5361 = !DILocation(line: 35, column: 3, scope: !5358)
!5362 = !DILocation(line: 37, column: 15, scope: !4763)
!5363 = !DILocation(line: 37, column: 9, scope: !4763)
!5364 = !DILocation(line: 37, column: 2, scope: !4763)
!5365 = !DILocation(line: 38, column: 1, scope: !4763)
!5366 = distinct !DISubprogram(name: "xen_initial_domain_console_init", scope: !3, file: !3, line: 274, type: !4934, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5367 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !5368)
!5368 = distinct !DILocation(line: 293, column: 2, scope: !5366)
!5369 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !5370)
!5370 = distinct !DILocation(line: 291, column: 2, scope: !5366)
!5371 = !DILocalVariable(name: "info", scope: !5366, file: !3, line: 276, type: !185)
!5372 = !DILocation(line: 276, column: 23, scope: !5366)
!5373 = !DILocation(line: 278, column: 7, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 278, column: 6)
!5375 = !DILocation(line: 278, column: 6, scope: !5366)
!5376 = !DILocation(line: 279, column: 3, scope: !5374)
!5377 = !DILocation(line: 281, column: 9, scope: !5366)
!5378 = !DILocation(line: 281, column: 7, scope: !5366)
!5379 = !DILocation(line: 282, column: 7, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 282, column: 6)
!5381 = !DILocation(line: 282, column: 6, scope: !5366)
!5382 = !DILocation(line: 283, column: 10, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 282, column: 13)
!5384 = !DILocation(line: 283, column: 8, scope: !5383)
!5385 = !DILocation(line: 284, column: 8, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 284, column: 7)
!5387 = !DILocation(line: 284, column: 7, scope: !5383)
!5388 = !DILocation(line: 285, column: 4, scope: !5386)
!5389 = !DILocation(line: 286, column: 2, scope: !5383)
!5390 = !DILocation(line: 288, column: 14, scope: !5366)
!5391 = !DILocation(line: 288, column: 2, scope: !5366)
!5392 = !DILocation(line: 288, column: 8, scope: !5366)
!5393 = !DILocation(line: 288, column: 12, scope: !5366)
!5394 = !DILocation(line: 289, column: 2, scope: !5366)
!5395 = !DILocation(line: 289, column: 8, scope: !5366)
!5396 = !DILocation(line: 289, column: 16, scope: !5366)
!5397 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !5370)
!5398 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !5370)
!5399 = !DILocation(line: 292, column: 17, scope: !5366)
!5400 = !DILocation(line: 292, column: 23, scope: !5366)
!5401 = !DILocation(line: 292, column: 2, scope: !5366)
!5402 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !5368)
!5403 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !5368)
!5404 = !DILocation(line: 295, column: 2, scope: !5366)
!5405 = !DILocation(line: 296, column: 1, scope: !5366)
!5406 = distinct !DISubprogram(name: "xen_hvm_console_init", scope: !3, file: !3, line: 187, type: !4934, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5407 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !5408)
!5408 = distinct !DILocation(line: 228, column: 2, scope: !5406)
!5409 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !5410)
!5410 = distinct !DILocation(line: 226, column: 2, scope: !5406)
!5411 = !DILocalVariable(name: "r", scope: !5406, file: !3, line: 189, type: !207)
!5412 = !DILocation(line: 189, column: 6, scope: !5406)
!5413 = !DILocalVariable(name: "v", scope: !5406, file: !3, line: 190, type: !4909)
!5414 = !DILocation(line: 190, column: 11, scope: !5406)
!5415 = !DILocalVariable(name: "gfn", scope: !5406, file: !3, line: 191, type: !326)
!5416 = !DILocation(line: 191, column: 16, scope: !5406)
!5417 = !DILocalVariable(name: "info", scope: !5406, file: !3, line: 192, type: !185)
!5418 = !DILocation(line: 192, column: 23, scope: !5406)
!5419 = !DILocation(line: 194, column: 7, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 194, column: 6)
!5421 = !DILocation(line: 194, column: 6, scope: !5406)
!5422 = !DILocation(line: 195, column: 3, scope: !5420)
!5423 = !DILocation(line: 197, column: 9, scope: !5406)
!5424 = !DILocation(line: 197, column: 7, scope: !5406)
!5425 = !DILocation(line: 198, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 198, column: 6)
!5427 = !DILocation(line: 198, column: 6, scope: !5406)
!5428 = !DILocation(line: 199, column: 10, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 198, column: 13)
!5430 = !DILocation(line: 199, column: 8, scope: !5429)
!5431 = !DILocation(line: 200, column: 8, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 200, column: 7)
!5433 = !DILocation(line: 200, column: 7, scope: !5429)
!5434 = !DILocation(line: 201, column: 4, scope: !5432)
!5435 = !DILocation(line: 202, column: 2, scope: !5429)
!5436 = !DILocation(line: 202, column: 13, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 202, column: 13)
!5438 = !DILocation(line: 202, column: 19, scope: !5437)
!5439 = !DILocation(line: 202, column: 24, scope: !5437)
!5440 = !DILocation(line: 202, column: 13, scope: !5426)
!5441 = !DILocation(line: 204, column: 3, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 202, column: 33)
!5443 = !DILocation(line: 212, column: 6, scope: !5406)
!5444 = !DILocation(line: 212, column: 4, scope: !5406)
!5445 = !DILocation(line: 213, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 213, column: 6)
!5447 = !DILocation(line: 213, column: 8, scope: !5446)
!5448 = !DILocation(line: 213, column: 12, scope: !5446)
!5449 = !DILocation(line: 213, column: 15, scope: !5446)
!5450 = !DILocation(line: 213, column: 17, scope: !5446)
!5451 = !DILocation(line: 213, column: 6, scope: !5406)
!5452 = !DILocation(line: 214, column: 3, scope: !5446)
!5453 = !DILocation(line: 215, column: 17, scope: !5406)
!5454 = !DILocation(line: 215, column: 2, scope: !5406)
!5455 = !DILocation(line: 215, column: 8, scope: !5406)
!5456 = !DILocation(line: 215, column: 15, scope: !5406)
!5457 = !DILocation(line: 216, column: 4, scope: !5406)
!5458 = !DILocation(line: 217, column: 6, scope: !5406)
!5459 = !DILocation(line: 217, column: 4, scope: !5406)
!5460 = !DILocation(line: 218, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 218, column: 6)
!5462 = !DILocation(line: 218, column: 8, scope: !5461)
!5463 = !DILocation(line: 218, column: 12, scope: !5461)
!5464 = !DILocation(line: 218, column: 15, scope: !5461)
!5465 = !DILocation(line: 218, column: 17, scope: !5461)
!5466 = !DILocation(line: 218, column: 6, scope: !5406)
!5467 = !DILocation(line: 219, column: 3, scope: !5461)
!5468 = !DILocation(line: 220, column: 8, scope: !5406)
!5469 = !DILocation(line: 220, column: 6, scope: !5406)
!5470 = !DILocation(line: 221, column: 15, scope: !5406)
!5471 = !DILocation(line: 221, column: 2, scope: !5406)
!5472 = !DILocation(line: 221, column: 8, scope: !5406)
!5473 = !DILocation(line: 221, column: 13, scope: !5406)
!5474 = !DILocation(line: 222, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 222, column: 6)
!5476 = !DILocation(line: 222, column: 12, scope: !5475)
!5477 = !DILocation(line: 222, column: 17, scope: !5475)
!5478 = !DILocation(line: 222, column: 6, scope: !5406)
!5479 = !DILocation(line: 223, column: 3, scope: !5475)
!5480 = !DILocation(line: 224, column: 2, scope: !5406)
!5481 = !DILocation(line: 224, column: 8, scope: !5406)
!5482 = !DILocation(line: 224, column: 16, scope: !5406)
!5483 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !5410)
!5484 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !5410)
!5485 = !DILocation(line: 227, column: 17, scope: !5406)
!5486 = !DILocation(line: 227, column: 23, scope: !5406)
!5487 = !DILocation(line: 227, column: 2, scope: !5406)
!5488 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !5408)
!5489 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !5408)
!5490 = !DILocation(line: 230, column: 2, scope: !5406)
!5491 = !DILabel(scope: !5406, name: "err", file: !3, line: 231)
!5492 = !DILocation(line: 231, column: 1, scope: !5406)
!5493 = !DILocation(line: 232, column: 8, scope: !5406)
!5494 = !DILocation(line: 232, column: 2, scope: !5406)
!5495 = !DILocation(line: 233, column: 2, scope: !5406)
!5496 = !DILocation(line: 234, column: 1, scope: !5406)
!5497 = distinct !DISubprogram(name: "xen_pv_console_init", scope: !3, file: !3, line: 248, type: !4934, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5498 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !5499)
!5499 = distinct !DILocation(line: 269, column: 2, scope: !5497)
!5500 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !5501)
!5501 = distinct !DILocation(line: 267, column: 2, scope: !5497)
!5502 = !DILocalVariable(name: "info", scope: !5497, file: !3, line: 250, type: !185)
!5503 = !DILocation(line: 250, column: 23, scope: !5497)
!5504 = !DILocation(line: 252, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 252, column: 6)
!5506 = !DILocation(line: 252, column: 6, scope: !5497)
!5507 = !DILocation(line: 253, column: 3, scope: !5505)
!5508 = !DILocation(line: 255, column: 7, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 255, column: 6)
!5510 = !DILocation(line: 255, column: 23, scope: !5509)
!5511 = !DILocation(line: 255, column: 31, scope: !5509)
!5512 = !DILocation(line: 255, column: 36, scope: !5509)
!5513 = !DILocation(line: 255, column: 6, scope: !5497)
!5514 = !DILocation(line: 256, column: 3, scope: !5509)
!5515 = !DILocation(line: 258, column: 9, scope: !5497)
!5516 = !DILocation(line: 258, column: 7, scope: !5497)
!5517 = !DILocation(line: 259, column: 7, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 259, column: 6)
!5519 = !DILocation(line: 259, column: 6, scope: !5497)
!5520 = !DILocation(line: 260, column: 10, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 259, column: 13)
!5522 = !DILocation(line: 260, column: 8, scope: !5521)
!5523 = !DILocation(line: 261, column: 8, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 261, column: 7)
!5525 = !DILocation(line: 261, column: 7, scope: !5521)
!5526 = !DILocation(line: 262, column: 4, scope: !5524)
!5527 = !DILocation(line: 263, column: 2, scope: !5521)
!5528 = !DILocation(line: 263, column: 13, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 263, column: 13)
!5530 = !DILocation(line: 263, column: 19, scope: !5529)
!5531 = !DILocation(line: 263, column: 24, scope: !5529)
!5532 = !DILocation(line: 263, column: 13, scope: !5518)
!5533 = !DILocation(line: 265, column: 3, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 263, column: 33)
!5535 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !5501)
!5536 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !5501)
!5537 = !DILocation(line: 268, column: 23, scope: !5497)
!5538 = !DILocation(line: 268, column: 2, scope: !5497)
!5539 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !5499)
!5540 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !5499)
!5541 = !DILocation(line: 271, column: 2, scope: !5497)
!5542 = !DILocation(line: 272, column: 1, scope: !5497)
!5543 = distinct !DISubprogram(name: "irq_set_noprobe", scope: !115, file: !115, line: 766, type: !5544, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5544 = !DISubroutineType(types: !5545)
!5545 = !{null, !7}
!5546 = !DILocalVariable(name: "irq", arg: 1, scope: !5543, file: !115, line: 766, type: !7)
!5547 = !DILocation(line: 766, column: 49, scope: !5543)
!5548 = !DILocation(line: 768, column: 20, scope: !5543)
!5549 = !DILocation(line: 768, column: 2, scope: !5543)
!5550 = !DILocation(line: 769, column: 1, scope: !5543)
!5551 = distinct !DISubprogram(name: "IS_ERR", scope: !5552, file: !5552, line: 34, type: !5553, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5552 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!492, !2797}
!5555 = !DILocalVariable(name: "ptr", arg: 1, scope: !5551, file: !5552, line: 34, type: !2797)
!5556 = !DILocation(line: 34, column: 60, scope: !5551)
!5557 = !DILocation(line: 36, column: 9, scope: !5551)
!5558 = !DILocation(line: 36, column: 2, scope: !5551)
!5559 = distinct !DISubprogram(name: "PTR_ERR", scope: !5552, file: !5552, line: 29, type: !5560, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!311, !2797}
!5562 = !DILocalVariable(name: "ptr", arg: 1, scope: !5559, file: !5552, line: 29, type: !2797)
!5563 = !DILocation(line: 29, column: 61, scope: !5559)
!5564 = !DILocation(line: 31, column: 16, scope: !5559)
!5565 = !DILocation(line: 31, column: 9, scope: !5559)
!5566 = !DILocation(line: 31, column: 2, scope: !5559)
!5567 = distinct !DISubprogram(name: "list_del", scope: !5275, file: !5275, line: 144, type: !5568, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{null, !193}
!5570 = !DILocalVariable(name: "entry", arg: 1, scope: !5567, file: !5275, line: 144, type: !193)
!5571 = !DILocation(line: 144, column: 47, scope: !5567)
!5572 = !DILocation(line: 146, column: 19, scope: !5567)
!5573 = !DILocation(line: 146, column: 2, scope: !5567)
!5574 = !DILocation(line: 147, column: 2, scope: !5567)
!5575 = !DILocation(line: 147, column: 9, scope: !5567)
!5576 = !DILocation(line: 147, column: 14, scope: !5567)
!5577 = !DILocation(line: 148, column: 2, scope: !5567)
!5578 = !DILocation(line: 148, column: 9, scope: !5567)
!5579 = !DILocation(line: 148, column: 14, scope: !5567)
!5580 = !DILocation(line: 149, column: 1, scope: !5567)
!5581 = distinct !DISubprogram(name: "dom0_read_console", scope: !3, file: !3, line: 161, type: !4667, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5582 = !DILocalVariable(name: "vtermno", arg: 1, scope: !5581, file: !3, line: 161, type: !561)
!5583 = !DILocation(line: 161, column: 39, scope: !5581)
!5584 = !DILocalVariable(name: "buf", arg: 2, scope: !5581, file: !3, line: 161, type: !276)
!5585 = !DILocation(line: 161, column: 54, scope: !5581)
!5586 = !DILocalVariable(name: "len", arg: 3, scope: !5581, file: !3, line: 161, type: !207)
!5587 = !DILocation(line: 161, column: 63, scope: !5581)
!5588 = !DILocation(line: 163, column: 47, scope: !5581)
!5589 = !DILocation(line: 163, column: 52, scope: !5581)
!5590 = !DILocation(line: 163, column: 9, scope: !5581)
!5591 = !DILocation(line: 163, column: 2, scope: !5581)
!5592 = distinct !DISubprogram(name: "HYPERVISOR_console_io", scope: !5333, file: !5333, line: 368, type: !5593, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!207, !207, !207, !276}
!5595 = !DILocalVariable(name: "cmd", arg: 1, scope: !5592, file: !5333, line: 368, type: !207)
!5596 = !DILocation(line: 368, column: 27, scope: !5592)
!5597 = !DILocalVariable(name: "count", arg: 2, scope: !5592, file: !5333, line: 368, type: !207)
!5598 = !DILocation(line: 368, column: 36, scope: !5592)
!5599 = !DILocalVariable(name: "str", arg: 3, scope: !5592, file: !5333, line: 368, type: !276)
!5600 = !DILocation(line: 368, column: 49, scope: !5592)
!5601 = !DILocalVariable(name: "__res", scope: !5602, file: !5333, line: 370, type: !326)
!5602 = distinct !DILexicalBlock(scope: !5592, file: !5333, line: 370, column: 9)
!5603 = !DILocation(line: 370, column: 9, scope: !5602)
!5604 = !DILocalVariable(name: "__arg1", scope: !5602, file: !5333, line: 370, type: !326)
!5605 = !DILocalVariable(name: "__arg2", scope: !5602, file: !5333, line: 370, type: !326)
!5606 = !DILocalVariable(name: "__arg3", scope: !5602, file: !5333, line: 370, type: !326)
!5607 = !DILocalVariable(name: "__arg4", scope: !5602, file: !5333, line: 370, type: !326)
!5608 = !DILocalVariable(name: "__arg5", scope: !5602, file: !5333, line: 370, type: !326)
!5609 = !{i32 -2141898063}
!5610 = !DILocation(line: 370, column: 2, scope: !5592)
!5611 = distinct !DISubprogram(name: "kzalloc", scope: !152, file: !152, line: 662, type: !5612, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!184, !323, !798}
!5614 = !DILocalVariable(name: "s", arg: 1, scope: !5615, file: !152, line: 445, type: !983)
!5615 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !152, file: !152, line: 445, type: !5616, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!184, !983, !798, !323}
!5618 = !DILocation(line: 445, column: 72, scope: !5615, inlinedAt: !5619)
!5619 = distinct !DILocation(line: 552, column: 10, scope: !5620, inlinedAt: !5623)
!5620 = distinct !DILexicalBlock(scope: !5621, file: !152, line: 540, column: 34)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !152, line: 540, column: 6)
!5622 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 538, type: !5612, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5623 = distinct !DILocation(line: 664, column: 9, scope: !5611)
!5624 = !DILocalVariable(name: "flags", arg: 2, scope: !5615, file: !152, line: 446, type: !798)
!5625 = !DILocation(line: 446, column: 9, scope: !5615, inlinedAt: !5619)
!5626 = !DILocalVariable(name: "size", arg: 3, scope: !5615, file: !152, line: 446, type: !323)
!5627 = !DILocation(line: 446, column: 23, scope: !5615, inlinedAt: !5619)
!5628 = !DILocalVariable(name: "ret", scope: !5615, file: !152, line: 448, type: !184)
!5629 = !DILocation(line: 448, column: 8, scope: !5615, inlinedAt: !5619)
!5630 = !DILocalVariable(name: "flags", arg: 1, scope: !5631, file: !152, line: 318, type: !798)
!5631 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 318, type: !5632, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!151, !798}
!5634 = !DILocation(line: 318, column: 67, scope: !5631, inlinedAt: !5635)
!5635 = distinct !DILocation(line: 553, column: 20, scope: !5620, inlinedAt: !5623)
!5636 = !DILocalVariable(name: "size", arg: 1, scope: !5637, file: !152, line: 346, type: !323)
!5637 = distinct !DISubprogram(name: "kmalloc_index", scope: !152, file: !152, line: 346, type: !5638, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!7, !323}
!5640 = !DILocation(line: 346, column: 58, scope: !5637, inlinedAt: !5641)
!5641 = distinct !DILocation(line: 547, column: 11, scope: !5620, inlinedAt: !5623)
!5642 = !DILocalVariable(name: "size", arg: 1, scope: !5643, file: !152, line: 472, type: !323)
!5643 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !152, file: !152, line: 472, type: !5644, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!184, !323, !798, !7}
!5646 = !DILocation(line: 472, column: 28, scope: !5643, inlinedAt: !5647)
!5647 = distinct !DILocation(line: 481, column: 9, scope: !5648, inlinedAt: !5649)
!5648 = distinct !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 478, type: !5612, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5649 = distinct !DILocation(line: 545, column: 11, scope: !5650, inlinedAt: !5623)
!5650 = distinct !DILexicalBlock(scope: !5620, file: !152, line: 544, column: 7)
!5651 = !DILocalVariable(name: "flags", arg: 2, scope: !5643, file: !152, line: 472, type: !798)
!5652 = !DILocation(line: 472, column: 40, scope: !5643, inlinedAt: !5647)
!5653 = !DILocalVariable(name: "order", arg: 3, scope: !5643, file: !152, line: 472, type: !7)
!5654 = !DILocation(line: 472, column: 60, scope: !5643, inlinedAt: !5647)
!5655 = !DILocalVariable(name: "size", arg: 1, scope: !5648, file: !152, line: 478, type: !323)
!5656 = !DILocation(line: 478, column: 51, scope: !5648, inlinedAt: !5649)
!5657 = !DILocalVariable(name: "flags", arg: 2, scope: !5648, file: !152, line: 478, type: !798)
!5658 = !DILocation(line: 478, column: 63, scope: !5648, inlinedAt: !5649)
!5659 = !DILocalVariable(name: "order", scope: !5648, file: !152, line: 480, type: !7)
!5660 = !DILocation(line: 480, column: 15, scope: !5648, inlinedAt: !5649)
!5661 = !DILocalVariable(name: "size", arg: 1, scope: !5622, file: !152, line: 538, type: !323)
!5662 = !DILocation(line: 538, column: 45, scope: !5622, inlinedAt: !5623)
!5663 = !DILocalVariable(name: "flags", arg: 2, scope: !5622, file: !152, line: 538, type: !798)
!5664 = !DILocation(line: 538, column: 57, scope: !5622, inlinedAt: !5623)
!5665 = !DILocalVariable(name: "index", scope: !5620, file: !152, line: 542, type: !7)
!5666 = !DILocation(line: 542, column: 16, scope: !5620, inlinedAt: !5623)
!5667 = !DILocalVariable(name: "size", arg: 1, scope: !5611, file: !152, line: 662, type: !323)
!5668 = !DILocation(line: 662, column: 36, scope: !5611)
!5669 = !DILocalVariable(name: "flags", arg: 2, scope: !5611, file: !152, line: 662, type: !798)
!5670 = !DILocation(line: 662, column: 48, scope: !5611)
!5671 = !DILocation(line: 664, column: 17, scope: !5611)
!5672 = !DILocation(line: 664, column: 23, scope: !5611)
!5673 = !DILocation(line: 664, column: 29, scope: !5611)
!5674 = !DILocation(line: 540, column: 27, scope: !5621, inlinedAt: !5623)
!5675 = !DILocation(line: 540, column: 6, scope: !5621, inlinedAt: !5623)
!5676 = !DILocation(line: 540, column: 6, scope: !5622, inlinedAt: !5623)
!5677 = !DILocation(line: 544, column: 7, scope: !5650, inlinedAt: !5623)
!5678 = !DILocation(line: 544, column: 12, scope: !5650, inlinedAt: !5623)
!5679 = !DILocation(line: 544, column: 7, scope: !5620, inlinedAt: !5623)
!5680 = !DILocation(line: 545, column: 25, scope: !5650, inlinedAt: !5623)
!5681 = !DILocation(line: 545, column: 31, scope: !5650, inlinedAt: !5623)
!5682 = !DILocation(line: 480, column: 33, scope: !5648, inlinedAt: !5649)
!5683 = !DILocation(line: 480, column: 23, scope: !5648, inlinedAt: !5649)
!5684 = !DILocation(line: 481, column: 29, scope: !5648, inlinedAt: !5649)
!5685 = !DILocation(line: 481, column: 35, scope: !5648, inlinedAt: !5649)
!5686 = !DILocation(line: 481, column: 42, scope: !5648, inlinedAt: !5649)
!5687 = !DILocation(line: 474, column: 23, scope: !5643, inlinedAt: !5647)
!5688 = !DILocation(line: 474, column: 29, scope: !5643, inlinedAt: !5647)
!5689 = !DILocation(line: 474, column: 36, scope: !5643, inlinedAt: !5647)
!5690 = !DILocation(line: 474, column: 9, scope: !5643, inlinedAt: !5647)
!5691 = !DILocation(line: 545, column: 4, scope: !5650, inlinedAt: !5623)
!5692 = !DILocation(line: 547, column: 25, scope: !5620, inlinedAt: !5623)
!5693 = !DILocation(line: 348, column: 7, scope: !5694, inlinedAt: !5641)
!5694 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 348, column: 6)
!5695 = !DILocation(line: 348, column: 6, scope: !5637, inlinedAt: !5641)
!5696 = !DILocation(line: 349, column: 3, scope: !5694, inlinedAt: !5641)
!5697 = !DILocation(line: 351, column: 6, scope: !5698, inlinedAt: !5641)
!5698 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 351, column: 6)
!5699 = !DILocation(line: 351, column: 11, scope: !5698, inlinedAt: !5641)
!5700 = !DILocation(line: 351, column: 6, scope: !5637, inlinedAt: !5641)
!5701 = !DILocation(line: 352, column: 3, scope: !5698, inlinedAt: !5641)
!5702 = !DILocation(line: 354, column: 32, scope: !5703, inlinedAt: !5641)
!5703 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 354, column: 6)
!5704 = !DILocation(line: 354, column: 37, scope: !5703, inlinedAt: !5641)
!5705 = !DILocation(line: 354, column: 42, scope: !5703, inlinedAt: !5641)
!5706 = !DILocation(line: 354, column: 45, scope: !5703, inlinedAt: !5641)
!5707 = !DILocation(line: 354, column: 50, scope: !5703, inlinedAt: !5641)
!5708 = !DILocation(line: 354, column: 6, scope: !5637, inlinedAt: !5641)
!5709 = !DILocation(line: 355, column: 3, scope: !5703, inlinedAt: !5641)
!5710 = !DILocation(line: 356, column: 32, scope: !5711, inlinedAt: !5641)
!5711 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 356, column: 6)
!5712 = !DILocation(line: 356, column: 37, scope: !5711, inlinedAt: !5641)
!5713 = !DILocation(line: 356, column: 43, scope: !5711, inlinedAt: !5641)
!5714 = !DILocation(line: 356, column: 46, scope: !5711, inlinedAt: !5641)
!5715 = !DILocation(line: 356, column: 51, scope: !5711, inlinedAt: !5641)
!5716 = !DILocation(line: 356, column: 6, scope: !5637, inlinedAt: !5641)
!5717 = !DILocation(line: 357, column: 3, scope: !5711, inlinedAt: !5641)
!5718 = !DILocation(line: 358, column: 6, scope: !5719, inlinedAt: !5641)
!5719 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 358, column: 6)
!5720 = !DILocation(line: 358, column: 11, scope: !5719, inlinedAt: !5641)
!5721 = !DILocation(line: 358, column: 6, scope: !5637, inlinedAt: !5641)
!5722 = !DILocation(line: 358, column: 26, scope: !5719, inlinedAt: !5641)
!5723 = !DILocation(line: 359, column: 6, scope: !5724, inlinedAt: !5641)
!5724 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 359, column: 6)
!5725 = !DILocation(line: 359, column: 11, scope: !5724, inlinedAt: !5641)
!5726 = !DILocation(line: 359, column: 6, scope: !5637, inlinedAt: !5641)
!5727 = !DILocation(line: 359, column: 26, scope: !5724, inlinedAt: !5641)
!5728 = !DILocation(line: 360, column: 6, scope: !5729, inlinedAt: !5641)
!5729 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 360, column: 6)
!5730 = !DILocation(line: 360, column: 11, scope: !5729, inlinedAt: !5641)
!5731 = !DILocation(line: 360, column: 6, scope: !5637, inlinedAt: !5641)
!5732 = !DILocation(line: 360, column: 26, scope: !5729, inlinedAt: !5641)
!5733 = !DILocation(line: 361, column: 6, scope: !5734, inlinedAt: !5641)
!5734 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 361, column: 6)
!5735 = !DILocation(line: 361, column: 11, scope: !5734, inlinedAt: !5641)
!5736 = !DILocation(line: 361, column: 6, scope: !5637, inlinedAt: !5641)
!5737 = !DILocation(line: 361, column: 26, scope: !5734, inlinedAt: !5641)
!5738 = !DILocation(line: 362, column: 6, scope: !5739, inlinedAt: !5641)
!5739 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 362, column: 6)
!5740 = !DILocation(line: 362, column: 11, scope: !5739, inlinedAt: !5641)
!5741 = !DILocation(line: 362, column: 6, scope: !5637, inlinedAt: !5641)
!5742 = !DILocation(line: 362, column: 26, scope: !5739, inlinedAt: !5641)
!5743 = !DILocation(line: 363, column: 6, scope: !5744, inlinedAt: !5641)
!5744 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 363, column: 6)
!5745 = !DILocation(line: 363, column: 11, scope: !5744, inlinedAt: !5641)
!5746 = !DILocation(line: 363, column: 6, scope: !5637, inlinedAt: !5641)
!5747 = !DILocation(line: 363, column: 26, scope: !5744, inlinedAt: !5641)
!5748 = !DILocation(line: 364, column: 6, scope: !5749, inlinedAt: !5641)
!5749 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 364, column: 6)
!5750 = !DILocation(line: 364, column: 11, scope: !5749, inlinedAt: !5641)
!5751 = !DILocation(line: 364, column: 6, scope: !5637, inlinedAt: !5641)
!5752 = !DILocation(line: 364, column: 26, scope: !5749, inlinedAt: !5641)
!5753 = !DILocation(line: 365, column: 6, scope: !5754, inlinedAt: !5641)
!5754 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 365, column: 6)
!5755 = !DILocation(line: 365, column: 11, scope: !5754, inlinedAt: !5641)
!5756 = !DILocation(line: 365, column: 6, scope: !5637, inlinedAt: !5641)
!5757 = !DILocation(line: 365, column: 26, scope: !5754, inlinedAt: !5641)
!5758 = !DILocation(line: 366, column: 6, scope: !5759, inlinedAt: !5641)
!5759 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 366, column: 6)
!5760 = !DILocation(line: 366, column: 11, scope: !5759, inlinedAt: !5641)
!5761 = !DILocation(line: 366, column: 6, scope: !5637, inlinedAt: !5641)
!5762 = !DILocation(line: 366, column: 26, scope: !5759, inlinedAt: !5641)
!5763 = !DILocation(line: 367, column: 6, scope: !5764, inlinedAt: !5641)
!5764 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 367, column: 6)
!5765 = !DILocation(line: 367, column: 11, scope: !5764, inlinedAt: !5641)
!5766 = !DILocation(line: 367, column: 6, scope: !5637, inlinedAt: !5641)
!5767 = !DILocation(line: 367, column: 26, scope: !5764, inlinedAt: !5641)
!5768 = !DILocation(line: 368, column: 6, scope: !5769, inlinedAt: !5641)
!5769 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 368, column: 6)
!5770 = !DILocation(line: 368, column: 11, scope: !5769, inlinedAt: !5641)
!5771 = !DILocation(line: 368, column: 6, scope: !5637, inlinedAt: !5641)
!5772 = !DILocation(line: 368, column: 26, scope: !5769, inlinedAt: !5641)
!5773 = !DILocation(line: 369, column: 6, scope: !5774, inlinedAt: !5641)
!5774 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 369, column: 6)
!5775 = !DILocation(line: 369, column: 11, scope: !5774, inlinedAt: !5641)
!5776 = !DILocation(line: 369, column: 6, scope: !5637, inlinedAt: !5641)
!5777 = !DILocation(line: 369, column: 26, scope: !5774, inlinedAt: !5641)
!5778 = !DILocation(line: 370, column: 6, scope: !5779, inlinedAt: !5641)
!5779 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 370, column: 6)
!5780 = !DILocation(line: 370, column: 11, scope: !5779, inlinedAt: !5641)
!5781 = !DILocation(line: 370, column: 6, scope: !5637, inlinedAt: !5641)
!5782 = !DILocation(line: 370, column: 26, scope: !5779, inlinedAt: !5641)
!5783 = !DILocation(line: 371, column: 6, scope: !5784, inlinedAt: !5641)
!5784 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 371, column: 6)
!5785 = !DILocation(line: 371, column: 11, scope: !5784, inlinedAt: !5641)
!5786 = !DILocation(line: 371, column: 6, scope: !5637, inlinedAt: !5641)
!5787 = !DILocation(line: 371, column: 26, scope: !5784, inlinedAt: !5641)
!5788 = !DILocation(line: 372, column: 6, scope: !5789, inlinedAt: !5641)
!5789 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 372, column: 6)
!5790 = !DILocation(line: 372, column: 11, scope: !5789, inlinedAt: !5641)
!5791 = !DILocation(line: 372, column: 6, scope: !5637, inlinedAt: !5641)
!5792 = !DILocation(line: 372, column: 26, scope: !5789, inlinedAt: !5641)
!5793 = !DILocation(line: 373, column: 6, scope: !5794, inlinedAt: !5641)
!5794 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 373, column: 6)
!5795 = !DILocation(line: 373, column: 11, scope: !5794, inlinedAt: !5641)
!5796 = !DILocation(line: 373, column: 6, scope: !5637, inlinedAt: !5641)
!5797 = !DILocation(line: 373, column: 26, scope: !5794, inlinedAt: !5641)
!5798 = !DILocation(line: 374, column: 6, scope: !5799, inlinedAt: !5641)
!5799 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 374, column: 6)
!5800 = !DILocation(line: 374, column: 11, scope: !5799, inlinedAt: !5641)
!5801 = !DILocation(line: 374, column: 6, scope: !5637, inlinedAt: !5641)
!5802 = !DILocation(line: 374, column: 26, scope: !5799, inlinedAt: !5641)
!5803 = !DILocation(line: 375, column: 6, scope: !5804, inlinedAt: !5641)
!5804 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 375, column: 6)
!5805 = !DILocation(line: 375, column: 11, scope: !5804, inlinedAt: !5641)
!5806 = !DILocation(line: 375, column: 6, scope: !5637, inlinedAt: !5641)
!5807 = !DILocation(line: 375, column: 27, scope: !5804, inlinedAt: !5641)
!5808 = !DILocation(line: 376, column: 6, scope: !5809, inlinedAt: !5641)
!5809 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 376, column: 6)
!5810 = !DILocation(line: 376, column: 11, scope: !5809, inlinedAt: !5641)
!5811 = !DILocation(line: 376, column: 6, scope: !5637, inlinedAt: !5641)
!5812 = !DILocation(line: 376, column: 32, scope: !5809, inlinedAt: !5641)
!5813 = !DILocation(line: 377, column: 6, scope: !5814, inlinedAt: !5641)
!5814 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 377, column: 6)
!5815 = !DILocation(line: 377, column: 11, scope: !5814, inlinedAt: !5641)
!5816 = !DILocation(line: 377, column: 6, scope: !5637, inlinedAt: !5641)
!5817 = !DILocation(line: 377, column: 32, scope: !5814, inlinedAt: !5641)
!5818 = !DILocation(line: 378, column: 6, scope: !5819, inlinedAt: !5641)
!5819 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 378, column: 6)
!5820 = !DILocation(line: 378, column: 11, scope: !5819, inlinedAt: !5641)
!5821 = !DILocation(line: 378, column: 6, scope: !5637, inlinedAt: !5641)
!5822 = !DILocation(line: 378, column: 32, scope: !5819, inlinedAt: !5641)
!5823 = !DILocation(line: 379, column: 6, scope: !5824, inlinedAt: !5641)
!5824 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 379, column: 6)
!5825 = !DILocation(line: 379, column: 11, scope: !5824, inlinedAt: !5641)
!5826 = !DILocation(line: 379, column: 6, scope: !5637, inlinedAt: !5641)
!5827 = !DILocation(line: 379, column: 33, scope: !5824, inlinedAt: !5641)
!5828 = !DILocation(line: 380, column: 6, scope: !5829, inlinedAt: !5641)
!5829 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 380, column: 6)
!5830 = !DILocation(line: 380, column: 11, scope: !5829, inlinedAt: !5641)
!5831 = !DILocation(line: 380, column: 6, scope: !5637, inlinedAt: !5641)
!5832 = !DILocation(line: 380, column: 33, scope: !5829, inlinedAt: !5641)
!5833 = !DILocation(line: 381, column: 6, scope: !5834, inlinedAt: !5641)
!5834 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 381, column: 6)
!5835 = !DILocation(line: 381, column: 11, scope: !5834, inlinedAt: !5641)
!5836 = !DILocation(line: 381, column: 6, scope: !5637, inlinedAt: !5641)
!5837 = !DILocation(line: 381, column: 33, scope: !5834, inlinedAt: !5641)
!5838 = !DILocation(line: 382, column: 2, scope: !5839, inlinedAt: !5641)
!5839 = distinct !DILexicalBlock(scope: !5840, file: !152, line: 382, column: 2)
!5840 = distinct !DILexicalBlock(scope: !5637, file: !152, line: 382, column: 2)
!5841 = !{i32 -2144494455, i32 -2144494426, i32 -2144494380, i32 -2144494322, i32 -2144494268, i32 -2144494214, i32 -2144494159, i32 -2144494128}
!5842 = !DILocation(line: 382, column: 2, scope: !5843, inlinedAt: !5641)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !152, line: 382, column: 2)
!5844 = distinct !DILexicalBlock(scope: !5840, file: !152, line: 382, column: 2)
!5845 = !{i32 -2144493685, i32 -2144493678, i32 -2144493624, i32 -2144493593, i32 -2144493563}
!5846 = !DILocation(line: 382, column: 2, scope: !5844, inlinedAt: !5641)
!5847 = !DILocation(line: 386, column: 1, scope: !5637, inlinedAt: !5641)
!5848 = !DILocation(line: 547, column: 9, scope: !5620, inlinedAt: !5623)
!5849 = !DILocation(line: 549, column: 8, scope: !5850, inlinedAt: !5623)
!5850 = distinct !DILexicalBlock(scope: !5620, file: !152, line: 549, column: 7)
!5851 = !DILocation(line: 549, column: 7, scope: !5620, inlinedAt: !5623)
!5852 = !DILocation(line: 550, column: 4, scope: !5850, inlinedAt: !5623)
!5853 = !DILocation(line: 553, column: 33, scope: !5620, inlinedAt: !5623)
!5854 = !DILocation(line: 325, column: 6, scope: !5855, inlinedAt: !5635)
!5855 = distinct !DILexicalBlock(scope: !5631, file: !152, line: 325, column: 6)
!5856 = !DILocation(line: 325, column: 6, scope: !5631, inlinedAt: !5635)
!5857 = !DILocation(line: 326, column: 3, scope: !5855, inlinedAt: !5635)
!5858 = !DILocation(line: 332, column: 9, scope: !5631, inlinedAt: !5635)
!5859 = !DILocation(line: 332, column: 15, scope: !5631, inlinedAt: !5635)
!5860 = !DILocation(line: 332, column: 2, scope: !5631, inlinedAt: !5635)
!5861 = !DILocation(line: 336, column: 1, scope: !5631, inlinedAt: !5635)
!5862 = !DILocation(line: 553, column: 5, scope: !5620, inlinedAt: !5623)
!5863 = !DILocation(line: 553, column: 41, scope: !5620, inlinedAt: !5623)
!5864 = !DILocation(line: 554, column: 5, scope: !5620, inlinedAt: !5623)
!5865 = !DILocation(line: 554, column: 12, scope: !5620, inlinedAt: !5623)
!5866 = !DILocation(line: 448, column: 31, scope: !5615, inlinedAt: !5619)
!5867 = !DILocation(line: 448, column: 34, scope: !5615, inlinedAt: !5619)
!5868 = !DILocation(line: 448, column: 14, scope: !5615, inlinedAt: !5619)
!5869 = !DILocation(line: 450, column: 22, scope: !5615, inlinedAt: !5619)
!5870 = !DILocation(line: 450, column: 25, scope: !5615, inlinedAt: !5619)
!5871 = !DILocation(line: 450, column: 30, scope: !5615, inlinedAt: !5619)
!5872 = !DILocation(line: 450, column: 36, scope: !5615, inlinedAt: !5619)
!5873 = !DILocation(line: 450, column: 8, scope: !5615, inlinedAt: !5619)
!5874 = !DILocation(line: 450, column: 6, scope: !5615, inlinedAt: !5619)
!5875 = !DILocation(line: 451, column: 9, scope: !5615, inlinedAt: !5619)
!5876 = !DILocation(line: 552, column: 3, scope: !5620, inlinedAt: !5623)
!5877 = !DILocation(line: 557, column: 19, scope: !5622, inlinedAt: !5623)
!5878 = !DILocation(line: 557, column: 25, scope: !5622, inlinedAt: !5623)
!5879 = !DILocation(line: 557, column: 9, scope: !5622, inlinedAt: !5623)
!5880 = !DILocation(line: 557, column: 2, scope: !5622, inlinedAt: !5623)
!5881 = !DILocation(line: 558, column: 1, scope: !5622, inlinedAt: !5623)
!5882 = !DILocation(line: 664, column: 2, scope: !5611)
!5883 = distinct !DISubprogram(name: "list_add_tail", scope: !5275, file: !5275, line: 98, type: !5884, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{null, !193, !193}
!5886 = !DILocalVariable(name: "new", arg: 1, scope: !5883, file: !5275, line: 98, type: !193)
!5887 = !DILocation(line: 98, column: 52, scope: !5883)
!5888 = !DILocalVariable(name: "head", arg: 2, scope: !5883, file: !5275, line: 98, type: !193)
!5889 = !DILocation(line: 98, column: 75, scope: !5883)
!5890 = !DILocation(line: 100, column: 13, scope: !5883)
!5891 = !DILocation(line: 100, column: 18, scope: !5883)
!5892 = !DILocation(line: 100, column: 24, scope: !5883)
!5893 = !DILocation(line: 100, column: 30, scope: !5883)
!5894 = !DILocation(line: 100, column: 2, scope: !5883)
!5895 = !DILocation(line: 101, column: 1, scope: !5883)
!5896 = distinct !DISubprogram(name: "get_order", scope: !5897, file: !5897, line: 29, type: !5898, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5897 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!207, !326}
!5900 = !DILocalVariable(name: "x", arg: 1, scope: !5901, file: !5902, line: 366, type: !424)
!5901 = distinct !DISubprogram(name: "fls64", scope: !5902, file: !5902, line: 366, type: !5903, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5902 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!207, !424}
!5905 = !DILocation(line: 366, column: 40, scope: !5901, inlinedAt: !5906)
!5906 = distinct !DILocation(line: 46, column: 9, scope: !5896)
!5907 = !DILocalVariable(name: "bitpos", scope: !5901, file: !5902, line: 368, type: !207)
!5908 = !DILocation(line: 368, column: 6, scope: !5901, inlinedAt: !5906)
!5909 = !DILocalVariable(name: "size", arg: 1, scope: !5896, file: !5897, line: 29, type: !326)
!5910 = !DILocation(line: 29, column: 63, scope: !5896)
!5911 = !DILocation(line: 31, column: 27, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5896, file: !5897, line: 31, column: 6)
!5913 = !DILocation(line: 31, column: 6, scope: !5912)
!5914 = !DILocation(line: 31, column: 6, scope: !5896)
!5915 = !DILocation(line: 32, column: 8, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5917, file: !5897, line: 32, column: 7)
!5917 = distinct !DILexicalBlock(scope: !5912, file: !5897, line: 31, column: 34)
!5918 = !DILocation(line: 32, column: 7, scope: !5917)
!5919 = !DILocation(line: 33, column: 4, scope: !5916)
!5920 = !DILocation(line: 35, column: 7, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5917, file: !5897, line: 35, column: 7)
!5922 = !DILocation(line: 35, column: 12, scope: !5921)
!5923 = !DILocation(line: 35, column: 7, scope: !5917)
!5924 = !DILocation(line: 36, column: 4, scope: !5921)
!5925 = !DILocation(line: 38, column: 10, scope: !5917)
!5926 = !DILocation(line: 38, column: 28, scope: !5917)
!5927 = !DILocation(line: 38, column: 41, scope: !5917)
!5928 = !DILocation(line: 38, column: 3, scope: !5917)
!5929 = !DILocation(line: 41, column: 6, scope: !5896)
!5930 = !DILocation(line: 42, column: 7, scope: !5896)
!5931 = !DILocation(line: 46, column: 15, scope: !5896)
!5932 = !DILocation(line: 374, column: 2, scope: !5901, inlinedAt: !5906)
!5933 = !DILocation(line: 376, column: 14, scope: !5901, inlinedAt: !5906)
!5934 = !{i32 608760}
!5935 = !DILocation(line: 377, column: 9, scope: !5901, inlinedAt: !5906)
!5936 = !DILocation(line: 377, column: 16, scope: !5901, inlinedAt: !5906)
!5937 = !DILocation(line: 46, column: 2, scope: !5896)
!5938 = !DILocation(line: 48, column: 1, scope: !5896)
!5939 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5940, file: !5940, line: 30, type: !5941, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5940 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!207, !423}
!5943 = !DILocation(line: 366, column: 40, scope: !5901, inlinedAt: !5944)
!5944 = distinct !DILocation(line: 32, column: 9, scope: !5939)
!5945 = !DILocation(line: 368, column: 6, scope: !5901, inlinedAt: !5944)
!5946 = !DILocalVariable(name: "n", arg: 1, scope: !5939, file: !5940, line: 30, type: !423)
!5947 = !DILocation(line: 30, column: 21, scope: !5939)
!5948 = !DILocation(line: 32, column: 15, scope: !5939)
!5949 = !DILocation(line: 374, column: 2, scope: !5901, inlinedAt: !5944)
!5950 = !DILocation(line: 376, column: 14, scope: !5901, inlinedAt: !5944)
!5951 = !DILocation(line: 377, column: 9, scope: !5901, inlinedAt: !5944)
!5952 = !DILocation(line: 377, column: 16, scope: !5901, inlinedAt: !5944)
!5953 = !DILocation(line: 32, column: 18, scope: !5939)
!5954 = !DILocation(line: 32, column: 2, scope: !5939)
!5955 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5956, file: !5956, line: 137, type: !5957, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5956 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!184, !983, !2797, !323, !798}
!5959 = !DILocalVariable(name: "s", arg: 1, scope: !5955, file: !5956, line: 137, type: !983)
!5960 = !DILocation(line: 137, column: 54, scope: !5955)
!5961 = !DILocalVariable(name: "object", arg: 2, scope: !5955, file: !5956, line: 137, type: !2797)
!5962 = !DILocation(line: 137, column: 69, scope: !5955)
!5963 = !DILocalVariable(name: "size", arg: 3, scope: !5955, file: !5956, line: 138, type: !323)
!5964 = !DILocation(line: 138, column: 12, scope: !5955)
!5965 = !DILocalVariable(name: "flags", arg: 4, scope: !5955, file: !5956, line: 138, type: !798)
!5966 = !DILocation(line: 138, column: 24, scope: !5955)
!5967 = !DILocation(line: 140, column: 17, scope: !5955)
!5968 = !DILocation(line: 140, column: 2, scope: !5955)
!5969 = distinct !DISubprogram(name: "__list_add", scope: !5275, file: !5275, line: 63, type: !5970, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{null, !193, !193, !193}
!5972 = !DILocalVariable(name: "new", arg: 1, scope: !5969, file: !5275, line: 63, type: !193)
!5973 = !DILocation(line: 63, column: 49, scope: !5969)
!5974 = !DILocalVariable(name: "prev", arg: 2, scope: !5969, file: !5275, line: 64, type: !193)
!5975 = !DILocation(line: 64, column: 28, scope: !5969)
!5976 = !DILocalVariable(name: "next", arg: 3, scope: !5969, file: !5275, line: 65, type: !193)
!5977 = !DILocation(line: 65, column: 28, scope: !5969)
!5978 = !DILocation(line: 67, column: 24, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5969, file: !5275, line: 67, column: 6)
!5980 = !DILocation(line: 67, column: 29, scope: !5979)
!5981 = !DILocation(line: 67, column: 35, scope: !5979)
!5982 = !DILocation(line: 67, column: 7, scope: !5979)
!5983 = !DILocation(line: 67, column: 6, scope: !5969)
!5984 = !DILocation(line: 68, column: 3, scope: !5979)
!5985 = !DILocation(line: 70, column: 15, scope: !5969)
!5986 = !DILocation(line: 70, column: 2, scope: !5969)
!5987 = !DILocation(line: 70, column: 8, scope: !5969)
!5988 = !DILocation(line: 70, column: 13, scope: !5969)
!5989 = !DILocation(line: 71, column: 14, scope: !5969)
!5990 = !DILocation(line: 71, column: 2, scope: !5969)
!5991 = !DILocation(line: 71, column: 7, scope: !5969)
!5992 = !DILocation(line: 71, column: 12, scope: !5969)
!5993 = !DILocation(line: 72, column: 14, scope: !5969)
!5994 = !DILocation(line: 72, column: 2, scope: !5969)
!5995 = !DILocation(line: 72, column: 7, scope: !5969)
!5996 = !DILocation(line: 72, column: 12, scope: !5969)
!5997 = !DILocation(line: 73, column: 2, scope: !5969)
!5998 = !DILocation(line: 73, column: 2, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5969, file: !5275, line: 73, column: 2)
!6000 = !DILocation(line: 73, column: 2, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5999, file: !5275, line: 73, column: 2)
!6002 = !DILocation(line: 73, column: 2, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5999, file: !5275, line: 73, column: 2)
!6004 = !DILocation(line: 74, column: 1, scope: !5969)
!6005 = distinct !DISubprogram(name: "__list_add_valid", scope: !5275, file: !5275, line: 45, type: !6006, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!492, !193, !193, !193}
!6008 = !DILocalVariable(name: "new", arg: 1, scope: !6005, file: !5275, line: 45, type: !193)
!6009 = !DILocation(line: 45, column: 55, scope: !6005)
!6010 = !DILocalVariable(name: "prev", arg: 2, scope: !6005, file: !5275, line: 46, type: !193)
!6011 = !DILocation(line: 46, column: 23, scope: !6005)
!6012 = !DILocalVariable(name: "next", arg: 3, scope: !6005, file: !5275, line: 47, type: !193)
!6013 = !DILocation(line: 47, column: 23, scope: !6005)
!6014 = !DILocation(line: 49, column: 2, scope: !6005)
!6015 = distinct !DISubprogram(name: "domU_read_console", scope: !3, file: !3, line: 128, type: !4667, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6016 = !DILocalVariable(name: "vtermno", arg: 1, scope: !6015, file: !3, line: 128, type: !561)
!6017 = !DILocation(line: 128, column: 39, scope: !6015)
!6018 = !DILocalVariable(name: "buf", arg: 2, scope: !6015, file: !3, line: 128, type: !276)
!6019 = !DILocation(line: 128, column: 54, scope: !6015)
!6020 = !DILocalVariable(name: "len", arg: 3, scope: !6015, file: !3, line: 128, type: !207)
!6021 = !DILocation(line: 128, column: 63, scope: !6015)
!6022 = !DILocalVariable(name: "intf", scope: !6015, file: !3, line: 130, type: !4632)
!6023 = !DILocation(line: 130, column: 28, scope: !6015)
!6024 = !DILocalVariable(name: "cons", scope: !6015, file: !3, line: 131, type: !4642)
!6025 = !DILocation(line: 131, column: 19, scope: !6015)
!6026 = !DILocalVariable(name: "prod", scope: !6015, file: !3, line: 131, type: !4642)
!6027 = !DILocation(line: 131, column: 25, scope: !6015)
!6028 = !DILocalVariable(name: "recv", scope: !6015, file: !3, line: 132, type: !207)
!6029 = !DILocation(line: 132, column: 6, scope: !6015)
!6030 = !DILocalVariable(name: "xencons", scope: !6015, file: !3, line: 133, type: !185)
!6031 = !DILocation(line: 133, column: 23, scope: !6015)
!6032 = !DILocation(line: 133, column: 52, scope: !6015)
!6033 = !DILocation(line: 133, column: 33, scope: !6015)
!6034 = !DILocation(line: 134, column: 6, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 134, column: 6)
!6036 = !DILocation(line: 134, column: 14, scope: !6035)
!6037 = !DILocation(line: 134, column: 6, scope: !6015)
!6038 = !DILocation(line: 135, column: 3, scope: !6035)
!6039 = !DILocation(line: 136, column: 9, scope: !6015)
!6040 = !DILocation(line: 136, column: 18, scope: !6015)
!6041 = !DILocation(line: 136, column: 7, scope: !6015)
!6042 = !DILocation(line: 138, column: 9, scope: !6015)
!6043 = !DILocation(line: 138, column: 15, scope: !6015)
!6044 = !DILocation(line: 138, column: 7, scope: !6015)
!6045 = !DILocation(line: 139, column: 9, scope: !6015)
!6046 = !DILocation(line: 139, column: 15, scope: !6015)
!6047 = !DILocation(line: 139, column: 7, scope: !6015)
!6048 = !DILocation(line: 140, column: 2, scope: !6015)
!6049 = !{i32 -2141373875}
!6050 = !DILocation(line: 141, column: 2, scope: !6015)
!6051 = !DILocation(line: 141, column: 2, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 141, column: 2)
!6053 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 141, column: 2)
!6054 = !DILocation(line: 141, column: 2, scope: !6053)
!6055 = !DILocation(line: 141, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 141, column: 2)
!6057 = !DILocation(line: 141, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 141, column: 2)
!6059 = !DILocation(line: 141, column: 2, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 141, column: 2)
!6061 = !{i32 -2141373545, i32 -2141373516, i32 -2141373470, i32 -2141373412, i32 -2141373358, i32 -2141373304, i32 -2141373249, i32 -2141373218}
!6062 = !DILocation(line: 141, column: 2, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 141, column: 2)
!6064 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 141, column: 2)
!6065 = !{i32 -2141372770, i32 -2141372763, i32 -2141372709, i32 -2141372678, i32 -2141372648}
!6066 = !DILocation(line: 141, column: 2, scope: !6064)
!6067 = !DILocation(line: 143, column: 2, scope: !6015)
!6068 = !DILocation(line: 143, column: 9, scope: !6015)
!6069 = !DILocation(line: 143, column: 17, scope: !6015)
!6070 = !DILocation(line: 143, column: 14, scope: !6015)
!6071 = !DILocation(line: 143, column: 22, scope: !6015)
!6072 = !DILocation(line: 143, column: 25, scope: !6015)
!6073 = !DILocation(line: 143, column: 32, scope: !6015)
!6074 = !DILocation(line: 143, column: 30, scope: !6015)
!6075 = !DILocation(line: 0, scope: !6015)
!6076 = !DILocation(line: 144, column: 17, scope: !6015)
!6077 = !DILocation(line: 144, column: 23, scope: !6015)
!6078 = !DILocation(line: 144, column: 26, scope: !6015)
!6079 = !DILocation(line: 144, column: 3, scope: !6015)
!6080 = !DILocation(line: 144, column: 11, scope: !6015)
!6081 = !DILocation(line: 144, column: 15, scope: !6015)
!6082 = distinct !{!6082, !6067, !6083}
!6083 = !DILocation(line: 144, column: 60, scope: !6015)
!6084 = !DILocation(line: 146, column: 2, scope: !6015)
!6085 = !{i32 -2141372554}
!6086 = !DILocation(line: 147, column: 18, scope: !6015)
!6087 = !DILocation(line: 147, column: 2, scope: !6015)
!6088 = !DILocation(line: 147, column: 8, scope: !6015)
!6089 = !DILocation(line: 147, column: 16, scope: !6015)
!6090 = !DILocation(line: 149, column: 16, scope: !6015)
!6091 = !DILocation(line: 149, column: 2, scope: !6015)
!6092 = !DILocation(line: 150, column: 9, scope: !6015)
!6093 = !DILocation(line: 150, column: 2, scope: !6015)
!6094 = !DILocation(line: 151, column: 1, scope: !6015)
!6095 = distinct !DISubprogram(name: "domU_write_console", scope: !3, file: !3, line: 102, type: !4671, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6096 = !DILocalVariable(name: "vtermno", arg: 1, scope: !6095, file: !3, line: 102, type: !561)
!6097 = !DILocation(line: 102, column: 40, scope: !6095)
!6098 = !DILocalVariable(name: "data", arg: 2, scope: !6095, file: !3, line: 102, type: !201)
!6099 = !DILocation(line: 102, column: 61, scope: !6095)
!6100 = !DILocalVariable(name: "len", arg: 3, scope: !6095, file: !3, line: 102, type: !207)
!6101 = !DILocation(line: 102, column: 71, scope: !6095)
!6102 = !DILocalVariable(name: "ret", scope: !6095, file: !3, line: 104, type: !207)
!6103 = !DILocation(line: 104, column: 6, scope: !6095)
!6104 = !DILocation(line: 104, column: 12, scope: !6095)
!6105 = !DILocalVariable(name: "cons", scope: !6095, file: !3, line: 105, type: !185)
!6106 = !DILocation(line: 105, column: 23, scope: !6095)
!6107 = !DILocation(line: 105, column: 49, scope: !6095)
!6108 = !DILocation(line: 105, column: 30, scope: !6095)
!6109 = !DILocation(line: 106, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 106, column: 6)
!6111 = !DILocation(line: 106, column: 11, scope: !6110)
!6112 = !DILocation(line: 106, column: 6, scope: !6095)
!6113 = !DILocation(line: 107, column: 3, scope: !6110)
!6114 = !DILocation(line: 115, column: 2, scope: !6095)
!6115 = !DILocation(line: 115, column: 9, scope: !6095)
!6116 = !DILocalVariable(name: "sent", scope: !6117, file: !3, line: 116, type: !207)
!6117 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 115, column: 14)
!6118 = !DILocation(line: 116, column: 7, scope: !6117)
!6119 = !DILocation(line: 116, column: 30, scope: !6117)
!6120 = !DILocation(line: 116, column: 36, scope: !6117)
!6121 = !DILocation(line: 116, column: 42, scope: !6117)
!6122 = !DILocation(line: 116, column: 14, scope: !6117)
!6123 = !DILocation(line: 118, column: 11, scope: !6117)
!6124 = !DILocation(line: 118, column: 8, scope: !6117)
!6125 = !DILocation(line: 119, column: 10, scope: !6117)
!6126 = !DILocation(line: 119, column: 7, scope: !6117)
!6127 = !DILocation(line: 121, column: 7, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 121, column: 7)
!6129 = !DILocation(line: 121, column: 7, scope: !6117)
!6130 = !DILocation(line: 122, column: 4, scope: !6128)
!6131 = distinct !{!6131, !6114, !6132}
!6132 = !DILocation(line: 123, column: 2, scope: !6095)
!6133 = !DILocation(line: 125, column: 9, scope: !6095)
!6134 = !DILocation(line: 125, column: 2, scope: !6095)
!6135 = !DILocation(line: 126, column: 1, scope: !6095)
!6136 = distinct !DISubprogram(name: "notify_daemon", scope: !3, file: !3, line: 73, type: !4900, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6137 = !DILocalVariable(name: "cons", arg: 1, scope: !6136, file: !3, line: 73, type: !185)
!6138 = !DILocation(line: 73, column: 55, scope: !6136)
!6139 = !DILocation(line: 76, column: 27, scope: !6136)
!6140 = !DILocation(line: 76, column: 33, scope: !6136)
!6141 = !DILocation(line: 76, column: 2, scope: !6136)
!6142 = !DILocation(line: 77, column: 1, scope: !6136)
!6143 = distinct !DISubprogram(name: "notify_remote_via_evtchn", scope: !6144, file: !6144, line: 78, type: !6145, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6144 = !DIFile(filename: "./include/xen/events.h", directory: "/home/lizy2001/genbc/linux")
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !6147}
!6147 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !6148, line: 15, baseType: !561)
!6148 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!6149 = !DILocalVariable(name: "port", arg: 1, scope: !6143, file: !6144, line: 78, type: !6147)
!6150 = !DILocation(line: 78, column: 59, scope: !6143)
!6151 = !DILocalVariable(name: "send", scope: !6143, file: !6144, line: 80, type: !6152)
!6152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_send", file: !6148, line: 114, size: 32, elements: !6153)
!6153 = !{!6154}
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !6152, file: !6148, line: 116, baseType: !6147, size: 32)
!6155 = !DILocation(line: 80, column: 21, scope: !6143)
!6156 = !DILocation(line: 80, column: 28, scope: !6143)
!6157 = !DILocation(line: 80, column: 38, scope: !6143)
!6158 = !DILocation(line: 81, column: 51, scope: !6143)
!6159 = !DILocation(line: 81, column: 8, scope: !6143)
!6160 = !DILocation(line: 82, column: 1, scope: !6143)
!6161 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !5333, file: !5333, line: 356, type: !6162, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!207, !207, !184}
!6164 = !DILocalVariable(name: "cmd", arg: 1, scope: !6161, file: !5333, line: 356, type: !207)
!6165 = !DILocation(line: 356, column: 33, scope: !6161)
!6166 = !DILocalVariable(name: "arg", arg: 2, scope: !6161, file: !5333, line: 356, type: !184)
!6167 = !DILocation(line: 356, column: 44, scope: !6161)
!6168 = !DILocalVariable(name: "__res", scope: !6169, file: !5333, line: 358, type: !326)
!6169 = distinct !DILexicalBlock(scope: !6161, file: !5333, line: 358, column: 9)
!6170 = !DILocation(line: 358, column: 9, scope: !6169)
!6171 = !DILocalVariable(name: "__arg1", scope: !6169, file: !5333, line: 358, type: !326)
!6172 = !DILocalVariable(name: "__arg2", scope: !6169, file: !5333, line: 358, type: !326)
!6173 = !DILocalVariable(name: "__arg3", scope: !6169, file: !5333, line: 358, type: !326)
!6174 = !DILocalVariable(name: "__arg4", scope: !6169, file: !5333, line: 358, type: !326)
!6175 = !DILocalVariable(name: "__arg5", scope: !6169, file: !5333, line: 358, type: !326)
!6176 = !{i32 -2141900941}
!6177 = !DILocation(line: 358, column: 2, scope: !6161)
!6178 = distinct !DISubprogram(name: "__write_console", scope: !3, file: !3, line: 79, type: !6179, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!207, !185, !201, !207}
!6181 = !DILocalVariable(name: "xencons", arg: 1, scope: !6178, file: !3, line: 79, type: !185)
!6182 = !DILocation(line: 79, column: 49, scope: !6178)
!6183 = !DILocalVariable(name: "data", arg: 2, scope: !6178, file: !3, line: 80, type: !201)
!6184 = !DILocation(line: 80, column: 15, scope: !6178)
!6185 = !DILocalVariable(name: "len", arg: 3, scope: !6178, file: !3, line: 80, type: !207)
!6186 = !DILocation(line: 80, column: 25, scope: !6178)
!6187 = !DILocalVariable(name: "cons", scope: !6178, file: !3, line: 82, type: !4642)
!6188 = !DILocation(line: 82, column: 19, scope: !6178)
!6189 = !DILocalVariable(name: "prod", scope: !6178, file: !3, line: 82, type: !4642)
!6190 = !DILocation(line: 82, column: 25, scope: !6178)
!6191 = !DILocalVariable(name: "intf", scope: !6178, file: !3, line: 83, type: !4632)
!6192 = !DILocation(line: 83, column: 28, scope: !6178)
!6193 = !DILocation(line: 83, column: 35, scope: !6178)
!6194 = !DILocation(line: 83, column: 44, scope: !6178)
!6195 = !DILocalVariable(name: "sent", scope: !6178, file: !3, line: 84, type: !207)
!6196 = !DILocation(line: 84, column: 6, scope: !6178)
!6197 = !DILocation(line: 86, column: 9, scope: !6178)
!6198 = !DILocation(line: 86, column: 15, scope: !6178)
!6199 = !DILocation(line: 86, column: 7, scope: !6178)
!6200 = !DILocation(line: 87, column: 9, scope: !6178)
!6201 = !DILocation(line: 87, column: 15, scope: !6178)
!6202 = !DILocation(line: 87, column: 7, scope: !6178)
!6203 = !DILocation(line: 88, column: 2, scope: !6178)
!6204 = !{i32 -2141375309}
!6205 = !DILocation(line: 89, column: 2, scope: !6178)
!6206 = !DILocation(line: 89, column: 2, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 89, column: 2)
!6208 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 89, column: 2)
!6209 = !DILocation(line: 89, column: 2, scope: !6208)
!6210 = !DILocation(line: 89, column: 2, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 89, column: 2)
!6212 = !DILocation(line: 89, column: 2, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 89, column: 2)
!6214 = !DILocation(line: 89, column: 2, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 89, column: 2)
!6216 = !{i32 -2141374977, i32 -2141374948, i32 -2141374902, i32 -2141374844, i32 -2141374790, i32 -2141374736, i32 -2141374681, i32 -2141374650}
!6217 = !DILocation(line: 89, column: 2, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 89, column: 2)
!6219 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 89, column: 2)
!6220 = !{i32 -2141374203, i32 -2141374196, i32 -2141374142, i32 -2141374111, i32 -2141374081}
!6221 = !DILocation(line: 89, column: 2, scope: !6219)
!6222 = !DILocation(line: 91, column: 2, scope: !6178)
!6223 = !DILocation(line: 91, column: 10, scope: !6178)
!6224 = !DILocation(line: 91, column: 17, scope: !6178)
!6225 = !DILocation(line: 91, column: 15, scope: !6178)
!6226 = !DILocation(line: 91, column: 22, scope: !6178)
!6227 = !DILocation(line: 91, column: 27, scope: !6178)
!6228 = !DILocation(line: 91, column: 34, scope: !6178)
!6229 = !DILocation(line: 91, column: 32, scope: !6178)
!6230 = !DILocation(line: 91, column: 26, scope: !6178)
!6231 = !DILocation(line: 91, column: 40, scope: !6178)
!6232 = !DILocation(line: 0, scope: !6178)
!6233 = !DILocation(line: 92, column: 52, scope: !6178)
!6234 = !DILocation(line: 92, column: 61, scope: !6178)
!6235 = !DILocation(line: 92, column: 3, scope: !6178)
!6236 = !DILocation(line: 92, column: 9, scope: !6178)
!6237 = !DILocation(line: 92, column: 13, scope: !6178)
!6238 = !DILocation(line: 92, column: 50, scope: !6178)
!6239 = distinct !{!6239, !6222, !6240}
!6240 = !DILocation(line: 92, column: 63, scope: !6178)
!6241 = !DILocation(line: 94, column: 2, scope: !6178)
!6242 = !{i32 -2141373986}
!6243 = !DILocation(line: 95, column: 19, scope: !6178)
!6244 = !DILocation(line: 95, column: 2, scope: !6178)
!6245 = !DILocation(line: 95, column: 8, scope: !6178)
!6246 = !DILocation(line: 95, column: 17, scope: !6178)
!6247 = !DILocation(line: 97, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 97, column: 6)
!6249 = !DILocation(line: 97, column: 6, scope: !6178)
!6250 = !DILocation(line: 98, column: 17, scope: !6248)
!6251 = !DILocation(line: 98, column: 3, scope: !6248)
!6252 = !DILocation(line: 99, column: 9, scope: !6178)
!6253 = !DILocation(line: 99, column: 2, scope: !6178)
!6254 = distinct !DISubprogram(name: "HYPERVISOR_sched_op", scope: !5333, file: !5333, line: 284, type: !6162, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6255 = !DILocalVariable(name: "cmd", arg: 1, scope: !6254, file: !5333, line: 284, type: !207)
!6256 = !DILocation(line: 284, column: 25, scope: !6254)
!6257 = !DILocalVariable(name: "arg", arg: 2, scope: !6254, file: !5333, line: 284, type: !184)
!6258 = !DILocation(line: 284, column: 36, scope: !6254)
!6259 = !DILocalVariable(name: "__res", scope: !6260, file: !5333, line: 286, type: !326)
!6260 = distinct !DILexicalBlock(scope: !6254, file: !5333, line: 286, column: 9)
!6261 = !DILocation(line: 286, column: 9, scope: !6260)
!6262 = !DILocalVariable(name: "__arg1", scope: !6260, file: !5333, line: 286, type: !326)
!6263 = !DILocalVariable(name: "__arg2", scope: !6260, file: !5333, line: 286, type: !326)
!6264 = !DILocalVariable(name: "__arg3", scope: !6260, file: !5333, line: 286, type: !326)
!6265 = !DILocalVariable(name: "__arg4", scope: !6260, file: !5333, line: 286, type: !326)
!6266 = !DILocalVariable(name: "__arg5", scope: !6260, file: !5333, line: 286, type: !326)
!6267 = !{i32 -2141917775}
!6268 = !DILocation(line: 286, column: 2, scope: !6254)
!6269 = distinct !DISubprogram(name: "xencons_info_pv_init", scope: !3, file: !3, line: 236, type: !6270, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!207, !185, !207}
!6272 = !DILocalVariable(name: "info", arg: 1, scope: !6269, file: !3, line: 236, type: !185)
!6273 = !DILocation(line: 236, column: 54, scope: !6269)
!6274 = !DILocalVariable(name: "vtermno", arg: 2, scope: !6269, file: !3, line: 236, type: !207)
!6275 = !DILocation(line: 236, column: 64, scope: !6269)
!6276 = !DILocation(line: 238, column: 17, scope: !6269)
!6277 = !DILocation(line: 238, column: 33, scope: !6269)
!6278 = !DILocation(line: 238, column: 41, scope: !6269)
!6279 = !DILocation(line: 238, column: 46, scope: !6269)
!6280 = !DILocation(line: 238, column: 2, scope: !6269)
!6281 = !DILocation(line: 238, column: 8, scope: !6269)
!6282 = !DILocation(line: 238, column: 15, scope: !6269)
!6283 = !DILocation(line: 240, column: 15, scope: !6269)
!6284 = !DILocation(line: 240, column: 2, scope: !6269)
!6285 = !DILocation(line: 240, column: 8, scope: !6269)
!6286 = !DILocation(line: 240, column: 13, scope: !6269)
!6287 = !DILocation(line: 241, column: 18, scope: !6269)
!6288 = !DILocation(line: 241, column: 2, scope: !6269)
!6289 = !DILocation(line: 241, column: 8, scope: !6269)
!6290 = !DILocation(line: 241, column: 16, scope: !6269)
!6291 = !DILocation(line: 243, column: 17, scope: !6269)
!6292 = !DILocation(line: 243, column: 23, scope: !6269)
!6293 = !DILocation(line: 243, column: 2, scope: !6269)
!6294 = !DILocation(line: 245, column: 2, scope: !6269)
!6295 = distinct !DISubprogram(name: "gfn_to_pfn", scope: !6296, file: !6296, line: 259, type: !6297, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6296 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!326, !326}
!6299 = !DILocalVariable(name: "gfn", arg: 1, scope: !6295, file: !6296, line: 259, type: !326)
!6300 = !DILocation(line: 259, column: 54, scope: !6295)
!6301 = !DILocation(line: 261, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6295, file: !6296, line: 261, column: 6)
!6303 = !DILocation(line: 261, column: 6, scope: !6295)
!6304 = !DILocation(line: 262, column: 10, scope: !6302)
!6305 = !DILocation(line: 262, column: 3, scope: !6302)
!6306 = !DILocation(line: 264, column: 21, scope: !6302)
!6307 = !DILocation(line: 264, column: 10, scope: !6302)
!6308 = !DILocation(line: 264, column: 3, scope: !6302)
!6309 = !DILocation(line: 265, column: 1, scope: !6295)
!6310 = distinct !DISubprogram(name: "xen_feature", scope: !6311, file: !6311, line: 19, type: !2050, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6311 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!6312 = !DILocalVariable(name: "flag", arg: 1, scope: !6310, file: !6311, line: 19, type: !207)
!6313 = !DILocation(line: 19, column: 35, scope: !6310)
!6314 = !DILocation(line: 21, column: 22, scope: !6310)
!6315 = !DILocation(line: 21, column: 9, scope: !6310)
!6316 = !DILocation(line: 21, column: 2, scope: !6310)
!6317 = distinct !DISubprogram(name: "mfn_to_pfn", scope: !6296, file: !6296, line: 212, type: !6297, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6318 = !DILocalVariable(name: "mfn", arg: 1, scope: !6317, file: !6296, line: 212, type: !326)
!6319 = !DILocation(line: 212, column: 54, scope: !6317)
!6320 = !DILocalVariable(name: "pfn", scope: !6317, file: !6296, line: 214, type: !326)
!6321 = !DILocation(line: 214, column: 16, scope: !6317)
!6322 = !DILocation(line: 221, column: 6, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6317, file: !6296, line: 221, column: 6)
!6324 = !DILocation(line: 221, column: 6, scope: !6317)
!6325 = !DILocation(line: 222, column: 10, scope: !6323)
!6326 = !DILocation(line: 222, column: 3, scope: !6323)
!6327 = !DILocation(line: 224, column: 32, scope: !6317)
!6328 = !DILocation(line: 224, column: 8, scope: !6317)
!6329 = !DILocation(line: 224, column: 6, scope: !6317)
!6330 = !DILocation(line: 225, column: 19, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6317, file: !6296, line: 225, column: 6)
!6332 = !DILocation(line: 225, column: 6, scope: !6331)
!6333 = !DILocation(line: 225, column: 27, scope: !6331)
!6334 = !DILocation(line: 225, column: 24, scope: !6331)
!6335 = !DILocation(line: 225, column: 6, scope: !6317)
!6336 = !DILocation(line: 226, column: 7, scope: !6331)
!6337 = !DILocation(line: 226, column: 3, scope: !6331)
!6338 = !DILocation(line: 232, column: 6, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6317, file: !6296, line: 232, column: 6)
!6340 = !DILocation(line: 232, column: 10, scope: !6339)
!6341 = !DILocation(line: 232, column: 16, scope: !6339)
!6342 = !DILocation(line: 232, column: 32, scope: !6339)
!6343 = !DILocation(line: 232, column: 19, scope: !6339)
!6344 = !DILocation(line: 232, column: 40, scope: !6339)
!6345 = !DILocation(line: 232, column: 37, scope: !6339)
!6346 = !DILocation(line: 232, column: 6, scope: !6317)
!6347 = !DILocation(line: 233, column: 9, scope: !6339)
!6348 = !DILocation(line: 233, column: 7, scope: !6339)
!6349 = !DILocation(line: 233, column: 3, scope: !6339)
!6350 = !DILocation(line: 235, column: 9, scope: !6317)
!6351 = !DILocation(line: 235, column: 2, scope: !6317)
!6352 = !DILocation(line: 236, column: 1, scope: !6317)
!6353 = distinct !DISubprogram(name: "mfn_to_pfn_no_overrides", scope: !6296, file: !6296, line: 192, type: !6297, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6354 = !DILocalVariable(name: "mfn", arg: 1, scope: !6353, file: !6296, line: 192, type: !326)
!6355 = !DILocation(line: 192, column: 67, scope: !6353)
!6356 = !DILocalVariable(name: "pfn", scope: !6353, file: !6296, line: 194, type: !326)
!6357 = !DILocation(line: 194, column: 16, scope: !6353)
!6358 = !DILocalVariable(name: "ret", scope: !6353, file: !6296, line: 195, type: !207)
!6359 = !DILocation(line: 195, column: 6, scope: !6353)
!6360 = !DILocation(line: 197, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6353, file: !6296, line: 197, column: 6)
!6362 = !DILocation(line: 197, column: 6, scope: !6353)
!6363 = !DILocation(line: 198, column: 3, scope: !6361)
!6364 = !DILocation(line: 205, column: 29, scope: !6353)
!6365 = !DILocation(line: 205, column: 53, scope: !6353)
!6366 = !DILocation(line: 205, column: 8, scope: !6353)
!6367 = !DILocation(line: 205, column: 6, scope: !6353)
!6368 = !DILocation(line: 206, column: 6, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6353, file: !6296, line: 206, column: 6)
!6370 = !DILocation(line: 206, column: 10, scope: !6369)
!6371 = !DILocation(line: 206, column: 6, scope: !6353)
!6372 = !DILocation(line: 207, column: 3, scope: !6369)
!6373 = !DILocation(line: 209, column: 9, scope: !6353)
!6374 = !DILocation(line: 209, column: 2, scope: !6353)
!6375 = !DILocation(line: 210, column: 1, scope: !6353)
!6376 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !6296, file: !6296, line: 141, type: !6297, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6377 = !DILocalVariable(name: "pfn", arg: 1, scope: !6376, file: !6296, line: 141, type: !326)
!6378 = !DILocation(line: 141, column: 56, scope: !6376)
!6379 = !DILocalVariable(name: "mfn", scope: !6376, file: !6296, line: 143, type: !326)
!6380 = !DILocation(line: 143, column: 16, scope: !6376)
!6381 = !DILocation(line: 145, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6376, file: !6296, line: 145, column: 6)
!6383 = !DILocation(line: 145, column: 12, scope: !6382)
!6384 = !DILocation(line: 145, column: 10, scope: !6382)
!6385 = !DILocation(line: 145, column: 6, scope: !6376)
!6386 = !DILocation(line: 146, column: 9, scope: !6382)
!6387 = !DILocation(line: 146, column: 22, scope: !6382)
!6388 = !DILocation(line: 146, column: 7, scope: !6382)
!6389 = !DILocation(line: 146, column: 3, scope: !6382)
!6390 = !DILocation(line: 147, column: 11, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6382, file: !6296, line: 147, column: 11)
!6392 = !DILocation(line: 147, column: 11, scope: !6382)
!6393 = !DILocation(line: 148, column: 30, scope: !6391)
!6394 = !DILocation(line: 148, column: 10, scope: !6391)
!6395 = !DILocation(line: 148, column: 3, scope: !6391)
!6396 = !DILocation(line: 150, column: 10, scope: !6391)
!6397 = !DILocation(line: 150, column: 3, scope: !6391)
!6398 = !DILocation(line: 152, column: 6, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6376, file: !6296, line: 152, column: 6)
!6400 = !DILocation(line: 152, column: 6, scope: !6376)
!6401 = !DILocation(line: 153, column: 30, scope: !6399)
!6402 = !DILocation(line: 153, column: 10, scope: !6399)
!6403 = !DILocation(line: 153, column: 3, scope: !6399)
!6404 = !DILocation(line: 155, column: 9, scope: !6376)
!6405 = !DILocation(line: 155, column: 2, scope: !6376)
!6406 = !DILocation(line: 156, column: 1, scope: !6376)
!6407 = distinct !DISubprogram(name: "xen_safe_read_ulong", scope: !6296, file: !6296, line: 110, type: !6408, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!207, !6410, !4230}
!6410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!6411 = !DILocalVariable(name: "addr", arg: 1, scope: !6407, file: !6296, line: 110, type: !6410)
!6412 = !DILocation(line: 110, column: 60, scope: !6407)
!6413 = !DILocalVariable(name: "val", arg: 2, scope: !6407, file: !6296, line: 111, type: !4230)
!6414 = !DILocation(line: 111, column: 26, scope: !6407)
!6415 = !DILocalVariable(name: "ret", scope: !6407, file: !6296, line: 113, type: !207)
!6416 = !DILocation(line: 113, column: 6, scope: !6407)
!6417 = !DILocalVariable(name: "rval", scope: !6407, file: !6296, line: 114, type: !326)
!6418 = !DILocation(line: 114, column: 16, scope: !6407)
!6419 = !DILocation(line: 116, column: 2, scope: !6407)
!6420 = !DILocation(line: 124, column: 22, scope: !6407)
!6421 = !{i32 5644813, i32 5644848, i32 5644862, i32 5644897, i32 5644926, i32 5644947, i32 -2141562796, i32 -2141562752, i32 -2141562729, i32 -2141562696, i32 -2141562665, i32 -2141562609}
!6422 = !DILocation(line: 125, column: 9, scope: !6407)
!6423 = !DILocation(line: 125, column: 3, scope: !6407)
!6424 = !DILocation(line: 125, column: 7, scope: !6407)
!6425 = !DILocation(line: 127, column: 9, scope: !6407)
!6426 = !DILocation(line: 127, column: 2, scope: !6407)
!6427 = distinct !DISubprogram(name: "__list_del_entry", scope: !5275, file: !5275, line: 130, type: !5568, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6428 = !DILocalVariable(name: "entry", arg: 1, scope: !6427, file: !5275, line: 130, type: !193)
!6429 = !DILocation(line: 130, column: 55, scope: !6427)
!6430 = !DILocation(line: 132, column: 30, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6427, file: !5275, line: 132, column: 6)
!6432 = !DILocation(line: 132, column: 7, scope: !6431)
!6433 = !DILocation(line: 132, column: 6, scope: !6427)
!6434 = !DILocation(line: 133, column: 3, scope: !6431)
!6435 = !DILocation(line: 135, column: 13, scope: !6427)
!6436 = !DILocation(line: 135, column: 20, scope: !6427)
!6437 = !DILocation(line: 135, column: 26, scope: !6427)
!6438 = !DILocation(line: 135, column: 33, scope: !6427)
!6439 = !DILocation(line: 135, column: 2, scope: !6427)
!6440 = !DILocation(line: 136, column: 1, scope: !6427)
!6441 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5275, file: !5275, line: 51, type: !6442, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!492, !193}
!6444 = !DILocalVariable(name: "entry", arg: 1, scope: !6441, file: !5275, line: 51, type: !193)
!6445 = !DILocation(line: 51, column: 61, scope: !6441)
!6446 = !DILocation(line: 53, column: 2, scope: !6441)
!6447 = distinct !DISubprogram(name: "__list_del", scope: !5275, file: !5275, line: 110, type: !5884, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6448 = !DILocalVariable(name: "prev", arg: 1, scope: !6447, file: !5275, line: 110, type: !193)
!6449 = !DILocation(line: 110, column: 50, scope: !6447)
!6450 = !DILocalVariable(name: "next", arg: 2, scope: !6447, file: !5275, line: 110, type: !193)
!6451 = !DILocation(line: 110, column: 75, scope: !6447)
!6452 = !DILocation(line: 112, column: 15, scope: !6447)
!6453 = !DILocation(line: 112, column: 2, scope: !6447)
!6454 = !DILocation(line: 112, column: 8, scope: !6447)
!6455 = !DILocation(line: 112, column: 13, scope: !6447)
!6456 = !DILocation(line: 113, column: 2, scope: !6447)
!6457 = !DILocation(line: 113, column: 2, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6447, file: !5275, line: 113, column: 2)
!6459 = !DILocation(line: 113, column: 2, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6458, file: !5275, line: 113, column: 2)
!6461 = !DILocation(line: 113, column: 2, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6458, file: !5275, line: 113, column: 2)
!6463 = !DILocation(line: 114, column: 1, scope: !6447)
!6464 = distinct !DISubprogram(name: "xencons_probe", scope: !3, file: !3, line: 427, type: !4789, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6465 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !6466)
!6466 = distinct !DILocation(line: 452, column: 2, scope: !6464)
!6467 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !6468)
!6468 = distinct !DILocation(line: 450, column: 2, scope: !6464)
!6469 = !DILocalVariable(name: "dev", arg: 1, scope: !6464, file: !3, line: 427, type: !196)
!6470 = !DILocation(line: 427, column: 48, scope: !6464)
!6471 = !DILocalVariable(name: "id", arg: 2, scope: !6464, file: !3, line: 428, type: !4781)
!6472 = !DILocation(line: 428, column: 38, scope: !6464)
!6473 = !DILocalVariable(name: "ret", scope: !6464, file: !3, line: 430, type: !207)
!6474 = !DILocation(line: 430, column: 6, scope: !6464)
!6475 = !DILocalVariable(name: "devid", scope: !6464, file: !3, line: 430, type: !207)
!6476 = !DILocation(line: 430, column: 11, scope: !6464)
!6477 = !DILocalVariable(name: "info", scope: !6464, file: !3, line: 431, type: !185)
!6478 = !DILocation(line: 431, column: 23, scope: !6464)
!6479 = !DILocation(line: 433, column: 10, scope: !6464)
!6480 = !DILocation(line: 433, column: 15, scope: !6464)
!6481 = !DILocation(line: 433, column: 31, scope: !6464)
!6482 = !DILocation(line: 433, column: 36, scope: !6464)
!6483 = !DILocation(line: 433, column: 24, scope: !6464)
!6484 = !DILocation(line: 433, column: 46, scope: !6464)
!6485 = !DILocation(line: 433, column: 51, scope: !6464)
!6486 = !DILocation(line: 433, column: 8, scope: !6464)
!6487 = !DILocation(line: 434, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 434, column: 6)
!6489 = !DILocation(line: 434, column: 12, scope: !6488)
!6490 = !DILocation(line: 434, column: 6, scope: !6464)
!6491 = !DILocation(line: 435, column: 3, scope: !6488)
!6492 = !DILocation(line: 437, column: 9, scope: !6464)
!6493 = !DILocation(line: 437, column: 7, scope: !6464)
!6494 = !DILocation(line: 438, column: 7, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 438, column: 6)
!6496 = !DILocation(line: 438, column: 6, scope: !6464)
!6497 = !DILocation(line: 439, column: 3, scope: !6495)
!6498 = !DILocation(line: 440, column: 19, scope: !6464)
!6499 = !DILocation(line: 440, column: 24, scope: !6464)
!6500 = !DILocation(line: 440, column: 29, scope: !6464)
!6501 = !DILocation(line: 440, column: 2, scope: !6464)
!6502 = !DILocation(line: 441, column: 16, scope: !6464)
!6503 = !DILocation(line: 441, column: 2, scope: !6464)
!6504 = !DILocation(line: 441, column: 8, scope: !6464)
!6505 = !DILocation(line: 441, column: 14, scope: !6464)
!6506 = !DILocation(line: 442, column: 42, scope: !6464)
!6507 = !DILocation(line: 442, column: 18, scope: !6464)
!6508 = !DILocation(line: 442, column: 2, scope: !6464)
!6509 = !DILocation(line: 442, column: 8, scope: !6464)
!6510 = !DILocation(line: 442, column: 16, scope: !6464)
!6511 = !DILocation(line: 443, column: 23, scope: !6464)
!6512 = !DILocation(line: 443, column: 15, scope: !6464)
!6513 = !DILocation(line: 443, column: 2, scope: !6464)
!6514 = !DILocation(line: 443, column: 8, scope: !6464)
!6515 = !DILocation(line: 443, column: 13, scope: !6464)
!6516 = !DILocation(line: 444, column: 7, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 444, column: 6)
!6518 = !DILocation(line: 444, column: 13, scope: !6517)
!6519 = !DILocation(line: 444, column: 6, scope: !6464)
!6520 = !DILocation(line: 445, column: 3, scope: !6517)
!6521 = !DILocation(line: 447, column: 32, scope: !6464)
!6522 = !DILocation(line: 447, column: 37, scope: !6464)
!6523 = !DILocation(line: 447, column: 8, scope: !6464)
!6524 = !DILocation(line: 447, column: 6, scope: !6464)
!6525 = !DILocation(line: 448, column: 6, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 448, column: 6)
!6527 = !DILocation(line: 448, column: 10, scope: !6526)
!6528 = !DILocation(line: 448, column: 6, scope: !6464)
!6529 = !DILocation(line: 449, column: 3, scope: !6526)
!6530 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !6468)
!6531 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !6468)
!6532 = !DILocation(line: 451, column: 17, scope: !6464)
!6533 = !DILocation(line: 451, column: 23, scope: !6464)
!6534 = !DILocation(line: 451, column: 2, scope: !6464)
!6535 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !6466)
!6536 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !6466)
!6537 = !DILocation(line: 454, column: 2, scope: !6464)
!6538 = !DILabel(scope: !6464, name: "error_nomem", file: !3, line: 456)
!6539 = !DILocation(line: 456, column: 2, scope: !6464)
!6540 = !DILocation(line: 457, column: 6, scope: !6464)
!6541 = !DILocation(line: 458, column: 19, scope: !6464)
!6542 = !DILocation(line: 458, column: 24, scope: !6464)
!6543 = !DILocation(line: 458, column: 2, scope: !6464)
!6544 = !DILabel(scope: !6464, name: "error", file: !3, line: 459)
!6545 = !DILocation(line: 459, column: 2, scope: !6464)
!6546 = !DILocation(line: 460, column: 29, scope: !6464)
!6547 = !DILocation(line: 460, column: 2, scope: !6464)
!6548 = !DILocation(line: 461, column: 15, scope: !6464)
!6549 = !DILocation(line: 461, column: 2, scope: !6464)
!6550 = !DILocation(line: 462, column: 9, scope: !6464)
!6551 = !DILocation(line: 462, column: 2, scope: !6464)
!6552 = !DILocation(line: 463, column: 1, scope: !6464)
!6553 = distinct !DISubprogram(name: "xencons_backend_changed", scope: !3, file: !3, line: 474, type: !4793, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6554 = !DILocalVariable(name: "dev", arg: 1, scope: !6553, file: !3, line: 474, type: !196)
!6555 = !DILocation(line: 474, column: 59, scope: !6553)
!6556 = !DILocalVariable(name: "backend_state", arg: 2, scope: !6553, file: !3, line: 475, type: !128)
!6557 = !DILocation(line: 475, column: 26, scope: !6553)
!6558 = !DILocation(line: 477, column: 10, scope: !6553)
!6559 = !DILocation(line: 477, column: 2, scope: !6553)
!6560 = !DILocation(line: 483, column: 3, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 477, column: 25)
!6562 = !DILocation(line: 486, column: 3, scope: !6561)
!6563 = !DILocation(line: 489, column: 23, scope: !6561)
!6564 = !DILocation(line: 489, column: 3, scope: !6561)
!6565 = !DILocation(line: 490, column: 3, scope: !6561)
!6566 = !DILocation(line: 493, column: 7, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 493, column: 7)
!6568 = !DILocation(line: 493, column: 12, scope: !6567)
!6569 = !DILocation(line: 493, column: 18, scope: !6567)
!6570 = !DILocation(line: 493, column: 7, scope: !6561)
!6571 = !DILocation(line: 494, column: 4, scope: !6567)
!6572 = !DILocation(line: 493, column: 21, scope: !6567)
!6573 = !DILocation(line: 497, column: 26, scope: !6561)
!6574 = !DILocation(line: 497, column: 3, scope: !6561)
!6575 = !DILocation(line: 498, column: 3, scope: !6561)
!6576 = !DILocation(line: 500, column: 1, scope: !6553)
!6577 = distinct !DISubprogram(name: "xencons_remove", scope: !3, file: !3, line: 362, type: !4797, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6578 = !DILocalVariable(name: "dev", arg: 1, scope: !6577, file: !3, line: 362, type: !196)
!6579 = !DILocation(line: 362, column: 49, scope: !6577)
!6580 = !DILocation(line: 364, column: 45, scope: !6577)
!6581 = !DILocation(line: 364, column: 50, scope: !6577)
!6582 = !DILocation(line: 364, column: 28, scope: !6577)
!6583 = !DILocation(line: 364, column: 9, scope: !6577)
!6584 = !DILocation(line: 364, column: 2, scope: !6577)
!6585 = distinct !DISubprogram(name: "xencons_resume", scope: !3, file: !3, line: 465, type: !4797, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6586 = !DILocalVariable(name: "dev", arg: 1, scope: !6585, file: !3, line: 465, type: !196)
!6587 = !DILocation(line: 465, column: 49, scope: !6585)
!6588 = !DILocalVariable(name: "info", scope: !6585, file: !3, line: 467, type: !185)
!6589 = !DILocation(line: 467, column: 23, scope: !6585)
!6590 = !DILocation(line: 467, column: 47, scope: !6585)
!6591 = !DILocation(line: 467, column: 52, scope: !6585)
!6592 = !DILocation(line: 467, column: 30, scope: !6585)
!6593 = !DILocation(line: 469, column: 29, scope: !6585)
!6594 = !DILocation(line: 469, column: 2, scope: !6585)
!6595 = !DILocation(line: 470, column: 9, scope: !6585)
!6596 = !DILocation(line: 470, column: 15, scope: !6585)
!6597 = !DILocation(line: 470, column: 2, scope: !6585)
!6598 = !DILocation(line: 471, column: 33, scope: !6585)
!6599 = !DILocation(line: 471, column: 38, scope: !6585)
!6600 = !DILocation(line: 471, column: 9, scope: !6585)
!6601 = !DILocation(line: 471, column: 2, scope: !6585)
!6602 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !6603, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{null, !1845, !184}
!6605 = !DILocalVariable(name: "dev", arg: 1, scope: !6602, file: !73, line: 660, type: !1845)
!6606 = !DILocation(line: 660, column: 51, scope: !6602)
!6607 = !DILocalVariable(name: "data", arg: 2, scope: !6602, file: !73, line: 660, type: !184)
!6608 = !DILocation(line: 660, column: 62, scope: !6602)
!6609 = !DILocation(line: 662, column: 21, scope: !6602)
!6610 = !DILocation(line: 662, column: 2, scope: !6602)
!6611 = !DILocation(line: 662, column: 7, scope: !6602)
!6612 = !DILocation(line: 662, column: 19, scope: !6602)
!6613 = !DILocation(line: 663, column: 1, scope: !6602)
!6614 = distinct !DISubprogram(name: "xenbus_devid_to_vtermno", scope: !3, file: !3, line: 68, type: !2050, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6615 = !DILocalVariable(name: "devid", arg: 1, scope: !6614, file: !3, line: 68, type: !207)
!6616 = !DILocation(line: 68, column: 47, scope: !6614)
!6617 = !DILocation(line: 70, column: 9, scope: !6614)
!6618 = !DILocation(line: 70, column: 15, scope: !6614)
!6619 = !DILocation(line: 70, column: 2, scope: !6614)
!6620 = distinct !DISubprogram(name: "xencons_connect_backend", scope: !3, file: !3, line: 367, type: !6621, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{!207, !196, !185}
!6623 = !DILocalVariable(name: "dev", arg: 1, scope: !6620, file: !3, line: 367, type: !196)
!6624 = !DILocation(line: 367, column: 58, scope: !6620)
!6625 = !DILocalVariable(name: "info", arg: 2, scope: !6620, file: !3, line: 368, type: !185)
!6626 = !DILocation(line: 368, column: 28, scope: !6620)
!6627 = !DILocalVariable(name: "ret", scope: !6620, file: !3, line: 370, type: !207)
!6628 = !DILocation(line: 370, column: 6, scope: !6620)
!6629 = !DILocalVariable(name: "evtchn", scope: !6620, file: !3, line: 370, type: !207)
!6630 = !DILocation(line: 370, column: 11, scope: !6620)
!6631 = !DILocalVariable(name: "devid", scope: !6620, file: !3, line: 370, type: !207)
!6632 = !DILocation(line: 370, column: 19, scope: !6620)
!6633 = !DILocalVariable(name: "ref", scope: !6620, file: !3, line: 370, type: !207)
!6634 = !DILocation(line: 370, column: 26, scope: !6620)
!6635 = !DILocalVariable(name: "irq", scope: !6620, file: !3, line: 370, type: !207)
!6636 = !DILocation(line: 370, column: 31, scope: !6620)
!6637 = !DILocalVariable(name: "xbt", scope: !6620, file: !3, line: 371, type: !6638)
!6638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !198, line: 133, size: 32, elements: !6639)
!6639 = !{!6640}
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6638, file: !198, line: 135, baseType: !417, size: 32)
!6641 = !DILocation(line: 371, column: 28, scope: !6620)
!6642 = !DILocalVariable(name: "gref_head", scope: !6620, file: !3, line: 372, type: !4704)
!6643 = !DILocation(line: 372, column: 14, scope: !6620)
!6644 = !DILocation(line: 374, column: 28, scope: !6620)
!6645 = !DILocation(line: 374, column: 8, scope: !6620)
!6646 = !DILocation(line: 374, column: 6, scope: !6620)
!6647 = !DILocation(line: 375, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 375, column: 6)
!6649 = !DILocation(line: 375, column: 6, scope: !6620)
!6650 = !DILocation(line: 376, column: 10, scope: !6648)
!6651 = !DILocation(line: 376, column: 3, scope: !6648)
!6652 = !DILocation(line: 377, column: 17, scope: !6620)
!6653 = !DILocation(line: 377, column: 2, scope: !6620)
!6654 = !DILocation(line: 377, column: 8, scope: !6620)
!6655 = !DILocation(line: 377, column: 15, scope: !6620)
!6656 = !DILocation(line: 378, column: 27, scope: !6620)
!6657 = !DILocation(line: 378, column: 8, scope: !6620)
!6658 = !DILocation(line: 378, column: 6, scope: !6620)
!6659 = !DILocation(line: 379, column: 6, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 379, column: 6)
!6661 = !DILocation(line: 379, column: 10, scope: !6660)
!6662 = !DILocation(line: 379, column: 6, scope: !6620)
!6663 = !DILocation(line: 380, column: 10, scope: !6660)
!6664 = !DILocation(line: 380, column: 3, scope: !6660)
!6665 = !DILocation(line: 381, column: 14, scope: !6620)
!6666 = !DILocation(line: 381, column: 2, scope: !6620)
!6667 = !DILocation(line: 381, column: 8, scope: !6620)
!6668 = !DILocation(line: 381, column: 12, scope: !6620)
!6669 = !DILocation(line: 382, column: 10, scope: !6620)
!6670 = !DILocation(line: 382, column: 15, scope: !6620)
!6671 = !DILocation(line: 382, column: 31, scope: !6620)
!6672 = !DILocation(line: 382, column: 36, scope: !6620)
!6673 = !DILocation(line: 382, column: 24, scope: !6620)
!6674 = !DILocation(line: 382, column: 46, scope: !6620)
!6675 = !DILocation(line: 382, column: 51, scope: !6620)
!6676 = !DILocation(line: 382, column: 8, scope: !6620)
!6677 = !DILocation(line: 383, column: 48, scope: !6620)
!6678 = !DILocation(line: 383, column: 24, scope: !6620)
!6679 = !DILocation(line: 384, column: 4, scope: !6620)
!6680 = !DILocation(line: 383, column: 14, scope: !6620)
!6681 = !DILocation(line: 383, column: 2, scope: !6620)
!6682 = !DILocation(line: 383, column: 8, scope: !6620)
!6683 = !DILocation(line: 383, column: 12, scope: !6620)
!6684 = !DILocation(line: 385, column: 13, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 385, column: 6)
!6686 = !DILocation(line: 385, column: 19, scope: !6685)
!6687 = !DILocation(line: 385, column: 6, scope: !6685)
!6688 = !DILocation(line: 385, column: 6, scope: !6620)
!6689 = !DILocation(line: 386, column: 18, scope: !6685)
!6690 = !DILocation(line: 386, column: 24, scope: !6685)
!6691 = !DILocation(line: 386, column: 10, scope: !6685)
!6692 = !DILocation(line: 386, column: 3, scope: !6685)
!6693 = !DILocation(line: 387, column: 8, scope: !6620)
!6694 = !DILocation(line: 387, column: 6, scope: !6620)
!6695 = !DILocation(line: 388, column: 6, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 388, column: 6)
!6697 = !DILocation(line: 388, column: 10, scope: !6696)
!6698 = !DILocation(line: 388, column: 6, scope: !6620)
!6699 = !DILocation(line: 389, column: 10, scope: !6696)
!6700 = !DILocation(line: 389, column: 3, scope: !6696)
!6701 = !DILocation(line: 390, column: 17, scope: !6620)
!6702 = !DILocation(line: 390, column: 2, scope: !6620)
!6703 = !DILocation(line: 390, column: 8, scope: !6620)
!6704 = !DILocation(line: 390, column: 15, scope: !6620)
!6705 = !DILocation(line: 391, column: 8, scope: !6620)
!6706 = !DILocation(line: 391, column: 6, scope: !6620)
!6707 = !DILocation(line: 392, column: 6, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 392, column: 6)
!6709 = !DILocation(line: 392, column: 10, scope: !6708)
!6710 = !DILocation(line: 392, column: 6, scope: !6620)
!6711 = !DILocation(line: 393, column: 10, scope: !6708)
!6712 = !DILocation(line: 393, column: 3, scope: !6708)
!6713 = !DILocation(line: 394, column: 34, scope: !6620)
!6714 = !DILocation(line: 394, column: 39, scope: !6620)
!6715 = !DILocation(line: 394, column: 45, scope: !6620)
!6716 = !DILocation(line: 394, column: 52, scope: !6620)
!6717 = !DILocation(line: 395, column: 6, scope: !6620)
!6718 = !DILocation(line: 394, column: 2, scope: !6620)
!6719 = !DILabel(scope: !6620, name: "again", file: !3, line: 397)
!6720 = !DILocation(line: 397, column: 2, scope: !6620)
!6721 = !DILocation(line: 398, column: 8, scope: !6620)
!6722 = !DILocation(line: 398, column: 6, scope: !6620)
!6723 = !DILocation(line: 399, column: 6, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 399, column: 6)
!6725 = !DILocation(line: 399, column: 6, scope: !6620)
!6726 = !DILocation(line: 400, column: 20, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 399, column: 11)
!6728 = !DILocation(line: 400, column: 25, scope: !6727)
!6729 = !DILocation(line: 400, column: 3, scope: !6727)
!6730 = !DILocation(line: 401, column: 10, scope: !6727)
!6731 = !DILocation(line: 401, column: 3, scope: !6727)
!6732 = !DILocation(line: 403, column: 27, scope: !6620)
!6733 = !DILocation(line: 403, column: 32, scope: !6620)
!6734 = !DILocation(line: 403, column: 60, scope: !6620)
!6735 = !DILocation(line: 403, column: 8, scope: !6620)
!6736 = !DILocation(line: 403, column: 6, scope: !6620)
!6737 = !DILocation(line: 404, column: 6, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 404, column: 6)
!6739 = !DILocation(line: 404, column: 6, scope: !6620)
!6740 = !DILocation(line: 405, column: 3, scope: !6738)
!6741 = !DILocation(line: 406, column: 27, scope: !6620)
!6742 = !DILocation(line: 406, column: 32, scope: !6620)
!6743 = !DILocation(line: 407, column: 8, scope: !6620)
!6744 = !DILocation(line: 406, column: 8, scope: !6620)
!6745 = !DILocation(line: 406, column: 6, scope: !6620)
!6746 = !DILocation(line: 408, column: 6, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 408, column: 6)
!6748 = !DILocation(line: 408, column: 6, scope: !6620)
!6749 = !DILocation(line: 409, column: 3, scope: !6747)
!6750 = !DILocation(line: 410, column: 8, scope: !6620)
!6751 = !DILocation(line: 410, column: 6, scope: !6620)
!6752 = !DILocation(line: 411, column: 6, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 411, column: 6)
!6754 = !DILocation(line: 411, column: 6, scope: !6620)
!6755 = !DILocation(line: 412, column: 7, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6757, file: !3, line: 412, column: 7)
!6757 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 411, column: 11)
!6758 = !DILocation(line: 412, column: 11, scope: !6756)
!6759 = !DILocation(line: 412, column: 7, scope: !6757)
!6760 = !DILocation(line: 413, column: 4, scope: !6756)
!6761 = !DILocation(line: 414, column: 20, scope: !6757)
!6762 = !DILocation(line: 414, column: 25, scope: !6757)
!6763 = !DILocation(line: 414, column: 3, scope: !6757)
!6764 = !DILocation(line: 415, column: 10, scope: !6757)
!6765 = !DILocation(line: 415, column: 3, scope: !6757)
!6766 = !DILocation(line: 418, column: 22, scope: !6620)
!6767 = !DILocation(line: 418, column: 2, scope: !6620)
!6768 = !DILocation(line: 419, column: 2, scope: !6620)
!6769 = !DILabel(scope: !6620, name: "error_xenbus", file: !3, line: 421)
!6770 = !DILocation(line: 421, column: 2, scope: !6620)
!6771 = !DILocation(line: 422, column: 2, scope: !6620)
!6772 = !DILocation(line: 423, column: 19, scope: !6620)
!6773 = !DILocation(line: 423, column: 24, scope: !6620)
!6774 = !DILocation(line: 423, column: 2, scope: !6620)
!6775 = !DILocation(line: 424, column: 9, scope: !6620)
!6776 = !DILocation(line: 424, column: 2, scope: !6620)
!6777 = !DILocation(line: 425, column: 1, scope: !6620)
!6778 = distinct !DISubprogram(name: "xencons_disconnect_backend", scope: !3, file: !3, line: 322, type: !4900, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6779 = !DILocalVariable(name: "info", arg: 1, scope: !6778, file: !3, line: 322, type: !185)
!6780 = !DILocation(line: 322, column: 61, scope: !6778)
!6781 = !DILocation(line: 324, column: 6, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 324, column: 6)
!6783 = !DILocation(line: 324, column: 12, scope: !6782)
!6784 = !DILocation(line: 324, column: 16, scope: !6782)
!6785 = !DILocation(line: 324, column: 6, scope: !6778)
!6786 = !DILocation(line: 325, column: 26, scope: !6782)
!6787 = !DILocation(line: 325, column: 32, scope: !6782)
!6788 = !DILocation(line: 325, column: 3, scope: !6782)
!6789 = !DILocation(line: 326, column: 2, scope: !6778)
!6790 = !DILocation(line: 326, column: 8, scope: !6778)
!6791 = !DILocation(line: 326, column: 12, scope: !6778)
!6792 = !DILocation(line: 327, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 327, column: 6)
!6794 = !DILocation(line: 327, column: 12, scope: !6793)
!6795 = !DILocation(line: 327, column: 19, scope: !6793)
!6796 = !DILocation(line: 327, column: 6, scope: !6778)
!6797 = !DILocation(line: 328, column: 22, scope: !6793)
!6798 = !DILocation(line: 328, column: 28, scope: !6793)
!6799 = !DILocation(line: 328, column: 35, scope: !6793)
!6800 = !DILocation(line: 328, column: 41, scope: !6793)
!6801 = !DILocation(line: 328, column: 3, scope: !6793)
!6802 = !DILocation(line: 329, column: 2, scope: !6778)
!6803 = !DILocation(line: 329, column: 8, scope: !6778)
!6804 = !DILocation(line: 329, column: 15, scope: !6778)
!6805 = !DILocation(line: 330, column: 6, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 330, column: 6)
!6807 = !DILocation(line: 330, column: 12, scope: !6806)
!6808 = !DILocation(line: 330, column: 19, scope: !6806)
!6809 = !DILocation(line: 330, column: 6, scope: !6778)
!6810 = !DILocation(line: 331, column: 32, scope: !6806)
!6811 = !DILocation(line: 331, column: 38, scope: !6806)
!6812 = !DILocation(line: 331, column: 3, scope: !6806)
!6813 = !DILocation(line: 332, column: 2, scope: !6778)
!6814 = !DILocation(line: 332, column: 8, scope: !6778)
!6815 = !DILocation(line: 332, column: 15, scope: !6778)
!6816 = !DILocation(line: 333, column: 6, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 333, column: 6)
!6818 = !DILocation(line: 333, column: 12, scope: !6817)
!6819 = !DILocation(line: 333, column: 16, scope: !6817)
!6820 = !DILocation(line: 333, column: 6, scope: !6778)
!6821 = !DILocation(line: 334, column: 14, scope: !6817)
!6822 = !DILocation(line: 334, column: 20, scope: !6817)
!6823 = !DILocation(line: 334, column: 3, scope: !6817)
!6824 = !DILocation(line: 335, column: 2, scope: !6778)
!6825 = !DILocation(line: 335, column: 8, scope: !6778)
!6826 = !DILocation(line: 335, column: 12, scope: !6778)
!6827 = !DILocation(line: 336, column: 1, scope: !6778)
!6828 = distinct !DISubprogram(name: "xencons_free", scope: !3, file: !3, line: 338, type: !4900, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6829 = !DILocalVariable(name: "info", arg: 1, scope: !6828, file: !3, line: 338, type: !185)
!6830 = !DILocation(line: 338, column: 47, scope: !6828)
!6831 = !DILocation(line: 340, column: 2, scope: !6828)
!6832 = !DILocation(line: 341, column: 2, scope: !6828)
!6833 = !DILocation(line: 341, column: 8, scope: !6828)
!6834 = !DILocation(line: 341, column: 13, scope: !6828)
!6835 = !DILocation(line: 342, column: 2, scope: !6828)
!6836 = !DILocation(line: 342, column: 8, scope: !6828)
!6837 = !DILocation(line: 342, column: 16, scope: !6828)
!6838 = !DILocation(line: 343, column: 8, scope: !6828)
!6839 = !DILocation(line: 343, column: 2, scope: !6828)
!6840 = !DILocation(line: 344, column: 1, scope: !6828)
!6841 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !6296, file: !6296, line: 251, type: !6297, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6842 = !DILocalVariable(name: "pfn", arg: 1, scope: !6841, file: !6296, line: 251, type: !326)
!6843 = !DILocation(line: 251, column: 54, scope: !6841)
!6844 = !DILocation(line: 253, column: 6, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6841, file: !6296, line: 253, column: 6)
!6846 = !DILocation(line: 253, column: 6, scope: !6841)
!6847 = !DILocation(line: 254, column: 10, scope: !6845)
!6848 = !DILocation(line: 254, column: 3, scope: !6845)
!6849 = !DILocation(line: 256, column: 21, scope: !6845)
!6850 = !DILocation(line: 256, column: 10, scope: !6845)
!6851 = !DILocation(line: 256, column: 3, scope: !6845)
!6852 = !DILocation(line: 257, column: 1, scope: !6841)
!6853 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6854, file: !6854, line: 18, type: !6297, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6854 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!6855 = !DILocalVariable(name: "x", arg: 1, scope: !6853, file: !6854, line: 18, type: !326)
!6856 = !DILocation(line: 18, column: 63, scope: !6853)
!6857 = !DILocalVariable(name: "y", scope: !6853, file: !6854, line: 20, type: !326)
!6858 = !DILocation(line: 20, column: 16, scope: !6853)
!6859 = !DILocation(line: 20, column: 20, scope: !6853)
!6860 = !DILocation(line: 20, column: 22, scope: !6853)
!6861 = !DILocation(line: 23, column: 6, scope: !6853)
!6862 = !DILocation(line: 23, column: 12, scope: !6853)
!6863 = !DILocation(line: 23, column: 16, scope: !6853)
!6864 = !DILocation(line: 23, column: 14, scope: !6853)
!6865 = !DILocation(line: 23, column: 11, scope: !6853)
!6866 = !DILocation(line: 23, column: 21, scope: !6853)
!6867 = !DILocation(line: 23, column: 55, scope: !6853)
!6868 = !DILocation(line: 23, column: 53, scope: !6853)
!6869 = !DILocation(line: 23, column: 8, scope: !6853)
!6870 = !DILocation(line: 23, column: 4, scope: !6853)
!6871 = !DILocation(line: 25, column: 9, scope: !6853)
!6872 = !DILocation(line: 25, column: 2, scope: !6853)
!6873 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !6296, file: !6296, line: 164, type: !6297, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6874 = !DILocalVariable(name: "pfn", arg: 1, scope: !6873, file: !6296, line: 164, type: !326)
!6875 = !DILocation(line: 164, column: 54, scope: !6873)
!6876 = !DILocalVariable(name: "mfn", scope: !6873, file: !6296, line: 166, type: !326)
!6877 = !DILocation(line: 166, column: 16, scope: !6873)
!6878 = !DILocation(line: 173, column: 6, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6873, file: !6296, line: 173, column: 6)
!6880 = !DILocation(line: 173, column: 6, scope: !6873)
!6881 = !DILocation(line: 174, column: 10, scope: !6879)
!6882 = !DILocation(line: 174, column: 3, scope: !6879)
!6883 = !DILocation(line: 176, column: 21, scope: !6873)
!6884 = !DILocation(line: 176, column: 8, scope: !6873)
!6885 = !DILocation(line: 176, column: 6, scope: !6873)
!6886 = !DILocation(line: 178, column: 6, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6873, file: !6296, line: 178, column: 6)
!6888 = !DILocation(line: 178, column: 10, scope: !6887)
!6889 = !DILocation(line: 178, column: 6, scope: !6873)
!6890 = !DILocation(line: 179, column: 7, scope: !6887)
!6891 = !DILocation(line: 179, column: 3, scope: !6887)
!6892 = !DILocation(line: 181, column: 9, scope: !6873)
!6893 = !DILocation(line: 181, column: 2, scope: !6873)
!6894 = !DILocation(line: 182, column: 1, scope: !6873)
!6895 = distinct !DISubprogram(name: "xen_console_remove", scope: !3, file: !3, line: 346, type: !6896, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6896 = !DISubroutineType(types: !6897)
!6897 = !{!207, !185}
!6898 = !DILocation(line: 392, column: 53, scope: !4937, inlinedAt: !6899)
!6899 = distinct !DILocation(line: 351, column: 2, scope: !6895)
!6900 = !DILocation(line: 352, column: 51, scope: !4946, inlinedAt: !6901)
!6901 = distinct !DILocation(line: 349, column: 2, scope: !6895)
!6902 = !DILocalVariable(name: "info", arg: 1, scope: !6895, file: !3, line: 346, type: !185)
!6903 = !DILocation(line: 346, column: 52, scope: !6895)
!6904 = !DILocation(line: 348, column: 29, scope: !6895)
!6905 = !DILocation(line: 348, column: 2, scope: !6895)
!6906 = !DILocation(line: 354, column: 2, scope: !5026, inlinedAt: !6901)
!6907 = !DILocation(line: 354, column: 2, scope: !5029, inlinedAt: !6901)
!6908 = !DILocation(line: 350, column: 12, scope: !6895)
!6909 = !DILocation(line: 350, column: 18, scope: !6895)
!6910 = !DILocation(line: 350, column: 2, scope: !6895)
!6911 = !DILocation(line: 394, column: 2, scope: !5034, inlinedAt: !6899)
!6912 = !DILocation(line: 394, column: 2, scope: !5037, inlinedAt: !6899)
!6913 = !DILocation(line: 352, column: 6, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6895, file: !3, line: 352, column: 6)
!6915 = !DILocation(line: 352, column: 12, scope: !6914)
!6916 = !DILocation(line: 352, column: 18, scope: !6914)
!6917 = !DILocation(line: 352, column: 6, scope: !6895)
!6918 = !DILocation(line: 353, column: 16, scope: !6914)
!6919 = !DILocation(line: 353, column: 3, scope: !6914)
!6920 = !DILocation(line: 355, column: 7, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 355, column: 7)
!6922 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 354, column: 7)
!6923 = !DILocation(line: 355, column: 7, scope: !6922)
!6924 = !DILocation(line: 356, column: 12, scope: !6921)
!6925 = !DILocation(line: 356, column: 18, scope: !6921)
!6926 = !DILocation(line: 356, column: 4, scope: !6921)
!6927 = !DILocation(line: 357, column: 9, scope: !6922)
!6928 = !DILocation(line: 357, column: 3, scope: !6922)
!6929 = !DILocation(line: 359, column: 2, scope: !6895)
!6930 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6931, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6931 = !DISubroutineType(types: !6932)
!6932 = !{!184, !4127}
!6933 = !DILocalVariable(name: "dev", arg: 1, scope: !6930, file: !73, line: 655, type: !4127)
!6934 = !DILocation(line: 655, column: 58, scope: !6930)
!6935 = !DILocation(line: 657, column: 9, scope: !6930)
!6936 = !DILocation(line: 657, column: 14, scope: !6930)
!6937 = !DILocation(line: 657, column: 2, scope: !6930)
!6938 = distinct !DISubprogram(name: "xen_cpuid_base", scope: !6939, file: !6939, line: 41, type: !6940, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6939 = !DIFile(filename: "./arch/x86/include/asm/xen/hypervisor.h", directory: "/home/lizy2001/genbc/linux")
!6940 = !DISubroutineType(types: !6941)
!6941 = !{!561}
!6942 = !DILocation(line: 43, column: 9, scope: !6938)
!6943 = !DILocation(line: 43, column: 2, scope: !6938)
!6944 = distinct !DISubprogram(name: "outsb", scope: !6945, file: !6945, line: 334, type: !6946, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6945 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!6946 = !DISubroutineType(types: !6947)
!6947 = !{null, !207, !2797, !326}
!6948 = !DILocalVariable(name: "port", arg: 1, scope: !6944, file: !6945, line: 334, type: !207)
!6949 = !DILocation(line: 334, column: 1, scope: !6944)
!6950 = !DILocalVariable(name: "addr", arg: 2, scope: !6944, file: !6945, line: 334, type: !2797)
!6951 = !DILocalVariable(name: "count", arg: 3, scope: !6944, file: !6945, line: 334, type: !326)
!6952 = !DILocation(line: 334, column: 1, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6944, file: !6945, line: 334, column: 1)
!6954 = !DILocalVariable(name: "value", scope: !6955, file: !6945, line: 334, type: !2217)
!6955 = distinct !DILexicalBlock(scope: !6953, file: !6945, line: 334, column: 1)
!6956 = !DILocation(line: 334, column: 1, scope: !6955)
!6957 = !DILocation(line: 334, column: 1, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6955, file: !6945, line: 334, column: 1)
!6959 = distinct !{!6959, !6956, !6956}
!6960 = !DILocation(line: 334, column: 1, scope: !6961)
!6961 = distinct !DILexicalBlock(scope: !6953, file: !6945, line: 334, column: 1)
!6962 = !{i32 -2144676335}
!6963 = distinct !DISubprogram(name: "hypervisor_cpuid_base", scope: !2809, file: !2809, line: 823, type: !6964, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6964 = !DISubroutineType(types: !6965)
!6965 = !{!561, !201, !561}
!6966 = !DILocalVariable(name: "sig", arg: 1, scope: !6963, file: !2809, line: 823, type: !201)
!6967 = !DILocation(line: 823, column: 58, scope: !6963)
!6968 = !DILocalVariable(name: "leaves", arg: 2, scope: !6963, file: !2809, line: 823, type: !561)
!6969 = !DILocation(line: 823, column: 72, scope: !6963)
!6970 = !DILocalVariable(name: "base", scope: !6963, file: !2809, line: 825, type: !561)
!6971 = !DILocation(line: 825, column: 11, scope: !6963)
!6972 = !DILocalVariable(name: "eax", scope: !6963, file: !2809, line: 825, type: !561)
!6973 = !DILocation(line: 825, column: 17, scope: !6963)
!6974 = !DILocalVariable(name: "signature", scope: !6963, file: !2809, line: 825, type: !6975)
!6975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 96, elements: !277)
!6976 = !DILocation(line: 825, column: 22, scope: !6963)
!6977 = !DILocation(line: 827, column: 12, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6963, file: !2809, line: 827, column: 2)
!6979 = !DILocation(line: 827, column: 7, scope: !6978)
!6980 = !DILocation(line: 827, column: 26, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6978, file: !2809, line: 827, column: 2)
!6982 = !DILocation(line: 827, column: 31, scope: !6981)
!6983 = !DILocation(line: 827, column: 2, scope: !6978)
!6984 = !DILocation(line: 828, column: 9, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6981, file: !2809, line: 827, column: 60)
!6986 = !DILocation(line: 828, column: 22, scope: !6985)
!6987 = !DILocation(line: 828, column: 37, scope: !6985)
!6988 = !DILocation(line: 828, column: 52, scope: !6985)
!6989 = !DILocation(line: 828, column: 3, scope: !6985)
!6990 = !DILocation(line: 830, column: 15, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6985, file: !2809, line: 830, column: 7)
!6992 = !DILocation(line: 830, column: 20, scope: !6991)
!6993 = !DILocation(line: 830, column: 8, scope: !6991)
!6994 = !DILocation(line: 830, column: 35, scope: !6991)
!6995 = !DILocation(line: 831, column: 8, scope: !6991)
!6996 = !DILocation(line: 831, column: 15, scope: !6991)
!6997 = !DILocation(line: 831, column: 20, scope: !6991)
!6998 = !DILocation(line: 831, column: 25, scope: !6991)
!6999 = !DILocation(line: 831, column: 31, scope: !6991)
!7000 = !DILocation(line: 831, column: 29, scope: !6991)
!7001 = !DILocation(line: 831, column: 40, scope: !6991)
!7002 = !DILocation(line: 831, column: 37, scope: !6991)
!7003 = !DILocation(line: 830, column: 7, scope: !6985)
!7004 = !DILocation(line: 832, column: 11, scope: !6991)
!7005 = !DILocation(line: 832, column: 4, scope: !6991)
!7006 = !DILocation(line: 833, column: 2, scope: !6985)
!7007 = !DILocation(line: 827, column: 50, scope: !6981)
!7008 = !DILocation(line: 827, column: 2, scope: !6981)
!7009 = distinct !{!7009, !6983, !7010}
!7010 = !DILocation(line: 833, column: 2, scope: !6978)
!7011 = !DILocation(line: 835, column: 2, scope: !6963)
!7012 = !DILocation(line: 836, column: 1, scope: !6963)
!7013 = distinct !DISubprogram(name: "cpuid", scope: !2809, file: !2809, line: 615, type: !7014, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!7014 = !DISubroutineType(types: !7015)
!7015 = !{null, !7, !3350, !3350, !3350, !3350}
!7016 = !DILocalVariable(name: "op", arg: 1, scope: !7013, file: !2809, line: 615, type: !7)
!7017 = !DILocation(line: 615, column: 39, scope: !7013)
!7018 = !DILocalVariable(name: "eax", arg: 2, scope: !7013, file: !2809, line: 616, type: !3350)
!7019 = !DILocation(line: 616, column: 19, scope: !7013)
!7020 = !DILocalVariable(name: "ebx", arg: 3, scope: !7013, file: !2809, line: 616, type: !3350)
!7021 = !DILocation(line: 616, column: 38, scope: !7013)
!7022 = !DILocalVariable(name: "ecx", arg: 4, scope: !7013, file: !2809, line: 617, type: !3350)
!7023 = !DILocation(line: 617, column: 19, scope: !7013)
!7024 = !DILocalVariable(name: "edx", arg: 5, scope: !7013, file: !2809, line: 617, type: !3350)
!7025 = !DILocation(line: 617, column: 38, scope: !7013)
!7026 = !DILocation(line: 619, column: 9, scope: !7013)
!7027 = !DILocation(line: 619, column: 3, scope: !7013)
!7028 = !DILocation(line: 619, column: 7, scope: !7013)
!7029 = !DILocation(line: 620, column: 3, scope: !7013)
!7030 = !DILocation(line: 620, column: 7, scope: !7013)
!7031 = !DILocation(line: 621, column: 10, scope: !7013)
!7032 = !DILocation(line: 621, column: 15, scope: !7013)
!7033 = !DILocation(line: 621, column: 20, scope: !7013)
!7034 = !DILocation(line: 621, column: 25, scope: !7013)
!7035 = !DILocation(line: 621, column: 2, scope: !7013)
!7036 = !DILocation(line: 622, column: 1, scope: !7013)
!7037 = distinct !DISubprogram(name: "__cpuid", scope: !7038, file: !7038, line: 94, type: !7039, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!7038 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!7039 = !DISubroutineType(types: !7040)
!7040 = !{null, !3350, !3350, !3350, !3350}
!7041 = !DILocalVariable(name: "eax", arg: 1, scope: !7037, file: !7038, line: 94, type: !3350)
!7042 = !DILocation(line: 94, column: 42, scope: !7037)
!7043 = !DILocalVariable(name: "ebx", arg: 2, scope: !7037, file: !7038, line: 94, type: !3350)
!7044 = !DILocation(line: 94, column: 61, scope: !7037)
!7045 = !DILocalVariable(name: "ecx", arg: 3, scope: !7037, file: !7038, line: 95, type: !3350)
!7046 = !DILocation(line: 95, column: 21, scope: !7037)
!7047 = !DILocalVariable(name: "edx", arg: 4, scope: !7037, file: !7038, line: 95, type: !3350)
!7048 = !DILocation(line: 95, column: 40, scope: !7037)
!7049 = !DILocalVariable(name: "__edi", scope: !7050, file: !7038, line: 97, type: !326)
!7050 = distinct !DILexicalBlock(scope: !7037, file: !7038, line: 97, column: 2)
!7051 = !DILocation(line: 97, column: 2, scope: !7050)
!7052 = !DILocalVariable(name: "__esi", scope: !7050, file: !7038, line: 97, type: !326)
!7053 = !DILocalVariable(name: "__edx", scope: !7050, file: !7038, line: 97, type: !326)
!7054 = !DILocalVariable(name: "__ecx", scope: !7050, file: !7038, line: 97, type: !326)
!7055 = !DILocalVariable(name: "__eax", scope: !7050, file: !7038, line: 97, type: !326)
!7056 = !{i32 -2145974979, i32 -2145973999, i32 -2145973765, i32 -2145973714, i32 -2145973686, i32 -2145973661, i32 -2145973977, i32 -2145973964, i32 -2145973526, i32 -2145973407, i32 -2145973872, i32 -2145973845, i32 -2145973817, i32 -2145973787}
!7057 = !DILocation(line: 98, column: 1, scope: !7037)
!7058 = distinct !DISubprogram(name: "sev_key_active", scope: !6945, file: !6945, line: 270, type: !3639, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!7059 = !DILocation(line: 270, column: 43, scope: !7058)
!7060 = distinct !DISubprogram(name: "outb", scope: !6945, file: !6945, line: 334, type: !7061, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!7061 = !DISubroutineType(types: !7062)
!7062 = !{null, !429, !207}
!7063 = !DILocalVariable(name: "value", arg: 1, scope: !7060, file: !6945, line: 334, type: !429)
!7064 = !DILocation(line: 334, column: 1, scope: !7060)
!7065 = !DILocalVariable(name: "port", arg: 2, scope: !7060, file: !6945, line: 334, type: !207)
!7066 = !{i32 -2144677305}
