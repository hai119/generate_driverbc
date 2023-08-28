; ModuleID = '../bcout/drivers/tty/vt/vc_screen.llvm.bc'
source_filename = "drivers/tty/vt/vc_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
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
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
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
%struct.vm_struct = type opaque
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.kmem_cache = type opaque
%struct.vcs_poll_data = type { %struct.notifier_block, i32, i32, %struct.wait_queue_head, %struct.fasync_struct* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.vt_notifier_param = type { %struct.vc_data*, i32 }

@vc_class = internal global %struct.class* null, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"vcs%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vcsu%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vcsa%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vcs\00", align 1
@vcs_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @vcs_lseek, i64 (%struct.file*, i8*, i64, i64*)* @vcs_read, i64 (%struct.file*, i8*, i64, i64*)* @vcs_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @vcs_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @vcs_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @vcs_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @vcs_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4046
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to get major %d for vcs device\00", align 1
@vcs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4041
@.str.5 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vcsu\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vcsa\00", align 1
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"drivers/tty/vt/vc_screen.c\00", align 1
@fg_console = external dso_local global i32, align 4
@vc_cons = external dso_local global [63 x %struct.vc], align 16
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@vcs_poll_data_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4048
@.str.11 = private unnamed_addr constant [13 x i8] c"&poll->waitq\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vcs_make_sysfs(i32 %index) #0 !dbg !4058 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  %0 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4061
  %1 = load i32, i32* %index.addr, align 4, !dbg !4062
  %add = add i32 %1, 1, !dbg !4062
  %or = or i32 7340032, %add, !dbg !4062
  %2 = load i32, i32* %index.addr, align 4, !dbg !4063
  %add1 = add i32 %2, 1, !dbg !4064
  %call = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %0, %struct.device* null, i32 %or, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %add1) #8, !dbg !4065
  %3 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4066
  %4 = load i32, i32* %index.addr, align 4, !dbg !4067
  %add2 = add i32 %4, 65, !dbg !4067
  %or3 = or i32 7340032, %add2, !dbg !4067
  %5 = load i32, i32* %index.addr, align 4, !dbg !4068
  %add4 = add i32 %5, 1, !dbg !4069
  %call5 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %3, %struct.device* null, i32 %or3, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %add4) #8, !dbg !4070
  %6 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4071
  %7 = load i32, i32* %index.addr, align 4, !dbg !4072
  %add6 = add i32 %7, 129, !dbg !4072
  %or7 = or i32 7340032, %add6, !dbg !4072
  %8 = load i32, i32* %index.addr, align 4, !dbg !4073
  %add8 = add i32 %8, 1, !dbg !4074
  %call9 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %6, %struct.device* null, i32 %or7, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %add8) #8, !dbg !4075
  ret void, !dbg !4076
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create(%struct.class*, %struct.device*, i32, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vcs_remove_sysfs(i32 %index) #0 !dbg !4077 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4078, metadata !DIExpression()), !dbg !4079
  %0 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4080
  %1 = load i32, i32* %index.addr, align 4, !dbg !4081
  %add = add i32 %1, 1, !dbg !4081
  %or = or i32 7340032, %add, !dbg !4081
  call void @device_destroy(%struct.class* %0, i32 %or) #8, !dbg !4082
  %2 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4083
  %3 = load i32, i32* %index.addr, align 4, !dbg !4084
  %add1 = add i32 %3, 65, !dbg !4084
  %or2 = or i32 7340032, %add1, !dbg !4084
  call void @device_destroy(%struct.class* %2, i32 %or2) #8, !dbg !4085
  %4 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4086
  %5 = load i32, i32* %index.addr, align 4, !dbg !4087
  %add3 = add i32 %5, 129, !dbg !4087
  %or4 = or i32 7340032, %add3, !dbg !4087
  call void @device_destroy(%struct.class* %4, i32 %or4) #8, !dbg !4088
  ret void, !dbg !4089
}

; Function Attrs: noredzone
declare dso_local void @device_destroy(%struct.class*, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vcs_init() #3 section ".init.text" !dbg !4043 {
entry:
  %i = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4090, metadata !DIExpression()), !dbg !4091
  %call = call i32 @register_chrdev(i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.file_operations* @vcs_fops) #8, !dbg !4092
  %tobool = icmp ne i32 %call, 0, !dbg !4092
  br i1 %tobool, label %if.then, label %if.end, !dbg !4094

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 7) #9, !dbg !4095
  unreachable, !dbg !4095

if.end:                                           ; preds = %entry
  %call1 = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @vcs_init.__key) #8, !dbg !4096
  store %struct.class* %call1, %struct.class** %tmp, align 8, !dbg !4096
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !4096
  store %struct.class* %0, %struct.class** @vc_class, align 8, !dbg !4098
  %1 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4099
  %call2 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %1, %struct.device* null, i32 7340032, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4100
  %2 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4101
  %call3 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %2, %struct.device* null, i32 7340096, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !4102
  %3 = load %struct.class*, %struct.class** @vc_class, align 8, !dbg !4103
  %call4 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %3, %struct.device* null, i32 7340160, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4104
  store i32 0, i32* %i, align 4, !dbg !4105
  br label %for.cond, !dbg !4107

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !4108
  %cmp = icmp ult i32 %4, 1, !dbg !4110
  br i1 %cmp, label %for.body, label %for.end, !dbg !4111

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !4112
  call void @vcs_make_sysfs(i32 %5) #8, !dbg !4113
  br label %for.inc, !dbg !4113

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4114
  %inc = add i32 %6, 1, !dbg !4114
  store i32 %inc, i32* %i, align 4, !dbg !4114
  br label %for.cond, !dbg !4115, !llvm.loop !4116

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !4118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @register_chrdev(i32 %major, i8* %name, %struct.file_operations* %fops) #0 !dbg !4119 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %fops.addr = alloca %struct.file_operations*, align 8
  store i32 %major, i32* %major.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %major.addr, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4124, metadata !DIExpression()), !dbg !4125
  store %struct.file_operations* %fops, %struct.file_operations** %fops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file_operations** %fops.addr, metadata !4126, metadata !DIExpression()), !dbg !4127
  %0 = load i32, i32* %major.addr, align 4, !dbg !4128
  %1 = load i8*, i8** %name.addr, align 8, !dbg !4129
  %2 = load %struct.file_operations*, %struct.file_operations** %fops.addr, align 8, !dbg !4130
  %call = call i32 @__register_chrdev(i32 %0, i32 0, i32 256, i8* %1, %struct.file_operations* %2) #8, !dbg !4131
  ret i32 %call, !dbg !4132
}

; Function Attrs: cold noredzone noreturn
declare dso_local void @panic(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @__register_chrdev(i32, i32, i32, i8*, %struct.file_operations*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vcs_lseek(%struct.file* %file, i64 %offset, i32 %orig) #0 !dbg !4133 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %offset.addr = alloca i64, align 8
  %orig.addr = alloca i32, align 4
  %inode = alloca %struct.inode*, align 8
  %vc = alloca %struct.vc_data*, align 8
  %size = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  store i32 %orig, i32* %orig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %orig.addr, metadata !4138, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.declare(metadata %struct.inode** %inode, metadata !4140, metadata !DIExpression()), !dbg !4141
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4142
  %call = call %struct.inode* @file_inode(%struct.file* %0) #8, !dbg !4143
  store %struct.inode* %call, %struct.inode** %inode, align 8, !dbg !4141
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc, metadata !4144, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @console_lock() #8, !dbg !4344
  %1 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4345
  %call1 = call %struct.vc_data* @vcs_vc(%struct.inode* %1, i8* null) #8, !dbg !4346
  store %struct.vc_data* %call1, %struct.vc_data** %vc, align 8, !dbg !4347
  %2 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4348
  %tobool = icmp ne %struct.vc_data* %2, null, !dbg !4348
  br i1 %tobool, label %if.end, label %if.then, !dbg !4350

if.then:                                          ; preds = %entry
  call void @console_unlock() #8, !dbg !4351
  store i64 -6, i64* %retval, align 8, !dbg !4353
  br label %return, !dbg !4353

if.end:                                           ; preds = %entry
  %3 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4354
  %4 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4355
  %call2 = call i32 @iminor(%struct.inode* %4) #8, !dbg !4355
  %and = and i32 %call2, 128, !dbg !4355
  %tobool3 = icmp ne i32 %and, 0, !dbg !4355
  %5 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4356
  %call4 = call i32 @iminor(%struct.inode* %5) #8, !dbg !4356
  %and5 = and i32 %call4, 64, !dbg !4356
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4356
  %call7 = call i32 @vcs_size(%struct.vc_data* %3, i1 zeroext %tobool3, i1 zeroext %tobool6) #8, !dbg !4357
  store i32 %call7, i32* %size, align 4, !dbg !4358
  call void @console_unlock() #8, !dbg !4359
  %6 = load i32, i32* %size, align 4, !dbg !4360
  %cmp = icmp slt i32 %6, 0, !dbg !4362
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4363

if.then8:                                         ; preds = %if.end
  %7 = load i32, i32* %size, align 4, !dbg !4364
  %conv = sext i32 %7 to i64, !dbg !4364
  store i64 %conv, i64* %retval, align 8, !dbg !4365
  br label %return, !dbg !4365

if.end9:                                          ; preds = %if.end
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4366
  %9 = load i64, i64* %offset.addr, align 8, !dbg !4367
  %10 = load i32, i32* %orig.addr, align 4, !dbg !4368
  %11 = load i32, i32* %size, align 4, !dbg !4369
  %conv10 = sext i32 %11 to i64, !dbg !4369
  %call11 = call i64 @fixed_size_llseek(%struct.file* %8, i64 %9, i32 %10, i64 %conv10) #8, !dbg !4370
  store i64 %call11, i64* %retval, align 8, !dbg !4371
  br label %return, !dbg !4371

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !4372
  ret i64 %12, !dbg !4372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vcs_read(%struct.file* %file, i8* %buf, i64 %count, i64* %ppos) #0 !dbg !4373 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4374, metadata !DIExpression()), !dbg !4379
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4388, metadata !DIExpression()), !dbg !4389
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4390, metadata !DIExpression()), !dbg !4391
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4392, metadata !DIExpression()), !dbg !4393
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4394, metadata !DIExpression()), !dbg !4397
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4398, metadata !DIExpression()), !dbg !4399
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4400, metadata !DIExpression()), !dbg !4401
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4402, metadata !DIExpression()), !dbg !4403
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %inode = alloca %struct.inode*, align 8
  %vc = alloca %struct.vc_data*, align 8
  %poll = alloca %struct.vcs_poll_data*, align 8
  %read = alloca i32, align 4
  %ret = alloca i64, align 8
  %con_buf = alloca i8*, align 8
  %pos = alloca i64, align 8
  %viewed = alloca i8, align 1
  %attr = alloca i8, align 1
  %uni_mode = alloca i8, align 1
  %this_round = alloca i32, align 4
  %skip = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata %struct.inode** %inode, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4414
  %call = call %struct.inode* @file_inode(%struct.file* %0) #8, !dbg !4415
  store %struct.inode* %call, %struct.inode** %inode, align 8, !dbg !4413
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !4418, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.declare(metadata i32* %read, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata i8** %con_buf, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !4426, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata i8* %viewed, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.declare(metadata i8* %uni_mode, metadata !4432, metadata !DIExpression()), !dbg !4433
  %call1 = call i64 @__get_free_pages(i32 3264, i32 0) #8, !dbg !4434
  %1 = inttoptr i64 %call1 to i8*, !dbg !4435
  store i8* %1, i8** %con_buf, align 8, !dbg !4436
  %2 = load i8*, i8** %con_buf, align 8, !dbg !4437
  %tobool = icmp ne i8* %2, null, !dbg !4437
  br i1 %tobool, label %if.end, label %if.then, !dbg !4439

if.then:                                          ; preds = %entry
  store i64 -12, i64* %retval, align 8, !dbg !4440
  br label %return, !dbg !4440

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %ppos.addr, align 8, !dbg !4441
  %4 = load i64, i64* %3, align 8, !dbg !4442
  store i64 %4, i64* %pos, align 8, !dbg !4443
  call void @console_lock() #8, !dbg !4444
  %5 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4445
  %call2 = call i32 @iminor(%struct.inode* %5) #8, !dbg !4445
  %and = and i32 %call2, 64, !dbg !4445
  %tobool3 = icmp ne i32 %and, 0, !dbg !4445
  %frombool = zext i1 %tobool3 to i8, !dbg !4446
  store i8 %frombool, i8* %uni_mode, align 1, !dbg !4446
  %6 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4447
  %call4 = call i32 @iminor(%struct.inode* %6) #8, !dbg !4447
  %and5 = and i32 %call4, 128, !dbg !4447
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4447
  %frombool7 = zext i1 %tobool6 to i8, !dbg !4448
  store i8 %frombool7, i8* %attr, align 1, !dbg !4448
  store i64 -6, i64* %ret, align 8, !dbg !4449
  %7 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4450
  %call8 = call %struct.vc_data* @vcs_vc(%struct.inode* %7, i8* %viewed) #8, !dbg !4451
  store %struct.vc_data* %call8, %struct.vc_data** %vc, align 8, !dbg !4452
  %8 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4453
  %tobool9 = icmp ne %struct.vc_data* %8, null, !dbg !4453
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4455

if.then10:                                        ; preds = %if.end
  br label %unlock_out, !dbg !4456

if.end11:                                         ; preds = %if.end
  store i64 -22, i64* %ret, align 8, !dbg !4457
  %9 = load i64, i64* %pos, align 8, !dbg !4458
  %cmp = icmp slt i64 %9, 0, !dbg !4460
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !4461

if.then12:                                        ; preds = %if.end11
  br label %unlock_out, !dbg !4462

if.end13:                                         ; preds = %if.end11
  %10 = load i8, i8* %uni_mode, align 1, !dbg !4463
  %tobool14 = trunc i8 %10 to i1, !dbg !4463
  br i1 %tobool14, label %land.lhs.true, label %if.end18, !dbg !4465

land.lhs.true:                                    ; preds = %if.end13
  %11 = load i64, i64* %pos, align 8, !dbg !4466
  %12 = load i64, i64* %count.addr, align 8, !dbg !4467
  %or = or i64 %11, %12, !dbg !4468
  %and15 = and i64 %or, 3, !dbg !4469
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4469
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4470

if.then17:                                        ; preds = %land.lhs.true
  br label %unlock_out, !dbg !4471

if.end18:                                         ; preds = %land.lhs.true, %if.end13
  %13 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4472
  %private_data = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 15, !dbg !4473
  %14 = load i8*, i8** %private_data, align 8, !dbg !4473
  %15 = bitcast i8* %14 to %struct.vcs_poll_data*, !dbg !4472
  store %struct.vcs_poll_data* %15, %struct.vcs_poll_data** %poll, align 8, !dbg !4474
  %16 = load i64, i64* %count.addr, align 8, !dbg !4475
  %tobool19 = icmp ne i64 %16, 0, !dbg !4475
  br i1 %tobool19, label %land.lhs.true20, label %if.end23, !dbg !4477

land.lhs.true20:                                  ; preds = %if.end18
  %17 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !4478
  %tobool21 = icmp ne %struct.vcs_poll_data* %17, null, !dbg !4478
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4479

if.then22:                                        ; preds = %land.lhs.true20
  %18 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !4480
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %18, i32 0, i32 2, !dbg !4481
  store i32 0, i32* %event, align 4, !dbg !4482
  br label %if.end23, !dbg !4480

if.end23:                                         ; preds = %if.then22, %land.lhs.true20, %if.end18
  store i32 0, i32* %read, align 4, !dbg !4483
  store i64 0, i64* %ret, align 8, !dbg !4484
  br label %while.cond, !dbg !4485

while.cond:                                       ; preds = %if.end79, %if.end23
  %19 = load i64, i64* %count.addr, align 8, !dbg !4486
  %tobool24 = icmp ne i64 %19, 0, !dbg !4485
  br i1 %tobool24, label %while.body, label %while.end, !dbg !4485

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %this_round, metadata !4487, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.declare(metadata i32* %skip, metadata !4489, metadata !DIExpression()), !dbg !4490
  store i32 0, i32* %skip, align 4, !dbg !4490
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4491, metadata !DIExpression()), !dbg !4492
  %20 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4493
  %21 = load i8, i8* %attr, align 1, !dbg !4494
  %tobool25 = trunc i8 %21 to i1, !dbg !4494
  %22 = load i8, i8* %uni_mode, align 1, !dbg !4495
  %tobool26 = trunc i8 %22 to i1, !dbg !4495
  %call27 = call i32 @vcs_size(%struct.vc_data* %20, i1 zeroext %tobool25, i1 zeroext %tobool26) #8, !dbg !4496
  store i32 %call27, i32* %size, align 4, !dbg !4497
  %23 = load i32, i32* %size, align 4, !dbg !4498
  %cmp28 = icmp slt i32 %23, 0, !dbg !4500
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !4501

if.then29:                                        ; preds = %while.body
  %24 = load i32, i32* %read, align 4, !dbg !4502
  %tobool30 = icmp ne i32 %24, 0, !dbg !4502
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4505

if.then31:                                        ; preds = %if.then29
  br label %while.end, !dbg !4506

if.end32:                                         ; preds = %if.then29
  %25 = load i32, i32* %size, align 4, !dbg !4507
  %conv = sext i32 %25 to i64, !dbg !4507
  store i64 %conv, i64* %ret, align 8, !dbg !4508
  br label %unlock_out, !dbg !4509

if.end33:                                         ; preds = %while.body
  %26 = load i64, i64* %pos, align 8, !dbg !4510
  %27 = load i32, i32* %size, align 4, !dbg !4512
  %conv34 = sext i32 %27 to i64, !dbg !4512
  %cmp35 = icmp sge i64 %26, %conv34, !dbg !4513
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !4514

if.then37:                                        ; preds = %if.end33
  br label %while.end, !dbg !4515

if.end38:                                         ; preds = %if.end33
  %28 = load i64, i64* %count.addr, align 8, !dbg !4516
  %29 = load i32, i32* %size, align 4, !dbg !4518
  %conv39 = sext i32 %29 to i64, !dbg !4518
  %30 = load i64, i64* %pos, align 8, !dbg !4519
  %sub = sub i64 %conv39, %30, !dbg !4520
  %cmp40 = icmp ugt i64 %28, %sub, !dbg !4521
  br i1 %cmp40, label %if.then42, label %if.end45, !dbg !4522

if.then42:                                        ; preds = %if.end38
  %31 = load i32, i32* %size, align 4, !dbg !4523
  %conv43 = sext i32 %31 to i64, !dbg !4523
  %32 = load i64, i64* %pos, align 8, !dbg !4524
  %sub44 = sub i64 %conv43, %32, !dbg !4525
  store i64 %sub44, i64* %count.addr, align 8, !dbg !4526
  br label %if.end45, !dbg !4527

if.end45:                                         ; preds = %if.then42, %if.end38
  %33 = load i64, i64* %count.addr, align 8, !dbg !4528
  %conv46 = trunc i64 %33 to i32, !dbg !4528
  store i32 %conv46, i32* %this_round, align 4, !dbg !4529
  %34 = load i32, i32* %this_round, align 4, !dbg !4530
  %conv47 = zext i32 %34 to i64, !dbg !4530
  %cmp48 = icmp ugt i64 %conv47, 4096, !dbg !4532
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4533

if.then50:                                        ; preds = %if.end45
  store i32 4096, i32* %this_round, align 4, !dbg !4534
  br label %if.end51, !dbg !4535

if.end51:                                         ; preds = %if.then50, %if.end45
  %35 = load i8, i8* %uni_mode, align 1, !dbg !4536
  %tobool52 = trunc i8 %35 to i1, !dbg !4536
  br i1 %tobool52, label %if.then53, label %if.else, !dbg !4538

if.then53:                                        ; preds = %if.end51
  %36 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4539
  %37 = load i8*, i8** %con_buf, align 8, !dbg !4541
  %38 = load i64, i64* %pos, align 8, !dbg !4542
  %conv54 = trunc i64 %38 to i32, !dbg !4542
  %39 = load i32, i32* %this_round, align 4, !dbg !4543
  %40 = load i8, i8* %viewed, align 1, !dbg !4544
  %tobool55 = trunc i8 %40 to i1, !dbg !4544
  %call56 = call i32 @vcs_read_buf_uni(%struct.vc_data* %36, i8* %37, i32 %conv54, i32 %39, i1 zeroext %tobool55) #8, !dbg !4545
  %conv57 = sext i32 %call56 to i64, !dbg !4545
  store i64 %conv57, i64* %ret, align 8, !dbg !4546
  %41 = load i64, i64* %ret, align 8, !dbg !4547
  %tobool58 = icmp ne i64 %41, 0, !dbg !4547
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4549

if.then59:                                        ; preds = %if.then53
  br label %while.end, !dbg !4550

if.end60:                                         ; preds = %if.then53
  br label %if.end70, !dbg !4551

if.else:                                          ; preds = %if.end51
  %42 = load i8, i8* %attr, align 1, !dbg !4552
  %tobool61 = trunc i8 %42 to i1, !dbg !4552
  br i1 %tobool61, label %if.else65, label %if.then62, !dbg !4554

if.then62:                                        ; preds = %if.else
  %43 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4555
  %44 = load i8*, i8** %con_buf, align 8, !dbg !4557
  %45 = load i64, i64* %pos, align 8, !dbg !4558
  %conv63 = trunc i64 %45 to i32, !dbg !4558
  %46 = load i32, i32* %this_round, align 4, !dbg !4559
  %47 = load i8, i8* %viewed, align 1, !dbg !4560
  %tobool64 = trunc i8 %47 to i1, !dbg !4560
  call void @vcs_read_buf_noattr(%struct.vc_data* %43, i8* %44, i32 %conv63, i32 %46, i1 zeroext %tobool64) #8, !dbg !4561
  br label %if.end69, !dbg !4562

if.else65:                                        ; preds = %if.else
  %48 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4563
  %49 = load i8*, i8** %con_buf, align 8, !dbg !4565
  %50 = load i64, i64* %pos, align 8, !dbg !4566
  %conv66 = trunc i64 %50 to i32, !dbg !4566
  %51 = load i32, i32* %this_round, align 4, !dbg !4567
  %52 = load i8, i8* %viewed, align 1, !dbg !4568
  %tobool67 = trunc i8 %52 to i1, !dbg !4568
  %call68 = call i32 @vcs_read_buf(%struct.vc_data* %48, i8* %49, i32 %conv66, i32 %51, i1 zeroext %tobool67, i32* %skip) #8, !dbg !4569
  store i32 %call68, i32* %this_round, align 4, !dbg !4570
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %if.then62
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end60
  call void @console_unlock() #8, !dbg !4571
  %53 = load i8*, i8** %buf.addr, align 8, !dbg !4572
  %54 = load i8*, i8** %con_buf, align 8, !dbg !4573
  %55 = load i32, i32* %skip, align 4, !dbg !4574
  %idx.ext = zext i32 %55 to i64, !dbg !4575
  %add.ptr = getelementptr i8, i8* %54, i64 %idx.ext, !dbg !4575
  %56 = load i32, i32* %this_round, align 4, !dbg !4576
  %conv71 = zext i32 %56 to i64, !dbg !4576
  store i8* %53, i8** %to.addr.i, align 8
  store i8* %add.ptr, i8** %from.addr.i, align 8
  store i64 %conv71, i64* %n.addr.i, align 8
  %57 = load i8*, i8** %from.addr.i, align 8, !dbg !4577
  %58 = load i64, i64* %n.addr.i, align 8, !dbg !4577
  store i8* %57, i8** %addr.addr.i.i, align 8
  store i64 %58, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4393
  %59 = load i32, i32* %sz.i.i, align 4, !dbg !4578
  %cmp.i.i = icmp sge i32 %59, 0, !dbg !4578
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4578

land.rhs.i.i:                                     ; preds = %if.end70
  %60 = load i32, i32* %sz.i.i, align 4, !dbg !4578
  %conv.i.i = sext i32 %60 to i64, !dbg !4578
  %61 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4578
  %cmp1.i.i = icmp ult i64 %conv.i.i, %61, !dbg !4578
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end70
  %62 = phi i1 [ false, %if.end70 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4580
  %lnot.i.i = xor i1 %62, true, !dbg !4578
  %lnot.ext.i.i = zext i1 %62 to i32, !dbg !4578
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4578
  br i1 %62, label %if.then.i.i, label %if.end10.i.i, !dbg !4581

if.then.i.i:                                      ; preds = %land.end.i.i
  %63 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4582
  %64 = call i1 @llvm.is.constant.i64(i64 %63) #10, !dbg !4585
  br i1 %64, label %if.else.i.i, label %if.then5.i.i, !dbg !4586

if.then5.i.i:                                     ; preds = %if.then.i.i
  %65 = load i32, i32* %sz.i.i, align 4, !dbg !4587
  %66 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4588
  call void @copy_overflow(i32 %65, i64 %66) #11, !dbg !4589
  br label %if.end9.i.i, !dbg !4589

if.else.i.i:                                      ; preds = %if.then.i.i
  %67 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4590
  %tobool6.i.i = trunc i8 %67 to i1, !dbg !4590
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4592

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #11, !dbg !4593
  br label %if.end.i.i, !dbg !4593

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #11, !dbg !4594
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4595
  br label %check_copy_size.exit.i, !dbg !4595

if.end10.i.i:                                     ; preds = %land.end.i.i
  %68 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4397
  %cmp11.i.i = icmp ugt i64 %68, 2147483647, !dbg !4397
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4397
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4397
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4397
  %69 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4596
  %tobool17.i.i = icmp ne i32 %69, 0, !dbg !4596
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4596
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4596
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4596
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4397

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4598, !srcloc !4601
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4602, !srcloc !4604
  br label %if.end31.i.i, !dbg !4605

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %70 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4397
  %tobool32.i.i = icmp ne i32 %70, 0, !dbg !4397
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4397
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4397
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4397
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4596
  %71 = load i64, i64* %tmp.i.i, align 8, !dbg !4397
  %tobool38.i.i = icmp ne i64 %71, 0, !dbg !4606
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4607

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4608
  br label %check_copy_size.exit.i, !dbg !4608

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %72 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4609
  %73 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4610
  %74 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4611
  %tobool41.i.i = trunc i8 %74 to i1, !dbg !4611
  call void @check_object_size(i8* %72, i64 %73, i1 zeroext %tobool41.i.i) #11, !dbg !4612
  store i1 true, i1* %retval.i.i, align 1, !dbg !4613
  br label %check_copy_size.exit.i, !dbg !4613

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %75 = load i1, i1* %retval.i.i, align 1, !dbg !4614
  %lnot.i = xor i1 %75, true, !dbg !4577
  %lnot.ext.i = zext i1 %75 to i32, !dbg !4577
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4577
  br i1 %75, label %if.then.i, label %copy_to_user.exit, !dbg !4615

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %76 = load i8*, i8** %to.addr.i, align 8, !dbg !4616
  %77 = load i8*, i8** %from.addr.i, align 8, !dbg !4617
  %78 = load i64, i64* %n.addr.i, align 8, !dbg !4618
  %call2.i = call i64 @_copy_to_user(i8* %76, i8* %77, i64 %78) #11, !dbg !4619
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4620
  br label %copy_to_user.exit, !dbg !4621

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %79 = load i64, i64* %n.addr.i, align 8, !dbg !4622
  store i64 %79, i64* %ret, align 8, !dbg !4623
  call void @console_lock() #8, !dbg !4624
  %80 = load i64, i64* %ret, align 8, !dbg !4625
  %tobool73 = icmp ne i64 %80, 0, !dbg !4625
  br i1 %tobool73, label %if.then74, label %if.end79, !dbg !4627

if.then74:                                        ; preds = %copy_to_user.exit
  %81 = load i32, i32* %this_round, align 4, !dbg !4628
  %conv75 = zext i32 %81 to i64, !dbg !4628
  %82 = load i64, i64* %ret, align 8, !dbg !4630
  %sub76 = sub i64 %conv75, %82, !dbg !4631
  %83 = load i32, i32* %read, align 4, !dbg !4632
  %conv77 = zext i32 %83 to i64, !dbg !4632
  %add = add i64 %conv77, %sub76, !dbg !4632
  %conv78 = trunc i64 %add to i32, !dbg !4632
  store i32 %conv78, i32* %read, align 4, !dbg !4632
  store i64 -14, i64* %ret, align 8, !dbg !4633
  br label %while.end, !dbg !4634

if.end79:                                         ; preds = %copy_to_user.exit
  %84 = load i32, i32* %this_round, align 4, !dbg !4635
  %85 = load i8*, i8** %buf.addr, align 8, !dbg !4636
  %idx.ext80 = zext i32 %84 to i64, !dbg !4636
  %add.ptr81 = getelementptr i8, i8* %85, i64 %idx.ext80, !dbg !4636
  store i8* %add.ptr81, i8** %buf.addr, align 8, !dbg !4636
  %86 = load i32, i32* %this_round, align 4, !dbg !4637
  %conv82 = zext i32 %86 to i64, !dbg !4637
  %87 = load i64, i64* %pos, align 8, !dbg !4638
  %add83 = add i64 %87, %conv82, !dbg !4638
  store i64 %add83, i64* %pos, align 8, !dbg !4638
  %88 = load i32, i32* %this_round, align 4, !dbg !4639
  %89 = load i32, i32* %read, align 4, !dbg !4640
  %add84 = add i32 %89, %88, !dbg !4640
  store i32 %add84, i32* %read, align 4, !dbg !4640
  %90 = load i32, i32* %this_round, align 4, !dbg !4641
  %conv85 = zext i32 %90 to i64, !dbg !4641
  %91 = load i64, i64* %count.addr, align 8, !dbg !4642
  %sub86 = sub i64 %91, %conv85, !dbg !4642
  store i64 %sub86, i64* %count.addr, align 8, !dbg !4642
  br label %while.cond, !dbg !4485, !llvm.loop !4643

while.end:                                        ; preds = %if.then74, %if.then59, %if.then37, %if.then31, %while.cond
  %92 = load i32, i32* %read, align 4, !dbg !4645
  %conv87 = zext i32 %92 to i64, !dbg !4645
  %93 = load i64*, i64** %ppos.addr, align 8, !dbg !4646
  %94 = load i64, i64* %93, align 8, !dbg !4647
  %add88 = add i64 %94, %conv87, !dbg !4647
  store i64 %add88, i64* %93, align 8, !dbg !4647
  %95 = load i32, i32* %read, align 4, !dbg !4648
  %tobool89 = icmp ne i32 %95, 0, !dbg !4648
  br i1 %tobool89, label %if.then90, label %if.end92, !dbg !4650

if.then90:                                        ; preds = %while.end
  %96 = load i32, i32* %read, align 4, !dbg !4651
  %conv91 = zext i32 %96 to i64, !dbg !4651
  store i64 %conv91, i64* %ret, align 8, !dbg !4652
  br label %if.end92, !dbg !4653

if.end92:                                         ; preds = %if.then90, %while.end
  br label %unlock_out, !dbg !4648

unlock_out:                                       ; preds = %if.end92, %if.end32, %if.then17, %if.then12, %if.then10
  call void @llvm.dbg.label(metadata !4654), !dbg !4655
  call void @console_unlock() #8, !dbg !4656
  %97 = load i8*, i8** %con_buf, align 8, !dbg !4657
  %98 = ptrtoint i8* %97 to i64, !dbg !4657
  call void @free_pages(i64 %98, i32 0) #8, !dbg !4657
  %99 = load i64, i64* %ret, align 8, !dbg !4658
  store i64 %99, i64* %retval, align 8, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %unlock_out, %if.then
  %100 = load i64, i64* %retval, align 8, !dbg !4660
  ret i64 %100, !dbg !4660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vcs_write(%struct.file* %file, i8* %buf, i64 %count, i64* %ppos) #0 !dbg !4661 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4374, metadata !DIExpression()), !dbg !4662
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4388, metadata !DIExpression()), !dbg !4668
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4390, metadata !DIExpression()), !dbg !4669
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4392, metadata !DIExpression()), !dbg !4670
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4394, metadata !DIExpression()), !dbg !4671
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4672, metadata !DIExpression()), !dbg !4673
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4674, metadata !DIExpression()), !dbg !4675
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4676, metadata !DIExpression()), !dbg !4677
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %inode = alloca %struct.inode*, align 8
  %vc = alloca %struct.vc_data*, align 8
  %con_buf = alloca i8*, align 8
  %org0 = alloca i16*, align 8
  %org = alloca i16*, align 8
  %written = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i64, align 8
  %pos = alloca i64, align 8
  %viewed = alloca i8, align 1
  %attr = alloca i8, align 1
  %this_round = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata %struct.inode** %inode, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4688
  %call = call %struct.inode* @file_inode(%struct.file* %0) #8, !dbg !4689
  store %struct.inode* %call, %struct.inode** %inode, align 8, !dbg !4687
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata i8** %con_buf, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.declare(metadata i16** %org0, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.declare(metadata i16** %org, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %written, metadata !4698, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !4704, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.declare(metadata i8* %viewed, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !4708, metadata !DIExpression()), !dbg !4709
  %1 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4710
  %call1 = call i32 @iminor(%struct.inode* %1) #8, !dbg !4710
  %and = and i32 %call1, 64, !dbg !4710
  %tobool = icmp ne i32 %and, 0, !dbg !4710
  br i1 %tobool, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %entry
  store i64 -95, i64* %retval, align 8, !dbg !4713
  br label %return, !dbg !4713

if.end:                                           ; preds = %entry
  %call2 = call i64 @__get_free_pages(i32 3264, i32 0) #8, !dbg !4714
  %2 = inttoptr i64 %call2 to i8*, !dbg !4715
  store i8* %2, i8** %con_buf, align 8, !dbg !4716
  %3 = load i8*, i8** %con_buf, align 8, !dbg !4717
  %tobool3 = icmp ne i8* %3, null, !dbg !4717
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4719

if.then4:                                         ; preds = %if.end
  store i64 -12, i64* %retval, align 8, !dbg !4720
  br label %return, !dbg !4720

if.end5:                                          ; preds = %if.end
  %4 = load i64*, i64** %ppos.addr, align 8, !dbg !4721
  %5 = load i64, i64* %4, align 8, !dbg !4722
  store i64 %5, i64* %pos, align 8, !dbg !4723
  call void @console_lock() #8, !dbg !4724
  %6 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4725
  %call6 = call i32 @iminor(%struct.inode* %6) #8, !dbg !4725
  %and7 = and i32 %call6, 128, !dbg !4725
  %tobool8 = icmp ne i32 %and7, 0, !dbg !4725
  %frombool = zext i1 %tobool8 to i8, !dbg !4726
  store i8 %frombool, i8* %attr, align 1, !dbg !4726
  store i64 -6, i64* %ret, align 8, !dbg !4727
  %7 = load %struct.inode*, %struct.inode** %inode, align 8, !dbg !4728
  %call9 = call %struct.vc_data* @vcs_vc(%struct.inode* %7, i8* %viewed) #8, !dbg !4729
  store %struct.vc_data* %call9, %struct.vc_data** %vc, align 8, !dbg !4730
  %8 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4731
  %tobool10 = icmp ne %struct.vc_data* %8, null, !dbg !4731
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4733

if.then11:                                        ; preds = %if.end5
  br label %unlock_out, !dbg !4734

if.end12:                                         ; preds = %if.end5
  %9 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4735
  %10 = load i8, i8* %attr, align 1, !dbg !4736
  %tobool13 = trunc i8 %10 to i1, !dbg !4736
  %call14 = call i32 @vcs_size(%struct.vc_data* %9, i1 zeroext %tobool13, i1 zeroext false) #8, !dbg !4737
  store i32 %call14, i32* %size, align 4, !dbg !4738
  %11 = load i32, i32* %size, align 4, !dbg !4739
  %cmp = icmp slt i32 %11, 0, !dbg !4741
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !4742

if.then15:                                        ; preds = %if.end12
  %12 = load i32, i32* %size, align 4, !dbg !4743
  %conv = sext i32 %12 to i64, !dbg !4743
  store i64 %conv, i64* %ret, align 8, !dbg !4745
  br label %unlock_out, !dbg !4746

if.end16:                                         ; preds = %if.end12
  store i64 -22, i64* %ret, align 8, !dbg !4747
  %13 = load i64, i64* %pos, align 8, !dbg !4748
  %cmp17 = icmp slt i64 %13, 0, !dbg !4750
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !4751

lor.lhs.false:                                    ; preds = %if.end16
  %14 = load i64, i64* %pos, align 8, !dbg !4752
  %15 = load i32, i32* %size, align 4, !dbg !4753
  %conv19 = sext i32 %15 to i64, !dbg !4753
  %cmp20 = icmp sgt i64 %14, %conv19, !dbg !4754
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4755

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  br label %unlock_out, !dbg !4756

if.end23:                                         ; preds = %lor.lhs.false
  %16 = load i64, i64* %count.addr, align 8, !dbg !4757
  %17 = load i32, i32* %size, align 4, !dbg !4759
  %conv24 = sext i32 %17 to i64, !dbg !4759
  %18 = load i64, i64* %pos, align 8, !dbg !4760
  %sub = sub i64 %conv24, %18, !dbg !4761
  %cmp25 = icmp ugt i64 %16, %sub, !dbg !4762
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !4763

if.then27:                                        ; preds = %if.end23
  %19 = load i32, i32* %size, align 4, !dbg !4764
  %conv28 = sext i32 %19 to i64, !dbg !4764
  %20 = load i64, i64* %pos, align 8, !dbg !4765
  %sub29 = sub i64 %conv28, %20, !dbg !4766
  store i64 %sub29, i64* %count.addr, align 8, !dbg !4767
  br label %if.end30, !dbg !4768

if.end30:                                         ; preds = %if.then27, %if.end23
  store i32 0, i32* %written, align 4, !dbg !4769
  br label %while.cond, !dbg !4770

while.cond:                                       ; preds = %if.end93, %if.end30
  %21 = load i64, i64* %count.addr, align 8, !dbg !4771
  %tobool31 = icmp ne i64 %21, 0, !dbg !4770
  br i1 %tobool31, label %while.body, label %while.end, !dbg !4770

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %this_round, metadata !4772, metadata !DIExpression()), !dbg !4773
  %22 = load i64, i64* %count.addr, align 8, !dbg !4774
  %conv32 = trunc i64 %22 to i32, !dbg !4774
  store i32 %conv32, i32* %this_round, align 4, !dbg !4773
  %23 = load i32, i32* %this_round, align 4, !dbg !4775
  %conv33 = zext i32 %23 to i64, !dbg !4775
  %cmp34 = icmp ugt i64 %conv33, 4096, !dbg !4777
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !4778

if.then36:                                        ; preds = %while.body
  store i32 4096, i32* %this_round, align 4, !dbg !4779
  br label %if.end37, !dbg !4780

if.end37:                                         ; preds = %if.then36, %while.body
  call void @console_unlock() #8, !dbg !4781
  %24 = load i8*, i8** %con_buf, align 8, !dbg !4782
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !4783
  %26 = load i32, i32* %this_round, align 4, !dbg !4784
  %conv38 = zext i32 %26 to i64, !dbg !4784
  store i8* %24, i8** %to.addr.i, align 8
  store i8* %25, i8** %from.addr.i, align 8
  store i64 %conv38, i64* %n.addr.i, align 8
  %27 = load i8*, i8** %to.addr.i, align 8, !dbg !4785
  %28 = load i64, i64* %n.addr.i, align 8, !dbg !4785
  store i8* %27, i8** %addr.addr.i.i, align 8
  store i64 %28, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4670
  %29 = load i32, i32* %sz.i.i, align 4, !dbg !4786
  %cmp.i.i = icmp sge i32 %29, 0, !dbg !4786
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4786

land.rhs.i.i:                                     ; preds = %if.end37
  %30 = load i32, i32* %sz.i.i, align 4, !dbg !4786
  %conv.i.i = sext i32 %30 to i64, !dbg !4786
  %31 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4786
  %cmp1.i.i = icmp ult i64 %conv.i.i, %31, !dbg !4786
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end37
  %32 = phi i1 [ false, %if.end37 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4787
  %lnot.i.i = xor i1 %32, true, !dbg !4786
  %lnot.ext.i.i = zext i1 %32 to i32, !dbg !4786
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4786
  br i1 %32, label %if.then.i.i, label %if.end10.i.i, !dbg !4788

if.then.i.i:                                      ; preds = %land.end.i.i
  %33 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4789
  %34 = call i1 @llvm.is.constant.i64(i64 %33) #10, !dbg !4790
  br i1 %34, label %if.else.i.i, label %if.then5.i.i, !dbg !4791

if.then5.i.i:                                     ; preds = %if.then.i.i
  %35 = load i32, i32* %sz.i.i, align 4, !dbg !4792
  %36 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4793
  call void @copy_overflow(i32 %35, i64 %36) #11, !dbg !4794
  br label %if.end9.i.i, !dbg !4794

if.else.i.i:                                      ; preds = %if.then.i.i
  %37 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4795
  %tobool6.i.i = trunc i8 %37 to i1, !dbg !4795
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4796

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #11, !dbg !4797
  br label %if.end.i.i, !dbg !4797

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #11, !dbg !4798
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4799
  br label %check_copy_size.exit.i, !dbg !4799

if.end10.i.i:                                     ; preds = %land.end.i.i
  %38 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4671
  %cmp11.i.i = icmp ugt i64 %38, 2147483647, !dbg !4671
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4671
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4671
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4671
  %39 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4800
  %tobool17.i.i = icmp ne i32 %39, 0, !dbg !4800
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4800
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4800
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4800
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4671

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4801, !srcloc !4601
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4802, !srcloc !4604
  br label %if.end31.i.i, !dbg !4803

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %40 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4671
  %tobool32.i.i = icmp ne i32 %40, 0, !dbg !4671
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4671
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4671
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4671
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4800
  %41 = load i64, i64* %tmp.i.i, align 8, !dbg !4671
  %tobool38.i.i = icmp ne i64 %41, 0, !dbg !4804
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4805

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4806
  br label %check_copy_size.exit.i, !dbg !4806

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %42 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4807
  %43 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4808
  %44 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4809
  %tobool41.i.i = trunc i8 %44 to i1, !dbg !4809
  call void @check_object_size(i8* %42, i64 %43, i1 zeroext %tobool41.i.i) #11, !dbg !4810
  store i1 true, i1* %retval.i.i, align 1, !dbg !4811
  br label %check_copy_size.exit.i, !dbg !4811

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %45 = load i1, i1* %retval.i.i, align 1, !dbg !4812
  %lnot.i = xor i1 %45, true, !dbg !4785
  %lnot.ext.i = zext i1 %45 to i32, !dbg !4785
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4785
  br i1 %45, label %if.then.i, label %copy_from_user.exit, !dbg !4813

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %46 = load i8*, i8** %to.addr.i, align 8, !dbg !4814
  %47 = load i8*, i8** %from.addr.i, align 8, !dbg !4815
  %48 = load i64, i64* %n.addr.i, align 8, !dbg !4816
  %call2.i = call i64 @_copy_from_user(i8* %46, i8* %47, i64 %48) #11, !dbg !4817
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4818
  br label %copy_from_user.exit, !dbg !4819

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %49 = load i64, i64* %n.addr.i, align 8, !dbg !4820
  store i64 %49, i64* %ret, align 8, !dbg !4821
  call void @console_lock() #8, !dbg !4822
  %50 = load i64, i64* %ret, align 8, !dbg !4823
  %tobool40 = icmp ne i64 %50, 0, !dbg !4823
  br i1 %tobool40, label %if.then41, label %if.end51, !dbg !4825

if.then41:                                        ; preds = %copy_from_user.exit
  %51 = load i64, i64* %ret, align 8, !dbg !4826
  %52 = load i32, i32* %this_round, align 4, !dbg !4828
  %conv42 = zext i32 %52 to i64, !dbg !4828
  %sub43 = sub i64 %conv42, %51, !dbg !4828
  %conv44 = trunc i64 %sub43 to i32, !dbg !4828
  store i32 %conv44, i32* %this_round, align 4, !dbg !4828
  %53 = load i32, i32* %this_round, align 4, !dbg !4829
  %tobool45 = icmp ne i32 %53, 0, !dbg !4829
  br i1 %tobool45, label %if.end50, label %if.then46, !dbg !4831

if.then46:                                        ; preds = %if.then41
  %54 = load i32, i32* %written, align 4, !dbg !4832
  %tobool47 = icmp ne i32 %54, 0, !dbg !4832
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !4835

if.then48:                                        ; preds = %if.then46
  br label %while.end, !dbg !4836

if.end49:                                         ; preds = %if.then46
  store i64 -14, i64* %ret, align 8, !dbg !4837
  br label %unlock_out, !dbg !4838

if.end50:                                         ; preds = %if.then41
  br label %if.end51, !dbg !4839

if.end51:                                         ; preds = %if.end50, %copy_from_user.exit
  %55 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4840
  %56 = load i8, i8* %attr, align 1, !dbg !4841
  %tobool52 = trunc i8 %56 to i1, !dbg !4841
  %call53 = call i32 @vcs_size(%struct.vc_data* %55, i1 zeroext %tobool52, i1 zeroext false) #8, !dbg !4842
  store i32 %call53, i32* %size, align 4, !dbg !4843
  %57 = load i32, i32* %size, align 4, !dbg !4844
  %cmp54 = icmp slt i32 %57, 0, !dbg !4846
  br i1 %cmp54, label %if.then56, label %if.end61, !dbg !4847

if.then56:                                        ; preds = %if.end51
  %58 = load i32, i32* %written, align 4, !dbg !4848
  %tobool57 = icmp ne i32 %58, 0, !dbg !4848
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4851

if.then58:                                        ; preds = %if.then56
  br label %while.end, !dbg !4852

if.end59:                                         ; preds = %if.then56
  %59 = load i32, i32* %size, align 4, !dbg !4853
  %conv60 = sext i32 %59 to i64, !dbg !4853
  store i64 %conv60, i64* %ret, align 8, !dbg !4854
  br label %unlock_out, !dbg !4855

if.end61:                                         ; preds = %if.end51
  %60 = load i64, i64* %pos, align 8, !dbg !4856
  %61 = load i32, i32* %size, align 4, !dbg !4858
  %conv62 = sext i32 %61 to i64, !dbg !4858
  %cmp63 = icmp sge i64 %60, %conv62, !dbg !4859
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4860

if.then65:                                        ; preds = %if.end61
  br label %while.end, !dbg !4861

if.end66:                                         ; preds = %if.end61
  %62 = load i32, i32* %this_round, align 4, !dbg !4862
  %conv67 = zext i32 %62 to i64, !dbg !4862
  %63 = load i32, i32* %size, align 4, !dbg !4864
  %conv68 = sext i32 %63 to i64, !dbg !4864
  %64 = load i64, i64* %pos, align 8, !dbg !4865
  %sub69 = sub i64 %conv68, %64, !dbg !4866
  %cmp70 = icmp sgt i64 %conv67, %sub69, !dbg !4867
  br i1 %cmp70, label %if.then72, label %if.end76, !dbg !4868

if.then72:                                        ; preds = %if.end66
  %65 = load i32, i32* %size, align 4, !dbg !4869
  %conv73 = sext i32 %65 to i64, !dbg !4869
  %66 = load i64, i64* %pos, align 8, !dbg !4870
  %sub74 = sub i64 %conv73, %66, !dbg !4871
  %conv75 = trunc i64 %sub74 to i32, !dbg !4869
  store i32 %conv75, i32* %this_round, align 4, !dbg !4872
  br label %if.end76, !dbg !4873

if.end76:                                         ; preds = %if.then72, %if.end66
  %67 = load i8, i8* %attr, align 1, !dbg !4874
  %tobool77 = trunc i8 %67 to i1, !dbg !4874
  br i1 %tobool77, label %if.then78, label %if.else, !dbg !4876

if.then78:                                        ; preds = %if.end76
  %68 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4877
  %69 = load i8*, i8** %con_buf, align 8, !dbg !4878
  %70 = load i64, i64* %pos, align 8, !dbg !4879
  %conv79 = trunc i64 %70 to i32, !dbg !4879
  %71 = load i32, i32* %this_round, align 4, !dbg !4880
  %72 = load i8, i8* %viewed, align 1, !dbg !4881
  %tobool80 = trunc i8 %72 to i1, !dbg !4881
  %call81 = call i16* @vcs_write_buf(%struct.vc_data* %68, i8* %69, i32 %conv79, i32 %71, i1 zeroext %tobool80, i16** %org0) #8, !dbg !4882
  store i16* %call81, i16** %org, align 8, !dbg !4883
  br label %if.end85, !dbg !4884

if.else:                                          ; preds = %if.end76
  %73 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4885
  %74 = load i8*, i8** %con_buf, align 8, !dbg !4886
  %75 = load i64, i64* %pos, align 8, !dbg !4887
  %conv82 = trunc i64 %75 to i32, !dbg !4887
  %76 = load i32, i32* %this_round, align 4, !dbg !4888
  %77 = load i8, i8* %viewed, align 1, !dbg !4889
  %tobool83 = trunc i8 %77 to i1, !dbg !4889
  %call84 = call i16* @vcs_write_buf_noattr(%struct.vc_data* %73, i8* %74, i32 %conv82, i32 %76, i1 zeroext %tobool83, i16** %org0) #8, !dbg !4890
  store i16* %call84, i16** %org, align 8, !dbg !4891
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then78
  %78 = load i32, i32* %this_round, align 4, !dbg !4892
  %conv86 = zext i32 %78 to i64, !dbg !4892
  %79 = load i64, i64* %count.addr, align 8, !dbg !4893
  %sub87 = sub i64 %79, %conv86, !dbg !4893
  store i64 %sub87, i64* %count.addr, align 8, !dbg !4893
  %80 = load i32, i32* %this_round, align 4, !dbg !4894
  %81 = load i32, i32* %written, align 4, !dbg !4895
  %add = add i32 %81, %80, !dbg !4895
  store i32 %add, i32* %written, align 4, !dbg !4895
  %82 = load i32, i32* %this_round, align 4, !dbg !4896
  %83 = load i8*, i8** %buf.addr, align 8, !dbg !4897
  %idx.ext = zext i32 %82 to i64, !dbg !4897
  %add.ptr = getelementptr i8, i8* %83, i64 %idx.ext, !dbg !4897
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !4897
  %84 = load i32, i32* %this_round, align 4, !dbg !4898
  %conv88 = zext i32 %84 to i64, !dbg !4898
  %85 = load i64, i64* %pos, align 8, !dbg !4899
  %add89 = add i64 %85, %conv88, !dbg !4899
  store i64 %add89, i64* %pos, align 8, !dbg !4899
  %86 = load i16*, i16** %org, align 8, !dbg !4900
  %tobool90 = icmp ne i16* %86, null, !dbg !4900
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !4902

if.then91:                                        ; preds = %if.end85
  %87 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4903
  %88 = load i16*, i16** %org0, align 8, !dbg !4904
  %89 = ptrtoint i16* %88 to i64, !dbg !4905
  %90 = load i16*, i16** %org, align 8, !dbg !4906
  %91 = load i16*, i16** %org0, align 8, !dbg !4907
  %sub.ptr.lhs.cast = ptrtoint i16* %90 to i64, !dbg !4908
  %sub.ptr.rhs.cast = ptrtoint i16* %91 to i64, !dbg !4908
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4908
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !4908
  %conv92 = trunc i64 %sub.ptr.div to i32, !dbg !4906
  call void @update_region(%struct.vc_data* %87, i64 %89, i32 %conv92) #8, !dbg !4909
  br label %if.end93, !dbg !4909

if.end93:                                         ; preds = %if.then91, %if.end85
  br label %while.cond, !dbg !4770, !llvm.loop !4910

while.end:                                        ; preds = %if.then65, %if.then58, %if.then48, %while.cond
  %92 = load i32, i32* %written, align 4, !dbg !4912
  %conv94 = zext i32 %92 to i64, !dbg !4912
  %93 = load i64*, i64** %ppos.addr, align 8, !dbg !4913
  %94 = load i64, i64* %93, align 8, !dbg !4914
  %add95 = add i64 %94, %conv94, !dbg !4914
  store i64 %add95, i64* %93, align 8, !dbg !4914
  %95 = load i32, i32* %written, align 4, !dbg !4915
  %conv96 = zext i32 %95 to i64, !dbg !4915
  store i64 %conv96, i64* %ret, align 8, !dbg !4916
  %96 = load i32, i32* %written, align 4, !dbg !4917
  %tobool97 = icmp ne i32 %96, 0, !dbg !4917
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !4919

if.then98:                                        ; preds = %while.end
  %97 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !4920
  call void @vcs_scr_updated(%struct.vc_data* %97) #8, !dbg !4921
  br label %if.end99, !dbg !4921

if.end99:                                         ; preds = %if.then98, %while.end
  br label %unlock_out, !dbg !4917

unlock_out:                                       ; preds = %if.end99, %if.end59, %if.end49, %if.then22, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !4922), !dbg !4923
  call void @console_unlock() #8, !dbg !4924
  %98 = load i8*, i8** %con_buf, align 8, !dbg !4925
  %99 = ptrtoint i8* %98 to i64, !dbg !4925
  call void @free_pages(i64 %99, i32 0) #8, !dbg !4925
  %100 = load i64, i64* %ret, align 8, !dbg !4926
  store i64 %100, i64* %retval, align 8, !dbg !4927
  br label %return, !dbg !4927

return:                                           ; preds = %unlock_out, %if.then4, %if.then
  %101 = load i64, i64* %retval, align 8, !dbg !4928
  ret i64 %101, !dbg !4928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_poll(%struct.file* %file, %struct.poll_table_struct* %wait) #0 !dbg !4929 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %poll = alloca %struct.vcs_poll_data*, align 8
  %ret = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4940
  %call = call %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %0) #8, !dbg !4941
  store %struct.vcs_poll_data* %call, %struct.vcs_poll_data** %poll, align 8, !dbg !4939
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4942, metadata !DIExpression()), !dbg !4943
  store i32 333, i32* %ret, align 4, !dbg !4943
  %1 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !4944
  %tobool = icmp ne %struct.vcs_poll_data* %1, null, !dbg !4944
  br i1 %tobool, label %if.then, label %if.end, !dbg !4946

if.then:                                          ; preds = %entry
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4947
  %3 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !4949
  %waitq = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %3, i32 0, i32 3, !dbg !4950
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !4951
  call void @poll_wait(%struct.file* %2, %struct.wait_queue_head* %waitq, %struct.poll_table_struct* %4) #8, !dbg !4952
  %5 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !4953
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %5, i32 0, i32 2, !dbg !4954
  %6 = load i32, i32* %event, align 4, !dbg !4954
  switch i32 %6, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ], !dbg !4955

sw.bb:                                            ; preds = %if.then
  store i32 327, i32* %ret, align 4, !dbg !4956
  br label %sw.epilog, !dbg !4958

sw.bb1:                                           ; preds = %if.then
  store i32 349, i32* %ret, align 4, !dbg !4959
  br label %sw.epilog, !dbg !4960

sw.bb2:                                           ; preds = %if.then
  store i32 325, i32* %ret, align 4, !dbg !4961
  br label %sw.epilog, !dbg !4962

sw.epilog:                                        ; preds = %if.then, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end, !dbg !4963

if.end:                                           ; preds = %sw.epilog, %entry
  %7 = load i32, i32* %ret, align 4, !dbg !4964
  ret i32 %7, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_open(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !4966 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %currcons = alloca i32, align 4
  %attr = alloca i8, align 1
  %uni_mode = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.declare(metadata i32* %currcons, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4973
  %call = call i32 @iminor(%struct.inode* %0) #8, !dbg !4973
  %and = and i32 %call, 63, !dbg !4973
  store i32 %and, i32* %currcons, align 4, !dbg !4972
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !4974, metadata !DIExpression()), !dbg !4975
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4976
  %call1 = call i32 @iminor(%struct.inode* %1) #8, !dbg !4976
  %and2 = and i32 %call1, 128, !dbg !4976
  %tobool = icmp ne i32 %and2, 0, !dbg !4976
  %frombool = zext i1 %tobool to i8, !dbg !4975
  store i8 %frombool, i8* %attr, align 1, !dbg !4975
  call void @llvm.dbg.declare(metadata i8* %uni_mode, metadata !4977, metadata !DIExpression()), !dbg !4978
  %2 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4979
  %call3 = call i32 @iminor(%struct.inode* %2) #8, !dbg !4979
  %and4 = and i32 %call3, 64, !dbg !4979
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4979
  %frombool6 = zext i1 %tobool5 to i8, !dbg !4978
  store i8 %frombool6, i8* %uni_mode, align 1, !dbg !4978
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4980, metadata !DIExpression()), !dbg !4981
  store i32 0, i32* %ret, align 4, !dbg !4981
  %3 = load i8, i8* %attr, align 1, !dbg !4982
  %tobool7 = trunc i8 %3 to i1, !dbg !4982
  br i1 %tobool7, label %land.lhs.true, label %if.end, !dbg !4984

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, i8* %uni_mode, align 1, !dbg !4985
  %tobool8 = trunc i8 %4 to i1, !dbg !4985
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4986

if.then:                                          ; preds = %land.lhs.true
  store i32 -95, i32* %retval, align 4, !dbg !4987
  br label %return, !dbg !4987

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @console_lock() #8, !dbg !4988
  %5 = load i32, i32* %currcons, align 4, !dbg !4989
  %tobool9 = icmp ne i32 %5, 0, !dbg !4989
  br i1 %tobool9, label %land.lhs.true10, label %if.end14, !dbg !4991

land.lhs.true10:                                  ; preds = %if.end
  %6 = load i32, i32* %currcons, align 4, !dbg !4992
  %sub = sub i32 %6, 1, !dbg !4993
  %call11 = call i32 @vc_cons_allocated(i32 %sub) #8, !dbg !4994
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4994
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4995

if.then13:                                        ; preds = %land.lhs.true10
  store i32 -6, i32* %ret, align 4, !dbg !4996
  br label %if.end14, !dbg !4997

if.end14:                                         ; preds = %if.then13, %land.lhs.true10, %if.end
  call void @console_unlock() #8, !dbg !4998
  %7 = load i32, i32* %ret, align 4, !dbg !4999
  store i32 %7, i32* %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

return:                                           ; preds = %if.end14, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5001
  ret i32 %8, !dbg !5001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !5002 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %poll = alloca %struct.vcs_poll_data*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !5007, metadata !DIExpression()), !dbg !5008
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5009
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5010
  %1 = load i8*, i8** %private_data, align 8, !dbg !5010
  %2 = bitcast i8* %1 to %struct.vcs_poll_data*, !dbg !5009
  store %struct.vcs_poll_data* %2, %struct.vcs_poll_data** %poll, align 8, !dbg !5008
  %3 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5011
  %tobool = icmp ne %struct.vcs_poll_data* %3, null, !dbg !5011
  br i1 %tobool, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %entry
  %4 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5014
  call void @vcs_poll_data_free(%struct.vcs_poll_data* %4) #8, !dbg !5015
  br label %if.end, !dbg !5015

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_fasync(i32 %fd, %struct.file* %file, i32 %on) #0 !dbg !5017 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %on.addr = alloca i32, align 4
  %poll = alloca %struct.vcs_poll_data*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5026
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5027
  %1 = load i8*, i8** %private_data, align 8, !dbg !5027
  %2 = bitcast i8* %1 to %struct.vcs_poll_data*, !dbg !5026
  store %struct.vcs_poll_data* %2, %struct.vcs_poll_data** %poll, align 8, !dbg !5025
  %3 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5028
  %tobool = icmp ne %struct.vcs_poll_data* %3, null, !dbg !5028
  br i1 %tobool, label %if.end6, label %if.then, !dbg !5030

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %on.addr, align 4, !dbg !5031
  %tobool1 = icmp ne i32 %4, 0, !dbg !5031
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5034

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end:                                           ; preds = %if.then
  %5 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5036
  %call = call %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %5) #8, !dbg !5037
  store %struct.vcs_poll_data* %call, %struct.vcs_poll_data** %poll, align 8, !dbg !5038
  %6 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5039
  %tobool3 = icmp ne %struct.vcs_poll_data* %6, null, !dbg !5039
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5041

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

if.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !5043

if.end6:                                          ; preds = %if.end5, %entry
  %7 = load i32, i32* %fd.addr, align 4, !dbg !5044
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5045
  %9 = load i32, i32* %on.addr, align 4, !dbg !5046
  %10 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5047
  %fasync = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %10, i32 0, i32 4, !dbg !5048
  %call7 = call i32 @fasync_helper(i32 %7, %struct.file* %8, i32 %9, %struct.fasync_struct** %fasync) #8, !dbg !5049
  store i32 %call7, i32* %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

return:                                           ; preds = %if.end6, %if.then4, %if.then2
  %11 = load i32, i32* %retval, align 4, !dbg !5051
  ret i32 %11, !dbg !5051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.inode* @file_inode(%struct.file* %f) #0 !dbg !5052 {
entry:
  %f.addr = alloca %struct.file*, align 8
  store %struct.file* %f, %struct.file** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %f.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  %0 = load %struct.file*, %struct.file** %f.addr, align 8, !dbg !5057
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 2, !dbg !5058
  %1 = load %struct.inode*, %struct.inode** %f_inode, align 8, !dbg !5058
  ret %struct.inode* %1, !dbg !5059
}

; Function Attrs: noredzone
declare dso_local void @console_lock() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vc_data* @vcs_vc(%struct.inode* %inode, i8* %viewed) #0 !dbg !5060 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5063, metadata !DIExpression()), !dbg !5070
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5076, metadata !DIExpression()), !dbg !5084
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5086, metadata !DIExpression()), !dbg !5087
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5088, metadata !DIExpression()), !dbg !5089
  %inode.addr = alloca %struct.inode*, align 8
  %viewed.addr = alloca i8*, align 8
  %currcons = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i8* %viewed, i8** %viewed.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %viewed.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.declare(metadata i32* %currcons, metadata !5094, metadata !DIExpression()), !dbg !5095
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5096
  %call = call i32 @iminor(%struct.inode* %0) #8, !dbg !5096
  %and = and i32 %call, 63, !dbg !5096
  store i32 %and, i32* %currcons, align 4, !dbg !5095
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5097, metadata !DIExpression()), !dbg !5098
  store %struct.atomic_t* @ignore_console_lock_warning, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5099
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5099
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5100
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5101
  %conv.i.i = trunc i64 %4 to i32, !dbg !5101
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #11, !dbg !5102
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5103
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5103
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !5103
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5104
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5105
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5105
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5105
  %tobool = icmp ne i32 %9, 0, !dbg !5098
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5098

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #8, !dbg !5098
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5098
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !5098

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* @oops_in_progress, align 4, !dbg !5098
  %tobool4 = icmp ne i32 %10, 0, !dbg !5098
  %lnot = xor i1 %tobool4, true, !dbg !5098
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5106
  %lnot5 = xor i1 %11, true, !dbg !5098
  %lnot6 = xor i1 %lnot5, true, !dbg !5098
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5098
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5098
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !5107
  %tobool7 = icmp ne i32 %12, 0, !dbg !5107
  %lnot8 = xor i1 %tobool7, true, !dbg !5107
  %lnot10 = xor i1 %lnot8, true, !dbg !5107
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5107
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5107
  %tobool12 = icmp ne i64 %conv, 0, !dbg !5107
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5098

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5107

do.body:                                          ; preds = %if.then
  br label %do.body13, !dbg !5109

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !5111

do.end:                                           ; preds = %do.body13
  br label %do.body14, !dbg !5109

do.body14:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 187, i32 2305, i64 12) #10, !dbg !5113, !srcloc !5115
  br label %do.end15, !dbg !5113

do.end15:                                         ; preds = %do.body14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 226) #10, !dbg !5116, !srcloc !5118
  br label %do.body16, !dbg !5109

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5119

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !5109

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !5109

if.end:                                           ; preds = %do.end18, %land.end
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !5098
  %tobool19 = icmp ne i32 %13, 0, !dbg !5098
  %lnot20 = xor i1 %tobool19, true, !dbg !5098
  %lnot22 = xor i1 %lnot20, true, !dbg !5098
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5098
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5098
  store i64 %conv24, i64* %tmp, align 8, !dbg !5107
  %14 = load i64, i64* %tmp, align 8, !dbg !5098
  %15 = load i32, i32* %currcons, align 4, !dbg !5121
  %cmp = icmp eq i32 %15, 0, !dbg !5123
  br i1 %cmp, label %if.then26, label %if.else, !dbg !5124

if.then26:                                        ; preds = %if.end
  %16 = load i32, i32* @fg_console, align 4, !dbg !5125
  store i32 %16, i32* %currcons, align 4, !dbg !5127
  %17 = load i8*, i8** %viewed.addr, align 8, !dbg !5128
  %tobool27 = icmp ne i8* %17, null, !dbg !5128
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5130

if.then28:                                        ; preds = %if.then26
  %18 = load i8*, i8** %viewed.addr, align 8, !dbg !5131
  store i8 1, i8* %18, align 1, !dbg !5132
  br label %if.end29, !dbg !5133

if.end29:                                         ; preds = %if.then28, %if.then26
  br label %if.end33, !dbg !5134

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %currcons, align 4, !dbg !5135
  %dec = add i32 %19, -1, !dbg !5135
  store i32 %dec, i32* %currcons, align 4, !dbg !5135
  %20 = load i8*, i8** %viewed.addr, align 8, !dbg !5137
  %tobool30 = icmp ne i8* %20, null, !dbg !5137
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5139

if.then31:                                        ; preds = %if.else
  %21 = load i8*, i8** %viewed.addr, align 8, !dbg !5140
  store i8 0, i8* %21, align 1, !dbg !5141
  br label %if.end32, !dbg !5142

if.end32:                                         ; preds = %if.then31, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end29
  %22 = load i32, i32* %currcons, align 4, !dbg !5143
  %idxprom = zext i32 %22 to i64, !dbg !5144
  %arrayidx = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, !dbg !5144
  %d = getelementptr inbounds %struct.vc, %struct.vc* %arrayidx, i32 0, i32 0, !dbg !5145
  %23 = load %struct.vc_data*, %struct.vc_data** %d, align 8, !dbg !5145
  ret %struct.vc_data* %23, !dbg !5146
}

; Function Attrs: noredzone
declare dso_local void @console_unlock() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_size(%struct.vc_data* %vc, i1 zeroext %attr, i1 zeroext %unicode) #0 !dbg !5147 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5063, metadata !DIExpression()), !dbg !5150
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5076, metadata !DIExpression()), !dbg !5154
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5086, metadata !DIExpression()), !dbg !5156
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5088, metadata !DIExpression()), !dbg !5157
  %retval = alloca i32, align 4
  %vc.addr = alloca %struct.vc_data*, align 8
  %attr.addr = alloca i8, align 1
  %unicode.addr = alloca i8, align 1
  %size = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  %frombool = zext i1 %attr to i8
  store i8 %frombool, i8* %attr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %attr.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  %frombool1 = zext i1 %unicode to i8
  store i8 %frombool1, i8* %unicode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unicode.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5164, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5166, metadata !DIExpression()), !dbg !5167
  store %struct.atomic_t* @ignore_console_lock_warning, %struct.atomic_t** %v.addr.i, align 8
  %0 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5168
  %1 = bitcast %struct.atomic_t* %0 to i8*, !dbg !5168
  store i8* %1, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %2 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5169
  %3 = load i64, i64* %size.addr.i.i, align 8, !dbg !5170
  %conv.i.i = trunc i64 %3 to i32, !dbg !5170
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %2, i32 %conv.i.i) #11, !dbg !5171
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5172
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5172
  call void @kcsan_check_access(i8* %4, i64 %5, i32 4) #11, !dbg !5172
  %6 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5173
  store %struct.atomic_t* %6, %struct.atomic_t** %v.addr.i1.i, align 8
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5174
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %7, i32 0, i32 0, !dbg !5174
  %8 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5174
  %tobool = icmp ne i32 %8, 0, !dbg !5167
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5167

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @is_console_locked() #8, !dbg !5167
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5167
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !5167

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* @oops_in_progress, align 4, !dbg !5167
  %tobool4 = icmp ne i32 %9, 0, !dbg !5167
  %lnot = xor i1 %tobool4, true, !dbg !5167
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5175
  %lnot5 = xor i1 %10, true, !dbg !5167
  %lnot6 = xor i1 %lnot5, true, !dbg !5167
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5167
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5167
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !5176
  %tobool7 = icmp ne i32 %11, 0, !dbg !5176
  %lnot8 = xor i1 %tobool7, true, !dbg !5176
  %lnot10 = xor i1 %lnot8, true, !dbg !5176
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5176
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5176
  %tobool12 = icmp ne i64 %conv, 0, !dbg !5176
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5167

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %if.then
  br label %do.body13, !dbg !5178

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !5180

do.end:                                           ; preds = %do.body13
  br label %do.body14, !dbg !5178

do.body14:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 213, i32 2305, i64 12) #10, !dbg !5182, !srcloc !5184
  br label %do.end15, !dbg !5182

do.end15:                                         ; preds = %do.body14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 227) #10, !dbg !5185, !srcloc !5187
  br label %do.body16, !dbg !5178

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5188

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !5178

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !5178

if.end:                                           ; preds = %do.end18, %land.end
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !5167
  %tobool19 = icmp ne i32 %12, 0, !dbg !5167
  %lnot20 = xor i1 %tobool19, true, !dbg !5167
  %lnot22 = xor i1 %lnot20, true, !dbg !5167
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5167
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5167
  store i64 %conv24, i64* %tmp, align 8, !dbg !5176
  %13 = load i64, i64* %tmp, align 8, !dbg !5167
  %14 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5190
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 5, !dbg !5191
  %15 = load i32, i32* %vc_rows, align 8, !dbg !5191
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5192
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 4, !dbg !5193
  %17 = load i32, i32* %vc_cols, align 4, !dbg !5193
  %mul = mul i32 %15, %17, !dbg !5194
  store i32 %mul, i32* %size, align 4, !dbg !5195
  %18 = load i8, i8* %attr.addr, align 1, !dbg !5196
  %tobool25 = trunc i8 %18 to i1, !dbg !5196
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !5198

if.then26:                                        ; preds = %if.end
  %19 = load i8, i8* %unicode.addr, align 1, !dbg !5199
  %tobool27 = trunc i8 %19 to i1, !dbg !5199
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5202

if.then28:                                        ; preds = %if.then26
  store i32 -95, i32* %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

if.end29:                                         ; preds = %if.then26
  %20 = load i32, i32* %size, align 4, !dbg !5204
  %mul30 = mul i32 2, %20, !dbg !5205
  %add = add i32 %mul30, 4, !dbg !5206
  store i32 %add, i32* %size, align 4, !dbg !5207
  br label %if.end35, !dbg !5208

if.else:                                          ; preds = %if.end
  %21 = load i8, i8* %unicode.addr, align 1, !dbg !5209
  %tobool31 = trunc i8 %21 to i1, !dbg !5209
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5211

if.then32:                                        ; preds = %if.else
  %22 = load i32, i32* %size, align 4, !dbg !5212
  %mul33 = mul i32 %22, 4, !dbg !5212
  store i32 %mul33, i32* %size, align 4, !dbg !5212
  br label %if.end34, !dbg !5213

if.end34:                                         ; preds = %if.then32, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end29
  %23 = load i32, i32* %size, align 4, !dbg !5214
  store i32 %23, i32* %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

return:                                           ; preds = %if.end35, %if.then28
  %24 = load i32, i32* %retval, align 4, !dbg !5216
  ret i32 %24, !dbg !5216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #0 !dbg !5217 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5222
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !5222
  %1 = load i32, i32* %i_rdev, align 4, !dbg !5222
  %and = and i32 %1, 1048575, !dbg !5222
  ret i32 %and, !dbg !5223
}

; Function Attrs: noredzone
declare dso_local i64 @fixed_size_llseek(%struct.file*, i64, i32, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @is_console_locked() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5224 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  ret i1 true, !dbg !5232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5233 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  ret void, !dbg !5243
}

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_read_buf_uni(%struct.vc_data* %vc, i8* %con_buf, i32 %pos, i32 %count, i1 zeroext %viewed) #0 !dbg !5244 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca %struct.vc_data*, align 8
  %con_buf.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %nr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  store i8* %con_buf, i8** %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_buf.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, i8* %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %viewed.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5257, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.declare(metadata i32* %row, metadata !5259, metadata !DIExpression()), !dbg !5260
  call void @llvm.dbg.declare(metadata i32* %col, metadata !5261, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata i32* %maxcol, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5265
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5266
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5266
  store i32 %1, i32* %maxcol, align 4, !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5267, metadata !DIExpression()), !dbg !5268
  %2 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5269
  %call = call i32 @vc_uniscr_check(%struct.vc_data* %2) #8, !dbg !5270
  store i32 %call, i32* %ret, align 4, !dbg !5271
  %3 = load i32, i32* %ret, align 4, !dbg !5272
  %tobool = icmp ne i32 %3, 0, !dbg !5272
  br i1 %tobool, label %if.then, label %if.end, !dbg !5274

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5275
  store i32 %4, i32* %retval, align 4, !dbg !5276
  br label %return, !dbg !5276

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %pos.addr, align 4, !dbg !5277
  %div = udiv i32 %5, 4, !dbg !5277
  store i32 %div, i32* %pos.addr, align 4, !dbg !5277
  %6 = load i32, i32* %pos.addr, align 4, !dbg !5278
  %7 = load i32, i32* %maxcol, align 4, !dbg !5279
  %div1 = udiv i32 %6, %7, !dbg !5280
  store i32 %div1, i32* %row, align 4, !dbg !5281
  %8 = load i32, i32* %pos.addr, align 4, !dbg !5282
  %9 = load i32, i32* %maxcol, align 4, !dbg !5283
  %rem = urem i32 %8, %9, !dbg !5284
  store i32 %rem, i32* %col, align 4, !dbg !5285
  %10 = load i32, i32* %maxcol, align 4, !dbg !5286
  %11 = load i32, i32* %col, align 4, !dbg !5287
  %sub = sub i32 %10, %11, !dbg !5288
  store i32 %sub, i32* %nr, align 4, !dbg !5289
  br label %do.body, !dbg !5290

do.body:                                          ; preds = %do.cond, %if.end
  %12 = load i32, i32* %nr, align 4, !dbg !5291
  %13 = load i32, i32* %count.addr, align 4, !dbg !5294
  %div2 = udiv i32 %13, 4, !dbg !5295
  %cmp = icmp ugt i32 %12, %div2, !dbg !5296
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5297

if.then3:                                         ; preds = %do.body
  %14 = load i32, i32* %count.addr, align 4, !dbg !5298
  %div4 = udiv i32 %14, 4, !dbg !5299
  store i32 %div4, i32* %nr, align 4, !dbg !5300
  br label %if.end5, !dbg !5301

if.end5:                                          ; preds = %if.then3, %do.body
  %15 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5302
  %16 = load i8*, i8** %con_buf.addr, align 8, !dbg !5303
  %17 = load i8, i8* %viewed.addr, align 1, !dbg !5304
  %tobool6 = trunc i8 %17 to i1, !dbg !5304
  %18 = load i32, i32* %row, align 4, !dbg !5305
  %19 = load i32, i32* %col, align 4, !dbg !5306
  %20 = load i32, i32* %nr, align 4, !dbg !5307
  call void @vc_uniscr_copy_line(%struct.vc_data* %15, i8* %16, i1 zeroext %tobool6, i32 %18, i32 %19, i32 %20) #8, !dbg !5308
  %21 = load i32, i32* %nr, align 4, !dbg !5309
  %mul = mul i32 %21, 4, !dbg !5310
  %22 = load i8*, i8** %con_buf.addr, align 8, !dbg !5311
  %idx.ext = zext i32 %mul to i64, !dbg !5311
  %add.ptr = getelementptr i8, i8* %22, i64 %idx.ext, !dbg !5311
  store i8* %add.ptr, i8** %con_buf.addr, align 8, !dbg !5311
  %23 = load i32, i32* %nr, align 4, !dbg !5312
  %mul7 = mul i32 %23, 4, !dbg !5313
  %24 = load i32, i32* %count.addr, align 4, !dbg !5314
  %sub8 = sub i32 %24, %mul7, !dbg !5314
  store i32 %sub8, i32* %count.addr, align 4, !dbg !5314
  %25 = load i32, i32* %row, align 4, !dbg !5315
  %inc = add i32 %25, 1, !dbg !5315
  store i32 %inc, i32* %row, align 4, !dbg !5315
  store i32 0, i32* %col, align 4, !dbg !5316
  %26 = load i32, i32* %maxcol, align 4, !dbg !5317
  store i32 %26, i32* %nr, align 4, !dbg !5318
  br label %do.cond, !dbg !5319

do.cond:                                          ; preds = %if.end5
  %27 = load i32, i32* %count.addr, align 4, !dbg !5320
  %tobool9 = icmp ne i32 %27, 0, !dbg !5319
  br i1 %tobool9, label %do.body, label %do.end, !dbg !5319, !llvm.loop !5321

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !5323
  br label %return, !dbg !5323

return:                                           ; preds = %do.end, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5324
  ret i32 %28, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vcs_read_buf_noattr(%struct.vc_data* %vc, i8* %con_buf, i32 %pos, i32 %count, i1 zeroext %viewed) #0 !dbg !5325 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %con_buf.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org = alloca i16*, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i8* %con_buf, i8** %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_buf.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, i8* %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %viewed.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  call void @llvm.dbg.declare(metadata i16** %org, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %col, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata i32* %maxcol, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5344
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5345
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5345
  store i32 %1, i32* %maxcol, align 4, !dbg !5343
  %2 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5346
  %3 = load i32, i32* %pos.addr, align 4, !dbg !5347
  %4 = load i8, i8* %viewed.addr, align 1, !dbg !5348
  %tobool = trunc i8 %4 to i1, !dbg !5348
  %call = call i16* @screen_pos(%struct.vc_data* %2, i32 %3, i1 zeroext %tobool) #8, !dbg !5349
  store i16* %call, i16** %org, align 8, !dbg !5350
  %5 = load i32, i32* %pos.addr, align 4, !dbg !5351
  %6 = load i32, i32* %maxcol, align 4, !dbg !5352
  %rem = urem i32 %5, %6, !dbg !5353
  store i32 %rem, i32* %col, align 4, !dbg !5354
  %7 = load i32, i32* %maxcol, align 4, !dbg !5355
  %8 = load i32, i32* %col, align 4, !dbg !5356
  %sub = sub i32 %7, %8, !dbg !5357
  %9 = load i32, i32* %pos.addr, align 4, !dbg !5358
  %add = add i32 %9, %sub, !dbg !5358
  store i32 %add, i32* %pos.addr, align 4, !dbg !5358
  br label %while.cond, !dbg !5359

while.cond:                                       ; preds = %if.end, %entry
  %10 = load i32, i32* %count.addr, align 4, !dbg !5360
  %dec = add i32 %10, -1, !dbg !5360
  store i32 %dec, i32* %count.addr, align 4, !dbg !5360
  %cmp = icmp ugt i32 %10, 0, !dbg !5361
  br i1 %cmp, label %while.body, label %while.end, !dbg !5359

while.body:                                       ; preds = %while.cond
  %11 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5362
  %12 = load i16*, i16** %org, align 8, !dbg !5364
  %incdec.ptr = getelementptr i16, i16* %12, i32 1, !dbg !5364
  store i16* %incdec.ptr, i16** %org, align 8, !dbg !5364
  %call1 = call zeroext i16 @vcs_scr_readw(%struct.vc_data* %11, i16* %12) #8, !dbg !5365
  %conv = zext i16 %call1 to i32, !dbg !5365
  %and = and i32 %conv, 255, !dbg !5366
  %conv2 = trunc i32 %and to i8, !dbg !5367
  %13 = load i8*, i8** %con_buf.addr, align 8, !dbg !5368
  %incdec.ptr3 = getelementptr i8, i8* %13, i32 1, !dbg !5368
  store i8* %incdec.ptr3, i8** %con_buf.addr, align 8, !dbg !5368
  store i8 %conv2, i8* %13, align 1, !dbg !5369
  %14 = load i32, i32* %col, align 4, !dbg !5370
  %inc = add i32 %14, 1, !dbg !5370
  store i32 %inc, i32* %col, align 4, !dbg !5370
  %15 = load i32, i32* %maxcol, align 4, !dbg !5372
  %cmp4 = icmp eq i32 %inc, %15, !dbg !5373
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5374

if.then:                                          ; preds = %while.body
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5375
  %17 = load i32, i32* %pos.addr, align 4, !dbg !5377
  %18 = load i8, i8* %viewed.addr, align 1, !dbg !5378
  %tobool6 = trunc i8 %18 to i1, !dbg !5378
  %call7 = call i16* @screen_pos(%struct.vc_data* %16, i32 %17, i1 zeroext %tobool6) #8, !dbg !5379
  store i16* %call7, i16** %org, align 8, !dbg !5380
  store i32 0, i32* %col, align 4, !dbg !5381
  %19 = load i32, i32* %maxcol, align 4, !dbg !5382
  %20 = load i32, i32* %pos.addr, align 4, !dbg !5383
  %add8 = add i32 %20, %19, !dbg !5383
  store i32 %add8, i32* %pos.addr, align 4, !dbg !5383
  br label %if.end, !dbg !5384

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !5359, !llvm.loop !5385

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_read_buf(%struct.vc_data* %vc, i8* %con_buf, i32 %pos, i32 %count, i1 zeroext %viewed, i32* %skip) #0 !dbg !5388 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca %struct.vc_data*, align 8
  %con_buf.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %skip.addr = alloca i32*, align 8
  %org = alloca i16*, align 8
  %con_buf16 = alloca i16*, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %filled = alloca i32, align 4
  %__UNIQUE_ID___x228 = alloca i32, align 4
  %__UNIQUE_ID___y229 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x230 = alloca i32, align 4
  %__UNIQUE_ID___y231 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__UNIQUE_ID___x232 = alloca i32, align 4
  %__UNIQUE_ID___y233 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  store i8* %con_buf, i8** %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_buf.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, i8* %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %viewed.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i32* %skip, i32** %skip.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %skip.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata i16** %org, metadata !5403, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.declare(metadata i16** %con_buf16, metadata !5405, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.declare(metadata i32* %col, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %maxcol, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5411
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5412
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5412
  store i32 %1, i32* %maxcol, align 4, !dbg !5410
  call void @llvm.dbg.declare(metadata i32* %filled, metadata !5413, metadata !DIExpression()), !dbg !5414
  %2 = load i32, i32* %count.addr, align 4, !dbg !5415
  store i32 %2, i32* %filled, align 4, !dbg !5414
  %3 = load i32, i32* %pos.addr, align 4, !dbg !5416
  %cmp = icmp ult i32 %3, 4, !dbg !5418
  br i1 %cmp, label %if.then, label %if.else, !dbg !5419

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x228, metadata !5420, metadata !DIExpression()), !dbg !5423
  %4 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5423
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 5, !dbg !5423
  %5 = load i32, i32* %vc_rows, align 8, !dbg !5423
  store i32 %5, i32* %__UNIQUE_ID___x228, align 4, !dbg !5423
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y229, metadata !5424, metadata !DIExpression()), !dbg !5423
  store i32 255, i32* %__UNIQUE_ID___y229, align 4, !dbg !5423
  %6 = load i32, i32* %__UNIQUE_ID___x228, align 4, !dbg !5423
  %7 = load i32, i32* %__UNIQUE_ID___y229, align 4, !dbg !5423
  %cmp1 = icmp ult i32 %6, %7, !dbg !5423
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5423

cond.true:                                        ; preds = %if.then
  %8 = load i32, i32* %__UNIQUE_ID___x228, align 4, !dbg !5423
  br label %cond.end, !dbg !5423

cond.false:                                       ; preds = %if.then
  %9 = load i32, i32* %__UNIQUE_ID___y229, align 4, !dbg !5423
  br label %cond.end, !dbg !5423

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5423
  store i32 %cond, i32* %tmp, align 4, !dbg !5423
  %10 = load i32, i32* %tmp, align 4, !dbg !5423
  %conv = trunc i32 %10 to i8, !dbg !5425
  %11 = load i8*, i8** %con_buf.addr, align 8, !dbg !5426
  %arrayidx = getelementptr i8, i8* %11, i64 0, !dbg !5426
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x230, metadata !5428, metadata !DIExpression()), !dbg !5430
  %12 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5430
  %vc_cols2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 4, !dbg !5430
  %13 = load i32, i32* %vc_cols2, align 4, !dbg !5430
  store i32 %13, i32* %__UNIQUE_ID___x230, align 4, !dbg !5430
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y231, metadata !5431, metadata !DIExpression()), !dbg !5430
  store i32 255, i32* %__UNIQUE_ID___y231, align 4, !dbg !5430
  %14 = load i32, i32* %__UNIQUE_ID___x230, align 4, !dbg !5430
  %15 = load i32, i32* %__UNIQUE_ID___y231, align 4, !dbg !5430
  %cmp4 = icmp ult i32 %14, %15, !dbg !5430
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5430

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, i32* %__UNIQUE_ID___x230, align 4, !dbg !5430
  br label %cond.end8, !dbg !5430

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, i32* %__UNIQUE_ID___y231, align 4, !dbg !5430
  br label %cond.end8, !dbg !5430

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ], !dbg !5430
  store i32 %cond9, i32* %tmp3, align 4, !dbg !5430
  %18 = load i32, i32* %tmp3, align 4, !dbg !5430
  %conv10 = trunc i32 %18 to i8, !dbg !5432
  %19 = load i8*, i8** %con_buf.addr, align 8, !dbg !5433
  %arrayidx11 = getelementptr i8, i8* %19, i64 1, !dbg !5433
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !5434
  %20 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5435
  %21 = load i8*, i8** %con_buf.addr, align 8, !dbg !5436
  %add.ptr = getelementptr i8, i8* %21, i64 2, !dbg !5437
  call void @getconsxy(%struct.vc_data* %20, i8* %add.ptr) #8, !dbg !5438
  %22 = load i32, i32* %pos.addr, align 4, !dbg !5439
  %23 = load i32*, i32** %skip.addr, align 8, !dbg !5440
  %24 = load i32, i32* %23, align 4, !dbg !5441
  %add = add i32 %24, %22, !dbg !5441
  store i32 %add, i32* %23, align 4, !dbg !5441
  %25 = load i32, i32* %pos.addr, align 4, !dbg !5442
  %26 = load i32, i32* %count.addr, align 4, !dbg !5443
  %add12 = add i32 %26, %25, !dbg !5443
  store i32 %add12, i32* %count.addr, align 4, !dbg !5443
  %27 = load i32, i32* %count.addr, align 4, !dbg !5444
  %conv13 = zext i32 %27 to i64, !dbg !5444
  %cmp14 = icmp ugt i64 %conv13, 4096, !dbg !5446
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !5447

if.then16:                                        ; preds = %cond.end8
  store i32 4096, i32* %count.addr, align 4, !dbg !5448
  %28 = load i32, i32* %count.addr, align 4, !dbg !5450
  %29 = load i32, i32* %pos.addr, align 4, !dbg !5451
  %sub = sub i32 %28, %29, !dbg !5452
  store i32 %sub, i32* %filled, align 4, !dbg !5453
  br label %if.end, !dbg !5454

if.end:                                           ; preds = %if.then16, %cond.end8
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x232, metadata !5455, metadata !DIExpression()), !dbg !5457
  store i32 4, i32* %__UNIQUE_ID___x232, align 4, !dbg !5457
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y233, metadata !5458, metadata !DIExpression()), !dbg !5457
  %30 = load i32, i32* %count.addr, align 4, !dbg !5457
  store i32 %30, i32* %__UNIQUE_ID___y233, align 4, !dbg !5457
  %31 = load i32, i32* %__UNIQUE_ID___x232, align 4, !dbg !5457
  %32 = load i32, i32* %__UNIQUE_ID___y233, align 4, !dbg !5457
  %cmp18 = icmp ult i32 %31, %32, !dbg !5457
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !5457

cond.true20:                                      ; preds = %if.end
  %33 = load i32, i32* %__UNIQUE_ID___x232, align 4, !dbg !5457
  br label %cond.end22, !dbg !5457

cond.false21:                                     ; preds = %if.end
  %34 = load i32, i32* %__UNIQUE_ID___y233, align 4, !dbg !5457
  br label %cond.end22, !dbg !5457

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %33, %cond.true20 ], [ %34, %cond.false21 ], !dbg !5457
  store i32 %cond23, i32* %tmp17, align 4, !dbg !5457
  %35 = load i32, i32* %tmp17, align 4, !dbg !5457
  %36 = load i32, i32* %count.addr, align 4, !dbg !5459
  %sub24 = sub i32 %36, %35, !dbg !5459
  store i32 %sub24, i32* %count.addr, align 4, !dbg !5459
  store i32 4, i32* %pos.addr, align 4, !dbg !5460
  %37 = load i8*, i8** %con_buf.addr, align 8, !dbg !5461
  %add.ptr25 = getelementptr i8, i8* %37, i64 4, !dbg !5461
  store i8* %add.ptr25, i8** %con_buf.addr, align 8, !dbg !5461
  br label %if.end35, !dbg !5462

if.else:                                          ; preds = %entry
  %38 = load i32, i32* %pos.addr, align 4, !dbg !5463
  %and = and i32 %38, 1, !dbg !5465
  %tobool = icmp ne i32 %and, 0, !dbg !5465
  br i1 %tobool, label %if.then26, label %if.end34, !dbg !5466

if.then26:                                        ; preds = %if.else
  %39 = load i32*, i32** %skip.addr, align 8, !dbg !5467
  %40 = load i32, i32* %39, align 4, !dbg !5469
  %inc = add i32 %40, 1, !dbg !5469
  store i32 %inc, i32* %39, align 4, !dbg !5469
  %41 = load i32, i32* %count.addr, align 4, !dbg !5470
  %conv27 = zext i32 %41 to i64, !dbg !5470
  %cmp28 = icmp ult i64 %conv27, 4096, !dbg !5472
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !5473

if.then30:                                        ; preds = %if.then26
  %42 = load i32, i32* %count.addr, align 4, !dbg !5474
  %inc31 = add i32 %42, 1, !dbg !5474
  store i32 %inc31, i32* %count.addr, align 4, !dbg !5474
  br label %if.end33, !dbg !5475

if.else32:                                        ; preds = %if.then26
  %43 = load i32, i32* %filled, align 4, !dbg !5476
  %dec = add i32 %43, -1, !dbg !5476
  store i32 %dec, i32* %filled, align 4, !dbg !5476
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then30
  br label %if.end34, !dbg !5477

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %cond.end22
  %44 = load i32, i32* %count.addr, align 4, !dbg !5478
  %tobool36 = icmp ne i32 %44, 0, !dbg !5478
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5480

if.then37:                                        ; preds = %if.end35
  %45 = load i32, i32* %filled, align 4, !dbg !5481
  store i32 %45, i32* %retval, align 4, !dbg !5482
  br label %return, !dbg !5482

if.end38:                                         ; preds = %if.end35
  %46 = load i32, i32* %pos.addr, align 4, !dbg !5483
  %sub39 = sub i32 %46, 4, !dbg !5483
  store i32 %sub39, i32* %pos.addr, align 4, !dbg !5483
  %47 = load i32, i32* %pos.addr, align 4, !dbg !5484
  %div = udiv i32 %47, 2, !dbg !5484
  store i32 %div, i32* %pos.addr, align 4, !dbg !5484
  %48 = load i32, i32* %pos.addr, align 4, !dbg !5485
  %49 = load i32, i32* %maxcol, align 4, !dbg !5486
  %rem = urem i32 %48, %49, !dbg !5487
  store i32 %rem, i32* %col, align 4, !dbg !5488
  %50 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5489
  %51 = load i32, i32* %pos.addr, align 4, !dbg !5490
  %52 = load i8, i8* %viewed.addr, align 1, !dbg !5491
  %tobool40 = trunc i8 %52 to i1, !dbg !5491
  %call = call i16* @screen_pos(%struct.vc_data* %50, i32 %51, i1 zeroext %tobool40) #8, !dbg !5492
  store i16* %call, i16** %org, align 8, !dbg !5493
  %53 = load i32, i32* %maxcol, align 4, !dbg !5494
  %54 = load i32, i32* %col, align 4, !dbg !5495
  %sub41 = sub i32 %53, %54, !dbg !5496
  %55 = load i32, i32* %pos.addr, align 4, !dbg !5497
  %add42 = add i32 %55, %sub41, !dbg !5497
  store i32 %add42, i32* %pos.addr, align 4, !dbg !5497
  %56 = load i32, i32* %count.addr, align 4, !dbg !5498
  %add43 = add i32 %56, 1, !dbg !5499
  %div44 = udiv i32 %add43, 2, !dbg !5500
  store i32 %div44, i32* %count.addr, align 4, !dbg !5501
  %57 = load i8*, i8** %con_buf.addr, align 8, !dbg !5502
  %58 = bitcast i8* %57 to i16*, !dbg !5503
  store i16* %58, i16** %con_buf16, align 8, !dbg !5504
  br label %while.cond, !dbg !5505

while.cond:                                       ; preds = %if.end56, %if.end38
  %59 = load i32, i32* %count.addr, align 4, !dbg !5506
  %tobool45 = icmp ne i32 %59, 0, !dbg !5505
  br i1 %tobool45, label %while.body, label %while.end, !dbg !5505

while.body:                                       ; preds = %while.cond
  %60 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5507
  %61 = load i16*, i16** %org, align 8, !dbg !5509
  %incdec.ptr = getelementptr i16, i16* %61, i32 1, !dbg !5509
  store i16* %incdec.ptr, i16** %org, align 8, !dbg !5509
  %call46 = call zeroext i16 @vcs_scr_readw(%struct.vc_data* %60, i16* %61) #8, !dbg !5510
  %62 = load i16*, i16** %con_buf16, align 8, !dbg !5511
  %incdec.ptr47 = getelementptr i16, i16* %62, i32 1, !dbg !5511
  store i16* %incdec.ptr47, i16** %con_buf16, align 8, !dbg !5511
  store i16 %call46, i16* %62, align 2, !dbg !5512
  %63 = load i32, i32* %count.addr, align 4, !dbg !5513
  %dec48 = add i32 %63, -1, !dbg !5513
  store i32 %dec48, i32* %count.addr, align 4, !dbg !5513
  %64 = load i32, i32* %col, align 4, !dbg !5514
  %inc49 = add i32 %64, 1, !dbg !5514
  store i32 %inc49, i32* %col, align 4, !dbg !5514
  %65 = load i32, i32* %maxcol, align 4, !dbg !5516
  %cmp50 = icmp eq i32 %inc49, %65, !dbg !5517
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !5518

if.then52:                                        ; preds = %while.body
  %66 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5519
  %67 = load i32, i32* %pos.addr, align 4, !dbg !5521
  %68 = load i8, i8* %viewed.addr, align 1, !dbg !5522
  %tobool53 = trunc i8 %68 to i1, !dbg !5522
  %call54 = call i16* @screen_pos(%struct.vc_data* %66, i32 %67, i1 zeroext %tobool53) #8, !dbg !5523
  store i16* %call54, i16** %org, align 8, !dbg !5524
  store i32 0, i32* %col, align 4, !dbg !5525
  %69 = load i32, i32* %maxcol, align 4, !dbg !5526
  %70 = load i32, i32* %pos.addr, align 4, !dbg !5527
  %add55 = add i32 %70, %69, !dbg !5527
  store i32 %add55, i32* %pos.addr, align 4, !dbg !5527
  br label %if.end56, !dbg !5528

if.end56:                                         ; preds = %if.then52, %while.body
  br label %while.cond, !dbg !5505, !llvm.loop !5529

while.end:                                        ; preds = %while.cond
  %71 = load i32, i32* %filled, align 4, !dbg !5531
  store i32 %71, i32* %retval, align 4, !dbg !5532
  br label %return, !dbg !5532

return:                                           ; preds = %while.end, %if.then37
  %72 = load i32, i32* %retval, align 4, !dbg !5533
  ret i32 %72, !dbg !5533
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @vc_uniscr_check(%struct.vc_data*) #2

; Function Attrs: noredzone
declare dso_local void @vc_uniscr_copy_line(%struct.vc_data*, i8*, i1 zeroext, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i16* @screen_pos(%struct.vc_data*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @vcs_scr_readw(%struct.vc_data*, i16*) #2

; Function Attrs: noredzone
declare dso_local void @getconsxy(%struct.vc_data*, i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !5534 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5541, metadata !DIExpression()), !dbg !5543
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5543
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5544
  %tobool = icmp ne i32 %0, 0, !dbg !5544
  %lnot = xor i1 %tobool, true, !dbg !5544
  %lnot1 = xor i1 %lnot, true, !dbg !5544
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5544
  %conv = sext i32 %lnot.ext to i64, !dbg !5544
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5544
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5543

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5544

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5546

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5546
  %2 = load i64, i64* %count.addr, align 8, !dbg !5546
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %1, i64 %2) #8, !dbg !5546
  br label %do.body4, !dbg !5546

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5550

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5552

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5550

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5554, !srcloc !5556
  br label %do.end8, !dbg !5554

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !5557, !srcloc !5559
  br label %do.body9, !dbg !5550

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5560

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5550

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5546

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5562

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5546

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5546

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5543
  %tobool15 = icmp ne i32 %3, 0, !dbg !5543
  %lnot16 = xor i1 %tobool15, true, !dbg !5543
  %lnot18 = xor i1 %lnot16, true, !dbg !5543
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5543
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5543
  store i64 %conv20, i64* %tmp, align 8, !dbg !5544
  %4 = load i64, i64* %tmp, align 8, !dbg !5543
  ret void, !dbg !5564
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !5565 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  ret void, !dbg !5574
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i16* @vcs_write_buf(%struct.vc_data* %vc, i8* %con_buf, i32 %pos, i32 %count, i1 zeroext %viewed, i16** %org0) #0 !dbg !5575 {
entry:
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5579, metadata !DIExpression()), !dbg !5586
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !5595, metadata !DIExpression()), !dbg !5596
  %retval = alloca i16*, align 8
  %vc.addr = alloca %struct.vc_data*, align 8
  %con_buf.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org0.addr = alloca i16**, align 8
  %org = alloca i16*, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %c = alloca i8, align 1
  %header = alloca [4 x i8], align 1
  %w = alloca i16, align 2
  %tmp = alloca i16, align 2
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  store i8* %con_buf, i8** %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_buf.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, i8* %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %viewed.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store i16** %org0, i16*** %org0.addr, align 8
  call void @llvm.dbg.declare(metadata i16*** %org0.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  call void @llvm.dbg.declare(metadata i16** %org, metadata !5609, metadata !DIExpression()), !dbg !5610
  call void @llvm.dbg.declare(metadata i32* %col, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata i32* %maxcol, metadata !5613, metadata !DIExpression()), !dbg !5614
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5615
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5616
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5616
  store i32 %1, i32* %maxcol, align 4, !dbg !5614
  call void @llvm.dbg.declare(metadata i8* %c, metadata !5617, metadata !DIExpression()), !dbg !5618
  %2 = load i32, i32* %pos.addr, align 4, !dbg !5619
  %cmp = icmp ult i32 %2, 4, !dbg !5621
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5622

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [4 x i8]* %header, metadata !5623, metadata !DIExpression()), !dbg !5626
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5627
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %header, i64 0, i64 0, !dbg !5628
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 2, !dbg !5629
  call void @getconsxy(%struct.vc_data* %3, i8* %add.ptr) #8, !dbg !5630
  br label %while.cond, !dbg !5631

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %pos.addr, align 4, !dbg !5632
  %cmp1 = icmp ult i32 %4, 4, !dbg !5633
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5634

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %count.addr, align 4, !dbg !5635
  %cmp2 = icmp ugt i32 %5, 0, !dbg !5636
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !5637
  br i1 %6, label %while.body, label %while.end, !dbg !5631

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %count.addr, align 4, !dbg !5638
  %dec = add i32 %7, -1, !dbg !5638
  store i32 %dec, i32* %count.addr, align 4, !dbg !5638
  %8 = load i8*, i8** %con_buf.addr, align 8, !dbg !5640
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !5640
  store i8* %incdec.ptr, i8** %con_buf.addr, align 8, !dbg !5640
  %9 = load i8, i8* %8, align 1, !dbg !5641
  %10 = load i32, i32* %pos.addr, align 4, !dbg !5642
  %inc = add i32 %10, 1, !dbg !5642
  store i32 %inc, i32* %pos.addr, align 4, !dbg !5642
  %idxprom = zext i32 %10 to i64, !dbg !5643
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %header, i64 0, i64 %idxprom, !dbg !5643
  store i8 %9, i8* %arrayidx, align 1, !dbg !5644
  br label %while.cond, !dbg !5631, !llvm.loop !5645

while.end:                                        ; preds = %land.end
  %11 = load i8, i8* %viewed.addr, align 1, !dbg !5647
  %tobool = trunc i8 %11 to i1, !dbg !5647
  br i1 %tobool, label %if.end, label %if.then3, !dbg !5649

if.then3:                                         ; preds = %while.end
  %12 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5650
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %header, i64 0, i64 0, !dbg !5651
  %add.ptr5 = getelementptr i8, i8* %arraydecay4, i64 2, !dbg !5652
  call void @putconsxy(%struct.vc_data* %12, i8* %add.ptr5) #8, !dbg !5653
  br label %if.end, !dbg !5653

if.end:                                           ; preds = %if.then3, %while.end
  br label %if.end6, !dbg !5654

if.end6:                                          ; preds = %if.end, %entry
  %13 = load i32, i32* %count.addr, align 4, !dbg !5655
  %tobool7 = icmp ne i32 %13, 0, !dbg !5655
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5657

if.then8:                                         ; preds = %if.end6
  store i16* null, i16** %retval, align 8, !dbg !5658
  br label %return, !dbg !5658

if.end9:                                          ; preds = %if.end6
  %14 = load i32, i32* %pos.addr, align 4, !dbg !5659
  %sub = sub i32 %14, 4, !dbg !5659
  store i32 %sub, i32* %pos.addr, align 4, !dbg !5659
  %15 = load i32, i32* %pos.addr, align 4, !dbg !5660
  %div = udiv i32 %15, 2, !dbg !5661
  %16 = load i32, i32* %maxcol, align 4, !dbg !5662
  %rem = urem i32 %div, %16, !dbg !5663
  store i32 %rem, i32* %col, align 4, !dbg !5664
  %17 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5665
  %18 = load i32, i32* %pos.addr, align 4, !dbg !5666
  %div10 = udiv i32 %18, 2, !dbg !5667
  %19 = load i8, i8* %viewed.addr, align 1, !dbg !5668
  %tobool11 = trunc i8 %19 to i1, !dbg !5668
  %call = call i16* @screen_pos(%struct.vc_data* %17, i32 %div10, i1 zeroext %tobool11) #8, !dbg !5669
  store i16* %call, i16** %org, align 8, !dbg !5670
  %20 = load i16**, i16*** %org0.addr, align 8, !dbg !5671
  store i16* %call, i16** %20, align 8, !dbg !5672
  %21 = load i32, i32* %pos.addr, align 4, !dbg !5673
  %and = and i32 %21, 1, !dbg !5675
  %tobool12 = icmp ne i32 %and, 0, !dbg !5675
  br i1 %tobool12, label %if.then13, label %if.end28, !dbg !5676

if.then13:                                        ; preds = %if.end9
  %22 = load i32, i32* %count.addr, align 4, !dbg !5677
  %dec14 = add i32 %22, -1, !dbg !5677
  store i32 %dec14, i32* %count.addr, align 4, !dbg !5677
  %23 = load i8*, i8** %con_buf.addr, align 8, !dbg !5679
  %incdec.ptr15 = getelementptr i8, i8* %23, i32 1, !dbg !5679
  store i8* %incdec.ptr15, i8** %con_buf.addr, align 8, !dbg !5679
  %24 = load i8, i8* %23, align 1, !dbg !5680
  store i8 %24, i8* %c, align 1, !dbg !5681
  %25 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5682
  %26 = load i8, i8* %c, align 1, !dbg !5683
  %27 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5684
  %28 = load i16*, i16** %org, align 8, !dbg !5685
  %call16 = call zeroext i16 @vcs_scr_readw(%struct.vc_data* %27, i16* %28) #8, !dbg !5686
  %conv = trunc i16 %call16 to i8, !dbg !5686
  %call17 = call zeroext i16 @vc_compile_le16(i8 zeroext %26, i8 zeroext %conv) #8, !dbg !5687
  %29 = load i16*, i16** %org, align 8, !dbg !5688
  call void @vcs_scr_writew(%struct.vc_data* %25, i16 zeroext %call17, i16* %29) #8, !dbg !5689
  %30 = load i16*, i16** %org, align 8, !dbg !5690
  %incdec.ptr18 = getelementptr i16, i16* %30, i32 1, !dbg !5690
  store i16* %incdec.ptr18, i16** %org, align 8, !dbg !5690
  %31 = load i32, i32* %pos.addr, align 4, !dbg !5691
  %inc19 = add i32 %31, 1, !dbg !5691
  store i32 %inc19, i32* %pos.addr, align 4, !dbg !5691
  %32 = load i32, i32* %col, align 4, !dbg !5692
  %inc20 = add i32 %32, 1, !dbg !5692
  store i32 %inc20, i32* %col, align 4, !dbg !5692
  %33 = load i32, i32* %maxcol, align 4, !dbg !5694
  %cmp21 = icmp eq i32 %inc20, %33, !dbg !5695
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !5696

if.then23:                                        ; preds = %if.then13
  %34 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5697
  %35 = load i32, i32* %pos.addr, align 4, !dbg !5699
  %div24 = udiv i32 %35, 2, !dbg !5700
  %36 = load i8, i8* %viewed.addr, align 1, !dbg !5701
  %tobool25 = trunc i8 %36 to i1, !dbg !5701
  %call26 = call i16* @screen_pos(%struct.vc_data* %34, i32 %div24, i1 zeroext %tobool25) #8, !dbg !5702
  store i16* %call26, i16** %org, align 8, !dbg !5703
  store i32 0, i32* %col, align 4, !dbg !5704
  br label %if.end27, !dbg !5705

if.end27:                                         ; preds = %if.then23, %if.then13
  br label %if.end28, !dbg !5706

if.end28:                                         ; preds = %if.end27, %if.end9
  %37 = load i32, i32* %pos.addr, align 4, !dbg !5707
  %div29 = udiv i32 %37, 2, !dbg !5707
  store i32 %div29, i32* %pos.addr, align 4, !dbg !5707
  %38 = load i32, i32* %maxcol, align 4, !dbg !5708
  %39 = load i32, i32* %col, align 4, !dbg !5709
  %sub30 = sub i32 %38, %39, !dbg !5710
  %40 = load i32, i32* %pos.addr, align 4, !dbg !5711
  %add = add i32 %40, %sub30, !dbg !5711
  store i32 %add, i32* %pos.addr, align 4, !dbg !5711
  br label %while.cond31, !dbg !5712

while.cond31:                                     ; preds = %if.end46, %if.end28
  %41 = load i32, i32* %count.addr, align 4, !dbg !5713
  %cmp32 = icmp ugt i32 %41, 1, !dbg !5714
  br i1 %cmp32, label %while.body34, label %while.end47, !dbg !5712

while.body34:                                     ; preds = %while.cond31
  call void @llvm.dbg.declare(metadata i16* %w, metadata !5715, metadata !DIExpression()), !dbg !5716
  %42 = load i8*, i8** %con_buf.addr, align 8, !dbg !5717
  %43 = bitcast i8* %42 to i16*, !dbg !5717
  %44 = bitcast i16* %43 to i8*, !dbg !5717
  store i8* %44, i8** %p.addr.i, align 8
  %45 = load i8*, i8** %p.addr.i, align 8, !dbg !5718
  %46 = bitcast i8* %45 to i16*, !dbg !5719
  store i16* %46, i16** %p.addr.i.i, align 8
  %47 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5720
  %48 = load i16, i16* %47, align 2, !dbg !5721
  store i16 %48, i16* %tmp, align 2, !dbg !5722
  %49 = load i16, i16* %tmp, align 2, !dbg !5717
  store i16 %49, i16* %w, align 2, !dbg !5723
  %50 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5724
  %51 = load i16, i16* %w, align 2, !dbg !5725
  %52 = load i16*, i16** %org, align 8, !dbg !5726
  %incdec.ptr36 = getelementptr i16, i16* %52, i32 1, !dbg !5726
  store i16* %incdec.ptr36, i16** %org, align 8, !dbg !5726
  call void @vcs_scr_writew(%struct.vc_data* %50, i16 zeroext %51, i16* %52) #8, !dbg !5727
  %53 = load i8*, i8** %con_buf.addr, align 8, !dbg !5728
  %add.ptr37 = getelementptr i8, i8* %53, i64 2, !dbg !5728
  store i8* %add.ptr37, i8** %con_buf.addr, align 8, !dbg !5728
  %54 = load i32, i32* %count.addr, align 4, !dbg !5729
  %sub38 = sub i32 %54, 2, !dbg !5729
  store i32 %sub38, i32* %count.addr, align 4, !dbg !5729
  %55 = load i32, i32* %col, align 4, !dbg !5730
  %inc39 = add i32 %55, 1, !dbg !5730
  store i32 %inc39, i32* %col, align 4, !dbg !5730
  %56 = load i32, i32* %maxcol, align 4, !dbg !5732
  %cmp40 = icmp eq i32 %inc39, %56, !dbg !5733
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !5734

if.then42:                                        ; preds = %while.body34
  %57 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5735
  %58 = load i32, i32* %pos.addr, align 4, !dbg !5737
  %59 = load i8, i8* %viewed.addr, align 1, !dbg !5738
  %tobool43 = trunc i8 %59 to i1, !dbg !5738
  %call44 = call i16* @screen_pos(%struct.vc_data* %57, i32 %58, i1 zeroext %tobool43) #8, !dbg !5739
  store i16* %call44, i16** %org, align 8, !dbg !5740
  store i32 0, i32* %col, align 4, !dbg !5741
  %60 = load i32, i32* %maxcol, align 4, !dbg !5742
  %61 = load i32, i32* %pos.addr, align 4, !dbg !5743
  %add45 = add i32 %61, %60, !dbg !5743
  store i32 %add45, i32* %pos.addr, align 4, !dbg !5743
  br label %if.end46, !dbg !5744

if.end46:                                         ; preds = %if.then42, %while.body34
  br label %while.cond31, !dbg !5712, !llvm.loop !5745

while.end47:                                      ; preds = %while.cond31
  %62 = load i32, i32* %count.addr, align 4, !dbg !5747
  %tobool48 = icmp ne i32 %62, 0, !dbg !5747
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !5749

if.then49:                                        ; preds = %while.end47
  %63 = load i16*, i16** %org, align 8, !dbg !5750
  store i16* %63, i16** %retval, align 8, !dbg !5751
  br label %return, !dbg !5751

if.end50:                                         ; preds = %while.end47
  %64 = load i8*, i8** %con_buf.addr, align 8, !dbg !5752
  %incdec.ptr51 = getelementptr i8, i8* %64, i32 1, !dbg !5752
  store i8* %incdec.ptr51, i8** %con_buf.addr, align 8, !dbg !5752
  %65 = load i8, i8* %64, align 1, !dbg !5753
  store i8 %65, i8* %c, align 1, !dbg !5754
  %66 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5755
  %67 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5756
  %68 = load i16*, i16** %org, align 8, !dbg !5757
  %call52 = call zeroext i16 @vcs_scr_readw(%struct.vc_data* %67, i16* %68) #8, !dbg !5758
  %conv53 = zext i16 %call52 to i32, !dbg !5758
  %shr = ashr i32 %conv53, 8, !dbg !5759
  %conv54 = trunc i32 %shr to i8, !dbg !5758
  %69 = load i8, i8* %c, align 1, !dbg !5760
  %call55 = call zeroext i16 @vc_compile_le16(i8 zeroext %conv54, i8 zeroext %69) #8, !dbg !5761
  %70 = load i16*, i16** %org, align 8, !dbg !5762
  call void @vcs_scr_writew(%struct.vc_data* %66, i16 zeroext %call55, i16* %70) #8, !dbg !5763
  %71 = load i16*, i16** %org, align 8, !dbg !5764
  store i16* %71, i16** %retval, align 8, !dbg !5765
  br label %return, !dbg !5765

return:                                           ; preds = %if.end50, %if.then49, %if.then8
  %72 = load i16*, i16** %retval, align 8, !dbg !5766
  ret i16* %72, !dbg !5766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i16* @vcs_write_buf_noattr(%struct.vc_data* %vc, i8* %con_buf, i32 %pos, i32 %count, i1 zeroext %viewed, i16** %org0) #0 !dbg !5767 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %con_buf.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %viewed.addr = alloca i8, align 1
  %org0.addr = alloca i16**, align 8
  %org = alloca i16*, align 8
  %col = alloca i32, align 4
  %maxcol = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store i8* %con_buf, i8** %con_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_buf.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  %frombool = zext i1 %viewed to i8
  store i8 %frombool, i8* %viewed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %viewed.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  store i16** %org0, i16*** %org0.addr, align 8
  call void @llvm.dbg.declare(metadata i16*** %org0.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  call void @llvm.dbg.declare(metadata i16** %org, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata i32* %col, metadata !5782, metadata !DIExpression()), !dbg !5783
  call void @llvm.dbg.declare(metadata i32* %maxcol, metadata !5784, metadata !DIExpression()), !dbg !5785
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5786
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5787
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5787
  store i32 %1, i32* %maxcol, align 4, !dbg !5785
  %2 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5788
  %3 = load i32, i32* %pos.addr, align 4, !dbg !5789
  %4 = load i8, i8* %viewed.addr, align 1, !dbg !5790
  %tobool = trunc i8 %4 to i1, !dbg !5790
  %call = call i16* @screen_pos(%struct.vc_data* %2, i32 %3, i1 zeroext %tobool) #8, !dbg !5791
  store i16* %call, i16** %org, align 8, !dbg !5792
  %5 = load i16**, i16*** %org0.addr, align 8, !dbg !5793
  store i16* %call, i16** %5, align 8, !dbg !5794
  %6 = load i32, i32* %pos.addr, align 4, !dbg !5795
  %7 = load i32, i32* %maxcol, align 4, !dbg !5796
  %rem = urem i32 %6, %7, !dbg !5797
  store i32 %rem, i32* %col, align 4, !dbg !5798
  %8 = load i32, i32* %maxcol, align 4, !dbg !5799
  %9 = load i32, i32* %col, align 4, !dbg !5800
  %sub = sub i32 %8, %9, !dbg !5801
  %10 = load i32, i32* %pos.addr, align 4, !dbg !5802
  %add = add i32 %10, %sub, !dbg !5802
  store i32 %add, i32* %pos.addr, align 4, !dbg !5802
  br label %while.cond, !dbg !5803

while.cond:                                       ; preds = %if.end, %entry
  %11 = load i32, i32* %count.addr, align 4, !dbg !5804
  %cmp = icmp ugt i32 %11, 0, !dbg !5805
  br i1 %cmp, label %while.body, label %while.end, !dbg !5803

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %c, metadata !5806, metadata !DIExpression()), !dbg !5808
  %12 = load i8*, i8** %con_buf.addr, align 8, !dbg !5809
  %incdec.ptr = getelementptr i8, i8* %12, i32 1, !dbg !5809
  store i8* %incdec.ptr, i8** %con_buf.addr, align 8, !dbg !5809
  %13 = load i8, i8* %12, align 1, !dbg !5810
  store i8 %13, i8* %c, align 1, !dbg !5808
  %14 = load i32, i32* %count.addr, align 4, !dbg !5811
  %dec = add i32 %14, -1, !dbg !5811
  store i32 %dec, i32* %count.addr, align 4, !dbg !5811
  %15 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5812
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5813
  %17 = load i16*, i16** %org, align 8, !dbg !5814
  %call1 = call zeroext i16 @vcs_scr_readw(%struct.vc_data* %16, i16* %17) #8, !dbg !5815
  %conv = zext i16 %call1 to i32, !dbg !5815
  %and = and i32 %conv, 65280, !dbg !5816
  %18 = load i8, i8* %c, align 1, !dbg !5817
  %conv2 = zext i8 %18 to i32, !dbg !5817
  %or = or i32 %and, %conv2, !dbg !5818
  %conv3 = trunc i32 %or to i16, !dbg !5819
  %19 = load i16*, i16** %org, align 8, !dbg !5820
  call void @vcs_scr_writew(%struct.vc_data* %15, i16 zeroext %conv3, i16* %19) #8, !dbg !5821
  %20 = load i16*, i16** %org, align 8, !dbg !5822
  %incdec.ptr4 = getelementptr i16, i16* %20, i32 1, !dbg !5822
  store i16* %incdec.ptr4, i16** %org, align 8, !dbg !5822
  %21 = load i32, i32* %col, align 4, !dbg !5823
  %inc = add i32 %21, 1, !dbg !5823
  store i32 %inc, i32* %col, align 4, !dbg !5823
  %22 = load i32, i32* %maxcol, align 4, !dbg !5825
  %cmp5 = icmp eq i32 %inc, %22, !dbg !5826
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5827

if.then:                                          ; preds = %while.body
  %23 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5828
  %24 = load i32, i32* %pos.addr, align 4, !dbg !5830
  %25 = load i8, i8* %viewed.addr, align 1, !dbg !5831
  %tobool7 = trunc i8 %25 to i1, !dbg !5831
  %call8 = call i16* @screen_pos(%struct.vc_data* %23, i32 %24, i1 zeroext %tobool7) #8, !dbg !5832
  store i16* %call8, i16** %org, align 8, !dbg !5833
  store i32 0, i32* %col, align 4, !dbg !5834
  %26 = load i32, i32* %maxcol, align 4, !dbg !5835
  %27 = load i32, i32* %pos.addr, align 4, !dbg !5836
  %add9 = add i32 %27, %26, !dbg !5836
  store i32 %add9, i32* %pos.addr, align 4, !dbg !5836
  br label %if.end, !dbg !5837

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !5803, !llvm.loop !5838

while.end:                                        ; preds = %while.cond
  %28 = load i16*, i16** %org, align 8, !dbg !5840
  ret i16* %28, !dbg !5841
}

; Function Attrs: noredzone
declare dso_local void @update_region(%struct.vc_data*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @vcs_scr_updated(%struct.vc_data*) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @putconsxy(%struct.vc_data*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @vcs_scr_writew(%struct.vc_data*, i16 zeroext, i16*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @vc_compile_le16(i8 zeroext %hi, i8 zeroext %lo) #0 !dbg !5842 {
entry:
  %hi.addr = alloca i8, align 1
  %lo.addr = alloca i8, align 1
  store i8 %hi, i8* %hi.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hi.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  store i8 %lo, i8* %lo.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lo.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  %0 = load i8, i8* %hi.addr, align 1, !dbg !5849
  %conv = zext i8 %0 to i32, !dbg !5849
  %shl = shl i32 %conv, 8, !dbg !5850
  %1 = load i8, i8* %lo.addr, align 1, !dbg !5851
  %conv1 = zext i8 %1 to i32, !dbg !5851
  %or = or i32 %shl, %conv1, !dbg !5852
  %conv2 = trunc i32 %or to i16, !dbg !5853
  ret i16 %conv2, !dbg !5854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %file) #0 !dbg !4050 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !5855, metadata !DIExpression()), !dbg !5860
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5862, metadata !DIExpression()), !dbg !5864
  %retval = alloca %struct.vcs_poll_data*, align 8
  %file.addr = alloca %struct.file*, align 8
  %poll = alloca %struct.vcs_poll_data*, align 8
  %kill = alloca %struct.vcs_poll_data*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !5868, metadata !DIExpression()), !dbg !5869
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5870
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5871
  %1 = load i8*, i8** %private_data, align 8, !dbg !5871
  %2 = bitcast i8* %1 to %struct.vcs_poll_data*, !dbg !5870
  store %struct.vcs_poll_data* %2, %struct.vcs_poll_data** %poll, align 8, !dbg !5869
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %kill, metadata !5872, metadata !DIExpression()), !dbg !5873
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %kill, align 8, !dbg !5873
  %3 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5874
  %tobool = icmp ne %struct.vcs_poll_data* %3, null, !dbg !5874
  br i1 %tobool, label %if.then, label %if.end, !dbg !5876

if.then:                                          ; preds = %entry
  %4 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5877
  store %struct.vcs_poll_data* %4, %struct.vcs_poll_data** %retval, align 8, !dbg !5878
  br label %return, !dbg !5878

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 56, i32 3264) #8, !dbg !5879
  %5 = bitcast i8* %call to %struct.vcs_poll_data*, !dbg !5879
  store %struct.vcs_poll_data* %5, %struct.vcs_poll_data** %poll, align 8, !dbg !5880
  %6 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5881
  %tobool1 = icmp ne %struct.vcs_poll_data* %6, null, !dbg !5881
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5883

if.then2:                                         ; preds = %if.end
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %retval, align 8, !dbg !5884
  br label %return, !dbg !5884

if.end3:                                          ; preds = %if.end
  %7 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5885
  %call4 = call %struct.inode* @file_inode(%struct.file* %7) #8, !dbg !5885
  %call5 = call i32 @iminor(%struct.inode* %call4) #8, !dbg !5885
  %and = and i32 %call5, 63, !dbg !5885
  %8 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5886
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %8, i32 0, i32 1, !dbg !5887
  store i32 %and, i32* %cons_num, align 8, !dbg !5888
  br label %do.body, !dbg !5889

do.body:                                          ; preds = %if.end3
  %9 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5890
  %waitq = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %9, i32 0, i32 3, !dbg !5890
  call void @__init_waitqueue_head(%struct.wait_queue_head* %waitq, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @vcs_poll_data_get.__key) #8, !dbg !5890
  br label %do.end, !dbg !5890

do.end:                                           ; preds = %do.body
  %10 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5892
  %notifier = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %10, i32 0, i32 0, !dbg !5893
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %notifier, i32 0, i32 0, !dbg !5894
  store i32 (%struct.notifier_block*, i64, i8*)* @vcs_notifier, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !5895
  %11 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5896
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %11, i32 0, i32 2, !dbg !5897
  store i32 4, i32* %event, align 4, !dbg !5898
  %12 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5899
  %notifier6 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %12, i32 0, i32 0, !dbg !5901
  %call7 = call i32 @register_vt_notifier(%struct.notifier_block* %notifier6) #8, !dbg !5902
  %cmp = icmp ne i32 %call7, 0, !dbg !5903
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5904

if.then8:                                         ; preds = %do.end
  %13 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5905
  %14 = bitcast %struct.vcs_poll_data* %13 to i8*, !dbg !5905
  call void @kfree(i8* %14) #8, !dbg !5907
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %retval, align 8, !dbg !5908
  br label %return, !dbg !5908

if.end9:                                          ; preds = %do.end
  %15 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5909
  %f_lock = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 4, !dbg !5910
  store %struct.spinlock* %f_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5911, !srcloc !5913
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5914
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5914
  %rlock.i = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !5914
  %18 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5916
  %private_data10 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 15, !dbg !5918
  %19 = load i8*, i8** %private_data10, align 8, !dbg !5918
  %tobool11 = icmp ne i8* %19, null, !dbg !5916
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !5919

if.then12:                                        ; preds = %if.end9
  %20 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5920
  %21 = bitcast %struct.vcs_poll_data* %20 to i8*, !dbg !5920
  %22 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5922
  %private_data13 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 15, !dbg !5923
  store i8* %21, i8** %private_data13, align 8, !dbg !5924
  br label %if.end15, !dbg !5925

if.else:                                          ; preds = %if.end9
  %23 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5926
  store %struct.vcs_poll_data* %23, %struct.vcs_poll_data** %kill, align 8, !dbg !5928
  %24 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5929
  %private_data14 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 15, !dbg !5930
  %25 = load i8*, i8** %private_data14, align 8, !dbg !5930
  %26 = bitcast i8* %25 to %struct.vcs_poll_data*, !dbg !5929
  store %struct.vcs_poll_data* %26, %struct.vcs_poll_data** %poll, align 8, !dbg !5931
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %27 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5932
  %f_lock16 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 4, !dbg !5933
  store %struct.spinlock* %f_lock16, %struct.spinlock** %lock.addr.i20, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5934, !srcloc !5936
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !5937
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !5937
  %rlock.i21 = bitcast %union.anon.1* %29 to %struct.raw_spinlock*, !dbg !5937
  %30 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %kill, align 8, !dbg !5939
  %tobool17 = icmp ne %struct.vcs_poll_data* %30, null, !dbg !5939
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5941

if.then18:                                        ; preds = %if.end15
  %31 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %kill, align 8, !dbg !5942
  call void @vcs_poll_data_free(%struct.vcs_poll_data* %31) #8, !dbg !5943
  br label %if.end19, !dbg !5943

if.end19:                                         ; preds = %if.then18, %if.end15
  %32 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !5944
  store %struct.vcs_poll_data* %32, %struct.vcs_poll_data** %retval, align 8, !dbg !5945
  br label %return, !dbg !5945

return:                                           ; preds = %if.end19, %if.then8, %if.then2, %if.then
  %33 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %retval, align 8, !dbg !5946
  ret %struct.vcs_poll_data* %33, !dbg !5946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !5947 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !5954, metadata !DIExpression()), !dbg !5955
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5956
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !5956
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5958

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5959
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !5960
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !5960
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !5959
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5961

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5962
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !5962
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5963

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5964
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !5965
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !5965
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5966
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5967
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5968
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #8, !dbg !5964
  br label %if.end, !dbg !5964

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5970 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5973, metadata !DIExpression()), !dbg !5977
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5983, metadata !DIExpression()), !dbg !5984
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5985, metadata !DIExpression()), !dbg !5986
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5987, metadata !DIExpression()), !dbg !5988
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5989, metadata !DIExpression()), !dbg !5993
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5995, metadata !DIExpression()), !dbg !5999
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6001, metadata !DIExpression()), !dbg !6005
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6010, metadata !DIExpression()), !dbg !6011
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6012, metadata !DIExpression()), !dbg !6013
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6014, metadata !DIExpression()), !dbg !6015
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6016, metadata !DIExpression()), !dbg !6017
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6018, metadata !DIExpression()), !dbg !6019
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6020, metadata !DIExpression()), !dbg !6021
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6022, metadata !DIExpression()), !dbg !6023
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6024, metadata !DIExpression()), !dbg !6025
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  %0 = load i64, i64* %size.addr, align 8, !dbg !6030
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6031
  %or = or i32 %1, 256, !dbg !6032
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6033
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !6034
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6035

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6036
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6037
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6038

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6039
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6040
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6041
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !6042
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6019
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6043
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6044
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6045
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6046
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6047
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6048
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !6049
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6049
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6049
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6049
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6049
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6050
  br label %kmalloc.exit, !dbg !6050

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6051
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6052
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6052
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6054

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6055
  br label %kmalloc_index.exit.i, !dbg !6055

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6056
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6058
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6059

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6060
  br label %kmalloc_index.exit.i, !dbg !6060

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6061
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6063
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6064

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6065
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6066
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6067

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6068
  br label %kmalloc_index.exit.i, !dbg !6068

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6069
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6071
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6072

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6073
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6074
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6075

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6076
  br label %kmalloc_index.exit.i, !dbg !6076

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6077
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6079
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6080

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6081
  br label %kmalloc_index.exit.i, !dbg !6081

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6082
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6084
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6085

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6086
  br label %kmalloc_index.exit.i, !dbg !6086

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6087
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6089
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6090

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6091
  br label %kmalloc_index.exit.i, !dbg !6091

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6092
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6094
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6095

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6096
  br label %kmalloc_index.exit.i, !dbg !6096

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6097
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6099
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6100

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6101
  br label %kmalloc_index.exit.i, !dbg !6101

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6102
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6104
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6105

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6106
  br label %kmalloc_index.exit.i, !dbg !6106

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6107
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6109
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6110

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6111
  br label %kmalloc_index.exit.i, !dbg !6111

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6112
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6114
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6115

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6116
  br label %kmalloc_index.exit.i, !dbg !6116

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6117
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6119
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6120

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6121
  br label %kmalloc_index.exit.i, !dbg !6121

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6122
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6124
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6125

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6126
  br label %kmalloc_index.exit.i, !dbg !6126

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6127
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6129
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6130

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6131
  br label %kmalloc_index.exit.i, !dbg !6131

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6132
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6134
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6135

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6136
  br label %kmalloc_index.exit.i, !dbg !6136

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6137
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6139
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6140

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6141
  br label %kmalloc_index.exit.i, !dbg !6141

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6142
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6144
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6145

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6146
  br label %kmalloc_index.exit.i, !dbg !6146

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6147
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6149
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6150

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6151
  br label %kmalloc_index.exit.i, !dbg !6151

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6152
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6154
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6155

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6156
  br label %kmalloc_index.exit.i, !dbg !6156

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6157
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6159
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6160

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6161
  br label %kmalloc_index.exit.i, !dbg !6161

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6162
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6164
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6165

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6166
  br label %kmalloc_index.exit.i, !dbg !6166

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6167
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6169
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6170

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6171
  br label %kmalloc_index.exit.i, !dbg !6171

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6172
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6174
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6175

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6176
  br label %kmalloc_index.exit.i, !dbg !6176

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6177
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6179
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6180

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6181
  br label %kmalloc_index.exit.i, !dbg !6181

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6182
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6184
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6185

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6186
  br label %kmalloc_index.exit.i, !dbg !6186

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6187
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6189
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6190

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6191
  br label %kmalloc_index.exit.i, !dbg !6191

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6192
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6194
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6195

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6196
  br label %kmalloc_index.exit.i, !dbg !6196

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6197, !srcloc !6200
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 224) #10, !dbg !6201, !srcloc !6204
  unreachable, !dbg !6205

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6206
  store i32 %45, i32* %index.i, align 4, !dbg !6207
  %46 = load i32, i32* %index.i, align 4, !dbg !6208
  %tobool.i = icmp ne i32 %46, 0, !dbg !6208
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6210

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6211
  br label %kmalloc.exit, !dbg !6211

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6212
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6213
  %and.i.i = and i32 %48, 17, !dbg !6213
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6213
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6213
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6213
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6213
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6215

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6216
  br label %kmalloc_type.exit.i, !dbg !6216

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6217
  %and2.i.i = and i32 %49, 1, !dbg !6218
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6217
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6217
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6217
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6219
  br label %kmalloc_type.exit.i, !dbg !6219

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6220
  %idxprom.i = zext i32 %51 to i64, !dbg !6221
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6221
  %52 = load i32, i32* %index.i, align 4, !dbg !6222
  %idxprom6.i = zext i32 %52 to i64, !dbg !6221
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6221
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6221
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6223
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6224
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6225
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6226
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6227
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6227
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6227
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6227
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6227
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5988
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6228
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6229
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6230
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6231
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6232
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6233
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6234
  store i8* %62, i8** %retval.i, align 8, !dbg !6235
  br label %kmalloc.exit, !dbg !6235

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6236
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6237
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6238
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6238
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6238
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6238
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6238
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6239
  br label %kmalloc.exit, !dbg !6239

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6240
  ret i8* %65, !dbg !6241
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vcs_notifier(%struct.notifier_block* %nb, i64 %code, i8* %_param) #0 !dbg !6242 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %_param.addr = alloca i8*, align 8
  %param = alloca %struct.vt_notifier_param*, align 8
  %vc = alloca %struct.vc_data*, align 8
  %poll = alloca %struct.vcs_poll_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.vcs_poll_data*, align 8
  %currcons = alloca i32, align 4
  %fa_band = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !6245, metadata !DIExpression()), !dbg !6246
  store i8* %_param, i8** %_param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_param.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  call void @llvm.dbg.declare(metadata %struct.vt_notifier_param** %param, metadata !6249, metadata !DIExpression()), !dbg !6256
  %0 = load i8*, i8** %_param.addr, align 8, !dbg !6257
  %1 = bitcast i8* %0 to %struct.vt_notifier_param*, !dbg !6257
  store %struct.vt_notifier_param* %1, %struct.vt_notifier_param** %param, align 8, !dbg !6256
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc, metadata !6258, metadata !DIExpression()), !dbg !6259
  %2 = load %struct.vt_notifier_param*, %struct.vt_notifier_param** %param, align 8, !dbg !6260
  %vc1 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %2, i32 0, i32 0, !dbg !6261
  %3 = load %struct.vc_data*, %struct.vc_data** %vc1, align 8, !dbg !6261
  store %struct.vc_data* %3, %struct.vc_data** %vc, align 8, !dbg !6259
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll, metadata !6262, metadata !DIExpression()), !dbg !6263
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6264, metadata !DIExpression()), !dbg !6266
  %4 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !6266
  %5 = bitcast %struct.notifier_block* %4 to i8*, !dbg !6266
  store i8* %5, i8** %__mptr, align 8, !dbg !6266
  br label %do.body, !dbg !6266

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6267

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !6266
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !6266
  %7 = bitcast i8* %add.ptr to %struct.vcs_poll_data*, !dbg !6266
  store %struct.vcs_poll_data* %7, %struct.vcs_poll_data** %tmp, align 8, !dbg !6267
  %8 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %tmp, align 8, !dbg !6266
  store %struct.vcs_poll_data* %8, %struct.vcs_poll_data** %poll, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i32* %currcons, metadata !6269, metadata !DIExpression()), !dbg !6270
  %9 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !6271
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %9, i32 0, i32 1, !dbg !6272
  %10 = load i32, i32* %cons_num, align 8, !dbg !6272
  store i32 %10, i32* %currcons, align 4, !dbg !6270
  call void @llvm.dbg.declare(metadata i32* %fa_band, metadata !6273, metadata !DIExpression()), !dbg !6274
  %11 = load i64, i64* %code.addr, align 8, !dbg !6275
  switch i64 %11, label %sw.default [
    i64 4, label %sw.bb
    i64 2, label %sw.bb2
  ], !dbg !6276

sw.bb:                                            ; preds = %do.end
  store i32 5, i32* %fa_band, align 4, !dbg !6277
  br label %sw.epilog, !dbg !6279

sw.bb2:                                           ; preds = %do.end
  store i32 6, i32* %fa_band, align 4, !dbg !6280
  br label %sw.epilog, !dbg !6281

sw.default:                                       ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !6282
  br label %return, !dbg !6282

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %12 = load i32, i32* %currcons, align 4, !dbg !6283
  %cmp = icmp eq i32 %12, 0, !dbg !6285
  br i1 %cmp, label %if.then, label %if.else, !dbg !6286

if.then:                                          ; preds = %sw.epilog
  %13 = load i32, i32* @fg_console, align 4, !dbg !6287
  store i32 %13, i32* %currcons, align 4, !dbg !6288
  br label %if.end, !dbg !6289

if.else:                                          ; preds = %sw.epilog
  %14 = load i32, i32* %currcons, align 4, !dbg !6290
  %dec = add i32 %14, -1, !dbg !6290
  store i32 %dec, i32* %currcons, align 4, !dbg !6290
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %currcons, align 4, !dbg !6291
  %16 = load %struct.vc_data*, %struct.vc_data** %vc, align 8, !dbg !6293
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 3, !dbg !6294
  %17 = load i16, i16* %vc_num, align 8, !dbg !6294
  %conv = zext i16 %17 to i32, !dbg !6293
  %cmp3 = icmp ne i32 %15, %conv, !dbg !6295
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6296

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6297
  br label %return, !dbg !6297

if.end6:                                          ; preds = %if.end
  %18 = load i64, i64* %code.addr, align 8, !dbg !6298
  %conv7 = trunc i64 %18 to i32, !dbg !6298
  %19 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !6299
  %event = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %19, i32 0, i32 2, !dbg !6300
  store i32 %conv7, i32* %event, align 4, !dbg !6301
  %20 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !6302
  %waitq = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %20, i32 0, i32 3, !dbg !6302
  call void @__wake_up(%struct.wait_queue_head* %waitq, i32 1, i32 1, i8* null) #8, !dbg !6302
  %21 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll, align 8, !dbg !6303
  %fasync = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %21, i32 0, i32 4, !dbg !6304
  %22 = load i32, i32* %fa_band, align 4, !dbg !6305
  call void @kill_fasync(%struct.fasync_struct** %fasync, i32 29, i32 %22) #8, !dbg !6306
  store i32 1, i32* %retval, align 4, !dbg !6307
  br label %return, !dbg !6307

return:                                           ; preds = %if.end6, %if.then5, %sw.default
  %23 = load i32, i32* %retval, align 4, !dbg !6308
  ret i32 %23, !dbg !6308
}

; Function Attrs: noredzone
declare dso_local i32 @register_vt_notifier(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vcs_poll_data_free(%struct.vcs_poll_data* %poll) #0 !dbg !6309 {
entry:
  %poll.addr = alloca %struct.vcs_poll_data*, align 8
  store %struct.vcs_poll_data* %poll, %struct.vcs_poll_data** %poll.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vcs_poll_data** %poll.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  %0 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll.addr, align 8, !dbg !6314
  %notifier = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %0, i32 0, i32 0, !dbg !6315
  %call = call i32 @unregister_vt_notifier(%struct.notifier_block* %notifier) #8, !dbg !6316
  %1 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %poll.addr, align 8, !dbg !6317
  %2 = bitcast %struct.vcs_poll_data* %1 to i8*, !dbg !6317
  call void @kfree(i8* %2) #8, !dbg !6318
  ret void, !dbg !6319
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6320 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6324, metadata !DIExpression()), !dbg !6329
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6331, metadata !DIExpression()), !dbg !6332
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load i64, i64* %size.addr, align 8, !dbg !6335
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6337
  br i1 %1, label %if.then, label %if.end447, !dbg !6338

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6339
  %tobool = icmp ne i64 %2, 0, !dbg !6339
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6342

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6343
  br label %return, !dbg !6343

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6344
  %cmp = icmp ult i64 %3, 4096, !dbg !6346
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6347

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6348
  br label %return, !dbg !6348

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub = sub i64 %4, 1, !dbg !6349
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6349
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6349

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub4 = sub i64 %6, 1, !dbg !6349
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6349
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6349

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub6 = sub i64 %8, 1, !dbg !6349
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6349
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6349

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6349

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub9 = sub i64 %9, 1, !dbg !6349
  %and = and i64 %sub9, -9223372036854775808, !dbg !6349
  %tobool10 = icmp ne i64 %and, 0, !dbg !6349
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6349

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6349

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub13 = sub i64 %10, 1, !dbg !6349
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6349
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6349
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6349

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6349

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub18 = sub i64 %11, 1, !dbg !6349
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6349
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6349
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6349

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6349

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub23 = sub i64 %12, 1, !dbg !6349
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6349
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6349
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6349

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6349

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub28 = sub i64 %13, 1, !dbg !6349
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6349
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6349
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6349

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6349

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub33 = sub i64 %14, 1, !dbg !6349
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6349
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6349
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6349

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6349

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub38 = sub i64 %15, 1, !dbg !6349
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6349
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6349
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6349

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6349

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub43 = sub i64 %16, 1, !dbg !6349
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6349
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6349
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6349

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6349

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub48 = sub i64 %17, 1, !dbg !6349
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6349
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6349
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6349

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6349

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub53 = sub i64 %18, 1, !dbg !6349
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6349
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6349
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6349

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6349

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub58 = sub i64 %19, 1, !dbg !6349
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6349
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6349
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6349

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6349

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub63 = sub i64 %20, 1, !dbg !6349
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6349
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6349
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6349

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6349

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub68 = sub i64 %21, 1, !dbg !6349
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6349
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6349
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6349

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6349

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub73 = sub i64 %22, 1, !dbg !6349
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6349
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6349
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6349

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6349

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub78 = sub i64 %23, 1, !dbg !6349
  %and79 = and i64 %sub78, 562949953421312, !dbg !6349
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6349
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6349

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6349

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub83 = sub i64 %24, 1, !dbg !6349
  %and84 = and i64 %sub83, 281474976710656, !dbg !6349
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6349
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6349

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6349

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub88 = sub i64 %25, 1, !dbg !6349
  %and89 = and i64 %sub88, 140737488355328, !dbg !6349
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6349
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6349

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6349

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub93 = sub i64 %26, 1, !dbg !6349
  %and94 = and i64 %sub93, 70368744177664, !dbg !6349
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6349
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6349

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6349

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub98 = sub i64 %27, 1, !dbg !6349
  %and99 = and i64 %sub98, 35184372088832, !dbg !6349
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6349
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6349

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6349

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub103 = sub i64 %28, 1, !dbg !6349
  %and104 = and i64 %sub103, 17592186044416, !dbg !6349
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6349
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6349

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6349

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub108 = sub i64 %29, 1, !dbg !6349
  %and109 = and i64 %sub108, 8796093022208, !dbg !6349
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6349
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6349

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6349

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub113 = sub i64 %30, 1, !dbg !6349
  %and114 = and i64 %sub113, 4398046511104, !dbg !6349
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6349
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6349

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6349

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub118 = sub i64 %31, 1, !dbg !6349
  %and119 = and i64 %sub118, 2199023255552, !dbg !6349
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6349
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6349

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6349

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub123 = sub i64 %32, 1, !dbg !6349
  %and124 = and i64 %sub123, 1099511627776, !dbg !6349
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6349
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6349

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6349

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub128 = sub i64 %33, 1, !dbg !6349
  %and129 = and i64 %sub128, 549755813888, !dbg !6349
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6349
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6349

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6349

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub133 = sub i64 %34, 1, !dbg !6349
  %and134 = and i64 %sub133, 274877906944, !dbg !6349
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6349
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6349

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6349

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub138 = sub i64 %35, 1, !dbg !6349
  %and139 = and i64 %sub138, 137438953472, !dbg !6349
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6349
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6349

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6349

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub143 = sub i64 %36, 1, !dbg !6349
  %and144 = and i64 %sub143, 68719476736, !dbg !6349
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6349
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6349

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6349

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub148 = sub i64 %37, 1, !dbg !6349
  %and149 = and i64 %sub148, 34359738368, !dbg !6349
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6349
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6349

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6349

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub153 = sub i64 %38, 1, !dbg !6349
  %and154 = and i64 %sub153, 17179869184, !dbg !6349
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6349
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6349

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6349

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub158 = sub i64 %39, 1, !dbg !6349
  %and159 = and i64 %sub158, 8589934592, !dbg !6349
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6349
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6349

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6349

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub163 = sub i64 %40, 1, !dbg !6349
  %and164 = and i64 %sub163, 4294967296, !dbg !6349
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6349
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6349

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6349

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub168 = sub i64 %41, 1, !dbg !6349
  %and169 = and i64 %sub168, 2147483648, !dbg !6349
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6349
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6349

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6349

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub173 = sub i64 %42, 1, !dbg !6349
  %and174 = and i64 %sub173, 1073741824, !dbg !6349
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6349
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6349

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6349

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub178 = sub i64 %43, 1, !dbg !6349
  %and179 = and i64 %sub178, 536870912, !dbg !6349
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6349
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6349

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6349

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub183 = sub i64 %44, 1, !dbg !6349
  %and184 = and i64 %sub183, 268435456, !dbg !6349
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6349
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6349

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6349

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub188 = sub i64 %45, 1, !dbg !6349
  %and189 = and i64 %sub188, 134217728, !dbg !6349
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6349
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6349

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6349

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub193 = sub i64 %46, 1, !dbg !6349
  %and194 = and i64 %sub193, 67108864, !dbg !6349
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6349
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6349

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6349

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub198 = sub i64 %47, 1, !dbg !6349
  %and199 = and i64 %sub198, 33554432, !dbg !6349
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6349
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6349

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6349

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub203 = sub i64 %48, 1, !dbg !6349
  %and204 = and i64 %sub203, 16777216, !dbg !6349
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6349
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6349

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6349

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub208 = sub i64 %49, 1, !dbg !6349
  %and209 = and i64 %sub208, 8388608, !dbg !6349
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6349
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6349

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6349

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub213 = sub i64 %50, 1, !dbg !6349
  %and214 = and i64 %sub213, 4194304, !dbg !6349
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6349
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6349

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6349

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub218 = sub i64 %51, 1, !dbg !6349
  %and219 = and i64 %sub218, 2097152, !dbg !6349
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6349
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6349

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6349

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub223 = sub i64 %52, 1, !dbg !6349
  %and224 = and i64 %sub223, 1048576, !dbg !6349
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6349
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6349

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6349

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub228 = sub i64 %53, 1, !dbg !6349
  %and229 = and i64 %sub228, 524288, !dbg !6349
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6349
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6349

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6349

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub233 = sub i64 %54, 1, !dbg !6349
  %and234 = and i64 %sub233, 262144, !dbg !6349
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6349
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6349

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6349

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub238 = sub i64 %55, 1, !dbg !6349
  %and239 = and i64 %sub238, 131072, !dbg !6349
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6349
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6349

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6349

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub243 = sub i64 %56, 1, !dbg !6349
  %and244 = and i64 %sub243, 65536, !dbg !6349
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6349
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6349

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6349

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub248 = sub i64 %57, 1, !dbg !6349
  %and249 = and i64 %sub248, 32768, !dbg !6349
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6349
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6349

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6349

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub253 = sub i64 %58, 1, !dbg !6349
  %and254 = and i64 %sub253, 16384, !dbg !6349
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6349
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6349

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6349

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub258 = sub i64 %59, 1, !dbg !6349
  %and259 = and i64 %sub258, 8192, !dbg !6349
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6349
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6349

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6349

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub263 = sub i64 %60, 1, !dbg !6349
  %and264 = and i64 %sub263, 4096, !dbg !6349
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6349
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6349

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6349

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub268 = sub i64 %61, 1, !dbg !6349
  %and269 = and i64 %sub268, 2048, !dbg !6349
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6349
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6349

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6349

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub273 = sub i64 %62, 1, !dbg !6349
  %and274 = and i64 %sub273, 1024, !dbg !6349
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6349
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6349

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6349

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub278 = sub i64 %63, 1, !dbg !6349
  %and279 = and i64 %sub278, 512, !dbg !6349
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6349
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6349

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6349

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub283 = sub i64 %64, 1, !dbg !6349
  %and284 = and i64 %sub283, 256, !dbg !6349
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6349
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6349

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6349

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub288 = sub i64 %65, 1, !dbg !6349
  %and289 = and i64 %sub288, 128, !dbg !6349
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6349
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6349

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6349

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub293 = sub i64 %66, 1, !dbg !6349
  %and294 = and i64 %sub293, 64, !dbg !6349
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6349
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6349

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6349

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub298 = sub i64 %67, 1, !dbg !6349
  %and299 = and i64 %sub298, 32, !dbg !6349
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6349
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6349

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6349

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub303 = sub i64 %68, 1, !dbg !6349
  %and304 = and i64 %sub303, 16, !dbg !6349
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6349
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6349

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6349

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub308 = sub i64 %69, 1, !dbg !6349
  %and309 = and i64 %sub308, 8, !dbg !6349
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6349
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6349

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6349

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub313 = sub i64 %70, 1, !dbg !6349
  %and314 = and i64 %sub313, 4, !dbg !6349
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6349
  %71 = zext i1 %tobool315 to i64, !dbg !6349
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6349
  br label %cond.end, !dbg !6349

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6349
  br label %cond.end317, !dbg !6349

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6349
  br label %cond.end319, !dbg !6349

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6349
  br label %cond.end321, !dbg !6349

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6349
  br label %cond.end323, !dbg !6349

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6349
  br label %cond.end325, !dbg !6349

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6349
  br label %cond.end327, !dbg !6349

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6349
  br label %cond.end329, !dbg !6349

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6349
  br label %cond.end331, !dbg !6349

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6349
  br label %cond.end333, !dbg !6349

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6349
  br label %cond.end335, !dbg !6349

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6349
  br label %cond.end337, !dbg !6349

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6349
  br label %cond.end339, !dbg !6349

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6349
  br label %cond.end341, !dbg !6349

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6349
  br label %cond.end343, !dbg !6349

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6349
  br label %cond.end345, !dbg !6349

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6349
  br label %cond.end347, !dbg !6349

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6349
  br label %cond.end349, !dbg !6349

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6349
  br label %cond.end351, !dbg !6349

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6349
  br label %cond.end353, !dbg !6349

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6349
  br label %cond.end355, !dbg !6349

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6349
  br label %cond.end357, !dbg !6349

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6349
  br label %cond.end359, !dbg !6349

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6349
  br label %cond.end361, !dbg !6349

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6349
  br label %cond.end363, !dbg !6349

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6349
  br label %cond.end365, !dbg !6349

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6349
  br label %cond.end367, !dbg !6349

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6349
  br label %cond.end369, !dbg !6349

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6349
  br label %cond.end371, !dbg !6349

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6349
  br label %cond.end373, !dbg !6349

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6349
  br label %cond.end375, !dbg !6349

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6349
  br label %cond.end377, !dbg !6349

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6349
  br label %cond.end379, !dbg !6349

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6349
  br label %cond.end381, !dbg !6349

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6349
  br label %cond.end383, !dbg !6349

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6349
  br label %cond.end385, !dbg !6349

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6349
  br label %cond.end387, !dbg !6349

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6349
  br label %cond.end389, !dbg !6349

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6349
  br label %cond.end391, !dbg !6349

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6349
  br label %cond.end393, !dbg !6349

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6349
  br label %cond.end395, !dbg !6349

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6349
  br label %cond.end397, !dbg !6349

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6349
  br label %cond.end399, !dbg !6349

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6349
  br label %cond.end401, !dbg !6349

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6349
  br label %cond.end403, !dbg !6349

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6349
  br label %cond.end405, !dbg !6349

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6349
  br label %cond.end407, !dbg !6349

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6349
  br label %cond.end409, !dbg !6349

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6349
  br label %cond.end411, !dbg !6349

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6349
  br label %cond.end413, !dbg !6349

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6349
  br label %cond.end415, !dbg !6349

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6349
  br label %cond.end417, !dbg !6349

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6349
  br label %cond.end419, !dbg !6349

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6349
  br label %cond.end421, !dbg !6349

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6349
  br label %cond.end423, !dbg !6349

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6349
  br label %cond.end425, !dbg !6349

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6349
  br label %cond.end427, !dbg !6349

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6349
  br label %cond.end429, !dbg !6349

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6349
  br label %cond.end431, !dbg !6349

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6349
  br label %cond.end433, !dbg !6349

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6349
  br label %cond.end435, !dbg !6349

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6349
  br label %cond.end437, !dbg !6349

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6349
  br label %cond.end440, !dbg !6349

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6349

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6349
  br label %cond.end444, !dbg !6349

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6349
  %sub443 = sub i64 %72, 1, !dbg !6349
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6349
  br label %cond.end444, !dbg !6349

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6349
  %sub446 = sub i32 %cond445, 12, !dbg !6350
  %add = add i32 %sub446, 1, !dbg !6351
  store i32 %add, i32* %retval, align 4, !dbg !6352
  br label %return, !dbg !6352

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6353
  %dec = add i64 %73, -1, !dbg !6353
  store i64 %dec, i64* %size.addr, align 8, !dbg !6353
  %74 = load i64, i64* %size.addr, align 8, !dbg !6354
  %shr = lshr i64 %74, 12, !dbg !6354
  store i64 %shr, i64* %size.addr, align 8, !dbg !6354
  %75 = load i64, i64* %size.addr, align 8, !dbg !6355
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6332
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6356
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6357
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !6356, !srcloc !6358
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6356
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6359
  %add.i = add i32 %79, 1, !dbg !6360
  store i32 %add.i, i32* %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6362
  ret i32 %80, !dbg !6362
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6363 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6324, metadata !DIExpression()), !dbg !6367
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6331, metadata !DIExpression()), !dbg !6369
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  %0 = load i64, i64* %n.addr, align 8, !dbg !6372
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6369
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6373
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6374
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !6373, !srcloc !6358
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6373
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6375
  %add.i = add i32 %4, 1, !dbg !6376
  %sub = sub i32 %add.i, 1, !dbg !6377
  ret i32 %sub, !dbg !6378
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6379 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6383, metadata !DIExpression()), !dbg !6384
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6389, metadata !DIExpression()), !dbg !6390
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6391
  ret i8* %0, !dbg !6392
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kill_fasync(%struct.fasync_struct**, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @unregister_vt_notifier(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local i32 @vc_cons_allocated(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, %struct.fasync_struct**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone noreturn }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4053, !4054, !4055, !4056}
!llvm.ident = !{!4057}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vc_class", scope: !2, file: !3, line: 782, type: !2305, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !4040, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/vt/vc_screen.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !25, !30, !36, !42, !49, !57, !63, !70, !76, !85, !93, !100, !105, !110}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !20, line: 546, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !64, line: 59, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!69 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !71, line: 54, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !77, line: 296, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !86, line: 9, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vc_intensity", file: !94, line: 26, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/console_struct.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "VCI_HALF_BRIGHT", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "VCI_NORMAL", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "VCI_BOLD", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "VCI_MASK", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_scroll", file: !101, line: 27, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "SM_UP", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "SM_DOWN", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !111, line: 305, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!117 = !{!118, !119, !122, !7, !126, !128, !130, !131, !125, !136, !137, !138, !134, !141, !142}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !121, line: 76, flags: DIFlagFwdDecl)
!121 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !129, line: 148, baseType: !7)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !133, line: 19, baseType: !134)
!133 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !135, line: 24, baseType: !136)
!135 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !140, line: 29, baseType: !134)
!140 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !140, line: 52, baseType: !7)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vcs_poll_data", file: !3, line: 76, size: 448, elements: !144)
!144 = !{!145, !157, !158, !159, !186}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !143, file: !3, line: 77, baseType: !146, size: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !147, line: 54, size: 192, elements: !148)
!147 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !155, !156}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !146, file: !147, line: 55, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !147, line: 51, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!125, !154, !130, !118}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 56, baseType: !154, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !146, file: !147, line: 57, baseType: !125, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cons_num", scope: !143, file: !3, line: 78, baseType: !7, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !143, file: !3, line: 79, baseType: !125, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !143, file: !3, line: 80, baseType: !160, size: 128, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !161, line: 40, baseType: !162)
!161 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !161, line: 36, size: 128, elements: !163)
!163 = !{!164, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !162, file: !161, line: 37, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 83, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 71, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 72, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 72, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 73, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 20, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !166, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 25, elements: !179)
!179 = !{}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !162, file: !161, line: 38, baseType: !181, size: 128)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !129, line: 178, size: 128, elements: !182)
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !129, line: 179, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !129, line: 179, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !143, file: !3, line: 81, baseType: !187, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !77, line: 1314, size: 320, elements: !189)
!189 = !{!190, !198, !199, !200, !201, !4039}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !188, file: !77, line: 1315, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !192, line: 20, baseType: !193)
!192 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 11, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !193, file: !192, line: 12, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !177, line: 33, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 31, elements: !179)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !188, file: !77, line: 1316, baseType: !125, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !188, file: !77, line: 1317, baseType: !125, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !188, file: !77, line: 1318, baseType: !187, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !188, file: !77, line: 1319, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !77, line: 916, size: 1856, align: 32, elements: !204)
!204 = !{!205, !223, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4022, !4023, !4032, !4033, !4034, !4035, !4036, !4037, !4038}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !203, file: !77, line: 920, baseType: !206, size: 128)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !77, line: 917, size: 128, elements: !207)
!207 = !{!208, !214}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !206, file: !77, line: 918, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !210, line: 58, size: 64, elements: !211)
!210 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !210, line: 59, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !206, file: !77, line: 919, baseType: !215, size: 128, align: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !129, line: 216, size: 128, align: 64, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !129, line: 217, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !215, file: !129, line: 218, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !218}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !203, file: !77, line: 921, baseType: !224, size: 128, offset: 128)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !225, line: 8, size: 128, elements: !226)
!225 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !224, file: !225, line: 9, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !230, line: 18, flags: DIFlagFwdDecl)
!230 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !224, file: !225, line: 10, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !230, line: 89, size: 1536, elements: !234)
!234 = !{!235, !236, !246, !254, !255, !276, !3973, !3975, !3987, !3988, !3989, !3990, !3991, !3996, !3997, !3998}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !233, file: !230, line: 91, baseType: !7, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !233, file: !230, line: 92, baseType: !237, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !238, line: 277, baseType: !239)
!238 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !238, line: 277, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !239, file: !238, line: 277, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !238, line: 70, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !238, line: 65, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !243, file: !238, line: 66, baseType: !7, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !233, file: !230, line: 93, baseType: !247, size: 128, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !248, line: 38, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !248, line: 39, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !247, file: !248, line: 39, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !233, file: !230, line: 94, baseType: !232, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !233, file: !230, line: 95, baseType: !256, size: 128, offset: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !230, line: 47, size: 128, elements: !257)
!257 = !{!258, !272}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !230, line: 48, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !230, line: 48, size: 64, elements: !260)
!260 = !{!261, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !230, line: 49, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !230, line: 49, size: 64, elements: !263)
!263 = !{!264, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !262, file: !230, line: 50, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !133, line: 21, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !135, line: 27, baseType: !7)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !262, file: !230, line: 50, baseType: !265, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !259, file: !230, line: 52, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !133, line: 23, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !135, line: 31, baseType: !271)
!271 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !230, line: 54, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !233, file: !230, line: 96, baseType: !277, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !77, line: 610, size: 4224, elements: !279)
!279 = !{!280, !282, !283, !292, !299, !300, !457, !3908, !3909, !3910, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3951, !3959, !3960, !3961, !3969, !3970, !3971, !3972}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !278, file: !77, line: 611, baseType: !281, size: 16)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !129, line: 19, baseType: !136)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !278, file: !77, line: 612, baseType: !136, size: 16, offset: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !278, file: !77, line: 613, baseType: !284, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !285, line: 23, baseType: !286)
!285 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 21, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !286, file: !285, line: 22, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !129, line: 32, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !291, line: 49, baseType: !7)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !278, file: !77, line: 614, baseType: !293, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !285, line: 28, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 26, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !285, line: 27, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !129, line: 33, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !291, line: 50, baseType: !7)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !278, file: !77, line: 615, baseType: !7, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !278, file: !77, line: 622, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !77, line: 1864, size: 1536, align: 512, elements: !304)
!304 = !{!305, !309, !324, !328, !334, !338, !344, !348, !352, !356, !360, !361, !367, !371, !398, !427, !437, !443, !448, !452, !453}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !303, file: !77, line: 1865, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!232, !277, !232, !7}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !303, file: !77, line: 1866, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !232, !277, !315}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !317, line: 10, size: 128, elements: !318)
!317 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !316, file: !317, line: 11, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !118}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !316, file: !317, line: 12, baseType: !118, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !303, file: !77, line: 1867, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!125, !277, !125}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !303, file: !77, line: 1868, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !277, !125}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !77, line: 581, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !303, file: !77, line: 1870, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!125, !232, !126, !125}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !303, file: !77, line: 1872, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!125, !277, !232, !281, !342}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 30, baseType: !343)
!343 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !303, file: !77, line: 1873, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!125, !232, !277, !232}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !303, file: !77, line: 1874, baseType: !349, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!125, !277, !232}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !303, file: !77, line: 1875, baseType: !353, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!125, !277, !232, !313}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !303, file: !77, line: 1876, baseType: !357, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!125, !277, !232, !281}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !303, file: !77, line: 1877, baseType: !349, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !303, file: !77, line: 1878, baseType: !362, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!125, !277, !232, !281, !365}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !129, line: 16, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !129, line: 13, baseType: !265)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !303, file: !77, line: 1879, baseType: !368, size: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!125, !277, !232, !277, !232, !7}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !303, file: !77, line: 1881, baseType: !372, size: 64, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!125, !232, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !77, line: 219, size: 640, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !386, !395, !396, !397}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !376, file: !77, line: 220, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !376, file: !77, line: 221, baseType: !281, size: 16, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !376, file: !77, line: 222, baseType: !284, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !376, file: !77, line: 223, baseType: !293, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !376, file: !77, line: 224, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !129, line: 46, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !291, line: 88, baseType: !385)
!385 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !376, file: !77, line: 225, baseType: !387, size: 128, offset: 192)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !388, line: 13, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !387, file: !388, line: 14, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !388, line: 8, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !135, line: 30, baseType: !385)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !387, file: !388, line: 15, baseType: !394, size: 64, offset: 64)
!394 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !376, file: !77, line: 226, baseType: !387, size: 128, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !376, file: !77, line: 227, baseType: !387, size: 128, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !376, file: !77, line: 234, baseType: !202, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !303, file: !77, line: 1882, baseType: !399, size: 64, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!125, !402, !404, !265, !7}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !406, line: 22, size: 1152, elements: !407)
!406 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409, !410, !411, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !405, file: !406, line: 23, baseType: !265, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !405, file: !406, line: 24, baseType: !281, size: 16, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !405, file: !406, line: 25, baseType: !7, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !405, file: !406, line: 26, baseType: !412, size: 32, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 104, baseType: !265)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !405, file: !406, line: 27, baseType: !269, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !405, file: !406, line: 28, baseType: !269, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !405, file: !406, line: 37, baseType: !269, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !405, file: !406, line: 38, baseType: !365, size: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !405, file: !406, line: 39, baseType: !365, size: 32, offset: 352)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !405, file: !406, line: 40, baseType: !284, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !405, file: !406, line: 41, baseType: !293, size: 32, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !406, line: 42, baseType: !383, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !405, file: !406, line: 43, baseType: !387, size: 128, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !405, file: !406, line: 44, baseType: !387, size: 128, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !405, file: !406, line: 45, baseType: !387, size: 128, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !405, file: !406, line: 46, baseType: !387, size: 128, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !405, file: !406, line: 47, baseType: !269, size: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !405, file: !406, line: 48, baseType: !269, size: 64, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !303, file: !77, line: 1883, baseType: !428, size: 64, offset: 960)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !232, !126, !434}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 60, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !291, line: 73, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !291, line: 15, baseType: !394)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 55, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 72, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !291, line: 16, baseType: !130)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !303, file: !77, line: 1884, baseType: !438, size: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!125, !277, !441, !269, !269}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !77, line: 50, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !303, file: !77, line: 1886, baseType: !444, size: 64, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!125, !277, !447, !125}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !303, file: !77, line: 1887, baseType: !449, size: 64, offset: 1152)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!125, !277, !232, !202, !7, !281}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !303, file: !77, line: 1890, baseType: !357, size: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !303, file: !77, line: 1891, baseType: !454, size: 64, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!125, !277, !332, !125}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !278, file: !77, line: 623, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !77, line: 1416, size: 9472, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !514, !3515, !3597, !3680, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3696, !3700, !3701, !3704, !3705, !3708, !3709, !3710, !3751, !3778, !3779, !3780, !3781, !3782, !3783, !3786, !3788, !3795, !3796, !3798, !3799, !3800, !3859, !3860, !3875, !3876, !3877, !3878, !3879, !3882, !3883, !3884, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !459, file: !77, line: 1417, baseType: !181, size: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !459, file: !77, line: 1418, baseType: !365, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !459, file: !77, line: 1419, baseType: !275, size: 8, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !459, file: !77, line: 1420, baseType: !130, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !459, file: !77, line: 1421, baseType: !383, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !459, file: !77, line: 1422, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !77, line: 2228, size: 576, elements: !469)
!469 = !{!470, !471, !472, !478, !482, !486, !490, !491, !492, !502, !505, !506, !507, !511, !512, !513}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !77, line: 2229, baseType: !313, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !468, file: !77, line: 2230, baseType: !125, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !468, file: !77, line: 2238, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!125, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !77, line: 69, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !468, file: !77, line: 2239, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !77, line: 70, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !468, file: !77, line: 2240, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!232, !467, !125, !313, !118}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !468, file: !77, line: 2242, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !458}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !468, file: !77, line: 2243, baseType: !119, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !77, line: 2244, baseType: !467, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !468, file: !77, line: 2245, baseType: !493, size: 64, offset: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !129, line: 182, size: 64, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !493, file: !129, line: 183, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !129, line: 186, size: 128, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !129, line: 187, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !497, file: !129, line: 187, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !468, file: !77, line: 2247, baseType: !503, offset: 576)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !504, line: 187, elements: !179)
!504 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !468, file: !77, line: 2248, baseType: !503, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !468, file: !77, line: 2249, baseType: !503, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !468, file: !77, line: 2250, baseType: !508, offset: 576)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 3)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !468, file: !77, line: 2252, baseType: !503, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !468, file: !77, line: 2253, baseType: !503, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !468, file: !77, line: 2254, baseType: !503, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !459, file: !77, line: 1423, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !77, line: 1935, size: 1472, elements: !518)
!518 = !{!519, !523, !527, !528, !532, !538, !542, !543, !544, !548, !552, !553, !554, !555, !561, !566, !567, !623, !624, !625, !626, !3499, !3514}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !517, file: !77, line: 1936, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!277, !458}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !517, file: !77, line: 1937, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !277}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !517, file: !77, line: 1938, baseType: !524, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !517, file: !77, line: 1940, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !277, !125}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !517, file: !77, line: 1941, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!125, !277, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !77, line: 289, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !517, file: !77, line: 1942, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!125, !277}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !517, file: !77, line: 1943, baseType: !524, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !517, file: !77, line: 1944, baseType: !487, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !517, file: !77, line: 1945, baseType: !545, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!125, !458, !125}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !517, file: !77, line: 1946, baseType: !549, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!125, !458}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !517, file: !77, line: 1947, baseType: !549, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !517, file: !77, line: 1948, baseType: !549, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !517, file: !77, line: 1949, baseType: !549, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !517, file: !77, line: 1950, baseType: !556, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!125, !232, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !77, line: 57, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !517, file: !77, line: 1951, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!125, !458, !565, !126}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !517, file: !77, line: 1952, baseType: !487, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !517, file: !77, line: 1954, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!125, !571, !232}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !573, line: 16, size: 896, elements: !574)
!573 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !596, !618, !619, !622}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !572, file: !573, line: 17, baseType: !126, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !573, line: 18, baseType: !434, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !572, file: !573, line: 19, baseType: !434, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 20, baseType: !434, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !572, file: !573, line: 21, baseType: !434, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !572, file: !573, line: 22, baseType: !383, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !572, file: !573, line: 23, baseType: !383, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !573, line: 24, baseType: !583, size: 192, offset: 448)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !584, line: 53, size: 192, elements: !585)
!584 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !594, !595}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !583, file: !584, line: 54, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !588, line: 13, baseType: !589)
!588 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !129, line: 175, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 173, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !590, file: !129, line: 174, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !133, line: 22, baseType: !392)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !583, file: !584, line: 55, baseType: !165, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !583, file: !584, line: 59, baseType: !181, size: 128, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !572, file: !573, line: 25, baseType: !597, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !573, line: 31, size: 256, elements: !600)
!600 = !{!601, !606, !610, !614}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !599, file: !573, line: 32, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!118, !571, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !599, file: !573, line: 33, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !571, !118}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !573, line: 34, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!118, !571, !118, !605}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !599, file: !573, line: 35, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!125, !571, !118}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !572, file: !573, line: 26, baseType: !125, size: 32, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !572, file: !573, line: 27, baseType: !620, size: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !572, file: !573, line: 28, baseType: !118, size: 64, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !517, file: !77, line: 1955, baseType: !568, size: 64, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !517, file: !77, line: 1956, baseType: !568, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !517, file: !77, line: 1957, baseType: !568, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !517, file: !77, line: 1963, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!125, !458, !630, !128}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !632, line: 68, size: 512, align: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !635, !3491, !3498}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !632, line: 69, baseType: !130, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 77, baseType: !636, size: 320, offset: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 77, size: 320, elements: !637)
!637 = !{!638, !816, !821, !849, !857, !863, !3422, !3490}
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 78, baseType: !639, size: 320)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 78, size: 320, elements: !640)
!640 = !{!641, !642, !814, !815}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !639, file: !632, line: 84, baseType: !181, size: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !639, file: !632, line: 86, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !77, line: 451, size: 1216, align: 64, elements: !645)
!645 = !{!646, !647, !654, !655, !660, !675, !684, !685, !686, !687, !807, !808, !811, !812, !813}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !644, file: !77, line: 452, baseType: !277, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !644, file: !77, line: 453, baseType: !648, size: 128, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !649, line: 292, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !648, file: !649, line: 293, baseType: !165)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !648, file: !649, line: 295, baseType: !128, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !648, file: !649, line: 296, baseType: !118, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !644, file: !77, line: 454, baseType: !128, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !644, file: !77, line: 455, baseType: !656, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !129, line: 168, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 166, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !657, file: !129, line: 167, baseType: !125, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !644, file: !77, line: 460, baseType: !661, size: 128, offset: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !662, line: 125, size: 128, elements: !663)
!662 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!663 = !{!664, !674}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !661, file: !662, line: 126, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !662, line: 31, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !665, file: !662, line: 32, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !662, line: 24, size: 192, align: 64, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !669, file: !662, line: 25, baseType: !130, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !669, file: !662, line: 26, baseType: !668, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !669, file: !662, line: 27, baseType: !668, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !661, file: !662, line: 127, baseType: !668, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !644, file: !77, line: 461, baseType: !676, size: 256, offset: 384)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !677, line: 35, size: 256, elements: !678)
!677 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !680, !681, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !676, file: !677, line: 36, baseType: !587, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !676, file: !677, line: 42, baseType: !587, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !676, file: !677, line: 46, baseType: !682, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 29, baseType: !173)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !676, file: !677, line: 47, baseType: !181, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !644, file: !77, line: 462, baseType: !130, size: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !644, file: !77, line: 463, baseType: !130, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !644, file: !77, line: 464, baseType: !130, size: 64, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !644, file: !77, line: 465, baseType: !688, size: 64, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !77, line: 367, size: 1408, elements: !691)
!691 = !{!692, !696, !700, !704, !708, !712, !718, !724, !728, !733, !737, !741, !745, !771, !775, !781, !782, !783, !787, !792, !796, !803}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !690, file: !77, line: 368, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!125, !630, !536}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !690, file: !77, line: 369, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!125, !202, !630}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !690, file: !77, line: 372, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!125, !643, !536}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !690, file: !77, line: 375, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!125, !630}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !690, file: !77, line: 381, baseType: !709, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!125, !202, !643, !184, !7}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !690, file: !77, line: 383, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !77, line: 290, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !690, file: !77, line: 385, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!125, !202, !643, !383, !7, !7, !722, !723}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !690, file: !77, line: 388, baseType: !725, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!125, !202, !643, !383, !7, !7, !630, !118}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !690, file: !77, line: 393, baseType: !729, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!732, !643, !732}
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !129, line: 125, baseType: !269)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !690, file: !77, line: 394, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !630, !7, !7}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !690, file: !77, line: 395, baseType: !738, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!125, !630, !128}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !690, file: !77, line: 396, baseType: !742, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !630}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !690, file: !77, line: 397, baseType: !746, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!431, !749, !769}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !77, line: 320, size: 384, elements: !751)
!751 = !{!752, !753, !754, !758, !759, !760, !761, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !750, file: !77, line: 321, baseType: !202, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !750, file: !77, line: 326, baseType: !383, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !750, file: !77, line: 327, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !749, !394, !394}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !750, file: !77, line: 328, baseType: !118, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !750, file: !77, line: 329, baseType: !125, size: 32, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !750, file: !77, line: 330, baseType: !132, size: 16, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !750, file: !77, line: 331, baseType: !132, size: 16, offset: 304)
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !77, line: 332, baseType: !763, size: 64, offset: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !77, line: 332, size: 64, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !763, file: !77, line: 333, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !763, file: !77, line: 334, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !77, line: 334, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !77, line: 64, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !690, file: !77, line: 402, baseType: !772, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!125, !643, !630, !630, !12}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !690, file: !77, line: 404, baseType: !776, size: 64, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!342, !630, !779}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !780, line: 305, baseType: !7)
!780 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!781 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !690, file: !77, line: 405, baseType: !742, size: 64, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !690, file: !77, line: 406, baseType: !705, size: 64, offset: 1024)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !690, file: !77, line: 407, baseType: !784, size: 64, offset: 1088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!125, !630, !130, !130}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !690, file: !77, line: 409, baseType: !788, size: 64, offset: 1152)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !630, !791, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !690, file: !77, line: 410, baseType: !793, size: 64, offset: 1216)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!125, !643, !630}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !690, file: !77, line: 413, baseType: !797, size: 64, offset: 1280)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!125, !800, !202, !802}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !77, line: 61, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !690, file: !77, line: 415, baseType: !804, size: 64, offset: 1344)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !202}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !77, line: 466, baseType: !130, size: 64, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !644, file: !77, line: 467, baseType: !809, size: 32, offset: 960)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !810, line: 8, baseType: !265)
!810 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !644, file: !77, line: 468, baseType: !165, offset: 992)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !644, file: !77, line: 469, baseType: !181, size: 128, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !644, file: !77, line: 470, baseType: !118, size: 64, offset: 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !639, file: !632, line: 87, baseType: !130, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !639, file: !632, line: 94, baseType: !130, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 96, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 96, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !817, file: !632, line: 101, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !129, line: 143, baseType: !269)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 103, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 103, size: 320, elements: !823)
!823 = !{!824, !834, !837, !838}
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !632, line: 104, baseType: !825, size: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !632, line: 104, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !825, file: !632, line: 105, baseType: !181, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !632, line: 106, baseType: !829, size: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !825, file: !632, line: 106, size: 128, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !829, file: !632, line: 107, baseType: !630, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !829, file: !632, line: 109, baseType: !125, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !829, file: !632, line: 110, baseType: !125, size: 32, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !822, file: !632, line: 117, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !632, line: 117, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !822, file: !632, line: 119, baseType: !118, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !632, line: 120, baseType: !839, size: 64, offset: 256)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !632, line: 120, size: 64, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !839, file: !632, line: 121, baseType: !118, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !839, file: !632, line: 122, baseType: !130, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !632, line: 123, baseType: !844, size: 32)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !632, line: 123, size: 32, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !844, file: !632, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !844, file: !632, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !844, file: !632, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 130, baseType: !850, size: 192)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 130, size: 192, elements: !851)
!851 = !{!852, !853, !854, !855, !856}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !850, file: !632, line: 131, baseType: !130, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !850, file: !632, line: 134, baseType: !275, size: 8, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !850, file: !632, line: 135, baseType: !275, size: 8, offset: 72)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !850, file: !632, line: 136, baseType: !656, size: 32, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !850, file: !632, line: 137, baseType: !7, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 139, baseType: !858, size: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 139, size: 256, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !858, file: !632, line: 140, baseType: !130, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !858, file: !632, line: 141, baseType: !656, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !858, file: !632, line: 143, baseType: !181, size: 128, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 145, baseType: !864, size: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 145, size: 256, elements: !865)
!865 = !{!866, !867, !870, !871, !3421}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !864, file: !632, line: 146, baseType: !130, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !864, file: !632, line: 147, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !869, line: 509, baseType: !630)
!869 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !864, file: !632, line: 148, baseType: !130, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !632, line: 149, baseType: !872, size: 64, offset: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !632, line: 149, size: 64, elements: !873)
!873 = !{!874, !3420}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !872, file: !632, line: 150, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !632, line: 388, size: 7296, elements: !877)
!877 = !{!878, !3419}
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !632, line: 389, baseType: !879, size: 7296)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !632, line: 389, size: 7296, elements: !880)
!880 = !{!881, !999, !1000, !1001, !1005, !1006, !1007, !1008, !1009, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1050, !1058, !1061, !1085, !1086, !3403, !3404, !3407, !3408, !3409, !3412, !3413, !3414, !3417, !3418}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !879, file: !632, line: 390, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !632, line: 305, size: 1472, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892, !899, !900, !905, !906, !909, !993, !994, !995, !996, !997}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !883, file: !632, line: 308, baseType: !130, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !883, file: !632, line: 309, baseType: !130, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !883, file: !632, line: 313, baseType: !882, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !883, file: !632, line: 313, baseType: !882, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !883, file: !632, line: 315, baseType: !669, size: 192, align: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !883, file: !632, line: 323, baseType: !130, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !883, file: !632, line: 327, baseType: !875, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !883, file: !632, line: 333, baseType: !893, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !869, line: 284, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !869, line: 284, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !894, file: !869, line: 284, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !898, line: 19, baseType: !130)
!898 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !883, file: !632, line: 334, baseType: !130, size: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !883, file: !632, line: 343, baseType: !901, size: 256, offset: 704)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !632, line: 340, size: 256, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !901, file: !632, line: 341, baseType: !669, size: 192, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !901, file: !632, line: 342, baseType: !130, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !883, file: !632, line: 351, baseType: !181, size: 128, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !883, file: !632, line: 353, baseType: !907, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !632, line: 353, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !883, file: !632, line: 356, baseType: !910, size: 64, offset: 1152)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !20, line: 557, size: 832, elements: !913)
!913 = !{!914, !918, !919, !923, !927, !967, !971, !975, !979, !980, !981, !985, !989}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !912, file: !20, line: 558, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !882}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !912, file: !20, line: 559, baseType: !915, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !912, file: !20, line: 560, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!125, !882, !130}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !912, file: !20, line: 561, baseType: !924, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!125, !882}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !912, file: !20, line: 562, baseType: !928, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !632, line: 682, baseType: !7)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !20, line: 508, size: 768, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !947, !954, !960, !961, !962, !964, !966}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !933, file: !20, line: 509, baseType: !882, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !20, line: 510, baseType: !7, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !933, file: !20, line: 511, baseType: !128, size: 32, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !933, file: !20, line: 512, baseType: !130, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !933, file: !20, line: 513, baseType: !130, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !933, file: !20, line: 514, baseType: !941, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !869, line: 385, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 385, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !943, file: !869, line: 385, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !898, line: 15, baseType: !130)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !933, file: !20, line: 516, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !869, line: 359, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 359, size: 64, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !950, file: !869, line: 359, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !898, line: 16, baseType: !130)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !933, file: !20, line: 519, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !898, line: 21, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !898, line: 21, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !956, file: !898, line: 21, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !898, line: 14, baseType: !130)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !933, file: !20, line: 521, baseType: !630, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !933, file: !20, line: 522, baseType: !630, size: 64, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !933, file: !20, line: 528, baseType: !963, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !933, file: !20, line: 532, baseType: !965, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !933, file: !20, line: 536, baseType: !868, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !912, file: !20, line: 563, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!931, !932, !19}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !912, file: !20, line: 565, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !932, !130, !130}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !912, file: !20, line: 567, baseType: !976, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!130, !882}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !912, file: !20, line: 571, baseType: !928, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !912, file: !20, line: 574, baseType: !928, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !912, file: !20, line: 579, baseType: !982, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!125, !882, !130, !118, !125, !125}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !912, file: !20, line: 585, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!313, !882}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !912, file: !20, line: 615, baseType: !990, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!630, !882, !130}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !883, file: !632, line: 359, baseType: !130, size: 64, offset: 1216)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !883, file: !632, line: 361, baseType: !202, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !883, file: !632, line: 362, baseType: !118, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !883, file: !632, line: 365, baseType: !587, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !883, file: !632, line: 373, baseType: !998, offset: 1472)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !632, line: 296, elements: !179)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !879, file: !632, line: 391, baseType: !665, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !879, file: !632, line: 392, baseType: !269, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !879, file: !632, line: 394, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!130, !202, !130, !130, !130, !130}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !879, file: !632, line: 398, baseType: !130, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !879, file: !632, line: 399, baseType: !130, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !879, file: !632, line: 405, baseType: !130, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !879, file: !632, line: 406, baseType: !130, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !879, file: !632, line: 407, baseType: !1010, size: 64, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !869, line: 286, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 286, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1012, file: !869, line: 286, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !898, line: 18, baseType: !130)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !879, file: !632, line: 416, baseType: !656, size: 32, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !879, file: !632, line: 428, baseType: !656, size: 32, offset: 608)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !879, file: !632, line: 437, baseType: !656, size: 32, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !879, file: !632, line: 447, baseType: !656, size: 32, offset: 672)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !879, file: !632, line: 450, baseType: !587, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !879, file: !632, line: 452, baseType: !125, size: 32, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !879, file: !632, line: 454, baseType: !165, offset: 800)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !879, file: !632, line: 457, baseType: !676, size: 256, offset: 832)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !879, file: !632, line: 459, baseType: !181, size: 128, offset: 1088)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !879, file: !632, line: 466, baseType: !130, size: 64, offset: 1216)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !879, file: !632, line: 467, baseType: !130, size: 64, offset: 1280)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !879, file: !632, line: 469, baseType: !130, size: 64, offset: 1344)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !879, file: !632, line: 470, baseType: !130, size: 64, offset: 1408)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !879, file: !632, line: 471, baseType: !589, size: 64, offset: 1472)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !879, file: !632, line: 472, baseType: !130, size: 64, offset: 1536)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !879, file: !632, line: 473, baseType: !130, size: 64, offset: 1600)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !879, file: !632, line: 474, baseType: !130, size: 64, offset: 1664)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !879, file: !632, line: 475, baseType: !130, size: 64, offset: 1728)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !879, file: !632, line: 477, baseType: !165, offset: 1792)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !879, file: !632, line: 478, baseType: !130, size: 64, offset: 1792)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !879, file: !632, line: 478, baseType: !130, size: 64, offset: 1856)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !879, file: !632, line: 478, baseType: !130, size: 64, offset: 1920)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !879, file: !632, line: 478, baseType: !130, size: 64, offset: 1984)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !879, file: !632, line: 479, baseType: !130, size: 64, offset: 2048)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !879, file: !632, line: 479, baseType: !130, size: 64, offset: 2112)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !879, file: !632, line: 479, baseType: !130, size: 64, offset: 2176)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !879, file: !632, line: 480, baseType: !130, size: 64, offset: 2240)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !879, file: !632, line: 480, baseType: !130, size: 64, offset: 2304)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !879, file: !632, line: 480, baseType: !130, size: 64, offset: 2368)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !879, file: !632, line: 480, baseType: !130, size: 64, offset: 2432)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !879, file: !632, line: 482, baseType: !1047, size: 2816, offset: 2496)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 2816, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 44)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !879, file: !632, line: 488, baseType: !1051, size: 256, offset: 5312)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1052, line: 60, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1051, file: !1052, line: 61, baseType: !1055, size: 256)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 256, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 4)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !879, file: !632, line: 490, baseType: !1059, size: 64, offset: 5568)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !632, line: 490, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !879, file: !632, line: 493, baseType: !1062, size: 896, offset: 5632)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1063, line: 53, baseType: !1064)
!1063 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 13, size: 896, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1072, !1073, !1074, !1075, !1079, !1080, !1081}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1064, file: !1063, line: 18, baseType: !269, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1064, file: !1063, line: 28, baseType: !589, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1064, file: !1063, line: 31, baseType: !676, size: 256, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1064, file: !1063, line: 32, baseType: !1070, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1063, line: 32, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1064, file: !1063, line: 37, baseType: !136, size: 16, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !1063, line: 40, baseType: !583, size: 192, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1064, file: !1063, line: 41, baseType: !118, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1064, file: !1063, line: 42, baseType: !1076, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1063, line: 42, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1064, file: !1063, line: 44, baseType: !656, size: 32, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1064, file: !1063, line: 50, baseType: !132, size: 16, offset: 864)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1064, file: !1063, line: 51, baseType: !1082, size: 16, offset: 880)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !133, line: 18, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !135, line: 23, baseType: !1084)
!1084 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !632, line: 495, baseType: !130, size: 64, offset: 6528)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !879, file: !632, line: 497, baseType: !1087, size: 64, offset: 6592)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !632, line: 381, size: 384, elements: !1089)
!1089 = !{!1090, !1091, !3402}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1088, file: !632, line: 382, baseType: !656, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1088, file: !632, line: 383, baseType: !1092, size: 128, offset: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !632, line: 376, size: 128, elements: !1093)
!1093 = !{!1094, !3400}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1092, file: !632, line: 377, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1097, line: 640, size: 48640, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099, !1105, !1107, !1108, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1125, !1143, !1154, !1239, !1240, !1241, !1252, !1253, !1255, !1256, !1257, !1258, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1342, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1374, !1376, !1377, !1378, !1390, !1391, !1392, !1393, !1394, !1395, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1419, !1424, !1608, !1609, !1610, !1611, !1615, !1618, !1621, !1624, !1627, !1630, !2968, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3014, !3015, !3016, !3017, !3018, !3023, !3024, !3025, !3028, !3029, !3032, !3035, !3038, !3041, !3073, !3076, !3077, !3156, !3157, !3160, !3161, !3164, !3165, !3166, !3170, !3171, !3172, !3185, !3186, !3187, !3197, !3202, !3203, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1096, file: !1097, line: 646, baseType: !1100, size: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1101, line: 56, size: 128, elements: !1102)
!1101 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 57, baseType: !130, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1100, file: !1101, line: 58, baseType: !265, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1096, file: !1097, line: 649, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !394)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1096, file: !1097, line: 657, baseType: !118, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1096, file: !1097, line: 658, baseType: !1109, size: 32, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1110, line: 113, baseType: !1111)
!1110 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1110, line: 111, size: 32, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1111, file: !1110, line: 112, baseType: !656, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !1097, line: 660, baseType: !7, size: 32, offset: 288)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1096, file: !1097, line: 661, baseType: !7, size: 32, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1096, file: !1097, line: 684, baseType: !125, size: 32, offset: 352)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1096, file: !1097, line: 686, baseType: !125, size: 32, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1096, file: !1097, line: 687, baseType: !125, size: 32, offset: 416)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1096, file: !1097, line: 688, baseType: !125, size: 32, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1096, file: !1097, line: 689, baseType: !7, size: 32, offset: 480)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1096, file: !1097, line: 691, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1097, line: 691, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1096, file: !1097, line: 692, baseType: !1126, size: 832, offset: 576)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1097, line: 451, size: 832, elements: !1127)
!1127 = !{!1128, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1126, file: !1097, line: 453, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1097, line: 325, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1129, file: !1097, line: 326, baseType: !130, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1129, file: !1097, line: 327, baseType: !265, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1126, file: !1097, line: 454, baseType: !669, size: 192, align: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1126, file: !1097, line: 455, baseType: !181, size: 128, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1126, file: !1097, line: 456, baseType: !7, size: 32, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1126, file: !1097, line: 458, baseType: !269, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1126, file: !1097, line: 459, baseType: !269, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1126, file: !1097, line: 460, baseType: !269, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1126, file: !1097, line: 461, baseType: !269, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1126, file: !1097, line: 463, baseType: !269, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1126, file: !1097, line: 465, baseType: !1142, offset: 832)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1097, line: 415, elements: !179)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1096, file: !1097, line: 693, baseType: !1144, size: 384, offset: 1408)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1097, line: 489, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1144, file: !1097, line: 490, baseType: !181, size: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1144, file: !1097, line: 491, baseType: !130, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1144, file: !1097, line: 492, baseType: !130, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1144, file: !1097, line: 493, baseType: !7, size: 32, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1144, file: !1097, line: 494, baseType: !136, size: 16, offset: 288)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1144, file: !1097, line: 495, baseType: !136, size: 16, offset: 304)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1144, file: !1097, line: 497, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1096, file: !1097, line: 697, baseType: !1155, size: 1792, offset: 1792)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1097, line: 507, size: 1792, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1236, !1237}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1155, file: !1097, line: 508, baseType: !669, size: 192, align: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1155, file: !1097, line: 515, baseType: !269, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1155, file: !1097, line: 516, baseType: !269, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1155, file: !1097, line: 517, baseType: !269, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1155, file: !1097, line: 518, baseType: !269, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1155, file: !1097, line: 519, baseType: !269, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1155, file: !1097, line: 526, baseType: !593, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1155, file: !1097, line: 527, baseType: !269, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !1097, line: 528, baseType: !7, size: 32, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1155, file: !1097, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1155, file: !1097, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1155, file: !1097, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1155, file: !1097, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1155, file: !1097, line: 563, baseType: !1171, size: 512, offset: 704)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1172)
!1172 = !{!1173, !1181, !1182, !1187, !1230, !1233, !1234, !1235}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1171, file: !26, line: 119, baseType: !1174, size: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1175, line: 9, size: 256, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1174, file: !1175, line: 10, baseType: !669, size: 192, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1174, file: !1175, line: 11, baseType: !1179, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1180, line: 29, baseType: !593)
!1180 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1171, file: !26, line: 120, baseType: !1179, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1171, file: !26, line: 121, baseType: !1183, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!25, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1171, file: !26, line: 122, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1190)
!1190 = !{!1191, !1211, !1212, !1215, !1220, !1221, !1225, !1229}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1189, file: !26, line: 160, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 214, size: 4608, align: 512, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1193, file: !26, line: 215, baseType: !682)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1193, file: !26, line: 216, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1193, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1193, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1193, file: !26, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1193, file: !26, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1193, file: !26, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1193, file: !26, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1193, file: !26, line: 233, baseType: !1179, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1193, file: !26, line: 234, baseType: !1186, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1193, file: !26, line: 235, baseType: !1179, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1193, file: !26, line: 236, baseType: !1186, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1193, file: !26, line: 237, baseType: !1208, size: 4096, offset: 512)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 4096, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 8)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1189, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1189, file: !26, line: 162, baseType: !1213, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !129, line: 27, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !291, line: 96, baseType: !125)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1189, file: !26, line: 163, baseType: !1216, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !238, line: 276, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !238, line: 276, size: 32, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1217, file: !238, line: 276, baseType: !242, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1189, file: !26, line: 164, baseType: !1186, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1189, file: !26, line: 165, baseType: !1222, size: 128, offset: 256)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1175, line: 14, size: 128, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1222, file: !1175, line: 15, baseType: !661, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1189, file: !26, line: 166, baseType: !1226, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!1179}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1189, file: !26, line: 167, baseType: !1179, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1171, file: !26, line: 123, baseType: !1231, size: 8, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !133, line: 17, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !135, line: 21, baseType: !275)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1171, file: !26, line: 124, baseType: !1231, size: 8, offset: 456)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1171, file: !26, line: 125, baseType: !1231, size: 8, offset: 464)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1171, file: !26, line: 126, baseType: !1231, size: 8, offset: 472)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1155, file: !1097, line: 572, baseType: !1171, size: 512, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1155, file: !1097, line: 580, baseType: !1238, size: 64, offset: 1728)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1096, file: !1097, line: 721, baseType: !7, size: 32, offset: 3584)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1096, file: !1097, line: 722, baseType: !125, size: 32, offset: 3616)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1096, file: !1097, line: 723, baseType: !1242, size: 64, offset: 3648)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1245, line: 17, baseType: !1246)
!1245 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1245, line: 17, size: 64, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1246, file: !1245, line: 17, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 1)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1096, file: !1097, line: 724, baseType: !1244, size: 64, offset: 3712)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1096, file: !1097, line: 749, baseType: !1254, offset: 3776)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1097, line: 290, elements: !179)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1096, file: !1097, line: 751, baseType: !181, size: 128, offset: 3776)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1096, file: !1097, line: 757, baseType: !875, size: 64, offset: 3904)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1096, file: !1097, line: 758, baseType: !875, size: 64, offset: 3968)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1096, file: !1097, line: 761, baseType: !1259, size: 320, offset: 4032)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1052, line: 34, size: 320, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1259, file: !1052, line: 35, baseType: !269, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1259, file: !1052, line: 36, baseType: !1263, size: 256, offset: 64)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 256, elements: !1056)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1096, file: !1097, line: 766, baseType: !125, size: 32, offset: 4352)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1096, file: !1097, line: 767, baseType: !125, size: 32, offset: 4384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1096, file: !1097, line: 768, baseType: !125, size: 32, offset: 4416)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1096, file: !1097, line: 770, baseType: !125, size: 32, offset: 4448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1096, file: !1097, line: 772, baseType: !130, size: 64, offset: 4480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1096, file: !1097, line: 775, baseType: !7, size: 32, offset: 4544)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1096, file: !1097, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1096, file: !1097, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1096, file: !1097, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1096, file: !1097, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1096, file: !1097, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1096, file: !1097, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1096, file: !1097, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1096, file: !1097, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1096, file: !1097, line: 831, baseType: !130, size: 64, offset: 4672)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1096, file: !1097, line: 833, baseType: !1280, size: 384, offset: 4736)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 384, elements: !1281)
!1281 = !{!1282, !1287}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1280, file: !31, line: 26, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!394, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !31, line: 27, baseType: !1288, size: 320, offset: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !31, line: 27, size: 320, elements: !1289)
!1289 = !{!1290, !1300, !1327}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1288, file: !31, line: 36, baseType: !1291, size: 320)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !31, line: 29, size: 320, elements: !1292)
!1292 = !{!1293, !1295, !1296, !1297, !1298, !1299}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1291, file: !31, line: 30, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1291, file: !31, line: 31, baseType: !265, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !31, line: 32, baseType: !265, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1291, file: !31, line: 33, baseType: !265, size: 32, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1291, file: !31, line: 34, baseType: !269, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1291, file: !31, line: 35, baseType: !1294, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1288, file: !31, line: 46, baseType: !1301, size: 192)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !31, line: 38, size: 192, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1326}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1301, file: !31, line: 39, baseType: !1213, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1301, file: !31, line: 40, baseType: !30, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !31, line: 41, baseType: !1306, size: 64, offset: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !31, line: 41, size: 64, elements: !1307)
!1307 = !{!1308, !1316}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1306, file: !31, line: 42, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1311, line: 7, size: 128, elements: !1312)
!1311 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !{!1313, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1310, file: !1311, line: 8, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !291, line: 93, baseType: !385)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1310, file: !1311, line: 9, baseType: !385, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1306, file: !31, line: 43, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1319, line: 7, size: 64, elements: !1320)
!1319 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1325}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !1319, line: 8, baseType: !1322, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1319, line: 5, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !133, line: 20, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !135, line: 26, baseType: !125)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !1319, line: 9, baseType: !1323, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1301, file: !31, line: 45, baseType: !269, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1288, file: !31, line: 54, baseType: !1328, size: 256)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !31, line: 48, size: 256, elements: !1329)
!1329 = !{!1330, !1338, !1339, !1340, !1341}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1328, file: !31, line: 49, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1333, line: 36, size: 64, elements: !1334)
!1333 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1332, file: !1333, line: 37, baseType: !125, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1332, file: !1333, line: 38, baseType: !1084, size: 16, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1332, file: !1333, line: 39, baseType: !1084, size: 16, offset: 48)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1328, file: !31, line: 50, baseType: !125, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1328, file: !31, line: 51, baseType: !125, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1328, file: !31, line: 52, baseType: !130, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1328, file: !31, line: 53, baseType: !130, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1096, file: !1097, line: 835, baseType: !1343, size: 32, offset: 5120)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !129, line: 22, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !291, line: 28, baseType: !125)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1096, file: !1097, line: 836, baseType: !1343, size: 32, offset: 5152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1096, file: !1097, line: 840, baseType: !130, size: 64, offset: 5184)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1096, file: !1097, line: 849, baseType: !1095, size: 64, offset: 5248)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1096, file: !1097, line: 852, baseType: !1095, size: 64, offset: 5312)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1096, file: !1097, line: 857, baseType: !181, size: 128, offset: 5376)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1096, file: !1097, line: 858, baseType: !181, size: 128, offset: 5504)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1096, file: !1097, line: 859, baseType: !1095, size: 64, offset: 5632)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1096, file: !1097, line: 867, baseType: !181, size: 128, offset: 5696)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1096, file: !1097, line: 868, baseType: !181, size: 128, offset: 5824)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1096, file: !1097, line: 871, baseType: !1355, size: 64, offset: 5952)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !86, line: 59, size: 768, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1363, !1364, !1365, !1366}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1356, file: !86, line: 61, baseType: !1109, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1356, file: !86, line: 62, baseType: !7, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !86, line: 63, baseType: !165, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1356, file: !86, line: 65, baseType: !1362, size: 256, offset: 64)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 256, elements: !1056)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1356, file: !86, line: 66, baseType: !493, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1356, file: !86, line: 68, baseType: !160, size: 128, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1356, file: !86, line: 69, baseType: !215, size: 128, align: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1356, file: !86, line: 70, baseType: !1367, size: 128, offset: 640)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 128, elements: !1250)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !86, line: 54, size: 128, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1368, file: !86, line: 55, baseType: !125, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1368, file: !86, line: 56, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !86, line: 56, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1096, file: !1097, line: 872, baseType: !1375, size: 512, offset: 6016)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 512, elements: !1056)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1096, file: !1097, line: 873, baseType: !181, size: 128, offset: 6528)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1096, file: !1097, line: 874, baseType: !181, size: 128, offset: 6656)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1096, file: !1097, line: 876, baseType: !1379, size: 64, offset: 6784)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1381, line: 26, size: 192, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1380, file: !1381, line: 27, baseType: !7, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1380, file: !1381, line: 28, baseType: !1385, size: 128, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1386, line: 43, size: 128, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 44, baseType: !682)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1385, file: !1386, line: 45, baseType: !181, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1096, file: !1097, line: 879, baseType: !565, size: 64, offset: 6848)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1096, file: !1097, line: 882, baseType: !565, size: 64, offset: 6912)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1096, file: !1097, line: 884, baseType: !269, size: 64, offset: 6976)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1096, file: !1097, line: 885, baseType: !269, size: 64, offset: 7040)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1096, file: !1097, line: 890, baseType: !269, size: 64, offset: 7104)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1096, file: !1097, line: 891, baseType: !1396, size: 128, offset: 7168)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1097, line: 242, size: 128, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1396, file: !1097, line: 244, baseType: !269, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1396, file: !1097, line: 245, baseType: !269, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1396, file: !1097, line: 246, baseType: !682, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1096, file: !1097, line: 900, baseType: !130, size: 64, offset: 7296)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1096, file: !1097, line: 901, baseType: !130, size: 64, offset: 7360)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1096, file: !1097, line: 904, baseType: !269, size: 64, offset: 7424)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1096, file: !1097, line: 907, baseType: !269, size: 64, offset: 7488)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1096, file: !1097, line: 910, baseType: !130, size: 64, offset: 7552)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1096, file: !1097, line: 911, baseType: !130, size: 64, offset: 7616)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1096, file: !1097, line: 914, baseType: !1408, size: 640, offset: 7680)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1409, line: 123, size: 640, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1417, !1418}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1408, file: !1409, line: 124, baseType: !1412, size: 576)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 576, elements: !509)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1409, line: 108, size: 192, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1413, file: !1409, line: 109, baseType: !269, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1413, file: !1409, line: 110, baseType: !1222, size: 128, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1408, file: !1409, line: 125, baseType: !7, size: 32, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1408, file: !1409, line: 126, baseType: !7, size: 32, offset: 608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1096, file: !1097, line: 917, baseType: !1420, size: 192, offset: 8320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1409, line: 134, size: 192, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1420, file: !1409, line: 135, baseType: !215, size: 128, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1420, file: !1409, line: 136, baseType: !7, size: 32, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1096, file: !1097, line: 923, baseType: !1425, size: 64, offset: 8512)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1428, line: 111, size: 1280, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1449, !1450, !1451, !1452, !1453, !1454, !1561, !1562, !1563, !1564, !1590, !1593, !1603}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1427, file: !1428, line: 112, baseType: !656, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1427, file: !1428, line: 120, baseType: !284, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1427, file: !1428, line: 121, baseType: !293, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1427, file: !1428, line: 122, baseType: !284, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1427, file: !1428, line: 123, baseType: !293, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1427, file: !1428, line: 124, baseType: !284, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1427, file: !1428, line: 125, baseType: !293, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1427, file: !1428, line: 126, baseType: !284, size: 32, offset: 224)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1427, file: !1428, line: 127, baseType: !293, size: 32, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1427, file: !1428, line: 128, baseType: !7, size: 32, offset: 288)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1427, file: !1428, line: 129, baseType: !1441, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1442, line: 26, baseType: !1443)
!1442 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1442, line: 24, size: 64, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1443, file: !1442, line: 25, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 2)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1427, file: !1428, line: 130, baseType: !1441, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1427, file: !1428, line: 131, baseType: !1441, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1427, file: !1428, line: 132, baseType: !1441, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1427, file: !1428, line: 133, baseType: !1441, size: 64, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1427, file: !1428, line: 135, baseType: !275, size: 8, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1427, file: !1428, line: 137, baseType: !1455, size: 64, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1457, line: 189, size: 1664, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460, !1463, !1468, !1469, !1472, !1473, !1478, !1479, !1480, !1481, !1483, !1484, !1485, !1486, !1487, !1525, !1546}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1456, file: !1457, line: 190, baseType: !1109, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1456, file: !1457, line: 191, baseType: !1461, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1457, line: 28, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 98, baseType: !1323)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 192, baseType: !1464, size: 192, offset: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 192, size: 192, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1464, file: !1457, line: 193, baseType: !181, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1464, file: !1457, line: 194, baseType: !669, size: 192, align: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1456, file: !1457, line: 199, baseType: !676, size: 256, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1456, file: !1457, line: 200, baseType: !1470, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1457, line: 200, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1456, file: !1457, line: 201, baseType: !118, size: 64, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 202, baseType: !1474, size: 64, offset: 640)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 202, size: 64, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1474, file: !1457, line: 203, baseType: !391, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1474, file: !1457, line: 204, baseType: !391, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1456, file: !1457, line: 206, baseType: !391, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1456, file: !1457, line: 207, baseType: !284, size: 32, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1456, file: !1457, line: 208, baseType: !293, size: 32, offset: 800)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1456, file: !1457, line: 209, baseType: !1482, size: 32, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1457, line: 31, baseType: !412)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1456, file: !1457, line: 210, baseType: !136, size: 16, offset: 864)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1456, file: !1457, line: 211, baseType: !136, size: 16, offset: 880)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1456, file: !1457, line: 215, baseType: !1084, size: 16, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1457, line: 222, baseType: !130, size: 64, offset: 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 239, baseType: !1488, size: 320, offset: 1024)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 239, size: 320, elements: !1489)
!1489 = !{!1490, !1517}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1488, file: !1457, line: 240, baseType: !1491, size: 320)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1457, line: 108, size: 320, elements: !1492)
!1492 = !{!1493, !1494, !1506, !1509, !1516}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1491, file: !1457, line: 110, baseType: !130, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1457, line: 111, baseType: !1495, size: 64, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !1457, line: 111, size: 64, elements: !1496)
!1496 = !{!1497, !1505}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1457, line: 112, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !1457, line: 112, size: 64, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1498, file: !1457, line: 114, baseType: !132, size: 16)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1498, file: !1457, line: 115, baseType: !1502, size: 48, offset: 16)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 48, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 6)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1495, file: !1457, line: 121, baseType: !130, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !1457, line: 123, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1457, line: 96, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1491, file: !1457, line: 124, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1457, line: 102, size: 192, elements: !1512)
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1511, file: !1457, line: 103, baseType: !215, size: 128, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1511, file: !1457, line: 104, baseType: !1109, size: 32, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1511, file: !1457, line: 105, baseType: !342, size: 8, offset: 160)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1491, file: !1457, line: 125, baseType: !313, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1457, line: 241, baseType: !1518, size: 320)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1457, line: 241, size: 320, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1518, file: !1457, line: 242, baseType: !130, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1518, file: !1457, line: 243, baseType: !130, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1518, file: !1457, line: 244, baseType: !1507, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1518, file: !1457, line: 245, baseType: !1510, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1518, file: !1457, line: 246, baseType: !126, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1457, line: 254, baseType: !1526, size: 256, offset: 1344)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1457, line: 254, size: 256, elements: !1527)
!1527 = !{!1528, !1534}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1526, file: !1457, line: 255, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1457, line: 128, size: 256, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1529, file: !1457, line: 129, baseType: !118, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1529, file: !1457, line: 130, baseType: !1533, size: 256)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !1056)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1457, line: 256, baseType: !1535, size: 256)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !1457, line: 256, size: 256, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1535, file: !1457, line: 258, baseType: !181, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1535, file: !1457, line: 259, baseType: !1539, size: 128, offset: 128)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1540, line: 22, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542, !1545}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1539, file: !1540, line: 23, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1540, line: 23, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1539, file: !1540, line: 24, baseType: !130, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1456, file: !1457, line: 274, baseType: !1547, size: 64, offset: 1600)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1457, line: 170, size: 192, elements: !1549)
!1549 = !{!1550, !1559, !1560}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1548, file: !1457, line: 171, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1457, line: 165, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!125, !1455, !1555, !1557, !1455}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1548, file: !1457, line: 172, baseType: !1455, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1548, file: !1457, line: 173, baseType: !1507, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1427, file: !1428, line: 138, baseType: !1455, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1427, file: !1428, line: 139, baseType: !1455, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1427, file: !1428, line: 140, baseType: !1455, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1427, file: !1428, line: 145, baseType: !1565, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1567, line: 13, size: 896, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1566, file: !1567, line: 14, baseType: !1109, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1566, file: !1567, line: 15, baseType: !656, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1566, file: !1567, line: 16, baseType: !656, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1566, file: !1567, line: 21, baseType: !587, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1566, file: !1567, line: 27, baseType: !130, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1566, file: !1567, line: 28, baseType: !130, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1566, file: !1567, line: 29, baseType: !587, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1566, file: !1567, line: 32, baseType: !497, size: 128, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1566, file: !1567, line: 33, baseType: !284, size: 32, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1566, file: !1567, line: 37, baseType: !587, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1566, file: !1567, line: 44, baseType: !1580, size: 256, offset: 640)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1581, line: 15, size: 256, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1580, file: !1581, line: 16, baseType: !682)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1580, file: !1581, line: 18, baseType: !125, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1580, file: !1581, line: 19, baseType: !125, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1580, file: !1581, line: 20, baseType: !125, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1580, file: !1581, line: 21, baseType: !125, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1580, file: !1581, line: 22, baseType: !130, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !1581, line: 23, baseType: !130, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1427, file: !1428, line: 146, baseType: !1591, size: 64, offset: 1024)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !285, line: 18, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1427, file: !1428, line: 147, baseType: !1594, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1428, line: 25, size: 64, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1595, file: !1428, line: 26, baseType: !656, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1595, file: !1428, line: 27, baseType: !125, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1595, file: !1428, line: 28, baseType: !1600, offset: 64)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, elements: !1601)
!1601 = !{!1602}
!1602 = !DISubrange(count: 0)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 149, baseType: !1604, size: 128, offset: 1152)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 149, size: 128, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1604, file: !1428, line: 150, baseType: !125, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1604, file: !1428, line: 151, baseType: !215, size: 128, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1096, file: !1097, line: 926, baseType: !1425, size: 64, offset: 8576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1096, file: !1097, line: 929, baseType: !1425, size: 64, offset: 8640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1096, file: !1097, line: 933, baseType: !1455, size: 64, offset: 8704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1096, file: !1097, line: 943, baseType: !1612, size: 128, offset: 8768)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !1613)
!1613 = !{!1614}
!1614 = !DISubrange(count: 16)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1096, file: !1097, line: 945, baseType: !1616, size: 64, offset: 8896)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1097, line: 49, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1096, file: !1097, line: 956, baseType: !1619, size: 64, offset: 8960)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1097, line: 45, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1096, file: !1097, line: 959, baseType: !1622, size: 64, offset: 9024)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1097, line: 959, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1096, file: !1097, line: 962, baseType: !1625, size: 64, offset: 9088)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1097, line: 66, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1096, file: !1097, line: 966, baseType: !1628, size: 64, offset: 9152)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1097, line: 50, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1096, file: !1097, line: 969, baseType: !1631, size: 64, offset: 9216)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1633, line: 82, size: 7296, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1670, !1679, !1680, !1682, !1683, !1684, !2924, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2954, !2955, !2962, !2963, !2964, !2965, !2966, !2967}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1632, file: !1633, line: 83, baseType: !1109, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1632, file: !1633, line: 84, baseType: !656, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1632, file: !1633, line: 85, baseType: !125, size: 32, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1632, file: !1633, line: 86, baseType: !181, size: 128, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1632, file: !1633, line: 88, baseType: !160, size: 128, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1632, file: !1633, line: 91, baseType: !1095, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1632, file: !1633, line: 94, baseType: !1642, size: 192, offset: 448)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1643, line: 30, size: 192, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1642, file: !1643, line: 31, baseType: !181, size: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1642, file: !1643, line: 32, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1648, line: 25, baseType: !1649)
!1648 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1648, line: 23, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1649, file: !1648, line: 24, baseType: !1249, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1632, file: !1633, line: 97, baseType: !493, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1632, file: !1633, line: 100, baseType: !125, size: 32, offset: 704)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1632, file: !1633, line: 106, baseType: !125, size: 32, offset: 736)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1632, file: !1633, line: 107, baseType: !1095, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1632, file: !1633, line: 110, baseType: !125, size: 32, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !1633, line: 111, baseType: !7, size: 32, offset: 864)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1632, file: !1633, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1632, file: !1633, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1632, file: !1633, line: 128, baseType: !125, size: 32, offset: 928)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1632, file: !1633, line: 129, baseType: !181, size: 128, offset: 960)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1632, file: !1633, line: 132, baseType: !1171, size: 512, offset: 1088)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1632, file: !1633, line: 133, baseType: !1179, size: 64, offset: 1600)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1632, file: !1633, line: 140, baseType: !1665, size: 256, offset: 1664)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, size: 256, elements: !1447)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1633, line: 38, size: 128, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1666, file: !1633, line: 39, baseType: !269, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1666, file: !1633, line: 40, baseType: !269, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1632, file: !1633, line: 146, baseType: !1671, size: 192, offset: 1920)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1633, line: 66, size: 192, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1671, file: !1633, line: 67, baseType: !1674, size: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1633, line: 47, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1674, file: !1633, line: 48, baseType: !589, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1674, file: !1633, line: 49, baseType: !589, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1674, file: !1633, line: 50, baseType: !589, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1632, file: !1633, line: 150, baseType: !1408, size: 640, offset: 2112)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1632, file: !1633, line: 153, baseType: !1681, size: 256, offset: 2752)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1056)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1632, file: !1633, line: 159, baseType: !1355, size: 64, offset: 3008)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1632, file: !1633, line: 162, baseType: !125, size: 32, offset: 3072)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1632, file: !1633, line: 164, baseType: !1685, size: 64, offset: 3136)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1687, line: 285, size: 5056, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1690, !1695, !2348, !2823, !2824, !2825, !2834, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1686, file: !1687, line: 286, baseType: !125, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1686, file: !1687, line: 287, baseType: !1691, size: 32, offset: 32)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1692, line: 19, size: 32, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1691, file: !1692, line: 20, baseType: !1109, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1686, file: !1687, line: 288, baseType: !1696, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !43, line: 461, size: 5568, elements: !1698)
!1698 = !{!1699, !1996, !1997, !2000, !2001, !2052, !2125, !2126, !2127, !2128, !2129, !2138, !2254, !2267, !2270, !2271, !2275, !2277, !2278, !2279, !2283, !2289, !2290, !2293, !2297, !2300, !2301, !2302, !2303, !2304, !2336, !2337, !2338, !2341, !2344, !2345, !2346, !2347}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1697, file: !43, line: 462, baseType: !1700, size: 512)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1701, line: 64, size: 512, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1707, !1749, !1851, !1990, !1991, !1992, !1993, !1994, !1995}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !1701, line: 65, baseType: !313, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1700, file: !1701, line: 66, baseType: !181, size: 128, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1700, file: !1701, line: 67, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1700, file: !1701, line: 68, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1701, line: 192, size: 704, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1709, file: !1701, line: 193, baseType: !181, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1709, file: !1701, line: 194, baseType: !165, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1709, file: !1701, line: 195, baseType: !1700, size: 512, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1709, file: !1701, line: 196, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1701, line: 156, size: 192, elements: !1718)
!1718 = !{!1719, !1724, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1717, file: !1701, line: 157, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!125, !1708, !1706}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1717, file: !1701, line: 158, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!313, !1708, !1706}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1717, file: !1701, line: 159, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!125, !1708, !1706, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1701, line: 148, size: 20736, elements: !1736)
!1736 = !{!1737, !1739, !1743, !1744, !1748}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1735, file: !1701, line: 149, baseType: !1738, size: 192)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !509)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1735, file: !1701, line: 150, baseType: !1740, size: 4096, offset: 192)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 4096, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1735, file: !1701, line: 151, baseType: !125, size: 32, offset: 4288)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1735, file: !1701, line: 152, baseType: !1745, size: 16384, offset: 4320)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 2048)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1735, file: !1701, line: 153, baseType: !125, size: 32, offset: 20704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1700, file: !1701, line: 69, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1701, line: 138, size: 448, elements: !1752)
!1752 = !{!1753, !1757, !1776, !1778, !1811, !1841, !1845}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1751, file: !1701, line: 139, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1706}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1751, file: !1701, line: 140, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1761, line: 230, size: 128, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1772}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1760, file: !1761, line: 231, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!431, !1706, !1767, !126}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1761, line: 30, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1761, line: 31, baseType: !313, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1768, file: !1761, line: 32, baseType: !281, size: 16, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1760, file: !1761, line: 232, baseType: !1773, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!431, !1706, !1767, !313, !434}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1751, file: !1701, line: 141, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1751, file: !1701, line: 142, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1761, line: 84, size: 320, elements: !1783)
!1783 = !{!1784, !1785, !1789, !1808, !1809}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1782, file: !1761, line: 85, baseType: !313, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1782, file: !1761, line: 86, baseType: !1786, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!281, !1706, !1767, !125}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1782, file: !1761, line: 88, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!281, !1706, !1793, !125}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1761, line: 168, size: 448, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1803, !1804}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1794, file: !1761, line: 169, baseType: !1768, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1794, file: !1761, line: 170, baseType: !434, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1794, file: !1761, line: 171, baseType: !118, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1794, file: !1761, line: 172, baseType: !1800, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!431, !202, !1706, !1793, !126, !383, !434}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1794, file: !1761, line: 174, baseType: !1800, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1794, file: !1761, line: 176, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!125, !202, !1706, !1793, !882}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1782, file: !1761, line: 90, baseType: !1777, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1782, file: !1761, line: 91, baseType: !1810, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1751, file: !1701, line: 143, baseType: !1812, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!1815, !1706}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !1818)
!1818 = !{!1819, !1820, !1824, !1828, !1836, !1840}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1817, file: !6, line: 40, baseType: !5, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1817, file: !6, line: 41, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!342}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1817, file: !6, line: 42, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!118}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1817, file: !6, line: 43, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1832, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1817, file: !6, line: 44, baseType: !1837, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1832}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1817, file: !6, line: 45, baseType: !320, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1751, file: !1701, line: 144, baseType: !1842, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1832, !1706}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1751, file: !1701, line: 145, baseType: !1846, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1706, !1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1700, file: !1701, line: 70, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1854, line: 123, size: 1024, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1983, !1984, !1985, !1986, !1987}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1853, file: !1854, line: 124, baseType: !656, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1853, file: !1854, line: 125, baseType: !656, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1853, file: !1854, line: 135, baseType: !1852, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !1854, line: 136, baseType: !313, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1853, file: !1854, line: 138, baseType: !669, size: 192, align: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1853, file: !1854, line: 140, baseType: !1832, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1853, file: !1854, line: 141, baseType: !7, size: 32, offset: 448)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1854, line: 142, baseType: !1864, size: 256, offset: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1854, line: 142, size: 256, elements: !1865)
!1865 = !{!1866, !1912, !1916}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1864, file: !1854, line: 143, baseType: !1867, size: 192)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1854, line: 91, size: 192, elements: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1867, file: !1854, line: 92, baseType: !130, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1867, file: !1854, line: 94, baseType: !665, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1867, file: !1854, line: 100, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1854, line: 180, size: 704, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1884, !1885, !1886, !1910, !1911}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1873, file: !1854, line: 182, baseType: !1852, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !1854, line: 183, baseType: !7, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1873, file: !1854, line: 186, baseType: !1878, size: 192, offset: 128)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1879, line: 19, size: 192, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1878, file: !1879, line: 20, baseType: !648, size: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1878, file: !1879, line: 21, baseType: !7, size: 32, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1878, file: !1879, line: 22, baseType: !7, size: 32, offset: 160)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1873, file: !1854, line: 187, baseType: !265, size: 32, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1873, file: !1854, line: 188, baseType: !265, size: 32, offset: 352)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1873, file: !1854, line: 189, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1854, line: 168, size: 320, elements: !1889)
!1889 = !{!1890, !1894, !1898, !1902, !1906}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1888, file: !1854, line: 169, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!125, !571, !1872}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1888, file: !1854, line: 171, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!125, !1852, !313, !281}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1888, file: !1854, line: 173, baseType: !1899, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!125, !1852}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1888, file: !1854, line: 174, baseType: !1903, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!125, !1852, !1852, !313}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1888, file: !1854, line: 176, baseType: !1907, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!125, !571, !1852, !1872}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1873, file: !1854, line: 192, baseType: !181, size: 128, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1873, file: !1854, line: 194, baseType: !160, size: 128, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1864, file: !1854, line: 144, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1854, line: 103, size: 64, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1913, file: !1854, line: 104, baseType: !1852, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1864, file: !1854, line: 145, baseType: !1917, size: 256)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1854, line: 107, size: 256, elements: !1918)
!1918 = !{!1919, !1978, !1981, !1982}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1917, file: !1854, line: 108, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1854, line: 217, size: 768, elements: !1923)
!1923 = !{!1924, !1944, !1948, !1949, !1950, !1951, !1952, !1956, !1957, !1958, !1959, !1974}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1922, file: !1854, line: 222, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!125, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1854, line: 197, size: 1088, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1929, file: !1854, line: 199, baseType: !1852, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1929, file: !1854, line: 200, baseType: !202, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1929, file: !1854, line: 201, baseType: !571, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1929, file: !1854, line: 202, baseType: !118, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1929, file: !1854, line: 205, baseType: !583, size: 192, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1929, file: !1854, line: 206, baseType: !583, size: 192, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1929, file: !1854, line: 207, baseType: !125, size: 32, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1929, file: !1854, line: 208, baseType: !181, size: 128, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1929, file: !1854, line: 209, baseType: !126, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1929, file: !1854, line: 211, baseType: !434, size: 64, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1929, file: !1854, line: 212, baseType: !342, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1929, file: !1854, line: 213, baseType: !342, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1929, file: !1854, line: 214, baseType: !910, size: 64, offset: 1024)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1922, file: !1854, line: 223, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1928}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1922, file: !1854, line: 236, baseType: !615, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1922, file: !1854, line: 238, baseType: !602, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1922, file: !1854, line: 239, baseType: !611, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1922, file: !1854, line: 240, baseType: !607, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1922, file: !1854, line: 242, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!431, !1928, !126, !434, !383}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1922, file: !1854, line: 252, baseType: !434, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1922, file: !1854, line: 259, baseType: !342, size: 8, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1922, file: !1854, line: 260, baseType: !1953, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1922, file: !1854, line: 263, baseType: !1960, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!141, !1928, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1965, line: 43, size: 128, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1973}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1964, file: !1965, line: 44, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1965, line: 37, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !202, !1972, !1963}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1964, file: !1965, line: 45, baseType: !141, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1922, file: !1854, line: 266, baseType: !1975, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!125, !1928, !882}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1917, file: !1854, line: 109, baseType: !1979, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1854, line: 31, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1917, file: !1854, line: 110, baseType: !383, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1917, file: !1854, line: 111, baseType: !1852, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1853, file: !1854, line: 148, baseType: !118, size: 64, offset: 768)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1853, file: !1854, line: 154, baseType: !269, size: 64, offset: 832)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !1854, line: 156, baseType: !136, size: 16, offset: 896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1853, file: !1854, line: 157, baseType: !281, size: 16, offset: 912)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1853, file: !1854, line: 158, baseType: !1988, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1854, line: 32, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1700, file: !1701, line: 71, baseType: !1691, size: 32, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1700, file: !1701, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1700, file: !1701, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1700, file: !1701, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1700, file: !1701, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1700, file: !1701, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1697, file: !43, line: 463, baseType: !1696, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1697, file: !43, line: 465, baseType: !1998, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !43, line: 36, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1697, file: !43, line: 467, baseType: !313, size: 64, offset: 640)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !43, line: 468, baseType: !2002, size: 64, offset: 704)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !43, line: 87, size: 384, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2012, !2017, !2021}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !43, line: 88, baseType: !313, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2004, file: !43, line: 89, baseType: !1779, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2004, file: !43, line: 90, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!125, !1696, !1734}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2004, file: !43, line: 91, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!126, !1696, !2016, !1849, !1850}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2004, file: !43, line: 93, baseType: !2018, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !1696}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2004, file: !43, line: 95, baseType: !2022, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !50, line: 278, size: 1472, elements: !2025)
!2025 = !{!2026, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2024, file: !50, line: 279, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!125, !1696}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2024, file: !50, line: 280, baseType: !2018, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2024, file: !50, line: 281, baseType: !2027, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2024, file: !50, line: 282, baseType: !2027, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2024, file: !50, line: 283, baseType: !2027, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2024, file: !50, line: 284, baseType: !2027, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2024, file: !50, line: 285, baseType: !2027, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2024, file: !50, line: 286, baseType: !2027, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2024, file: !50, line: 287, baseType: !2027, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2024, file: !50, line: 288, baseType: !2027, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2024, file: !50, line: 289, baseType: !2027, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2024, file: !50, line: 290, baseType: !2027, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2024, file: !50, line: 291, baseType: !2027, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2024, file: !50, line: 292, baseType: !2027, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2024, file: !50, line: 293, baseType: !2027, size: 64, offset: 896)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2024, file: !50, line: 294, baseType: !2027, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2024, file: !50, line: 295, baseType: !2027, size: 64, offset: 1024)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2024, file: !50, line: 296, baseType: !2027, size: 64, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2024, file: !50, line: 297, baseType: !2027, size: 64, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2024, file: !50, line: 298, baseType: !2027, size: 64, offset: 1216)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2024, file: !50, line: 299, baseType: !2027, size: 64, offset: 1280)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2024, file: !50, line: 300, baseType: !2027, size: 64, offset: 1344)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2024, file: !50, line: 301, baseType: !2027, size: 64, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1697, file: !43, line: 470, baseType: !2053, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2055, line: 82, size: 1408, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2059, !2060, !2061, !2062, !2063, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2120, !2123, !2124}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2054, file: !2055, line: 83, baseType: !313, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2054, file: !2055, line: 84, baseType: !313, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2054, file: !2055, line: 85, baseType: !1696, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2054, file: !2055, line: 86, baseType: !1779, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2054, file: !2055, line: 87, baseType: !1779, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2054, file: !2055, line: 88, baseType: !1779, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2054, file: !2055, line: 90, baseType: !2064, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!125, !1696, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !37, line: 95, size: 1152, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2084, !2085, !2086, !2087, !2088, !2096, !2097, !2098, !2099, !2100, !2101}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2068, file: !37, line: 96, baseType: !313, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2068, file: !37, line: 97, baseType: !2053, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2068, file: !37, line: 99, baseType: !119, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2068, file: !37, line: 100, baseType: !313, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2068, file: !37, line: 102, baseType: !342, size: 8, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2068, file: !37, line: 103, baseType: !36, size: 32, offset: 288)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2068, file: !37, line: 105, baseType: !2077, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !37, line: 105, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2068, file: !37, line: 106, baseType: !2081, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !37, line: 106, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2068, file: !37, line: 108, baseType: !2027, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2068, file: !37, line: 109, baseType: !2018, size: 64, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2068, file: !37, line: 110, baseType: !2027, size: 64, offset: 576)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2068, file: !37, line: 111, baseType: !2018, size: 64, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2068, file: !37, line: 112, baseType: !2089, size: 64, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!125, !1696, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !50, line: 52, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !50, line: 50, size: 32, elements: !2094)
!2094 = !{!2095}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2093, file: !50, line: 51, baseType: !125, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2068, file: !37, line: 113, baseType: !2027, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2068, file: !37, line: 114, baseType: !1779, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2068, file: !37, line: 115, baseType: !1779, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2068, file: !37, line: 117, baseType: !2022, size: 64, offset: 960)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2068, file: !37, line: 118, baseType: !2018, size: 64, offset: 1024)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2068, file: !37, line: 120, baseType: !2102, size: 64, offset: 1088)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !37, line: 120, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2054, file: !2055, line: 91, baseType: !2009, size: 64, offset: 448)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2054, file: !2055, line: 92, baseType: !2027, size: 64, offset: 512)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2054, file: !2055, line: 93, baseType: !2018, size: 64, offset: 576)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2054, file: !2055, line: 94, baseType: !2027, size: 64, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2054, file: !2055, line: 95, baseType: !2018, size: 64, offset: 704)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2054, file: !2055, line: 97, baseType: !2027, size: 64, offset: 768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2054, file: !2055, line: 98, baseType: !2027, size: 64, offset: 832)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2054, file: !2055, line: 100, baseType: !2089, size: 64, offset: 896)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2054, file: !2055, line: 101, baseType: !2027, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2054, file: !2055, line: 103, baseType: !2027, size: 64, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2054, file: !2055, line: 105, baseType: !2027, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2054, file: !2055, line: 107, baseType: !2022, size: 64, offset: 1152)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2054, file: !2055, line: 109, baseType: !2117, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2119)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2055, line: 109, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2054, file: !2055, line: 111, baseType: !2121, size: 64, offset: 1280)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2055, line: 111, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2054, file: !2055, line: 112, baseType: !503, offset: 1344)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2054, file: !2055, line: 114, baseType: !342, size: 8, offset: 1344)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1697, file: !43, line: 471, baseType: !2067, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1697, file: !43, line: 473, baseType: !118, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1697, file: !43, line: 475, baseType: !118, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1697, file: !43, line: 480, baseType: !583, size: 192, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1697, file: !43, line: 484, baseType: !2130, size: 576, offset: 1216)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !43, line: 361, size: 576, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2130, file: !43, line: 362, baseType: !181, size: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2130, file: !43, line: 363, baseType: !181, size: 128, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2130, file: !43, line: 364, baseType: !181, size: 128, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2130, file: !43, line: 365, baseType: !181, size: 128, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2130, file: !43, line: 366, baseType: !342, size: 8, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2130, file: !43, line: 367, baseType: !42, size: 32, offset: 544)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1697, file: !43, line: 485, baseType: !2139, size: 2304, offset: 1792)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !50, line: 565, size: 2304, elements: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2247, !2251}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2139, file: !50, line: 566, baseType: !2092, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2139, file: !50, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2139, file: !50, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2139, file: !50, line: 569, baseType: !342, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2139, file: !50, line: 570, baseType: !342, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2139, file: !50, line: 571, baseType: !342, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2139, file: !50, line: 572, baseType: !342, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2139, file: !50, line: 573, baseType: !342, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2139, file: !50, line: 574, baseType: !342, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2139, file: !50, line: 575, baseType: !342, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2139, file: !50, line: 576, baseType: !342, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2139, file: !50, line: 577, baseType: !265, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2139, file: !50, line: 578, baseType: !165, offset: 96)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2139, file: !50, line: 580, baseType: !181, size: 128, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2139, file: !50, line: 581, baseType: !1380, size: 192, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2139, file: !50, line: 582, baseType: !2157, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2159, line: 43, size: 1472, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2168, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2158, file: !2159, line: 44, baseType: !313, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2158, file: !2159, line: 45, baseType: !125, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2158, file: !2159, line: 46, baseType: !181, size: 128, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !2159, line: 47, baseType: !165, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2158, file: !2159, line: 48, baseType: !2166, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !50, line: 533, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2158, file: !2159, line: 49, baseType: !2169, size: 320, offset: 320)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2170, line: 11, size: 320, elements: !2171)
!2170 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2173, !2174, !2179}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2169, file: !2170, line: 16, baseType: !497, size: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2169, file: !2170, line: 17, baseType: !130, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2169, file: !2170, line: 18, baseType: !2175, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2169, file: !2170, line: 19, baseType: !265, size: 32, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2158, file: !2159, line: 50, baseType: !130, size: 64, offset: 640)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2158, file: !2159, line: 51, baseType: !1179, size: 64, offset: 704)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2158, file: !2159, line: 52, baseType: !1179, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2158, file: !2159, line: 53, baseType: !1179, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2158, file: !2159, line: 54, baseType: !1179, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2158, file: !2159, line: 55, baseType: !1179, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2158, file: !2159, line: 56, baseType: !130, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2158, file: !2159, line: 57, baseType: !130, size: 64, offset: 1088)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2158, file: !2159, line: 58, baseType: !130, size: 64, offset: 1152)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2158, file: !2159, line: 59, baseType: !130, size: 64, offset: 1216)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2158, file: !2159, line: 60, baseType: !130, size: 64, offset: 1280)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2158, file: !2159, line: 61, baseType: !1696, size: 64, offset: 1344)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2158, file: !2159, line: 62, baseType: !342, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2158, file: !2159, line: 63, baseType: !342, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2139, file: !50, line: 583, baseType: !342, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2139, file: !50, line: 584, baseType: !342, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2139, file: !50, line: 585, baseType: !342, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2139, file: !50, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2139, file: !50, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2139, file: !50, line: 592, baseType: !1171, size: 512, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2139, file: !50, line: 593, baseType: !269, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2139, file: !50, line: 594, baseType: !2202, size: 256, offset: 1152)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2203, line: 102, size: 256, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2202, file: !2203, line: 103, baseType: !587, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2202, file: !2203, line: 104, baseType: !181, size: 128, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2202, file: !2203, line: 105, baseType: !2208, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2203, line: 21, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2139, file: !50, line: 595, baseType: !160, size: 128, offset: 1408)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2139, file: !50, line: 596, baseType: !2166, size: 64, offset: 1536)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2139, file: !50, line: 597, baseType: !656, size: 32, offset: 1600)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2139, file: !50, line: 598, baseType: !656, size: 32, offset: 1632)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2139, file: !50, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2139, file: !50, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2139, file: !50, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2139, file: !50, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2139, file: !50, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2139, file: !50, line: 604, baseType: !342, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2139, file: !50, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2139, file: !50, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2139, file: !50, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2139, file: !50, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2139, file: !50, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2139, file: !50, line: 610, baseType: !7, size: 32, offset: 1696)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2139, file: !50, line: 611, baseType: !49, size: 32, offset: 1728)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2139, file: !50, line: 612, baseType: !57, size: 32, offset: 1760)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2139, file: !50, line: 613, baseType: !125, size: 32, offset: 1792)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2139, file: !50, line: 614, baseType: !125, size: 32, offset: 1824)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2139, file: !50, line: 615, baseType: !269, size: 64, offset: 1856)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2139, file: !50, line: 616, baseType: !269, size: 64, offset: 1920)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2139, file: !50, line: 617, baseType: !269, size: 64, offset: 1984)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2139, file: !50, line: 618, baseType: !269, size: 64, offset: 2048)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2139, file: !50, line: 620, baseType: !2238, size: 64, offset: 2112)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !50, line: 536, size: 256, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !50, line: 537, baseType: !165)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2239, file: !50, line: 538, baseType: !7, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2239, file: !50, line: 540, baseType: !181, size: 128, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2239, file: !50, line: 543, baseType: !2245, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !50, line: 534, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2139, file: !50, line: 621, baseType: !2248, size: 64, offset: 2176)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !1696, !1323}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2139, file: !50, line: 622, baseType: !2252, size: 64, offset: 2240)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !50, line: 622, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1697, file: !43, line: 486, baseType: !2255, size: 64, offset: 4096)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !50, line: 642, size: 1792, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2264, !2265, !2266}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !50, line: 643, baseType: !2024, size: 1472)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2256, file: !50, line: 644, baseType: !2027, size: 64, offset: 1472)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2256, file: !50, line: 645, baseType: !2261, size: 64, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !1696, !342}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2256, file: !50, line: 646, baseType: !2027, size: 64, offset: 1600)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2256, file: !50, line: 647, baseType: !2018, size: 64, offset: 1664)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2256, file: !50, line: 648, baseType: !2018, size: 64, offset: 1728)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1697, file: !43, line: 493, baseType: !2268, size: 64, offset: 4160)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !43, line: 493, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1697, file: !43, line: 499, baseType: !181, size: 128, offset: 4224)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1697, file: !43, line: 502, baseType: !2272, size: 64, offset: 4352)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !43, line: 502, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1697, file: !43, line: 504, baseType: !2276, size: 64, offset: 4416)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1697, file: !43, line: 505, baseType: !269, size: 64, offset: 4480)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1697, file: !43, line: 510, baseType: !269, size: 64, offset: 4544)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1697, file: !43, line: 511, baseType: !2280, size: 64, offset: 4608)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !43, line: 511, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1697, file: !43, line: 513, baseType: !2284, size: 64, offset: 4672)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !43, line: 288, size: 128, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2285, file: !43, line: 293, baseType: !7, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2285, file: !43, line: 294, baseType: !130, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1697, file: !43, line: 515, baseType: !181, size: 128, offset: 4736)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1697, file: !43, line: 526, baseType: !2291, offset: 4864)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2292, line: 5, elements: !179)
!2292 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1697, file: !43, line: 528, baseType: !2294, size: 64, offset: 4864)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2296, line: 14, flags: DIFlagFwdDecl)
!2296 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1697, file: !43, line: 529, baseType: !2298, size: 64, offset: 4928)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2055, line: 22, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1697, file: !43, line: 534, baseType: !365, size: 32, offset: 4992)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1697, file: !43, line: 535, baseType: !265, size: 32, offset: 5024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1697, file: !43, line: 537, baseType: !165, offset: 5056)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1697, file: !43, line: 538, baseType: !181, size: 128, offset: 5056)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1697, file: !43, line: 540, baseType: !2305, size: 64, offset: 5184)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2307, line: 54, size: 960, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2319, !2323, !2324, !2325, !2326, !2330, !2334, !2335}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2306, file: !2307, line: 55, baseType: !313, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2306, file: !2307, line: 56, baseType: !119, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2306, file: !2307, line: 58, baseType: !1779, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2306, file: !2307, line: 59, baseType: !1779, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2306, file: !2307, line: 60, baseType: !1706, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2306, file: !2307, line: 62, baseType: !2009, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2306, file: !2307, line: 63, baseType: !2316, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!126, !1696, !2016}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2306, file: !2307, line: 65, baseType: !2320, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2305}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2306, file: !2307, line: 66, baseType: !2018, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2306, file: !2307, line: 68, baseType: !2027, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2306, file: !2307, line: 70, baseType: !1815, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2306, file: !2307, line: 71, baseType: !2327, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!1832, !1696}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2306, file: !2307, line: 73, baseType: !2331, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !1696, !1849, !1850}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2306, file: !2307, line: 75, baseType: !2022, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2306, file: !2307, line: 77, baseType: !2121, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1697, file: !43, line: 541, baseType: !1779, size: 64, offset: 5248)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1697, file: !43, line: 543, baseType: !2018, size: 64, offset: 5312)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1697, file: !43, line: 544, baseType: !2339, size: 64, offset: 5376)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !43, line: 45, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1697, file: !43, line: 545, baseType: !2342, size: 64, offset: 5440)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !43, line: 47, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1697, file: !43, line: 547, baseType: !342, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1697, file: !43, line: 548, baseType: !342, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1697, file: !43, line: 549, baseType: !342, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1697, file: !43, line: 550, baseType: !342, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1686, file: !1687, line: 289, baseType: !2349, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !2351, line: 302, size: 1472, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!2352 = !{!2353, !2354, !2355, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2597, !2598, !2601, !2602, !2604, !2693, !2696, !2697, !2822}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2350, file: !2351, line: 303, baseType: !125, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2350, file: !2351, line: 304, baseType: !1691, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !2350, file: !2351, line: 305, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2359, line: 14, size: 832, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2360 = !{!2361, !2362, !2363, !2567, !2568, !2569}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2358, file: !2359, line: 15, baseType: !1700, size: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2358, file: !2359, line: 16, baseType: !119, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2358, file: !2359, line: 17, baseType: !2364, size: 64, offset: 576)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !77, line: 1822, size: 2048, elements: !2367)
!2367 = !{!2368, !2369, !2373, !2377, !2381, !2382, !2383, !2387, !2400, !2401, !2405, !2409, !2410, !2414, !2415, !2419, !2424, !2425, !2429, !2433, !2525, !2529, !2530, !2534, !2535, !2541, !2545, !2550, !2554, !2558, !2562, !2566}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2366, file: !77, line: 1823, baseType: !119, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2366, file: !77, line: 1824, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!383, !202, !383, !125}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2366, file: !77, line: 1825, baseType: !2374, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!431, !202, !126, !434, !605}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2366, file: !77, line: 1826, baseType: !2378, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!431, !202, !313, !434, !605}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2366, file: !77, line: 1827, baseType: !746, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2366, file: !77, line: 1828, baseType: !746, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2366, file: !77, line: 1829, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!125, !749, !342}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2366, file: !77, line: 1830, baseType: !2388, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!125, !202, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !77, line: 1776, size: 128, elements: !2393)
!2393 = !{!2394, !2399}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2392, file: !77, line: 1777, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !77, line: 1773, baseType: !2396)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!125, !2391, !313, !125, !383, !269, !7}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2392, file: !77, line: 1778, baseType: !383, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2366, file: !77, line: 1831, baseType: !2388, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2366, file: !77, line: 1832, baseType: !2402, size: 64, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!141, !202, !1963}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2366, file: !77, line: 1833, baseType: !2406, size: 64, offset: 640)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!394, !202, !7, !130}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2366, file: !77, line: 1834, baseType: !2406, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2366, file: !77, line: 1835, baseType: !2411, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!125, !202, !882}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2366, file: !77, line: 1836, baseType: !130, size: 64, offset: 832)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2366, file: !77, line: 1837, baseType: !2416, size: 64, offset: 896)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!125, !277, !202}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2366, file: !77, line: 1838, baseType: !2420, size: 64, offset: 960)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!125, !202, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !77, line: 1007, baseType: !118)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2366, file: !77, line: 1839, baseType: !2416, size: 64, offset: 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2366, file: !77, line: 1840, baseType: !2426, size: 64, offset: 1088)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!125, !202, !383, !383, !125}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2366, file: !77, line: 1841, baseType: !2430, size: 64, offset: 1152)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!125, !125, !202, !125}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2366, file: !77, line: 1842, baseType: !2434, size: 64, offset: 1216)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!125, !202, !125, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !77, line: 1062, size: 1664, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2470, !2501}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2438, file: !77, line: 1063, baseType: !2437, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2438, file: !77, line: 1064, baseType: !181, size: 128, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2438, file: !77, line: 1065, baseType: !497, size: 128, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2438, file: !77, line: 1066, baseType: !181, size: 128, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2438, file: !77, line: 1069, baseType: !181, size: 128, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2438, file: !77, line: 1072, baseType: !2423, size: 64, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2438, file: !77, line: 1073, baseType: !7, size: 32, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2438, file: !77, line: 1074, baseType: !275, size: 8, offset: 672)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2438, file: !77, line: 1075, baseType: !7, size: 32, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2438, file: !77, line: 1076, baseType: !125, size: 32, offset: 736)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2438, file: !77, line: 1077, baseType: !160, size: 128, offset: 768)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2438, file: !77, line: 1078, baseType: !202, size: 64, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2438, file: !77, line: 1079, baseType: !383, size: 64, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2438, file: !77, line: 1080, baseType: !383, size: 64, offset: 1024)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2438, file: !77, line: 1082, baseType: !187, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2438, file: !77, line: 1084, baseType: !130, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2438, file: !77, line: 1085, baseType: !130, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2438, file: !77, line: 1087, baseType: !2458, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !77, line: 1011, size: 128, elements: !2461)
!2461 = !{!2462, !2466}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2460, file: !77, line: 1012, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !2437, !2437}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2460, file: !77, line: 1013, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2437}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2438, file: !77, line: 1088, baseType: !2471, size: 64, offset: 1344)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !77, line: 1016, size: 512, elements: !2474)
!2474 = !{!2475, !2479, !2483, !2484, !2488, !2492, !2496, !2500}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2473, file: !77, line: 1017, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2423, !2423}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2473, file: !77, line: 1018, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2423}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2473, file: !77, line: 1019, baseType: !2467, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2473, file: !77, line: 1020, baseType: !2485, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!125, !2437, !125}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2473, file: !77, line: 1021, baseType: !2489, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!342, !2437}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2473, file: !77, line: 1022, baseType: !2493, size: 64, offset: 320)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!125, !2437, !125, !184}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2473, file: !77, line: 1023, baseType: !2497, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2437, !723}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2473, file: !77, line: 1024, baseType: !2489, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2438, file: !77, line: 1097, baseType: !2502, size: 256, offset: 1408)
!2502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2438, file: !77, line: 1089, size: 256, elements: !2503)
!2503 = !{!2504, !2513, !2519}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2502, file: !77, line: 1090, baseType: !2505, size: 256)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2506, line: 10, size: 256, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !{!2508, !2509, !2512}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2505, file: !2506, line: 11, baseType: !265, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2505, file: !2506, line: 12, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2506, line: 5, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2505, file: !2506, line: 13, baseType: !181, size: 128, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2502, file: !77, line: 1091, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2506, line: 17, size: 64, elements: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2514, file: !2506, line: 18, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2506, line: 16, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2502, file: !77, line: 1096, baseType: !2520, size: 192)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2502, file: !77, line: 1092, size: 192, elements: !2521)
!2521 = !{!2522, !2523, !2524}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2520, file: !77, line: 1093, baseType: !181, size: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2520, file: !77, line: 1094, baseType: !125, size: 32, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2520, file: !77, line: 1095, baseType: !7, size: 32, offset: 160)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2366, file: !77, line: 1843, baseType: !2526, size: 64, offset: 1280)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!431, !202, !630, !125, !434, !605, !125}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2366, file: !77, line: 1844, baseType: !1002, size: 64, offset: 1344)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2366, file: !77, line: 1845, baseType: !2531, size: 64, offset: 1408)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!125, !125}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2366, file: !77, line: 1846, baseType: !2434, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2366, file: !77, line: 1847, baseType: !2536, size: 64, offset: 1536)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!431, !2539, !202, !605, !434, !7}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1097, line: 53, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2366, file: !77, line: 1848, baseType: !2542, size: 64, offset: 1600)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!431, !202, !605, !2539, !434, !7}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2366, file: !77, line: 1849, baseType: !2546, size: 64, offset: 1664)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!125, !202, !394, !2549, !723}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2366, file: !77, line: 1850, baseType: !2551, size: 64, offset: 1728)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!394, !202, !125, !383, !383}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2366, file: !77, line: 1852, baseType: !2555, size: 64, offset: 1792)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !571, !202}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2366, file: !77, line: 1856, baseType: !2559, size: 64, offset: 1856)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!431, !202, !383, !202, !383, !434, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2366, file: !77, line: 1858, baseType: !2563, size: 64, offset: 1920)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!383, !202, !383, !202, !383, !383, !7}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2366, file: !77, line: 1861, baseType: !2426, size: 64, offset: 1984)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2358, file: !2359, line: 18, baseType: !181, size: 128, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2358, file: !2359, line: 19, baseType: !365, size: 32, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2358, file: !2359, line: 20, baseType: !7, size: 32, offset: 800)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2350, file: !2351, line: 306, baseType: !119, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !2350, file: !2351, line: 307, baseType: !313, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2350, file: !2351, line: 308, baseType: !313, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !2350, file: !2351, line: 309, baseType: !125, size: 32, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2350, file: !2351, line: 310, baseType: !125, size: 32, offset: 352)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !2350, file: !2351, line: 311, baseType: !125, size: 32, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2350, file: !2351, line: 312, baseType: !7, size: 32, offset: 416)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2350, file: !2351, line: 313, baseType: !1084, size: 16, offset: 448)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !2350, file: !2351, line: 314, baseType: !1084, size: 16, offset: 464)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !2350, file: !2351, line: 315, baseType: !2580, size: 352, offset: 480)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2581, line: 32, size: 352, elements: !2582)
!2581 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !{!2583, !2585, !2586, !2587, !2588, !2590, !2594, !2596}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2580, file: !2581, line: 33, baseType: !2584, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2581, line: 9, baseType: !7)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2580, file: !2581, line: 34, baseType: !2584, size: 32, offset: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2580, file: !2581, line: 35, baseType: !2584, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2580, file: !2581, line: 36, baseType: !2584, size: 32, offset: 96)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2580, file: !2581, line: 37, baseType: !2589, size: 8, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2581, line: 7, baseType: !275)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2580, file: !2581, line: 38, baseType: !2591, size: 152, offset: 136)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2589, size: 152, elements: !2592)
!2592 = !{!2593}
!2593 = !DISubrange(count: 19)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2580, file: !2581, line: 39, baseType: !2595, size: 32, offset: 288)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2581, line: 8, baseType: !7)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2580, file: !2581, line: 40, baseType: !2595, size: 32, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !2351, line: 316, baseType: !130, size: 64, offset: 832)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !2350, file: !2351, line: 317, baseType: !2599, size: 64, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2351, line: 317, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2350, file: !2351, line: 318, baseType: !2349, size: 64, offset: 960)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !2350, file: !2351, line: 323, baseType: !2603, size: 64, offset: 1024)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2350, file: !2351, line: 324, baseType: !2605, size: 64, offset: 1088)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1687, line: 230, size: 2432, elements: !2608)
!2608 = !{!2609, !2641, !2642, !2643, !2665, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2688, !2689, !2690, !2691, !2692}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2607, file: !1687, line: 231, baseType: !2610, size: 1024)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1687, line: 85, size: 1024, elements: !2611)
!2611 = !{!2612, !2630, !2631, !2632, !2633, !2634, !2638, !2639, !2640}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2610, file: !1687, line: 86, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1687, line: 58, size: 256, elements: !2615)
!2615 = !{!2616, !2621, !2622, !2623, !2624, !2625, !2626}
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !1687, line: 59, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !1687, line: 59, size: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2617, file: !1687, line: 60, baseType: !2613, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2617, file: !1687, line: 61, baseType: !209, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2614, file: !1687, line: 63, baseType: !125, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2614, file: !1687, line: 64, baseType: !125, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2614, file: !1687, line: 65, baseType: !125, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2614, file: !1687, line: 66, baseType: !125, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !1687, line: 67, baseType: !125, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2614, file: !1687, line: 69, baseType: !2627, offset: 256)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: -1)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2610, file: !1687, line: 87, baseType: !2202, size: 256, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2610, file: !1687, line: 88, baseType: !583, size: 192, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2610, file: !1687, line: 89, baseType: !656, size: 32, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2610, file: !1687, line: 90, baseType: !2614, size: 256, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2610, file: !1687, line: 91, baseType: !2635, size: 64, offset: 832)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !210, line: 54, size: 64, elements: !2636)
!2636 = !{!2637}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2635, file: !210, line: 55, baseType: !213, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2610, file: !1687, line: 92, baseType: !656, size: 32, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2610, file: !1687, line: 93, baseType: !125, size: 32, offset: 928)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2610, file: !1687, line: 94, baseType: !2613, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2607, file: !1687, line: 232, baseType: !1685, size: 64, offset: 1024)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2607, file: !1687, line: 233, baseType: !1685, size: 64, offset: 1088)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2607, file: !1687, line: 234, baseType: !2644, size: 64, offset: 1152)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1687, line: 205, size: 320, elements: !2647)
!2647 = !{!2648, !2652, !2656, !2660, !2664}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2646, file: !1687, line: 207, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!125, !2606}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2646, file: !1687, line: 209, baseType: !2653, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !2606, !125}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2646, file: !1687, line: 213, baseType: !2657, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !2606}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2646, file: !1687, line: 218, baseType: !2661, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!125, !2606, !1685}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2646, file: !1687, line: 220, baseType: !2657, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2607, file: !1687, line: 235, baseType: !2666, size: 64, offset: 1216)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1687, line: 223, size: 128, elements: !2669)
!2669 = !{!2670, !2674}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2668, file: !1687, line: 224, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!125, !2606, !273, !273, !434}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2668, file: !1687, line: 225, baseType: !2657, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2607, file: !1687, line: 236, baseType: !165, offset: 1280)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2607, file: !1687, line: 237, baseType: !125, size: 32, offset: 1280)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2607, file: !1687, line: 238, baseType: !125, size: 32, offset: 1312)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2607, file: !1687, line: 239, baseType: !160, size: 128, offset: 1344)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2607, file: !1687, line: 240, baseType: !160, size: 128, offset: 1472)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !1687, line: 241, baseType: !130, size: 64, offset: 1600)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2607, file: !1687, line: 242, baseType: !130, size: 64, offset: 1664)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2607, file: !1687, line: 243, baseType: !275, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2607, file: !1687, line: 244, baseType: !275, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2607, file: !1687, line: 245, baseType: !583, size: 192, offset: 1792)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2607, file: !1687, line: 246, baseType: !583, size: 192, offset: 1984)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2607, file: !1687, line: 247, baseType: !2687, size: 64, offset: 2176)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2607, file: !1687, line: 248, baseType: !7, size: 32, offset: 2240)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2607, file: !1687, line: 249, baseType: !7, size: 32, offset: 2272)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2607, file: !1687, line: 250, baseType: !125, size: 32, offset: 2304)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2607, file: !1687, line: 253, baseType: !1691, size: 32, offset: 2336)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2607, file: !1687, line: 254, baseType: !118, size: 64, offset: 2368)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2350, file: !2351, line: 325, baseType: !2694, size: 64, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !2350, file: !2351, line: 326, baseType: !118, size: 64, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2350, file: !2351, line: 332, baseType: !2698, size: 64, offset: 1280)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !2351, line: 254, size: 2176, elements: !2701)
!2701 = !{!2702, !2706, !2710, !2714, !2718, !2722, !2726, !2727, !2731, !2735, !2736, !2740, !2741, !2745, !2749, !2753, !2754, !2755, !2756, !2757, !2758, !2762, !2763, !2764, !2768, !2772, !2773, !2777, !2789, !2804, !2810, !2816, !2817, !2821}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2700, file: !2351, line: 255, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!1685, !2349, !202, !125}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2700, file: !2351, line: 257, baseType: !2707, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!125, !2349, !1685}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2700, file: !2351, line: 258, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !2349, !1685}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2700, file: !2351, line: 259, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!125, !1685, !202}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2700, file: !2351, line: 260, baseType: !2719, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !1685, !202}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2700, file: !2351, line: 261, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !1685}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2700, file: !2351, line: 262, baseType: !2723, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2700, file: !2351, line: 263, baseType: !2728, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!125, !1685, !273, !125}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2700, file: !2351, line: 265, baseType: !2732, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!125, !1685, !275}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2700, file: !2351, line: 266, baseType: !2723, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2700, file: !2351, line: 267, baseType: !2737, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!125, !1685}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2700, file: !2351, line: 268, baseType: !2737, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2700, file: !2351, line: 269, baseType: !2742, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!125, !1685, !7, !130}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2700, file: !2351, line: 271, baseType: !2746, size: 64, offset: 832)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!394, !1685, !7, !130}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2700, file: !2351, line: 273, baseType: !2750, size: 64, offset: 896)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !1685, !2695}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2700, file: !2351, line: 274, baseType: !2723, size: 64, offset: 960)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2700, file: !2351, line: 275, baseType: !2723, size: 64, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2700, file: !2351, line: 276, baseType: !2723, size: 64, offset: 1088)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2700, file: !2351, line: 277, baseType: !2723, size: 64, offset: 1152)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2700, file: !2351, line: 278, baseType: !2723, size: 64, offset: 1216)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2700, file: !2351, line: 279, baseType: !2759, size: 64, offset: 1280)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!125, !1685, !125}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2700, file: !2351, line: 280, baseType: !2723, size: 64, offset: 1344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2700, file: !2351, line: 281, baseType: !2723, size: 64, offset: 1408)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2700, file: !2351, line: 282, baseType: !2765, size: 64, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !1685, !125}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2700, file: !2351, line: 283, baseType: !2769, size: 64, offset: 1536)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !1685, !127}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2700, file: !2351, line: 284, baseType: !2737, size: 64, offset: 1600)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2700, file: !2351, line: 285, baseType: !2774, size: 64, offset: 1664)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!125, !1685, !7, !7}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2700, file: !2351, line: 287, baseType: !2778, size: 64, offset: 1728)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!125, !1685, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2783, line: 15, size: 64, elements: !2784)
!2783 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2782, file: !2783, line: 16, baseType: !136, size: 16)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2782, file: !2783, line: 17, baseType: !136, size: 16, offset: 16)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2782, file: !2783, line: 18, baseType: !136, size: 16, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2782, file: !2783, line: 19, baseType: !136, size: 16, offset: 48)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2700, file: !2351, line: 288, baseType: !2790, size: 64, offset: 1792)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!125, !1685, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2795, line: 10, size: 128, elements: !2796)
!2795 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797, !2798, !2799, !2803}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2794, file: !2795, line: 12, baseType: !134, size: 16)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2794, file: !2795, line: 13, baseType: !134, size: 16, offset: 16)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2794, file: !2795, line: 14, baseType: !2800, size: 80, offset: 32)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 80, elements: !2801)
!2801 = !{!2802}
!2802 = !DISubrange(count: 5)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2794, file: !2795, line: 15, baseType: !134, size: 16, offset: 112)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2700, file: !2351, line: 289, baseType: !2805, size: 64, offset: 1856)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!125, !1685, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2351, line: 251, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2700, file: !2351, line: 291, baseType: !2811, size: 64, offset: 1920)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!125, !1685, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2351, line: 252, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2700, file: !2351, line: 292, baseType: !2811, size: 64, offset: 1984)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2700, file: !2351, line: 293, baseType: !2818, size: 64, offset: 2048)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !1685, !571}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2700, file: !2351, line: 299, baseType: !615, size: 64, offset: 2112)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !2350, file: !2351, line: 333, baseType: !181, size: 128, offset: 1344)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1686, file: !1687, line: 290, baseType: !2698, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1686, file: !1687, line: 291, baseType: !125, size: 32, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1686, file: !1687, line: 294, baseType: !2826, size: 384, offset: 320)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2827, line: 133, size: 384, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830, !2831, !2832, !2833}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2826, file: !2827, line: 134, baseType: !587, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2826, file: !2827, line: 135, baseType: !682, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2826, file: !2827, line: 136, baseType: !7, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2826, file: !2827, line: 137, baseType: !181, size: 128, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2826, file: !2827, line: 138, baseType: !181, size: 128, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1686, file: !1687, line: 295, baseType: !2835, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2827, line: 215, size: 128, elements: !2837)
!2837 = !{!2838, !2883}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2836, file: !2827, line: 216, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2827, line: 175, size: 1216, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2853, !2857, !2861, !2862, !2863, !2867, !2868, !2872, !2873, !2877, !2881, !2882}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2840, file: !2827, line: 176, baseType: !125, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2840, file: !2827, line: 177, baseType: !126, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2840, file: !2827, line: 178, baseType: !125, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2840, file: !2827, line: 179, baseType: !125, size: 32, offset: 160)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2840, file: !2827, line: 184, baseType: !2737, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2840, file: !2827, line: 185, baseType: !2723, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2840, file: !2827, line: 186, baseType: !2723, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2840, file: !2827, line: 187, baseType: !2850, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!431, !1685, !202, !2687, !434}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2840, file: !2827, line: 189, baseType: !2854, size: 64, offset: 448)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!431, !1685, !202, !273, !434}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2840, file: !2827, line: 191, baseType: !2858, size: 64, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!125, !1685, !202, !7, !130}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2840, file: !2827, line: 193, baseType: !2858, size: 64, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2840, file: !2827, line: 195, baseType: !2750, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2840, file: !2827, line: 196, baseType: !2864, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!141, !1685, !202, !1963}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2840, file: !2827, line: 198, baseType: !2737, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2840, file: !2827, line: 203, baseType: !2869, size: 64, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !1685, !273, !126, !125}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2840, file: !2827, line: 205, baseType: !2723, size: 64, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2840, file: !2827, line: 206, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !1685, !7}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2840, file: !2827, line: 207, baseType: !2878, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!125, !1685, !273, !126, !125}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2840, file: !2827, line: 210, baseType: !119, size: 64, offset: 1088)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2840, file: !2827, line: 212, baseType: !125, size: 32, offset: 1152)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2836, file: !2827, line: 217, baseType: !1685, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1686, file: !1687, line: 297, baseType: !583, size: 192, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1686, file: !1687, line: 298, baseType: !583, size: 192, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1686, file: !1687, line: 299, baseType: !583, size: 192, offset: 1152)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1686, file: !1687, line: 300, baseType: !676, size: 256, offset: 1344)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1686, file: !1687, line: 301, baseType: !583, size: 192, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1686, file: !1687, line: 302, baseType: !165, offset: 1792)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1686, file: !1687, line: 303, baseType: !165, offset: 1792)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1686, file: !1687, line: 305, baseType: !2580, size: 352, offset: 1792)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1686, file: !1687, line: 305, baseType: !2580, size: 352, offset: 2144)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1686, file: !1687, line: 306, baseType: !2793, size: 64, offset: 2496)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !1687, line: 307, baseType: !2895, size: 512, offset: 2560)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !1741)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1686, file: !1687, line: 308, baseType: !1355, size: 64, offset: 3072)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1686, file: !1687, line: 313, baseType: !1355, size: 64, offset: 3136)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1687, line: 314, baseType: !130, size: 64, offset: 3200)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1686, file: !1687, line: 315, baseType: !125, size: 32, offset: 3264)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1686, file: !1687, line: 316, baseType: !2782, size: 64, offset: 3296)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1686, file: !1687, line: 317, baseType: !130, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1686, file: !1687, line: 318, baseType: !130, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1686, file: !1687, line: 319, baseType: !130, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1686, file: !1687, line: 320, baseType: !125, size: 32, offset: 3456)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1686, file: !1687, line: 321, baseType: !130, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1686, file: !1687, line: 322, baseType: !130, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1686, file: !1687, line: 323, baseType: !130, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1686, file: !1687, line: 324, baseType: !7, size: 32, offset: 3584)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1686, file: !1687, line: 325, baseType: !125, size: 32, offset: 3616)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1686, file: !1687, line: 327, baseType: !1685, size: 64, offset: 3648)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1686, file: !1687, line: 328, baseType: !187, size: 64, offset: 3712)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1686, file: !1687, line: 329, baseType: !160, size: 128, offset: 3776)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1686, file: !1687, line: 330, baseType: !160, size: 128, offset: 3904)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1686, file: !1687, line: 331, baseType: !2202, size: 256, offset: 4032)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1686, file: !1687, line: 332, baseType: !118, size: 64, offset: 4288)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1686, file: !1687, line: 333, baseType: !118, size: 64, offset: 4352)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1686, file: !1687, line: 334, baseType: !165, offset: 4416)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1686, file: !1687, line: 335, baseType: !181, size: 128, offset: 4416)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1686, file: !1687, line: 339, baseType: !125, size: 32, offset: 4544)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1686, file: !1687, line: 340, baseType: !2687, size: 64, offset: 4608)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1686, file: !1687, line: 341, baseType: !125, size: 32, offset: 4672)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1686, file: !1687, line: 343, baseType: !2202, size: 256, offset: 4736)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1686, file: !1687, line: 344, baseType: !2606, size: 64, offset: 4992)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1632, file: !1633, line: 175, baseType: !2925, size: 32, offset: 3200)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !238, line: 805, baseType: !2926)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 798, size: 32, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2926, file: !238, line: 803, baseType: !237, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2926, file: !238, line: 804, baseType: !165, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1632, file: !1633, line: 176, baseType: !269, size: 64, offset: 3264)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1632, file: !1633, line: 176, baseType: !269, size: 64, offset: 3328)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1632, file: !1633, line: 176, baseType: !269, size: 64, offset: 3392)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1632, file: !1633, line: 176, baseType: !269, size: 64, offset: 3456)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1632, file: !1633, line: 177, baseType: !269, size: 64, offset: 3520)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1632, file: !1633, line: 178, baseType: !269, size: 64, offset: 3584)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1632, file: !1633, line: 179, baseType: !1396, size: 128, offset: 3648)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1632, file: !1633, line: 180, baseType: !130, size: 64, offset: 3776)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1632, file: !1633, line: 180, baseType: !130, size: 64, offset: 3840)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1632, file: !1633, line: 180, baseType: !130, size: 64, offset: 3904)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1632, file: !1633, line: 180, baseType: !130, size: 64, offset: 3968)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1632, file: !1633, line: 181, baseType: !130, size: 64, offset: 4032)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1632, file: !1633, line: 181, baseType: !130, size: 64, offset: 4096)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1632, file: !1633, line: 181, baseType: !130, size: 64, offset: 4160)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1632, file: !1633, line: 181, baseType: !130, size: 64, offset: 4224)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1632, file: !1633, line: 182, baseType: !130, size: 64, offset: 4288)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1632, file: !1633, line: 182, baseType: !130, size: 64, offset: 4352)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1632, file: !1633, line: 182, baseType: !130, size: 64, offset: 4416)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1632, file: !1633, line: 182, baseType: !130, size: 64, offset: 4480)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1632, file: !1633, line: 183, baseType: !130, size: 64, offset: 4544)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1632, file: !1633, line: 183, baseType: !130, size: 64, offset: 4608)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1632, file: !1633, line: 184, baseType: !2952, offset: 4672)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2953, line: 12, elements: !179)
!2953 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1632, file: !1633, line: 192, baseType: !271, size: 64, offset: 4672)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1632, file: !1633, line: 203, baseType: !2956, size: 2048, offset: 4736)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2957, size: 2048, elements: !1613)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2958, line: 43, size: 128, elements: !2959)
!2958 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2957, file: !2958, line: 44, baseType: !436, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2957, file: !2958, line: 45, baseType: !436, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1632, file: !1633, line: 220, baseType: !342, size: 8, offset: 6784)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1632, file: !1633, line: 221, baseType: !1084, size: 16, offset: 6800)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1632, file: !1633, line: 222, baseType: !1084, size: 16, offset: 6816)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1632, file: !1633, line: 224, baseType: !875, size: 64, offset: 6848)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1632, file: !1633, line: 227, baseType: !583, size: 192, offset: 6912)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1632, file: !1633, line: 233, baseType: !583, size: 192, offset: 7104)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1096, file: !1097, line: 970, baseType: !2969, size: 64, offset: 9280)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1633, line: 20, size: 16576, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2970, file: !1633, line: 21, baseType: !165)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2970, file: !1633, line: 22, baseType: !1109, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2970, file: !1633, line: 23, baseType: !160, size: 128, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2970, file: !1633, line: 24, baseType: !2976, size: 16384, offset: 192)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2977, size: 16384, elements: !1741)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1643, line: 49, size: 256, elements: !2978)
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2977, file: !1643, line: 50, baseType: !2980, size: 256)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1643, line: 35, size: 256, elements: !2981)
!2981 = !{!2982, !2989, !2990, !2996}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2980, file: !1643, line: 37, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2984, line: 19, baseType: !2985)
!2984 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2984, line: 18, baseType: !2987)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !125}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2980, file: !1643, line: 38, baseType: !130, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2980, file: !1643, line: 44, baseType: !2991, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2984, line: 22, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2984, line: 21, baseType: !2994)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2980, file: !1643, line: 46, baseType: !1647, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1096, file: !1097, line: 971, baseType: !1647, size: 64, offset: 9344)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1096, file: !1097, line: 972, baseType: !1647, size: 64, offset: 9408)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1096, file: !1097, line: 974, baseType: !1647, size: 64, offset: 9472)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1096, file: !1097, line: 975, baseType: !1642, size: 192, offset: 9536)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1096, file: !1097, line: 976, baseType: !130, size: 64, offset: 9728)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1096, file: !1097, line: 977, baseType: !434, size: 64, offset: 9792)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1096, file: !1097, line: 978, baseType: !7, size: 32, offset: 9856)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1096, file: !1097, line: 980, baseType: !218, size: 64, offset: 9920)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1096, file: !1097, line: 989, baseType: !3006, size: 128, offset: 9984)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3007, line: 35, size: 128, elements: !3008)
!3007 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3006, file: !3007, line: 36, baseType: !125, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3006, file: !3007, line: 37, baseType: !656, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3006, file: !3007, line: 38, baseType: !3012, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3007, line: 23, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1096, file: !1097, line: 992, baseType: !269, size: 64, offset: 10112)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1096, file: !1097, line: 993, baseType: !269, size: 64, offset: 10176)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1096, file: !1097, line: 996, baseType: !165, offset: 10240)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1096, file: !1097, line: 999, baseType: !682, offset: 10240)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1096, file: !1097, line: 1001, baseType: !3019, size: 64, offset: 10240)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1097, line: 636, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3019, file: !1097, line: 637, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1096, file: !1097, line: 1005, baseType: !661, size: 128, offset: 10304)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1096, file: !1097, line: 1007, baseType: !1095, size: 64, offset: 10432)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1096, file: !1097, line: 1009, baseType: !3026, size: 64, offset: 10496)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1097, line: 1009, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1096, file: !1097, line: 1043, baseType: !118, size: 64, offset: 10560)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1096, file: !1097, line: 1046, baseType: !3030, size: 64, offset: 10624)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1097, line: 41, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1096, file: !1097, line: 1050, baseType: !3033, size: 64, offset: 10688)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1097, line: 42, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1096, file: !1097, line: 1054, baseType: !3036, size: 64, offset: 10752)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1097, line: 55, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1096, file: !1097, line: 1056, baseType: !3039, size: 64, offset: 10816)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1097, line: 40, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1096, file: !1097, line: 1058, baseType: !3042, size: 64, offset: 10880)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3044, line: 99, size: 704, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3071, !3072}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3043, file: !3044, line: 100, baseType: !587, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3043, file: !3044, line: 101, baseType: !656, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3043, file: !3044, line: 102, baseType: !656, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3043, file: !3044, line: 105, baseType: !165, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3043, file: !3044, line: 107, baseType: !136, size: 16, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3043, file: !3044, line: 109, baseType: !648, size: 128, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3043, file: !3044, line: 110, baseType: !3053, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3044, line: 73, size: 448, elements: !3055)
!3055 = !{!3056, !3059, !3060, !3065, !3070}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3054, file: !3044, line: 74, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3044, line: 74, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3054, file: !3044, line: 75, baseType: !3042, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3044, line: 83, baseType: !3061, size: 128, offset: 128)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3044, line: 83, size: 128, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3061, file: !3044, line: 84, baseType: !181, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3061, file: !3044, line: 85, baseType: !835, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3044, line: 87, baseType: !3066, size: 128, offset: 256)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3044, line: 87, size: 128, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3066, file: !3044, line: 88, baseType: !497, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3066, file: !3044, line: 89, baseType: !215, size: 128, align: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !3044, line: 92, baseType: !7, size: 32, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3043, file: !3044, line: 111, baseType: !493, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3043, file: !3044, line: 113, baseType: !2202, size: 256, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1096, file: !1097, line: 1061, baseType: !3074, size: 64, offset: 10944)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1097, line: 43, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1096, file: !1097, line: 1064, baseType: !130, size: 64, offset: 11008)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1096, file: !1097, line: 1065, baseType: !3078, size: 64, offset: 11072)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1643, line: 14, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1643, line: 12, size: 384, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3080, file: !1643, line: 13, baseType: !3083, size: 384)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !1643, line: 13, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3083, file: !1643, line: 13, baseType: !125, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3083, file: !1643, line: 13, baseType: !125, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3083, file: !1643, line: 13, baseType: !125, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3083, file: !1643, line: 13, baseType: !3089, size: 256, offset: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3090, line: 32, size: 256, elements: !3091)
!3090 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092, !3097, !3110, !3116, !3125, !3145, !3150}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3089, file: !3090, line: 37, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 34, size: 64, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3093, file: !3090, line: 35, baseType: !1344, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3093, file: !3090, line: 36, baseType: !290, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3089, file: !3090, line: 45, baseType: !3098, size: 192)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 40, size: 192, elements: !3099)
!3099 = !{!3100, !3102, !3103, !3109}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3098, file: !3090, line: 41, baseType: !3101, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !291, line: 95, baseType: !125)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3098, file: !3090, line: 42, baseType: !125, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3098, file: !3090, line: 43, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3090, line: 11, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3090, line: 8, size: 64, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3105, file: !3090, line: 9, baseType: !125, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3105, file: !3090, line: 10, baseType: !118, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3098, file: !3090, line: 44, baseType: !125, size: 32, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3089, file: !3090, line: 52, baseType: !3111, size: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 48, size: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3111, file: !3090, line: 49, baseType: !1344, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3111, file: !3090, line: 50, baseType: !290, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3111, file: !3090, line: 51, baseType: !3104, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3089, file: !3090, line: 61, baseType: !3117, size: 256)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 55, size: 256, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3124}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3117, file: !3090, line: 56, baseType: !1344, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3117, file: !3090, line: 57, baseType: !290, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3117, file: !3090, line: 58, baseType: !125, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3117, file: !3090, line: 59, baseType: !3123, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !291, line: 94, baseType: !433)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3117, file: !3090, line: 60, baseType: !3123, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3089, file: !3090, line: 95, baseType: !3126, size: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 64, size: 256, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3126, file: !3090, line: 65, baseType: !118, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !3090, line: 77, baseType: !3130, size: 192, offset: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !3090, line: 77, size: 192, elements: !3131)
!3131 = !{!3132, !3133, !3140}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3130, file: !3090, line: 82, baseType: !1084, size: 16)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3130, file: !3090, line: 88, baseType: !3134, size: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3090, line: 84, size: 192, elements: !3135)
!3135 = !{!3136, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3134, file: !3090, line: 85, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !1209)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3134, file: !3090, line: 86, baseType: !118, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3134, file: !3090, line: 87, baseType: !118, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3130, file: !3090, line: 93, baseType: !3141, size: 96)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3090, line: 90, size: 96, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3141, file: !3090, line: 91, baseType: !3137, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3141, file: !3090, line: 92, baseType: !266, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3089, file: !3090, line: 101, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 98, size: 128, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3146, file: !3090, line: 99, baseType: !394, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3146, file: !3090, line: 100, baseType: !125, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3089, file: !3090, line: 108, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 104, size: 128, elements: !3152)
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3151, file: !3090, line: 105, baseType: !118, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3151, file: !3090, line: 106, baseType: !125, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3151, file: !3090, line: 107, baseType: !7, size: 32, offset: 96)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1096, file: !1097, line: 1067, baseType: !2952, offset: 11136)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1096, file: !1097, line: 1099, baseType: !3158, size: 64, offset: 11136)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1097, line: 56, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1096, file: !1097, line: 1103, baseType: !181, size: 128, offset: 11200)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1096, file: !1097, line: 1104, baseType: !3162, size: 64, offset: 11328)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1097, line: 46, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1096, file: !1097, line: 1105, baseType: !583, size: 192, offset: 11392)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1096, file: !1097, line: 1106, baseType: !7, size: 32, offset: 11584)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1096, file: !1097, line: 1109, baseType: !3167, size: 128, offset: 11648)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3168, size: 128, elements: !1447)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1097, line: 51, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1096, file: !1097, line: 1110, baseType: !583, size: 192, offset: 11776)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1096, file: !1097, line: 1111, baseType: !181, size: 128, offset: 11968)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1096, file: !1097, line: 1173, baseType: !3173, size: 64, offset: 12096)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3175, line: 62, size: 256, align: 256, elements: !3176)
!3175 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3176 = !{!3177, !3178, !3179, !3184}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3174, file: !3175, line: 75, baseType: !266, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3174, file: !3175, line: 90, baseType: !266, size: 32, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3174, file: !3175, line: 124, baseType: !3180, size: 64, offset: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3174, file: !3175, line: 109, size: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3180, file: !3175, line: 110, baseType: !270, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3180, file: !3175, line: 112, baseType: !270, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3174, file: !3175, line: 144, baseType: !266, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1096, file: !1097, line: 1174, baseType: !265, size: 32, offset: 12160)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1096, file: !1097, line: 1179, baseType: !130, size: 64, offset: 12224)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1096, file: !1097, line: 1182, baseType: !3188, size: 128, offset: 12288)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1052, line: 76, size: 128, elements: !3189)
!3189 = !{!3190, !3195, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3188, file: !1052, line: 85, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3192, line: 7, size: 64, elements: !3193)
!3192 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3193 = !{!3194}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3191, file: !3192, line: 12, baseType: !1246, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3188, file: !1052, line: 88, baseType: !342, size: 8, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3188, file: !1052, line: 95, baseType: !342, size: 8, offset: 72)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !1097, line: 1184, baseType: !3198, size: 128, offset: 12416)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !1097, line: 1184, size: 128, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3198, file: !1097, line: 1185, baseType: !1109, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3198, file: !1097, line: 1186, baseType: !215, size: 128, align: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1096, file: !1097, line: 1190, baseType: !2539, size: 64, offset: 12544)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1096, file: !1097, line: 1192, baseType: !3204, size: 128, offset: 12608)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1052, line: 64, size: 128, elements: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3204, file: !1052, line: 65, baseType: !630, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3204, file: !1052, line: 67, baseType: !266, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3204, file: !1052, line: 68, baseType: !266, size: 32, offset: 96)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1096, file: !1097, line: 1206, baseType: !125, size: 32, offset: 12736)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1096, file: !1097, line: 1207, baseType: !125, size: 32, offset: 12768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1096, file: !1097, line: 1209, baseType: !130, size: 64, offset: 12800)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1096, file: !1097, line: 1219, baseType: !269, size: 64, offset: 12864)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1096, file: !1097, line: 1220, baseType: !269, size: 64, offset: 12928)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1096, file: !1097, line: 1317, baseType: !125, size: 32, offset: 12992)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1096, file: !1097, line: 1319, baseType: !1095, size: 64, offset: 13056)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1096, file: !1097, line: 1322, baseType: !3217, size: 64, offset: 13120)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1097, line: 1322, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1096, file: !1097, line: 1326, baseType: !1109, size: 32, offset: 13184)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1096, file: !1097, line: 1342, baseType: !118, size: 64, offset: 13248)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1096, file: !1097, line: 1343, baseType: !270, size: 64, offset: 13312)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1096, file: !1097, line: 1344, baseType: !269, size: 64, offset: 13376)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1096, file: !1097, line: 1345, baseType: !270, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1096, file: !1097, line: 1346, baseType: !270, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1096, file: !1097, line: 1347, baseType: !270, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1096, file: !1097, line: 1348, baseType: !215, size: 128, align: 64, offset: 13504)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1096, file: !1097, line: 1358, baseType: !3228, size: 34816, offset: 13824)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3229, line: 485, size: 34816, elements: !3230)
!3229 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3230 = !{!3231, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3260, !3261, !3262, !3263, !3264, !3265, !3268, !3269, !3270}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3228, file: !3229, line: 487, baseType: !3232, size: 192)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3233, size: 192, elements: !509)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3234, line: 16, size: 64, elements: !3235)
!3234 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3233, file: !3234, line: 17, baseType: !132, size: 16)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3233, file: !3234, line: 18, baseType: !132, size: 16, offset: 16)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3233, file: !3234, line: 19, baseType: !132, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3233, file: !3234, line: 19, baseType: !132, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3233, file: !3234, line: 19, baseType: !132, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3233, file: !3234, line: 19, baseType: !132, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3233, file: !3234, line: 19, baseType: !132, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3233, file: !3234, line: 20, baseType: !132, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3233, file: !3234, line: 20, baseType: !132, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3233, file: !3234, line: 20, baseType: !132, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3233, file: !3234, line: 20, baseType: !132, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3233, file: !3234, line: 20, baseType: !132, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3233, file: !3234, line: 20, baseType: !132, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3228, file: !3229, line: 491, baseType: !130, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3228, file: !3229, line: 495, baseType: !136, size: 16, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3228, file: !3229, line: 496, baseType: !136, size: 16, offset: 272)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3228, file: !3229, line: 497, baseType: !136, size: 16, offset: 288)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3228, file: !3229, line: 498, baseType: !136, size: 16, offset: 304)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3228, file: !3229, line: 502, baseType: !130, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3228, file: !3229, line: 503, baseType: !130, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3228, file: !3229, line: 514, baseType: !3257, size: 256, offset: 448)
!3257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3258, size: 256, elements: !1056)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3229, line: 483, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3228, file: !3229, line: 516, baseType: !130, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3228, file: !3229, line: 518, baseType: !130, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3228, file: !3229, line: 520, baseType: !130, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3228, file: !3229, line: 521, baseType: !130, size: 64, offset: 896)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3228, file: !3229, line: 522, baseType: !130, size: 64, offset: 960)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3228, file: !3229, line: 528, baseType: !3266, size: 64, offset: 1024)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3229, line: 10, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3228, file: !3229, line: 535, baseType: !130, size: 64, offset: 1088)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3228, file: !3229, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3228, file: !3229, line: 540, baseType: !3271, size: 33280, offset: 1536)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3272, line: 317, size: 33280, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3273 = !{!3274, !3275, !3276}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3271, file: !3272, line: 330, baseType: !7, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3271, file: !3272, line: 337, baseType: !130, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3271, file: !3272, line: 348, baseType: !3277, size: 32768, offset: 512)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3272, line: 304, size: 32768, elements: !3278)
!3278 = !{!3279, !3294, !3333, !3383, !3396}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3277, file: !3272, line: 305, baseType: !3280, size: 896)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3272, line: 12, size: 896, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3293}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3280, file: !3272, line: 13, baseType: !265, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3280, file: !3272, line: 14, baseType: !265, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3280, file: !3272, line: 15, baseType: !265, size: 32, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3280, file: !3272, line: 16, baseType: !265, size: 32, offset: 96)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3280, file: !3272, line: 17, baseType: !265, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3280, file: !3272, line: 18, baseType: !265, size: 32, offset: 160)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3280, file: !3272, line: 19, baseType: !265, size: 32, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3280, file: !3272, line: 22, baseType: !3290, size: 640, offset: 224)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !3291)
!3291 = !{!3292}
!3292 = !DISubrange(count: 20)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3280, file: !3272, line: 25, baseType: !265, size: 32, offset: 864)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3277, file: !3272, line: 306, baseType: !3295, size: 4096, align: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3272, line: 34, size: 4096, align: 128, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3316, !3317, !3318, !3322, !3324, !3328}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3295, file: !3272, line: 35, baseType: !132, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3295, file: !3272, line: 36, baseType: !132, size: 16, offset: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3295, file: !3272, line: 37, baseType: !132, size: 16, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3295, file: !3272, line: 38, baseType: !132, size: 16, offset: 48)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !3272, line: 39, baseType: !3302, size: 128, offset: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3295, file: !3272, line: 39, size: 128, elements: !3303)
!3303 = !{!3304, !3309}
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !3272, line: 40, baseType: !3305, size: 128)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3272, line: 40, size: 128, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3305, file: !3272, line: 41, baseType: !269, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3305, file: !3272, line: 42, baseType: !269, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !3272, line: 44, baseType: !3310, size: 128)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3272, line: 44, size: 128, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3310, file: !3272, line: 45, baseType: !265, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3310, file: !3272, line: 46, baseType: !265, size: 32, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3310, file: !3272, line: 47, baseType: !265, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3310, file: !3272, line: 48, baseType: !265, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3295, file: !3272, line: 51, baseType: !265, size: 32, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3295, file: !3272, line: 52, baseType: !265, size: 32, offset: 224)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3295, file: !3272, line: 55, baseType: !3319, size: 1024, offset: 256)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !3320)
!3320 = !{!3321}
!3321 = !DISubrange(count: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3295, file: !3272, line: 58, baseType: !3323, size: 2048, offset: 1280)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !1741)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3295, file: !3272, line: 60, baseType: !3325, size: 384, offset: 3328)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 12)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !3272, line: 62, baseType: !3329, size: 384, offset: 3712)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3295, file: !3272, line: 62, size: 384, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3329, file: !3272, line: 63, baseType: !3325, size: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3329, file: !3272, line: 64, baseType: !3325, size: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3277, file: !3272, line: 307, baseType: !3334, size: 1088)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3272, line: 79, size: 1088, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3382}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3334, file: !3272, line: 80, baseType: !265, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3334, file: !3272, line: 81, baseType: !265, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3334, file: !3272, line: 82, baseType: !265, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3334, file: !3272, line: 83, baseType: !265, size: 32, offset: 96)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3334, file: !3272, line: 84, baseType: !265, size: 32, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3334, file: !3272, line: 85, baseType: !265, size: 32, offset: 160)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3334, file: !3272, line: 86, baseType: !265, size: 32, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3334, file: !3272, line: 88, baseType: !3290, size: 640, offset: 224)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3334, file: !3272, line: 89, baseType: !1231, size: 8, offset: 864)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3334, file: !3272, line: 90, baseType: !1231, size: 8, offset: 872)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3334, file: !3272, line: 91, baseType: !1231, size: 8, offset: 880)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3334, file: !3272, line: 92, baseType: !1231, size: 8, offset: 888)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3334, file: !3272, line: 93, baseType: !1231, size: 8, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3334, file: !3272, line: 94, baseType: !1231, size: 8, offset: 904)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3334, file: !3272, line: 95, baseType: !3351, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3353, line: 11, size: 128, elements: !3354)
!3353 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3352, file: !3353, line: 12, baseType: !394, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3352, file: !3353, line: 13, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3359, line: 56, size: 1344, elements: !3360)
!3359 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3358, file: !3359, line: 61, baseType: !130, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3358, file: !3359, line: 62, baseType: !130, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3358, file: !3359, line: 63, baseType: !130, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3358, file: !3359, line: 64, baseType: !130, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3358, file: !3359, line: 65, baseType: !130, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3358, file: !3359, line: 66, baseType: !130, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3358, file: !3359, line: 68, baseType: !130, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3358, file: !3359, line: 69, baseType: !130, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3358, file: !3359, line: 70, baseType: !130, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3358, file: !3359, line: 71, baseType: !130, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3358, file: !3359, line: 72, baseType: !130, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3358, file: !3359, line: 73, baseType: !130, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3358, file: !3359, line: 74, baseType: !130, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3358, file: !3359, line: 75, baseType: !130, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3358, file: !3359, line: 76, baseType: !130, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3358, file: !3359, line: 81, baseType: !130, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3358, file: !3359, line: 83, baseType: !130, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3358, file: !3359, line: 84, baseType: !130, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3358, file: !3359, line: 85, baseType: !130, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3358, file: !3359, line: 86, baseType: !130, size: 64, offset: 1216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3358, file: !3359, line: 87, baseType: !130, size: 64, offset: 1280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3334, file: !3272, line: 96, baseType: !265, size: 32, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3277, file: !3272, line: 308, baseType: !3384, size: 4608, align: 512)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3272, line: 289, size: 4608, align: 512, elements: !3385)
!3385 = !{!3386, !3387, !3394}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3384, file: !3272, line: 290, baseType: !3295, size: 4096, align: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3384, file: !3272, line: 291, baseType: !3388, size: 512, offset: 4096)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3272, line: 268, size: 512, elements: !3389)
!3389 = !{!3390, !3391, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3388, file: !3272, line: 269, baseType: !269, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3388, file: !3272, line: 270, baseType: !269, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3388, file: !3272, line: 271, baseType: !3393, size: 384, offset: 128)
!3393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !1503)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3384, file: !3272, line: 292, baseType: !3395, offset: 4608)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, elements: !1601)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3277, file: !3272, line: 309, baseType: !3397, size: 32768)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 32768, elements: !3398)
!3398 = !{!3399}
!3399 = !DISubrange(count: 4096)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !632, line: 378, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1088, file: !632, line: 384, baseType: !1380, size: 192, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !879, file: !632, line: 500, baseType: !165, offset: 6656)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !879, file: !632, line: 501, baseType: !3405, size: 64, offset: 6656)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !632, line: 387, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !879, file: !632, line: 516, baseType: !1591, size: 64, offset: 6720)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !879, file: !632, line: 519, baseType: !202, size: 64, offset: 6784)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !879, file: !632, line: 521, baseType: !3410, size: 64, offset: 6848)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !632, line: 521, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !879, file: !632, line: 545, baseType: !656, size: 32, offset: 6912)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !879, file: !632, line: 548, baseType: !342, size: 8, offset: 6944)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !879, file: !632, line: 550, baseType: !3415, offset: 6952)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3416, line: 142, elements: !179)
!3416 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !879, file: !632, line: 554, baseType: !2202, size: 256, offset: 6976)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !879, file: !632, line: 557, baseType: !265, size: 32, offset: 7232)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !876, file: !632, line: 565, baseType: !2627, offset: 7296)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !872, file: !632, line: 151, baseType: !656, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !864, file: !632, line: 156, baseType: !165, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !632, line: 159, baseType: !3423, size: 128)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !636, file: !632, line: 159, size: 128, elements: !3424)
!3424 = !{!3425, !3489}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3423, file: !632, line: 161, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !64, line: 110, size: 1152, elements: !3428)
!3428 = !{!3429, !3439, !3460, !3461, !3462, !3463, !3464, !3476, !3477, !3478}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3427, file: !64, line: 111, baseType: !3430, size: 384)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !64, line: 19, size: 384, elements: !3431)
!3431 = !{!3432, !3434, !3435, !3436, !3437, !3438}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3430, file: !64, line: 20, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3430, file: !64, line: 21, baseType: !3433, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3430, file: !64, line: 22, baseType: !3433, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3430, file: !64, line: 23, baseType: !130, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3430, file: !64, line: 24, baseType: !130, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3430, file: !64, line: 25, baseType: !130, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3427, file: !64, line: 112, baseType: !3440, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3442, line: 105, size: 128, elements: !3443)
!3442 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3441, file: !3442, line: 110, baseType: !130, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3441, file: !3442, line: 118, baseType: !3446, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3442, line: 95, size: 448, elements: !3448)
!3448 = !{!3449, !3450, !3455, !3456, !3457, !3458, !3459}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3447, file: !3442, line: 96, baseType: !587, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3447, file: !3442, line: 97, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3442, line: 60, baseType: !3453)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3440}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3447, file: !3442, line: 98, baseType: !3451, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3447, file: !3442, line: 99, baseType: !342, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3447, file: !3442, line: 100, baseType: !342, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3447, file: !3442, line: 101, baseType: !215, size: 128, align: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3447, file: !3442, line: 102, baseType: !3440, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3427, file: !64, line: 113, baseType: !3441, size: 128, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3427, file: !64, line: 114, baseType: !1380, size: 192, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3427, file: !64, line: 115, baseType: !63, size: 32, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3427, file: !64, line: 116, baseType: !7, size: 32, offset: 800)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3427, file: !64, line: 117, baseType: !3465, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !64, line: 67, size: 256, elements: !3468)
!3468 = !{!3469, !3470, !3474, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3467, file: !64, line: 73, baseType: !742, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3467, file: !64, line: 78, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !3426}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3467, file: !64, line: 83, baseType: !3471, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3467, file: !64, line: 89, baseType: !928, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3427, file: !64, line: 118, baseType: !118, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3427, file: !64, line: 119, baseType: !125, size: 32, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3427, file: !64, line: 120, baseType: !3479, size: 128, offset: 1024)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3427, file: !64, line: 120, size: 128, elements: !3480)
!3480 = !{!3481, !3487}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3479, file: !64, line: 121, baseType: !3482, size: 128)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3483, line: 6, size: 128, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3482, file: !3483, line: 7, baseType: !269, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3482, file: !3483, line: 8, baseType: !269, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3479, file: !64, line: 122, baseType: !3488)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3482, elements: !1601)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3423, file: !632, line: 162, baseType: !118, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !636, file: !632, line: 176, baseType: !215, size: 128, align: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 179, baseType: !3492, size: 32, offset: 384)
!3492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 179, size: 32, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3492, file: !632, line: 184, baseType: !656, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3492, file: !632, line: 192, baseType: !7, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3492, file: !632, line: 194, baseType: !7, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3492, file: !632, line: 195, baseType: !125, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !631, file: !632, line: 199, baseType: !656, size: 32, offset: 416)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !517, file: !77, line: 1964, baseType: !3500, size: 64, offset: 1344)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!394, !458, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3505, line: 12, size: 256, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3509, !3510, !3511}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3504, file: !3505, line: 13, baseType: !128, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3504, file: !3505, line: 16, baseType: !125, size: 32, offset: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3504, file: !3505, line: 23, baseType: !130, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3504, file: !3505, line: 30, baseType: !130, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3504, file: !3505, line: 33, baseType: !3512, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3505, line: 33, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !517, file: !77, line: 1966, baseType: !3500, size: 64, offset: 1408)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !459, file: !77, line: 1424, baseType: !3516, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !71, line: 322, size: 704, elements: !3519)
!3519 = !{!3520, !3566, !3570, !3574, !3575, !3576, !3577, !3578, !3583, !3588, !3592}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3518, file: !71, line: 323, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!125, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !71, line: 294, size: 1600, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3551, !3552, !3553}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3525, file: !71, line: 295, baseType: !497, size: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3525, file: !71, line: 296, baseType: !181, size: 128, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3525, file: !71, line: 297, baseType: !181, size: 128, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3525, file: !71, line: 298, baseType: !181, size: 128, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3525, file: !71, line: 299, baseType: !583, size: 192, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3525, file: !71, line: 300, baseType: !165, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3525, file: !71, line: 301, baseType: !656, size: 32, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3525, file: !71, line: 302, baseType: !458, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3525, file: !71, line: 303, baseType: !3536, size: 64, offset: 832)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !71, line: 68, size: 64, elements: !3537)
!3537 = !{!3538, !3550}
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !3536, file: !71, line: 69, baseType: !3539, size: 32)
!3539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3536, file: !71, line: 69, size: 32, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3539, file: !71, line: 70, baseType: !284, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3539, file: !71, line: 71, baseType: !293, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3539, file: !71, line: 72, baseType: !3544, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3545, line: 24, baseType: !3546)
!3545 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3545, line: 22, size: 32, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3546, file: !3545, line: 23, baseType: !3549, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3545, line: 20, baseType: !290)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3536, file: !71, line: 74, baseType: !70, size: 32, offset: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3525, file: !71, line: 304, baseType: !383, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3525, file: !71, line: 305, baseType: !130, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3525, file: !71, line: 306, baseType: !3554, size: 576, offset: 1024)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !71, line: 205, size: 576, elements: !3555)
!3555 = !{!3556, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3554, file: !71, line: 206, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !71, line: 66, baseType: !385)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3554, file: !71, line: 207, baseType: !3557, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3554, file: !71, line: 208, baseType: !3557, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3554, file: !71, line: 209, baseType: !3557, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3554, file: !71, line: 210, baseType: !3557, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3554, file: !71, line: 211, baseType: !3557, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3554, file: !71, line: 212, baseType: !3557, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3554, file: !71, line: 213, baseType: !391, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3554, file: !71, line: 214, baseType: !391, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3518, file: !71, line: 324, baseType: !3567, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!3524, !458, !125}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3518, file: !71, line: 325, baseType: !3571, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{null, !3524}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3518, file: !71, line: 326, baseType: !3521, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3518, file: !71, line: 327, baseType: !3521, size: 64, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3518, file: !71, line: 328, baseType: !3521, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3518, file: !71, line: 329, baseType: !545, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3518, file: !71, line: 332, baseType: !3579, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!3582, !277}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3518, file: !71, line: 333, baseType: !3584, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!125, !277, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3518, file: !71, line: 335, baseType: !3589, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!125, !277, !3582}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3518, file: !71, line: 337, baseType: !3593, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!125, !458, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !459, file: !77, line: 1425, baseType: !3598, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !71, line: 428, size: 704, elements: !3601)
!3601 = !{!3602, !3606, !3607, !3611, !3612, !3613, !3628, !3651, !3655, !3656, !3679}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3600, file: !71, line: 429, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!125, !458, !125, !125, !402}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3600, file: !71, line: 430, baseType: !545, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3600, file: !71, line: 431, baseType: !3608, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!125, !458, !7}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3600, file: !71, line: 432, baseType: !3608, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3600, file: !71, line: 433, baseType: !545, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3600, file: !71, line: 434, baseType: !3614, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!125, !458, !125, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !71, line: 415, size: 256, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3618, file: !71, line: 416, baseType: !125, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3618, file: !71, line: 417, baseType: !7, size: 32, offset: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3618, file: !71, line: 418, baseType: !7, size: 32, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3618, file: !71, line: 420, baseType: !7, size: 32, offset: 96)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3618, file: !71, line: 421, baseType: !7, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3618, file: !71, line: 422, baseType: !7, size: 32, offset: 160)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3618, file: !71, line: 423, baseType: !7, size: 32, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3618, file: !71, line: 424, baseType: !7, size: 32, offset: 224)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3600, file: !71, line: 435, baseType: !3629, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!125, !458, !3536, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !71, line: 343, size: 960, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3633, file: !71, line: 344, baseType: !125, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3633, file: !71, line: 345, baseType: !269, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3633, file: !71, line: 346, baseType: !269, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3633, file: !71, line: 347, baseType: !269, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3633, file: !71, line: 348, baseType: !269, size: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3633, file: !71, line: 349, baseType: !269, size: 64, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3633, file: !71, line: 350, baseType: !269, size: 64, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3633, file: !71, line: 351, baseType: !593, size: 64, offset: 448)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3633, file: !71, line: 353, baseType: !593, size: 64, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3633, file: !71, line: 354, baseType: !125, size: 32, offset: 576)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3633, file: !71, line: 355, baseType: !125, size: 32, offset: 608)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3633, file: !71, line: 356, baseType: !269, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3633, file: !71, line: 357, baseType: !269, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3633, file: !71, line: 358, baseType: !269, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3633, file: !71, line: 359, baseType: !593, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3633, file: !71, line: 360, baseType: !125, size: 32, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3600, file: !71, line: 436, baseType: !3652, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!125, !458, !3596, !3632}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3600, file: !71, line: 438, baseType: !3629, size: 64, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3600, file: !71, line: 439, baseType: !3657, size: 64, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!125, !458, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !71, line: 409, size: 1408, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3661, file: !71, line: 410, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3661, file: !71, line: 411, baseType: !3665, size: 1344, offset: 64)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3666, size: 1344, elements: !509)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !71, line: 395, size: 448, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3678}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3666, file: !71, line: 396, baseType: !7, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3666, file: !71, line: 397, baseType: !7, size: 32, offset: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3666, file: !71, line: 399, baseType: !7, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3666, file: !71, line: 400, baseType: !7, size: 32, offset: 96)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3666, file: !71, line: 401, baseType: !7, size: 32, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3666, file: !71, line: 402, baseType: !7, size: 32, offset: 160)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3666, file: !71, line: 403, baseType: !7, size: 32, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3666, file: !71, line: 404, baseType: !271, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3666, file: !71, line: 405, baseType: !3677, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !129, line: 126, baseType: !269)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3666, file: !71, line: 406, baseType: !3677, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3600, file: !71, line: 440, baseType: !3608, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !459, file: !77, line: 1426, baseType: !3681, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3683)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !77, line: 49, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !459, file: !77, line: 1427, baseType: !130, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !459, file: !77, line: 1428, baseType: !130, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !459, file: !77, line: 1429, baseType: !130, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !459, file: !77, line: 1430, baseType: !232, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !459, file: !77, line: 1431, baseType: !676, size: 256, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !459, file: !77, line: 1432, baseType: !125, size: 32, offset: 1152)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !459, file: !77, line: 1433, baseType: !656, size: 32, offset: 1184)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !459, file: !77, line: 1437, baseType: !3692, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !77, line: 1437, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !459, file: !77, line: 1449, baseType: !3697, size: 64, offset: 1280)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !248, line: 34, size: 64, elements: !3698)
!3698 = !{!3699}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3697, file: !248, line: 35, baseType: !251, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !459, file: !77, line: 1450, baseType: !181, size: 128, offset: 1344)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !459, file: !77, line: 1451, baseType: !3702, size: 64, offset: 1472)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !77, line: 699, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !459, file: !77, line: 1452, baseType: !3039, size: 64, offset: 1536)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !459, file: !77, line: 1453, baseType: !3706, size: 64, offset: 1600)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !77, line: 1453, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !459, file: !77, line: 1454, baseType: !497, size: 128, offset: 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !459, file: !77, line: 1455, baseType: !7, size: 32, offset: 1792)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !459, file: !77, line: 1456, baseType: !3711, size: 2432, offset: 1856)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !71, line: 518, size: 2432, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3717, !3749}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !71, line: 519, baseType: !7, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3711, file: !71, line: 520, baseType: !676, size: 256, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3711, file: !71, line: 521, baseType: !3716, size: 192, offset: 320)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 192, elements: !509)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3711, file: !71, line: 522, baseType: !3718, size: 1728, offset: 512)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, size: 1728, elements: !509)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !71, line: 222, size: 576, elements: !3720)
!3720 = !{!3721, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3719, file: !71, line: 223, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !71, line: 443, size: 256, elements: !3724)
!3724 = !{!3725, !3726, !3739, !3740}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3723, file: !71, line: 444, baseType: !125, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3723, file: !71, line: 445, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !71, line: 310, size: 512, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3729, file: !71, line: 311, baseType: !545, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3729, file: !71, line: 312, baseType: !545, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3729, file: !71, line: 313, baseType: !545, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3729, file: !71, line: 314, baseType: !545, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3729, file: !71, line: 315, baseType: !3521, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3729, file: !71, line: 316, baseType: !3521, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3729, file: !71, line: 317, baseType: !3521, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3729, file: !71, line: 318, baseType: !3593, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3723, file: !71, line: 446, baseType: !119, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3723, file: !71, line: 447, baseType: !3722, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3719, file: !71, line: 224, baseType: !125, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3719, file: !71, line: 226, baseType: !181, size: 128, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3719, file: !71, line: 227, baseType: !130, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3719, file: !71, line: 228, baseType: !7, size: 32, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3719, file: !71, line: 229, baseType: !7, size: 32, offset: 352)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3719, file: !71, line: 230, baseType: !3557, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3719, file: !71, line: 231, baseType: !3557, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3719, file: !71, line: 232, baseType: !118, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !71, line: 523, baseType: !3750, size: 192, offset: 2240)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3727, size: 192, elements: !509)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !459, file: !77, line: 1458, baseType: !3752, size: 2112, offset: 4288)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !77, line: 1410, size: 2112, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3752, file: !77, line: 1411, baseType: !125, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3752, file: !77, line: 1412, baseType: !160, size: 128, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3752, file: !77, line: 1413, baseType: !3757, size: 1920, offset: 192)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3758, size: 1920, elements: !509)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3759, line: 12, size: 640, elements: !3760)
!3759 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3760 = !{!3761, !3769, !3771, !3776, !3777}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3758, file: !3759, line: 13, baseType: !3762, size: 320)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3763, line: 17, size: 320, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3762, file: !3763, line: 18, baseType: !125, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3762, file: !3763, line: 19, baseType: !125, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3762, file: !3763, line: 20, baseType: !160, size: 128, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3762, file: !3763, line: 22, baseType: !215, size: 128, align: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3758, file: !3759, line: 14, baseType: !3770, size: 64, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3758, file: !3759, line: 15, baseType: !3772, size: 64, offset: 384)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3773, line: 16, size: 64, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3772, file: !3773, line: 17, baseType: !1095, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3758, file: !3759, line: 16, baseType: !160, size: 128, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3758, file: !3759, line: 17, baseType: !656, size: 32, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !459, file: !77, line: 1465, baseType: !118, size: 64, offset: 6400)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !459, file: !77, line: 1468, baseType: !265, size: 32, offset: 6464)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !459, file: !77, line: 1470, baseType: !391, size: 64, offset: 6528)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !459, file: !77, line: 1471, baseType: !391, size: 64, offset: 6592)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !459, file: !77, line: 1473, baseType: !266, size: 32, offset: 6656)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !459, file: !77, line: 1474, baseType: !3784, size: 64, offset: 6720)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !77, line: 603, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !459, file: !77, line: 1477, baseType: !3787, size: 256, offset: 6784)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !3320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !459, file: !77, line: 1478, baseType: !3789, size: 128, offset: 7040)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3790, line: 18, baseType: !3791)
!3790 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3790, line: 16, size: 128, elements: !3792)
!3792 = !{!3793}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3791, file: !3790, line: 17, baseType: !3794, size: 128)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 128, elements: !1613)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !459, file: !77, line: 1480, baseType: !7, size: 32, offset: 7168)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !459, file: !77, line: 1481, baseType: !3797, size: 32, offset: 7200)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !129, line: 150, baseType: !7)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !459, file: !77, line: 1487, baseType: !583, size: 192, offset: 7232)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !459, file: !77, line: 1493, baseType: !313, size: 64, offset: 7424)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !459, file: !77, line: 1495, baseType: !3801, size: 64, offset: 7488)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !230, line: 135, size: 1024, align: 512, elements: !3804)
!3804 = !{!3805, !3809, !3810, !3817, !3823, !3827, !3831, !3835, !3836, !3840, !3844, !3849, !3853}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3803, file: !230, line: 136, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!125, !232, !7}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3803, file: !230, line: 137, baseType: !3806, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3803, file: !230, line: 138, baseType: !3811, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!125, !3814, !3816}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3803, file: !230, line: 139, baseType: !3818, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!125, !3814, !7, !313, !3821}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3803, file: !230, line: 141, baseType: !3824, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!125, !3814}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3803, file: !230, line: 142, baseType: !3828, size: 64, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!125, !232}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3803, file: !230, line: 143, baseType: !3832, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !232}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3803, file: !230, line: 144, baseType: !3832, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3803, file: !230, line: 145, baseType: !3837, size: 64, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !232, !277}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3803, file: !230, line: 146, baseType: !3841, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!126, !232, !126, !125}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3803, file: !230, line: 147, baseType: !3845, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!228, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3803, file: !230, line: 148, baseType: !3850, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!125, !402, !342}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3803, file: !230, line: 149, baseType: !3854, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!232, !232, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !459, file: !77, line: 1500, baseType: !125, size: 32, offset: 7552)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !459, file: !77, line: 1502, baseType: !3861, size: 448, offset: 7616)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3505, line: 60, size: 448, elements: !3862)
!3862 = !{!3863, !3868, !3869, !3870, !3871, !3872, !3873}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3861, file: !3505, line: 61, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!130, !3867, !3503}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3861, file: !3505, line: 63, baseType: !3864, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3861, file: !3505, line: 66, baseType: !394, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3861, file: !3505, line: 67, baseType: !125, size: 32, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3505, line: 68, baseType: !7, size: 32, offset: 224)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3861, file: !3505, line: 71, baseType: !181, size: 128, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3861, file: !3505, line: 77, baseType: !3874, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !459, file: !77, line: 1505, baseType: !587, size: 64, offset: 8064)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !459, file: !77, line: 1508, baseType: !587, size: 64, offset: 8128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !459, file: !77, line: 1511, baseType: !125, size: 32, offset: 8192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !459, file: !77, line: 1514, baseType: !809, size: 32, offset: 8224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !459, file: !77, line: 1517, baseType: !3880, size: 64, offset: 8256)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2203, line: 18, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !459, file: !77, line: 1518, baseType: !493, size: 64, offset: 8320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !459, file: !77, line: 1525, baseType: !1591, size: 64, offset: 8384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !459, file: !77, line: 1532, baseType: !3885, size: 64, offset: 8448)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3886, line: 52, size: 64, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !{!3888}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3885, file: !3886, line: 53, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3886, line: 40, size: 256, elements: !3891)
!3891 = !{!3892, !3893, !3898}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3890, file: !3886, line: 42, baseType: !165)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3890, file: !3886, line: 44, baseType: !3894, size: 192)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3886, line: 28, size: 192, elements: !3895)
!3895 = !{!3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3894, file: !3886, line: 29, baseType: !181, size: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3894, file: !3886, line: 31, baseType: !394, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3890, file: !3886, line: 49, baseType: !394, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !459, file: !77, line: 1533, baseType: !3885, size: 64, offset: 8512)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !459, file: !77, line: 1534, baseType: !215, size: 128, align: 64, offset: 8576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !459, file: !77, line: 1535, baseType: !2202, size: 256, offset: 8704)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !459, file: !77, line: 1537, baseType: !583, size: 192, offset: 8960)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !459, file: !77, line: 1542, baseType: !125, size: 32, offset: 9152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !459, file: !77, line: 1545, baseType: !165, offset: 9184)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !459, file: !77, line: 1546, baseType: !181, size: 128, offset: 9216)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !459, file: !77, line: 1548, baseType: !165, offset: 9344)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !459, file: !77, line: 1549, baseType: !181, size: 128, offset: 9344)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !278, file: !77, line: 624, baseType: !643, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !278, file: !77, line: 631, baseType: !130, size: 64, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !77, line: 639, baseType: !3911, size: 32, offset: 384)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !77, line: 639, size: 32, elements: !3912)
!3912 = !{!3913, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3911, file: !77, line: 640, baseType: !3914, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3911, file: !77, line: 641, baseType: !7, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !278, file: !77, line: 643, baseType: !365, size: 32, offset: 416)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !278, file: !77, line: 644, baseType: !383, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !278, file: !77, line: 645, baseType: !387, size: 128, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !278, file: !77, line: 646, baseType: !387, size: 128, offset: 640)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !278, file: !77, line: 647, baseType: !387, size: 128, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !278, file: !77, line: 648, baseType: !165, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !278, file: !77, line: 649, baseType: !136, size: 16, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !278, file: !77, line: 650, baseType: !1231, size: 8, offset: 912)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !278, file: !77, line: 651, baseType: !1231, size: 8, offset: 920)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !278, file: !77, line: 652, baseType: !3677, size: 64, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !278, file: !77, line: 659, baseType: !130, size: 64, offset: 1024)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !278, file: !77, line: 660, baseType: !676, size: 256, offset: 1088)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !278, file: !77, line: 662, baseType: !130, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !278, file: !77, line: 663, baseType: !130, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !278, file: !77, line: 665, baseType: !497, size: 128, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !278, file: !77, line: 666, baseType: !181, size: 128, offset: 1600)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !278, file: !77, line: 675, baseType: !181, size: 128, offset: 1728)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !278, file: !77, line: 676, baseType: !181, size: 128, offset: 1856)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !278, file: !77, line: 677, baseType: !181, size: 128, offset: 1984)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !77, line: 678, baseType: !3936, size: 128, offset: 2112)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !77, line: 678, size: 128, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3936, file: !77, line: 679, baseType: !493, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3936, file: !77, line: 680, baseType: !215, size: 128, align: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !278, file: !77, line: 682, baseType: !589, size: 64, offset: 2240)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !278, file: !77, line: 683, baseType: !589, size: 64, offset: 2304)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !278, file: !77, line: 684, baseType: !656, size: 32, offset: 2368)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !278, file: !77, line: 685, baseType: !656, size: 32, offset: 2400)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !278, file: !77, line: 686, baseType: !656, size: 32, offset: 2432)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !278, file: !77, line: 688, baseType: !656, size: 32, offset: 2464)
!3946 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !77, line: 690, baseType: !3947, size: 64, offset: 2496)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !77, line: 690, size: 64, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3947, file: !77, line: 691, baseType: !2364, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3947, file: !77, line: 692, baseType: !524, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !278, file: !77, line: 694, baseType: !3952, size: 64, offset: 2560)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !77, line: 1100, size: 384, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3953, file: !77, line: 1101, baseType: !165)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3953, file: !77, line: 1102, baseType: !181, size: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3953, file: !77, line: 1103, baseType: !181, size: 128, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3953, file: !77, line: 1104, baseType: !181, size: 128, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !278, file: !77, line: 695, baseType: !644, size: 1216, align: 64, offset: 2624)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !278, file: !77, line: 696, baseType: !181, size: 128, offset: 3840)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !77, line: 697, baseType: !3962, size: 64, offset: 3968)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !77, line: 697, size: 64, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3962, file: !77, line: 698, baseType: !2539, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3962, file: !77, line: 699, baseType: !3702, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3962, file: !77, line: 700, baseType: !2357, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3962, file: !77, line: 701, baseType: !126, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3962, file: !77, line: 702, baseType: !7, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !278, file: !77, line: 705, baseType: !266, size: 32, offset: 4032)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !278, file: !77, line: 708, baseType: !266, size: 32, offset: 4064)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !278, file: !77, line: 709, baseType: !3784, size: 64, offset: 4096)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !278, file: !77, line: 720, baseType: !118, size: 64, offset: 4160)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !233, file: !230, line: 98, baseType: !3974, size: 256, offset: 448)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !3320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !233, file: !230, line: 101, baseType: !3976, size: 32, offset: 704)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3977, line: 25, size: 32, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979}
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3976, file: !3977, line: 26, baseType: !3980, size: 32)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3976, file: !3977, line: 26, size: 32, elements: !3981)
!3981 = !{!3982}
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !3977, line: 30, baseType: !3983, size: 32)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3980, file: !3977, line: 30, size: 32, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3983, file: !3977, line: 31, baseType: !165)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3983, file: !3977, line: 32, baseType: !125, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !233, file: !230, line: 102, baseType: !3801, size: 64, offset: 768)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !233, file: !230, line: 103, baseType: !458, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !233, file: !230, line: 104, baseType: !130, size: 64, offset: 896)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !233, file: !230, line: 105, baseType: !118, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !230, line: 107, baseType: !3992, size: 128, offset: 1024)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !230, line: 107, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3992, file: !230, line: 108, baseType: !181, size: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3992, file: !230, line: 109, baseType: !1972, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !233, file: !230, line: 111, baseType: !181, size: 128, offset: 1152)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !233, file: !230, line: 112, baseType: !181, size: 128, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !233, file: !230, line: 120, baseType: !3999, size: 128, offset: 1408)
!3999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !230, line: 116, size: 128, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3999, file: !230, line: 117, baseType: !497, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3999, file: !230, line: 118, baseType: !247, size: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3999, file: !230, line: 119, baseType: !215, size: 128, align: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !203, file: !77, line: 922, baseType: !277, size: 64, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !203, file: !77, line: 923, baseType: !2364, size: 64, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !203, file: !77, line: 929, baseType: !165, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !203, file: !77, line: 930, baseType: !76, size: 32, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !203, file: !77, line: 931, baseType: !587, size: 64, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !203, file: !77, line: 932, baseType: !7, size: 32, offset: 512)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !203, file: !77, line: 933, baseType: !3797, size: 32, offset: 544)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !203, file: !77, line: 934, baseType: !583, size: 192, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !203, file: !77, line: 935, baseType: !383, size: 64, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !203, file: !77, line: 936, baseType: !4014, size: 192, offset: 832)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !77, line: 885, size: 192, elements: !4015)
!4015 = !{!4016, !4017, !4018, !4019, !4020, !4021}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4014, file: !77, line: 886, baseType: !191)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4014, file: !77, line: 887, baseType: !1355, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4014, file: !77, line: 888, baseType: !85, size: 32, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4014, file: !77, line: 889, baseType: !284, size: 32, offset: 96)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4014, file: !77, line: 889, baseType: !284, size: 32, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4014, file: !77, line: 890, baseType: !125, size: 32, offset: 160)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !203, file: !77, line: 937, baseType: !1425, size: 64, offset: 1024)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !203, file: !77, line: 938, baseType: !4024, size: 256, offset: 1088)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !77, line: 896, size: 256, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4024, file: !77, line: 897, baseType: !130, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4024, file: !77, line: 898, baseType: !7, size: 32, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4024, file: !77, line: 899, baseType: !7, size: 32, offset: 96)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4024, file: !77, line: 902, baseType: !7, size: 32, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4024, file: !77, line: 903, baseType: !7, size: 32, offset: 160)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4024, file: !77, line: 904, baseType: !383, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !203, file: !77, line: 940, baseType: !269, size: 64, offset: 1344)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !203, file: !77, line: 945, baseType: !118, size: 64, offset: 1408)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !203, file: !77, line: 949, baseType: !181, size: 128, offset: 1472)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !203, file: !77, line: 950, baseType: !181, size: 128, offset: 1600)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !203, file: !77, line: 952, baseType: !643, size: 64, offset: 1728)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !203, file: !77, line: 953, baseType: !809, size: 32, offset: 1792)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !203, file: !77, line: 954, baseType: !809, size: 32, offset: 1824)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !188, file: !77, line: 1320, baseType: !215, size: 128, align: 64, offset: 192)
!4040 = !{!4041, !0, !4046, !4048}
!4041 = !DIGlobalVariableExpression(var: !4042, expr: !DIExpression())
!4042 = distinct !DIGlobalVariable(name: "__key", scope: !4043, file: !3, line: 807, type: !503, isLocal: true, isDefinition: true)
!4043 = distinct !DISubprogram(name: "vcs_init", scope: !3, file: !3, line: 801, type: !4044, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!125}
!4046 = !DIGlobalVariableExpression(var: !4047, expr: !DIExpression())
!4047 = distinct !DIGlobalVariable(name: "vcs_fops", scope: !2, file: !3, line: 772, type: !2365, isLocal: true, isDefinition: true)
!4048 = !DIGlobalVariableExpression(var: !4049, expr: !DIExpression())
!4049 = distinct !DIGlobalVariable(name: "__key", scope: !4050, file: !3, line: 137, type: !503, isLocal: true, isDefinition: true)
!4050 = distinct !DISubprogram(name: "vcs_poll_data_get", scope: !3, file: !3, line: 126, type: !4051, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!142, !202}
!4053 = !{i32 7, !"Dwarf Version", i32 4}
!4054 = !{i32 2, !"Debug Info Version", i32 3}
!4055 = !{i32 1, !"wchar_size", i32 2}
!4056 = !{i32 1, !"Code Model", i32 2}
!4057 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4058 = distinct !DISubprogram(name: "vcs_make_sysfs", scope: !3, file: !3, line: 784, type: !2987, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4059 = !DILocalVariable(name: "index", arg: 1, scope: !4058, file: !3, line: 784, type: !125)
!4060 = !DILocation(line: 784, column: 25, scope: !4058)
!4061 = !DILocation(line: 786, column: 16, scope: !4058)
!4062 = !DILocation(line: 786, column: 32, scope: !4058)
!4063 = !DILocation(line: 787, column: 18, scope: !4058)
!4064 = !DILocation(line: 787, column: 24, scope: !4058)
!4065 = !DILocation(line: 786, column: 2, scope: !4058)
!4066 = !DILocation(line: 788, column: 16, scope: !4058)
!4067 = !DILocation(line: 788, column: 32, scope: !4058)
!4068 = !DILocation(line: 789, column: 19, scope: !4058)
!4069 = !DILocation(line: 789, column: 25, scope: !4058)
!4070 = !DILocation(line: 788, column: 2, scope: !4058)
!4071 = !DILocation(line: 790, column: 16, scope: !4058)
!4072 = !DILocation(line: 790, column: 32, scope: !4058)
!4073 = !DILocation(line: 791, column: 19, scope: !4058)
!4074 = !DILocation(line: 791, column: 25, scope: !4058)
!4075 = !DILocation(line: 790, column: 2, scope: !4058)
!4076 = !DILocation(line: 792, column: 1, scope: !4058)
!4077 = distinct !DISubprogram(name: "vcs_remove_sysfs", scope: !3, file: !3, line: 794, type: !2987, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4078 = !DILocalVariable(name: "index", arg: 1, scope: !4077, file: !3, line: 794, type: !125)
!4079 = !DILocation(line: 794, column: 27, scope: !4077)
!4080 = !DILocation(line: 796, column: 17, scope: !4077)
!4081 = !DILocation(line: 796, column: 27, scope: !4077)
!4082 = !DILocation(line: 796, column: 2, scope: !4077)
!4083 = !DILocation(line: 797, column: 17, scope: !4077)
!4084 = !DILocation(line: 797, column: 27, scope: !4077)
!4085 = !DILocation(line: 797, column: 2, scope: !4077)
!4086 = !DILocation(line: 798, column: 17, scope: !4077)
!4087 = !DILocation(line: 798, column: 27, scope: !4077)
!4088 = !DILocation(line: 798, column: 2, scope: !4077)
!4089 = !DILocation(line: 799, column: 1, scope: !4077)
!4090 = !DILocalVariable(name: "i", scope: !4043, file: !3, line: 803, type: !7)
!4091 = !DILocation(line: 803, column: 15, scope: !4043)
!4092 = !DILocation(line: 805, column: 6, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 805, column: 6)
!4094 = !DILocation(line: 805, column: 6, scope: !4043)
!4095 = !DILocation(line: 806, column: 3, scope: !4093)
!4096 = !DILocation(line: 807, column: 13, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 807, column: 13)
!4098 = !DILocation(line: 807, column: 11, scope: !4043)
!4099 = !DILocation(line: 809, column: 16, scope: !4043)
!4100 = !DILocation(line: 809, column: 2, scope: !4043)
!4101 = !DILocation(line: 810, column: 16, scope: !4043)
!4102 = !DILocation(line: 810, column: 2, scope: !4043)
!4103 = !DILocation(line: 811, column: 16, scope: !4043)
!4104 = !DILocation(line: 811, column: 2, scope: !4043)
!4105 = !DILocation(line: 812, column: 9, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 812, column: 2)
!4107 = !DILocation(line: 812, column: 7, scope: !4106)
!4108 = !DILocation(line: 812, column: 14, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 812, column: 2)
!4110 = !DILocation(line: 812, column: 16, scope: !4109)
!4111 = !DILocation(line: 812, column: 2, scope: !4106)
!4112 = !DILocation(line: 813, column: 18, scope: !4109)
!4113 = !DILocation(line: 813, column: 3, scope: !4109)
!4114 = !DILocation(line: 812, column: 36, scope: !4109)
!4115 = !DILocation(line: 812, column: 2, scope: !4109)
!4116 = distinct !{!4116, !4111, !4117}
!4117 = !DILocation(line: 813, column: 19, scope: !4106)
!4118 = !DILocation(line: 814, column: 2, scope: !4043)
!4119 = distinct !DISubprogram(name: "register_chrdev", scope: !77, file: !77, line: 2589, type: !4120, scopeLine: 2591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!125, !7, !313, !2364}
!4122 = !DILocalVariable(name: "major", arg: 1, scope: !4119, file: !77, line: 2589, type: !7)
!4123 = !DILocation(line: 2589, column: 48, scope: !4119)
!4124 = !DILocalVariable(name: "name", arg: 2, scope: !4119, file: !77, line: 2589, type: !313)
!4125 = !DILocation(line: 2589, column: 67, scope: !4119)
!4126 = !DILocalVariable(name: "fops", arg: 3, scope: !4119, file: !77, line: 2590, type: !2364)
!4127 = !DILocation(line: 2590, column: 37, scope: !4119)
!4128 = !DILocation(line: 2592, column: 27, scope: !4119)
!4129 = !DILocation(line: 2592, column: 42, scope: !4119)
!4130 = !DILocation(line: 2592, column: 48, scope: !4119)
!4131 = !DILocation(line: 2592, column: 9, scope: !4119)
!4132 = !DILocation(line: 2592, column: 2, scope: !4119)
!4133 = distinct !DISubprogram(name: "vcs_lseek", scope: !3, file: !3, line: 228, type: !2371, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4134 = !DILocalVariable(name: "file", arg: 1, scope: !4133, file: !3, line: 228, type: !202)
!4135 = !DILocation(line: 228, column: 38, scope: !4133)
!4136 = !DILocalVariable(name: "offset", arg: 2, scope: !4133, file: !3, line: 228, type: !383)
!4137 = !DILocation(line: 228, column: 51, scope: !4133)
!4138 = !DILocalVariable(name: "orig", arg: 3, scope: !4133, file: !3, line: 228, type: !125)
!4139 = !DILocation(line: 228, column: 63, scope: !4133)
!4140 = !DILocalVariable(name: "inode", scope: !4133, file: !3, line: 230, type: !277)
!4141 = !DILocation(line: 230, column: 16, scope: !4133)
!4142 = !DILocation(line: 230, column: 35, scope: !4133)
!4143 = !DILocation(line: 230, column: 24, scope: !4133)
!4144 = !DILocalVariable(name: "vc", scope: !4133, file: !3, line: 231, type: !4145)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_data", file: !94, line: 94, size: 5952, elements: !4147)
!4147 = !{!4148, !4149, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4294, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4322, !4326, !4327, !4328, !4329, !4330, !4331, !4333, !4336, !4338}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4146, file: !94, line: 95, baseType: !2607, size: 2432)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4146, file: !94, line: 97, baseType: !4150, size: 160, offset: 2432)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_state", file: !94, line: 46, size: 160, elements: !4151)
!4151 = !{!4152, !4153, !4154, !4155, !4157, !4158, !4159, !4160, !4161, !4162}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4150, file: !94, line: 47, baseType: !7, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4150, file: !94, line: 47, baseType: !7, size: 32, offset: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4150, file: !94, line: 49, baseType: !275, size: 8, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "Gx_charset", scope: !4150, file: !94, line: 51, baseType: !4156, size: 16, offset: 72)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 16, elements: !1447)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4150, file: !94, line: 52, baseType: !7, size: 1, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !4150, file: !94, line: 55, baseType: !93, size: 32, offset: 96)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "italic", scope: !4150, file: !94, line: 56, baseType: !342, size: 8, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "underline", scope: !4150, file: !94, line: 57, baseType: !342, size: 8, offset: 136)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "blink", scope: !4150, file: !94, line: 58, baseType: !342, size: 8, offset: 144)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4150, file: !94, line: 59, baseType: !342, size: 8, offset: 152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !4146, file: !94, line: 97, baseType: !4150, size: 160, offset: 2592)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "vc_num", scope: !4146, file: !94, line: 99, baseType: !136, size: 16, offset: 2752)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cols", scope: !4146, file: !94, line: 100, baseType: !7, size: 32, offset: 2784)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "vc_rows", scope: !4146, file: !94, line: 101, baseType: !7, size: 32, offset: 2816)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "vc_size_row", scope: !4146, file: !94, line: 102, baseType: !7, size: 32, offset: 2848)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scan_lines", scope: !4146, file: !94, line: 103, baseType: !7, size: 32, offset: 2880)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "vc_origin", scope: !4146, file: !94, line: 104, baseType: !130, size: 64, offset: 2944)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scr_end", scope: !4146, file: !94, line: 105, baseType: !130, size: 64, offset: 3008)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "vc_visible_origin", scope: !4146, file: !94, line: 106, baseType: !130, size: 64, offset: 3072)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vc_top", scope: !4146, file: !94, line: 107, baseType: !7, size: 32, offset: 3136)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bottom", scope: !4146, file: !94, line: 107, baseType: !7, size: 32, offset: 3168)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "vc_sw", scope: !4146, file: !94, line: 108, baseType: !4175, size: 64, offset: 3200)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "consw", file: !101, line: 44, size: 1728, elements: !4178)
!4178 = !{!4179, !4180, !4184, !4188, !4192, !4196, !4200, !4206, !4207, !4211, !4215, !4219, !4231, !4235, !4239, !4243, !4247, !4251, !4252, !4253, !4254, !4258, !4262, !4268, !4272, !4273, !4274}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4177, file: !101, line: 45, baseType: !119, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "con_startup", scope: !4177, file: !101, line: 46, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!313}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "con_init", scope: !4177, file: !101, line: 47, baseType: !4185, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4145, !125}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "con_deinit", scope: !4177, file: !101, line: 48, baseType: !4189, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !4145}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "con_clear", scope: !4177, file: !101, line: 49, baseType: !4193, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !4145, !125, !125, !125, !125}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "con_putc", scope: !4177, file: !101, line: 51, baseType: !4197, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !4145, !125, !125, !125}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "con_putcs", scope: !4177, file: !101, line: 52, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4145, !4204, !125, !125, !125}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "con_cursor", scope: !4177, file: !101, line: 54, baseType: !4185, size: 64, offset: 448)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "con_scroll", scope: !4177, file: !101, line: 55, baseType: !4208, size: 64, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!342, !4145, !7, !7, !100, !7}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "con_switch", scope: !4177, file: !101, line: 58, baseType: !4212, size: 64, offset: 576)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!125, !4145}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "con_blank", scope: !4177, file: !101, line: 59, baseType: !4216, size: 64, offset: 640)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!125, !4145, !125, !125}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_set", scope: !4177, file: !101, line: 60, baseType: !4220, size: 64, offset: 704)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!125, !4145, !4223, !7}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_font", file: !4225, line: 167, size: 192, elements: !4226)
!4225 = !DIFile(filename: "./include/uapi/linux/kd.h", directory: "/home/lizy2001/genbc/linux")
!4226 = !{!4227, !4228, !4229, !4230}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4224, file: !4225, line: 168, baseType: !7, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4224, file: !4225, line: 168, baseType: !7, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !4224, file: !4225, line: 169, baseType: !7, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4224, file: !4225, line: 170, baseType: !2687, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_get", scope: !4177, file: !101, line: 62, baseType: !4232, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!125, !4145, !4223}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_default", scope: !4177, file: !101, line: 63, baseType: !4236, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!125, !4145, !4223, !126}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_copy", scope: !4177, file: !101, line: 65, baseType: !4240, size: 64, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!125, !4145, !125}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "con_resize", scope: !4177, file: !101, line: 66, baseType: !4244, size: 64, offset: 960)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!125, !4145, !7, !7, !7}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_palette", scope: !4177, file: !101, line: 68, baseType: !4248, size: 64, offset: 1024)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4145, !273}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "con_scrolldelta", scope: !4177, file: !101, line: 70, baseType: !4185, size: 64, offset: 1088)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_origin", scope: !4177, file: !101, line: 71, baseType: !4212, size: 64, offset: 1152)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "con_save_screen", scope: !4177, file: !101, line: 72, baseType: !4189, size: 64, offset: 1216)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "con_build_attr", scope: !4177, file: !101, line: 73, baseType: !4255, size: 64, offset: 1280)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!1231, !4145, !1231, !93, !342, !342, !342, !342}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "con_invert_region", scope: !4177, file: !101, line: 76, baseType: !4259, size: 64, offset: 1344)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !4145, !131, !125}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "con_screen_pos", scope: !4177, file: !101, line: 77, baseType: !4263, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!131, !4266, !125}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "con_getxy", scope: !4177, file: !101, line: 78, baseType: !4269, size: 64, offset: 1472)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!130, !4145, !130, !565, !565}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "con_flush_scrollback", scope: !4177, file: !101, line: 83, baseType: !4189, size: 64, offset: 1536)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_enter", scope: !4177, file: !101, line: 89, baseType: !4212, size: 64, offset: 1600)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_leave", scope: !4177, file: !101, line: 93, baseType: !4212, size: 64, offset: 1664)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf", scope: !4146, file: !94, line: 109, baseType: !137, size: 64, offset: 3264)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf_size", scope: !4146, file: !94, line: 110, baseType: !7, size: 32, offset: 3328)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "vc_mode", scope: !4146, file: !94, line: 111, baseType: !275, size: 8, offset: 3360)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "vc_attr", scope: !4146, file: !94, line: 113, baseType: !275, size: 8, offset: 3368)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "vc_def_color", scope: !4146, file: !94, line: 114, baseType: !275, size: 8, offset: 3376)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "vc_ulcolor", scope: !4146, file: !94, line: 115, baseType: !275, size: 8, offset: 3384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "vc_itcolor", scope: !4146, file: !94, line: 116, baseType: !275, size: 8, offset: 3392)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "vc_halfcolor", scope: !4146, file: !94, line: 117, baseType: !275, size: 8, offset: 3400)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cursor_type", scope: !4146, file: !94, line: 119, baseType: !7, size: 32, offset: 3424)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "vc_complement_mask", scope: !4146, file: !94, line: 120, baseType: !136, size: 16, offset: 3456)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "vc_s_complement_mask", scope: !4146, file: !94, line: 121, baseType: !136, size: 16, offset: 3472)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "vc_pos", scope: !4146, file: !94, line: 122, baseType: !130, size: 64, offset: 3520)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "vc_hi_font_mask", scope: !4146, file: !94, line: 124, baseType: !136, size: 16, offset: 3584)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "vc_font", scope: !4146, file: !94, line: 125, baseType: !4224, size: 192, offset: 3648)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "vc_video_erase_char", scope: !4146, file: !94, line: 126, baseType: !136, size: 16, offset: 3840)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "vc_state", scope: !4146, file: !94, line: 128, baseType: !7, size: 32, offset: 3872)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "vc_npar", scope: !4146, file: !94, line: 129, baseType: !7, size: 32, offset: 3904)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "vc_par", scope: !4146, file: !94, line: 129, baseType: !4293, size: 512, offset: 3936)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !1613)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "vt_mode", scope: !4146, file: !94, line: 131, baseType: !4295, size: 64, offset: 4448)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_mode", file: !4296, line: 19, size: 64, elements: !4297)
!4296 = !DIFile(filename: "./include/uapi/linux/vt.h", directory: "/home/lizy2001/genbc/linux")
!4297 = !{!4298, !4299, !4300, !4301, !4302}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4295, file: !4296, line: 20, baseType: !127, size: 8)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "waitv", scope: !4295, file: !4296, line: 21, baseType: !127, size: 8, offset: 8)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "relsig", scope: !4295, file: !4296, line: 22, baseType: !1084, size: 16, offset: 16)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acqsig", scope: !4295, file: !4296, line: 23, baseType: !1084, size: 16, offset: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "frsig", scope: !4295, file: !4296, line: 24, baseType: !1084, size: 16, offset: 48)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "vt_pid", scope: !4146, file: !94, line: 132, baseType: !1355, size: 64, offset: 4544)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "vt_newvt", scope: !4146, file: !94, line: 133, baseType: !125, size: 32, offset: 4608)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "paste_wait", scope: !4146, file: !94, line: 134, baseType: !160, size: 128, offset: 4672)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "vc_disp_ctrl", scope: !4146, file: !94, line: 136, baseType: !7, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "vc_toggle_meta", scope: !4146, file: !94, line: 137, baseType: !7, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decscnm", scope: !4146, file: !94, line: 138, baseType: !7, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decom", scope: !4146, file: !94, line: 139, baseType: !7, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decawm", scope: !4146, file: !94, line: 140, baseType: !7, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "vc_deccm", scope: !4146, file: !94, line: 141, baseType: !7, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decim", scope: !4146, file: !94, line: 142, baseType: !7, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "vc_priv", scope: !4146, file: !94, line: 144, baseType: !7, size: 3, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "vc_need_wrap", scope: !4146, file: !94, line: 145, baseType: !7, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "vc_can_do_color", scope: !4146, file: !94, line: 146, baseType: !7, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "vc_report_mouse", scope: !4146, file: !94, line: 147, baseType: !7, size: 2, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf", scope: !4146, file: !94, line: 148, baseType: !275, size: 1, offset: 4814, flags: DIFlagBitField, extraData: i64 4800)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_count", scope: !4146, file: !94, line: 149, baseType: !275, size: 8, offset: 4816)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_char", scope: !4146, file: !94, line: 150, baseType: !125, size: 32, offset: 4832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "vc_tab_stop", scope: !4146, file: !94, line: 151, baseType: !4321, size: 256, offset: 4864)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !1056)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "vc_palette", scope: !4146, file: !94, line: 152, baseType: !4323, size: 384, offset: 5120)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 384, elements: !4324)
!4324 = !{!4325}
!4325 = !DISubrange(count: 48)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "vc_translate", scope: !4146, file: !94, line: 153, baseType: !137, size: 64, offset: 5504)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "vc_resize_user", scope: !4146, file: !94, line: 154, baseType: !7, size: 32, offset: 5568)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_pitch", scope: !4146, file: !94, line: 155, baseType: !7, size: 32, offset: 5600)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_duration", scope: !4146, file: !94, line: 156, baseType: !7, size: 32, offset: 5632)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cur_blink_ms", scope: !4146, file: !94, line: 157, baseType: !136, size: 16, offset: 5664)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "vc_display_fg", scope: !4146, file: !94, line: 158, baseType: !4332, size: 64, offset: 5696)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir", scope: !4146, file: !94, line: 159, baseType: !4334, size: 64, offset: 5760)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_pagedir", file: !94, line: 20, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir_loc", scope: !4146, file: !94, line: 160, baseType: !4337, size: 64, offset: 5824)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_screen", scope: !4146, file: !94, line: 161, baseType: !4339, size: 64, offset: 5888)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_screen", file: !94, line: 21, flags: DIFlagFwdDecl)
!4341 = !DILocation(line: 231, column: 18, scope: !4133)
!4342 = !DILocalVariable(name: "size", scope: !4133, file: !3, line: 232, type: !125)
!4343 = !DILocation(line: 232, column: 6, scope: !4133)
!4344 = !DILocation(line: 234, column: 2, scope: !4133)
!4345 = !DILocation(line: 235, column: 14, scope: !4133)
!4346 = !DILocation(line: 235, column: 7, scope: !4133)
!4347 = !DILocation(line: 235, column: 5, scope: !4133)
!4348 = !DILocation(line: 236, column: 7, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 236, column: 6)
!4350 = !DILocation(line: 236, column: 6, scope: !4133)
!4351 = !DILocation(line: 237, column: 3, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 236, column: 11)
!4353 = !DILocation(line: 238, column: 3, scope: !4352)
!4354 = !DILocation(line: 241, column: 18, scope: !4133)
!4355 = !DILocation(line: 241, column: 22, scope: !4133)
!4356 = !DILocation(line: 241, column: 45, scope: !4133)
!4357 = !DILocation(line: 241, column: 9, scope: !4133)
!4358 = !DILocation(line: 241, column: 7, scope: !4133)
!4359 = !DILocation(line: 242, column: 2, scope: !4133)
!4360 = !DILocation(line: 243, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 243, column: 6)
!4362 = !DILocation(line: 243, column: 11, scope: !4361)
!4363 = !DILocation(line: 243, column: 6, scope: !4133)
!4364 = !DILocation(line: 244, column: 10, scope: !4361)
!4365 = !DILocation(line: 244, column: 3, scope: !4361)
!4366 = !DILocation(line: 245, column: 27, scope: !4133)
!4367 = !DILocation(line: 245, column: 33, scope: !4133)
!4368 = !DILocation(line: 245, column: 41, scope: !4133)
!4369 = !DILocation(line: 245, column: 47, scope: !4133)
!4370 = !DILocation(line: 245, column: 9, scope: !4133)
!4371 = !DILocation(line: 245, column: 2, scope: !4133)
!4372 = !DILocation(line: 246, column: 1, scope: !4133)
!4373 = distinct !DISubprogram(name: "vcs_read", scope: !3, file: !3, line: 365, type: !2375, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4374 = !DILocalVariable(name: "addr", arg: 1, scope: !4375, file: !4376, line: 138, type: !1832)
!4375 = distinct !DISubprogram(name: "check_copy_size", scope: !4376, file: !4376, line: 138, type: !4377, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4376 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!342, !1832, !434, !342}
!4379 = !DILocation(line: 138, column: 29, scope: !4375, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 199, column: 6, scope: !4381, inlinedAt: !4386)
!4381 = distinct !DILexicalBlock(scope: !4383, file: !4382, line: 199, column: 6)
!4382 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4383 = distinct !DISubprogram(name: "copy_to_user", scope: !4382, file: !4382, line: 197, type: !4384, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!130, !118, !1832, !130}
!4386 = distinct !DILocation(line: 456, column: 9, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 406, column: 16)
!4388 = !DILocalVariable(name: "bytes", arg: 2, scope: !4375, file: !4376, line: 138, type: !434)
!4389 = !DILocation(line: 138, column: 42, scope: !4375, inlinedAt: !4380)
!4390 = !DILocalVariable(name: "is_source", arg: 3, scope: !4375, file: !4376, line: 138, type: !342)
!4391 = !DILocation(line: 138, column: 54, scope: !4375, inlinedAt: !4380)
!4392 = !DILocalVariable(name: "sz", scope: !4375, file: !4376, line: 140, type: !125)
!4393 = !DILocation(line: 140, column: 6, scope: !4375, inlinedAt: !4380)
!4394 = !DILocalVariable(name: "__ret_warn_on", scope: !4395, file: !4376, line: 150, type: !125)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !4376, line: 150, column: 6)
!4396 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 150, column: 6)
!4397 = !DILocation(line: 150, column: 6, scope: !4395, inlinedAt: !4380)
!4398 = !DILocalVariable(name: "to", arg: 1, scope: !4383, file: !4382, line: 197, type: !118)
!4399 = !DILocation(line: 197, column: 27, scope: !4383, inlinedAt: !4386)
!4400 = !DILocalVariable(name: "from", arg: 2, scope: !4383, file: !4382, line: 197, type: !1832)
!4401 = !DILocation(line: 197, column: 43, scope: !4383, inlinedAt: !4386)
!4402 = !DILocalVariable(name: "n", arg: 3, scope: !4383, file: !4382, line: 197, type: !130)
!4403 = !DILocation(line: 197, column: 63, scope: !4383, inlinedAt: !4386)
!4404 = !DILocalVariable(name: "file", arg: 1, scope: !4373, file: !3, line: 365, type: !202)
!4405 = !DILocation(line: 365, column: 23, scope: !4373)
!4406 = !DILocalVariable(name: "buf", arg: 2, scope: !4373, file: !3, line: 365, type: !126)
!4407 = !DILocation(line: 365, column: 42, scope: !4373)
!4408 = !DILocalVariable(name: "count", arg: 3, scope: !4373, file: !3, line: 365, type: !434)
!4409 = !DILocation(line: 365, column: 54, scope: !4373)
!4410 = !DILocalVariable(name: "ppos", arg: 4, scope: !4373, file: !3, line: 365, type: !605)
!4411 = !DILocation(line: 365, column: 69, scope: !4373)
!4412 = !DILocalVariable(name: "inode", scope: !4373, file: !3, line: 367, type: !277)
!4413 = !DILocation(line: 367, column: 16, scope: !4373)
!4414 = !DILocation(line: 367, column: 35, scope: !4373)
!4415 = !DILocation(line: 367, column: 24, scope: !4373)
!4416 = !DILocalVariable(name: "vc", scope: !4373, file: !3, line: 368, type: !4145)
!4417 = !DILocation(line: 368, column: 18, scope: !4373)
!4418 = !DILocalVariable(name: "poll", scope: !4373, file: !3, line: 369, type: !142)
!4419 = !DILocation(line: 369, column: 24, scope: !4373)
!4420 = !DILocalVariable(name: "read", scope: !4373, file: !3, line: 370, type: !7)
!4421 = !DILocation(line: 370, column: 15, scope: !4373)
!4422 = !DILocalVariable(name: "ret", scope: !4373, file: !3, line: 371, type: !431)
!4423 = !DILocation(line: 371, column: 10, scope: !4373)
!4424 = !DILocalVariable(name: "con_buf", scope: !4373, file: !3, line: 372, type: !126)
!4425 = !DILocation(line: 372, column: 8, scope: !4373)
!4426 = !DILocalVariable(name: "pos", scope: !4373, file: !3, line: 373, type: !383)
!4427 = !DILocation(line: 373, column: 9, scope: !4373)
!4428 = !DILocalVariable(name: "viewed", scope: !4373, file: !3, line: 374, type: !342)
!4429 = !DILocation(line: 374, column: 7, scope: !4373)
!4430 = !DILocalVariable(name: "attr", scope: !4373, file: !3, line: 374, type: !342)
!4431 = !DILocation(line: 374, column: 15, scope: !4373)
!4432 = !DILocalVariable(name: "uni_mode", scope: !4373, file: !3, line: 374, type: !342)
!4433 = !DILocation(line: 374, column: 21, scope: !4373)
!4434 = !DILocation(line: 376, column: 21, scope: !4373)
!4435 = !DILocation(line: 376, column: 12, scope: !4373)
!4436 = !DILocation(line: 376, column: 10, scope: !4373)
!4437 = !DILocation(line: 377, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 377, column: 6)
!4439 = !DILocation(line: 377, column: 6, scope: !4373)
!4440 = !DILocation(line: 378, column: 3, scope: !4438)
!4441 = !DILocation(line: 380, column: 9, scope: !4373)
!4442 = !DILocation(line: 380, column: 8, scope: !4373)
!4443 = !DILocation(line: 380, column: 6, scope: !4373)
!4444 = !DILocation(line: 385, column: 2, scope: !4373)
!4445 = !DILocation(line: 387, column: 13, scope: !4373)
!4446 = !DILocation(line: 387, column: 11, scope: !4373)
!4447 = !DILocation(line: 388, column: 9, scope: !4373)
!4448 = !DILocation(line: 388, column: 7, scope: !4373)
!4449 = !DILocation(line: 389, column: 6, scope: !4373)
!4450 = !DILocation(line: 390, column: 14, scope: !4373)
!4451 = !DILocation(line: 390, column: 7, scope: !4373)
!4452 = !DILocation(line: 390, column: 5, scope: !4373)
!4453 = !DILocation(line: 391, column: 7, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 391, column: 6)
!4455 = !DILocation(line: 391, column: 6, scope: !4373)
!4456 = !DILocation(line: 392, column: 3, scope: !4454)
!4457 = !DILocation(line: 394, column: 6, scope: !4373)
!4458 = !DILocation(line: 395, column: 6, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 395, column: 6)
!4460 = !DILocation(line: 395, column: 10, scope: !4459)
!4461 = !DILocation(line: 395, column: 6, scope: !4373)
!4462 = !DILocation(line: 396, column: 3, scope: !4459)
!4463 = !DILocation(line: 398, column: 6, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 398, column: 6)
!4465 = !DILocation(line: 398, column: 15, scope: !4464)
!4466 = !DILocation(line: 398, column: 19, scope: !4464)
!4467 = !DILocation(line: 398, column: 25, scope: !4464)
!4468 = !DILocation(line: 398, column: 23, scope: !4464)
!4469 = !DILocation(line: 398, column: 32, scope: !4464)
!4470 = !DILocation(line: 398, column: 6, scope: !4373)
!4471 = !DILocation(line: 399, column: 3, scope: !4464)
!4472 = !DILocation(line: 401, column: 9, scope: !4373)
!4473 = !DILocation(line: 401, column: 15, scope: !4373)
!4474 = !DILocation(line: 401, column: 7, scope: !4373)
!4475 = !DILocation(line: 402, column: 6, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 402, column: 6)
!4477 = !DILocation(line: 402, column: 12, scope: !4476)
!4478 = !DILocation(line: 402, column: 15, scope: !4476)
!4479 = !DILocation(line: 402, column: 6, scope: !4373)
!4480 = !DILocation(line: 403, column: 3, scope: !4476)
!4481 = !DILocation(line: 403, column: 9, scope: !4476)
!4482 = !DILocation(line: 403, column: 15, scope: !4476)
!4483 = !DILocation(line: 404, column: 7, scope: !4373)
!4484 = !DILocation(line: 405, column: 6, scope: !4373)
!4485 = !DILocation(line: 406, column: 2, scope: !4373)
!4486 = !DILocation(line: 406, column: 9, scope: !4373)
!4487 = !DILocalVariable(name: "this_round", scope: !4387, file: !3, line: 407, type: !7)
!4488 = !DILocation(line: 407, column: 16, scope: !4387)
!4489 = !DILocalVariable(name: "skip", scope: !4387, file: !3, line: 407, type: !7)
!4490 = !DILocation(line: 407, column: 28, scope: !4387)
!4491 = !DILocalVariable(name: "size", scope: !4387, file: !3, line: 408, type: !125)
!4492 = !DILocation(line: 408, column: 7, scope: !4387)
!4493 = !DILocation(line: 414, column: 19, scope: !4387)
!4494 = !DILocation(line: 414, column: 23, scope: !4387)
!4495 = !DILocation(line: 414, column: 29, scope: !4387)
!4496 = !DILocation(line: 414, column: 10, scope: !4387)
!4497 = !DILocation(line: 414, column: 8, scope: !4387)
!4498 = !DILocation(line: 415, column: 7, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 415, column: 7)
!4500 = !DILocation(line: 415, column: 12, scope: !4499)
!4501 = !DILocation(line: 415, column: 7, scope: !4387)
!4502 = !DILocation(line: 416, column: 8, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 416, column: 8)
!4504 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 415, column: 17)
!4505 = !DILocation(line: 416, column: 8, scope: !4504)
!4506 = !DILocation(line: 417, column: 5, scope: !4503)
!4507 = !DILocation(line: 418, column: 10, scope: !4504)
!4508 = !DILocation(line: 418, column: 8, scope: !4504)
!4509 = !DILocation(line: 419, column: 4, scope: !4504)
!4510 = !DILocation(line: 421, column: 7, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 421, column: 7)
!4512 = !DILocation(line: 421, column: 14, scope: !4511)
!4513 = !DILocation(line: 421, column: 11, scope: !4511)
!4514 = !DILocation(line: 421, column: 7, scope: !4387)
!4515 = !DILocation(line: 422, column: 4, scope: !4511)
!4516 = !DILocation(line: 423, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 423, column: 7)
!4518 = !DILocation(line: 423, column: 15, scope: !4517)
!4519 = !DILocation(line: 423, column: 22, scope: !4517)
!4520 = !DILocation(line: 423, column: 20, scope: !4517)
!4521 = !DILocation(line: 423, column: 13, scope: !4517)
!4522 = !DILocation(line: 423, column: 7, scope: !4387)
!4523 = !DILocation(line: 424, column: 12, scope: !4517)
!4524 = !DILocation(line: 424, column: 19, scope: !4517)
!4525 = !DILocation(line: 424, column: 17, scope: !4517)
!4526 = !DILocation(line: 424, column: 10, scope: !4517)
!4527 = !DILocation(line: 424, column: 4, scope: !4517)
!4528 = !DILocation(line: 426, column: 16, scope: !4387)
!4529 = !DILocation(line: 426, column: 14, scope: !4387)
!4530 = !DILocation(line: 427, column: 7, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 427, column: 7)
!4532 = !DILocation(line: 427, column: 18, scope: !4531)
!4533 = !DILocation(line: 427, column: 7, scope: !4387)
!4534 = !DILocation(line: 428, column: 15, scope: !4531)
!4535 = !DILocation(line: 428, column: 4, scope: !4531)
!4536 = !DILocation(line: 435, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 435, column: 7)
!4538 = !DILocation(line: 435, column: 7, scope: !4387)
!4539 = !DILocation(line: 436, column: 27, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 435, column: 17)
!4541 = !DILocation(line: 436, column: 31, scope: !4540)
!4542 = !DILocation(line: 436, column: 40, scope: !4540)
!4543 = !DILocation(line: 436, column: 45, scope: !4540)
!4544 = !DILocation(line: 437, column: 6, scope: !4540)
!4545 = !DILocation(line: 436, column: 10, scope: !4540)
!4546 = !DILocation(line: 436, column: 8, scope: !4540)
!4547 = !DILocation(line: 438, column: 8, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 438, column: 8)
!4549 = !DILocation(line: 438, column: 8, scope: !4540)
!4550 = !DILocation(line: 439, column: 5, scope: !4548)
!4551 = !DILocation(line: 440, column: 3, scope: !4540)
!4552 = !DILocation(line: 440, column: 15, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 440, column: 14)
!4554 = !DILocation(line: 440, column: 14, scope: !4537)
!4555 = !DILocation(line: 441, column: 24, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 440, column: 21)
!4557 = !DILocation(line: 441, column: 28, scope: !4556)
!4558 = !DILocation(line: 441, column: 37, scope: !4556)
!4559 = !DILocation(line: 441, column: 42, scope: !4556)
!4560 = !DILocation(line: 442, column: 6, scope: !4556)
!4561 = !DILocation(line: 441, column: 4, scope: !4556)
!4562 = !DILocation(line: 443, column: 3, scope: !4556)
!4563 = !DILocation(line: 444, column: 30, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 443, column: 10)
!4565 = !DILocation(line: 444, column: 34, scope: !4564)
!4566 = !DILocation(line: 444, column: 43, scope: !4564)
!4567 = !DILocation(line: 444, column: 48, scope: !4564)
!4568 = !DILocation(line: 445, column: 6, scope: !4564)
!4569 = !DILocation(line: 444, column: 17, scope: !4564)
!4570 = !DILocation(line: 444, column: 15, scope: !4564)
!4571 = !DILocation(line: 455, column: 3, scope: !4387)
!4572 = !DILocation(line: 456, column: 22, scope: !4387)
!4573 = !DILocation(line: 456, column: 27, scope: !4387)
!4574 = !DILocation(line: 456, column: 37, scope: !4387)
!4575 = !DILocation(line: 456, column: 35, scope: !4387)
!4576 = !DILocation(line: 456, column: 43, scope: !4387)
!4577 = !DILocation(line: 199, column: 6, scope: !4381, inlinedAt: !4386)
!4578 = !DILocation(line: 141, column: 6, scope: !4579, inlinedAt: !4380)
!4579 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 141, column: 6)
!4580 = !DILocation(line: 0, scope: !4579, inlinedAt: !4380)
!4581 = !DILocation(line: 141, column: 6, scope: !4375, inlinedAt: !4380)
!4582 = !DILocation(line: 142, column: 29, scope: !4583, inlinedAt: !4380)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !4376, line: 142, column: 7)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !4376, line: 141, column: 39)
!4585 = !DILocation(line: 142, column: 8, scope: !4583, inlinedAt: !4380)
!4586 = !DILocation(line: 142, column: 7, scope: !4584, inlinedAt: !4380)
!4587 = !DILocation(line: 143, column: 18, scope: !4583, inlinedAt: !4380)
!4588 = !DILocation(line: 143, column: 22, scope: !4583, inlinedAt: !4380)
!4589 = !DILocation(line: 143, column: 4, scope: !4583, inlinedAt: !4380)
!4590 = !DILocation(line: 144, column: 12, scope: !4591, inlinedAt: !4380)
!4591 = distinct !DILexicalBlock(scope: !4583, file: !4376, line: 144, column: 12)
!4592 = !DILocation(line: 144, column: 12, scope: !4583, inlinedAt: !4380)
!4593 = !DILocation(line: 145, column: 4, scope: !4591, inlinedAt: !4380)
!4594 = !DILocation(line: 147, column: 4, scope: !4591, inlinedAt: !4380)
!4595 = !DILocation(line: 148, column: 3, scope: !4584, inlinedAt: !4380)
!4596 = !DILocation(line: 150, column: 6, scope: !4597, inlinedAt: !4380)
!4597 = distinct !DILexicalBlock(scope: !4395, file: !4376, line: 150, column: 6)
!4598 = !DILocation(line: 150, column: 6, scope: !4599, inlinedAt: !4380)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4376, line: 150, column: 6)
!4600 = distinct !DILexicalBlock(scope: !4597, file: !4376, line: 150, column: 6)
!4601 = !{i32 -2145489746, i32 -2145489717, i32 -2145489671, i32 -2145489613, i32 -2145489559, i32 -2145489505, i32 -2145489450, i32 -2145489419}
!4602 = !DILocation(line: 150, column: 6, scope: !4603, inlinedAt: !4380)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !4376, line: 150, column: 6)
!4604 = !{i32 -2145488999, i32 -2145488992, i32 -2145488940, i32 -2145488909, i32 -2145488879}
!4605 = !DILocation(line: 150, column: 6, scope: !4600, inlinedAt: !4380)
!4606 = !DILocation(line: 150, column: 6, scope: !4396, inlinedAt: !4380)
!4607 = !DILocation(line: 150, column: 6, scope: !4375, inlinedAt: !4380)
!4608 = !DILocation(line: 151, column: 3, scope: !4396, inlinedAt: !4380)
!4609 = !DILocation(line: 152, column: 20, scope: !4375, inlinedAt: !4380)
!4610 = !DILocation(line: 152, column: 26, scope: !4375, inlinedAt: !4380)
!4611 = !DILocation(line: 152, column: 33, scope: !4375, inlinedAt: !4380)
!4612 = !DILocation(line: 152, column: 2, scope: !4375, inlinedAt: !4380)
!4613 = !DILocation(line: 153, column: 2, scope: !4375, inlinedAt: !4380)
!4614 = !DILocation(line: 154, column: 1, scope: !4375, inlinedAt: !4380)
!4615 = !DILocation(line: 199, column: 6, scope: !4383, inlinedAt: !4386)
!4616 = !DILocation(line: 200, column: 21, scope: !4381, inlinedAt: !4386)
!4617 = !DILocation(line: 200, column: 25, scope: !4381, inlinedAt: !4386)
!4618 = !DILocation(line: 200, column: 31, scope: !4381, inlinedAt: !4386)
!4619 = !DILocation(line: 200, column: 7, scope: !4381, inlinedAt: !4386)
!4620 = !DILocation(line: 200, column: 5, scope: !4381, inlinedAt: !4386)
!4621 = !DILocation(line: 200, column: 3, scope: !4381, inlinedAt: !4386)
!4622 = !DILocation(line: 201, column: 9, scope: !4383, inlinedAt: !4386)
!4623 = !DILocation(line: 456, column: 7, scope: !4387)
!4624 = !DILocation(line: 457, column: 3, scope: !4387)
!4625 = !DILocation(line: 459, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 459, column: 7)
!4627 = !DILocation(line: 459, column: 7, scope: !4387)
!4628 = !DILocation(line: 460, column: 12, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 459, column: 12)
!4630 = !DILocation(line: 460, column: 25, scope: !4629)
!4631 = !DILocation(line: 460, column: 23, scope: !4629)
!4632 = !DILocation(line: 460, column: 9, scope: !4629)
!4633 = !DILocation(line: 461, column: 8, scope: !4629)
!4634 = !DILocation(line: 462, column: 4, scope: !4629)
!4635 = !DILocation(line: 464, column: 10, scope: !4387)
!4636 = !DILocation(line: 464, column: 7, scope: !4387)
!4637 = !DILocation(line: 465, column: 10, scope: !4387)
!4638 = !DILocation(line: 465, column: 7, scope: !4387)
!4639 = !DILocation(line: 466, column: 11, scope: !4387)
!4640 = !DILocation(line: 466, column: 8, scope: !4387)
!4641 = !DILocation(line: 467, column: 12, scope: !4387)
!4642 = !DILocation(line: 467, column: 9, scope: !4387)
!4643 = distinct !{!4643, !4485, !4644}
!4644 = !DILocation(line: 468, column: 2, scope: !4373)
!4645 = !DILocation(line: 469, column: 11, scope: !4373)
!4646 = !DILocation(line: 469, column: 3, scope: !4373)
!4647 = !DILocation(line: 469, column: 8, scope: !4373)
!4648 = !DILocation(line: 470, column: 6, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 470, column: 6)
!4650 = !DILocation(line: 470, column: 6, scope: !4373)
!4651 = !DILocation(line: 471, column: 9, scope: !4649)
!4652 = !DILocation(line: 471, column: 7, scope: !4649)
!4653 = !DILocation(line: 471, column: 3, scope: !4649)
!4654 = !DILabel(scope: !4373, name: "unlock_out", file: !3, line: 472)
!4655 = !DILocation(line: 472, column: 1, scope: !4373)
!4656 = !DILocation(line: 473, column: 2, scope: !4373)
!4657 = !DILocation(line: 474, column: 2, scope: !4373)
!4658 = !DILocation(line: 475, column: 9, scope: !4373)
!4659 = !DILocation(line: 475, column: 2, scope: !4373)
!4660 = !DILocation(line: 476, column: 1, scope: !4373)
!4661 = distinct !DISubprogram(name: "vcs_write", scope: !3, file: !3, line: 590, type: !2379, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4662 = !DILocation(line: 138, column: 29, scope: !4375, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 191, column: 6, scope: !4664, inlinedAt: !4666)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !4382, line: 191, column: 6)
!4665 = distinct !DISubprogram(name: "copy_from_user", scope: !4382, file: !4382, line: 189, type: !4384, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4666 = distinct !DILocation(line: 643, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 633, column: 16)
!4668 = !DILocation(line: 138, column: 42, scope: !4375, inlinedAt: !4663)
!4669 = !DILocation(line: 138, column: 54, scope: !4375, inlinedAt: !4663)
!4670 = !DILocation(line: 140, column: 6, scope: !4375, inlinedAt: !4663)
!4671 = !DILocation(line: 150, column: 6, scope: !4395, inlinedAt: !4663)
!4672 = !DILocalVariable(name: "to", arg: 1, scope: !4665, file: !4382, line: 189, type: !118)
!4673 = !DILocation(line: 189, column: 22, scope: !4665, inlinedAt: !4666)
!4674 = !DILocalVariable(name: "from", arg: 2, scope: !4665, file: !4382, line: 189, type: !1832)
!4675 = !DILocation(line: 189, column: 45, scope: !4665, inlinedAt: !4666)
!4676 = !DILocalVariable(name: "n", arg: 3, scope: !4665, file: !4382, line: 189, type: !130)
!4677 = !DILocation(line: 189, column: 65, scope: !4665, inlinedAt: !4666)
!4678 = !DILocalVariable(name: "file", arg: 1, scope: !4661, file: !3, line: 590, type: !202)
!4679 = !DILocation(line: 590, column: 24, scope: !4661)
!4680 = !DILocalVariable(name: "buf", arg: 2, scope: !4661, file: !3, line: 590, type: !313)
!4681 = !DILocation(line: 590, column: 49, scope: !4661)
!4682 = !DILocalVariable(name: "count", arg: 3, scope: !4661, file: !3, line: 590, type: !434)
!4683 = !DILocation(line: 590, column: 61, scope: !4661)
!4684 = !DILocalVariable(name: "ppos", arg: 4, scope: !4661, file: !3, line: 590, type: !605)
!4685 = !DILocation(line: 590, column: 76, scope: !4661)
!4686 = !DILocalVariable(name: "inode", scope: !4661, file: !3, line: 592, type: !277)
!4687 = !DILocation(line: 592, column: 16, scope: !4661)
!4688 = !DILocation(line: 592, column: 35, scope: !4661)
!4689 = !DILocation(line: 592, column: 24, scope: !4661)
!4690 = !DILocalVariable(name: "vc", scope: !4661, file: !3, line: 593, type: !4145)
!4691 = !DILocation(line: 593, column: 18, scope: !4661)
!4692 = !DILocalVariable(name: "con_buf", scope: !4661, file: !3, line: 594, type: !126)
!4693 = !DILocation(line: 594, column: 8, scope: !4661)
!4694 = !DILocalVariable(name: "org0", scope: !4661, file: !3, line: 595, type: !131)
!4695 = !DILocation(line: 595, column: 7, scope: !4661)
!4696 = !DILocalVariable(name: "org", scope: !4661, file: !3, line: 595, type: !131)
!4697 = !DILocation(line: 595, column: 14, scope: !4661)
!4698 = !DILocalVariable(name: "written", scope: !4661, file: !3, line: 596, type: !7)
!4699 = !DILocation(line: 596, column: 15, scope: !4661)
!4700 = !DILocalVariable(name: "size", scope: !4661, file: !3, line: 597, type: !125)
!4701 = !DILocation(line: 597, column: 6, scope: !4661)
!4702 = !DILocalVariable(name: "ret", scope: !4661, file: !3, line: 598, type: !431)
!4703 = !DILocation(line: 598, column: 10, scope: !4661)
!4704 = !DILocalVariable(name: "pos", scope: !4661, file: !3, line: 599, type: !383)
!4705 = !DILocation(line: 599, column: 9, scope: !4661)
!4706 = !DILocalVariable(name: "viewed", scope: !4661, file: !3, line: 600, type: !342)
!4707 = !DILocation(line: 600, column: 7, scope: !4661)
!4708 = !DILocalVariable(name: "attr", scope: !4661, file: !3, line: 600, type: !342)
!4709 = !DILocation(line: 600, column: 15, scope: !4661)
!4710 = !DILocation(line: 602, column: 6, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 602, column: 6)
!4712 = !DILocation(line: 602, column: 6, scope: !4661)
!4713 = !DILocation(line: 603, column: 3, scope: !4711)
!4714 = !DILocation(line: 605, column: 21, scope: !4661)
!4715 = !DILocation(line: 605, column: 12, scope: !4661)
!4716 = !DILocation(line: 605, column: 10, scope: !4661)
!4717 = !DILocation(line: 606, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 606, column: 6)
!4719 = !DILocation(line: 606, column: 6, scope: !4661)
!4720 = !DILocation(line: 607, column: 3, scope: !4718)
!4721 = !DILocation(line: 609, column: 9, scope: !4661)
!4722 = !DILocation(line: 609, column: 8, scope: !4661)
!4723 = !DILocation(line: 609, column: 6, scope: !4661)
!4724 = !DILocation(line: 614, column: 2, scope: !4661)
!4725 = !DILocation(line: 616, column: 9, scope: !4661)
!4726 = !DILocation(line: 616, column: 7, scope: !4661)
!4727 = !DILocation(line: 617, column: 6, scope: !4661)
!4728 = !DILocation(line: 618, column: 14, scope: !4661)
!4729 = !DILocation(line: 618, column: 7, scope: !4661)
!4730 = !DILocation(line: 618, column: 5, scope: !4661)
!4731 = !DILocation(line: 619, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 619, column: 6)
!4733 = !DILocation(line: 619, column: 6, scope: !4661)
!4734 = !DILocation(line: 620, column: 3, scope: !4732)
!4735 = !DILocation(line: 622, column: 18, scope: !4661)
!4736 = !DILocation(line: 622, column: 22, scope: !4661)
!4737 = !DILocation(line: 622, column: 9, scope: !4661)
!4738 = !DILocation(line: 622, column: 7, scope: !4661)
!4739 = !DILocation(line: 623, column: 6, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 623, column: 6)
!4741 = !DILocation(line: 623, column: 11, scope: !4740)
!4742 = !DILocation(line: 623, column: 6, scope: !4661)
!4743 = !DILocation(line: 624, column: 9, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 623, column: 16)
!4745 = !DILocation(line: 624, column: 7, scope: !4744)
!4746 = !DILocation(line: 625, column: 3, scope: !4744)
!4747 = !DILocation(line: 627, column: 6, scope: !4661)
!4748 = !DILocation(line: 628, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 628, column: 6)
!4750 = !DILocation(line: 628, column: 10, scope: !4749)
!4751 = !DILocation(line: 628, column: 14, scope: !4749)
!4752 = !DILocation(line: 628, column: 17, scope: !4749)
!4753 = !DILocation(line: 628, column: 23, scope: !4749)
!4754 = !DILocation(line: 628, column: 21, scope: !4749)
!4755 = !DILocation(line: 628, column: 6, scope: !4661)
!4756 = !DILocation(line: 629, column: 3, scope: !4749)
!4757 = !DILocation(line: 630, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 630, column: 6)
!4759 = !DILocation(line: 630, column: 14, scope: !4758)
!4760 = !DILocation(line: 630, column: 21, scope: !4758)
!4761 = !DILocation(line: 630, column: 19, scope: !4758)
!4762 = !DILocation(line: 630, column: 12, scope: !4758)
!4763 = !DILocation(line: 630, column: 6, scope: !4661)
!4764 = !DILocation(line: 631, column: 11, scope: !4758)
!4765 = !DILocation(line: 631, column: 18, scope: !4758)
!4766 = !DILocation(line: 631, column: 16, scope: !4758)
!4767 = !DILocation(line: 631, column: 9, scope: !4758)
!4768 = !DILocation(line: 631, column: 3, scope: !4758)
!4769 = !DILocation(line: 632, column: 10, scope: !4661)
!4770 = !DILocation(line: 633, column: 2, scope: !4661)
!4771 = !DILocation(line: 633, column: 9, scope: !4661)
!4772 = !DILocalVariable(name: "this_round", scope: !4667, file: !3, line: 634, type: !7)
!4773 = !DILocation(line: 634, column: 16, scope: !4667)
!4774 = !DILocation(line: 634, column: 29, scope: !4667)
!4775 = !DILocation(line: 636, column: 7, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 636, column: 7)
!4777 = !DILocation(line: 636, column: 18, scope: !4776)
!4778 = !DILocation(line: 636, column: 7, scope: !4667)
!4779 = !DILocation(line: 637, column: 15, scope: !4776)
!4780 = !DILocation(line: 637, column: 4, scope: !4776)
!4781 = !DILocation(line: 642, column: 3, scope: !4667)
!4782 = !DILocation(line: 643, column: 24, scope: !4667)
!4783 = !DILocation(line: 643, column: 33, scope: !4667)
!4784 = !DILocation(line: 643, column: 38, scope: !4667)
!4785 = !DILocation(line: 191, column: 6, scope: !4664, inlinedAt: !4666)
!4786 = !DILocation(line: 141, column: 6, scope: !4579, inlinedAt: !4663)
!4787 = !DILocation(line: 0, scope: !4579, inlinedAt: !4663)
!4788 = !DILocation(line: 141, column: 6, scope: !4375, inlinedAt: !4663)
!4789 = !DILocation(line: 142, column: 29, scope: !4583, inlinedAt: !4663)
!4790 = !DILocation(line: 142, column: 8, scope: !4583, inlinedAt: !4663)
!4791 = !DILocation(line: 142, column: 7, scope: !4584, inlinedAt: !4663)
!4792 = !DILocation(line: 143, column: 18, scope: !4583, inlinedAt: !4663)
!4793 = !DILocation(line: 143, column: 22, scope: !4583, inlinedAt: !4663)
!4794 = !DILocation(line: 143, column: 4, scope: !4583, inlinedAt: !4663)
!4795 = !DILocation(line: 144, column: 12, scope: !4591, inlinedAt: !4663)
!4796 = !DILocation(line: 144, column: 12, scope: !4583, inlinedAt: !4663)
!4797 = !DILocation(line: 145, column: 4, scope: !4591, inlinedAt: !4663)
!4798 = !DILocation(line: 147, column: 4, scope: !4591, inlinedAt: !4663)
!4799 = !DILocation(line: 148, column: 3, scope: !4584, inlinedAt: !4663)
!4800 = !DILocation(line: 150, column: 6, scope: !4597, inlinedAt: !4663)
!4801 = !DILocation(line: 150, column: 6, scope: !4599, inlinedAt: !4663)
!4802 = !DILocation(line: 150, column: 6, scope: !4603, inlinedAt: !4663)
!4803 = !DILocation(line: 150, column: 6, scope: !4600, inlinedAt: !4663)
!4804 = !DILocation(line: 150, column: 6, scope: !4396, inlinedAt: !4663)
!4805 = !DILocation(line: 150, column: 6, scope: !4375, inlinedAt: !4663)
!4806 = !DILocation(line: 151, column: 3, scope: !4396, inlinedAt: !4663)
!4807 = !DILocation(line: 152, column: 20, scope: !4375, inlinedAt: !4663)
!4808 = !DILocation(line: 152, column: 26, scope: !4375, inlinedAt: !4663)
!4809 = !DILocation(line: 152, column: 33, scope: !4375, inlinedAt: !4663)
!4810 = !DILocation(line: 152, column: 2, scope: !4375, inlinedAt: !4663)
!4811 = !DILocation(line: 153, column: 2, scope: !4375, inlinedAt: !4663)
!4812 = !DILocation(line: 154, column: 1, scope: !4375, inlinedAt: !4663)
!4813 = !DILocation(line: 191, column: 6, scope: !4665, inlinedAt: !4666)
!4814 = !DILocation(line: 192, column: 23, scope: !4664, inlinedAt: !4666)
!4815 = !DILocation(line: 192, column: 27, scope: !4664, inlinedAt: !4666)
!4816 = !DILocation(line: 192, column: 33, scope: !4664, inlinedAt: !4666)
!4817 = !DILocation(line: 192, column: 7, scope: !4664, inlinedAt: !4666)
!4818 = !DILocation(line: 192, column: 5, scope: !4664, inlinedAt: !4666)
!4819 = !DILocation(line: 192, column: 3, scope: !4664, inlinedAt: !4666)
!4820 = !DILocation(line: 193, column: 9, scope: !4665, inlinedAt: !4666)
!4821 = !DILocation(line: 643, column: 7, scope: !4667)
!4822 = !DILocation(line: 644, column: 3, scope: !4667)
!4823 = !DILocation(line: 646, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 646, column: 7)
!4825 = !DILocation(line: 646, column: 7, scope: !4667)
!4826 = !DILocation(line: 647, column: 18, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 646, column: 12)
!4828 = !DILocation(line: 647, column: 15, scope: !4827)
!4829 = !DILocation(line: 648, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 648, column: 8)
!4831 = !DILocation(line: 648, column: 8, scope: !4827)
!4832 = !DILocation(line: 652, column: 9, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 652, column: 9)
!4834 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 648, column: 21)
!4835 = !DILocation(line: 652, column: 9, scope: !4834)
!4836 = !DILocation(line: 653, column: 6, scope: !4833)
!4837 = !DILocation(line: 654, column: 9, scope: !4834)
!4838 = !DILocation(line: 655, column: 5, scope: !4834)
!4839 = !DILocation(line: 657, column: 3, scope: !4827)
!4840 = !DILocation(line: 663, column: 19, scope: !4667)
!4841 = !DILocation(line: 663, column: 23, scope: !4667)
!4842 = !DILocation(line: 663, column: 10, scope: !4667)
!4843 = !DILocation(line: 663, column: 8, scope: !4667)
!4844 = !DILocation(line: 664, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 664, column: 7)
!4846 = !DILocation(line: 664, column: 12, scope: !4845)
!4847 = !DILocation(line: 664, column: 7, scope: !4667)
!4848 = !DILocation(line: 665, column: 8, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 665, column: 8)
!4850 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 664, column: 17)
!4851 = !DILocation(line: 665, column: 8, scope: !4850)
!4852 = !DILocation(line: 666, column: 5, scope: !4849)
!4853 = !DILocation(line: 667, column: 10, scope: !4850)
!4854 = !DILocation(line: 667, column: 8, scope: !4850)
!4855 = !DILocation(line: 668, column: 4, scope: !4850)
!4856 = !DILocation(line: 670, column: 7, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 670, column: 7)
!4858 = !DILocation(line: 670, column: 14, scope: !4857)
!4859 = !DILocation(line: 670, column: 11, scope: !4857)
!4860 = !DILocation(line: 670, column: 7, scope: !4667)
!4861 = !DILocation(line: 671, column: 4, scope: !4857)
!4862 = !DILocation(line: 672, column: 7, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 672, column: 7)
!4864 = !DILocation(line: 672, column: 20, scope: !4863)
!4865 = !DILocation(line: 672, column: 27, scope: !4863)
!4866 = !DILocation(line: 672, column: 25, scope: !4863)
!4867 = !DILocation(line: 672, column: 18, scope: !4863)
!4868 = !DILocation(line: 672, column: 7, scope: !4667)
!4869 = !DILocation(line: 673, column: 17, scope: !4863)
!4870 = !DILocation(line: 673, column: 24, scope: !4863)
!4871 = !DILocation(line: 673, column: 22, scope: !4863)
!4872 = !DILocation(line: 673, column: 15, scope: !4863)
!4873 = !DILocation(line: 673, column: 4, scope: !4863)
!4874 = !DILocation(line: 679, column: 7, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 679, column: 7)
!4876 = !DILocation(line: 679, column: 7, scope: !4667)
!4877 = !DILocation(line: 680, column: 24, scope: !4875)
!4878 = !DILocation(line: 680, column: 28, scope: !4875)
!4879 = !DILocation(line: 680, column: 37, scope: !4875)
!4880 = !DILocation(line: 680, column: 42, scope: !4875)
!4881 = !DILocation(line: 681, column: 6, scope: !4875)
!4882 = !DILocation(line: 680, column: 10, scope: !4875)
!4883 = !DILocation(line: 680, column: 8, scope: !4875)
!4884 = !DILocation(line: 680, column: 4, scope: !4875)
!4885 = !DILocation(line: 683, column: 31, scope: !4875)
!4886 = !DILocation(line: 683, column: 35, scope: !4875)
!4887 = !DILocation(line: 683, column: 44, scope: !4875)
!4888 = !DILocation(line: 683, column: 49, scope: !4875)
!4889 = !DILocation(line: 684, column: 6, scope: !4875)
!4890 = !DILocation(line: 683, column: 10, scope: !4875)
!4891 = !DILocation(line: 683, column: 8, scope: !4875)
!4892 = !DILocation(line: 686, column: 12, scope: !4667)
!4893 = !DILocation(line: 686, column: 9, scope: !4667)
!4894 = !DILocation(line: 687, column: 14, scope: !4667)
!4895 = !DILocation(line: 687, column: 11, scope: !4667)
!4896 = !DILocation(line: 688, column: 10, scope: !4667)
!4897 = !DILocation(line: 688, column: 7, scope: !4667)
!4898 = !DILocation(line: 689, column: 10, scope: !4667)
!4899 = !DILocation(line: 689, column: 7, scope: !4667)
!4900 = !DILocation(line: 690, column: 7, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 690, column: 7)
!4902 = !DILocation(line: 690, column: 7, scope: !4667)
!4903 = !DILocation(line: 691, column: 18, scope: !4901)
!4904 = !DILocation(line: 691, column: 38, scope: !4901)
!4905 = !DILocation(line: 691, column: 22, scope: !4901)
!4906 = !DILocation(line: 691, column: 45, scope: !4901)
!4907 = !DILocation(line: 691, column: 51, scope: !4901)
!4908 = !DILocation(line: 691, column: 49, scope: !4901)
!4909 = !DILocation(line: 691, column: 4, scope: !4901)
!4910 = distinct !{!4910, !4770, !4911}
!4911 = !DILocation(line: 692, column: 2, scope: !4661)
!4912 = !DILocation(line: 693, column: 11, scope: !4661)
!4913 = !DILocation(line: 693, column: 3, scope: !4661)
!4914 = !DILocation(line: 693, column: 8, scope: !4661)
!4915 = !DILocation(line: 694, column: 8, scope: !4661)
!4916 = !DILocation(line: 694, column: 6, scope: !4661)
!4917 = !DILocation(line: 695, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 695, column: 6)
!4919 = !DILocation(line: 695, column: 6, scope: !4661)
!4920 = !DILocation(line: 696, column: 19, scope: !4918)
!4921 = !DILocation(line: 696, column: 3, scope: !4918)
!4922 = !DILabel(scope: !4661, name: "unlock_out", file: !3, line: 698)
!4923 = !DILocation(line: 698, column: 1, scope: !4661)
!4924 = !DILocation(line: 699, column: 2, scope: !4661)
!4925 = !DILocation(line: 700, column: 2, scope: !4661)
!4926 = !DILocation(line: 701, column: 9, scope: !4661)
!4927 = !DILocation(line: 701, column: 2, scope: !4661)
!4928 = !DILocation(line: 702, column: 1, scope: !4661)
!4929 = distinct !DISubprogram(name: "vcs_poll", scope: !3, file: !3, line: 705, type: !4930, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!141, !202, !4932}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1965, line: 46, baseType: !1964)
!4934 = !DILocalVariable(name: "file", arg: 1, scope: !4929, file: !3, line: 705, type: !202)
!4935 = !DILocation(line: 705, column: 23, scope: !4929)
!4936 = !DILocalVariable(name: "wait", arg: 2, scope: !4929, file: !3, line: 705, type: !4932)
!4937 = !DILocation(line: 705, column: 41, scope: !4929)
!4938 = !DILocalVariable(name: "poll", scope: !4929, file: !3, line: 707, type: !142)
!4939 = !DILocation(line: 707, column: 24, scope: !4929)
!4940 = !DILocation(line: 707, column: 49, scope: !4929)
!4941 = !DILocation(line: 707, column: 31, scope: !4929)
!4942 = !DILocalVariable(name: "ret", scope: !4929, file: !3, line: 708, type: !141)
!4943 = !DILocation(line: 708, column: 11, scope: !4929)
!4944 = !DILocation(line: 710, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 710, column: 6)
!4946 = !DILocation(line: 710, column: 6, scope: !4929)
!4947 = !DILocation(line: 711, column: 13, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 710, column: 12)
!4949 = !DILocation(line: 711, column: 20, scope: !4948)
!4950 = !DILocation(line: 711, column: 26, scope: !4948)
!4951 = !DILocation(line: 711, column: 33, scope: !4948)
!4952 = !DILocation(line: 711, column: 3, scope: !4948)
!4953 = !DILocation(line: 712, column: 11, scope: !4948)
!4954 = !DILocation(line: 712, column: 17, scope: !4948)
!4955 = !DILocation(line: 712, column: 3, scope: !4948)
!4956 = !DILocation(line: 714, column: 8, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 712, column: 24)
!4958 = !DILocation(line: 715, column: 4, scope: !4957)
!4959 = !DILocation(line: 717, column: 8, scope: !4957)
!4960 = !DILocation(line: 718, column: 4, scope: !4957)
!4961 = !DILocation(line: 720, column: 8, scope: !4957)
!4962 = !DILocation(line: 721, column: 4, scope: !4957)
!4963 = !DILocation(line: 723, column: 2, scope: !4948)
!4964 = !DILocation(line: 724, column: 9, scope: !4929)
!4965 = !DILocation(line: 724, column: 2, scope: !4929)
!4966 = distinct !DISubprogram(name: "vcs_open", scope: !3, file: !3, line: 745, type: !2417, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4967 = !DILocalVariable(name: "inode", arg: 1, scope: !4966, file: !3, line: 745, type: !277)
!4968 = !DILocation(line: 745, column: 24, scope: !4966)
!4969 = !DILocalVariable(name: "filp", arg: 2, scope: !4966, file: !3, line: 745, type: !202)
!4970 = !DILocation(line: 745, column: 44, scope: !4966)
!4971 = !DILocalVariable(name: "currcons", scope: !4966, file: !3, line: 747, type: !7)
!4972 = !DILocation(line: 747, column: 15, scope: !4966)
!4973 = !DILocation(line: 747, column: 26, scope: !4966)
!4974 = !DILocalVariable(name: "attr", scope: !4966, file: !3, line: 748, type: !342)
!4975 = !DILocation(line: 748, column: 7, scope: !4966)
!4976 = !DILocation(line: 748, column: 14, scope: !4966)
!4977 = !DILocalVariable(name: "uni_mode", scope: !4966, file: !3, line: 749, type: !342)
!4978 = !DILocation(line: 749, column: 7, scope: !4966)
!4979 = !DILocation(line: 749, column: 18, scope: !4966)
!4980 = !DILocalVariable(name: "ret", scope: !4966, file: !3, line: 750, type: !125)
!4981 = !DILocation(line: 750, column: 6, scope: !4966)
!4982 = !DILocation(line: 753, column: 6, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 753, column: 6)
!4984 = !DILocation(line: 753, column: 11, scope: !4983)
!4985 = !DILocation(line: 753, column: 14, scope: !4983)
!4986 = !DILocation(line: 753, column: 6, scope: !4966)
!4987 = !DILocation(line: 754, column: 3, scope: !4983)
!4988 = !DILocation(line: 756, column: 2, scope: !4966)
!4989 = !DILocation(line: 757, column: 5, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 757, column: 5)
!4991 = !DILocation(line: 757, column: 14, scope: !4990)
!4992 = !DILocation(line: 757, column: 36, scope: !4990)
!4993 = !DILocation(line: 757, column: 44, scope: !4990)
!4994 = !DILocation(line: 757, column: 18, scope: !4990)
!4995 = !DILocation(line: 757, column: 5, scope: !4966)
!4996 = !DILocation(line: 758, column: 7, scope: !4990)
!4997 = !DILocation(line: 758, column: 3, scope: !4990)
!4998 = !DILocation(line: 759, column: 2, scope: !4966)
!4999 = !DILocation(line: 760, column: 9, scope: !4966)
!5000 = !DILocation(line: 760, column: 2, scope: !4966)
!5001 = !DILocation(line: 761, column: 1, scope: !4966)
!5002 = distinct !DISubprogram(name: "vcs_release", scope: !3, file: !3, line: 763, type: !2417, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5003 = !DILocalVariable(name: "inode", arg: 1, scope: !5002, file: !3, line: 763, type: !277)
!5004 = !DILocation(line: 763, column: 38, scope: !5002)
!5005 = !DILocalVariable(name: "file", arg: 2, scope: !5002, file: !3, line: 763, type: !202)
!5006 = !DILocation(line: 763, column: 58, scope: !5002)
!5007 = !DILocalVariable(name: "poll", scope: !5002, file: !3, line: 765, type: !142)
!5008 = !DILocation(line: 765, column: 24, scope: !5002)
!5009 = !DILocation(line: 765, column: 31, scope: !5002)
!5010 = !DILocation(line: 765, column: 37, scope: !5002)
!5011 = !DILocation(line: 767, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 767, column: 6)
!5013 = !DILocation(line: 767, column: 6, scope: !5002)
!5014 = !DILocation(line: 768, column: 22, scope: !5012)
!5015 = !DILocation(line: 768, column: 3, scope: !5012)
!5016 = !DILocation(line: 769, column: 2, scope: !5002)
!5017 = distinct !DISubprogram(name: "vcs_fasync", scope: !3, file: !3, line: 728, type: !2431, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5018 = !DILocalVariable(name: "fd", arg: 1, scope: !5017, file: !3, line: 728, type: !125)
!5019 = !DILocation(line: 728, column: 16, scope: !5017)
!5020 = !DILocalVariable(name: "file", arg: 2, scope: !5017, file: !3, line: 728, type: !202)
!5021 = !DILocation(line: 728, column: 33, scope: !5017)
!5022 = !DILocalVariable(name: "on", arg: 3, scope: !5017, file: !3, line: 728, type: !125)
!5023 = !DILocation(line: 728, column: 43, scope: !5017)
!5024 = !DILocalVariable(name: "poll", scope: !5017, file: !3, line: 730, type: !142)
!5025 = !DILocation(line: 730, column: 24, scope: !5017)
!5026 = !DILocation(line: 730, column: 31, scope: !5017)
!5027 = !DILocation(line: 730, column: 37, scope: !5017)
!5028 = !DILocation(line: 732, column: 7, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 732, column: 6)
!5030 = !DILocation(line: 732, column: 6, scope: !5017)
!5031 = !DILocation(line: 734, column: 8, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 734, column: 7)
!5033 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 732, column: 13)
!5034 = !DILocation(line: 734, column: 7, scope: !5033)
!5035 = !DILocation(line: 735, column: 4, scope: !5032)
!5036 = !DILocation(line: 736, column: 28, scope: !5033)
!5037 = !DILocation(line: 736, column: 10, scope: !5033)
!5038 = !DILocation(line: 736, column: 8, scope: !5033)
!5039 = !DILocation(line: 737, column: 8, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 737, column: 7)
!5041 = !DILocation(line: 737, column: 7, scope: !5033)
!5042 = !DILocation(line: 738, column: 4, scope: !5040)
!5043 = !DILocation(line: 739, column: 2, scope: !5033)
!5044 = !DILocation(line: 741, column: 23, scope: !5017)
!5045 = !DILocation(line: 741, column: 27, scope: !5017)
!5046 = !DILocation(line: 741, column: 33, scope: !5017)
!5047 = !DILocation(line: 741, column: 38, scope: !5017)
!5048 = !DILocation(line: 741, column: 44, scope: !5017)
!5049 = !DILocation(line: 741, column: 9, scope: !5017)
!5050 = !DILocation(line: 741, column: 2, scope: !5017)
!5051 = !DILocation(line: 742, column: 1, scope: !5017)
!5052 = distinct !DISubprogram(name: "file_inode", scope: !77, file: !77, line: 1299, type: !5053, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!277, !620}
!5055 = !DILocalVariable(name: "f", arg: 1, scope: !5052, file: !77, line: 1299, type: !620)
!5056 = !DILocation(line: 1299, column: 59, scope: !5052)
!5057 = !DILocation(line: 1301, column: 9, scope: !5052)
!5058 = !DILocation(line: 1301, column: 12, scope: !5052)
!5059 = !DILocation(line: 1301, column: 2, scope: !5052)
!5060 = distinct !DISubprogram(name: "vcs_vc", scope: !3, file: !3, line: 183, type: !5061, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!4145, !277, !791}
!5063 = !DILocalVariable(name: "v", arg: 1, scope: !5064, file: !5065, line: 23, type: !5068)
!5064 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5065, file: !5065, line: 23, type: !5066, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5065 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!125, !5068}
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!5070 = !DILocation(line: 23, column: 61, scope: !5064, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 28, column: 9, scope: !5072, inlinedAt: !5074)
!5072 = distinct !DISubprogram(name: "atomic_read", scope: !5073, file: !5073, line: 25, type: !5066, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5073 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5074 = distinct !DILocation(line: 187, column: 2, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 187, column: 2)
!5076 = !DILocalVariable(name: "v", arg: 1, scope: !5077, file: !5078, line: 69, type: !5081)
!5077 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5078, file: !5078, line: 69, type: !5079, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5078 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5081, !434}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5083)
!5083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5084 = !DILocation(line: 69, column: 73, scope: !5077, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 27, column: 2, scope: !5072, inlinedAt: !5074)
!5086 = !DILocalVariable(name: "size", arg: 2, scope: !5077, file: !5078, line: 69, type: !434)
!5087 = !DILocation(line: 69, column: 83, scope: !5077, inlinedAt: !5085)
!5088 = !DILocalVariable(name: "v", arg: 1, scope: !5072, file: !5073, line: 25, type: !5068)
!5089 = !DILocation(line: 25, column: 29, scope: !5072, inlinedAt: !5074)
!5090 = !DILocalVariable(name: "inode", arg: 1, scope: !5060, file: !3, line: 183, type: !277)
!5091 = !DILocation(line: 183, column: 45, scope: !5060)
!5092 = !DILocalVariable(name: "viewed", arg: 2, scope: !5060, file: !3, line: 183, type: !791)
!5093 = !DILocation(line: 183, column: 58, scope: !5060)
!5094 = !DILocalVariable(name: "currcons", scope: !5060, file: !3, line: 185, type: !7)
!5095 = !DILocation(line: 185, column: 15, scope: !5060)
!5096 = !DILocation(line: 185, column: 26, scope: !5060)
!5097 = !DILocalVariable(name: "__ret_warn_on", scope: !5075, file: !3, line: 187, type: !125)
!5098 = !DILocation(line: 187, column: 2, scope: !5075)
!5099 = !DILocation(line: 27, column: 25, scope: !5072, inlinedAt: !5074)
!5100 = !DILocation(line: 71, column: 19, scope: !5077, inlinedAt: !5085)
!5101 = !DILocation(line: 71, column: 22, scope: !5077, inlinedAt: !5085)
!5102 = !DILocation(line: 71, column: 2, scope: !5077, inlinedAt: !5085)
!5103 = !DILocation(line: 72, column: 2, scope: !5077, inlinedAt: !5085)
!5104 = !DILocation(line: 28, column: 26, scope: !5072, inlinedAt: !5074)
!5105 = !DILocation(line: 29, column: 9, scope: !5064, inlinedAt: !5071)
!5106 = !DILocation(line: 0, scope: !5075)
!5107 = !DILocation(line: 187, column: 2, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 187, column: 2)
!5109 = !DILocation(line: 187, column: 2, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 187, column: 2)
!5111 = !DILocation(line: 187, column: 2, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 187, column: 2)
!5113 = !DILocation(line: 187, column: 2, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 187, column: 2)
!5115 = !{i32 -2142124310, i32 -2142124281, i32 -2142124235, i32 -2142124177, i32 -2142124123, i32 -2142124069, i32 -2142124014, i32 -2142123983}
!5116 = !DILocation(line: 187, column: 2, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 187, column: 2)
!5118 = !{i32 -2142123575, i32 -2142123568, i32 -2142123516, i32 -2142123485, i32 -2142123455}
!5119 = !DILocation(line: 187, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 187, column: 2)
!5121 = !DILocation(line: 189, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 189, column: 6)
!5123 = !DILocation(line: 189, column: 15, scope: !5122)
!5124 = !DILocation(line: 189, column: 6, scope: !5060)
!5125 = !DILocation(line: 190, column: 14, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 189, column: 21)
!5127 = !DILocation(line: 190, column: 12, scope: !5126)
!5128 = !DILocation(line: 191, column: 7, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 191, column: 7)
!5130 = !DILocation(line: 191, column: 7, scope: !5126)
!5131 = !DILocation(line: 192, column: 5, scope: !5129)
!5132 = !DILocation(line: 192, column: 12, scope: !5129)
!5133 = !DILocation(line: 192, column: 4, scope: !5129)
!5134 = !DILocation(line: 193, column: 2, scope: !5126)
!5135 = !DILocation(line: 194, column: 11, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 193, column: 9)
!5137 = !DILocation(line: 195, column: 7, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 195, column: 7)
!5139 = !DILocation(line: 195, column: 7, scope: !5136)
!5140 = !DILocation(line: 196, column: 5, scope: !5138)
!5141 = !DILocation(line: 196, column: 12, scope: !5138)
!5142 = !DILocation(line: 196, column: 4, scope: !5138)
!5143 = !DILocation(line: 198, column: 17, scope: !5060)
!5144 = !DILocation(line: 198, column: 9, scope: !5060)
!5145 = !DILocation(line: 198, column: 27, scope: !5060)
!5146 = !DILocation(line: 198, column: 2, scope: !5060)
!5147 = distinct !DISubprogram(name: "vcs_size", scope: !3, file: !3, line: 209, type: !5148, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!125, !4266, !342, !342}
!5150 = !DILocation(line: 23, column: 61, scope: !5064, inlinedAt: !5151)
!5151 = distinct !DILocation(line: 28, column: 9, scope: !5072, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 213, column: 2, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 213, column: 2)
!5154 = !DILocation(line: 69, column: 73, scope: !5077, inlinedAt: !5155)
!5155 = distinct !DILocation(line: 27, column: 2, scope: !5072, inlinedAt: !5152)
!5156 = !DILocation(line: 69, column: 83, scope: !5077, inlinedAt: !5155)
!5157 = !DILocation(line: 25, column: 29, scope: !5072, inlinedAt: !5152)
!5158 = !DILocalVariable(name: "vc", arg: 1, scope: !5147, file: !3, line: 209, type: !4266)
!5159 = !DILocation(line: 209, column: 43, scope: !5147)
!5160 = !DILocalVariable(name: "attr", arg: 2, scope: !5147, file: !3, line: 209, type: !342)
!5161 = !DILocation(line: 209, column: 52, scope: !5147)
!5162 = !DILocalVariable(name: "unicode", arg: 3, scope: !5147, file: !3, line: 209, type: !342)
!5163 = !DILocation(line: 209, column: 63, scope: !5147)
!5164 = !DILocalVariable(name: "size", scope: !5147, file: !3, line: 211, type: !125)
!5165 = !DILocation(line: 211, column: 6, scope: !5147)
!5166 = !DILocalVariable(name: "__ret_warn_on", scope: !5153, file: !3, line: 213, type: !125)
!5167 = !DILocation(line: 213, column: 2, scope: !5153)
!5168 = !DILocation(line: 27, column: 25, scope: !5072, inlinedAt: !5152)
!5169 = !DILocation(line: 71, column: 19, scope: !5077, inlinedAt: !5155)
!5170 = !DILocation(line: 71, column: 22, scope: !5077, inlinedAt: !5155)
!5171 = !DILocation(line: 71, column: 2, scope: !5077, inlinedAt: !5155)
!5172 = !DILocation(line: 72, column: 2, scope: !5077, inlinedAt: !5155)
!5173 = !DILocation(line: 28, column: 26, scope: !5072, inlinedAt: !5152)
!5174 = !DILocation(line: 29, column: 9, scope: !5064, inlinedAt: !5151)
!5175 = !DILocation(line: 0, scope: !5153)
!5176 = !DILocation(line: 213, column: 2, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 213, column: 2)
!5178 = !DILocation(line: 213, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 213, column: 2)
!5180 = !DILocation(line: 213, column: 2, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 213, column: 2)
!5182 = !DILocation(line: 213, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 213, column: 2)
!5184 = !{i32 -2142122675, i32 -2142122646, i32 -2142122600, i32 -2142122542, i32 -2142122488, i32 -2142122434, i32 -2142122379, i32 -2142122348}
!5185 = !DILocation(line: 213, column: 2, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 213, column: 2)
!5187 = !{i32 -2142121940, i32 -2142121933, i32 -2142121881, i32 -2142121850, i32 -2142121820}
!5188 = !DILocation(line: 213, column: 2, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 213, column: 2)
!5190 = !DILocation(line: 215, column: 9, scope: !5147)
!5191 = !DILocation(line: 215, column: 13, scope: !5147)
!5192 = !DILocation(line: 215, column: 23, scope: !5147)
!5193 = !DILocation(line: 215, column: 27, scope: !5147)
!5194 = !DILocation(line: 215, column: 21, scope: !5147)
!5195 = !DILocation(line: 215, column: 7, scope: !5147)
!5196 = !DILocation(line: 217, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 217, column: 6)
!5198 = !DILocation(line: 217, column: 6, scope: !5147)
!5199 = !DILocation(line: 218, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 218, column: 7)
!5201 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 217, column: 12)
!5202 = !DILocation(line: 218, column: 7, scope: !5201)
!5203 = !DILocation(line: 219, column: 4, scope: !5200)
!5204 = !DILocation(line: 221, column: 14, scope: !5201)
!5205 = !DILocation(line: 221, column: 12, scope: !5201)
!5206 = !DILocation(line: 221, column: 19, scope: !5201)
!5207 = !DILocation(line: 221, column: 8, scope: !5201)
!5208 = !DILocation(line: 222, column: 2, scope: !5201)
!5209 = !DILocation(line: 222, column: 13, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 222, column: 13)
!5211 = !DILocation(line: 222, column: 13, scope: !5197)
!5212 = !DILocation(line: 223, column: 8, scope: !5210)
!5213 = !DILocation(line: 223, column: 3, scope: !5210)
!5214 = !DILocation(line: 225, column: 9, scope: !5147)
!5215 = !DILocation(line: 225, column: 2, scope: !5147)
!5216 = !DILocation(line: 226, column: 1, scope: !5147)
!5217 = distinct !DISubprogram(name: "iminor", scope: !77, file: !77, line: 875, type: !5218, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!7, !3857}
!5220 = !DILocalVariable(name: "inode", arg: 1, scope: !5217, file: !77, line: 875, type: !3857)
!5221 = !DILocation(line: 875, column: 51, scope: !5217)
!5222 = !DILocation(line: 877, column: 9, scope: !5217)
!5223 = !DILocation(line: 877, column: 2, scope: !5217)
!5224 = distinct !DISubprogram(name: "kasan_check_read", scope: !5225, file: !5225, line: 34, type: !5226, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5225 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!342, !5081, !7}
!5228 = !DILocalVariable(name: "p", arg: 1, scope: !5224, file: !5225, line: 34, type: !5081)
!5229 = !DILocation(line: 34, column: 58, scope: !5224)
!5230 = !DILocalVariable(name: "size", arg: 2, scope: !5224, file: !5225, line: 34, type: !7)
!5231 = !DILocation(line: 34, column: 74, scope: !5224)
!5232 = !DILocation(line: 36, column: 2, scope: !5224)
!5233 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5234, file: !5234, line: 178, type: !5235, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5234 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5235 = !DISubroutineType(types: !5236)
!5236 = !{null, !5081, !434, !125}
!5237 = !DILocalVariable(name: "ptr", arg: 1, scope: !5233, file: !5234, line: 178, type: !5081)
!5238 = !DILocation(line: 178, column: 60, scope: !5233)
!5239 = !DILocalVariable(name: "size", arg: 2, scope: !5233, file: !5234, line: 178, type: !434)
!5240 = !DILocation(line: 178, column: 72, scope: !5233)
!5241 = !DILocalVariable(name: "type", arg: 3, scope: !5233, file: !5234, line: 179, type: !125)
!5242 = !DILocation(line: 179, column: 15, scope: !5233)
!5243 = !DILocation(line: 179, column: 23, scope: !5233)
!5244 = distinct !DISubprogram(name: "vcs_read_buf_uni", scope: !3, file: !3, line: 248, type: !5245, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!125, !4145, !126, !7, !7, !342}
!5247 = !DILocalVariable(name: "vc", arg: 1, scope: !5244, file: !3, line: 248, type: !4145)
!5248 = !DILocation(line: 248, column: 45, scope: !5244)
!5249 = !DILocalVariable(name: "con_buf", arg: 2, scope: !5244, file: !3, line: 248, type: !126)
!5250 = !DILocation(line: 248, column: 55, scope: !5244)
!5251 = !DILocalVariable(name: "pos", arg: 3, scope: !5244, file: !3, line: 249, type: !7)
!5252 = !DILocation(line: 249, column: 16, scope: !5244)
!5253 = !DILocalVariable(name: "count", arg: 4, scope: !5244, file: !3, line: 249, type: !7)
!5254 = !DILocation(line: 249, column: 34, scope: !5244)
!5255 = !DILocalVariable(name: "viewed", arg: 5, scope: !5244, file: !3, line: 249, type: !342)
!5256 = !DILocation(line: 249, column: 46, scope: !5244)
!5257 = !DILocalVariable(name: "nr", scope: !5244, file: !3, line: 251, type: !7)
!5258 = !DILocation(line: 251, column: 15, scope: !5244)
!5259 = !DILocalVariable(name: "row", scope: !5244, file: !3, line: 251, type: !7)
!5260 = !DILocation(line: 251, column: 19, scope: !5244)
!5261 = !DILocalVariable(name: "col", scope: !5244, file: !3, line: 251, type: !7)
!5262 = !DILocation(line: 251, column: 24, scope: !5244)
!5263 = !DILocalVariable(name: "maxcol", scope: !5244, file: !3, line: 251, type: !7)
!5264 = !DILocation(line: 251, column: 29, scope: !5244)
!5265 = !DILocation(line: 251, column: 38, scope: !5244)
!5266 = !DILocation(line: 251, column: 42, scope: !5244)
!5267 = !DILocalVariable(name: "ret", scope: !5244, file: !3, line: 252, type: !125)
!5268 = !DILocation(line: 252, column: 6, scope: !5244)
!5269 = !DILocation(line: 254, column: 24, scope: !5244)
!5270 = !DILocation(line: 254, column: 8, scope: !5244)
!5271 = !DILocation(line: 254, column: 6, scope: !5244)
!5272 = !DILocation(line: 255, column: 6, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 255, column: 6)
!5274 = !DILocation(line: 255, column: 6, scope: !5244)
!5275 = !DILocation(line: 256, column: 10, scope: !5273)
!5276 = !DILocation(line: 256, column: 3, scope: !5273)
!5277 = !DILocation(line: 258, column: 6, scope: !5244)
!5278 = !DILocation(line: 259, column: 8, scope: !5244)
!5279 = !DILocation(line: 259, column: 14, scope: !5244)
!5280 = !DILocation(line: 259, column: 12, scope: !5244)
!5281 = !DILocation(line: 259, column: 6, scope: !5244)
!5282 = !DILocation(line: 260, column: 8, scope: !5244)
!5283 = !DILocation(line: 260, column: 14, scope: !5244)
!5284 = !DILocation(line: 260, column: 12, scope: !5244)
!5285 = !DILocation(line: 260, column: 6, scope: !5244)
!5286 = !DILocation(line: 261, column: 7, scope: !5244)
!5287 = !DILocation(line: 261, column: 16, scope: !5244)
!5288 = !DILocation(line: 261, column: 14, scope: !5244)
!5289 = !DILocation(line: 261, column: 5, scope: !5244)
!5290 = !DILocation(line: 262, column: 2, scope: !5244)
!5291 = !DILocation(line: 263, column: 7, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 263, column: 7)
!5293 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 262, column: 5)
!5294 = !DILocation(line: 263, column: 12, scope: !5292)
!5295 = !DILocation(line: 263, column: 18, scope: !5292)
!5296 = !DILocation(line: 263, column: 10, scope: !5292)
!5297 = !DILocation(line: 263, column: 7, scope: !5293)
!5298 = !DILocation(line: 264, column: 9, scope: !5292)
!5299 = !DILocation(line: 264, column: 15, scope: !5292)
!5300 = !DILocation(line: 264, column: 7, scope: !5292)
!5301 = !DILocation(line: 264, column: 4, scope: !5292)
!5302 = !DILocation(line: 265, column: 23, scope: !5293)
!5303 = !DILocation(line: 265, column: 27, scope: !5293)
!5304 = !DILocation(line: 265, column: 36, scope: !5293)
!5305 = !DILocation(line: 265, column: 44, scope: !5293)
!5306 = !DILocation(line: 265, column: 49, scope: !5293)
!5307 = !DILocation(line: 265, column: 54, scope: !5293)
!5308 = !DILocation(line: 265, column: 3, scope: !5293)
!5309 = !DILocation(line: 266, column: 14, scope: !5293)
!5310 = !DILocation(line: 266, column: 17, scope: !5293)
!5311 = !DILocation(line: 266, column: 11, scope: !5293)
!5312 = !DILocation(line: 267, column: 12, scope: !5293)
!5313 = !DILocation(line: 267, column: 15, scope: !5293)
!5314 = !DILocation(line: 267, column: 9, scope: !5293)
!5315 = !DILocation(line: 268, column: 6, scope: !5293)
!5316 = !DILocation(line: 269, column: 7, scope: !5293)
!5317 = !DILocation(line: 270, column: 8, scope: !5293)
!5318 = !DILocation(line: 270, column: 6, scope: !5293)
!5319 = !DILocation(line: 271, column: 2, scope: !5293)
!5320 = !DILocation(line: 271, column: 11, scope: !5244)
!5321 = distinct !{!5321, !5290, !5322}
!5322 = !DILocation(line: 271, column: 16, scope: !5244)
!5323 = !DILocation(line: 273, column: 2, scope: !5244)
!5324 = !DILocation(line: 274, column: 1, scope: !5244)
!5325 = distinct !DISubprogram(name: "vcs_read_buf_noattr", scope: !3, file: !3, line: 276, type: !5326, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{null, !4266, !126, !7, !7, !342}
!5328 = !DILocalVariable(name: "vc", arg: 1, scope: !5325, file: !3, line: 276, type: !4266)
!5329 = !DILocation(line: 276, column: 55, scope: !5325)
!5330 = !DILocalVariable(name: "con_buf", arg: 2, scope: !5325, file: !3, line: 276, type: !126)
!5331 = !DILocation(line: 276, column: 65, scope: !5325)
!5332 = !DILocalVariable(name: "pos", arg: 3, scope: !5325, file: !3, line: 277, type: !7)
!5333 = !DILocation(line: 277, column: 16, scope: !5325)
!5334 = !DILocalVariable(name: "count", arg: 4, scope: !5325, file: !3, line: 277, type: !7)
!5335 = !DILocation(line: 277, column: 34, scope: !5325)
!5336 = !DILocalVariable(name: "viewed", arg: 5, scope: !5325, file: !3, line: 277, type: !342)
!5337 = !DILocation(line: 277, column: 46, scope: !5325)
!5338 = !DILocalVariable(name: "org", scope: !5325, file: !3, line: 279, type: !131)
!5339 = !DILocation(line: 279, column: 7, scope: !5325)
!5340 = !DILocalVariable(name: "col", scope: !5325, file: !3, line: 280, type: !7)
!5341 = !DILocation(line: 280, column: 15, scope: !5325)
!5342 = !DILocalVariable(name: "maxcol", scope: !5325, file: !3, line: 280, type: !7)
!5343 = !DILocation(line: 280, column: 20, scope: !5325)
!5344 = !DILocation(line: 280, column: 29, scope: !5325)
!5345 = !DILocation(line: 280, column: 33, scope: !5325)
!5346 = !DILocation(line: 282, column: 19, scope: !5325)
!5347 = !DILocation(line: 282, column: 23, scope: !5325)
!5348 = !DILocation(line: 282, column: 28, scope: !5325)
!5349 = !DILocation(line: 282, column: 8, scope: !5325)
!5350 = !DILocation(line: 282, column: 6, scope: !5325)
!5351 = !DILocation(line: 283, column: 8, scope: !5325)
!5352 = !DILocation(line: 283, column: 14, scope: !5325)
!5353 = !DILocation(line: 283, column: 12, scope: !5325)
!5354 = !DILocation(line: 283, column: 6, scope: !5325)
!5355 = !DILocation(line: 284, column: 9, scope: !5325)
!5356 = !DILocation(line: 284, column: 18, scope: !5325)
!5357 = !DILocation(line: 284, column: 16, scope: !5325)
!5358 = !DILocation(line: 284, column: 6, scope: !5325)
!5359 = !DILocation(line: 286, column: 2, scope: !5325)
!5360 = !DILocation(line: 286, column: 14, scope: !5325)
!5361 = !DILocation(line: 286, column: 17, scope: !5325)
!5362 = !DILocation(line: 287, column: 31, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 286, column: 22)
!5364 = !DILocation(line: 287, column: 38, scope: !5363)
!5365 = !DILocation(line: 287, column: 17, scope: !5363)
!5366 = !DILocation(line: 287, column: 42, scope: !5363)
!5367 = !DILocation(line: 287, column: 16, scope: !5363)
!5368 = !DILocation(line: 287, column: 11, scope: !5363)
!5369 = !DILocation(line: 287, column: 14, scope: !5363)
!5370 = !DILocation(line: 288, column: 7, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 288, column: 7)
!5372 = !DILocation(line: 288, column: 16, scope: !5371)
!5373 = !DILocation(line: 288, column: 13, scope: !5371)
!5374 = !DILocation(line: 288, column: 7, scope: !5363)
!5375 = !DILocation(line: 289, column: 21, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 288, column: 24)
!5377 = !DILocation(line: 289, column: 25, scope: !5376)
!5378 = !DILocation(line: 289, column: 30, scope: !5376)
!5379 = !DILocation(line: 289, column: 10, scope: !5376)
!5380 = !DILocation(line: 289, column: 8, scope: !5376)
!5381 = !DILocation(line: 290, column: 8, scope: !5376)
!5382 = !DILocation(line: 291, column: 11, scope: !5376)
!5383 = !DILocation(line: 291, column: 8, scope: !5376)
!5384 = !DILocation(line: 292, column: 3, scope: !5376)
!5385 = distinct !{!5385, !5359, !5386}
!5386 = !DILocation(line: 293, column: 2, scope: !5325)
!5387 = !DILocation(line: 294, column: 1, scope: !5325)
!5388 = distinct !DISubprogram(name: "vcs_read_buf", scope: !3, file: !3, line: 296, type: !5389, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!7, !4266, !126, !7, !7, !342, !3770}
!5391 = !DILocalVariable(name: "vc", arg: 1, scope: !5388, file: !3, line: 296, type: !4266)
!5392 = !DILocation(line: 296, column: 56, scope: !5388)
!5393 = !DILocalVariable(name: "con_buf", arg: 2, scope: !5388, file: !3, line: 296, type: !126)
!5394 = !DILocation(line: 296, column: 66, scope: !5388)
!5395 = !DILocalVariable(name: "pos", arg: 3, scope: !5388, file: !3, line: 297, type: !7)
!5396 = !DILocation(line: 297, column: 16, scope: !5388)
!5397 = !DILocalVariable(name: "count", arg: 4, scope: !5388, file: !3, line: 297, type: !7)
!5398 = !DILocation(line: 297, column: 34, scope: !5388)
!5399 = !DILocalVariable(name: "viewed", arg: 5, scope: !5388, file: !3, line: 297, type: !342)
!5400 = !DILocation(line: 297, column: 46, scope: !5388)
!5401 = !DILocalVariable(name: "skip", arg: 6, scope: !5388, file: !3, line: 298, type: !3770)
!5402 = !DILocation(line: 298, column: 17, scope: !5388)
!5403 = !DILocalVariable(name: "org", scope: !5388, file: !3, line: 300, type: !131)
!5404 = !DILocation(line: 300, column: 7, scope: !5388)
!5405 = !DILocalVariable(name: "con_buf16", scope: !5388, file: !3, line: 300, type: !131)
!5406 = !DILocation(line: 300, column: 13, scope: !5388)
!5407 = !DILocalVariable(name: "col", scope: !5388, file: !3, line: 301, type: !7)
!5408 = !DILocation(line: 301, column: 15, scope: !5388)
!5409 = !DILocalVariable(name: "maxcol", scope: !5388, file: !3, line: 301, type: !7)
!5410 = !DILocation(line: 301, column: 20, scope: !5388)
!5411 = !DILocation(line: 301, column: 29, scope: !5388)
!5412 = !DILocation(line: 301, column: 33, scope: !5388)
!5413 = !DILocalVariable(name: "filled", scope: !5388, file: !3, line: 302, type: !7)
!5414 = !DILocation(line: 302, column: 15, scope: !5388)
!5415 = !DILocation(line: 302, column: 24, scope: !5388)
!5416 = !DILocation(line: 304, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 304, column: 6)
!5418 = !DILocation(line: 304, column: 10, scope: !5417)
!5419 = !DILocation(line: 304, column: 6, scope: !5388)
!5420 = !DILocalVariable(name: "__UNIQUE_ID___x228", scope: !5421, file: !3, line: 306, type: !3914)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 306, column: 16)
!5422 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 304, column: 25)
!5423 = !DILocation(line: 306, column: 16, scope: !5421)
!5424 = !DILocalVariable(name: "__UNIQUE_ID___y229", scope: !5421, file: !3, line: 306, type: !7)
!5425 = !DILocation(line: 306, column: 16, scope: !5422)
!5426 = !DILocation(line: 306, column: 3, scope: !5422)
!5427 = !DILocation(line: 306, column: 14, scope: !5422)
!5428 = !DILocalVariable(name: "__UNIQUE_ID___x230", scope: !5429, file: !3, line: 307, type: !3914)
!5429 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 307, column: 16)
!5430 = !DILocation(line: 307, column: 16, scope: !5429)
!5431 = !DILocalVariable(name: "__UNIQUE_ID___y231", scope: !5429, file: !3, line: 307, type: !7)
!5432 = !DILocation(line: 307, column: 16, scope: !5422)
!5433 = !DILocation(line: 307, column: 3, scope: !5422)
!5434 = !DILocation(line: 307, column: 14, scope: !5422)
!5435 = !DILocation(line: 308, column: 13, scope: !5422)
!5436 = !DILocation(line: 308, column: 17, scope: !5422)
!5437 = !DILocation(line: 308, column: 25, scope: !5422)
!5438 = !DILocation(line: 308, column: 3, scope: !5422)
!5439 = !DILocation(line: 310, column: 12, scope: !5422)
!5440 = !DILocation(line: 310, column: 4, scope: !5422)
!5441 = !DILocation(line: 310, column: 9, scope: !5422)
!5442 = !DILocation(line: 311, column: 12, scope: !5422)
!5443 = !DILocation(line: 311, column: 9, scope: !5422)
!5444 = !DILocation(line: 312, column: 7, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 312, column: 7)
!5446 = !DILocation(line: 312, column: 13, scope: !5445)
!5447 = !DILocation(line: 312, column: 7, scope: !5422)
!5448 = !DILocation(line: 313, column: 10, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 312, column: 29)
!5450 = !DILocation(line: 314, column: 13, scope: !5449)
!5451 = !DILocation(line: 314, column: 21, scope: !5449)
!5452 = !DILocation(line: 314, column: 19, scope: !5449)
!5453 = !DILocation(line: 314, column: 11, scope: !5449)
!5454 = !DILocation(line: 315, column: 3, scope: !5449)
!5455 = !DILocalVariable(name: "__UNIQUE_ID___x232", scope: !5456, file: !3, line: 318, type: !7)
!5456 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 318, column: 12)
!5457 = !DILocation(line: 318, column: 12, scope: !5456)
!5458 = !DILocalVariable(name: "__UNIQUE_ID___y233", scope: !5456, file: !3, line: 318, type: !7)
!5459 = !DILocation(line: 318, column: 9, scope: !5422)
!5460 = !DILocation(line: 319, column: 7, scope: !5422)
!5461 = !DILocation(line: 320, column: 11, scope: !5422)
!5462 = !DILocation(line: 322, column: 2, scope: !5422)
!5463 = !DILocation(line: 322, column: 13, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 322, column: 13)
!5465 = !DILocation(line: 322, column: 17, scope: !5464)
!5466 = !DILocation(line: 322, column: 13, scope: !5417)
!5467 = !DILocation(line: 327, column: 5, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 322, column: 22)
!5469 = !DILocation(line: 327, column: 10, scope: !5468)
!5470 = !DILocation(line: 328, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 328, column: 7)
!5472 = !DILocation(line: 328, column: 13, scope: !5471)
!5473 = !DILocation(line: 328, column: 7, scope: !5468)
!5474 = !DILocation(line: 329, column: 9, scope: !5471)
!5475 = !DILocation(line: 329, column: 4, scope: !5471)
!5476 = !DILocation(line: 331, column: 10, scope: !5471)
!5477 = !DILocation(line: 332, column: 2, scope: !5468)
!5478 = !DILocation(line: 334, column: 7, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 334, column: 6)
!5480 = !DILocation(line: 334, column: 6, scope: !5388)
!5481 = !DILocation(line: 335, column: 10, scope: !5479)
!5482 = !DILocation(line: 335, column: 3, scope: !5479)
!5483 = !DILocation(line: 337, column: 6, scope: !5388)
!5484 = !DILocation(line: 338, column: 6, scope: !5388)
!5485 = !DILocation(line: 339, column: 8, scope: !5388)
!5486 = !DILocation(line: 339, column: 14, scope: !5388)
!5487 = !DILocation(line: 339, column: 12, scope: !5388)
!5488 = !DILocation(line: 339, column: 6, scope: !5388)
!5489 = !DILocation(line: 341, column: 19, scope: !5388)
!5490 = !DILocation(line: 341, column: 23, scope: !5388)
!5491 = !DILocation(line: 341, column: 28, scope: !5388)
!5492 = !DILocation(line: 341, column: 8, scope: !5388)
!5493 = !DILocation(line: 341, column: 6, scope: !5388)
!5494 = !DILocation(line: 342, column: 9, scope: !5388)
!5495 = !DILocation(line: 342, column: 18, scope: !5388)
!5496 = !DILocation(line: 342, column: 16, scope: !5388)
!5497 = !DILocation(line: 342, column: 6, scope: !5388)
!5498 = !DILocation(line: 348, column: 11, scope: !5388)
!5499 = !DILocation(line: 348, column: 17, scope: !5388)
!5500 = !DILocation(line: 348, column: 22, scope: !5388)
!5501 = !DILocation(line: 348, column: 8, scope: !5388)
!5502 = !DILocation(line: 349, column: 21, scope: !5388)
!5503 = !DILocation(line: 349, column: 14, scope: !5388)
!5504 = !DILocation(line: 349, column: 12, scope: !5388)
!5505 = !DILocation(line: 351, column: 2, scope: !5388)
!5506 = !DILocation(line: 351, column: 9, scope: !5388)
!5507 = !DILocation(line: 352, column: 32, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 351, column: 16)
!5509 = !DILocation(line: 352, column: 39, scope: !5508)
!5510 = !DILocation(line: 352, column: 18, scope: !5508)
!5511 = !DILocation(line: 352, column: 13, scope: !5508)
!5512 = !DILocation(line: 352, column: 16, scope: !5508)
!5513 = !DILocation(line: 353, column: 8, scope: !5508)
!5514 = !DILocation(line: 354, column: 7, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 354, column: 7)
!5516 = !DILocation(line: 354, column: 16, scope: !5515)
!5517 = !DILocation(line: 354, column: 13, scope: !5515)
!5518 = !DILocation(line: 354, column: 7, scope: !5508)
!5519 = !DILocation(line: 355, column: 21, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 354, column: 24)
!5521 = !DILocation(line: 355, column: 25, scope: !5520)
!5522 = !DILocation(line: 355, column: 30, scope: !5520)
!5523 = !DILocation(line: 355, column: 10, scope: !5520)
!5524 = !DILocation(line: 355, column: 8, scope: !5520)
!5525 = !DILocation(line: 356, column: 8, scope: !5520)
!5526 = !DILocation(line: 357, column: 11, scope: !5520)
!5527 = !DILocation(line: 357, column: 8, scope: !5520)
!5528 = !DILocation(line: 358, column: 3, scope: !5520)
!5529 = distinct !{!5529, !5505, !5530}
!5530 = !DILocation(line: 359, column: 2, scope: !5388)
!5531 = !DILocation(line: 361, column: 9, scope: !5388)
!5532 = !DILocation(line: 361, column: 2, scope: !5388)
!5533 = !DILocation(line: 362, column: 1, scope: !5388)
!5534 = distinct !DISubprogram(name: "copy_overflow", scope: !4376, file: !4376, line: 132, type: !5535, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{null, !125, !130}
!5537 = !DILocalVariable(name: "size", arg: 1, scope: !5534, file: !4376, line: 132, type: !125)
!5538 = !DILocation(line: 132, column: 38, scope: !5534)
!5539 = !DILocalVariable(name: "count", arg: 2, scope: !5534, file: !4376, line: 132, type: !130)
!5540 = !DILocation(line: 132, column: 58, scope: !5534)
!5541 = !DILocalVariable(name: "__ret_warn_on", scope: !5542, file: !4376, line: 134, type: !125)
!5542 = distinct !DILexicalBlock(scope: !5534, file: !4376, line: 134, column: 2)
!5543 = !DILocation(line: 134, column: 2, scope: !5542)
!5544 = !DILocation(line: 134, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5542, file: !4376, line: 134, column: 2)
!5546 = !DILocation(line: 134, column: 2, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5545, file: !4376, line: 134, column: 2)
!5548 = !DILocation(line: 134, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5547, file: !4376, line: 134, column: 2)
!5550 = !DILocation(line: 134, column: 2, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5547, file: !4376, line: 134, column: 2)
!5552 = !DILocation(line: 134, column: 2, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5551, file: !4376, line: 134, column: 2)
!5554 = !DILocation(line: 134, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5551, file: !4376, line: 134, column: 2)
!5556 = !{i32 -2145491570, i32 -2145491541, i32 -2145491495, i32 -2145491437, i32 -2145491383, i32 -2145491329, i32 -2145491274, i32 -2145491243}
!5557 = !DILocation(line: 134, column: 2, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5551, file: !4376, line: 134, column: 2)
!5559 = !{i32 -2145490823, i32 -2145490816, i32 -2145490764, i32 -2145490733, i32 -2145490703}
!5560 = !DILocation(line: 134, column: 2, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5551, file: !4376, line: 134, column: 2)
!5562 = !DILocation(line: 134, column: 2, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5547, file: !4376, line: 134, column: 2)
!5564 = !DILocation(line: 135, column: 1, scope: !5534)
!5565 = distinct !DISubprogram(name: "check_object_size", scope: !4376, file: !4376, line: 122, type: !5566, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{null, !1832, !130, !342}
!5568 = !DILocalVariable(name: "ptr", arg: 1, scope: !5565, file: !4376, line: 122, type: !1832)
!5569 = !DILocation(line: 122, column: 50, scope: !5565)
!5570 = !DILocalVariable(name: "n", arg: 2, scope: !5565, file: !4376, line: 122, type: !130)
!5571 = !DILocation(line: 122, column: 69, scope: !5565)
!5572 = !DILocalVariable(name: "to_user", arg: 3, scope: !5565, file: !4376, line: 123, type: !342)
!5573 = !DILocation(line: 123, column: 15, scope: !5565)
!5574 = !DILocation(line: 124, column: 3, scope: !5565)
!5575 = distinct !DISubprogram(name: "vcs_write_buf", scope: !3, file: !3, line: 518, type: !5576, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!131, !4145, !313, !7, !7, !342, !5578}
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!5579 = !DILocalVariable(name: "p", arg: 1, scope: !5580, file: !5581, line: 64, type: !5584)
!5580 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !5581, file: !5581, line: 64, type: !5582, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5581 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!134, !5584}
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!5586 = !DILocation(line: 64, column: 59, scope: !5580, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 10, column: 9, scope: !5588, inlinedAt: !5592)
!5588 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !5589, file: !5589, line: 8, type: !5590, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5589 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!132, !1832}
!5592 = distinct !DILocation(line: 567, column: 7, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 567, column: 7)
!5594 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 564, column: 20)
!5595 = !DILocalVariable(name: "p", arg: 1, scope: !5588, file: !5589, line: 8, type: !1832)
!5596 = !DILocation(line: 8, column: 59, scope: !5588, inlinedAt: !5592)
!5597 = !DILocalVariable(name: "vc", arg: 1, scope: !5575, file: !3, line: 518, type: !4145)
!5598 = !DILocation(line: 518, column: 43, scope: !5575)
!5599 = !DILocalVariable(name: "con_buf", arg: 2, scope: !5575, file: !3, line: 518, type: !313)
!5600 = !DILocation(line: 518, column: 59, scope: !5575)
!5601 = !DILocalVariable(name: "pos", arg: 3, scope: !5575, file: !3, line: 519, type: !7)
!5602 = !DILocation(line: 519, column: 16, scope: !5575)
!5603 = !DILocalVariable(name: "count", arg: 4, scope: !5575, file: !3, line: 519, type: !7)
!5604 = !DILocation(line: 519, column: 34, scope: !5575)
!5605 = !DILocalVariable(name: "viewed", arg: 5, scope: !5575, file: !3, line: 519, type: !342)
!5606 = !DILocation(line: 519, column: 46, scope: !5575)
!5607 = !DILocalVariable(name: "org0", arg: 6, scope: !5575, file: !3, line: 519, type: !5578)
!5608 = !DILocation(line: 519, column: 60, scope: !5575)
!5609 = !DILocalVariable(name: "org", scope: !5575, file: !3, line: 521, type: !131)
!5610 = !DILocation(line: 521, column: 7, scope: !5575)
!5611 = !DILocalVariable(name: "col", scope: !5575, file: !3, line: 522, type: !7)
!5612 = !DILocation(line: 522, column: 15, scope: !5575)
!5613 = !DILocalVariable(name: "maxcol", scope: !5575, file: !3, line: 522, type: !7)
!5614 = !DILocation(line: 522, column: 20, scope: !5575)
!5615 = !DILocation(line: 522, column: 29, scope: !5575)
!5616 = !DILocation(line: 522, column: 33, scope: !5575)
!5617 = !DILocalVariable(name: "c", scope: !5575, file: !3, line: 523, type: !275)
!5618 = !DILocation(line: 523, column: 16, scope: !5575)
!5619 = !DILocation(line: 526, column: 6, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 526, column: 6)
!5621 = !DILocation(line: 526, column: 10, scope: !5620)
!5622 = !DILocation(line: 526, column: 6, scope: !5575)
!5623 = !DILocalVariable(name: "header", scope: !5624, file: !3, line: 527, type: !5625)
!5624 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 526, column: 25)
!5625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !1056)
!5626 = !DILocation(line: 527, column: 8, scope: !5624)
!5627 = !DILocation(line: 529, column: 13, scope: !5624)
!5628 = !DILocation(line: 529, column: 17, scope: !5624)
!5629 = !DILocation(line: 529, column: 24, scope: !5624)
!5630 = !DILocation(line: 529, column: 3, scope: !5624)
!5631 = !DILocation(line: 530, column: 3, scope: !5624)
!5632 = !DILocation(line: 530, column: 10, scope: !5624)
!5633 = !DILocation(line: 530, column: 14, scope: !5624)
!5634 = !DILocation(line: 530, column: 28, scope: !5624)
!5635 = !DILocation(line: 530, column: 31, scope: !5624)
!5636 = !DILocation(line: 530, column: 37, scope: !5624)
!5637 = !DILocation(line: 0, scope: !5624)
!5638 = !DILocation(line: 531, column: 9, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 530, column: 42)
!5640 = !DILocation(line: 532, column: 28, scope: !5639)
!5641 = !DILocation(line: 532, column: 20, scope: !5639)
!5642 = !DILocation(line: 532, column: 14, scope: !5639)
!5643 = !DILocation(line: 532, column: 4, scope: !5639)
!5644 = !DILocation(line: 532, column: 18, scope: !5639)
!5645 = distinct !{!5645, !5631, !5646}
!5646 = !DILocation(line: 533, column: 3, scope: !5624)
!5647 = !DILocation(line: 534, column: 8, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 534, column: 7)
!5649 = !DILocation(line: 534, column: 7, scope: !5624)
!5650 = !DILocation(line: 535, column: 14, scope: !5648)
!5651 = !DILocation(line: 535, column: 18, scope: !5648)
!5652 = !DILocation(line: 535, column: 25, scope: !5648)
!5653 = !DILocation(line: 535, column: 4, scope: !5648)
!5654 = !DILocation(line: 536, column: 2, scope: !5624)
!5655 = !DILocation(line: 538, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 538, column: 6)
!5657 = !DILocation(line: 538, column: 6, scope: !5575)
!5658 = !DILocation(line: 539, column: 3, scope: !5656)
!5659 = !DILocation(line: 541, column: 6, scope: !5575)
!5660 = !DILocation(line: 542, column: 9, scope: !5575)
!5661 = !DILocation(line: 542, column: 12, scope: !5575)
!5662 = !DILocation(line: 542, column: 18, scope: !5575)
!5663 = !DILocation(line: 542, column: 16, scope: !5575)
!5664 = !DILocation(line: 542, column: 6, scope: !5575)
!5665 = !DILocation(line: 544, column: 27, scope: !5575)
!5666 = !DILocation(line: 544, column: 31, scope: !5575)
!5667 = !DILocation(line: 544, column: 34, scope: !5575)
!5668 = !DILocation(line: 544, column: 38, scope: !5575)
!5669 = !DILocation(line: 544, column: 16, scope: !5575)
!5670 = !DILocation(line: 544, column: 14, scope: !5575)
!5671 = !DILocation(line: 544, column: 3, scope: !5575)
!5672 = !DILocation(line: 544, column: 8, scope: !5575)
!5673 = !DILocation(line: 547, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 547, column: 6)
!5675 = !DILocation(line: 547, column: 10, scope: !5674)
!5676 = !DILocation(line: 547, column: 6, scope: !5575)
!5677 = !DILocation(line: 548, column: 8, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 547, column: 15)
!5679 = !DILocation(line: 549, column: 15, scope: !5678)
!5680 = !DILocation(line: 549, column: 7, scope: !5678)
!5681 = !DILocation(line: 549, column: 5, scope: !5678)
!5682 = !DILocation(line: 550, column: 18, scope: !5678)
!5683 = !DILocation(line: 550, column: 38, scope: !5678)
!5684 = !DILocation(line: 550, column: 55, scope: !5678)
!5685 = !DILocation(line: 550, column: 59, scope: !5678)
!5686 = !DILocation(line: 550, column: 41, scope: !5678)
!5687 = !DILocation(line: 550, column: 22, scope: !5678)
!5688 = !DILocation(line: 551, column: 5, scope: !5678)
!5689 = !DILocation(line: 550, column: 3, scope: !5678)
!5690 = !DILocation(line: 552, column: 6, scope: !5678)
!5691 = !DILocation(line: 553, column: 6, scope: !5678)
!5692 = !DILocation(line: 554, column: 7, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 554, column: 7)
!5694 = !DILocation(line: 554, column: 16, scope: !5693)
!5695 = !DILocation(line: 554, column: 13, scope: !5693)
!5696 = !DILocation(line: 554, column: 7, scope: !5678)
!5697 = !DILocation(line: 555, column: 21, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 554, column: 24)
!5699 = !DILocation(line: 555, column: 25, scope: !5698)
!5700 = !DILocation(line: 555, column: 28, scope: !5698)
!5701 = !DILocation(line: 555, column: 32, scope: !5698)
!5702 = !DILocation(line: 555, column: 10, scope: !5698)
!5703 = !DILocation(line: 555, column: 8, scope: !5698)
!5704 = !DILocation(line: 556, column: 8, scope: !5698)
!5705 = !DILocation(line: 557, column: 3, scope: !5698)
!5706 = !DILocation(line: 558, column: 2, scope: !5678)
!5707 = !DILocation(line: 560, column: 6, scope: !5575)
!5708 = !DILocation(line: 561, column: 9, scope: !5575)
!5709 = !DILocation(line: 561, column: 18, scope: !5575)
!5710 = !DILocation(line: 561, column: 16, scope: !5575)
!5711 = !DILocation(line: 561, column: 6, scope: !5575)
!5712 = !DILocation(line: 564, column: 2, scope: !5575)
!5713 = !DILocation(line: 564, column: 9, scope: !5575)
!5714 = !DILocation(line: 564, column: 15, scope: !5575)
!5715 = !DILocalVariable(name: "w", scope: !5594, file: !3, line: 565, type: !136)
!5716 = !DILocation(line: 565, column: 18, scope: !5594)
!5717 = !DILocation(line: 567, column: 7, scope: !5593)
!5718 = !DILocation(line: 10, column: 32, scope: !5588, inlinedAt: !5592)
!5719 = !DILocation(line: 10, column: 22, scope: !5588, inlinedAt: !5592)
!5720 = !DILocation(line: 66, column: 25, scope: !5580, inlinedAt: !5587)
!5721 = !DILocation(line: 66, column: 24, scope: !5580, inlinedAt: !5587)
!5722 = !DILocation(line: 567, column: 7, scope: !5594)
!5723 = !DILocation(line: 567, column: 5, scope: !5594)
!5724 = !DILocation(line: 568, column: 18, scope: !5594)
!5725 = !DILocation(line: 568, column: 22, scope: !5594)
!5726 = !DILocation(line: 568, column: 28, scope: !5594)
!5727 = !DILocation(line: 568, column: 3, scope: !5594)
!5728 = !DILocation(line: 569, column: 11, scope: !5594)
!5729 = !DILocation(line: 570, column: 9, scope: !5594)
!5730 = !DILocation(line: 571, column: 7, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 571, column: 7)
!5732 = !DILocation(line: 571, column: 16, scope: !5731)
!5733 = !DILocation(line: 571, column: 13, scope: !5731)
!5734 = !DILocation(line: 571, column: 7, scope: !5594)
!5735 = !DILocation(line: 572, column: 21, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 571, column: 24)
!5737 = !DILocation(line: 572, column: 25, scope: !5736)
!5738 = !DILocation(line: 572, column: 30, scope: !5736)
!5739 = !DILocation(line: 572, column: 10, scope: !5736)
!5740 = !DILocation(line: 572, column: 8, scope: !5736)
!5741 = !DILocation(line: 573, column: 8, scope: !5736)
!5742 = !DILocation(line: 574, column: 11, scope: !5736)
!5743 = !DILocation(line: 574, column: 8, scope: !5736)
!5744 = !DILocation(line: 575, column: 3, scope: !5736)
!5745 = distinct !{!5745, !5712, !5746}
!5746 = !DILocation(line: 576, column: 2, scope: !5575)
!5747 = !DILocation(line: 578, column: 7, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 578, column: 6)
!5749 = !DILocation(line: 578, column: 6, scope: !5575)
!5750 = !DILocation(line: 579, column: 10, scope: !5748)
!5751 = !DILocation(line: 579, column: 3, scope: !5748)
!5752 = !DILocation(line: 582, column: 14, scope: !5575)
!5753 = !DILocation(line: 582, column: 6, scope: !5575)
!5754 = !DILocation(line: 582, column: 4, scope: !5575)
!5755 = !DILocation(line: 583, column: 17, scope: !5575)
!5756 = !DILocation(line: 583, column: 51, scope: !5575)
!5757 = !DILocation(line: 583, column: 55, scope: !5575)
!5758 = !DILocation(line: 583, column: 37, scope: !5575)
!5759 = !DILocation(line: 583, column: 60, scope: !5575)
!5760 = !DILocation(line: 583, column: 66, scope: !5575)
!5761 = !DILocation(line: 583, column: 21, scope: !5575)
!5762 = !DILocation(line: 584, column: 5, scope: !5575)
!5763 = !DILocation(line: 583, column: 2, scope: !5575)
!5764 = !DILocation(line: 586, column: 9, scope: !5575)
!5765 = !DILocation(line: 586, column: 2, scope: !5575)
!5766 = !DILocation(line: 587, column: 1, scope: !5575)
!5767 = distinct !DISubprogram(name: "vcs_write_buf_noattr", scope: !3, file: !3, line: 478, type: !5576, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5768 = !DILocalVariable(name: "vc", arg: 1, scope: !5767, file: !3, line: 478, type: !4145)
!5769 = !DILocation(line: 478, column: 50, scope: !5767)
!5770 = !DILocalVariable(name: "con_buf", arg: 2, scope: !5767, file: !3, line: 478, type: !313)
!5771 = !DILocation(line: 478, column: 66, scope: !5767)
!5772 = !DILocalVariable(name: "pos", arg: 3, scope: !5767, file: !3, line: 479, type: !7)
!5773 = !DILocation(line: 479, column: 16, scope: !5767)
!5774 = !DILocalVariable(name: "count", arg: 4, scope: !5767, file: !3, line: 479, type: !7)
!5775 = !DILocation(line: 479, column: 34, scope: !5767)
!5776 = !DILocalVariable(name: "viewed", arg: 5, scope: !5767, file: !3, line: 479, type: !342)
!5777 = !DILocation(line: 479, column: 46, scope: !5767)
!5778 = !DILocalVariable(name: "org0", arg: 6, scope: !5767, file: !3, line: 479, type: !5578)
!5779 = !DILocation(line: 479, column: 60, scope: !5767)
!5780 = !DILocalVariable(name: "org", scope: !5767, file: !3, line: 481, type: !131)
!5781 = !DILocation(line: 481, column: 7, scope: !5767)
!5782 = !DILocalVariable(name: "col", scope: !5767, file: !3, line: 482, type: !7)
!5783 = !DILocation(line: 482, column: 15, scope: !5767)
!5784 = !DILocalVariable(name: "maxcol", scope: !5767, file: !3, line: 482, type: !7)
!5785 = !DILocation(line: 482, column: 20, scope: !5767)
!5786 = !DILocation(line: 482, column: 29, scope: !5767)
!5787 = !DILocation(line: 482, column: 33, scope: !5767)
!5788 = !DILocation(line: 484, column: 27, scope: !5767)
!5789 = !DILocation(line: 484, column: 31, scope: !5767)
!5790 = !DILocation(line: 484, column: 36, scope: !5767)
!5791 = !DILocation(line: 484, column: 16, scope: !5767)
!5792 = !DILocation(line: 484, column: 14, scope: !5767)
!5793 = !DILocation(line: 484, column: 3, scope: !5767)
!5794 = !DILocation(line: 484, column: 8, scope: !5767)
!5795 = !DILocation(line: 485, column: 8, scope: !5767)
!5796 = !DILocation(line: 485, column: 14, scope: !5767)
!5797 = !DILocation(line: 485, column: 12, scope: !5767)
!5798 = !DILocation(line: 485, column: 6, scope: !5767)
!5799 = !DILocation(line: 486, column: 9, scope: !5767)
!5800 = !DILocation(line: 486, column: 18, scope: !5767)
!5801 = !DILocation(line: 486, column: 16, scope: !5767)
!5802 = !DILocation(line: 486, column: 6, scope: !5767)
!5803 = !DILocation(line: 488, column: 2, scope: !5767)
!5804 = !DILocation(line: 488, column: 9, scope: !5767)
!5805 = !DILocation(line: 488, column: 15, scope: !5767)
!5806 = !DILocalVariable(name: "c", scope: !5807, file: !3, line: 489, type: !275)
!5807 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 488, column: 20)
!5808 = !DILocation(line: 489, column: 17, scope: !5807)
!5809 = !DILocation(line: 489, column: 29, scope: !5807)
!5810 = !DILocation(line: 489, column: 21, scope: !5807)
!5811 = !DILocation(line: 491, column: 8, scope: !5807)
!5812 = !DILocation(line: 492, column: 18, scope: !5807)
!5813 = !DILocation(line: 493, column: 26, scope: !5807)
!5814 = !DILocation(line: 493, column: 30, scope: !5807)
!5815 = !DILocation(line: 493, column: 12, scope: !5807)
!5816 = !DILocation(line: 493, column: 35, scope: !5807)
!5817 = !DILocation(line: 493, column: 47, scope: !5807)
!5818 = !DILocation(line: 493, column: 45, scope: !5807)
!5819 = !DILocation(line: 493, column: 11, scope: !5807)
!5820 = !DILocation(line: 493, column: 50, scope: !5807)
!5821 = !DILocation(line: 492, column: 3, scope: !5807)
!5822 = !DILocation(line: 494, column: 6, scope: !5807)
!5823 = !DILocation(line: 495, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 495, column: 7)
!5825 = !DILocation(line: 495, column: 16, scope: !5824)
!5826 = !DILocation(line: 495, column: 13, scope: !5824)
!5827 = !DILocation(line: 495, column: 7, scope: !5807)
!5828 = !DILocation(line: 496, column: 21, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 495, column: 24)
!5830 = !DILocation(line: 496, column: 25, scope: !5829)
!5831 = !DILocation(line: 496, column: 30, scope: !5829)
!5832 = !DILocation(line: 496, column: 10, scope: !5829)
!5833 = !DILocation(line: 496, column: 8, scope: !5829)
!5834 = !DILocation(line: 497, column: 8, scope: !5829)
!5835 = !DILocation(line: 498, column: 11, scope: !5829)
!5836 = !DILocation(line: 498, column: 8, scope: !5829)
!5837 = !DILocation(line: 499, column: 3, scope: !5829)
!5838 = distinct !{!5838, !5803, !5839}
!5839 = !DILocation(line: 500, column: 2, scope: !5767)
!5840 = !DILocation(line: 502, column: 9, scope: !5767)
!5841 = !DILocation(line: 502, column: 2, scope: !5767)
!5842 = distinct !DISubprogram(name: "vc_compile_le16", scope: !3, file: !3, line: 509, type: !5843, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!132, !1231, !1231}
!5845 = !DILocalVariable(name: "hi", arg: 1, scope: !5842, file: !3, line: 509, type: !1231)
!5846 = !DILocation(line: 509, column: 38, scope: !5842)
!5847 = !DILocalVariable(name: "lo", arg: 2, scope: !5842, file: !3, line: 509, type: !1231)
!5848 = !DILocation(line: 509, column: 45, scope: !5842)
!5849 = !DILocation(line: 514, column: 10, scope: !5842)
!5850 = !DILocation(line: 514, column: 13, scope: !5842)
!5851 = !DILocation(line: 514, column: 22, scope: !5842)
!5852 = !DILocation(line: 514, column: 20, scope: !5842)
!5853 = !DILocation(line: 514, column: 9, scope: !5842)
!5854 = !DILocation(line: 514, column: 2, scope: !5842)
!5855 = !DILocalVariable(name: "lock", arg: 1, scope: !5856, file: !5857, line: 392, type: !965)
!5856 = distinct !DISubprogram(name: "spin_unlock", scope: !5857, file: !5857, line: 392, type: !5858, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5857 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5858 = !DISubroutineType(types: !5859)
!5859 = !{null, !965}
!5860 = !DILocation(line: 392, column: 53, scope: !5856, inlinedAt: !5861)
!5861 = distinct !DILocation(line: 169, column: 2, scope: !4050)
!5862 = !DILocalVariable(name: "lock", arg: 1, scope: !5863, file: !5857, line: 352, type: !965)
!5863 = distinct !DISubprogram(name: "spin_lock", scope: !5857, file: !5857, line: 352, type: !5858, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5864 = !DILocation(line: 352, column: 51, scope: !5863, inlinedAt: !5865)
!5865 = distinct !DILocation(line: 161, column: 2, scope: !4050)
!5866 = !DILocalVariable(name: "file", arg: 1, scope: !4050, file: !3, line: 126, type: !202)
!5867 = !DILocation(line: 126, column: 32, scope: !4050)
!5868 = !DILocalVariable(name: "poll", scope: !4050, file: !3, line: 128, type: !142)
!5869 = !DILocation(line: 128, column: 24, scope: !4050)
!5870 = !DILocation(line: 128, column: 31, scope: !4050)
!5871 = !DILocation(line: 128, column: 37, scope: !4050)
!5872 = !DILocalVariable(name: "kill", scope: !4050, file: !3, line: 128, type: !142)
!5873 = !DILocation(line: 128, column: 52, scope: !4050)
!5874 = !DILocation(line: 130, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 130, column: 6)
!5876 = !DILocation(line: 130, column: 6, scope: !4050)
!5877 = !DILocation(line: 131, column: 10, scope: !5875)
!5878 = !DILocation(line: 131, column: 3, scope: !5875)
!5879 = !DILocation(line: 133, column: 9, scope: !4050)
!5880 = !DILocation(line: 133, column: 7, scope: !4050)
!5881 = !DILocation(line: 134, column: 7, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 134, column: 6)
!5883 = !DILocation(line: 134, column: 6, scope: !4050)
!5884 = !DILocation(line: 135, column: 3, scope: !5882)
!5885 = !DILocation(line: 136, column: 19, scope: !4050)
!5886 = !DILocation(line: 136, column: 2, scope: !4050)
!5887 = !DILocation(line: 136, column: 8, scope: !4050)
!5888 = !DILocation(line: 136, column: 17, scope: !4050)
!5889 = !DILocation(line: 137, column: 2, scope: !4050)
!5890 = !DILocation(line: 137, column: 2, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 137, column: 2)
!5892 = !DILocation(line: 138, column: 2, scope: !4050)
!5893 = !DILocation(line: 138, column: 8, scope: !4050)
!5894 = !DILocation(line: 138, column: 17, scope: !4050)
!5895 = !DILocation(line: 138, column: 31, scope: !4050)
!5896 = !DILocation(line: 146, column: 2, scope: !4050)
!5897 = !DILocation(line: 146, column: 8, scope: !4050)
!5898 = !DILocation(line: 146, column: 14, scope: !4050)
!5899 = !DILocation(line: 148, column: 28, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 148, column: 6)
!5901 = !DILocation(line: 148, column: 34, scope: !5900)
!5902 = !DILocation(line: 148, column: 6, scope: !5900)
!5903 = !DILocation(line: 148, column: 44, scope: !5900)
!5904 = !DILocation(line: 148, column: 6, scope: !4050)
!5905 = !DILocation(line: 149, column: 9, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 148, column: 50)
!5907 = !DILocation(line: 149, column: 3, scope: !5906)
!5908 = !DILocation(line: 150, column: 3, scope: !5906)
!5909 = !DILocation(line: 161, column: 13, scope: !4050)
!5910 = !DILocation(line: 161, column: 19, scope: !4050)
!5911 = !DILocation(line: 354, column: 2, scope: !5912, inlinedAt: !5865)
!5912 = distinct !DILexicalBlock(scope: !5863, file: !5857, line: 354, column: 2)
!5913 = !{i32 -2145413472}
!5914 = !DILocation(line: 354, column: 2, scope: !5915, inlinedAt: !5865)
!5915 = distinct !DILexicalBlock(scope: !5912, file: !5857, line: 354, column: 2)
!5916 = !DILocation(line: 162, column: 7, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 162, column: 6)
!5918 = !DILocation(line: 162, column: 13, scope: !5917)
!5919 = !DILocation(line: 162, column: 6, scope: !4050)
!5920 = !DILocation(line: 163, column: 24, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 162, column: 27)
!5922 = !DILocation(line: 163, column: 3, scope: !5921)
!5923 = !DILocation(line: 163, column: 9, scope: !5921)
!5924 = !DILocation(line: 163, column: 22, scope: !5921)
!5925 = !DILocation(line: 164, column: 2, scope: !5921)
!5926 = !DILocation(line: 166, column: 10, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 164, column: 9)
!5928 = !DILocation(line: 166, column: 8, scope: !5927)
!5929 = !DILocation(line: 167, column: 10, scope: !5927)
!5930 = !DILocation(line: 167, column: 16, scope: !5927)
!5931 = !DILocation(line: 167, column: 8, scope: !5927)
!5932 = !DILocation(line: 169, column: 15, scope: !4050)
!5933 = !DILocation(line: 169, column: 21, scope: !4050)
!5934 = !DILocation(line: 394, column: 2, scope: !5935, inlinedAt: !5861)
!5935 = distinct !DILexicalBlock(scope: !5856, file: !5857, line: 394, column: 2)
!5936 = !{i32 -2145411111}
!5937 = !DILocation(line: 394, column: 2, scope: !5938, inlinedAt: !5861)
!5938 = distinct !DILexicalBlock(scope: !5935, file: !5857, line: 394, column: 2)
!5939 = !DILocation(line: 170, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 170, column: 6)
!5941 = !DILocation(line: 170, column: 6, scope: !4050)
!5942 = !DILocation(line: 171, column: 22, scope: !5940)
!5943 = !DILocation(line: 171, column: 3, scope: !5940)
!5944 = !DILocation(line: 173, column: 9, scope: !4050)
!5945 = !DILocation(line: 173, column: 2, scope: !4050)
!5946 = !DILocation(line: 174, column: 1, scope: !4050)
!5947 = distinct !DISubprogram(name: "poll_wait", scope: !1965, file: !1965, line: 48, type: !5948, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{null, !202, !1972, !4932}
!5950 = !DILocalVariable(name: "filp", arg: 1, scope: !5947, file: !1965, line: 48, type: !202)
!5951 = !DILocation(line: 48, column: 44, scope: !5947)
!5952 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5947, file: !1965, line: 48, type: !1972)
!5953 = !DILocation(line: 48, column: 70, scope: !5947)
!5954 = !DILocalVariable(name: "p", arg: 3, scope: !5947, file: !1965, line: 48, type: !4932)
!5955 = !DILocation(line: 48, column: 96, scope: !5947)
!5956 = !DILocation(line: 50, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5947, file: !1965, line: 50, column: 6)
!5958 = !DILocation(line: 50, column: 8, scope: !5957)
!5959 = !DILocation(line: 50, column: 11, scope: !5957)
!5960 = !DILocation(line: 50, column: 14, scope: !5957)
!5961 = !DILocation(line: 50, column: 21, scope: !5957)
!5962 = !DILocation(line: 50, column: 24, scope: !5957)
!5963 = !DILocation(line: 50, column: 6, scope: !5947)
!5964 = !DILocation(line: 51, column: 3, scope: !5957)
!5965 = !DILocation(line: 51, column: 6, scope: !5957)
!5966 = !DILocation(line: 51, column: 13, scope: !5957)
!5967 = !DILocation(line: 51, column: 19, scope: !5957)
!5968 = !DILocation(line: 51, column: 33, scope: !5957)
!5969 = !DILocation(line: 52, column: 1, scope: !5947)
!5970 = distinct !DISubprogram(name: "kzalloc", scope: !111, file: !111, line: 662, type: !5971, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!118, !434, !128}
!5973 = !DILocalVariable(name: "s", arg: 1, scope: !5974, file: !111, line: 445, type: !835)
!5974 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !111, file: !111, line: 445, type: !5975, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!118, !835, !128, !434}
!5977 = !DILocation(line: 445, column: 72, scope: !5974, inlinedAt: !5978)
!5978 = distinct !DILocation(line: 552, column: 10, scope: !5979, inlinedAt: !5982)
!5979 = distinct !DILexicalBlock(scope: !5980, file: !111, line: 540, column: 34)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !111, line: 540, column: 6)
!5981 = distinct !DISubprogram(name: "kmalloc", scope: !111, file: !111, line: 538, type: !5971, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5982 = distinct !DILocation(line: 664, column: 9, scope: !5970)
!5983 = !DILocalVariable(name: "flags", arg: 2, scope: !5974, file: !111, line: 446, type: !128)
!5984 = !DILocation(line: 446, column: 9, scope: !5974, inlinedAt: !5978)
!5985 = !DILocalVariable(name: "size", arg: 3, scope: !5974, file: !111, line: 446, type: !434)
!5986 = !DILocation(line: 446, column: 23, scope: !5974, inlinedAt: !5978)
!5987 = !DILocalVariable(name: "ret", scope: !5974, file: !111, line: 448, type: !118)
!5988 = !DILocation(line: 448, column: 8, scope: !5974, inlinedAt: !5978)
!5989 = !DILocalVariable(name: "flags", arg: 1, scope: !5990, file: !111, line: 318, type: !128)
!5990 = distinct !DISubprogram(name: "kmalloc_type", scope: !111, file: !111, line: 318, type: !5991, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!110, !128}
!5993 = !DILocation(line: 318, column: 67, scope: !5990, inlinedAt: !5994)
!5994 = distinct !DILocation(line: 553, column: 20, scope: !5979, inlinedAt: !5982)
!5995 = !DILocalVariable(name: "size", arg: 1, scope: !5996, file: !111, line: 346, type: !434)
!5996 = distinct !DISubprogram(name: "kmalloc_index", scope: !111, file: !111, line: 346, type: !5997, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!7, !434}
!5999 = !DILocation(line: 346, column: 58, scope: !5996, inlinedAt: !6000)
!6000 = distinct !DILocation(line: 547, column: 11, scope: !5979, inlinedAt: !5982)
!6001 = !DILocalVariable(name: "size", arg: 1, scope: !6002, file: !111, line: 472, type: !434)
!6002 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !111, file: !111, line: 472, type: !6003, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!118, !434, !128, !7}
!6005 = !DILocation(line: 472, column: 28, scope: !6002, inlinedAt: !6006)
!6006 = distinct !DILocation(line: 481, column: 9, scope: !6007, inlinedAt: !6008)
!6007 = distinct !DISubprogram(name: "kmalloc_large", scope: !111, file: !111, line: 478, type: !5971, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6008 = distinct !DILocation(line: 545, column: 11, scope: !6009, inlinedAt: !5982)
!6009 = distinct !DILexicalBlock(scope: !5979, file: !111, line: 544, column: 7)
!6010 = !DILocalVariable(name: "flags", arg: 2, scope: !6002, file: !111, line: 472, type: !128)
!6011 = !DILocation(line: 472, column: 40, scope: !6002, inlinedAt: !6006)
!6012 = !DILocalVariable(name: "order", arg: 3, scope: !6002, file: !111, line: 472, type: !7)
!6013 = !DILocation(line: 472, column: 60, scope: !6002, inlinedAt: !6006)
!6014 = !DILocalVariable(name: "size", arg: 1, scope: !6007, file: !111, line: 478, type: !434)
!6015 = !DILocation(line: 478, column: 51, scope: !6007, inlinedAt: !6008)
!6016 = !DILocalVariable(name: "flags", arg: 2, scope: !6007, file: !111, line: 478, type: !128)
!6017 = !DILocation(line: 478, column: 63, scope: !6007, inlinedAt: !6008)
!6018 = !DILocalVariable(name: "order", scope: !6007, file: !111, line: 480, type: !7)
!6019 = !DILocation(line: 480, column: 15, scope: !6007, inlinedAt: !6008)
!6020 = !DILocalVariable(name: "size", arg: 1, scope: !5981, file: !111, line: 538, type: !434)
!6021 = !DILocation(line: 538, column: 45, scope: !5981, inlinedAt: !5982)
!6022 = !DILocalVariable(name: "flags", arg: 2, scope: !5981, file: !111, line: 538, type: !128)
!6023 = !DILocation(line: 538, column: 57, scope: !5981, inlinedAt: !5982)
!6024 = !DILocalVariable(name: "index", scope: !5979, file: !111, line: 542, type: !7)
!6025 = !DILocation(line: 542, column: 16, scope: !5979, inlinedAt: !5982)
!6026 = !DILocalVariable(name: "size", arg: 1, scope: !5970, file: !111, line: 662, type: !434)
!6027 = !DILocation(line: 662, column: 36, scope: !5970)
!6028 = !DILocalVariable(name: "flags", arg: 2, scope: !5970, file: !111, line: 662, type: !128)
!6029 = !DILocation(line: 662, column: 48, scope: !5970)
!6030 = !DILocation(line: 664, column: 17, scope: !5970)
!6031 = !DILocation(line: 664, column: 23, scope: !5970)
!6032 = !DILocation(line: 664, column: 29, scope: !5970)
!6033 = !DILocation(line: 540, column: 27, scope: !5980, inlinedAt: !5982)
!6034 = !DILocation(line: 540, column: 6, scope: !5980, inlinedAt: !5982)
!6035 = !DILocation(line: 540, column: 6, scope: !5981, inlinedAt: !5982)
!6036 = !DILocation(line: 544, column: 7, scope: !6009, inlinedAt: !5982)
!6037 = !DILocation(line: 544, column: 12, scope: !6009, inlinedAt: !5982)
!6038 = !DILocation(line: 544, column: 7, scope: !5979, inlinedAt: !5982)
!6039 = !DILocation(line: 545, column: 25, scope: !6009, inlinedAt: !5982)
!6040 = !DILocation(line: 545, column: 31, scope: !6009, inlinedAt: !5982)
!6041 = !DILocation(line: 480, column: 33, scope: !6007, inlinedAt: !6008)
!6042 = !DILocation(line: 480, column: 23, scope: !6007, inlinedAt: !6008)
!6043 = !DILocation(line: 481, column: 29, scope: !6007, inlinedAt: !6008)
!6044 = !DILocation(line: 481, column: 35, scope: !6007, inlinedAt: !6008)
!6045 = !DILocation(line: 481, column: 42, scope: !6007, inlinedAt: !6008)
!6046 = !DILocation(line: 474, column: 23, scope: !6002, inlinedAt: !6006)
!6047 = !DILocation(line: 474, column: 29, scope: !6002, inlinedAt: !6006)
!6048 = !DILocation(line: 474, column: 36, scope: !6002, inlinedAt: !6006)
!6049 = !DILocation(line: 474, column: 9, scope: !6002, inlinedAt: !6006)
!6050 = !DILocation(line: 545, column: 4, scope: !6009, inlinedAt: !5982)
!6051 = !DILocation(line: 547, column: 25, scope: !5979, inlinedAt: !5982)
!6052 = !DILocation(line: 348, column: 7, scope: !6053, inlinedAt: !6000)
!6053 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 348, column: 6)
!6054 = !DILocation(line: 348, column: 6, scope: !5996, inlinedAt: !6000)
!6055 = !DILocation(line: 349, column: 3, scope: !6053, inlinedAt: !6000)
!6056 = !DILocation(line: 351, column: 6, scope: !6057, inlinedAt: !6000)
!6057 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 351, column: 6)
!6058 = !DILocation(line: 351, column: 11, scope: !6057, inlinedAt: !6000)
!6059 = !DILocation(line: 351, column: 6, scope: !5996, inlinedAt: !6000)
!6060 = !DILocation(line: 352, column: 3, scope: !6057, inlinedAt: !6000)
!6061 = !DILocation(line: 354, column: 32, scope: !6062, inlinedAt: !6000)
!6062 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 354, column: 6)
!6063 = !DILocation(line: 354, column: 37, scope: !6062, inlinedAt: !6000)
!6064 = !DILocation(line: 354, column: 42, scope: !6062, inlinedAt: !6000)
!6065 = !DILocation(line: 354, column: 45, scope: !6062, inlinedAt: !6000)
!6066 = !DILocation(line: 354, column: 50, scope: !6062, inlinedAt: !6000)
!6067 = !DILocation(line: 354, column: 6, scope: !5996, inlinedAt: !6000)
!6068 = !DILocation(line: 355, column: 3, scope: !6062, inlinedAt: !6000)
!6069 = !DILocation(line: 356, column: 32, scope: !6070, inlinedAt: !6000)
!6070 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 356, column: 6)
!6071 = !DILocation(line: 356, column: 37, scope: !6070, inlinedAt: !6000)
!6072 = !DILocation(line: 356, column: 43, scope: !6070, inlinedAt: !6000)
!6073 = !DILocation(line: 356, column: 46, scope: !6070, inlinedAt: !6000)
!6074 = !DILocation(line: 356, column: 51, scope: !6070, inlinedAt: !6000)
!6075 = !DILocation(line: 356, column: 6, scope: !5996, inlinedAt: !6000)
!6076 = !DILocation(line: 357, column: 3, scope: !6070, inlinedAt: !6000)
!6077 = !DILocation(line: 358, column: 6, scope: !6078, inlinedAt: !6000)
!6078 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 358, column: 6)
!6079 = !DILocation(line: 358, column: 11, scope: !6078, inlinedAt: !6000)
!6080 = !DILocation(line: 358, column: 6, scope: !5996, inlinedAt: !6000)
!6081 = !DILocation(line: 358, column: 26, scope: !6078, inlinedAt: !6000)
!6082 = !DILocation(line: 359, column: 6, scope: !6083, inlinedAt: !6000)
!6083 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 359, column: 6)
!6084 = !DILocation(line: 359, column: 11, scope: !6083, inlinedAt: !6000)
!6085 = !DILocation(line: 359, column: 6, scope: !5996, inlinedAt: !6000)
!6086 = !DILocation(line: 359, column: 26, scope: !6083, inlinedAt: !6000)
!6087 = !DILocation(line: 360, column: 6, scope: !6088, inlinedAt: !6000)
!6088 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 360, column: 6)
!6089 = !DILocation(line: 360, column: 11, scope: !6088, inlinedAt: !6000)
!6090 = !DILocation(line: 360, column: 6, scope: !5996, inlinedAt: !6000)
!6091 = !DILocation(line: 360, column: 26, scope: !6088, inlinedAt: !6000)
!6092 = !DILocation(line: 361, column: 6, scope: !6093, inlinedAt: !6000)
!6093 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 361, column: 6)
!6094 = !DILocation(line: 361, column: 11, scope: !6093, inlinedAt: !6000)
!6095 = !DILocation(line: 361, column: 6, scope: !5996, inlinedAt: !6000)
!6096 = !DILocation(line: 361, column: 26, scope: !6093, inlinedAt: !6000)
!6097 = !DILocation(line: 362, column: 6, scope: !6098, inlinedAt: !6000)
!6098 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 362, column: 6)
!6099 = !DILocation(line: 362, column: 11, scope: !6098, inlinedAt: !6000)
!6100 = !DILocation(line: 362, column: 6, scope: !5996, inlinedAt: !6000)
!6101 = !DILocation(line: 362, column: 26, scope: !6098, inlinedAt: !6000)
!6102 = !DILocation(line: 363, column: 6, scope: !6103, inlinedAt: !6000)
!6103 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 363, column: 6)
!6104 = !DILocation(line: 363, column: 11, scope: !6103, inlinedAt: !6000)
!6105 = !DILocation(line: 363, column: 6, scope: !5996, inlinedAt: !6000)
!6106 = !DILocation(line: 363, column: 26, scope: !6103, inlinedAt: !6000)
!6107 = !DILocation(line: 364, column: 6, scope: !6108, inlinedAt: !6000)
!6108 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 364, column: 6)
!6109 = !DILocation(line: 364, column: 11, scope: !6108, inlinedAt: !6000)
!6110 = !DILocation(line: 364, column: 6, scope: !5996, inlinedAt: !6000)
!6111 = !DILocation(line: 364, column: 26, scope: !6108, inlinedAt: !6000)
!6112 = !DILocation(line: 365, column: 6, scope: !6113, inlinedAt: !6000)
!6113 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 365, column: 6)
!6114 = !DILocation(line: 365, column: 11, scope: !6113, inlinedAt: !6000)
!6115 = !DILocation(line: 365, column: 6, scope: !5996, inlinedAt: !6000)
!6116 = !DILocation(line: 365, column: 26, scope: !6113, inlinedAt: !6000)
!6117 = !DILocation(line: 366, column: 6, scope: !6118, inlinedAt: !6000)
!6118 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 366, column: 6)
!6119 = !DILocation(line: 366, column: 11, scope: !6118, inlinedAt: !6000)
!6120 = !DILocation(line: 366, column: 6, scope: !5996, inlinedAt: !6000)
!6121 = !DILocation(line: 366, column: 26, scope: !6118, inlinedAt: !6000)
!6122 = !DILocation(line: 367, column: 6, scope: !6123, inlinedAt: !6000)
!6123 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 367, column: 6)
!6124 = !DILocation(line: 367, column: 11, scope: !6123, inlinedAt: !6000)
!6125 = !DILocation(line: 367, column: 6, scope: !5996, inlinedAt: !6000)
!6126 = !DILocation(line: 367, column: 26, scope: !6123, inlinedAt: !6000)
!6127 = !DILocation(line: 368, column: 6, scope: !6128, inlinedAt: !6000)
!6128 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 368, column: 6)
!6129 = !DILocation(line: 368, column: 11, scope: !6128, inlinedAt: !6000)
!6130 = !DILocation(line: 368, column: 6, scope: !5996, inlinedAt: !6000)
!6131 = !DILocation(line: 368, column: 26, scope: !6128, inlinedAt: !6000)
!6132 = !DILocation(line: 369, column: 6, scope: !6133, inlinedAt: !6000)
!6133 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 369, column: 6)
!6134 = !DILocation(line: 369, column: 11, scope: !6133, inlinedAt: !6000)
!6135 = !DILocation(line: 369, column: 6, scope: !5996, inlinedAt: !6000)
!6136 = !DILocation(line: 369, column: 26, scope: !6133, inlinedAt: !6000)
!6137 = !DILocation(line: 370, column: 6, scope: !6138, inlinedAt: !6000)
!6138 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 370, column: 6)
!6139 = !DILocation(line: 370, column: 11, scope: !6138, inlinedAt: !6000)
!6140 = !DILocation(line: 370, column: 6, scope: !5996, inlinedAt: !6000)
!6141 = !DILocation(line: 370, column: 26, scope: !6138, inlinedAt: !6000)
!6142 = !DILocation(line: 371, column: 6, scope: !6143, inlinedAt: !6000)
!6143 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 371, column: 6)
!6144 = !DILocation(line: 371, column: 11, scope: !6143, inlinedAt: !6000)
!6145 = !DILocation(line: 371, column: 6, scope: !5996, inlinedAt: !6000)
!6146 = !DILocation(line: 371, column: 26, scope: !6143, inlinedAt: !6000)
!6147 = !DILocation(line: 372, column: 6, scope: !6148, inlinedAt: !6000)
!6148 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 372, column: 6)
!6149 = !DILocation(line: 372, column: 11, scope: !6148, inlinedAt: !6000)
!6150 = !DILocation(line: 372, column: 6, scope: !5996, inlinedAt: !6000)
!6151 = !DILocation(line: 372, column: 26, scope: !6148, inlinedAt: !6000)
!6152 = !DILocation(line: 373, column: 6, scope: !6153, inlinedAt: !6000)
!6153 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 373, column: 6)
!6154 = !DILocation(line: 373, column: 11, scope: !6153, inlinedAt: !6000)
!6155 = !DILocation(line: 373, column: 6, scope: !5996, inlinedAt: !6000)
!6156 = !DILocation(line: 373, column: 26, scope: !6153, inlinedAt: !6000)
!6157 = !DILocation(line: 374, column: 6, scope: !6158, inlinedAt: !6000)
!6158 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 374, column: 6)
!6159 = !DILocation(line: 374, column: 11, scope: !6158, inlinedAt: !6000)
!6160 = !DILocation(line: 374, column: 6, scope: !5996, inlinedAt: !6000)
!6161 = !DILocation(line: 374, column: 26, scope: !6158, inlinedAt: !6000)
!6162 = !DILocation(line: 375, column: 6, scope: !6163, inlinedAt: !6000)
!6163 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 375, column: 6)
!6164 = !DILocation(line: 375, column: 11, scope: !6163, inlinedAt: !6000)
!6165 = !DILocation(line: 375, column: 6, scope: !5996, inlinedAt: !6000)
!6166 = !DILocation(line: 375, column: 27, scope: !6163, inlinedAt: !6000)
!6167 = !DILocation(line: 376, column: 6, scope: !6168, inlinedAt: !6000)
!6168 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 376, column: 6)
!6169 = !DILocation(line: 376, column: 11, scope: !6168, inlinedAt: !6000)
!6170 = !DILocation(line: 376, column: 6, scope: !5996, inlinedAt: !6000)
!6171 = !DILocation(line: 376, column: 32, scope: !6168, inlinedAt: !6000)
!6172 = !DILocation(line: 377, column: 6, scope: !6173, inlinedAt: !6000)
!6173 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 377, column: 6)
!6174 = !DILocation(line: 377, column: 11, scope: !6173, inlinedAt: !6000)
!6175 = !DILocation(line: 377, column: 6, scope: !5996, inlinedAt: !6000)
!6176 = !DILocation(line: 377, column: 32, scope: !6173, inlinedAt: !6000)
!6177 = !DILocation(line: 378, column: 6, scope: !6178, inlinedAt: !6000)
!6178 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 378, column: 6)
!6179 = !DILocation(line: 378, column: 11, scope: !6178, inlinedAt: !6000)
!6180 = !DILocation(line: 378, column: 6, scope: !5996, inlinedAt: !6000)
!6181 = !DILocation(line: 378, column: 32, scope: !6178, inlinedAt: !6000)
!6182 = !DILocation(line: 379, column: 6, scope: !6183, inlinedAt: !6000)
!6183 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 379, column: 6)
!6184 = !DILocation(line: 379, column: 11, scope: !6183, inlinedAt: !6000)
!6185 = !DILocation(line: 379, column: 6, scope: !5996, inlinedAt: !6000)
!6186 = !DILocation(line: 379, column: 33, scope: !6183, inlinedAt: !6000)
!6187 = !DILocation(line: 380, column: 6, scope: !6188, inlinedAt: !6000)
!6188 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 380, column: 6)
!6189 = !DILocation(line: 380, column: 11, scope: !6188, inlinedAt: !6000)
!6190 = !DILocation(line: 380, column: 6, scope: !5996, inlinedAt: !6000)
!6191 = !DILocation(line: 380, column: 33, scope: !6188, inlinedAt: !6000)
!6192 = !DILocation(line: 381, column: 6, scope: !6193, inlinedAt: !6000)
!6193 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 381, column: 6)
!6194 = !DILocation(line: 381, column: 11, scope: !6193, inlinedAt: !6000)
!6195 = !DILocation(line: 381, column: 6, scope: !5996, inlinedAt: !6000)
!6196 = !DILocation(line: 381, column: 33, scope: !6193, inlinedAt: !6000)
!6197 = !DILocation(line: 382, column: 2, scope: !6198, inlinedAt: !6000)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !111, line: 382, column: 2)
!6199 = distinct !DILexicalBlock(scope: !5996, file: !111, line: 382, column: 2)
!6200 = !{i32 -2142143224, i32 -2142143195, i32 -2142143149, i32 -2142143091, i32 -2142143037, i32 -2142142983, i32 -2142142928, i32 -2142142897}
!6201 = !DILocation(line: 382, column: 2, scope: !6202, inlinedAt: !6000)
!6202 = distinct !DILexicalBlock(scope: !6203, file: !111, line: 382, column: 2)
!6203 = distinct !DILexicalBlock(scope: !6199, file: !111, line: 382, column: 2)
!6204 = !{i32 -2142142454, i32 -2142142447, i32 -2142142393, i32 -2142142362, i32 -2142142332}
!6205 = !DILocation(line: 382, column: 2, scope: !6203, inlinedAt: !6000)
!6206 = !DILocation(line: 386, column: 1, scope: !5996, inlinedAt: !6000)
!6207 = !DILocation(line: 547, column: 9, scope: !5979, inlinedAt: !5982)
!6208 = !DILocation(line: 549, column: 8, scope: !6209, inlinedAt: !5982)
!6209 = distinct !DILexicalBlock(scope: !5979, file: !111, line: 549, column: 7)
!6210 = !DILocation(line: 549, column: 7, scope: !5979, inlinedAt: !5982)
!6211 = !DILocation(line: 550, column: 4, scope: !6209, inlinedAt: !5982)
!6212 = !DILocation(line: 553, column: 33, scope: !5979, inlinedAt: !5982)
!6213 = !DILocation(line: 325, column: 6, scope: !6214, inlinedAt: !5994)
!6214 = distinct !DILexicalBlock(scope: !5990, file: !111, line: 325, column: 6)
!6215 = !DILocation(line: 325, column: 6, scope: !5990, inlinedAt: !5994)
!6216 = !DILocation(line: 326, column: 3, scope: !6214, inlinedAt: !5994)
!6217 = !DILocation(line: 332, column: 9, scope: !5990, inlinedAt: !5994)
!6218 = !DILocation(line: 332, column: 15, scope: !5990, inlinedAt: !5994)
!6219 = !DILocation(line: 332, column: 2, scope: !5990, inlinedAt: !5994)
!6220 = !DILocation(line: 336, column: 1, scope: !5990, inlinedAt: !5994)
!6221 = !DILocation(line: 553, column: 5, scope: !5979, inlinedAt: !5982)
!6222 = !DILocation(line: 553, column: 41, scope: !5979, inlinedAt: !5982)
!6223 = !DILocation(line: 554, column: 5, scope: !5979, inlinedAt: !5982)
!6224 = !DILocation(line: 554, column: 12, scope: !5979, inlinedAt: !5982)
!6225 = !DILocation(line: 448, column: 31, scope: !5974, inlinedAt: !5978)
!6226 = !DILocation(line: 448, column: 34, scope: !5974, inlinedAt: !5978)
!6227 = !DILocation(line: 448, column: 14, scope: !5974, inlinedAt: !5978)
!6228 = !DILocation(line: 450, column: 22, scope: !5974, inlinedAt: !5978)
!6229 = !DILocation(line: 450, column: 25, scope: !5974, inlinedAt: !5978)
!6230 = !DILocation(line: 450, column: 30, scope: !5974, inlinedAt: !5978)
!6231 = !DILocation(line: 450, column: 36, scope: !5974, inlinedAt: !5978)
!6232 = !DILocation(line: 450, column: 8, scope: !5974, inlinedAt: !5978)
!6233 = !DILocation(line: 450, column: 6, scope: !5974, inlinedAt: !5978)
!6234 = !DILocation(line: 451, column: 9, scope: !5974, inlinedAt: !5978)
!6235 = !DILocation(line: 552, column: 3, scope: !5979, inlinedAt: !5982)
!6236 = !DILocation(line: 557, column: 19, scope: !5981, inlinedAt: !5982)
!6237 = !DILocation(line: 557, column: 25, scope: !5981, inlinedAt: !5982)
!6238 = !DILocation(line: 557, column: 9, scope: !5981, inlinedAt: !5982)
!6239 = !DILocation(line: 557, column: 2, scope: !5981, inlinedAt: !5982)
!6240 = !DILocation(line: 558, column: 1, scope: !5981, inlinedAt: !5982)
!6241 = !DILocation(line: 664, column: 2, scope: !5970)
!6242 = distinct !DISubprogram(name: "vcs_notifier", scope: !3, file: !3, line: 85, type: !152, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6243 = !DILocalVariable(name: "nb", arg: 1, scope: !6242, file: !3, line: 85, type: !154)
!6244 = !DILocation(line: 85, column: 37, scope: !6242)
!6245 = !DILocalVariable(name: "code", arg: 2, scope: !6242, file: !3, line: 85, type: !130)
!6246 = !DILocation(line: 85, column: 55, scope: !6242)
!6247 = !DILocalVariable(name: "_param", arg: 3, scope: !6242, file: !3, line: 85, type: !118)
!6248 = !DILocation(line: 85, column: 67, scope: !6242)
!6249 = !DILocalVariable(name: "param", scope: !6242, file: !3, line: 87, type: !6250)
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_notifier_param", file: !6252, line: 151, size: 128, elements: !6253)
!6252 = !DIFile(filename: "./include/linux/vt_kern.h", directory: "/home/lizy2001/genbc/linux")
!6253 = !{!6254, !6255}
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !6251, file: !6252, line: 152, baseType: !4145, size: 64)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !6251, file: !6252, line: 153, baseType: !7, size: 32, offset: 64)
!6256 = !DILocation(line: 87, column: 28, scope: !6242)
!6257 = !DILocation(line: 87, column: 36, scope: !6242)
!6258 = !DILocalVariable(name: "vc", scope: !6242, file: !3, line: 88, type: !4145)
!6259 = !DILocation(line: 88, column: 18, scope: !6242)
!6260 = !DILocation(line: 88, column: 23, scope: !6242)
!6261 = !DILocation(line: 88, column: 30, scope: !6242)
!6262 = !DILocalVariable(name: "poll", scope: !6242, file: !3, line: 89, type: !142)
!6263 = !DILocation(line: 89, column: 24, scope: !6242)
!6264 = !DILocalVariable(name: "__mptr", scope: !6265, file: !3, line: 90, type: !118)
!6265 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 90, column: 3)
!6266 = !DILocation(line: 90, column: 3, scope: !6265)
!6267 = !DILocation(line: 90, column: 3, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 90, column: 3)
!6269 = !DILocalVariable(name: "currcons", scope: !6242, file: !3, line: 91, type: !125)
!6270 = !DILocation(line: 91, column: 6, scope: !6242)
!6271 = !DILocation(line: 91, column: 17, scope: !6242)
!6272 = !DILocation(line: 91, column: 23, scope: !6242)
!6273 = !DILocalVariable(name: "fa_band", scope: !6242, file: !3, line: 92, type: !125)
!6274 = !DILocation(line: 92, column: 6, scope: !6242)
!6275 = !DILocation(line: 94, column: 10, scope: !6242)
!6276 = !DILocation(line: 94, column: 2, scope: !6242)
!6277 = !DILocation(line: 96, column: 11, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 94, column: 16)
!6279 = !DILocation(line: 97, column: 3, scope: !6278)
!6280 = !DILocation(line: 99, column: 11, scope: !6278)
!6281 = !DILocation(line: 100, column: 3, scope: !6278)
!6282 = !DILocation(line: 102, column: 3, scope: !6278)
!6283 = !DILocation(line: 105, column: 6, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 105, column: 6)
!6285 = !DILocation(line: 105, column: 15, scope: !6284)
!6286 = !DILocation(line: 105, column: 6, scope: !6242)
!6287 = !DILocation(line: 106, column: 14, scope: !6284)
!6288 = !DILocation(line: 106, column: 12, scope: !6284)
!6289 = !DILocation(line: 106, column: 3, scope: !6284)
!6290 = !DILocation(line: 108, column: 11, scope: !6284)
!6291 = !DILocation(line: 109, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 109, column: 6)
!6293 = !DILocation(line: 109, column: 18, scope: !6292)
!6294 = !DILocation(line: 109, column: 22, scope: !6292)
!6295 = !DILocation(line: 109, column: 15, scope: !6292)
!6296 = !DILocation(line: 109, column: 6, scope: !6242)
!6297 = !DILocation(line: 110, column: 3, scope: !6292)
!6298 = !DILocation(line: 112, column: 16, scope: !6242)
!6299 = !DILocation(line: 112, column: 2, scope: !6242)
!6300 = !DILocation(line: 112, column: 8, scope: !6242)
!6301 = !DILocation(line: 112, column: 14, scope: !6242)
!6302 = !DILocation(line: 113, column: 2, scope: !6242)
!6303 = !DILocation(line: 114, column: 15, scope: !6242)
!6304 = !DILocation(line: 114, column: 21, scope: !6242)
!6305 = !DILocation(line: 114, column: 36, scope: !6242)
!6306 = !DILocation(line: 114, column: 2, scope: !6242)
!6307 = !DILocation(line: 115, column: 2, scope: !6242)
!6308 = !DILocation(line: 116, column: 1, scope: !6242)
!6309 = distinct !DISubprogram(name: "vcs_poll_data_free", scope: !3, file: !3, line: 119, type: !6310, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{null, !142}
!6312 = !DILocalVariable(name: "poll", arg: 1, scope: !6309, file: !3, line: 119, type: !142)
!6313 = !DILocation(line: 119, column: 42, scope: !6309)
!6314 = !DILocation(line: 121, column: 26, scope: !6309)
!6315 = !DILocation(line: 121, column: 32, scope: !6309)
!6316 = !DILocation(line: 121, column: 2, scope: !6309)
!6317 = !DILocation(line: 122, column: 8, scope: !6309)
!6318 = !DILocation(line: 122, column: 2, scope: !6309)
!6319 = !DILocation(line: 123, column: 1, scope: !6309)
!6320 = distinct !DISubprogram(name: "get_order", scope: !6321, file: !6321, line: 29, type: !6322, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6321 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!125, !130}
!6324 = !DILocalVariable(name: "x", arg: 1, scope: !6325, file: !6326, line: 366, type: !270)
!6325 = distinct !DISubprogram(name: "fls64", scope: !6326, file: !6326, line: 366, type: !6327, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6326 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!125, !270}
!6329 = !DILocation(line: 366, column: 40, scope: !6325, inlinedAt: !6330)
!6330 = distinct !DILocation(line: 46, column: 9, scope: !6320)
!6331 = !DILocalVariable(name: "bitpos", scope: !6325, file: !6326, line: 368, type: !125)
!6332 = !DILocation(line: 368, column: 6, scope: !6325, inlinedAt: !6330)
!6333 = !DILocalVariable(name: "size", arg: 1, scope: !6320, file: !6321, line: 29, type: !130)
!6334 = !DILocation(line: 29, column: 63, scope: !6320)
!6335 = !DILocation(line: 31, column: 27, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6320, file: !6321, line: 31, column: 6)
!6337 = !DILocation(line: 31, column: 6, scope: !6336)
!6338 = !DILocation(line: 31, column: 6, scope: !6320)
!6339 = !DILocation(line: 32, column: 8, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !6321, line: 32, column: 7)
!6341 = distinct !DILexicalBlock(scope: !6336, file: !6321, line: 31, column: 34)
!6342 = !DILocation(line: 32, column: 7, scope: !6341)
!6343 = !DILocation(line: 33, column: 4, scope: !6340)
!6344 = !DILocation(line: 35, column: 7, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !6321, line: 35, column: 7)
!6346 = !DILocation(line: 35, column: 12, scope: !6345)
!6347 = !DILocation(line: 35, column: 7, scope: !6341)
!6348 = !DILocation(line: 36, column: 4, scope: !6345)
!6349 = !DILocation(line: 38, column: 10, scope: !6341)
!6350 = !DILocation(line: 38, column: 28, scope: !6341)
!6351 = !DILocation(line: 38, column: 41, scope: !6341)
!6352 = !DILocation(line: 38, column: 3, scope: !6341)
!6353 = !DILocation(line: 41, column: 6, scope: !6320)
!6354 = !DILocation(line: 42, column: 7, scope: !6320)
!6355 = !DILocation(line: 46, column: 15, scope: !6320)
!6356 = !DILocation(line: 374, column: 2, scope: !6325, inlinedAt: !6330)
!6357 = !DILocation(line: 376, column: 14, scope: !6325, inlinedAt: !6330)
!6358 = !{i32 257213}
!6359 = !DILocation(line: 377, column: 9, scope: !6325, inlinedAt: !6330)
!6360 = !DILocation(line: 377, column: 16, scope: !6325, inlinedAt: !6330)
!6361 = !DILocation(line: 46, column: 2, scope: !6320)
!6362 = !DILocation(line: 48, column: 1, scope: !6320)
!6363 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6364, file: !6364, line: 30, type: !6365, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6364 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6365 = !DISubroutineType(types: !6366)
!6366 = !{!125, !269}
!6367 = !DILocation(line: 366, column: 40, scope: !6325, inlinedAt: !6368)
!6368 = distinct !DILocation(line: 32, column: 9, scope: !6363)
!6369 = !DILocation(line: 368, column: 6, scope: !6325, inlinedAt: !6368)
!6370 = !DILocalVariable(name: "n", arg: 1, scope: !6363, file: !6364, line: 30, type: !269)
!6371 = !DILocation(line: 30, column: 21, scope: !6363)
!6372 = !DILocation(line: 32, column: 15, scope: !6363)
!6373 = !DILocation(line: 374, column: 2, scope: !6325, inlinedAt: !6368)
!6374 = !DILocation(line: 376, column: 14, scope: !6325, inlinedAt: !6368)
!6375 = !DILocation(line: 377, column: 9, scope: !6325, inlinedAt: !6368)
!6376 = !DILocation(line: 377, column: 16, scope: !6325, inlinedAt: !6368)
!6377 = !DILocation(line: 32, column: 18, scope: !6363)
!6378 = !DILocation(line: 32, column: 2, scope: !6363)
!6379 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6380, file: !6380, line: 137, type: !6381, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!6380 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!118, !835, !1832, !434, !128}
!6383 = !DILocalVariable(name: "s", arg: 1, scope: !6379, file: !6380, line: 137, type: !835)
!6384 = !DILocation(line: 137, column: 54, scope: !6379)
!6385 = !DILocalVariable(name: "object", arg: 2, scope: !6379, file: !6380, line: 137, type: !1832)
!6386 = !DILocation(line: 137, column: 69, scope: !6379)
!6387 = !DILocalVariable(name: "size", arg: 3, scope: !6379, file: !6380, line: 138, type: !434)
!6388 = !DILocation(line: 138, column: 12, scope: !6379)
!6389 = !DILocalVariable(name: "flags", arg: 4, scope: !6379, file: !6380, line: 138, type: !128)
!6390 = !DILocation(line: 138, column: 24, scope: !6379)
!6391 = !DILocation(line: 140, column: 17, scope: !6379)
!6392 = !DILocation(line: 140, column: 2, scope: !6379)
