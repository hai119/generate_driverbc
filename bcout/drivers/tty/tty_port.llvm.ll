; ModuleID = '../bcout/drivers/tty/tty_port.llvm.bc'
source_filename = "drivers/tty/tty_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
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
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.vm_operations_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { {}*, void (%struct.tty_port*)* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
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
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@tty_port_default_client_ops = dso_local constant { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* } { i32 (%struct.tty_port*, i8*, i8*, i64)* @tty_port_default_receive_buf, void (%struct.tty_port*)* @tty_port_default_wakeup }, align 8, !dbg !0
@tty_port_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3899
@.str = private unnamed_addr constant [17 x i8] c"&port->open_wait\00", align 1
@tty_port_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3902
@.str.2 = private unnamed_addr constant [22 x i8] c"&port->delta_msr_wait\00", align 1
@tty_port_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3904
@.str.4 = private unnamed_addr constant [13 x i8] c"&port->mutex\00", align 1
@tty_port_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3906
@.str.6 = private unnamed_addr constant [17 x i8] c"&port->buf_mutex\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"drivers/tty/tty_port.c\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\014%s %s: %s: tty->count = 1 port count = %d\0A\00", align 1
@__func__.tty_port_close_start = private unnamed_addr constant [21 x i8] c"tty_port_close_start\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\014%s %s: %s: bad port count (%d)\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_port_default_receive_buf(%struct.tty_port* %port, i8* %p, i8* %f, i64 %count) #0 !dbg !3914 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %tty = alloca %struct.tty_struct*, align 8
  %disc = alloca %struct.tty_ldisc*, align 8
  %tmp = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3917, metadata !DIExpression()), !dbg !3918
  store i8* %f, i8** %f.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %f.addr, metadata !3919, metadata !DIExpression()), !dbg !3920
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %disc, metadata !3927, metadata !DIExpression()), !dbg !3928
  br label %do.body, !dbg !3929

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3931

do.end:                                           ; preds = %do.body
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3929
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 2, !dbg !3929
  %1 = load volatile %struct.tty_struct*, %struct.tty_struct** %itty, align 8, !dbg !3929
  store %struct.tty_struct* %1, %struct.tty_struct** %tmp, align 8, !dbg !3931
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tmp, align 8, !dbg !3929
  store %struct.tty_struct* %2, %struct.tty_struct** %tty, align 8, !dbg !3933
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !3934
  %tobool = icmp ne %struct.tty_struct* %3, null, !dbg !3934
  br i1 %tobool, label %if.end, label %if.then, !dbg !3936

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !3937
  br label %return, !dbg !3937

if.end:                                           ; preds = %do.end
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !3938
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %4) #8, !dbg !3939
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %disc, align 8, !dbg !3940
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !3941
  %tobool1 = icmp ne %struct.tty_ldisc* %5, null, !dbg !3941
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3943

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

if.end3:                                          ; preds = %if.end
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !3945
  %7 = load i8*, i8** %p.addr, align 8, !dbg !3946
  %8 = load i8*, i8** %f.addr, align 8, !dbg !3947
  %9 = load i64, i64* %count.addr, align 8, !dbg !3948
  %conv = trunc i64 %9 to i32, !dbg !3948
  %call4 = call i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* %6, i8* %7, i8* %8, i32 %conv) #8, !dbg !3949
  store i32 %call4, i32* %ret, align 4, !dbg !3950
  %10 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !3951
  call void @tty_ldisc_deref(%struct.tty_ldisc* %10) #8, !dbg !3952
  %11 = load i32, i32* %ret, align 4, !dbg !3953
  store i32 %11, i32* %retval, align 4, !dbg !3954
  br label %return, !dbg !3954

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3955
  ret i32 %12, !dbg !3955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_default_wakeup(%struct.tty_port* %port) #0 !dbg !3956 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %tty = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !3959, metadata !DIExpression()), !dbg !3960
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3961
  %call = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %0) #8, !dbg !3962
  store %struct.tty_struct* %call, %struct.tty_struct** %tty, align 8, !dbg !3960
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !3963
  %tobool = icmp ne %struct.tty_struct* %1, null, !dbg !3963
  br i1 %tobool, label %if.then, label %if.end, !dbg !3965

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !3966
  call void @tty_wakeup(%struct.tty_struct* %2) #8, !dbg !3968
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !3969
  call void @tty_kref_put(%struct.tty_struct* %3) #8, !dbg !3970
  br label %if.end, !dbg !3971

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_init(%struct.tty_port* %port) #0 !dbg !3901 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !3980
  %port.addr = alloca %struct.tty_port*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3985
  %1 = bitcast %struct.tty_port* %0 to i8*, !dbg !3986
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 304, i1 false), !dbg !3986
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3987
  call void @tty_buffer_init(%struct.tty_port* %2) #8, !dbg !3988
  br label %do.body, !dbg !3989

do.body:                                          ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3990
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 8, !dbg !3990
  call void @__init_waitqueue_head(%struct.wait_queue_head* %open_wait, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @tty_port_init.__key) #8, !dbg !3990
  br label %do.end, !dbg !3990

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3992

do.body1:                                         ; preds = %do.end
  %4 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3993
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 9, !dbg !3993
  call void @__init_waitqueue_head(%struct.wait_queue_head* %delta_msr_wait, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @tty_port_init.__key.1) #8, !dbg !3993
  br label %do.end2, !dbg !3993

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !3995

do.body3:                                         ; preds = %do.end2
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3996
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 13, !dbg !3996
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @tty_port_init.__key.3) #8, !dbg !3996
  br label %do.end4, !dbg !3996

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !3998

do.body5:                                         ; preds = %do.end4
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !3999
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 14, !dbg !3999
  call void @__mutex_init(%struct.mutex* %buf_mutex, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @tty_port_init.__key.5) #8, !dbg !3999
  br label %do.end6, !dbg !3999

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4001

do.body7:                                         ; preds = %do.end6
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4002
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 5, !dbg !4002
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4003
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !4004
  %rlock.i = bitcast %union.anon.0* %9 to %struct.raw_spinlock*, !dbg !4004
  %10 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4002
  %lock8 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 5, !dbg !4002
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4002
  %rlock = bitcast %union.anon.0* %11 to %struct.raw_spinlock*, !dbg !4002
  %12 = bitcast %struct.spinlock* %lock8 to i8*, !dbg !4002
  %13 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 1 %13, i64 0, i1 false), !dbg !4002
  br label %do.end9, !dbg !4002

do.end9:                                          ; preds = %do.body7
  %14 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4005
  %close_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %14, i32 0, i32 16, !dbg !4006
  store i32 125, i32* %close_delay, align 8, !dbg !4007
  %15 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4008
  %closing_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 17, !dbg !4009
  store i32 7500, i32* %closing_wait, align 4, !dbg !4010
  %16 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4011
  %client_ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 4, !dbg !4012
  store %struct.tty_port_client_operations* bitcast ({ i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }* @tty_port_default_client_ops to %struct.tty_port_client_operations*), %struct.tty_port_client_operations** %client_ops, align 8, !dbg !4013
  %17 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4014
  %kref = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 19, !dbg !4015
  call void @kref_init(%struct.kref* %kref) #8, !dbg !4016
  ret void, !dbg !4017
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @tty_buffer_init(%struct.tty_port*) #3

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4018 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4024
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4025
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #8, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_link_device(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index) #0 !dbg !4028 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4037, metadata !DIExpression()), !dbg !4040
  %0 = load i32, i32* %index.addr, align 4, !dbg !4040
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4040
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i32 0, i32 9, !dbg !4040
  %2 = load i32, i32* %num, align 4, !dbg !4040
  %cmp = icmp uge i32 %0, %2, !dbg !4040
  %lnot = xor i1 %cmp, true, !dbg !4040
  %lnot1 = xor i1 %lnot, true, !dbg !4040
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4040
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4040
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4041
  %tobool = icmp ne i32 %3, 0, !dbg !4041
  %lnot2 = xor i1 %tobool, true, !dbg !4041
  %lnot4 = xor i1 %lnot2, true, !dbg !4041
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4041
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4041
  %tobool6 = icmp ne i64 %conv, 0, !dbg !4041
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4040

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4041

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !4043

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !4045

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !4043

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 91, i32 2305, i64 12) #6, !dbg !4047, !srcloc !4049
  br label %do.end9, !dbg !4047

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #6, !dbg !4050, !srcloc !4052
  br label %do.body10, !dbg !4043

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4053

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !4043

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !4043

if.end:                                           ; preds = %do.end12, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4040
  %tobool13 = icmp ne i32 %4, 0, !dbg !4040
  %lnot14 = xor i1 %tobool13, true, !dbg !4040
  %lnot16 = xor i1 %lnot14, true, !dbg !4040
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4040
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !4040
  store i64 %conv18, i64* %tmp, align 8, !dbg !4041
  %5 = load i64, i64* %tmp, align 8, !dbg !4040
  %tobool19 = icmp ne i64 %5, 0, !dbg !4055
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4056

if.then20:                                        ; preds = %if.end
  br label %return, !dbg !4057

if.end21:                                         ; preds = %if.end
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4058
  %7 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4059
  %ports = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i32 0, i32 17, !dbg !4060
  %8 = load %struct.tty_port**, %struct.tty_port*** %ports, align 8, !dbg !4060
  %9 = load i32, i32* %index.addr, align 4, !dbg !4061
  %idxprom = zext i32 %9 to i64, !dbg !4059
  %arrayidx = getelementptr %struct.tty_port*, %struct.tty_port** %8, i64 %idxprom, !dbg !4059
  store %struct.tty_port* %6, %struct.tty_port** %arrayidx, align 8, !dbg !4062
  br label %return, !dbg !4063

return:                                           ; preds = %if.end21, %if.then20
  ret void, !dbg !4063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @tty_port_register_device(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index, %struct.device* %device) #0 !dbg !4064 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4067, metadata !DIExpression()), !dbg !4068
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4071, metadata !DIExpression()), !dbg !4072
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4073, metadata !DIExpression()), !dbg !4074
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4075
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4076
  %2 = load i32, i32* %index.addr, align 4, !dbg !4077
  %3 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4078
  %call = call %struct.device* @tty_port_register_device_attr(%struct.tty_port* %0, %struct.tty_driver* %1, i32 %2, %struct.device* %3, i8* null, %struct.attribute_group** null) #8, !dbg !4079
  ret %struct.device* %call, !dbg !4080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @tty_port_register_device_attr(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index, %struct.device* %device, i8* %drvdata, %struct.attribute_group** %attr_grp) #0 !dbg !4081 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  %drvdata.addr = alloca i8*, align 8
  %attr_grp.addr = alloca %struct.attribute_group**, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4084, metadata !DIExpression()), !dbg !4085
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4086, metadata !DIExpression()), !dbg !4087
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i8* %drvdata, i8** %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %drvdata.addr, metadata !4092, metadata !DIExpression()), !dbg !4093
  store %struct.attribute_group** %attr_grp, %struct.attribute_group*** %attr_grp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %attr_grp.addr, metadata !4094, metadata !DIExpression()), !dbg !4095
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4096
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4097
  %2 = load i32, i32* %index.addr, align 4, !dbg !4098
  call void @tty_port_link_device(%struct.tty_port* %0, %struct.tty_driver* %1, i32 %2) #8, !dbg !4099
  %3 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4100
  %4 = load i32, i32* %index.addr, align 4, !dbg !4101
  %5 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4102
  %6 = load i8*, i8** %drvdata.addr, align 8, !dbg !4103
  %7 = load %struct.attribute_group**, %struct.attribute_group*** %attr_grp.addr, align 8, !dbg !4104
  %call = call %struct.device* @tty_register_device_attr(%struct.tty_driver* %3, i32 %4, %struct.device* %5, i8* %6, %struct.attribute_group** %7) #8, !dbg !4105
  ret %struct.device* %call, !dbg !4106
}

; Function Attrs: noredzone
declare dso_local %struct.device* @tty_register_device_attr(%struct.tty_driver*, i32, %struct.device*, i8*, %struct.attribute_group**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index, %struct.device* %device, i8* %drvdata, %struct.attribute_group** %attr_grp) #0 !dbg !4107 {
entry:
  %retval = alloca %struct.device*, align 8
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  %drvdata.addr = alloca i8*, align 8
  %attr_grp.addr = alloca %struct.attribute_group**, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4110, metadata !DIExpression()), !dbg !4111
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i8* %drvdata, i8** %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %drvdata.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  store %struct.attribute_group** %attr_grp, %struct.attribute_group*** %attr_grp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %attr_grp.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4120, metadata !DIExpression()), !dbg !4121
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4122
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4123
  %2 = load i32, i32* %index.addr, align 4, !dbg !4124
  call void @tty_port_link_device(%struct.tty_port* %0, %struct.tty_driver* %1, i32 %2) #8, !dbg !4125
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4126
  %4 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4127
  %5 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4128
  %6 = load i32, i32* %index.addr, align 4, !dbg !4129
  %call = call %struct.device* @serdev_tty_port_register(%struct.tty_port* %3, %struct.device* %4, %struct.tty_driver* %5, i32 %6) #8, !dbg !4130
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4131
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4132
  %8 = bitcast %struct.device* %7 to i8*, !dbg !4132
  %call1 = call i64 @PTR_ERR(i8* %8) #8, !dbg !4134
  %cmp = icmp ne i64 %call1, -19, !dbg !4135
  br i1 %cmp, label %if.then, label %if.end, !dbg !4136

if.then:                                          ; preds = %entry
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4137
  store %struct.device* %9, %struct.device** %retval, align 8, !dbg !4139
  br label %return, !dbg !4139

if.end:                                           ; preds = %entry
  %10 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4140
  %11 = load i32, i32* %index.addr, align 4, !dbg !4141
  %12 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4142
  %13 = load i8*, i8** %drvdata.addr, align 8, !dbg !4143
  %14 = load %struct.attribute_group**, %struct.attribute_group*** %attr_grp.addr, align 8, !dbg !4144
  %call2 = call %struct.device* @tty_register_device_attr(%struct.tty_driver* %10, i32 %11, %struct.device* %12, i8* %13, %struct.attribute_group** %14) #8, !dbg !4145
  store %struct.device* %call2, %struct.device** %retval, align 8, !dbg !4146
  br label %return, !dbg !4146

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.device*, %struct.device** %retval, align 8, !dbg !4147
  ret %struct.device* %15, !dbg !4147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @serdev_tty_port_register(%struct.tty_port* %port, %struct.device* %parent, %struct.tty_driver* %drv, i32 %idx) #0 !dbg !4148 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.tty_driver*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  store %struct.tty_driver* %drv, %struct.tty_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %drv.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  %call = call i8* @ERR_PTR(i64 -19) #8, !dbg !4160
  %0 = bitcast i8* %call to %struct.device*, !dbg !4160
  ret %struct.device* %0, !dbg !4161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4162 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4168
  %1 = ptrtoint i8* %0 to i64, !dbg !4169
  ret i64 %1, !dbg !4170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @tty_port_register_device_serdev(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index, %struct.device* %device) #0 !dbg !4171 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4172, metadata !DIExpression()), !dbg !4173
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4176, metadata !DIExpression()), !dbg !4177
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4178, metadata !DIExpression()), !dbg !4179
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4180
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4181
  %2 = load i32, i32* %index.addr, align 4, !dbg !4182
  %3 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4183
  %call = call %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* %0, %struct.tty_driver* %1, i32 %2, %struct.device* %3, i8* null, %struct.attribute_group** null) #8, !dbg !4184
  ret %struct.device* %call, !dbg !4185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_unregister_device(%struct.tty_port* %port, %struct.tty_driver* %driver, i32 %index) #0 !dbg !4186 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %index.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4193, metadata !DIExpression()), !dbg !4194
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4195
  %call = call i32 @serdev_tty_port_unregister(%struct.tty_port* %0) #8, !dbg !4196
  store i32 %call, i32* %ret, align 4, !dbg !4197
  %1 = load i32, i32* %ret, align 4, !dbg !4198
  %cmp = icmp eq i32 %1, 0, !dbg !4200
  br i1 %cmp, label %if.then, label %if.end, !dbg !4201

if.then:                                          ; preds = %entry
  br label %return, !dbg !4202

if.end:                                           ; preds = %entry
  %2 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !4203
  %3 = load i32, i32* %index.addr, align 4, !dbg !4204
  call void @tty_unregister_device(%struct.tty_driver* %2, i32 %3) #8, !dbg !4205
  br label %return, !dbg !4206

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serdev_tty_port_unregister(%struct.tty_port* %port) #0 !dbg !4207 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  ret i32 -19, !dbg !4210
}

; Function Attrs: noredzone
declare dso_local void @tty_unregister_device(%struct.tty_driver*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_alloc_xmit_buf(%struct.tty_port* %port) #0 !dbg !4211 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4214
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 14, !dbg !4215
  call void @mutex_lock(%struct.mutex* %buf_mutex) #8, !dbg !4216
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4217
  %xmit_buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 15, !dbg !4219
  %2 = load i8*, i8** %xmit_buf, align 8, !dbg !4219
  %cmp = icmp eq i8* %2, null, !dbg !4220
  br i1 %cmp, label %if.then, label %if.end, !dbg !4221

if.then:                                          ; preds = %entry
  %call = call i64 @get_zeroed_page(i32 3264) #8, !dbg !4222
  %3 = inttoptr i64 %call to i8*, !dbg !4223
  %4 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4224
  %xmit_buf1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 15, !dbg !4225
  store i8* %3, i8** %xmit_buf1, align 8, !dbg !4226
  br label %if.end, !dbg !4224

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4227
  %buf_mutex2 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 14, !dbg !4228
  call void @mutex_unlock(%struct.mutex* %buf_mutex2) #8, !dbg !4229
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4230
  %xmit_buf3 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 15, !dbg !4232
  %7 = load i8*, i8** %xmit_buf3, align 8, !dbg !4232
  %cmp4 = icmp eq i8* %7, null, !dbg !4233
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4234

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4236
  br label %return, !dbg !4236

return:                                           ; preds = %if.end6, %if.then5
  %8 = load i32, i32* %retval, align 4, !dbg !4237
  ret i32 %8, !dbg !4237
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i64 @get_zeroed_page(i32) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_free_xmit_buf(%struct.tty_port* %port) #0 !dbg !4238 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4241
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 14, !dbg !4242
  call void @mutex_lock(%struct.mutex* %buf_mutex) #8, !dbg !4243
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4244
  %xmit_buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 15, !dbg !4246
  %2 = load i8*, i8** %xmit_buf, align 8, !dbg !4246
  %cmp = icmp ne i8* %2, null, !dbg !4247
  br i1 %cmp, label %if.then, label %if.end, !dbg !4248

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4249
  %xmit_buf1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 15, !dbg !4249
  %4 = load i8*, i8** %xmit_buf1, align 8, !dbg !4249
  %5 = ptrtoint i8* %4 to i64, !dbg !4249
  call void @free_pages(i64 %5, i32 0) #8, !dbg !4249
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4251
  %xmit_buf2 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 15, !dbg !4252
  store i8* null, i8** %xmit_buf2, align 8, !dbg !4253
  br label %if.end, !dbg !4254

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4255
  %buf_mutex3 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 14, !dbg !4256
  call void @mutex_unlock(%struct.mutex* %buf_mutex3) #8, !dbg !4257
  ret void, !dbg !4258
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_destroy(%struct.tty_port* %port) #0 !dbg !4259 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4260, metadata !DIExpression()), !dbg !4261
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4262
  %call = call zeroext i1 @tty_buffer_cancel_work(%struct.tty_port* %0) #8, !dbg !4263
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4264
  call void @tty_buffer_free_all(%struct.tty_port* %1) #8, !dbg !4265
  ret void, !dbg !4266
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @tty_buffer_cancel_work(%struct.tty_port*) #3

; Function Attrs: noredzone
declare dso_local void @tty_buffer_free_all(%struct.tty_port*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_put(%struct.tty_port* %port) #0 !dbg !4267 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4268, metadata !DIExpression()), !dbg !4269
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4270
  %tobool = icmp ne %struct.tty_port* %0, null, !dbg !4270
  br i1 %tobool, label %if.then, label %if.end, !dbg !4272

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4273
  %kref = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 19, !dbg !4274
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @tty_port_destructor) #8, !dbg !4275
  br label %if.end, !dbg !4275

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !4277 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4281, metadata !DIExpression()), !dbg !4282
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4285
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4287
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #8, !dbg !4288
  br i1 %call, label %if.then, label %if.end, !dbg !4289

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4290
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4292
  call void %1(%struct.kref* %2) #8, !dbg !4290
  store i32 1, i32* %retval, align 4, !dbg !4293
  br label %return, !dbg !4293

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4294
  br label %return, !dbg !4294

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4295
  ret i32 %3, !dbg !4295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_destructor(%struct.kref* %kref) #0 !dbg !4296 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %port = alloca %struct.tty_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.tty_port*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4301, metadata !DIExpression()), !dbg !4303
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4303
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !4303
  store i8* %1, i8** %__mptr, align 8, !dbg !4303
  br label %do.body, !dbg !4303

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4304

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4303
  %add.ptr = getelementptr i8, i8* %2, i64 -292, !dbg !4303
  %3 = bitcast i8* %add.ptr to %struct.tty_port*, !dbg !4303
  store %struct.tty_port* %3, %struct.tty_port** %tmp, align 8, !dbg !4304
  %4 = load %struct.tty_port*, %struct.tty_port** %tmp, align 8, !dbg !4303
  store %struct.tty_port* %4, %struct.tty_port** %port, align 8, !dbg !4300
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4306, metadata !DIExpression()), !dbg !4309
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4309
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 2, !dbg !4309
  %6 = load %struct.tty_struct*, %struct.tty_struct** %itty, align 8, !dbg !4309
  %tobool = icmp ne %struct.tty_struct* %6, null, !dbg !4309
  %lnot = xor i1 %tobool, true, !dbg !4309
  %lnot1 = xor i1 %lnot, true, !dbg !4309
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4309
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4309
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4310
  %tobool2 = icmp ne i32 %7, 0, !dbg !4310
  %lnot3 = xor i1 %tobool2, true, !dbg !4310
  %lnot5 = xor i1 %lnot3, true, !dbg !4310
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4310
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4310
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4310
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4309

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !4310

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !4312

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4314

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4312

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 258, i32 2305, i64 12) #6, !dbg !4316, !srcloc !4318
  br label %do.end12, !dbg !4316

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 211) #6, !dbg !4319, !srcloc !4321
  br label %do.body13, !dbg !4312

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4322

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4312

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !4312

if.end:                                           ; preds = %do.end15, %do.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !4309
  %tobool17 = icmp ne i32 %8, 0, !dbg !4309
  %lnot18 = xor i1 %tobool17, true, !dbg !4309
  %lnot20 = xor i1 %lnot18, true, !dbg !4309
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4309
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4309
  store i64 %conv22, i64* %tmp16, align 8, !dbg !4310
  %9 = load i64, i64* %tmp16, align 8, !dbg !4309
  %tobool23 = icmp ne i64 %9, 0, !dbg !4324
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4325

if.then24:                                        ; preds = %if.end
  br label %if.end36, !dbg !4326

if.end25:                                         ; preds = %if.end
  %10 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4327
  %xmit_buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 15, !dbg !4329
  %11 = load i8*, i8** %xmit_buf, align 8, !dbg !4329
  %tobool26 = icmp ne i8* %11, null, !dbg !4327
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !4330

if.then27:                                        ; preds = %if.end25
  %12 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4331
  %xmit_buf28 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %12, i32 0, i32 15, !dbg !4331
  %13 = load i8*, i8** %xmit_buf28, align 8, !dbg !4331
  %14 = ptrtoint i8* %13 to i64, !dbg !4331
  call void @free_pages(i64 %14, i32 0) #8, !dbg !4331
  br label %if.end29, !dbg !4331

if.end29:                                         ; preds = %if.then27, %if.end25
  %15 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4332
  call void @tty_port_destroy(%struct.tty_port* %15) #8, !dbg !4333
  %16 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4334
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 3, !dbg !4336
  %17 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !4336
  %tobool30 = icmp ne %struct.tty_port_operations* %17, null, !dbg !4334
  br i1 %tobool30, label %land.lhs.true, label %if.else, !dbg !4337

land.lhs.true:                                    ; preds = %if.end29
  %18 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4338
  %ops31 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 3, !dbg !4339
  %19 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops31, align 8, !dbg !4339
  %destruct = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %19, i32 0, i32 4, !dbg !4340
  %20 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %destruct, align 8, !dbg !4340
  %tobool32 = icmp ne void (%struct.tty_port*)* %20, null, !dbg !4338
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !4341

if.then33:                                        ; preds = %land.lhs.true
  %21 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4342
  %ops34 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 3, !dbg !4343
  %22 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops34, align 8, !dbg !4343
  %destruct35 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %22, i32 0, i32 4, !dbg !4344
  %23 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %destruct35, align 8, !dbg !4344
  %24 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4345
  call void %23(%struct.tty_port* %24) #8, !dbg !4342
  br label %if.end36, !dbg !4342

if.else:                                          ; preds = %land.lhs.true, %if.end29
  %25 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4346
  %26 = bitcast %struct.tty_port* %25 to i8*, !dbg !4346
  call void @kfree(i8* %26) #8, !dbg !4347
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %if.else, %if.then33
  ret void, !dbg !4348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %port) #0 !dbg !4349 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4352, metadata !DIExpression()), !dbg !4356
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !4359
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !4360
  %port.addr = alloca %struct.tty_port*, align 8
  %flags = alloca i64, align 8
  %tty = alloca %struct.tty_struct*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4371, metadata !DIExpression()), !dbg !4372
  br label %do.body, !dbg !4373

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4374

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4375, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4378, metadata !DIExpression()), !dbg !4377
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4377
  %conv = zext i1 %cmp to i32, !dbg !4377
  store i32 1, i32* %tmp, align 4, !dbg !4377
  %0 = load i32, i32* %tmp, align 4, !dbg !4377
  br label %do.body2, !dbg !4379

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4380

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4381

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4383, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4387, metadata !DIExpression()), !dbg !4386
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4386
  %conv8 = zext i1 %cmp7 to i32, !dbg !4386
  store i32 1, i32* %tmp9, align 4, !dbg !4386
  %1 = load i32, i32* %tmp9, align 4, !dbg !4386
  %call = call i64 @arch_local_irq_save() #8, !dbg !4388
  store i64 %call, i64* %flags, align 8, !dbg !4388
  br label %do.end, !dbg !4388

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4381

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4380

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4389, !srcloc !4390
  br label %do.body12, !dbg !4389

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4391
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 5, !dbg !4391
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4392
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4393
  %rlock.i = bitcast %union.anon.0* %4 to %struct.raw_spinlock*, !dbg !4393
  br label %do.end14, !dbg !4391

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4389

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4380

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4379

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4374

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4394
  %tty19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 1, !dbg !4395
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty19, align 8, !dbg !4395
  %call20 = call %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %6) #8, !dbg !4396
  store %struct.tty_struct* %call20, %struct.tty_struct** %tty, align 8, !dbg !4397
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4398
  %lock21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 5, !dbg !4399
  %8 = load i64, i64* %flags, align 8, !dbg !4400
  store %struct.spinlock* %lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !4404
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !4404
  store i32 1, i32* %tmp.i, align 4, !dbg !4404
  %9 = load i32, i32* %tmp.i, align 4, !dbg !4404
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !4411
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !4411
  store i32 1, i32* %tmp8.i, align 4, !dbg !4411
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !4411
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !4413
  call void @arch_local_irq_restore(i64 %11) #9, !dbg !4413
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4414, !srcloc !4416
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !4417
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4417
  %rlock.i23 = bitcast %union.anon.0* %13 to %struct.raw_spinlock*, !dbg !4417
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4419
  ret %struct.tty_struct* %14, !dbg !4420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4421 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4425, metadata !DIExpression()), !dbg !4426
  %call = call i64 @arch_local_save_flags() #8, !dbg !4427
  store i64 %call, i64* %f, align 8, !dbg !4428
  call void @arch_local_irq_disable() #8, !dbg !4429
  %0 = load i64, i64* %f, align 8, !dbg !4430
  ret i64 %0, !dbg !4431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %tty) #0 !dbg !4432 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4437
  %tobool = icmp ne %struct.tty_struct* %0, null, !dbg !4437
  br i1 %tobool, label %if.then, label %if.end, !dbg !4439

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4440
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 1, !dbg !4441
  call void @kref_get(%struct.kref* %kref) #8, !dbg !4442
  br label %if.end, !dbg !4442

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4443
  ret %struct.tty_struct* %2, !dbg !4444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_tty_set(%struct.tty_port* %port, %struct.tty_struct* %tty) #0 !dbg !4445 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4352, metadata !DIExpression()), !dbg !4448
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !4450
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !4451
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4462, metadata !DIExpression()), !dbg !4463
  br label %do.body, !dbg !4464

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4465

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4466, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4469, metadata !DIExpression()), !dbg !4468
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4468
  %conv = zext i1 %cmp to i32, !dbg !4468
  store i32 1, i32* %tmp, align 4, !dbg !4468
  %0 = load i32, i32* %tmp, align 4, !dbg !4468
  br label %do.body2, !dbg !4470

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4471

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4472

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4474, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4478, metadata !DIExpression()), !dbg !4477
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4477
  %conv8 = zext i1 %cmp7 to i32, !dbg !4477
  store i32 1, i32* %tmp9, align 4, !dbg !4477
  %1 = load i32, i32* %tmp9, align 4, !dbg !4477
  %call = call i64 @arch_local_irq_save() #8, !dbg !4479
  store i64 %call, i64* %flags, align 8, !dbg !4479
  br label %do.end, !dbg !4479

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4472

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4471

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4480, !srcloc !4481
  br label %do.body12, !dbg !4480

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4482
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 5, !dbg !4482
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4483
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4484
  %rlock.i = bitcast %union.anon.0* %4 to %struct.raw_spinlock*, !dbg !4484
  br label %do.end14, !dbg !4482

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4480

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4471

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4470

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4465

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4485
  %tty19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 1, !dbg !4486
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty19, align 8, !dbg !4486
  call void @tty_kref_put(%struct.tty_struct* %6) #8, !dbg !4487
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4488
  %call20 = call %struct.tty_struct* @tty_kref_get(%struct.tty_struct* %7) #8, !dbg !4489
  %8 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4490
  %tty21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %8, i32 0, i32 1, !dbg !4491
  store %struct.tty_struct* %call20, %struct.tty_struct** %tty21, align 8, !dbg !4492
  %9 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4493
  %lock22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %9, i32 0, i32 5, !dbg !4494
  %10 = load i64, i64* %flags, align 8, !dbg !4495
  store %struct.spinlock* %lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !4496
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !4496
  store i32 1, i32* %tmp.i, align 4, !dbg !4496
  %11 = load i32, i32* %tmp.i, align 4, !dbg !4496
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !4497
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !4497
  store i32 1, i32* %tmp8.i, align 4, !dbg !4497
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !4497
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !4498
  call void @arch_local_irq_restore(i64 %13) #9, !dbg !4498
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4499, !srcloc !4416
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4500
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4500
  %rlock.i24 = bitcast %union.anon.0* %15 to %struct.raw_spinlock*, !dbg !4500
  ret void, !dbg !4501
}

; Function Attrs: noredzone
declare dso_local void @tty_kref_put(%struct.tty_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_hangup(%struct.tty_port* %port) #0 !dbg !4502 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4352, metadata !DIExpression()), !dbg !4503
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !4505
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !4506
  %port.addr = alloca %struct.tty_port*, align 8
  %tty = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4515, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4517, metadata !DIExpression()), !dbg !4518
  br label %do.body, !dbg !4519

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4520

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4521, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4524, metadata !DIExpression()), !dbg !4523
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4523
  %conv = zext i1 %cmp to i32, !dbg !4523
  store i32 1, i32* %tmp, align 4, !dbg !4523
  %0 = load i32, i32* %tmp, align 4, !dbg !4523
  br label %do.body2, !dbg !4525

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4526

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4527

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4529, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4533, metadata !DIExpression()), !dbg !4532
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4532
  %conv8 = zext i1 %cmp7 to i32, !dbg !4532
  store i32 1, i32* %tmp9, align 4, !dbg !4532
  %1 = load i32, i32* %tmp9, align 4, !dbg !4532
  %call = call i64 @arch_local_irq_save() #8, !dbg !4534
  store i64 %call, i64* %flags, align 8, !dbg !4534
  br label %do.end, !dbg !4534

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4527

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4526

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4535, !srcloc !4536
  br label %do.body12, !dbg !4535

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4537
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 5, !dbg !4537
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4538
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4539
  %rlock.i = bitcast %union.anon.0* %4 to %struct.raw_spinlock*, !dbg !4539
  br label %do.end14, !dbg !4537

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4535

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4526

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4525

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4520

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4540
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 7, !dbg !4541
  store i32 0, i32* %count, align 4, !dbg !4542
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4543
  %tty19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 1, !dbg !4544
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty19, align 8, !dbg !4544
  store %struct.tty_struct* %7, %struct.tty_struct** %tty, align 8, !dbg !4545
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4546
  %tobool = icmp ne %struct.tty_struct* %8, null, !dbg !4546
  br i1 %tobool, label %if.then, label %if.end, !dbg !4548

if.then:                                          ; preds = %do.end18
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4549
  %flags20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 21, !dbg !4550
  call void @set_bit(i64 1, i64* %flags20) #8, !dbg !4551
  br label %if.end, !dbg !4551

if.end:                                           ; preds = %if.then, %do.end18
  %10 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4552
  %tty21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 1, !dbg !4553
  store %struct.tty_struct* null, %struct.tty_struct** %tty21, align 8, !dbg !4554
  %11 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4555
  %lock22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 5, !dbg !4556
  %12 = load i64, i64* %flags, align 8, !dbg !4557
  store %struct.spinlock* %lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !4558
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !4558
  store i32 1, i32* %tmp.i, align 4, !dbg !4558
  %13 = load i32, i32* %tmp.i, align 4, !dbg !4558
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !4559
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !4559
  store i32 1, i32* %tmp8.i, align 4, !dbg !4559
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !4559
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !4560
  call void @arch_local_irq_restore(i64 %15) #9, !dbg !4560
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4561, !srcloc !4416
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4562
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !4562
  %rlock.i24 = bitcast %union.anon.0* %17 to %struct.raw_spinlock*, !dbg !4562
  %18 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4563
  call void @tty_port_set_active(%struct.tty_port* %18, i1 zeroext false) #8, !dbg !4564
  %19 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4565
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4566
  call void @tty_port_shutdown(%struct.tty_port* %19, %struct.tty_struct* %20) #8, !dbg !4567
  %21 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4568
  call void @tty_kref_put(%struct.tty_struct* %21) #8, !dbg !4569
  %22 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4570
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 8, !dbg !4570
  call void @__wake_up(%struct.wait_queue_head* %open_wait, i32 1, i32 1, i8* null) #8, !dbg !4570
  %23 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4571
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 9, !dbg !4571
  call void @__wake_up(%struct.wait_queue_head* %delta_msr_wait, i32 1, i32 1, i8* null) #8, !dbg !4571
  ret void, !dbg !4572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4573 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4579, metadata !DIExpression()), !dbg !4582
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4586, metadata !DIExpression()), !dbg !4594
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4602
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4603
  %div = sdiv i64 %1, 64, !dbg !4603
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4604
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4602
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4605
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4606
  %conv.i = trunc i64 %4 to i32, !dbg !4606
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !4607
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4608
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4608
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !4608
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4609
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4610
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4611
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !4613
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4614

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4615
  %12 = bitcast i64* %11 to i8*, !dbg !4615
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4615
  %shr.i = ashr i64 %13, 3, !dbg !4615
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4615
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4617
  %and.i = and i64 %14, 7, !dbg !4617
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4617
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4617
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #6, !dbg !4618, !srcloc !4619
  br label %arch_set_bit.exit, !dbg !4620

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4621
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4623
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !4624, !srcloc !4625
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_set_active(%struct.tty_port* %port, i1 zeroext %val) #0 !dbg !4627 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %val.addr = alloca i8, align 1
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4630, metadata !DIExpression()), !dbg !4631
  %frombool = zext i1 %val to i8
  store i8 %frombool, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  %0 = load i8, i8* %val.addr, align 1, !dbg !4634
  %tobool = trunc i8 %0 to i1, !dbg !4634
  br i1 %tobool, label %if.then, label %if.else, !dbg !4636

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4637
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 11, !dbg !4638
  call void @set_bit(i64 2, i64* %iflags) #8, !dbg !4639
  br label %if.end, !dbg !4639

if.else:                                          ; preds = %entry
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4640
  %iflags1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 11, !dbg !4641
  call void @clear_bit(i64 2, i64* %iflags1) #8, !dbg !4642
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_shutdown(%struct.tty_port* %port, %struct.tty_struct* %tty) #0 !dbg !4644 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4649
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 13, !dbg !4650
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !4651
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4652
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 12, !dbg !4654
  %bf.load = load i8, i8* %console, align 8, !dbg !4654
  %bf.clear = and i8 %bf.load, 1, !dbg !4654
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4652
  br i1 %tobool, label %if.then, label %if.end, !dbg !4655

if.then:                                          ; preds = %entry
  br label %out, !dbg !4656

if.end:                                           ; preds = %entry
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4657
  %call = call zeroext i1 @tty_port_initialized(%struct.tty_port* %2) #8, !dbg !4659
  br i1 %call, label %if.then1, label %if.end11, !dbg !4660

if.then1:                                         ; preds = %if.end
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4661
  call void @tty_port_set_initialized(%struct.tty_port* %3, i1 zeroext false) #8, !dbg !4663
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4664
  %tobool2 = icmp ne %struct.tty_struct* %4, null, !dbg !4664
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !4666

land.lhs.true:                                    ; preds = %if.then1
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4667
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 15, !dbg !4667
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 2, !dbg !4667
  %6 = load i32, i32* %c_cflag, align 8, !dbg !4667
  %and = and i32 %6, 1024, !dbg !4667
  %tobool3 = icmp ne i32 %and, 0, !dbg !4667
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4668

if.then4:                                         ; preds = %land.lhs.true
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4669
  call void @tty_port_lower_dtr_rts(%struct.tty_port* %7) #8, !dbg !4670
  br label %if.end5, !dbg !4670

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.then1
  %8 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4671
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %8, i32 0, i32 3, !dbg !4673
  %9 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !4673
  %shutdown = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %9, i32 0, i32 2, !dbg !4674
  %10 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %shutdown, align 8, !dbg !4674
  %tobool6 = icmp ne void (%struct.tty_port*)* %10, null, !dbg !4671
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !4675

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4676
  %ops8 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 3, !dbg !4677
  %12 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops8, align 8, !dbg !4677
  %shutdown9 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %12, i32 0, i32 2, !dbg !4678
  %13 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %shutdown9, align 8, !dbg !4678
  %14 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4679
  call void %13(%struct.tty_port* %14) #8, !dbg !4676
  br label %if.end10, !dbg !4676

if.end10:                                         ; preds = %if.then7, %if.end5
  br label %if.end11, !dbg !4680

if.end11:                                         ; preds = %if.end10, %if.end
  br label %out, !dbg !4681

out:                                              ; preds = %if.end11, %if.then
  call void @llvm.dbg.label(metadata !4682), !dbg !4683
  %15 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4684
  %mutex12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 13, !dbg !4685
  call void @mutex_unlock(%struct.mutex* %mutex12) #8, !dbg !4686
  ret void, !dbg !4687
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_tty_hangup(%struct.tty_port* %port, i1 zeroext %check_clocal) #0 !dbg !4688 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %check_clocal.addr = alloca i8, align 1
  %tty = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %frombool = zext i1 %check_clocal to i8
  store i8 %frombool, i8* %check_clocal.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_clocal.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty, metadata !4693, metadata !DIExpression()), !dbg !4694
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4695
  %call = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %0) #8, !dbg !4696
  store %struct.tty_struct* %call, %struct.tty_struct** %tty, align 8, !dbg !4694
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4697
  %tobool = icmp ne %struct.tty_struct* %1, null, !dbg !4697
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4699

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %check_clocal.addr, align 1, !dbg !4700
  %tobool1 = trunc i8 %2 to i1, !dbg !4700
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !4701

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4702
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 15, !dbg !4702
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 2, !dbg !4702
  %4 = load i32, i32* %c_cflag, align 8, !dbg !4702
  %and = and i32 %4, 2048, !dbg !4702
  %tobool2 = icmp ne i32 %and, 0, !dbg !4702
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4703

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4704
  call void @tty_hangup(%struct.tty_struct* %5) #8, !dbg !4705
  br label %if.end, !dbg !4705

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4706
  call void @tty_kref_put(%struct.tty_struct* %6) #8, !dbg !4707
  ret void, !dbg !4708
}

; Function Attrs: noredzone
declare dso_local void @tty_hangup(%struct.tty_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_tty_wakeup(%struct.tty_port* %port) #0 !dbg !4709 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4712
  %client_ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 4, !dbg !4713
  %1 = load %struct.tty_port_client_operations*, %struct.tty_port_client_operations** %client_ops, align 8, !dbg !4713
  %write_wakeup = getelementptr inbounds %struct.tty_port_client_operations, %struct.tty_port_client_operations* %1, i32 0, i32 1, !dbg !4714
  %2 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %write_wakeup, align 8, !dbg !4714
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4715
  call void %2(%struct.tty_port* %3) #8, !dbg !4712
  ret void, !dbg !4716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_carrier_raised(%struct.tty_port* %port) #0 !dbg !4717 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4720
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 3, !dbg !4722
  %1 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !4722
  %carrier_raised = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %1, i32 0, i32 0, !dbg !4723
  %2 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %carrier_raised, align 8, !dbg !4723
  %cmp = icmp eq i32 (%struct.tty_port*)* %2, null, !dbg !4724
  br i1 %cmp, label %if.then, label %if.end, !dbg !4725

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4726
  br label %return, !dbg !4726

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4727
  %ops1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 3, !dbg !4728
  %4 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops1, align 8, !dbg !4728
  %carrier_raised2 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %4, i32 0, i32 0, !dbg !4729
  %5 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %carrier_raised2, align 8, !dbg !4729
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4730
  %call = call i32 %5(%struct.tty_port* %6) #8, !dbg !4727
  store i32 %call, i32* %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4732
  ret i32 %7, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_raise_dtr_rts(%struct.tty_port* %port) #0 !dbg !4733 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4736
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 3, !dbg !4738
  %1 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !4738
  %dtr_rts = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %1, i32 0, i32 1, !dbg !4739
  %2 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts, align 8, !dbg !4739
  %tobool = icmp ne void (%struct.tty_port*, i32)* %2, null, !dbg !4736
  br i1 %tobool, label %if.then, label %if.end, !dbg !4740

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4741
  %ops1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 3, !dbg !4742
  %4 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops1, align 8, !dbg !4742
  %dtr_rts2 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %4, i32 0, i32 1, !dbg !4743
  %5 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts2, align 8, !dbg !4743
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4744
  call void %5(%struct.tty_port* %6, i32 1) #8, !dbg !4741
  br label %if.end, !dbg !4741

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_lower_dtr_rts(%struct.tty_port* %port) #0 !dbg !4746 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4749
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 3, !dbg !4751
  %1 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !4751
  %dtr_rts = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %1, i32 0, i32 1, !dbg !4752
  %2 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts, align 8, !dbg !4752
  %tobool = icmp ne void (%struct.tty_port*, i32)* %2, null, !dbg !4749
  br i1 %tobool, label %if.then, label %if.end, !dbg !4753

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4754
  %ops1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 3, !dbg !4755
  %4 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops1, align 8, !dbg !4755
  %dtr_rts2 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %4, i32 0, i32 1, !dbg !4756
  %5 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts2, align 8, !dbg !4756
  %6 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4757
  call void %5(%struct.tty_port* %6, i32 0) #8, !dbg !4754
  br label %if.end, !dbg !4754

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_block_til_ready(%struct.tty_port* %port, %struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !4759 {
entry:
  %lock.addr.i121 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i121, metadata !4352, metadata !DIExpression()), !dbg !4762
  %flags.addr.i122 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i122, metadata !4358, metadata !DIExpression()), !dbg !4764
  %tmp.i123 = alloca i32, align 4
  %tmp8.i124 = alloca i32, align 4
  %lock.addr.i119 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i119, metadata !3973, metadata !DIExpression()), !dbg !4765
  %pscr_ret__.i114 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i114, metadata !4772, metadata !DIExpression()), !dbg !4778
  %__vpp_verify.i115 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i115, metadata !4782, metadata !DIExpression()), !dbg !4784
  %pfo_val__.i116 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i116, metadata !4785, metadata !DIExpression()), !dbg !4787
  %tmp.i117 = alloca %struct.task_struct*, align 8
  %tmp1.i118 = alloca %struct.task_struct*, align 8
  %lock.addr.i111 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i111, metadata !4352, metadata !DIExpression()), !dbg !4788
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !4790
  %tmp.i112 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !4791
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4772, metadata !DIExpression()), !dbg !4798
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4782, metadata !DIExpression()), !dbg !4800
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4785, metadata !DIExpression()), !dbg !4801
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %do_clocal = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %flags = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy24 = alloca i64, align 8
  %__dummy225 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %__dummy73 = alloca i64, align 8
  %__dummy274 = alloca i64, align 8
  %tmp77 = alloca i32, align 4
  %__dummy81 = alloca i64, align 8
  %__dummy282 = alloca i64, align 8
  %tmp85 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.declare(metadata i32* %do_clocal, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i32 0, i32* %do_clocal, align 4, !dbg !4809
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %wait, metadata !4814, metadata !DIExpression()), !dbg !4826
  %flags2 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 0, !dbg !4826
  store i32 0, i32* %flags2, align 8, !dbg !4826
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 1, !dbg !4826
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4800
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4800
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !4801, !srcloc !4827
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4801
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4801
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4801
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4801
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4801
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4798
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4798
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4798
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4798
  %7 = bitcast %struct.task_struct* %6 to i8*, !dbg !4826
  store i8* %7, i8** %private, align 8, !dbg !4826
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 2, !dbg !4826
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8, !dbg !4826
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4826
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry3, i32 0, i32 0, !dbg !4826
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4826
  store %struct.list_head* %entry4, %struct.list_head** %next, align 8, !dbg !4826
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry3, i32 0, i32 1, !dbg !4826
  %entry5 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4826
  store %struct.list_head* %entry5, %struct.list_head** %prev, align 8, !dbg !4826
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4828
  %call6 = call zeroext i1 @tty_io_error(%struct.tty_struct* %8) #8, !dbg !4830
  br i1 %call6, label %if.then, label %if.end, !dbg !4831

if.then:                                          ; preds = %entry
  %9 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4832
  call void @tty_port_set_active(%struct.tty_port* %9, i1 zeroext true) #8, !dbg !4834
  store i32 0, i32* %retval, align 4, !dbg !4835
  br label %return, !dbg !4835

if.end:                                           ; preds = %entry
  %10 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4836
  %cmp = icmp eq %struct.file* %10, null, !dbg !4838
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !4839

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4840
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 7, !dbg !4841
  %12 = load i32, i32* %f_flags, align 8, !dbg !4841
  %and = and i32 %12, 2048, !dbg !4842
  %tobool = icmp ne i32 %and, 0, !dbg !4842
  br i1 %tobool, label %if.then7, label %if.end12, !dbg !4843

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %13 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4844
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 15, !dbg !4844
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 2, !dbg !4844
  %14 = load i32, i32* %c_cflag, align 8, !dbg !4844
  %and8 = and i32 %14, 4111, !dbg !4844
  %tobool9 = icmp ne i32 %and8, 0, !dbg !4844
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4847

if.then10:                                        ; preds = %if.then7
  %15 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4848
  call void @tty_port_raise_dtr_rts(%struct.tty_port* %15) #8, !dbg !4849
  br label %if.end11, !dbg !4849

if.end11:                                         ; preds = %if.then10, %if.then7
  %16 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4850
  call void @tty_port_set_active(%struct.tty_port* %16, i1 zeroext true) #8, !dbg !4851
  store i32 0, i32* %retval, align 4, !dbg !4852
  br label %return, !dbg !4852

if.end12:                                         ; preds = %lor.lhs.false
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4853
  %termios13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 15, !dbg !4853
  %c_cflag14 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios13, i32 0, i32 2, !dbg !4853
  %18 = load i32, i32* %c_cflag14, align 8, !dbg !4853
  %and15 = and i32 %18, 2048, !dbg !4853
  %tobool16 = icmp ne i32 %and15, 0, !dbg !4853
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4855

if.then17:                                        ; preds = %if.end12
  store i32 1, i32* %do_clocal, align 4, !dbg !4856
  br label %if.end18, !dbg !4857

if.end18:                                         ; preds = %if.then17, %if.end12
  store i32 0, i32* %retval1, align 4, !dbg !4858
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %if.end18
  br label %do.body19, !dbg !4860

do.body19:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4861, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4864, metadata !DIExpression()), !dbg !4863
  %cmp20 = icmp eq i64* %__dummy, %__dummy2, !dbg !4863
  %conv = zext i1 %cmp20 to i32, !dbg !4863
  store i32 1, i32* %tmp, align 4, !dbg !4863
  %19 = load i32, i32* %tmp, align 4, !dbg !4863
  br label %do.body21, !dbg !4865

do.body21:                                        ; preds = %do.body19
  br label %do.body22, !dbg !4866

do.body22:                                        ; preds = %do.body21
  br label %do.body23, !dbg !4867

do.body23:                                        ; preds = %do.body22
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !4869, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata i64* %__dummy225, metadata !4873, metadata !DIExpression()), !dbg !4872
  %cmp26 = icmp eq i64* %__dummy24, %__dummy225, !dbg !4872
  %conv27 = zext i1 %cmp26 to i32, !dbg !4872
  store i32 1, i32* %tmp28, align 4, !dbg !4872
  %20 = load i32, i32* %tmp28, align 4, !dbg !4872
  %call29 = call i64 @arch_local_irq_save() #8, !dbg !4874
  store i64 %call29, i64* %flags, align 8, !dbg !4874
  br label %do.end, !dbg !4874

do.end:                                           ; preds = %do.body23
  br label %do.end30, !dbg !4867

do.end30:                                         ; preds = %do.end
  br label %do.body31, !dbg !4866

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4875, !srcloc !4876
  br label %do.body32, !dbg !4875

do.body32:                                        ; preds = %do.body31
  %21 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4877
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 5, !dbg !4877
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4878
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !4879
  %rlock.i = bitcast %union.anon.0* %23 to %struct.raw_spinlock*, !dbg !4879
  br label %do.end34, !dbg !4877

do.end34:                                         ; preds = %do.body32
  br label %do.end35, !dbg !4875

do.end35:                                         ; preds = %do.end34
  br label %do.end36, !dbg !4866

do.end36:                                         ; preds = %do.end35
  br label %do.end37, !dbg !4865

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !4860

do.end38:                                         ; preds = %do.end37
  %24 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4880
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %24, i32 0, i32 7, !dbg !4881
  %25 = load i32, i32* %count, align 4, !dbg !4882
  %dec = add i32 %25, -1, !dbg !4882
  store i32 %dec, i32* %count, align 4, !dbg !4882
  %26 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4883
  %blocked_open = getelementptr inbounds %struct.tty_port, %struct.tty_port* %26, i32 0, i32 6, !dbg !4884
  %27 = load i32, i32* %blocked_open, align 8, !dbg !4885
  %inc = add i32 %27, 1, !dbg !4885
  store i32 %inc, i32* %blocked_open, align 8, !dbg !4885
  %28 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4886
  %lock39 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 5, !dbg !4887
  %29 = load i64, i64* %flags, align 8, !dbg !4888
  store %struct.spinlock* %lock39, %struct.spinlock** %lock.addr.i111, align 8
  store i64 %29, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !4889
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !4889
  store i32 1, i32* %tmp.i112, align 4, !dbg !4889
  %30 = load i32, i32* %tmp.i112, align 4, !dbg !4889
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !4890
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !4890
  store i32 1, i32* %tmp8.i, align 4, !dbg !4890
  %31 = load i32, i32* %tmp8.i, align 4, !dbg !4890
  %32 = load i64, i64* %flags.addr.i, align 8, !dbg !4891
  call void @arch_local_irq_restore(i64 %32) #9, !dbg !4891
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4892, !srcloc !4416
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i111, align 8, !dbg !4893
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4893
  %rlock.i113 = bitcast %union.anon.0* %34 to %struct.raw_spinlock*, !dbg !4893
  br label %while.body, !dbg !4894

while.body:                                       ; preds = %do.end38, %if.end69
  %35 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4895
  %termios40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 15, !dbg !4895
  %c_cflag41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios40, i32 0, i32 2, !dbg !4895
  %36 = load i32, i32* %c_cflag41, align 8, !dbg !4895
  %and42 = and i32 %36, 4111, !dbg !4895
  %tobool43 = icmp ne i32 %and42, 0, !dbg !4895
  br i1 %tobool43, label %land.lhs.true, label %if.end47, !dbg !4897

land.lhs.true:                                    ; preds = %while.body
  %37 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4898
  %call44 = call zeroext i1 @tty_port_initialized(%struct.tty_port* %37) #8, !dbg !4899
  br i1 %call44, label %if.then46, label %if.end47, !dbg !4900

if.then46:                                        ; preds = %land.lhs.true
  %38 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4901
  call void @tty_port_raise_dtr_rts(%struct.tty_port* %38) #8, !dbg !4902
  br label %if.end47, !dbg !4902

if.end47:                                         ; preds = %if.then46, %land.lhs.true, %while.body
  %39 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4903
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %39, i32 0, i32 8, !dbg !4904
  call void @prepare_to_wait(%struct.wait_queue_head* %open_wait, %struct.wait_queue_entry* %wait, i32 1) #8, !dbg !4905
  %40 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4906
  %call48 = call i32 @tty_hung_up_p(%struct.file* %40) #8, !dbg !4908
  %tobool49 = icmp ne i32 %call48, 0, !dbg !4908
  br i1 %tobool49, label %if.then52, label %lor.lhs.false50, !dbg !4909

lor.lhs.false50:                                  ; preds = %if.end47
  %41 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4910
  %call51 = call zeroext i1 @tty_port_initialized(%struct.tty_port* %41) #8, !dbg !4911
  br i1 %call51, label %if.end58, label %if.then52, !dbg !4912

if.then52:                                        ; preds = %lor.lhs.false50, %if.end47
  %42 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4913
  %flags53 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %42, i32 0, i32 10, !dbg !4916
  %43 = load i64, i64* %flags53, align 8, !dbg !4916
  %and54 = and i64 %43, 1, !dbg !4917
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4917
  br i1 %tobool55, label %if.then56, label %if.else, !dbg !4918

if.then56:                                        ; preds = %if.then52
  store i32 -11, i32* %retval1, align 4, !dbg !4919
  br label %if.end57, !dbg !4920

if.else:                                          ; preds = %if.then52
  store i32 -512, i32* %retval1, align 4, !dbg !4921
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then56
  br label %while.end, !dbg !4922

if.end58:                                         ; preds = %lor.lhs.false50
  %44 = load i32, i32* %do_clocal, align 4, !dbg !4923
  %tobool59 = icmp ne i32 %44, 0, !dbg !4923
  br i1 %tobool59, label %if.then63, label %lor.lhs.false60, !dbg !4925

lor.lhs.false60:                                  ; preds = %if.end58
  %45 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4926
  %call61 = call i32 @tty_port_carrier_raised(%struct.tty_port* %45) #8, !dbg !4927
  %tobool62 = icmp ne i32 %call61, 0, !dbg !4927
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !4928

if.then63:                                        ; preds = %lor.lhs.false60, %if.end58
  br label %while.end, !dbg !4929

if.end64:                                         ; preds = %lor.lhs.false60
  store i8* null, i8** %__vpp_verify.i115, align 8, !dbg !4784
  %46 = load i8*, i8** %__vpp_verify.i115, align 8, !dbg !4784
  %47 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #10, !dbg !4787, !srcloc !4827
  store i64 %47, i64* %pfo_val__.i116, align 8, !dbg !4787
  %48 = load i64, i64* %pfo_val__.i116, align 8, !dbg !4787
  %49 = inttoptr i64 %48 to %struct.task_struct*, !dbg !4787
  store %struct.task_struct* %49, %struct.task_struct** %tmp.i117, align 8, !dbg !4787
  %50 = load %struct.task_struct*, %struct.task_struct** %tmp.i117, align 8, !dbg !4787
  store %struct.task_struct* %50, %struct.task_struct** %pscr_ret__.i114, align 8, !dbg !4778
  %51 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i114, align 8, !dbg !4778
  store %struct.task_struct* %51, %struct.task_struct** %tmp1.i118, align 8, !dbg !4778
  %52 = load %struct.task_struct*, %struct.task_struct** %tmp1.i118, align 8, !dbg !4778
  %call66 = call i32 @signal_pending(%struct.task_struct* %52) #8, !dbg !4930
  %tobool67 = icmp ne i32 %call66, 0, !dbg !4930
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !4931

if.then68:                                        ; preds = %if.end64
  store i32 -512, i32* %retval1, align 4, !dbg !4932
  br label %while.end, !dbg !4934

if.end69:                                         ; preds = %if.end64
  %53 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4935
  call void @tty_unlock(%struct.tty_struct* %53) #8, !dbg !4936
  call void @schedule() #8, !dbg !4937
  %54 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4938
  call void @tty_lock(%struct.tty_struct* %54) #8, !dbg !4939
  br label %while.body, !dbg !4894, !llvm.loop !4940

while.end:                                        ; preds = %if.then68, %if.then63, %if.end57
  %55 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4942
  %open_wait70 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %55, i32 0, i32 8, !dbg !4943
  call void @finish_wait(%struct.wait_queue_head* %open_wait70, %struct.wait_queue_entry* %wait) #8, !dbg !4944
  br label %do.body71, !dbg !4945

do.body71:                                        ; preds = %while.end
  br label %do.body72, !dbg !4946

do.body72:                                        ; preds = %do.body71
  call void @llvm.dbg.declare(metadata i64* %__dummy73, metadata !4947, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.declare(metadata i64* %__dummy274, metadata !4950, metadata !DIExpression()), !dbg !4949
  %cmp75 = icmp eq i64* %__dummy73, %__dummy274, !dbg !4949
  %conv76 = zext i1 %cmp75 to i32, !dbg !4949
  store i32 1, i32* %tmp77, align 4, !dbg !4949
  %56 = load i32, i32* %tmp77, align 4, !dbg !4949
  br label %do.body78, !dbg !4951

do.body78:                                        ; preds = %do.body72
  br label %do.body79, !dbg !4952

do.body79:                                        ; preds = %do.body78
  br label %do.body80, !dbg !4953

do.body80:                                        ; preds = %do.body79
  call void @llvm.dbg.declare(metadata i64* %__dummy81, metadata !4955, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.declare(metadata i64* %__dummy282, metadata !4959, metadata !DIExpression()), !dbg !4958
  %cmp83 = icmp eq i64* %__dummy81, %__dummy282, !dbg !4958
  %conv84 = zext i1 %cmp83 to i32, !dbg !4958
  store i32 1, i32* %tmp85, align 4, !dbg !4958
  %57 = load i32, i32* %tmp85, align 4, !dbg !4958
  %call86 = call i64 @arch_local_irq_save() #8, !dbg !4960
  store i64 %call86, i64* %flags, align 8, !dbg !4960
  br label %do.end87, !dbg !4960

do.end87:                                         ; preds = %do.body80
  br label %do.end88, !dbg !4953

do.end88:                                         ; preds = %do.end87
  br label %do.body89, !dbg !4952

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4961, !srcloc !4962
  br label %do.body90, !dbg !4961

do.body90:                                        ; preds = %do.body89
  %58 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4963
  %lock91 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %58, i32 0, i32 5, !dbg !4963
  store %struct.spinlock* %lock91, %struct.spinlock** %lock.addr.i119, align 8
  %59 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i119, align 8, !dbg !4964
  %60 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %59, i32 0, i32 0, !dbg !4965
  %rlock.i120 = bitcast %union.anon.0* %60 to %struct.raw_spinlock*, !dbg !4965
  br label %do.end93, !dbg !4963

do.end93:                                         ; preds = %do.body90
  br label %do.end94, !dbg !4961

do.end94:                                         ; preds = %do.end93
  br label %do.end95, !dbg !4952

do.end95:                                         ; preds = %do.end94
  br label %do.end96, !dbg !4951

do.end96:                                         ; preds = %do.end95
  br label %do.end97, !dbg !4946

do.end97:                                         ; preds = %do.end96
  %61 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4966
  %call98 = call i32 @tty_hung_up_p(%struct.file* %61) #8, !dbg !4968
  %tobool99 = icmp ne i32 %call98, 0, !dbg !4968
  br i1 %tobool99, label %if.end103, label %if.then100, !dbg !4969

if.then100:                                       ; preds = %do.end97
  %62 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4970
  %count101 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %62, i32 0, i32 7, !dbg !4971
  %63 = load i32, i32* %count101, align 4, !dbg !4972
  %inc102 = add i32 %63, 1, !dbg !4972
  store i32 %inc102, i32* %count101, align 4, !dbg !4972
  br label %if.end103, !dbg !4970

if.end103:                                        ; preds = %if.then100, %do.end97
  %64 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4973
  %blocked_open104 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %64, i32 0, i32 6, !dbg !4974
  %65 = load i32, i32* %blocked_open104, align 8, !dbg !4975
  %dec105 = add i32 %65, -1, !dbg !4975
  store i32 %dec105, i32* %blocked_open104, align 8, !dbg !4975
  %66 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4976
  %lock106 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %66, i32 0, i32 5, !dbg !4977
  %67 = load i64, i64* %flags, align 8, !dbg !4978
  store %struct.spinlock* %lock106, %struct.spinlock** %lock.addr.i121, align 8
  store i64 %67, i64* %flags.addr.i122, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !4979
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !4979
  store i32 1, i32* %tmp.i123, align 4, !dbg !4979
  %68 = load i32, i32* %tmp.i123, align 4, !dbg !4979
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !4980
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !4980
  store i32 1, i32* %tmp8.i124, align 4, !dbg !4980
  %69 = load i32, i32* %tmp8.i124, align 4, !dbg !4980
  %70 = load i64, i64* %flags.addr.i122, align 8, !dbg !4981
  call void @arch_local_irq_restore(i64 %70) #9, !dbg !4981
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4982, !srcloc !4416
  %71 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i121, align 8, !dbg !4983
  %72 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %71, i32 0, i32 0, !dbg !4983
  %rlock.i125 = bitcast %union.anon.0* %72 to %struct.raw_spinlock*, !dbg !4983
  %73 = load i32, i32* %retval1, align 4, !dbg !4984
  %cmp107 = icmp eq i32 %73, 0, !dbg !4986
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !4987

if.then109:                                       ; preds = %if.end103
  %74 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !4988
  call void @tty_port_set_active(%struct.tty_port* %74, i1 zeroext true) #8, !dbg !4989
  br label %if.end110, !dbg !4989

if.end110:                                        ; preds = %if.then109, %if.end103
  %75 = load i32, i32* %retval1, align 4, !dbg !4990
  store i32 %75, i32* %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

return:                                           ; preds = %if.end110, %if.end11, %if.then
  %76 = load i32, i32* %retval, align 4, !dbg !4992
  ret i32 %76, !dbg !4992
}

; Function Attrs: noredzone
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry*, i32, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @tty_io_error(%struct.tty_struct* %tty) #0 !dbg !4993 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4998
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 21, !dbg !4999
  %call = call zeroext i1 @test_bit(i64 1, i64* %flags) #8, !dbg !5000
  ret i1 %call, !dbg !5001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @tty_port_initialized(%struct.tty_port* %port) #0 !dbg !5002 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5007
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 11, !dbg !5008
  %call = call zeroext i1 @test_bit(i64 0, i64* %iflags) #8, !dbg !5009
  ret i1 %call, !dbg !5010
}

; Function Attrs: noredzone
declare dso_local void @prepare_to_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @tty_hung_up_p(%struct.file*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !5011 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5016
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #8, !dbg !5016
  %tobool = icmp ne i32 %call, 0, !dbg !5016
  %lnot = xor i1 %tobool, true, !dbg !5016
  %lnot1 = xor i1 %lnot, true, !dbg !5016
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5016
  %conv = sext i32 %lnot.ext to i64, !dbg !5016
  %conv2 = trunc i64 %conv to i32, !dbg !5016
  ret i32 %conv2, !dbg !5017
}

; Function Attrs: noredzone
declare dso_local void @tty_unlock(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local void @schedule() #3

; Function Attrs: noredzone
declare dso_local void @tty_lock(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_close_start(%struct.tty_port* %port, %struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !5018 {
entry:
  %lock.addr.i65 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i65, metadata !4352, metadata !DIExpression()), !dbg !5019
  %flags.addr.i66 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i66, metadata !4358, metadata !DIExpression()), !dbg !5021
  %tmp.i67 = alloca i32, align 4
  %tmp8.i68 = alloca i32, align 4
  %lock.addr.i63 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i63, metadata !4352, metadata !DIExpression()), !dbg !5022
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !5026
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !5027
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5042
  %call = call i32 @tty_hung_up_p(%struct.file* %0) #8, !dbg !5044
  %tobool = icmp ne i32 %call, 0, !dbg !5044
  br i1 %tobool, label %if.then, label %if.end, !dbg !5045

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5046
  br label %return, !dbg !5046

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5047

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5048

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5049, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5052, metadata !DIExpression()), !dbg !5051
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5051
  %conv = zext i1 %cmp to i32, !dbg !5051
  store i32 1, i32* %tmp, align 4, !dbg !5051
  %1 = load i32, i32* %tmp, align 4, !dbg !5051
  br label %do.body2, !dbg !5053

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5054

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5055

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5057, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5061, metadata !DIExpression()), !dbg !5060
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5060
  %conv8 = zext i1 %cmp7 to i32, !dbg !5060
  store i32 1, i32* %tmp9, align 4, !dbg !5060
  %2 = load i32, i32* %tmp9, align 4, !dbg !5060
  %call10 = call i64 @arch_local_irq_save() #8, !dbg !5062
  store i64 %call10, i64* %flags, align 8, !dbg !5062
  br label %do.end, !dbg !5062

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !5055

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5054

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5063, !srcloc !5064
  br label %do.body13, !dbg !5063

do.body13:                                        ; preds = %do.body12
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5065
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 5, !dbg !5065
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5066
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !5067
  %rlock.i = bitcast %union.anon.0* %5 to %struct.raw_spinlock*, !dbg !5067
  br label %do.end15, !dbg !5065

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5063

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5054

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5053

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5048

do.end19:                                         ; preds = %do.end18
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5068
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 22, !dbg !5070
  %7 = load i32, i32* %count, align 8, !dbg !5070
  %cmp20 = icmp eq i32 %7, 1, !dbg !5071
  br i1 %cmp20, label %land.lhs.true, label %if.end31, !dbg !5072

land.lhs.true:                                    ; preds = %do.end19
  %8 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5073
  %count22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %8, i32 0, i32 7, !dbg !5074
  %9 = load i32, i32* %count22, align 4, !dbg !5074
  %cmp23 = icmp ne i32 %9, 1, !dbg !5075
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !5076

if.then25:                                        ; preds = %land.lhs.true
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5077
  %call26 = call i8* @tty_driver_name(%struct.tty_struct* %10) #8, !dbg !5077
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5077
  %call27 = call i8* @tty_name(%struct.tty_struct* %11) #8, !dbg !5077
  %12 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5077
  %count28 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %12, i32 0, i32 7, !dbg !5077
  %13 = load i32, i32* %count28, align 4, !dbg !5077
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %call26, i8* %call27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tty_port_close_start, i64 0, i64 0), i32 %13) #11, !dbg !5077
  %14 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5079
  %count30 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %14, i32 0, i32 7, !dbg !5080
  store i32 1, i32* %count30, align 4, !dbg !5081
  br label %if.end31, !dbg !5082

if.end31:                                         ; preds = %if.then25, %land.lhs.true, %do.end19
  %15 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5083
  %count32 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 7, !dbg !5085
  %16 = load i32, i32* %count32, align 4, !dbg !5086
  %dec = add i32 %16, -1, !dbg !5086
  store i32 %dec, i32* %count32, align 4, !dbg !5086
  %cmp33 = icmp slt i32 %dec, 0, !dbg !5087
  br i1 %cmp33, label %if.then35, label %if.end41, !dbg !5088

if.then35:                                        ; preds = %if.end31
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5089
  %call36 = call i8* @tty_driver_name(%struct.tty_struct* %17) #8, !dbg !5089
  %18 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5089
  %call37 = call i8* @tty_name(%struct.tty_struct* %18) #8, !dbg !5089
  %19 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5089
  %count38 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 7, !dbg !5089
  %20 = load i32, i32* %count38, align 4, !dbg !5089
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %call36, i8* %call37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tty_port_close_start, i64 0, i64 0), i32 %20) #11, !dbg !5089
  %21 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5091
  %count40 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 7, !dbg !5092
  store i32 0, i32* %count40, align 4, !dbg !5093
  br label %if.end41, !dbg !5094

if.end41:                                         ; preds = %if.then35, %if.end31
  %22 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5095
  %count42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 7, !dbg !5096
  %23 = load i32, i32* %count42, align 4, !dbg !5096
  %tobool43 = icmp ne i32 %23, 0, !dbg !5095
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !5097

if.then44:                                        ; preds = %if.end41
  %24 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5098
  %lock45 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %24, i32 0, i32 5, !dbg !5099
  %25 = load i64, i64* %flags, align 8, !dbg !5100
  store %struct.spinlock* %lock45, %struct.spinlock** %lock.addr.i63, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !5101
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !5101
  store i32 1, i32* %tmp.i, align 4, !dbg !5101
  %26 = load i32, i32* %tmp.i, align 4, !dbg !5101
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !5102
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !5102
  store i32 1, i32* %tmp8.i, align 4, !dbg !5102
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !5102
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !5103
  call void @arch_local_irq_restore(i64 %28) #9, !dbg !5103
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5104, !srcloc !4416
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i63, align 8, !dbg !5105
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !5105
  %rlock.i64 = bitcast %union.anon.0* %30 to %struct.raw_spinlock*, !dbg !5105
  store i32 0, i32* %retval, align 4, !dbg !5106
  br label %return, !dbg !5106

if.end46:                                         ; preds = %if.end41
  %31 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5107
  %lock47 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %31, i32 0, i32 5, !dbg !5108
  %32 = load i64, i64* %flags, align 8, !dbg !5109
  store %struct.spinlock* %lock47, %struct.spinlock** %lock.addr.i65, align 8
  store i64 %32, i64* %flags.addr.i66, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !5110
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !5110
  store i32 1, i32* %tmp.i67, align 4, !dbg !5110
  %33 = load i32, i32* %tmp.i67, align 4, !dbg !5110
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !5111
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !5111
  store i32 1, i32* %tmp8.i68, align 4, !dbg !5111
  %34 = load i32, i32* %tmp8.i68, align 4, !dbg !5111
  %35 = load i64, i64* %flags.addr.i66, align 8, !dbg !5112
  call void @arch_local_irq_restore(i64 %35) #9, !dbg !5112
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5113, !srcloc !4416
  %36 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i65, align 8, !dbg !5114
  %37 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %36, i32 0, i32 0, !dbg !5114
  %rlock.i69 = bitcast %union.anon.0* %37 to %struct.raw_spinlock*, !dbg !5114
  %38 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5115
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 40, !dbg !5116
  store i32 1, i32* %closing, align 8, !dbg !5117
  %39 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5118
  %call48 = call zeroext i1 @tty_port_initialized(%struct.tty_port* %39) #8, !dbg !5120
  br i1 %call48, label %if.then49, label %if.end62, !dbg !5121

if.then49:                                        ; preds = %if.end46
  %40 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5122
  %flow_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 24, !dbg !5125
  %bf.load = load i8, i8* %flow_stopped, align 4, !dbg !5125
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5125
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5125
  %bf.cast = zext i8 %bf.clear to i64, !dbg !5125
  %tobool50 = icmp ne i64 %bf.cast, 0, !dbg !5122
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5126

if.then51:                                        ; preds = %if.then49
  %41 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5127
  call void @tty_driver_flush_buffer(%struct.tty_struct* %41) #8, !dbg !5128
  br label %if.end52, !dbg !5128

if.end52:                                         ; preds = %if.then51, %if.then49
  %42 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5129
  %closing_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %42, i32 0, i32 17, !dbg !5131
  %43 = load i32, i32* %closing_wait, align 4, !dbg !5131
  %cmp53 = icmp ne i32 %43, 65535, !dbg !5132
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !5133

if.then55:                                        ; preds = %if.end52
  %44 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5134
  %45 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5135
  %closing_wait56 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %45, i32 0, i32 17, !dbg !5136
  %46 = load i32, i32* %closing_wait56, align 4, !dbg !5136
  %conv57 = zext i32 %46 to i64, !dbg !5135
  call void @tty_wait_until_sent(%struct.tty_struct* %44, i64 %conv57) #8, !dbg !5137
  br label %if.end58, !dbg !5137

if.end58:                                         ; preds = %if.then55, %if.end52
  %47 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5138
  %drain_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %47, i32 0, i32 18, !dbg !5140
  %48 = load i32, i32* %drain_delay, align 8, !dbg !5140
  %tobool59 = icmp ne i32 %48, 0, !dbg !5138
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !5141

if.then60:                                        ; preds = %if.end58
  %49 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5142
  %50 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5143
  call void @tty_port_drain_delay(%struct.tty_port* %49, %struct.tty_struct* %50) #8, !dbg !5144
  br label %if.end61, !dbg !5144

if.end61:                                         ; preds = %if.then60, %if.end58
  br label %if.end62, !dbg !5145

if.end62:                                         ; preds = %if.end61, %if.end46
  %51 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5146
  call void @tty_ldisc_flush(%struct.tty_struct* %51) #8, !dbg !5147
  store i32 1, i32* %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

return:                                           ; preds = %if.end62, %if.then44, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !5149
  ret i32 %52, !dbg !5149
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @tty_driver_name(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local i8* @tty_name(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local void @tty_wait_until_sent(%struct.tty_struct*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_drain_delay(%struct.tty_port* %port, %struct.tty_struct* %tty) #0 !dbg !5150 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %bps = alloca i32, align 4
  %timeout = alloca i64, align 8
  %__UNIQUE_ID___x212 = alloca i64, align 8
  %__UNIQUE_ID___y213 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5153, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata i32* %bps, metadata !5155, metadata !DIExpression()), !dbg !5156
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5157
  %call = call i32 @tty_get_baud_rate(%struct.tty_struct* %0) #8, !dbg !5158
  store i32 %call, i32* %bps, align 4, !dbg !5156
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5159, metadata !DIExpression()), !dbg !5160
  %1 = load i32, i32* %bps, align 4, !dbg !5161
  %cmp = icmp ugt i32 %1, 1200, !dbg !5163
  br i1 %cmp, label %if.then, label %if.else, !dbg !5164

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5165
  %drain_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 18, !dbg !5167
  %3 = load i32, i32* %drain_delay, align 8, !dbg !5167
  %mul = mul i32 2500, %3, !dbg !5168
  %4 = load i32, i32* %bps, align 4, !dbg !5169
  %div = udiv i32 %mul, %4, !dbg !5170
  %conv = zext i32 %div to i64, !dbg !5171
  store i64 %conv, i64* %timeout, align 8, !dbg !5172
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x212, metadata !5173, metadata !DIExpression()), !dbg !5175
  %5 = load i64, i64* %timeout, align 8, !dbg !5175
  store i64 %5, i64* %__UNIQUE_ID___x212, align 8, !dbg !5175
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y213, metadata !5176, metadata !DIExpression()), !dbg !5175
  store i64 25, i64* %__UNIQUE_ID___y213, align 8, !dbg !5175
  %6 = load i64, i64* %__UNIQUE_ID___x212, align 8, !dbg !5175
  %7 = load i64, i64* %__UNIQUE_ID___y213, align 8, !dbg !5175
  %cmp1 = icmp sgt i64 %6, %7, !dbg !5175
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5175

cond.true:                                        ; preds = %if.then
  %8 = load i64, i64* %__UNIQUE_ID___x212, align 8, !dbg !5175
  br label %cond.end, !dbg !5175

cond.false:                                       ; preds = %if.then
  %9 = load i64, i64* %__UNIQUE_ID___y213, align 8, !dbg !5175
  br label %cond.end, !dbg !5175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5175
  store i64 %cond, i64* %tmp, align 8, !dbg !5175
  %10 = load i64, i64* %tmp, align 8, !dbg !5175
  store i64 %10, i64* %timeout, align 8, !dbg !5177
  br label %if.end, !dbg !5178

if.else:                                          ; preds = %entry
  store i64 500, i64* %timeout, align 8, !dbg !5179
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %11 = load i64, i64* %timeout, align 8, !dbg !5181
  %call3 = call i64 @schedule_timeout_interruptible(i64 %11) #8, !dbg !5182
  ret void, !dbg !5183
}

; Function Attrs: noredzone
declare dso_local void @tty_ldisc_flush(%struct.tty_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_close_end(%struct.tty_port* %port, %struct.tty_struct* %tty) #0 !dbg !5184 {
entry:
  %lock.addr.i59 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i59, metadata !4352, metadata !DIExpression()), !dbg !5185
  %flags.addr.i60 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i60, metadata !4358, metadata !DIExpression()), !dbg !5187
  %tmp.i61 = alloca i32, align 4
  %tmp8.i62 = alloca i32, align 4
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !3973, metadata !DIExpression()), !dbg !5188
  %lock.addr.i55 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i55, metadata !4352, metadata !DIExpression()), !dbg !5197
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4358, metadata !DIExpression()), !dbg !5199
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3973, metadata !DIExpression()), !dbg !5200
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  %__dummy36 = alloca i64, align 8
  %__dummy237 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5213
  call void @tty_ldisc_flush(%struct.tty_struct* %0) #8, !dbg !5214
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5215
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 40, !dbg !5216
  store i32 0, i32* %closing, align 8, !dbg !5217
  br label %do.body, !dbg !5218

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5219

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5220, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5223, metadata !DIExpression()), !dbg !5222
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5222
  %conv = zext i1 %cmp to i32, !dbg !5222
  store i32 1, i32* %tmp, align 4, !dbg !5222
  %2 = load i32, i32* %tmp, align 4, !dbg !5222
  br label %do.body2, !dbg !5224

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5225

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5226

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5228, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5232, metadata !DIExpression()), !dbg !5231
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5231
  %conv8 = zext i1 %cmp7 to i32, !dbg !5231
  store i32 1, i32* %tmp9, align 4, !dbg !5231
  %3 = load i32, i32* %tmp9, align 4, !dbg !5231
  %call = call i64 @arch_local_irq_save() #8, !dbg !5233
  store i64 %call, i64* %flags, align 8, !dbg !5233
  br label %do.end, !dbg !5233

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5226

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5225

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5234, !srcloc !5235
  br label %do.body12, !dbg !5234

do.body12:                                        ; preds = %do.body11
  %4 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5236
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 5, !dbg !5236
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5237
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5238
  %rlock.i = bitcast %union.anon.0* %6 to %struct.raw_spinlock*, !dbg !5238
  br label %do.end14, !dbg !5236

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5234

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5225

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5224

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5219

do.end18:                                         ; preds = %do.end17
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5239
  %blocked_open = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 6, !dbg !5240
  %8 = load i32, i32* %blocked_open, align 8, !dbg !5240
  %tobool = icmp ne i32 %8, 0, !dbg !5239
  br i1 %tobool, label %if.then, label %if.end53, !dbg !5241

if.then:                                          ; preds = %do.end18
  %9 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5242
  %lock19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %9, i32 0, i32 5, !dbg !5243
  %10 = load i64, i64* %flags, align 8, !dbg !5244
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i55, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !5245
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !5245
  store i32 1, i32* %tmp.i, align 4, !dbg !5245
  %11 = load i32, i32* %tmp.i, align 4, !dbg !5245
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !5246
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !5246
  store i32 1, i32* %tmp8.i, align 4, !dbg !5246
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !5246
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !5247
  call void @arch_local_irq_restore(i64 %13) #9, !dbg !5247
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5248, !srcloc !4416
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i55, align 8, !dbg !5249
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !5249
  %rlock.i56 = bitcast %union.anon.0* %15 to %struct.raw_spinlock*, !dbg !5249
  %16 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5250
  %close_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 16, !dbg !5252
  %17 = load i32, i32* %close_delay, align 8, !dbg !5252
  %tobool20 = icmp ne i32 %17, 0, !dbg !5250
  br i1 %tobool20, label %if.then21, label %if.end, !dbg !5253

if.then21:                                        ; preds = %if.then
  %18 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5254
  %close_delay22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 16, !dbg !5255
  %19 = load i32, i32* %close_delay22, align 8, !dbg !5255
  %conv23 = zext i32 %19 to i64, !dbg !5254
  %call24 = call i32 @jiffies_to_msecs(i64 %conv23) #8, !dbg !5256
  %call25 = call i64 @msleep_interruptible(i32 %call24) #8, !dbg !5257
  br label %if.end, !dbg !5257

if.end:                                           ; preds = %if.then21, %if.then
  br label %do.body26, !dbg !5258

do.body26:                                        ; preds = %if.end
  br label %do.body27, !dbg !5259

do.body27:                                        ; preds = %do.body26
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !5260, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata i64* %__dummy229, metadata !5263, metadata !DIExpression()), !dbg !5262
  %cmp30 = icmp eq i64* %__dummy28, %__dummy229, !dbg !5262
  %conv31 = zext i1 %cmp30 to i32, !dbg !5262
  store i32 1, i32* %tmp32, align 4, !dbg !5262
  %20 = load i32, i32* %tmp32, align 4, !dbg !5262
  br label %do.body33, !dbg !5264

do.body33:                                        ; preds = %do.body27
  br label %do.body34, !dbg !5265

do.body34:                                        ; preds = %do.body33
  br label %do.body35, !dbg !5266

do.body35:                                        ; preds = %do.body34
  call void @llvm.dbg.declare(metadata i64* %__dummy36, metadata !5268, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.declare(metadata i64* %__dummy237, metadata !5272, metadata !DIExpression()), !dbg !5271
  %cmp38 = icmp eq i64* %__dummy36, %__dummy237, !dbg !5271
  %conv39 = zext i1 %cmp38 to i32, !dbg !5271
  store i32 1, i32* %tmp40, align 4, !dbg !5271
  %21 = load i32, i32* %tmp40, align 4, !dbg !5271
  %call41 = call i64 @arch_local_irq_save() #8, !dbg !5273
  store i64 %call41, i64* %flags, align 8, !dbg !5273
  br label %do.end42, !dbg !5273

do.end42:                                         ; preds = %do.body35
  br label %do.end43, !dbg !5266

do.end43:                                         ; preds = %do.end42
  br label %do.body44, !dbg !5265

do.body44:                                        ; preds = %do.end43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5274, !srcloc !5275
  br label %do.body45, !dbg !5274

do.body45:                                        ; preds = %do.body44
  %22 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5276
  %lock46 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 5, !dbg !5276
  store %struct.spinlock* %lock46, %struct.spinlock** %lock.addr.i57, align 8
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !5277
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5278
  %rlock.i58 = bitcast %union.anon.0* %24 to %struct.raw_spinlock*, !dbg !5278
  br label %do.end48, !dbg !5276

do.end48:                                         ; preds = %do.body45
  br label %do.end49, !dbg !5274

do.end49:                                         ; preds = %do.end48
  br label %do.end50, !dbg !5265

do.end50:                                         ; preds = %do.end49
  br label %do.end51, !dbg !5264

do.end51:                                         ; preds = %do.end50
  br label %do.end52, !dbg !5259

do.end52:                                         ; preds = %do.end51
  %25 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5279
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 8, !dbg !5279
  call void @__wake_up(%struct.wait_queue_head* %open_wait, i32 1, i32 1, i8* null) #8, !dbg !5279
  br label %if.end53, !dbg !5280

if.end53:                                         ; preds = %do.end52, %do.end18
  %26 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5281
  %lock54 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %26, i32 0, i32 5, !dbg !5282
  %27 = load i64, i64* %flags, align 8, !dbg !5283
  store %struct.spinlock* %lock54, %struct.spinlock** %lock.addr.i59, align 8
  store i64 %27, i64* %flags.addr.i60, align 8
  call void @llvm.dbg.declare(metadata !162, metadata !4401, metadata !DIExpression()) #6, !dbg !5284
  call void @llvm.dbg.declare(metadata !162, metadata !4405, metadata !DIExpression()) #6, !dbg !5284
  store i32 1, i32* %tmp.i61, align 4, !dbg !5284
  %28 = load i32, i32* %tmp.i61, align 4, !dbg !5284
  call void @llvm.dbg.declare(metadata !162, metadata !4406, metadata !DIExpression()) #6, !dbg !5285
  call void @llvm.dbg.declare(metadata !162, metadata !4412, metadata !DIExpression()) #6, !dbg !5285
  store i32 1, i32* %tmp8.i62, align 4, !dbg !5285
  %29 = load i32, i32* %tmp8.i62, align 4, !dbg !5285
  %30 = load i64, i64* %flags.addr.i60, align 8, !dbg !5286
  call void @arch_local_irq_restore(i64 %30) #9, !dbg !5286
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5287, !srcloc !4416
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i59, align 8, !dbg !5288
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !5288
  %rlock.i63 = bitcast %union.anon.0* %32 to %struct.raw_spinlock*, !dbg !5288
  %33 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5289
  call void @tty_port_set_active(%struct.tty_port* %33, i1 zeroext false) #8, !dbg !5290
  ret void, !dbg !5291
}

; Function Attrs: noredzone
declare dso_local i64 @msleep_interruptible(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @jiffies_to_msecs(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_port_close(%struct.tty_port* %port, %struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !5292 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5299, metadata !DIExpression()), !dbg !5300
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5301
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5303
  %2 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5304
  %call = call i32 @tty_port_close_start(%struct.tty_port* %0, %struct.tty_struct* %1, %struct.file* %2) #8, !dbg !5305
  %cmp = icmp eq i32 %call, 0, !dbg !5306
  br i1 %cmp, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %entry
  br label %return, !dbg !5308

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5309
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5310
  call void @tty_port_shutdown(%struct.tty_port* %3, %struct.tty_struct* %4) #8, !dbg !5311
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5312
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 12, !dbg !5314
  %bf.load = load i8, i8* %console, align 8, !dbg !5314
  %bf.clear = and i8 %bf.load, 1, !dbg !5314
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5312
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5315

if.then1:                                         ; preds = %if.end
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5316
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 21, !dbg !5317
  call void @set_bit(i64 1, i64* %flags) #8, !dbg !5318
  br label %if.end2, !dbg !5318

if.end2:                                          ; preds = %if.then1, %if.end
  %7 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5319
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5320
  call void @tty_port_close_end(%struct.tty_port* %7, %struct.tty_struct* %8) #8, !dbg !5321
  %9 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5322
  call void @tty_port_tty_set(%struct.tty_port* %9, %struct.tty_struct* null) #8, !dbg !5323
  br label %return, !dbg !5324

return:                                           ; preds = %if.end2, %if.then
  ret void, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_install(%struct.tty_port* %port, %struct.tty_driver* %driver, %struct.tty_struct* %tty) #0 !dbg !5325 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %driver.addr = alloca %struct.tty_driver*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5334
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5335
  %port1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 44, !dbg !5336
  store %struct.tty_port* %0, %struct.tty_port** %port1, align 8, !dbg !5337
  %2 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !5338
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5339
  %call = call i32 @tty_standard_install(%struct.tty_driver* %2, %struct.tty_struct* %3) #8, !dbg !5340
  ret i32 %call, !dbg !5341
}

; Function Attrs: noredzone
declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_port_open(%struct.tty_port* %port, %struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !5342 {
entry:
  %lock.addr.i14 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i14, metadata !5343, metadata !DIExpression()), !dbg !5347
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5349, metadata !DIExpression()), !dbg !5351
  %retval = alloca i32, align 4
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %retval3 = alloca i32, align 4
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5359
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 5, !dbg !5360
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #9, !dbg !5361
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5364, !srcloc !5366
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5367
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !5367
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*, !dbg !5367
  %3 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5369
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 7, !dbg !5370
  %4 = load i32, i32* %count, align 4, !dbg !5371
  %inc = add i32 %4, 1, !dbg !5371
  store i32 %inc, i32* %count, align 4, !dbg !5371
  %5 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5372
  %lock1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 5, !dbg !5373
  store %struct.spinlock* %lock1, %struct.spinlock** %lock.addr.i14, align 8
  call void @arch_local_irq_enable() #9, !dbg !5374
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5377, !srcloc !5379
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i14, align 8, !dbg !5380
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5380
  %rlock.i15 = bitcast %union.anon.0* %7 to %struct.raw_spinlock*, !dbg !5380
  %8 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5382
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5383
  call void @tty_port_tty_set(%struct.tty_port* %8, %struct.tty_struct* %9) #8, !dbg !5384
  %10 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5385
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 13, !dbg !5386
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !5387
  %11 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5388
  %call = call zeroext i1 @tty_port_initialized(%struct.tty_port* %11) #8, !dbg !5390
  br i1 %call, label %if.end11, label %if.then, !dbg !5391

if.then:                                          ; preds = %entry
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5392
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 21, !dbg !5394
  call void @clear_bit(i64 1, i64* %flags) #8, !dbg !5395
  %13 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5396
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 3, !dbg !5398
  %14 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8, !dbg !5398
  %activate = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %14, i32 0, i32 3, !dbg !5399
  %15 = load i32 (%struct.tty_port*, %struct.tty_struct*)*, i32 (%struct.tty_port*, %struct.tty_struct*)** %activate, align 8, !dbg !5399
  %tobool = icmp ne i32 (%struct.tty_port*, %struct.tty_struct*)* %15, null, !dbg !5396
  br i1 %tobool, label %if.then2, label %if.end10, !dbg !5400

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %retval3, metadata !5401, metadata !DIExpression()), !dbg !5403
  %16 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5404
  %ops4 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 3, !dbg !5405
  %17 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops4, align 8, !dbg !5405
  %activate5 = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %17, i32 0, i32 3, !dbg !5406
  %18 = load i32 (%struct.tty_port*, %struct.tty_struct*)*, i32 (%struct.tty_port*, %struct.tty_struct*)** %activate5, align 8, !dbg !5406
  %19 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5407
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5408
  %call6 = call i32 %18(%struct.tty_port* %19, %struct.tty_struct* %20) #8, !dbg !5404
  store i32 %call6, i32* %retval3, align 4, !dbg !5403
  %21 = load i32, i32* %retval3, align 4, !dbg !5409
  %tobool7 = icmp ne i32 %21, 0, !dbg !5409
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5411

if.then8:                                         ; preds = %if.then2
  %22 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5412
  %mutex9 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 13, !dbg !5414
  call void @mutex_unlock(%struct.mutex* %mutex9) #8, !dbg !5415
  %23 = load i32, i32* %retval3, align 4, !dbg !5416
  store i32 %23, i32* %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end:                                           ; preds = %if.then2
  br label %if.end10, !dbg !5418

if.end10:                                         ; preds = %if.end, %if.then
  %24 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5419
  call void @tty_port_set_initialized(%struct.tty_port* %24, i1 zeroext true) #8, !dbg !5420
  br label %if.end11, !dbg !5421

if.end11:                                         ; preds = %if.end10, %entry
  %25 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5422
  %mutex12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 13, !dbg !5423
  call void @mutex_unlock(%struct.mutex* %mutex12) #8, !dbg !5424
  %26 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5425
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5426
  %28 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5427
  %call13 = call i32 @tty_port_block_til_ready(%struct.tty_port* %26, %struct.tty_struct* %27, %struct.file* %28) #8, !dbg !5428
  store i32 %call13, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

return:                                           ; preds = %if.end11, %if.then8
  %29 = load i32, i32* %retval, align 4, !dbg !5430
  ret i32 %29, !dbg !5430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5431 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5432, metadata !DIExpression()), !dbg !5434
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5436, metadata !DIExpression()), !dbg !5437
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4586, metadata !DIExpression()), !dbg !5438
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4596, metadata !DIExpression()), !dbg !5440
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5443, metadata !DIExpression()), !dbg !5444
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5445
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5446
  %div = sdiv i64 %1, 64, !dbg !5446
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5447
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5445
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5448
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5449
  %conv.i = trunc i64 %4 to i32, !dbg !5449
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5450
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5451
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5451
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5451
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5452
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5453
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5454
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !5456
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5457

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5458
  %12 = bitcast i64* %11 to i8*, !dbg !5458
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5458
  %shr.i = ashr i64 %13, 3, !dbg !5458
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5458
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5460
  %and.i = and i64 %14, 7, !dbg !5460
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5460
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5460
  %neg.i = xor i32 %shl.i, -1, !dbg !5461
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !5462, !srcloc !5463
  br label %arch_clear_bit.exit, !dbg !5464

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5465
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5467
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !5468, !srcloc !5469
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_port_set_initialized(%struct.tty_port* %port, i1 zeroext %val) #0 !dbg !5471 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %val.addr = alloca i8, align 1
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %frombool = zext i1 %val to i8
  store i8 %frombool, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  %0 = load i8, i8* %val.addr, align 1, !dbg !5476
  %tobool = trunc i8 %0 to i1, !dbg !5476
  br i1 %tobool, label %if.then, label %if.else, !dbg !5478

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5479
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %1, i32 0, i32 11, !dbg !5480
  call void @set_bit(i64 0, i64* %iflags) #8, !dbg !5481
  br label %if.end, !dbg !5481

if.else:                                          ; preds = %entry
  %2 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !5482
  %iflags1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i32 0, i32 11, !dbg !5483
  call void @clear_bit(i64 0, i64* %iflags1) #8, !dbg !5484
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5485
}

; Function Attrs: noredzone
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #3

; Function Attrs: noredzone
declare dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc*, i8*, i8*, i32) #3

; Function Attrs: noredzone
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc*) #3

; Function Attrs: noredzone
declare dso_local void @tty_wakeup(%struct.tty_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5486 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5490, metadata !DIExpression()), !dbg !5496
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5501, metadata !DIExpression()), !dbg !5502
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4586, metadata !DIExpression()), !dbg !5503
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4596, metadata !DIExpression()), !dbg !5505
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5506, metadata !DIExpression()), !dbg !5507
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5508, metadata !DIExpression()), !dbg !5509
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5514
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5515
  %1 = load i32, i32* %n.addr, align 4, !dbg !5516
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5517
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5517
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5518
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5519
  %conv.i.i = trunc i64 %5 to i32, !dbg !5519
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5520
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5521
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5521
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #9, !dbg !5521
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5522
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5523
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5524
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5524
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5524
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5524
  ret void, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5527 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  ret i1 true, !dbg !5535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5536 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5547 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  %0 = load i64, i64* %error.addr, align 8, !dbg !5552
  %1 = inttoptr i64 %0 to i8*, !dbg !5553
  ret i8* %1, !dbg !5554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5555 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5560
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #8, !dbg !5561
  ret i1 %call, !dbg !5562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5563 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5570
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5571
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5572
  ret i1 %call, !dbg !5573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5574 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5577, metadata !DIExpression()), !dbg !5581
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5585, metadata !DIExpression()), !dbg !5586
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5587, metadata !DIExpression()), !dbg !5589
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5590, metadata !DIExpression()), !dbg !5592
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5594, metadata !DIExpression()), !dbg !5595
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5596, metadata !DIExpression()), !dbg !5597
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5598, metadata !DIExpression()), !dbg !5599
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5606, metadata !DIExpression()), !dbg !5607
  %0 = load i32, i32* %i.addr, align 4, !dbg !5608
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5609
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5610
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5611
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5611
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5612
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5613
  %conv.i.i = trunc i64 %5 to i32, !dbg !5613
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5614
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5615
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5615
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5615
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5616
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5617
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5589
  %sub.i.i = sub i32 0, %10, !dbg !5589
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5589
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5589
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5589
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5589
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #6, !dbg !5589, !srcloc !5618
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5589
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5589
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5589
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5589
  store i32 %15, i32* %old, align 4, !dbg !5607
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5619
  %tobool = icmp ne i32* %16, null, !dbg !5619
  br i1 %tobool, label %if.then, label %if.end, !dbg !5621

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5622
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5623
  store i32 %17, i32* %18, align 4, !dbg !5624
  br label %if.end, !dbg !5625

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5626
  %20 = load i32, i32* %i.addr, align 4, !dbg !5628
  %cmp = icmp eq i32 %19, %20, !dbg !5629
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5630

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5631, !srcloc !5633
  store i1 true, i1* %retval, align 1, !dbg !5634
  br label %return, !dbg !5634

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5635
  %cmp3 = icmp slt i32 %21, 0, !dbg !5635
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5635

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5635
  %23 = load i32, i32* %i.addr, align 4, !dbg !5635
  %sub = sub i32 %22, %23, !dbg !5635
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5635
  br label %lor.end, !dbg !5635

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5635
  %lnot5 = xor i1 %lnot, true, !dbg !5635
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5635
  %conv = sext i32 %lnot.ext to i64, !dbg !5635
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5635
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5637

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5638
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #8, !dbg !5639
  br label %if.end8, !dbg !5639

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5640
  br label %return, !dbg !5640

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5641
  ret i1 %26, !dbg !5641
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5642 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5643, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5646, metadata !DIExpression()), !dbg !5645
  %0 = load i64, i64* %__edi, align 8, !dbg !5645
  store i64 %0, i64* %__edi, align 8, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5647, metadata !DIExpression()), !dbg !5645
  %1 = load i64, i64* %__esi, align 8, !dbg !5645
  store i64 %1, i64* %__esi, align 8, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5648, metadata !DIExpression()), !dbg !5645
  %2 = load i64, i64* %__edx, align 8, !dbg !5645
  store i64 %2, i64* %__edx, align 8, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5649, metadata !DIExpression()), !dbg !5645
  %3 = load i64, i64* %__ecx, align 8, !dbg !5645
  store i64 %3, i64* %__ecx, align 8, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5650, metadata !DIExpression()), !dbg !5645
  %4 = load i64, i64* %__eax, align 8, !dbg !5645
  store i64 %4, i64* %__eax, align 8, !dbg !5645
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5645
  %6 = call i64 @llvm.read_register.i64(metadata !3908), !dbg !5651
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5651, !srcloc !5654
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5651
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5651
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5651
  call void @llvm.write_register.i64(metadata !3908, i64 %asmresult1), !dbg !5651
  %8 = load i64, i64* %__eax, align 8, !dbg !5651
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5655, metadata !DIExpression()), !dbg !5657
  store i64 -1, i64* %__mask, align 8, !dbg !5657
  %9 = load i64, i64* %__mask, align 8, !dbg !5657
  store i64 %9, i64* %tmp, align 8, !dbg !5657
  %10 = load i64, i64* %tmp, align 8, !dbg !5657
  %and = and i64 %8, %10, !dbg !5651
  store i64 %and, i64* %__ret, align 8, !dbg !5651
  %11 = load i64, i64* %__ret, align 8, !dbg !5645
  store i64 %11, i64* %tmp2, align 8, !dbg !5658
  %12 = load i64, i64* %tmp2, align 8, !dbg !5645
  ret i64 %12, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5660 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5661, metadata !DIExpression()), !dbg !5663
  %0 = load i64, i64* %__edi, align 8, !dbg !5663
  store i64 %0, i64* %__edi, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5664, metadata !DIExpression()), !dbg !5663
  %1 = load i64, i64* %__esi, align 8, !dbg !5663
  store i64 %1, i64* %__esi, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5665, metadata !DIExpression()), !dbg !5663
  %2 = load i64, i64* %__edx, align 8, !dbg !5663
  store i64 %2, i64* %__edx, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5666, metadata !DIExpression()), !dbg !5663
  %3 = load i64, i64* %__ecx, align 8, !dbg !5663
  store i64 %3, i64* %__ecx, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5667, metadata !DIExpression()), !dbg !5663
  %4 = load i64, i64* %__eax, align 8, !dbg !5663
  store i64 %4, i64* %__eax, align 8, !dbg !5663
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5663
  %6 = call i64 @llvm.read_register.i64(metadata !3908), !dbg !5663
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5663, !srcloc !5668
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5663
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5663
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5663
  call void @llvm.write_register.i64(metadata !3908, i64 %asmresult1), !dbg !5663
  ret void, !dbg !5669
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5670 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5673
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5674
  call void @refcount_inc(%struct.refcount_struct* %refcount) #8, !dbg !5675
  ret void, !dbg !5676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5677 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5682
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #8, !dbg !5683
  ret void, !dbg !5684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5685 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5692
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5693
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5694
  ret void, !dbg !5695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5696 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5699, metadata !DIExpression()), !dbg !5701
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5705, metadata !DIExpression()), !dbg !5706
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5707, metadata !DIExpression()), !dbg !5709
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5590, metadata !DIExpression()), !dbg !5710
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5594, metadata !DIExpression()), !dbg !5712
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5713, metadata !DIExpression()), !dbg !5714
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5715, metadata !DIExpression()), !dbg !5716
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5717, metadata !DIExpression()), !dbg !5718
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5723, metadata !DIExpression()), !dbg !5724
  %0 = load i32, i32* %i.addr, align 4, !dbg !5725
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5726
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5727
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5728
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5728
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5729
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5730
  %conv.i.i = trunc i64 %5 to i32, !dbg !5730
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5731
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5732
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5732
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5732
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5733
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5734
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5709
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5709
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5709
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5709
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5709
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #6, !dbg !5709, !srcloc !5735
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5709
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5709
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5709
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5709
  store i32 %15, i32* %old, align 4, !dbg !5724
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5736
  %tobool = icmp ne i32* %16, null, !dbg !5736
  br i1 %tobool, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5739
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5740
  store i32 %17, i32* %18, align 4, !dbg !5741
  br label %if.end, !dbg !5742

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5743
  %tobool1 = icmp ne i32 %19, 0, !dbg !5743
  %lnot = xor i1 %tobool1, true, !dbg !5743
  %lnot2 = xor i1 %lnot, true, !dbg !5743
  %lnot3 = xor i1 %lnot2, true, !dbg !5743
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5743
  %conv = sext i32 %lnot.ext to i64, !dbg !5743
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5743
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5745

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5746
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #8, !dbg !5747
  br label %if.end17, !dbg !5747

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5748
  %cmp = icmp slt i32 %21, 0, !dbg !5748
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5748

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5748
  %23 = load i32, i32* %i.addr, align 4, !dbg !5748
  %add = add i32 %22, %23, !dbg !5748
  %cmp7 = icmp slt i32 %add, 0, !dbg !5748
  br label %lor.end, !dbg !5748

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5748
  %lnot11 = xor i1 %lnot9, true, !dbg !5748
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5748
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5748
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5748
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5750

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5751
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #8, !dbg !5752
  br label %if.end16, !dbg !5752

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5754 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5759, metadata !DIExpression()), !dbg !5761
  %0 = load i64, i64* %__edi, align 8, !dbg !5761
  store i64 %0, i64* %__edi, align 8, !dbg !5761
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5762, metadata !DIExpression()), !dbg !5761
  %1 = load i64, i64* %__esi, align 8, !dbg !5761
  store i64 %1, i64* %__esi, align 8, !dbg !5761
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5763, metadata !DIExpression()), !dbg !5761
  %2 = load i64, i64* %__edx, align 8, !dbg !5761
  store i64 %2, i64* %__edx, align 8, !dbg !5761
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5764, metadata !DIExpression()), !dbg !5761
  %3 = load i64, i64* %__ecx, align 8, !dbg !5761
  store i64 %3, i64* %__ecx, align 8, !dbg !5761
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5765, metadata !DIExpression()), !dbg !5761
  %4 = load i64, i64* %__eax, align 8, !dbg !5761
  store i64 %4, i64* %__eax, align 8, !dbg !5761
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5761
  %6 = call i64 @llvm.read_register.i64(metadata !3908), !dbg !5761
  %7 = load i64, i64* %f.addr, align 8, !dbg !5761
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5761, !srcloc !5766
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5761
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5761
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5761
  call void @llvm.write_register.i64(metadata !3908, i64 %asmresult1), !dbg !5761
  ret void, !dbg !5767
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5768 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5774, metadata !DIExpression()), !dbg !5776
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5778, metadata !DIExpression()), !dbg !5779
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5780, metadata !DIExpression()), !dbg !5781
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5782, metadata !DIExpression()), !dbg !5784
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5786, metadata !DIExpression()), !dbg !5787
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5788, metadata !DIExpression()), !dbg !5790
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5792, metadata !DIExpression()), !dbg !5793
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5798
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5799
  %div = sdiv i64 %1, 64, !dbg !5799
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5800
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5798
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5801
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5802
  %conv.i = trunc i64 %4 to i32, !dbg !5802
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !5803
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5804
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5804
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !5804
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5805
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5805
  br i1 %8, label %cond.true, label %cond.false, !dbg !5805

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5805
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5805
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5806
  %and.i = and i64 %11, 63, !dbg !5807
  %shl.i = shl i64 1, %and.i, !dbg !5808
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5809
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5810
  %shr.i = ashr i64 %13, 6, !dbg !5811
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5809
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5809
  %and1.i = and i64 %shl.i, %14, !dbg !5812
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5813
  %conv = zext i1 %cmp.i to i32, !dbg !5805
  br label %cond.end, !dbg !5805

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5805
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5805
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5814
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5815
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !5816, !srcloc !5817
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5816
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5818
  %tobool.i = trunc i8 %20 to i1, !dbg !5818
  %conv2 = zext i1 %tobool.i to i32, !dbg !5805
  br label %cond.end, !dbg !5805

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5805
  %tobool = icmp ne i32 %cond, 0, !dbg !5805
  ret i1 %tobool, !dbg !5819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5820 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  ret i1 true, !dbg !5825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !5826 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !5833
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #8, !dbg !5834
  %1 = load i32, i32* %flag.addr, align 4, !dbg !5835
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #8, !dbg !5836
  ret i32 %call1, !dbg !5837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !5838 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5847
  %conv = sext i32 %0 to i64, !dbg !5847
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !5848
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !5849
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !5850
  %conv1 = zext i1 %call to i32, !dbg !5850
  ret i32 %conv1, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !5852 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !5857
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !5858
  ret %struct.thread_info* %thread_info, !dbg !5859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_get_baud_rate(%struct.tty_struct* %tty) #0 !dbg !5860 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5865
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 15, !dbg !5866
  %call = call i32 @tty_termios_baud_rate(%struct.ktermios* %termios) #8, !dbg !5867
  ret i32 %call, !dbg !5868
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout_interruptible(i64) #3

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5869 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5870, metadata !DIExpression()), !dbg !5872
  %0 = load i64, i64* %__edi, align 8, !dbg !5872
  store i64 %0, i64* %__edi, align 8, !dbg !5872
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5873, metadata !DIExpression()), !dbg !5872
  %1 = load i64, i64* %__esi, align 8, !dbg !5872
  store i64 %1, i64* %__esi, align 8, !dbg !5872
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5874, metadata !DIExpression()), !dbg !5872
  %2 = load i64, i64* %__edx, align 8, !dbg !5872
  store i64 %2, i64* %__edx, align 8, !dbg !5872
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5875, metadata !DIExpression()), !dbg !5872
  %3 = load i64, i64* %__ecx, align 8, !dbg !5872
  store i64 %3, i64* %__ecx, align 8, !dbg !5872
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5876, metadata !DIExpression()), !dbg !5872
  %4 = load i64, i64* %__eax, align 8, !dbg !5872
  store i64 %4, i64* %__eax, align 8, !dbg !5872
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5872
  %6 = call i64 @llvm.read_register.i64(metadata !3908), !dbg !5872
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #6, !dbg !5872, !srcloc !5877
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5872
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5872
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5872
  call void @llvm.write_register.i64(metadata !3908, i64 %asmresult1), !dbg !5872
  ret void, !dbg !5878
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3908}
!llvm.module.flags = !{!3909, !3910, !3911, !3912}
!llvm.ident = !{!3913}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tty_port_default_client_ops", scope: !2, file: !3, line: 55, type: !3598, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !3898, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/tty_port.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !85}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !86, line: 119, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!93 = !{!94, !95, !97, !99, !100, !189, !3891, !224, !3540, !3893, !3895, !3896, !1084, !3897}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 148, baseType: !7)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !105, line: 285, size: 5056, elements: !106)
!105 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !109, !122, !3495, !3790, !3791, !3792, !3801, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !104, file: !105, line: 286, baseType: !108, size: 32)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !104, file: !105, line: 287, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !111, line: 19, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !110, file: !111, line: 20, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !86, line: 113, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !86, line: 111, size: 32, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !115, file: !86, line: 112, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !98, line: 168, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 166, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !119, file: !98, line: 167, baseType: !108, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !104, file: !105, line: 288, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !125)
!125 = !{!126, !3154, !3155, !3158, !3159, !3210, !3283, !3284, !3285, !3286, !3287, !3296, !3401, !3414, !3417, !3418, !3422, !3424, !3425, !3426, !3430, !3436, !3437, !3440, !3444, !3447, !3448, !3449, !3450, !3451, !3483, !3484, !3485, !3488, !3491, !3492, !3493, !3494}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !124, file: !60, line: 462, baseType: !127, size: 512)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !128, line: 64, size: 512, elements: !129)
!128 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !134, !140, !142, !202, !3020, !3148, !3149, !3150, !3151, !3152, !3153}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !128, line: 65, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !127, file: !128, line: 66, baseType: !135, size: 128, offset: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !98, line: 178, size: 128, elements: !136)
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !98, line: 179, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !135, file: !98, line: 179, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !128, line: 67, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !127, file: !128, line: 68, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !128, line: 192, size: 704, elements: !145)
!145 = !{!146, !147, !163, !164}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !144, file: !128, line: 193, baseType: !135, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !144, file: !128, line: 194, baseType: !148, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !149, line: 83, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !149, line: 71, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !149, line: 72, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !149, line: 72, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !153, file: !149, line: 73, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !149, line: 20, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !156, file: !149, line: 21, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !160, line: 25, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 25, elements: !162)
!162 = !{}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !144, file: !128, line: 195, baseType: !127, size: 512, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !144, file: !128, line: 196, baseType: !165, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !128, line: 156, size: 192, elements: !168)
!168 = !{!169, !174, !179}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !167, file: !128, line: 157, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!108, !143, !141}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !128, line: 158, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!131, !143, !141}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !167, file: !128, line: 159, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!108, !143, !141, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !128, line: 148, size: 20736, elements: !186)
!186 = !{!187, !192, !196, !197, !201}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !185, file: !128, line: 149, baseType: !188, size: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !185, file: !128, line: 150, baseType: !193, size: 4096, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 4096, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !185, file: !128, line: 151, baseType: !108, size: 32, offset: 4288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !128, line: 152, baseType: !198, size: 16384, offset: 4320)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !185, file: !128, line: 153, baseType: !108, size: 32, offset: 20704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !127, file: !128, line: 69, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !128, line: 138, size: 448, elements: !205)
!205 = !{!206, !210, !239, !241, !2980, !3010, !3014}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !204, file: !128, line: 139, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !141}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !204, file: !128, line: 140, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !214, line: 230, size: 128, elements: !215)
!214 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !232}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !213, file: !214, line: 231, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !141, !225, !189}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 60, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !222, line: 73, baseType: !223)
!222 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !222, line: 15, baseType: !224)
!224 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !214, line: 30, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !214, line: 31, baseType: !131, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !226, file: !214, line: 32, baseType: !230, size: 16, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !98, line: 19, baseType: !231)
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !213, file: !214, line: 232, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!220, !141, !225, !131, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 55, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !222, line: 72, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !222, line: 16, baseType: !99)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !204, file: !128, line: 141, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !204, file: !128, line: 142, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !214, line: 84, size: 320, elements: !246)
!246 = !{!247, !248, !252, !2977, !2978}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !214, line: 85, baseType: !131, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !245, file: !214, line: 86, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!230, !141, !225, !108}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !245, file: !214, line: 88, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!230, !141, !256, !108}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !214, line: 168, size: 448, elements: !258)
!258 = !{!259, !260, !261, !262, !2972, !2973}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !257, file: !214, line: 169, baseType: !226, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !257, file: !214, line: 170, baseType: !236, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !257, file: !214, line: 171, baseType: !94, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !257, file: !214, line: 172, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!220, !266, !141, !256, !189, !444, !236}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !268)
!268 = !{!269, !287, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2955, !2956, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !267, file: !31, line: 920, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !31, line: 917, size: 128, elements: !271)
!271 = !{!272, !278}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !270, file: !31, line: 918, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !274, line: 58, size: 64, elements: !275)
!274 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !274, line: 59, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !270, file: !31, line: 919, baseType: !279, size: 128, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !98, line: 216, size: 128, align: 64, elements: !280)
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !98, line: 217, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !279, file: !98, line: 218, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !282}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !267, file: !31, line: 921, baseType: !288, size: 128, offset: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !289, line: 8, size: 128, elements: !290)
!289 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!290 = !{!291, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !288, file: !289, line: 9, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !294, line: 18, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !288, file: !289, line: 10, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !294, line: 89, size: 1536, elements: !298)
!298 = !{!299, !300, !310, !318, !319, !341, !2905, !2907, !2919, !2920, !2921, !2922, !2923, !2929, !2930, !2931}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !297, file: !294, line: 91, baseType: !7, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !297, file: !294, line: 92, baseType: !301, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !302, line: 277, baseType: !303)
!302 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !302, line: 277, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !303, file: !302, line: 277, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !302, line: 70, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !302, line: 65, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !307, file: !302, line: 66, baseType: !7, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !297, file: !294, line: 93, baseType: !311, size: 128, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !312, line: 38, size: 128, elements: !313)
!312 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !312, line: 39, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !311, file: !312, line: 39, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !297, file: !294, line: 94, baseType: !296, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !297, file: !294, line: 95, baseType: !320, size: 128, offset: 256)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !294, line: 47, size: 128, elements: !321)
!321 = !{!322, !338}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !294, line: 48, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !294, line: 48, size: 64, elements: !324)
!324 = !{!325, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !294, line: 49, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !294, line: 49, size: 64, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !326, file: !294, line: 50, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !330, line: 21, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !332, line: 27, baseType: !7)
!332 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !326, file: !294, line: 50, baseType: !329, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !323, file: !294, line: 52, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !330, line: 23, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !332, line: 31, baseType: !337)
!337 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !294, line: 54, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !297, file: !294, line: 96, baseType: !342, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !344)
!344 = !{!345, !346, !347, !355, !362, !363, !511, !2609, !2610, !2611, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2873, !2881, !2882, !2883, !2901, !2902, !2903, !2904}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !343, file: !31, line: 611, baseType: !230, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !343, file: !31, line: 612, baseType: !231, size: 16, offset: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !343, file: !31, line: 613, baseType: !348, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !349, line: 23, baseType: !350)
!349 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 21, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !350, file: !349, line: 22, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !98, line: 32, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !222, line: 49, baseType: !7)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !343, file: !31, line: 614, baseType: !356, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !349, line: 28, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 26, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !357, file: !349, line: 27, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !98, line: 33, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !222, line: 50, baseType: !7)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !343, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !343, file: !31, line: 622, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !367)
!367 = !{!368, !372, !385, !389, !395, !399, !405, !409, !413, !417, !421, !422, !428, !432, !458, !487, !491, !497, !502, !506, !507}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !366, file: !31, line: 1865, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!296, !342, !296, !7}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !366, file: !31, line: 1866, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!131, !296, !342, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !378, line: 10, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !377, file: !378, line: 11, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !94}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !377, file: !378, line: 12, baseType: !94, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !366, file: !31, line: 1867, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!108, !342, !108}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !366, file: !31, line: 1868, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !342, !108}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !366, file: !31, line: 1870, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!108, !296, !189, !108}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !366, file: !31, line: 1872, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!108, !342, !296, !230, !403}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 30, baseType: !404)
!404 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !366, file: !31, line: 1873, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!108, !296, !342, !296}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !366, file: !31, line: 1874, baseType: !410, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!108, !342, !296}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !366, file: !31, line: 1875, baseType: !414, size: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!108, !342, !296, !131}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !366, file: !31, line: 1876, baseType: !418, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!108, !342, !296, !230}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !366, file: !31, line: 1877, baseType: !410, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !366, file: !31, line: 1878, baseType: !423, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!108, !342, !296, !230, !426}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 16, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !98, line: 13, baseType: !329)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !366, file: !31, line: 1879, baseType: !429, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!108, !342, !296, !342, !296, !7}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !366, file: !31, line: 1881, baseType: !433, size: 64, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!108, !296, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !447, !455, !456, !457}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !437, file: !31, line: 220, baseType: !7, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !437, file: !31, line: 221, baseType: !230, size: 16, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !437, file: !31, line: 222, baseType: !348, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !437, file: !31, line: 223, baseType: !356, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !437, file: !31, line: 224, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !98, line: 46, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !222, line: 88, baseType: !446)
!446 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !437, file: !31, line: 225, baseType: !448, size: 128, offset: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !449, line: 13, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!450 = !{!451, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !448, file: !449, line: 14, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !449, line: 8, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !332, line: 30, baseType: !446)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !448, file: !449, line: 15, baseType: !224, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !437, file: !31, line: 226, baseType: !448, size: 128, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !437, file: !31, line: 227, baseType: !448, size: 128, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !437, file: !31, line: 234, baseType: !266, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !366, file: !31, line: 1882, baseType: !459, size: 64, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!108, !462, !464, !329, !7}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !466, line: 22, size: 1152, elements: !467)
!466 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !469, !470, !471, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !465, file: !466, line: 23, baseType: !329, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !465, file: !466, line: 24, baseType: !230, size: 16, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !465, file: !466, line: 25, baseType: !7, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !465, file: !466, line: 26, baseType: !472, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 104, baseType: !329)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !465, file: !466, line: 27, baseType: !335, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !465, file: !466, line: 28, baseType: !335, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !465, file: !466, line: 37, baseType: !335, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !465, file: !466, line: 38, baseType: !426, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !465, file: !466, line: 39, baseType: !426, size: 32, offset: 352)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !465, file: !466, line: 40, baseType: !348, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !465, file: !466, line: 41, baseType: !356, size: 32, offset: 416)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !465, file: !466, line: 42, baseType: !444, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !465, file: !466, line: 43, baseType: !448, size: 128, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !465, file: !466, line: 44, baseType: !448, size: 128, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !465, file: !466, line: 45, baseType: !448, size: 128, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !465, file: !466, line: 46, baseType: !448, size: 128, offset: 896)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !465, file: !466, line: 47, baseType: !335, size: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !465, file: !466, line: 48, baseType: !335, size: 64, offset: 1088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !366, file: !31, line: 1883, baseType: !488, size: 64, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!220, !296, !189, !236}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !366, file: !31, line: 1884, baseType: !492, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!108, !342, !495, !335, !335}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !366, file: !31, line: 1886, baseType: !498, size: 64, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!108, !342, !501, !108}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !366, file: !31, line: 1887, baseType: !503, size: 64, offset: 1152)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!108, !342, !296, !266, !7, !230}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !366, file: !31, line: 1890, baseType: !418, size: 64, offset: 1216)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !366, file: !31, line: 1891, baseType: !508, size: 64, offset: 1280)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!108, !342, !393, !108}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !343, file: !31, line: 623, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !569, !2216, !2298, !2381, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2397, !2401, !2402, !2405, !2406, !2409, !2410, !2411, !2452, !2479, !2480, !2481, !2482, !2483, !2484, !2487, !2489, !2496, !2497, !2499, !2500, !2501, !2560, !2561, !2576, !2577, !2578, !2579, !2580, !2583, !2584, !2585, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !513, file: !31, line: 1417, baseType: !135, size: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !513, file: !31, line: 1418, baseType: !426, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !513, file: !31, line: 1419, baseType: !96, size: 8, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !513, file: !31, line: 1420, baseType: !99, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !513, file: !31, line: 1421, baseType: !444, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !513, file: !31, line: 1422, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !523)
!523 = !{!524, !525, !526, !532, !536, !540, !544, !548, !549, !559, !562, !563, !564, !566, !567, !568}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !522, file: !31, line: 2229, baseType: !131, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !522, file: !31, line: 2230, baseType: !108, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !522, file: !31, line: 2238, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!108, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !31, line: 69, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !522, file: !31, line: 2239, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !522, file: !31, line: 2240, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!296, !521, !108, !131, !94}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !522, file: !31, line: 2242, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !512}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !522, file: !31, line: 2243, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !547, line: 76, flags: DIFlagFwdDecl)
!547 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !31, line: 2244, baseType: !521, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !522, file: !31, line: 2245, baseType: !550, size: 64, offset: 512)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !98, line: 182, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !550, file: !98, line: 183, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !98, line: 186, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !98, line: 187, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !554, file: !98, line: 187, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !522, file: !31, line: 2247, baseType: !560, offset: 576)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !561, line: 187, elements: !162)
!561 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !522, file: !31, line: 2248, baseType: !560, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !522, file: !31, line: 2249, baseType: !560, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !522, file: !31, line: 2250, baseType: !565, offset: 576)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, elements: !190)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !522, file: !31, line: 2252, baseType: !560, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !522, file: !31, line: 2253, baseType: !560, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !522, file: !31, line: 2254, baseType: !560, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !513, file: !31, line: 1423, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !573)
!573 = !{!574, !578, !582, !583, !587, !593, !597, !598, !599, !603, !607, !608, !609, !610, !616, !621, !622, !678, !679, !680, !681, !2200, !2215}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !572, file: !31, line: 1936, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!342, !512}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !572, file: !31, line: 1937, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !342}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !572, file: !31, line: 1938, baseType: !579, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !572, file: !31, line: 1940, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !342, !108}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !572, file: !31, line: 1941, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!108, !342, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !572, file: !31, line: 1942, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!108, !342}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !572, file: !31, line: 1943, baseType: !579, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !572, file: !31, line: 1944, baseType: !541, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !572, file: !31, line: 1945, baseType: !600, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!108, !512, !108}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !572, file: !31, line: 1946, baseType: !604, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!108, !512}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !572, file: !31, line: 1947, baseType: !604, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !572, file: !31, line: 1948, baseType: !604, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !572, file: !31, line: 1949, baseType: !604, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !572, file: !31, line: 1950, baseType: !611, size: 64, offset: 832)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!108, !296, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !572, file: !31, line: 1951, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!108, !512, !620, !189}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !572, file: !31, line: 1952, baseType: !541, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !572, file: !31, line: 1954, baseType: !623, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!108, !626, !296}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !628, line: 16, size: 896, elements: !629)
!628 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !651, !673, !674, !677}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !627, file: !628, line: 17, baseType: !189, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !627, file: !628, line: 18, baseType: !236, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !627, file: !628, line: 19, baseType: !236, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !627, file: !628, line: 20, baseType: !236, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !627, file: !628, line: 21, baseType: !236, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !627, file: !628, line: 22, baseType: !444, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !627, file: !628, line: 23, baseType: !444, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !627, file: !628, line: 24, baseType: !638, size: 192, offset: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !639, line: 53, size: 192, elements: !640)
!639 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !649, !650}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 54, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !643, line: 13, baseType: !644)
!643 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !98, line: 175, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 173, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !645, file: !98, line: 174, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !330, line: 22, baseType: !453)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 55, baseType: !148, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 59, baseType: !135, size: 128, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !627, file: !628, line: 25, baseType: !652, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !628, line: 31, size: 256, elements: !655)
!655 = !{!656, !661, !665, !669}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !654, file: !628, line: 32, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!94, !626, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !654, file: !628, line: 33, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !626, !94}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !628, line: 34, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!94, !626, !94, !660}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !654, file: !628, line: 35, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!108, !626, !94}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !627, file: !628, line: 26, baseType: !108, size: 32, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !627, file: !628, line: 27, baseType: !675, size: 64, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !627, file: !628, line: 28, baseType: !94, size: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !572, file: !31, line: 1955, baseType: !623, size: 64, offset: 1088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !572, file: !31, line: 1956, baseType: !623, size: 64, offset: 1152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !572, file: !31, line: 1957, baseType: !623, size: 64, offset: 1216)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !572, file: !31, line: 1963, baseType: !682, size: 64, offset: 1280)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!108, !512, !685, !97}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !687, line: 68, size: 512, align: 128, elements: !688)
!687 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !2192, !2199}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 69, baseType: !99, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 77, baseType: !691, size: 320, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 77, size: 320, elements: !692)
!692 = !{!693, !869, !874, !902, !910, !916, !2184, !2191}
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 78, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 78, size: 320, elements: !695)
!695 = !{!696, !697, !867, !868}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !694, file: !687, line: 84, baseType: !135, size: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !694, file: !687, line: 86, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !700)
!700 = !{!701, !702, !709, !710, !711, !726, !735, !736, !737, !738, !860, !861, !864, !865, !866}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !699, file: !31, line: 452, baseType: !342, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !699, file: !31, line: 453, baseType: !703, size: 128, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !704, line: 292, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !703, file: !704, line: 293, baseType: !148)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !703, file: !704, line: 295, baseType: !97, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !703, file: !704, line: 296, baseType: !94, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !699, file: !31, line: 454, baseType: !97, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !699, file: !31, line: 455, baseType: !118, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !699, file: !31, line: 460, baseType: !712, size: 128, offset: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !713, line: 125, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !725}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !712, file: !713, line: 126, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !713, line: 31, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !716, file: !713, line: 32, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !713, line: 24, size: 192, align: 64, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !720, file: !713, line: 25, baseType: !99, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !720, file: !713, line: 26, baseType: !719, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !720, file: !713, line: 27, baseType: !719, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !712, file: !713, line: 127, baseType: !719, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !699, file: !31, line: 461, baseType: !727, size: 256, offset: 384)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !728, line: 35, size: 256, elements: !729)
!728 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !731, !732, !734}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !727, file: !728, line: 36, baseType: !642, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !727, file: !728, line: 42, baseType: !642, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !728, line: 46, baseType: !733, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !149, line: 29, baseType: !156)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !727, file: !728, line: 47, baseType: !135, size: 128, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !699, file: !31, line: 462, baseType: !99, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !699, file: !31, line: 463, baseType: !99, size: 64, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !699, file: !31, line: 464, baseType: !99, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !699, file: !31, line: 465, baseType: !739, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !742)
!742 = !{!743, !747, !751, !755, !759, !763, !769, !775, !779, !784, !788, !792, !796, !824, !828, !834, !835, !836, !840, !845, !849, !856}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !741, file: !31, line: 368, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!108, !685, !591}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !741, file: !31, line: 369, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!108, !266, !685}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !741, file: !31, line: 372, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!108, !698, !591}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !741, file: !31, line: 375, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!108, !685}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !741, file: !31, line: 381, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!108, !266, !698, !138, !7}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !741, file: !31, line: 383, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !741, file: !31, line: 385, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!108, !266, !698, !444, !7, !7, !773, !774}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !741, file: !31, line: 388, baseType: !776, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!108, !266, !698, !444, !7, !7, !685, !94}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !741, file: !31, line: 393, baseType: !780, size: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !698, !783}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !98, line: 125, baseType: !335)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !741, file: !31, line: 394, baseType: !785, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !685, !7, !7}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !741, file: !31, line: 395, baseType: !789, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!108, !685, !97}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !741, file: !31, line: 396, baseType: !793, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !685}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !741, file: !31, line: 397, baseType: !797, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!220, !800, !822}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !802)
!802 = !{!803, !804, !805, !809, !810, !811, !814, !815}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !801, file: !31, line: 321, baseType: !266, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !801, file: !31, line: 326, baseType: !444, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !801, file: !31, line: 327, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !800, !224, !224}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !801, file: !31, line: 328, baseType: !94, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !801, file: !31, line: 329, baseType: !108, size: 32, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !801, file: !31, line: 330, baseType: !812, size: 16, offset: 288)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !330, line: 19, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !332, line: 24, baseType: !231)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !801, file: !31, line: 331, baseType: !812, size: 16, offset: 304)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !31, line: 332, baseType: !816, size: 64, offset: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !31, line: 332, size: 64, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !816, file: !31, line: 333, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !816, file: !31, line: 334, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !741, file: !31, line: 402, baseType: !825, size: 64, offset: 832)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!108, !698, !685, !685, !5}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !741, file: !31, line: 404, baseType: !829, size: 64, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!403, !685, !832}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !833, line: 305, baseType: !7)
!833 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!834 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !741, file: !31, line: 405, baseType: !793, size: 64, offset: 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !741, file: !31, line: 406, baseType: !756, size: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !741, file: !31, line: 407, baseType: !837, size: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!108, !685, !99, !99}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !741, file: !31, line: 409, baseType: !841, size: 64, offset: 1152)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !685, !844, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !741, file: !31, line: 410, baseType: !846, size: 64, offset: 1216)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!108, !698, !685}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !741, file: !31, line: 413, baseType: !850, size: 64, offset: 1280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!108, !853, !266, !855}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !741, file: !31, line: 415, baseType: !857, size: 64, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !266}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !31, line: 466, baseType: !99, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !699, file: !31, line: 467, baseType: !862, size: 32, offset: 960)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !863, line: 8, baseType: !329)
!863 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !699, file: !31, line: 468, baseType: !148, offset: 992)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !699, file: !31, line: 469, baseType: !135, size: 128, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !699, file: !31, line: 470, baseType: !94, size: 64, offset: 1152)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !694, file: !687, line: 87, baseType: !99, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !694, file: !687, line: 94, baseType: !99, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 96, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 96, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !870, file: !687, line: 101, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !98, line: 143, baseType: !335)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 103, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 103, size: 320, elements: !876)
!876 = !{!877, !887, !890, !891}
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !687, line: 104, baseType: !878, size: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !687, line: 104, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !878, file: !687, line: 105, baseType: !135, size: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !687, line: 106, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !687, line: 106, size: 128, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !687, line: 107, baseType: !685, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !882, file: !687, line: 109, baseType: !108, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !882, file: !687, line: 110, baseType: !108, size: 32, offset: 96)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !875, file: !687, line: 117, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !687, line: 117, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !875, file: !687, line: 119, baseType: !94, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !687, line: 120, baseType: !892, size: 64, offset: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !687, line: 120, size: 64, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !892, file: !687, line: 121, baseType: !94, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !892, file: !687, line: 122, baseType: !99, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !687, line: 123, baseType: !897, size: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !687, line: 123, size: 32, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !897, file: !687, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !897, file: !687, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !897, file: !687, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 130, baseType: !903, size: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 130, size: 192, elements: !904)
!904 = !{!905, !906, !907, !908, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !903, file: !687, line: 131, baseType: !99, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !903, file: !687, line: 134, baseType: !96, size: 8, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !903, file: !687, line: 135, baseType: !96, size: 8, offset: 72)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !903, file: !687, line: 136, baseType: !118, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !903, file: !687, line: 137, baseType: !7, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 139, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 139, size: 256, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !911, file: !687, line: 140, baseType: !99, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !911, file: !687, line: 141, baseType: !118, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !911, file: !687, line: 143, baseType: !135, size: 128, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 145, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 145, size: 256, elements: !918)
!918 = !{!919, !920, !923, !924, !2183}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !917, file: !687, line: 146, baseType: !99, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !917, file: !687, line: 147, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !922, line: 509, baseType: !685)
!922 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !917, file: !687, line: 148, baseType: !99, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !687, line: 149, baseType: !925, size: 64, offset: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !687, line: 149, size: 64, elements: !926)
!926 = !{!927, !2182}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !925, file: !687, line: 150, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !687, line: 388, size: 7296, elements: !930)
!930 = !{!931, !2178}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !687, line: 389, baseType: !932, size: 7296)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !687, line: 389, size: 7296, elements: !933)
!933 = !{!934, !972, !973, !974, !978, !979, !980, !981, !982, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1023, !1031, !1034, !1074, !1075, !2162, !2163, !2166, !2167, !2168, !2171, !2172, !2173, !2176, !2177}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !932, file: !687, line: 390, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !687, line: 305, size: 1472, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !952, !953, !958, !959, !962, !966, !967, !968, !969, !970}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !936, file: !687, line: 308, baseType: !99, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !936, file: !687, line: 309, baseType: !99, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !936, file: !687, line: 313, baseType: !935, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !936, file: !687, line: 313, baseType: !935, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !936, file: !687, line: 315, baseType: !720, size: 192, align: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !936, file: !687, line: 323, baseType: !99, size: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !936, file: !687, line: 327, baseType: !928, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !936, file: !687, line: 333, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !922, line: 284, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !922, line: 284, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !947, file: !922, line: 284, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !951, line: 19, baseType: !99)
!951 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !936, file: !687, line: 334, baseType: !99, size: 64, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !936, file: !687, line: 343, baseType: !954, size: 256, offset: 704)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !687, line: 340, size: 256, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !954, file: !687, line: 341, baseType: !720, size: 192, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !954, file: !687, line: 342, baseType: !99, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !936, file: !687, line: 351, baseType: !135, size: 128, offset: 960)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !936, file: !687, line: 353, baseType: !960, size: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !687, line: 353, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !936, file: !687, line: 356, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !687, line: 356, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !936, file: !687, line: 359, baseType: !99, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !936, file: !687, line: 361, baseType: !266, size: 64, offset: 1280)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !936, file: !687, line: 362, baseType: !94, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !936, file: !687, line: 365, baseType: !642, size: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !936, file: !687, line: 373, baseType: !971, offset: 1472)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !687, line: 296, elements: !162)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !932, file: !687, line: 391, baseType: !716, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !932, file: !687, line: 392, baseType: !335, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !932, file: !687, line: 394, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!99, !266, !99, !99, !99, !99}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !932, file: !687, line: 398, baseType: !99, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !932, file: !687, line: 399, baseType: !99, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !932, file: !687, line: 405, baseType: !99, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !932, file: !687, line: 406, baseType: !99, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !932, file: !687, line: 407, baseType: !983, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !922, line: 286, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 286, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !985, file: !922, line: 286, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !951, line: 18, baseType: !99)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !932, file: !687, line: 416, baseType: !118, size: 32, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !932, file: !687, line: 428, baseType: !118, size: 32, offset: 608)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !932, file: !687, line: 437, baseType: !118, size: 32, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !932, file: !687, line: 447, baseType: !118, size: 32, offset: 672)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !932, file: !687, line: 450, baseType: !642, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !932, file: !687, line: 452, baseType: !108, size: 32, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !932, file: !687, line: 454, baseType: !148, offset: 800)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !932, file: !687, line: 457, baseType: !727, size: 256, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !932, file: !687, line: 459, baseType: !135, size: 128, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !932, file: !687, line: 466, baseType: !99, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !932, file: !687, line: 467, baseType: !99, size: 64, offset: 1280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !932, file: !687, line: 469, baseType: !99, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !932, file: !687, line: 470, baseType: !99, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !932, file: !687, line: 471, baseType: !644, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !932, file: !687, line: 472, baseType: !99, size: 64, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !932, file: !687, line: 473, baseType: !99, size: 64, offset: 1600)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !932, file: !687, line: 474, baseType: !99, size: 64, offset: 1664)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !932, file: !687, line: 475, baseType: !99, size: 64, offset: 1728)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !932, file: !687, line: 477, baseType: !148, offset: 1792)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !932, file: !687, line: 478, baseType: !99, size: 64, offset: 1792)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !932, file: !687, line: 478, baseType: !99, size: 64, offset: 1856)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !932, file: !687, line: 478, baseType: !99, size: 64, offset: 1920)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !932, file: !687, line: 478, baseType: !99, size: 64, offset: 1984)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !932, file: !687, line: 479, baseType: !99, size: 64, offset: 2048)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !932, file: !687, line: 479, baseType: !99, size: 64, offset: 2112)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !932, file: !687, line: 479, baseType: !99, size: 64, offset: 2176)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !932, file: !687, line: 480, baseType: !99, size: 64, offset: 2240)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !932, file: !687, line: 480, baseType: !99, size: 64, offset: 2304)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !932, file: !687, line: 480, baseType: !99, size: 64, offset: 2368)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !932, file: !687, line: 480, baseType: !99, size: 64, offset: 2432)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !932, file: !687, line: 482, baseType: !1020, size: 2816, offset: 2496)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2816, elements: !1021)
!1021 = !{!1022}
!1022 = !DISubrange(count: 44)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !932, file: !687, line: 488, baseType: !1024, size: 256, offset: 5312)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1025, line: 60, size: 256, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1024, file: !1025, line: 61, baseType: !1028, size: 256)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 4)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !932, file: !687, line: 490, baseType: !1032, size: 64, offset: 5568)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !687, line: 490, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !932, file: !687, line: 493, baseType: !1035, size: 896, offset: 5632)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1036, line: 53, baseType: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 13, size: 896, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1045, !1046, !1047, !1048, !1068, !1069, !1070}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1037, file: !1036, line: 18, baseType: !335, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1037, file: !1036, line: 28, baseType: !644, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1037, file: !1036, line: 31, baseType: !727, size: 256, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1037, file: !1036, line: 32, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1036, line: 32, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1037, file: !1036, line: 37, baseType: !231, size: 16, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 40, baseType: !638, size: 192, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1037, file: !1036, line: 41, baseType: !94, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1037, file: !1036, line: 42, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1052, line: 13, size: 896, elements: !1053)
!1052 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1051, file: !1052, line: 14, baseType: !94, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !1052, line: 15, baseType: !99, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1051, file: !1052, line: 17, baseType: !99, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1051, file: !1052, line: 17, baseType: !99, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1051, file: !1052, line: 19, baseType: !224, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1051, file: !1052, line: 21, baseType: !224, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1051, file: !1052, line: 22, baseType: !224, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1051, file: !1052, line: 23, baseType: !224, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1051, file: !1052, line: 24, baseType: !224, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1051, file: !1052, line: 25, baseType: !224, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1051, file: !1052, line: 26, baseType: !224, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1051, file: !1052, line: 27, baseType: !224, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1051, file: !1052, line: 28, baseType: !224, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1051, file: !1052, line: 29, baseType: !224, size: 64, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1037, file: !1036, line: 44, baseType: !118, size: 32, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1037, file: !1036, line: 50, baseType: !812, size: 16, offset: 864)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1037, file: !1036, line: 51, baseType: !1071, size: 16, offset: 880)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !330, line: 18, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !332, line: 23, baseType: !1073)
!1073 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !687, line: 495, baseType: !99, size: 64, offset: 6528)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !932, file: !687, line: 497, baseType: !1076, size: 64, offset: 6592)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !687, line: 381, size: 384, elements: !1078)
!1078 = !{!1079, !1080, !2161}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1077, file: !687, line: 382, baseType: !118, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1077, file: !687, line: 383, baseType: !1081, size: 128, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !687, line: 376, size: 128, elements: !1082)
!1082 = !{!1083, !2159}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1081, file: !687, line: 377, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1086, line: 640, size: 48640, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1087 = !{!1088, !1094, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1109, !1127, !1138, !1223, !1224, !1225, !1236, !1237, !1239, !1240, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1321, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1359, !1361, !1362, !1363, !1375, !1376, !1377, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1404, !1409, !1593, !1594, !1595, !1596, !1600, !1603, !1606, !1609, !1612, !1615, !1714, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1760, !1761, !1762, !1763, !1764, !1769, !1770, !1771, !1774, !1775, !1778, !1781, !1784, !1787, !1830, !1833, !1834, !1913, !1914, !1917, !1918, !1921, !1922, !1923, !1927, !1928, !1929, !1942, !1943, !1944, !1954, !1959, !1962, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1085, file: !1086, line: 646, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1090, line: 56, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !1090, line: 57, baseType: !99, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1089, file: !1090, line: 58, baseType: !329, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1085, file: !1086, line: 649, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1085, file: !1086, line: 657, baseType: !94, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1085, file: !1086, line: 658, baseType: !114, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !1086, line: 660, baseType: !7, size: 32, offset: 288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1085, file: !1086, line: 661, baseType: !7, size: 32, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1085, file: !1086, line: 684, baseType: !108, size: 32, offset: 352)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1085, file: !1086, line: 686, baseType: !108, size: 32, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1085, file: !1086, line: 687, baseType: !108, size: 32, offset: 416)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1085, file: !1086, line: 688, baseType: !108, size: 32, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1085, file: !1086, line: 689, baseType: !7, size: 32, offset: 480)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1085, file: !1086, line: 691, baseType: !1106, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1086, line: 691, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1085, file: !1086, line: 692, baseType: !1110, size: 832, offset: 576)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1086, line: 451, size: 832, elements: !1111)
!1111 = !{!1112, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1110, file: !1086, line: 453, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1086, line: 325, size: 128, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1113, file: !1086, line: 326, baseType: !99, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1113, file: !1086, line: 327, baseType: !329, size: 32, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1110, file: !1086, line: 454, baseType: !720, size: 192, align: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1110, file: !1086, line: 455, baseType: !135, size: 128, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1110, file: !1086, line: 456, baseType: !7, size: 32, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1110, file: !1086, line: 458, baseType: !335, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1110, file: !1086, line: 459, baseType: !335, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1110, file: !1086, line: 460, baseType: !335, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1110, file: !1086, line: 461, baseType: !335, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1110, file: !1086, line: 463, baseType: !335, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1110, file: !1086, line: 465, baseType: !1126, offset: 832)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1086, line: 415, elements: !162)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1085, file: !1086, line: 693, baseType: !1128, size: 384, offset: 1408)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1086, line: 489, size: 384, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1128, file: !1086, line: 490, baseType: !135, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1128, file: !1086, line: 491, baseType: !99, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1128, file: !1086, line: 492, baseType: !99, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1128, file: !1086, line: 493, baseType: !7, size: 32, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1128, file: !1086, line: 494, baseType: !231, size: 16, offset: 288)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1128, file: !1086, line: 495, baseType: !231, size: 16, offset: 304)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1128, file: !1086, line: 497, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1085, file: !1086, line: 697, baseType: !1139, size: 1792, offset: 1792)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1086, line: 507, size: 1792, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1220, !1221}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1139, file: !1086, line: 508, baseType: !720, size: 192, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1139, file: !1086, line: 515, baseType: !335, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1139, file: !1086, line: 516, baseType: !335, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1139, file: !1086, line: 517, baseType: !335, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1139, file: !1086, line: 518, baseType: !335, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1139, file: !1086, line: 519, baseType: !335, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1139, file: !1086, line: 526, baseType: !648, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1139, file: !1086, line: 527, baseType: !335, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1086, line: 528, baseType: !7, size: 32, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1139, file: !1086, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1139, file: !1086, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1139, file: !1086, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1139, file: !1086, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1139, file: !1086, line: 563, baseType: !1155, size: 512, offset: 704)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1156)
!1156 = !{!1157, !1165, !1166, !1171, !1214, !1217, !1218, !1219}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1155, file: !14, line: 119, baseType: !1158, size: 256)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1159, line: 9, size: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1158, file: !1159, line: 10, baseType: !720, size: 192, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1158, file: !1159, line: 11, baseType: !1163, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1164, line: 29, baseType: !648)
!1164 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1155, file: !14, line: 120, baseType: !1163, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1155, file: !14, line: 121, baseType: !1167, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!13, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1155, file: !14, line: 122, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1174)
!1174 = !{!1175, !1195, !1196, !1199, !1204, !1205, !1209, !1213}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1173, file: !14, line: 160, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1177, file: !14, line: 215, baseType: !733)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1177, file: !14, line: 216, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1177, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1177, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1177, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1177, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1177, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1177, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1177, file: !14, line: 233, baseType: !1163, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1177, file: !14, line: 234, baseType: !1170, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1177, file: !14, line: 235, baseType: !1163, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1177, file: !14, line: 236, baseType: !1170, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1177, file: !14, line: 237, baseType: !1192, size: 4096, offset: 512)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 4096, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 8)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1173, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1173, file: !14, line: 162, baseType: !1197, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !98, line: 27, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !222, line: 96, baseType: !108)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1173, file: !14, line: 163, baseType: !1200, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !302, line: 276, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !302, line: 276, size: 32, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1201, file: !302, line: 276, baseType: !306, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1173, file: !14, line: 164, baseType: !1170, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1173, file: !14, line: 165, baseType: !1206, size: 128, offset: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1159, line: 14, size: 128, elements: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1206, file: !1159, line: 15, baseType: !712, size: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1173, file: !14, line: 166, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1163}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1173, file: !14, line: 167, baseType: !1163, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1155, file: !14, line: 123, baseType: !1215, size: 8, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !330, line: 17, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !332, line: 21, baseType: !96)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1155, file: !14, line: 124, baseType: !1215, size: 8, offset: 456)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1155, file: !14, line: 125, baseType: !1215, size: 8, offset: 464)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1155, file: !14, line: 126, baseType: !1215, size: 8, offset: 472)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1139, file: !1086, line: 572, baseType: !1155, size: 512, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1139, file: !1086, line: 580, baseType: !1222, size: 64, offset: 1728)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1085, file: !1086, line: 721, baseType: !7, size: 32, offset: 3584)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1085, file: !1086, line: 722, baseType: !108, size: 32, offset: 3616)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1085, file: !1086, line: 723, baseType: !1226, size: 64, offset: 3648)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1229, line: 17, baseType: !1230)
!1229 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1229, line: 17, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1230, file: !1229, line: 17, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 1)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1085, file: !1086, line: 724, baseType: !1228, size: 64, offset: 3712)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1085, file: !1086, line: 749, baseType: !1238, offset: 3776)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1086, line: 290, elements: !162)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1085, file: !1086, line: 751, baseType: !135, size: 128, offset: 3776)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1085, file: !1086, line: 757, baseType: !928, size: 64, offset: 3904)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1085, file: !1086, line: 758, baseType: !928, size: 64, offset: 3968)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1085, file: !1086, line: 761, baseType: !1243, size: 320, offset: 4032)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1025, line: 34, size: 320, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1243, file: !1025, line: 35, baseType: !335, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1243, file: !1025, line: 36, baseType: !1247, size: 256, offset: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 256, elements: !1029)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1085, file: !1086, line: 766, baseType: !108, size: 32, offset: 4352)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1085, file: !1086, line: 767, baseType: !108, size: 32, offset: 4384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1085, file: !1086, line: 768, baseType: !108, size: 32, offset: 4416)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1085, file: !1086, line: 770, baseType: !108, size: 32, offset: 4448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1085, file: !1086, line: 772, baseType: !99, size: 64, offset: 4480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1085, file: !1086, line: 775, baseType: !7, size: 32, offset: 4544)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1085, file: !1086, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1085, file: !1086, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1085, file: !1086, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1085, file: !1086, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1085, file: !1086, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1085, file: !1086, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1085, file: !1086, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1085, file: !1086, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1085, file: !1086, line: 831, baseType: !99, size: 64, offset: 4672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1085, file: !1086, line: 833, baseType: !1264, size: 384, offset: 4736)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1265)
!1265 = !{!1266, !1271}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1264, file: !19, line: 26, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!224, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !19, line: 27, baseType: !1272, size: 320, offset: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !19, line: 27, size: 320, elements: !1273)
!1273 = !{!1274, !1284, !1311}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1272, file: !19, line: 36, baseType: !1275, size: 320)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 29, size: 320, elements: !1276)
!1276 = !{!1277, !1279, !1280, !1281, !1282, !1283}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1275, file: !19, line: 30, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1275, file: !19, line: 31, baseType: !329, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !19, line: 32, baseType: !329, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1275, file: !19, line: 33, baseType: !329, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1275, file: !19, line: 34, baseType: !335, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1275, file: !19, line: 35, baseType: !1278, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1272, file: !19, line: 46, baseType: !1285, size: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 38, size: 192, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1310}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1285, file: !19, line: 39, baseType: !1197, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1285, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !19, line: 41, baseType: !1290, size: 64, offset: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !19, line: 41, size: 64, elements: !1291)
!1291 = !{!1292, !1300}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1290, file: !19, line: 42, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1295, line: 7, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1294, file: !1295, line: 8, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !222, line: 93, baseType: !446)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1294, file: !1295, line: 9, baseType: !446, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1290, file: !19, line: 43, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1303, line: 7, size: 64, elements: !1304)
!1303 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1309}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1302, file: !1303, line: 8, baseType: !1306, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1303, line: 5, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !330, line: 20, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !332, line: 26, baseType: !108)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1302, file: !1303, line: 9, baseType: !1307, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1285, file: !19, line: 45, baseType: !335, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1272, file: !19, line: 54, baseType: !1312, size: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !19, line: 48, size: 256, elements: !1313)
!1313 = !{!1314, !1317, !1318, !1319, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1312, file: !19, line: 49, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1312, file: !19, line: 50, baseType: !108, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1312, file: !19, line: 51, baseType: !108, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1312, file: !19, line: 52, baseType: !99, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1312, file: !19, line: 53, baseType: !99, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1085, file: !1086, line: 835, baseType: !1322, size: 32, offset: 5120)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !98, line: 22, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !222, line: 28, baseType: !108)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1085, file: !1086, line: 836, baseType: !1322, size: 32, offset: 5152)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1085, file: !1086, line: 840, baseType: !99, size: 64, offset: 5184)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1085, file: !1086, line: 849, baseType: !1084, size: 64, offset: 5248)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1085, file: !1086, line: 852, baseType: !1084, size: 64, offset: 5312)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1085, file: !1086, line: 857, baseType: !135, size: 128, offset: 5376)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1085, file: !1086, line: 858, baseType: !135, size: 128, offset: 5504)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1085, file: !1086, line: 859, baseType: !1084, size: 64, offset: 5632)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1085, file: !1086, line: 867, baseType: !135, size: 128, offset: 5696)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1085, file: !1086, line: 868, baseType: !135, size: 128, offset: 5824)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1085, file: !1086, line: 871, baseType: !1334, size: 64, offset: 5952)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1342, !1343, !1350, !1351}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1335, file: !40, line: 61, baseType: !114, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1335, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !40, line: 63, baseType: !148, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1335, file: !40, line: 65, baseType: !1341, size: 256, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 256, elements: !1029)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1335, file: !40, line: 66, baseType: !550, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1335, file: !40, line: 68, baseType: !1344, size: 128, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1345, line: 40, baseType: !1346)
!1345 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1345, line: 36, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !1345, line: 37, baseType: !148)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1346, file: !1345, line: 38, baseType: !135, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1335, file: !40, line: 69, baseType: !279, size: 128, align: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1335, file: !40, line: 70, baseType: !1352, size: 128, offset: 640)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 128, elements: !1234)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1353, file: !40, line: 55, baseType: !108, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1353, file: !40, line: 56, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1085, file: !1086, line: 872, baseType: !1360, size: 512, offset: 6016)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 512, elements: !1029)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1085, file: !1086, line: 873, baseType: !135, size: 128, offset: 6528)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1085, file: !1086, line: 874, baseType: !135, size: 128, offset: 6656)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1085, file: !1086, line: 876, baseType: !1364, size: 64, offset: 6784)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1366, line: 26, size: 192, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1365, file: !1366, line: 27, baseType: !7, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1365, file: !1366, line: 28, baseType: !1370, size: 128, offset: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1371, line: 43, size: 128, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1371, line: 44, baseType: !733)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1370, file: !1371, line: 45, baseType: !135, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1085, file: !1086, line: 879, baseType: !620, size: 64, offset: 6848)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1085, file: !1086, line: 882, baseType: !620, size: 64, offset: 6912)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1085, file: !1086, line: 884, baseType: !335, size: 64, offset: 6976)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1085, file: !1086, line: 885, baseType: !335, size: 64, offset: 7040)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1085, file: !1086, line: 890, baseType: !335, size: 64, offset: 7104)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1085, file: !1086, line: 891, baseType: !1381, size: 128, offset: 7168)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1086, line: 242, size: 128, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1381, file: !1086, line: 244, baseType: !335, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1381, file: !1086, line: 245, baseType: !335, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !1086, line: 246, baseType: !733, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1085, file: !1086, line: 900, baseType: !99, size: 64, offset: 7296)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1085, file: !1086, line: 901, baseType: !99, size: 64, offset: 7360)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1085, file: !1086, line: 904, baseType: !335, size: 64, offset: 7424)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1085, file: !1086, line: 907, baseType: !335, size: 64, offset: 7488)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1085, file: !1086, line: 910, baseType: !99, size: 64, offset: 7552)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1085, file: !1086, line: 911, baseType: !99, size: 64, offset: 7616)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1085, file: !1086, line: 914, baseType: !1393, size: 640, offset: 7680)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1394, line: 123, size: 640, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1402, !1403}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1393, file: !1394, line: 124, baseType: !1397, size: 576)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 576, elements: !190)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1394, line: 108, size: 192, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1398, file: !1394, line: 109, baseType: !335, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1398, file: !1394, line: 110, baseType: !1206, size: 128, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1393, file: !1394, line: 125, baseType: !7, size: 32, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1393, file: !1394, line: 126, baseType: !7, size: 32, offset: 608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1085, file: !1086, line: 917, baseType: !1405, size: 192, offset: 8320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1394, line: 134, size: 192, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1405, file: !1394, line: 135, baseType: !279, size: 128, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1405, file: !1394, line: 136, baseType: !7, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1085, file: !1086, line: 923, baseType: !1410, size: 64, offset: 8512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1413, line: 111, size: 1280, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1434, !1435, !1436, !1437, !1438, !1439, !1546, !1547, !1548, !1549, !1575, !1578, !1588}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1412, file: !1413, line: 112, baseType: !118, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1412, file: !1413, line: 120, baseType: !348, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1412, file: !1413, line: 121, baseType: !356, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1412, file: !1413, line: 122, baseType: !348, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1412, file: !1413, line: 123, baseType: !356, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1412, file: !1413, line: 124, baseType: !348, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1412, file: !1413, line: 125, baseType: !356, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1412, file: !1413, line: 126, baseType: !348, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1412, file: !1413, line: 127, baseType: !356, size: 32, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1412, file: !1413, line: 128, baseType: !7, size: 32, offset: 288)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1412, file: !1413, line: 129, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1427, line: 26, baseType: !1428)
!1427 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1427, line: 24, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1428, file: !1427, line: 25, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 2)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1412, file: !1413, line: 130, baseType: !1426, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1412, file: !1413, line: 131, baseType: !1426, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1412, file: !1413, line: 132, baseType: !1426, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1412, file: !1413, line: 133, baseType: !1426, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1412, file: !1413, line: 135, baseType: !96, size: 8, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1412, file: !1413, line: 137, baseType: !1440, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1442, line: 189, size: 1664, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445, !1448, !1453, !1454, !1457, !1458, !1463, !1464, !1465, !1466, !1468, !1469, !1470, !1471, !1472, !1510, !1531}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1441, file: !1442, line: 190, baseType: !114, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1441, file: !1442, line: 191, baseType: !1446, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1442, line: 28, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !98, line: 98, baseType: !1307)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 192, baseType: !1449, size: 192, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 192, size: 192, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1449, file: !1442, line: 193, baseType: !135, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1449, file: !1442, line: 194, baseType: !720, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1441, file: !1442, line: 199, baseType: !727, size: 256, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1441, file: !1442, line: 200, baseType: !1455, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1442, line: 200, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1441, file: !1442, line: 201, baseType: !94, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 202, baseType: !1459, size: 64, offset: 640)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 202, size: 64, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1459, file: !1442, line: 203, baseType: !452, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1459, file: !1442, line: 204, baseType: !452, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1441, file: !1442, line: 206, baseType: !452, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1441, file: !1442, line: 207, baseType: !348, size: 32, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1441, file: !1442, line: 208, baseType: !356, size: 32, offset: 800)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1441, file: !1442, line: 209, baseType: !1467, size: 32, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1442, line: 31, baseType: !472)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1441, file: !1442, line: 210, baseType: !231, size: 16, offset: 864)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1441, file: !1442, line: 211, baseType: !231, size: 16, offset: 880)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !1442, line: 215, baseType: !1073, size: 16, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1442, line: 222, baseType: !99, size: 64, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 239, baseType: !1473, size: 320, offset: 1024)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 239, size: 320, elements: !1474)
!1474 = !{!1475, !1502}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1473, file: !1442, line: 240, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1442, line: 108, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1491, !1494, !1501}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1476, file: !1442, line: 110, baseType: !99, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1442, line: 111, baseType: !1480, size: 64, offset: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1442, line: 111, size: 64, elements: !1481)
!1481 = !{!1482, !1490}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1442, line: 112, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !1442, line: 112, size: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1483, file: !1442, line: 114, baseType: !812, size: 16)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1483, file: !1442, line: 115, baseType: !1487, size: 48, offset: 16)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 48, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1480, file: !1442, line: 121, baseType: !99, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !1442, line: 123, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1442, line: 96, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1476, file: !1442, line: 124, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1442, line: 102, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1496, file: !1442, line: 103, baseType: !279, size: 128, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1496, file: !1442, line: 104, baseType: !114, size: 32, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1496, file: !1442, line: 105, baseType: !403, size: 8, offset: 160)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1476, file: !1442, line: 125, baseType: !131, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1442, line: 241, baseType: !1503, size: 320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !1442, line: 241, size: 320, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1503, file: !1442, line: 242, baseType: !99, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1503, file: !1442, line: 243, baseType: !99, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1503, file: !1442, line: 244, baseType: !1492, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1503, file: !1442, line: 245, baseType: !1495, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1503, file: !1442, line: 246, baseType: !189, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 254, baseType: !1511, size: 256, offset: 1344)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 254, size: 256, elements: !1512)
!1512 = !{!1513, !1519}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1511, file: !1442, line: 255, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1442, line: 128, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1514, file: !1442, line: 129, baseType: !94, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1514, file: !1442, line: 130, baseType: !1518, size: 256)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !1029)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1442, line: 256, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1442, line: 256, size: 256, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1520, file: !1442, line: 258, baseType: !135, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1520, file: !1442, line: 259, baseType: !1524, size: 128, offset: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1525, line: 22, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1524, file: !1525, line: 23, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1525, line: 23, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1524, file: !1525, line: 24, baseType: !99, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1441, file: !1442, line: 274, baseType: !1532, size: 64, offset: 1600)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1442, line: 170, size: 192, elements: !1534)
!1534 = !{!1535, !1544, !1545}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1533, file: !1442, line: 171, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1442, line: 165, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!108, !1440, !1540, !1542, !1440}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1533, file: !1442, line: 172, baseType: !1440, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1533, file: !1442, line: 173, baseType: !1492, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1412, file: !1413, line: 138, baseType: !1440, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1412, file: !1413, line: 139, baseType: !1440, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1412, file: !1413, line: 140, baseType: !1440, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1412, file: !1413, line: 145, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1552, line: 13, size: 896, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1551, file: !1552, line: 14, baseType: !114, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1551, file: !1552, line: 15, baseType: !118, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1551, file: !1552, line: 16, baseType: !118, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1551, file: !1552, line: 21, baseType: !642, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1551, file: !1552, line: 27, baseType: !99, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1551, file: !1552, line: 28, baseType: !99, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1551, file: !1552, line: 29, baseType: !642, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1551, file: !1552, line: 32, baseType: !554, size: 128, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1552, line: 33, baseType: !348, size: 32, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1551, file: !1552, line: 37, baseType: !642, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1551, file: !1552, line: 44, baseType: !1565, size: 256, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1566, line: 15, size: 256, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1566, line: 16, baseType: !733)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1565, file: !1566, line: 18, baseType: !108, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1565, file: !1566, line: 19, baseType: !108, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1565, file: !1566, line: 20, baseType: !108, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1565, file: !1566, line: 21, baseType: !108, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1565, file: !1566, line: 22, baseType: !99, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1566, line: 23, baseType: !99, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1412, file: !1413, line: 146, baseType: !1576, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !349, line: 18, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1412, file: !1413, line: 147, baseType: !1579, size: 64, offset: 1088)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1413, line: 25, size: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1580, file: !1413, line: 26, baseType: !118, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1580, file: !1413, line: 27, baseType: !108, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1580, file: !1413, line: 28, baseType: !1585, offset: 64)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, elements: !1586)
!1586 = !{!1587}
!1587 = !DISubrange(count: 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 149, baseType: !1589, size: 128, offset: 1152)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 149, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1589, file: !1413, line: 150, baseType: !108, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1589, file: !1413, line: 151, baseType: !279, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1085, file: !1086, line: 926, baseType: !1410, size: 64, offset: 8576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1085, file: !1086, line: 929, baseType: !1410, size: 64, offset: 8640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1085, file: !1086, line: 933, baseType: !1440, size: 64, offset: 8704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1085, file: !1086, line: 943, baseType: !1597, size: 128, offset: 8768)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 16)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1085, file: !1086, line: 945, baseType: !1601, size: 64, offset: 8896)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1086, line: 49, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1085, file: !1086, line: 956, baseType: !1604, size: 64, offset: 8960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1086, line: 45, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1085, file: !1086, line: 959, baseType: !1607, size: 64, offset: 9024)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1086, line: 959, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1085, file: !1086, line: 962, baseType: !1610, size: 64, offset: 9088)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1086, line: 66, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1085, file: !1086, line: 966, baseType: !1613, size: 64, offset: 9152)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1086, line: 50, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1085, file: !1086, line: 969, baseType: !1616, size: 64, offset: 9216)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1618, line: 82, size: 7296, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1655, !1664, !1665, !1667, !1668, !1669, !1670, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1700, !1701, !1708, !1709, !1710, !1711, !1712, !1713}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1617, file: !1618, line: 83, baseType: !114, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1617, file: !1618, line: 84, baseType: !118, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1617, file: !1618, line: 85, baseType: !108, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1617, file: !1618, line: 86, baseType: !135, size: 128, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1617, file: !1618, line: 88, baseType: !1344, size: 128, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1617, file: !1618, line: 91, baseType: !1084, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1617, file: !1618, line: 94, baseType: !1627, size: 192, offset: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1628, line: 30, size: 192, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1628, line: 31, baseType: !135, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1627, file: !1628, line: 32, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1633, line: 25, baseType: !1634)
!1633 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 23, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1634, file: !1633, line: 24, baseType: !1233, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1617, file: !1618, line: 97, baseType: !550, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1617, file: !1618, line: 100, baseType: !108, size: 32, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1617, file: !1618, line: 106, baseType: !108, size: 32, offset: 736)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1617, file: !1618, line: 107, baseType: !1084, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1617, file: !1618, line: 110, baseType: !108, size: 32, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 111, baseType: !7, size: 32, offset: 864)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1617, file: !1618, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1617, file: !1618, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1617, file: !1618, line: 128, baseType: !108, size: 32, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1617, file: !1618, line: 129, baseType: !135, size: 128, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1617, file: !1618, line: 132, baseType: !1155, size: 512, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1617, file: !1618, line: 133, baseType: !1163, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1617, file: !1618, line: 140, baseType: !1650, size: 256, offset: 1664)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 256, elements: !1432)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1618, line: 38, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1651, file: !1618, line: 39, baseType: !335, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1651, file: !1618, line: 40, baseType: !335, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1617, file: !1618, line: 146, baseType: !1656, size: 192, offset: 1920)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1618, line: 66, size: 192, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1656, file: !1618, line: 67, baseType: !1659, size: 192)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1618, line: 47, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1659, file: !1618, line: 48, baseType: !644, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1659, file: !1618, line: 49, baseType: !644, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1659, file: !1618, line: 50, baseType: !644, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1617, file: !1618, line: 150, baseType: !1393, size: 640, offset: 2112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1617, file: !1618, line: 153, baseType: !1666, size: 256, offset: 2752)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 256, elements: !1029)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1617, file: !1618, line: 159, baseType: !1334, size: 64, offset: 3008)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1617, file: !1618, line: 162, baseType: !108, size: 32, offset: 3072)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1617, file: !1618, line: 164, baseType: !103, size: 64, offset: 3136)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1617, file: !1618, line: 175, baseType: !1671, size: 32, offset: 3200)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !302, line: 805, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 798, size: 32, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1672, file: !302, line: 803, baseType: !301, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1672, file: !302, line: 804, baseType: !148, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1617, file: !1618, line: 176, baseType: !335, size: 64, offset: 3264)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1617, file: !1618, line: 176, baseType: !335, size: 64, offset: 3328)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1617, file: !1618, line: 176, baseType: !335, size: 64, offset: 3392)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1617, file: !1618, line: 176, baseType: !335, size: 64, offset: 3456)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1617, file: !1618, line: 177, baseType: !335, size: 64, offset: 3520)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1617, file: !1618, line: 178, baseType: !335, size: 64, offset: 3584)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1617, file: !1618, line: 179, baseType: !1381, size: 128, offset: 3648)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1617, file: !1618, line: 180, baseType: !99, size: 64, offset: 3776)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1617, file: !1618, line: 180, baseType: !99, size: 64, offset: 3840)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1617, file: !1618, line: 180, baseType: !99, size: 64, offset: 3904)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1617, file: !1618, line: 180, baseType: !99, size: 64, offset: 3968)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1617, file: !1618, line: 181, baseType: !99, size: 64, offset: 4032)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1617, file: !1618, line: 181, baseType: !99, size: 64, offset: 4096)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1617, file: !1618, line: 181, baseType: !99, size: 64, offset: 4160)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1617, file: !1618, line: 181, baseType: !99, size: 64, offset: 4224)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1617, file: !1618, line: 182, baseType: !99, size: 64, offset: 4288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1617, file: !1618, line: 182, baseType: !99, size: 64, offset: 4352)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1617, file: !1618, line: 182, baseType: !99, size: 64, offset: 4416)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1617, file: !1618, line: 182, baseType: !99, size: 64, offset: 4480)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1617, file: !1618, line: 183, baseType: !99, size: 64, offset: 4544)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1617, file: !1618, line: 183, baseType: !99, size: 64, offset: 4608)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1617, file: !1618, line: 184, baseType: !1698, offset: 4672)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1699, line: 12, elements: !162)
!1699 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1617, file: !1618, line: 192, baseType: !337, size: 64, offset: 4672)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1617, file: !1618, line: 203, baseType: !1702, size: 2048, offset: 4736)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 2048, elements: !1598)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1704, line: 43, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1703, file: !1704, line: 44, baseType: !238, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1703, file: !1704, line: 45, baseType: !238, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1617, file: !1618, line: 220, baseType: !403, size: 8, offset: 6784)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1617, file: !1618, line: 221, baseType: !1073, size: 16, offset: 6800)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1617, file: !1618, line: 222, baseType: !1073, size: 16, offset: 6816)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1617, file: !1618, line: 224, baseType: !928, size: 64, offset: 6848)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1617, file: !1618, line: 227, baseType: !638, size: 192, offset: 6912)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1617, file: !1618, line: 233, baseType: !638, size: 192, offset: 7104)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1085, file: !1086, line: 970, baseType: !1715, size: 64, offset: 9280)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1618, line: 20, size: 16576, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1716, file: !1618, line: 21, baseType: !148)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1716, file: !1618, line: 22, baseType: !114, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1716, file: !1618, line: 23, baseType: !1344, size: 128, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1716, file: !1618, line: 24, baseType: !1722, size: 16384, offset: 192)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1723, size: 16384, elements: !194)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1628, line: 49, size: 256, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1723, file: !1628, line: 50, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1628, line: 35, size: 256, elements: !1727)
!1727 = !{!1728, !1735, !1736, !1742}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1726, file: !1628, line: 37, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1730, line: 19, baseType: !1731)
!1730 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1730, line: 18, baseType: !1733)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !108}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1726, file: !1628, line: 38, baseType: !99, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1726, file: !1628, line: 44, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1730, line: 22, baseType: !1738)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1730, line: 21, baseType: !1740)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1726, file: !1628, line: 46, baseType: !1632, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1085, file: !1086, line: 971, baseType: !1632, size: 64, offset: 9344)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1085, file: !1086, line: 972, baseType: !1632, size: 64, offset: 9408)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1085, file: !1086, line: 974, baseType: !1632, size: 64, offset: 9472)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1085, file: !1086, line: 975, baseType: !1627, size: 192, offset: 9536)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1085, file: !1086, line: 976, baseType: !99, size: 64, offset: 9728)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1085, file: !1086, line: 977, baseType: !236, size: 64, offset: 9792)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1085, file: !1086, line: 978, baseType: !7, size: 32, offset: 9856)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1085, file: !1086, line: 980, baseType: !282, size: 64, offset: 9920)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1085, file: !1086, line: 989, baseType: !1752, size: 128, offset: 9984)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1753, line: 35, size: 128, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1752, file: !1753, line: 36, baseType: !108, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1752, file: !1753, line: 37, baseType: !118, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1752, file: !1753, line: 38, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1753, line: 23, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1085, file: !1086, line: 992, baseType: !335, size: 64, offset: 10112)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1085, file: !1086, line: 993, baseType: !335, size: 64, offset: 10176)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1085, file: !1086, line: 996, baseType: !148, offset: 10240)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1085, file: !1086, line: 999, baseType: !733, offset: 10240)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1085, file: !1086, line: 1001, baseType: !1765, size: 64, offset: 10240)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1086, line: 636, size: 64, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1765, file: !1086, line: 637, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1085, file: !1086, line: 1005, baseType: !712, size: 128, offset: 10304)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1085, file: !1086, line: 1007, baseType: !1084, size: 64, offset: 10432)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1085, file: !1086, line: 1009, baseType: !1772, size: 64, offset: 10496)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1086, line: 1009, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1085, file: !1086, line: 1043, baseType: !94, size: 64, offset: 10560)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1085, file: !1086, line: 1046, baseType: !1776, size: 64, offset: 10624)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1086, line: 41, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1085, file: !1086, line: 1050, baseType: !1779, size: 64, offset: 10688)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1086, line: 42, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1085, file: !1086, line: 1054, baseType: !1782, size: 64, offset: 10752)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1086, line: 55, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1085, file: !1086, line: 1056, baseType: !1785, size: 64, offset: 10816)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1086, line: 40, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1085, file: !1086, line: 1058, baseType: !1788, size: 64, offset: 10880)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1790, line: 99, size: 704, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1817, !1818}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1789, file: !1790, line: 100, baseType: !642, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1789, file: !1790, line: 101, baseType: !118, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1789, file: !1790, line: 102, baseType: !118, size: 32, offset: 96)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !1790, line: 105, baseType: !148, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1789, file: !1790, line: 107, baseType: !231, size: 16, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1789, file: !1790, line: 109, baseType: !703, size: 128, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1789, file: !1790, line: 110, baseType: !1799, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1790, line: 73, size: 448, elements: !1801)
!1801 = !{!1802, !1805, !1806, !1811, !1816}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1800, file: !1790, line: 74, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1790, line: 74, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1800, file: !1790, line: 75, baseType: !1788, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1790, line: 83, baseType: !1807, size: 128, offset: 128)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !1790, line: 83, size: 128, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1807, file: !1790, line: 84, baseType: !135, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1807, file: !1790, line: 85, baseType: !888, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1790, line: 87, baseType: !1812, size: 128, offset: 256)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !1790, line: 87, size: 128, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1812, file: !1790, line: 88, baseType: !554, size: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1812, file: !1790, line: 89, baseType: !279, size: 128, align: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !1790, line: 92, baseType: !7, size: 32, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1789, file: !1790, line: 111, baseType: !550, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1789, file: !1790, line: 113, baseType: !1819, size: 256, offset: 448)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1820, line: 102, size: 256, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1819, file: !1820, line: 103, baseType: !642, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1819, file: !1820, line: 104, baseType: !135, size: 128, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1819, file: !1820, line: 105, baseType: !1825, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1820, line: 21, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1085, file: !1086, line: 1061, baseType: !1831, size: 64, offset: 10944)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1086, line: 43, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1085, file: !1086, line: 1064, baseType: !99, size: 64, offset: 11008)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1085, file: !1086, line: 1065, baseType: !1835, size: 64, offset: 11072)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1628, line: 14, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1628, line: 12, size: 384, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1628, line: 13, baseType: !1840, size: 384)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1837, file: !1628, line: 13, size: 384, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1840, file: !1628, line: 13, baseType: !108, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1840, file: !1628, line: 13, baseType: !108, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1840, file: !1628, line: 13, baseType: !108, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1840, file: !1628, line: 13, baseType: !1846, size: 256, offset: 128)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1847, line: 32, size: 256, elements: !1848)
!1847 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1854, !1867, !1873, !1882, !1902, !1907}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1846, file: !1847, line: 37, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 34, size: 64, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1850, file: !1847, line: 35, baseType: !1323, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1850, file: !1847, line: 36, baseType: !354, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1846, file: !1847, line: 45, baseType: !1855, size: 192)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 40, size: 192, elements: !1856)
!1856 = !{!1857, !1859, !1860, !1866}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1855, file: !1847, line: 41, baseType: !1858, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !222, line: 95, baseType: !108)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1855, file: !1847, line: 42, baseType: !108, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1855, file: !1847, line: 43, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1847, line: 11, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1847, line: 8, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1862, file: !1847, line: 9, baseType: !108, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1862, file: !1847, line: 10, baseType: !94, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1855, file: !1847, line: 44, baseType: !108, size: 32, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1846, file: !1847, line: 52, baseType: !1868, size: 128)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 48, size: 128, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1868, file: !1847, line: 49, baseType: !1323, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1868, file: !1847, line: 50, baseType: !354, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1868, file: !1847, line: 51, baseType: !1861, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1846, file: !1847, line: 61, baseType: !1874, size: 256)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 55, size: 256, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1881}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1874, file: !1847, line: 56, baseType: !1323, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1874, file: !1847, line: 57, baseType: !354, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1874, file: !1847, line: 58, baseType: !108, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1874, file: !1847, line: 59, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !222, line: 94, baseType: !223)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1874, file: !1847, line: 60, baseType: !1880, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1846, file: !1847, line: 95, baseType: !1883, size: 256)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 64, size: 256, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1883, file: !1847, line: 65, baseType: !94, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !1847, line: 77, baseType: !1887, size: 192, offset: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1883, file: !1847, line: 77, size: 192, elements: !1888)
!1888 = !{!1889, !1890, !1897}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1887, file: !1847, line: 82, baseType: !1073, size: 16)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1887, file: !1847, line: 88, baseType: !1891, size: 192)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1847, line: 84, size: 192, elements: !1892)
!1892 = !{!1893, !1895, !1896}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1891, file: !1847, line: 85, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !1193)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1891, file: !1847, line: 86, baseType: !94, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1891, file: !1847, line: 87, baseType: !94, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1887, file: !1847, line: 93, baseType: !1898, size: 96)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1847, line: 90, size: 96, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1898, file: !1847, line: 91, baseType: !1894, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1898, file: !1847, line: 92, baseType: !331, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1846, file: !1847, line: 101, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 98, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1903, file: !1847, line: 99, baseType: !224, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1903, file: !1847, line: 100, baseType: !108, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1846, file: !1847, line: 108, baseType: !1908, size: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1847, line: 104, size: 128, elements: !1909)
!1909 = !{!1910, !1911, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1908, file: !1847, line: 105, baseType: !94, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1908, file: !1847, line: 106, baseType: !108, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1908, file: !1847, line: 107, baseType: !7, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1085, file: !1086, line: 1067, baseType: !1698, offset: 11136)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1085, file: !1086, line: 1099, baseType: !1915, size: 64, offset: 11136)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1086, line: 56, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1085, file: !1086, line: 1103, baseType: !135, size: 128, offset: 11200)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1085, file: !1086, line: 1104, baseType: !1919, size: 64, offset: 11328)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1086, line: 46, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1085, file: !1086, line: 1105, baseType: !638, size: 192, offset: 11392)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1085, file: !1086, line: 1106, baseType: !7, size: 32, offset: 11584)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1085, file: !1086, line: 1109, baseType: !1924, size: 128, offset: 11648)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 128, elements: !1432)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1086, line: 51, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1085, file: !1086, line: 1110, baseType: !638, size: 192, offset: 11776)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1085, file: !1086, line: 1111, baseType: !135, size: 128, offset: 11968)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1085, file: !1086, line: 1173, baseType: !1930, size: 64, offset: 12096)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1932, line: 62, size: 256, align: 256, elements: !1933)
!1932 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !{!1934, !1935, !1936, !1941}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1931, file: !1932, line: 75, baseType: !331, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1931, file: !1932, line: 90, baseType: !331, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1931, file: !1932, line: 124, baseType: !1937, size: 64, offset: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !1932, line: 109, size: 64, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1937, file: !1932, line: 110, baseType: !336, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1937, file: !1932, line: 112, baseType: !336, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1931, file: !1932, line: 144, baseType: !331, size: 32, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1085, file: !1086, line: 1174, baseType: !329, size: 32, offset: 12160)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1085, file: !1086, line: 1179, baseType: !99, size: 64, offset: 12224)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1085, file: !1086, line: 1182, baseType: !1945, size: 128, offset: 12288)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1025, line: 76, size: 128, elements: !1946)
!1946 = !{!1947, !1952, !1953}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1945, file: !1025, line: 85, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1949, line: 7, size: 64, elements: !1950)
!1949 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1948, file: !1949, line: 12, baseType: !1230, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1945, file: !1025, line: 88, baseType: !403, size: 8, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1945, file: !1025, line: 95, baseType: !403, size: 8, offset: 72)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 1184, baseType: !1955, size: 128, offset: 12416)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 1184, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1955, file: !1086, line: 1185, baseType: !114, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1955, file: !1086, line: 1186, baseType: !279, size: 128, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1085, file: !1086, line: 1190, baseType: !1960, size: 64, offset: 12544)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1086, line: 53, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1085, file: !1086, line: 1192, baseType: !1963, size: 128, offset: 12608)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1025, line: 64, size: 128, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1963, file: !1025, line: 65, baseType: !685, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1963, file: !1025, line: 67, baseType: !331, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1963, file: !1025, line: 68, baseType: !331, size: 32, offset: 96)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1085, file: !1086, line: 1206, baseType: !108, size: 32, offset: 12736)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1085, file: !1086, line: 1207, baseType: !108, size: 32, offset: 12768)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1085, file: !1086, line: 1209, baseType: !99, size: 64, offset: 12800)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1085, file: !1086, line: 1219, baseType: !335, size: 64, offset: 12864)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1085, file: !1086, line: 1220, baseType: !335, size: 64, offset: 12928)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1085, file: !1086, line: 1317, baseType: !108, size: 32, offset: 12992)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1085, file: !1086, line: 1319, baseType: !1084, size: 64, offset: 13056)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1085, file: !1086, line: 1322, baseType: !1976, size: 64, offset: 13120)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1086, line: 1322, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1085, file: !1086, line: 1326, baseType: !114, size: 32, offset: 13184)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1085, file: !1086, line: 1342, baseType: !94, size: 64, offset: 13248)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1085, file: !1086, line: 1343, baseType: !336, size: 64, offset: 13312)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1085, file: !1086, line: 1344, baseType: !335, size: 64, offset: 13376)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1085, file: !1086, line: 1345, baseType: !336, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1085, file: !1086, line: 1346, baseType: !336, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1085, file: !1086, line: 1347, baseType: !336, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1085, file: !1086, line: 1348, baseType: !279, size: 128, align: 64, offset: 13504)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1085, file: !1086, line: 1358, baseType: !1987, size: 34816, offset: 13824)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1988, line: 485, size: 34816, elements: !1989)
!1988 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1989 = !{!1990, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2019, !2020, !2021, !2022, !2023, !2024, !2027, !2028, !2029}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1987, file: !1988, line: 487, baseType: !1991, size: 192)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1992, size: 192, elements: !190)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1993, line: 16, size: 64, elements: !1994)
!1993 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1992, file: !1993, line: 17, baseType: !812, size: 16)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1992, file: !1993, line: 18, baseType: !812, size: 16, offset: 16)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1992, file: !1993, line: 19, baseType: !812, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1992, file: !1993, line: 19, baseType: !812, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1992, file: !1993, line: 19, baseType: !812, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1992, file: !1993, line: 19, baseType: !812, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1992, file: !1993, line: 19, baseType: !812, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1992, file: !1993, line: 20, baseType: !812, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1992, file: !1993, line: 20, baseType: !812, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1992, file: !1993, line: 20, baseType: !812, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1992, file: !1993, line: 20, baseType: !812, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1992, file: !1993, line: 20, baseType: !812, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1992, file: !1993, line: 20, baseType: !812, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1987, file: !1988, line: 491, baseType: !99, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1987, file: !1988, line: 495, baseType: !231, size: 16, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1987, file: !1988, line: 496, baseType: !231, size: 16, offset: 272)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1987, file: !1988, line: 497, baseType: !231, size: 16, offset: 288)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1987, file: !1988, line: 498, baseType: !231, size: 16, offset: 304)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1987, file: !1988, line: 502, baseType: !99, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1987, file: !1988, line: 503, baseType: !99, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1987, file: !1988, line: 514, baseType: !2016, size: 256, offset: 448)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 256, elements: !1029)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1988, line: 483, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1987, file: !1988, line: 516, baseType: !99, size: 64, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1987, file: !1988, line: 518, baseType: !99, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1987, file: !1988, line: 520, baseType: !99, size: 64, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1987, file: !1988, line: 521, baseType: !99, size: 64, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1987, file: !1988, line: 522, baseType: !99, size: 64, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1987, file: !1988, line: 528, baseType: !2025, size: 64, offset: 1024)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1988, line: 10, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1987, file: !1988, line: 535, baseType: !99, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1987, file: !1988, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1987, file: !1988, line: 540, baseType: !2030, size: 33280, offset: 1536)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2031, line: 317, size: 33280, elements: !2032)
!2031 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2030, file: !2031, line: 330, baseType: !7, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2030, file: !2031, line: 337, baseType: !99, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2030, file: !2031, line: 348, baseType: !2036, size: 32768, offset: 512)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2031, line: 304, size: 32768, elements: !2037)
!2037 = !{!2038, !2053, !2092, !2142, !2155}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2036, file: !2031, line: 305, baseType: !2039, size: 896)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2031, line: 12, size: 896, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2052}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2039, file: !2031, line: 13, baseType: !329, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2039, file: !2031, line: 14, baseType: !329, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2039, file: !2031, line: 15, baseType: !329, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2039, file: !2031, line: 16, baseType: !329, size: 32, offset: 96)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2039, file: !2031, line: 17, baseType: !329, size: 32, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2039, file: !2031, line: 18, baseType: !329, size: 32, offset: 160)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2039, file: !2031, line: 19, baseType: !329, size: 32, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2039, file: !2031, line: 22, baseType: !2049, size: 640, offset: 224)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 640, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 20)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2039, file: !2031, line: 25, baseType: !329, size: 32, offset: 864)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2036, file: !2031, line: 306, baseType: !2054, size: 4096, align: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2031, line: 34, size: 4096, align: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2075, !2076, !2077, !2081, !2083, !2087}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2054, file: !2031, line: 35, baseType: !812, size: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2054, file: !2031, line: 36, baseType: !812, size: 16, offset: 16)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2054, file: !2031, line: 37, baseType: !812, size: 16, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2054, file: !2031, line: 38, baseType: !812, size: 16, offset: 48)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !2031, line: 39, baseType: !2061, size: 128, offset: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2031, line: 39, size: 128, elements: !2062)
!2062 = !{!2063, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2031, line: 40, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2031, line: 40, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2064, file: !2031, line: 41, baseType: !335, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2064, file: !2031, line: 42, baseType: !335, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2031, line: 44, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !2031, line: 44, size: 128, elements: !2070)
!2070 = !{!2071, !2072, !2073, !2074}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2069, file: !2031, line: 45, baseType: !329, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2069, file: !2031, line: 46, baseType: !329, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2069, file: !2031, line: 47, baseType: !329, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2069, file: !2031, line: 48, baseType: !329, size: 32, offset: 96)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2054, file: !2031, line: 51, baseType: !329, size: 32, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2054, file: !2031, line: 52, baseType: !329, size: 32, offset: 224)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2054, file: !2031, line: 55, baseType: !2078, size: 1024, offset: 256)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 1024, elements: !2079)
!2079 = !{!2080}
!2080 = !DISubrange(count: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2054, file: !2031, line: 58, baseType: !2082, size: 2048, offset: 1280)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 2048, elements: !194)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2054, file: !2031, line: 60, baseType: !2084, size: 384, offset: 3328)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 384, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 12)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !2031, line: 62, baseType: !2088, size: 384, offset: 3712)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2031, line: 62, size: 384, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2088, file: !2031, line: 63, baseType: !2084, size: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2088, file: !2031, line: 64, baseType: !2084, size: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2036, file: !2031, line: 307, baseType: !2093, size: 1088)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2031, line: 79, size: 1088, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2141}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2093, file: !2031, line: 80, baseType: !329, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2093, file: !2031, line: 81, baseType: !329, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2093, file: !2031, line: 82, baseType: !329, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2093, file: !2031, line: 83, baseType: !329, size: 32, offset: 96)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2093, file: !2031, line: 84, baseType: !329, size: 32, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2093, file: !2031, line: 85, baseType: !329, size: 32, offset: 160)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2093, file: !2031, line: 86, baseType: !329, size: 32, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2093, file: !2031, line: 88, baseType: !2049, size: 640, offset: 224)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2093, file: !2031, line: 89, baseType: !1215, size: 8, offset: 864)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2093, file: !2031, line: 90, baseType: !1215, size: 8, offset: 872)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2093, file: !2031, line: 91, baseType: !1215, size: 8, offset: 880)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2093, file: !2031, line: 92, baseType: !1215, size: 8, offset: 888)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2093, file: !2031, line: 93, baseType: !1215, size: 8, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2093, file: !2031, line: 94, baseType: !1215, size: 8, offset: 904)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2093, file: !2031, line: 95, baseType: !2110, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2112, line: 11, size: 128, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2111, file: !2112, line: 12, baseType: !224, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2111, file: !2112, line: 13, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2118, line: 56, size: 1344, elements: !2119)
!2118 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2117, file: !2118, line: 61, baseType: !99, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2117, file: !2118, line: 62, baseType: !99, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2117, file: !2118, line: 63, baseType: !99, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2117, file: !2118, line: 64, baseType: !99, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2117, file: !2118, line: 65, baseType: !99, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2117, file: !2118, line: 66, baseType: !99, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2117, file: !2118, line: 68, baseType: !99, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2117, file: !2118, line: 69, baseType: !99, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2117, file: !2118, line: 70, baseType: !99, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2117, file: !2118, line: 71, baseType: !99, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2117, file: !2118, line: 72, baseType: !99, size: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2117, file: !2118, line: 73, baseType: !99, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2117, file: !2118, line: 74, baseType: !99, size: 64, offset: 768)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2117, file: !2118, line: 75, baseType: !99, size: 64, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2117, file: !2118, line: 76, baseType: !99, size: 64, offset: 896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2117, file: !2118, line: 81, baseType: !99, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2117, file: !2118, line: 83, baseType: !99, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2117, file: !2118, line: 84, baseType: !99, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2118, line: 85, baseType: !99, size: 64, offset: 1152)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2117, file: !2118, line: 86, baseType: !99, size: 64, offset: 1216)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2117, file: !2118, line: 87, baseType: !99, size: 64, offset: 1280)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2093, file: !2031, line: 96, baseType: !329, size: 32, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2036, file: !2031, line: 308, baseType: !2143, size: 4608, align: 512)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2031, line: 289, size: 4608, align: 512, elements: !2144)
!2144 = !{!2145, !2146, !2153}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2143, file: !2031, line: 290, baseType: !2054, size: 4096, align: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2143, file: !2031, line: 291, baseType: !2147, size: 512, offset: 4096)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2031, line: 268, size: 512, elements: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2147, file: !2031, line: 269, baseType: !335, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2147, file: !2031, line: 270, baseType: !335, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2147, file: !2031, line: 271, baseType: !2152, size: 384, offset: 128)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, elements: !1488)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2143, file: !2031, line: 292, baseType: !2154, offset: 4608)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, elements: !1586)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2036, file: !2031, line: 309, baseType: !2156, size: 32768)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 32768, elements: !2157)
!2157 = !{!2158}
!2158 = !DISubrange(count: 4096)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !687, line: 378, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1077, file: !687, line: 384, baseType: !1365, size: 192, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !932, file: !687, line: 500, baseType: !148, offset: 6656)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !932, file: !687, line: 501, baseType: !2164, size: 64, offset: 6656)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !687, line: 387, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !932, file: !687, line: 516, baseType: !1576, size: 64, offset: 6720)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !932, file: !687, line: 519, baseType: !266, size: 64, offset: 6784)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !932, file: !687, line: 521, baseType: !2169, size: 64, offset: 6848)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !687, line: 521, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !932, file: !687, line: 545, baseType: !118, size: 32, offset: 6912)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !932, file: !687, line: 548, baseType: !403, size: 8, offset: 6944)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !932, file: !687, line: 550, baseType: !2174, offset: 6952)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2175, line: 142, elements: !162)
!2175 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !932, file: !687, line: 554, baseType: !1819, size: 256, offset: 6976)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !932, file: !687, line: 557, baseType: !329, size: 32, offset: 7232)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !929, file: !687, line: 565, baseType: !2179, offset: 7296)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !2180)
!2180 = !{!2181}
!2181 = !DISubrange(count: -1)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !925, file: !687, line: 151, baseType: !118, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !917, file: !687, line: 156, baseType: !148, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 159, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 159, size: 128, elements: !2186)
!2186 = !{!2187, !2190}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2185, file: !687, line: 161, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !687, line: 161, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2185, file: !687, line: 162, baseType: !94, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !691, file: !687, line: 176, baseType: !279, size: 128, align: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 179, baseType: !2193, size: 32, offset: 384)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 179, size: 32, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2193, file: !687, line: 184, baseType: !118, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2193, file: !687, line: 192, baseType: !7, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2193, file: !687, line: 194, baseType: !7, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2193, file: !687, line: 195, baseType: !108, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !686, file: !687, line: 199, baseType: !118, size: 32, offset: 416)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !572, file: !31, line: 1964, baseType: !2201, size: 64, offset: 1344)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!224, !512, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2206, line: 12, size: 256, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !{!2208, !2209, !2210, !2211, !2212}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2205, file: !2206, line: 13, baseType: !97, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2205, file: !2206, line: 16, baseType: !108, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2205, file: !2206, line: 23, baseType: !99, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2205, file: !2206, line: 30, baseType: !99, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2205, file: !2206, line: 33, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2206, line: 33, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !572, file: !31, line: 1966, baseType: !2201, size: 64, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !513, file: !31, line: 1424, baseType: !2217, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2220)
!2220 = !{!2221, !2267, !2271, !2275, !2276, !2277, !2278, !2279, !2284, !2289, !2293}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2219, file: !25, line: 323, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!108, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2227)
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2252, !2253, !2254}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2226, file: !25, line: 295, baseType: !554, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2226, file: !25, line: 296, baseType: !135, size: 128, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2226, file: !25, line: 297, baseType: !135, size: 128, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2226, file: !25, line: 298, baseType: !135, size: 128, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2226, file: !25, line: 299, baseType: !638, size: 192, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2226, file: !25, line: 300, baseType: !148, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2226, file: !25, line: 301, baseType: !118, size: 32, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2226, file: !25, line: 302, baseType: !512, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2226, file: !25, line: 303, baseType: !2237, size: 64, offset: 832)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2238)
!2238 = !{!2239, !2251}
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !25, line: 69, baseType: !2240, size: 32)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !25, line: 69, size: 32, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2240, file: !25, line: 70, baseType: !348, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2240, file: !25, line: 71, baseType: !356, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2240, file: !25, line: 72, baseType: !2245, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2246, line: 24, baseType: !2247)
!2246 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2246, line: 22, size: 32, elements: !2248)
!2248 = !{!2249}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2247, file: !2246, line: 23, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2246, line: 20, baseType: !354)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2237, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2226, file: !25, line: 304, baseType: !444, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2226, file: !25, line: 305, baseType: !99, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2226, file: !25, line: 306, baseType: !2255, size: 576, offset: 1024)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2256)
!2256 = !{!2257, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2255, file: !25, line: 206, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !446)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2255, file: !25, line: 207, baseType: !2258, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2255, file: !25, line: 208, baseType: !2258, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2255, file: !25, line: 209, baseType: !2258, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2255, file: !25, line: 210, baseType: !2258, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2255, file: !25, line: 211, baseType: !2258, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2255, file: !25, line: 212, baseType: !2258, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2255, file: !25, line: 213, baseType: !452, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2255, file: !25, line: 214, baseType: !452, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2219, file: !25, line: 324, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2225, !512, !108}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2219, file: !25, line: 325, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !2225}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2219, file: !25, line: 326, baseType: !2222, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2219, file: !25, line: 327, baseType: !2222, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2219, file: !25, line: 328, baseType: !2222, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2219, file: !25, line: 329, baseType: !600, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2219, file: !25, line: 332, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2283, !342}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2219, file: !25, line: 333, baseType: !2285, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!108, !342, !2288}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2219, file: !25, line: 335, baseType: !2290, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!108, !342, !2283}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2219, file: !25, line: 337, baseType: !2294, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!108, !512, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !513, file: !31, line: 1425, baseType: !2299, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2302)
!2302 = !{!2303, !2307, !2308, !2312, !2313, !2314, !2329, !2352, !2356, !2357, !2380}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2301, file: !25, line: 429, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!108, !512, !108, !108, !462}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2301, file: !25, line: 430, baseType: !600, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2301, file: !25, line: 431, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!108, !512, !7}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2301, file: !25, line: 432, baseType: !2309, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2301, file: !25, line: 433, baseType: !600, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2301, file: !25, line: 434, baseType: !2315, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!108, !512, !108, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2319, file: !25, line: 416, baseType: !108, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2319, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2319, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2319, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2319, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2319, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2319, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2319, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2301, file: !25, line: 435, baseType: !2330, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!108, !512, !2237, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2334, file: !25, line: 344, baseType: !108, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2334, file: !25, line: 345, baseType: !335, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2334, file: !25, line: 346, baseType: !335, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2334, file: !25, line: 347, baseType: !335, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2334, file: !25, line: 348, baseType: !335, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2334, file: !25, line: 349, baseType: !335, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2334, file: !25, line: 350, baseType: !335, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2334, file: !25, line: 351, baseType: !648, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2334, file: !25, line: 353, baseType: !648, size: 64, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2334, file: !25, line: 354, baseType: !108, size: 32, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2334, file: !25, line: 355, baseType: !108, size: 32, offset: 608)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2334, file: !25, line: 356, baseType: !335, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2334, file: !25, line: 357, baseType: !335, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2334, file: !25, line: 358, baseType: !335, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2334, file: !25, line: 359, baseType: !648, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2334, file: !25, line: 360, baseType: !108, size: 32, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2301, file: !25, line: 436, baseType: !2353, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!108, !512, !2297, !2333}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2301, file: !25, line: 438, baseType: !2330, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2301, file: !25, line: 439, baseType: !2358, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!108, !512, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2362, file: !25, line: 410, baseType: !7, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2362, file: !25, line: 411, baseType: !2366, size: 1344, offset: 64)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, size: 1344, elements: !190)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2379}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !25, line: 396, baseType: !7, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2367, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2367, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2367, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2367, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2367, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2367, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2367, file: !25, line: 404, baseType: !337, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2367, file: !25, line: 405, baseType: !2378, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !98, line: 126, baseType: !335)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2367, file: !25, line: 406, baseType: !2378, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2301, file: !25, line: 440, baseType: !2309, size: 64, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !513, file: !31, line: 1426, baseType: !2382, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !513, file: !31, line: 1427, baseType: !99, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !513, file: !31, line: 1428, baseType: !99, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !513, file: !31, line: 1429, baseType: !99, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !513, file: !31, line: 1430, baseType: !296, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !513, file: !31, line: 1431, baseType: !727, size: 256, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !513, file: !31, line: 1432, baseType: !108, size: 32, offset: 1152)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !513, file: !31, line: 1433, baseType: !118, size: 32, offset: 1184)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !513, file: !31, line: 1437, baseType: !2393, size: 64, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !513, file: !31, line: 1449, baseType: !2398, size: 64, offset: 1280)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !312, line: 34, size: 64, elements: !2399)
!2399 = !{!2400}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2398, file: !312, line: 35, baseType: !315, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !513, file: !31, line: 1450, baseType: !135, size: 128, offset: 1344)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !513, file: !31, line: 1451, baseType: !2403, size: 64, offset: 1472)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !513, file: !31, line: 1452, baseType: !1785, size: 64, offset: 1536)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !513, file: !31, line: 1453, baseType: !2407, size: 64, offset: 1600)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !513, file: !31, line: 1454, baseType: !554, size: 128, offset: 1664)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !513, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !513, file: !31, line: 1456, baseType: !2412, size: 2432, offset: 1856)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2418, !2450}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !25, line: 519, baseType: !7, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2412, file: !25, line: 520, baseType: !727, size: 256, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2412, file: !25, line: 521, baseType: !2417, size: 192, offset: 320)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !190)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2412, file: !25, line: 522, baseType: !2419, size: 1728, offset: 512)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 1728, elements: !190)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2421)
!2421 = !{!2422, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2420, file: !25, line: 223, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2440, !2441}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2424, file: !25, line: 444, baseType: !108, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2424, file: !25, line: 445, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2430, file: !25, line: 311, baseType: !600, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2430, file: !25, line: 312, baseType: !600, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2430, file: !25, line: 313, baseType: !600, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2430, file: !25, line: 314, baseType: !600, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2430, file: !25, line: 315, baseType: !2222, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2430, file: !25, line: 316, baseType: !2222, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2430, file: !25, line: 317, baseType: !2222, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2430, file: !25, line: 318, baseType: !2294, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2424, file: !25, line: 446, baseType: !545, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2424, file: !25, line: 447, baseType: !2423, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2420, file: !25, line: 224, baseType: !108, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2420, file: !25, line: 226, baseType: !135, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2420, file: !25, line: 227, baseType: !99, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2420, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2420, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2420, file: !25, line: 230, baseType: !2258, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2420, file: !25, line: 231, baseType: !2258, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2420, file: !25, line: 232, baseType: !94, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2412, file: !25, line: 523, baseType: !2451, size: 192, offset: 2240)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 192, elements: !190)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !513, file: !31, line: 1458, baseType: !2453, size: 2112, offset: 4288)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2453, file: !31, line: 1411, baseType: !108, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2453, file: !31, line: 1412, baseType: !1344, size: 128, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2453, file: !31, line: 1413, baseType: !2458, size: 1920, offset: 192)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, size: 1920, elements: !190)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2460, line: 12, size: 640, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2461 = !{!2462, !2470, !2472, !2477, !2478}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2459, file: !2460, line: 13, baseType: !2463, size: 320)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2464, line: 17, size: 320, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2469}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2463, file: !2464, line: 18, baseType: !108, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2463, file: !2464, line: 19, baseType: !108, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2463, file: !2464, line: 20, baseType: !1344, size: 128, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2463, file: !2464, line: 22, baseType: !279, size: 128, align: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2459, file: !2460, line: 14, baseType: !2471, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2459, file: !2460, line: 15, baseType: !2473, size: 64, offset: 384)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2474, line: 16, size: 64, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2473, file: !2474, line: 17, baseType: !1084, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2459, file: !2460, line: 16, baseType: !1344, size: 128, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2459, file: !2460, line: 17, baseType: !118, size: 32, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !513, file: !31, line: 1465, baseType: !94, size: 64, offset: 6400)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !513, file: !31, line: 1468, baseType: !329, size: 32, offset: 6464)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !513, file: !31, line: 1470, baseType: !452, size: 64, offset: 6528)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !513, file: !31, line: 1471, baseType: !452, size: 64, offset: 6592)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !513, file: !31, line: 1473, baseType: !331, size: 32, offset: 6656)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !513, file: !31, line: 1474, baseType: !2485, size: 64, offset: 6720)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !513, file: !31, line: 1477, baseType: !2488, size: 256, offset: 6784)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !2079)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !513, file: !31, line: 1478, baseType: !2490, size: 128, offset: 7040)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2491, line: 18, baseType: !2492)
!2491 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2491, line: 16, size: 128, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2492, file: !2491, line: 17, baseType: !2495, size: 128)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 128, elements: !1598)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !513, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !513, file: !31, line: 1481, baseType: !2498, size: 32, offset: 7200)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !98, line: 150, baseType: !7)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !513, file: !31, line: 1487, baseType: !638, size: 192, offset: 7232)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !513, file: !31, line: 1493, baseType: !131, size: 64, offset: 7424)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !513, file: !31, line: 1495, baseType: !2502, size: 64, offset: 7488)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !294, line: 135, size: 1024, align: 512, elements: !2505)
!2505 = !{!2506, !2510, !2511, !2518, !2524, !2528, !2532, !2536, !2537, !2541, !2545, !2550, !2554}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2504, file: !294, line: 136, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!108, !296, !7}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2504, file: !294, line: 137, baseType: !2507, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2504, file: !294, line: 138, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!108, !2515, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2504, file: !294, line: 139, baseType: !2519, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!108, !2515, !7, !131, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2504, file: !294, line: 141, baseType: !2525, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!108, !2515}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2504, file: !294, line: 142, baseType: !2529, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!108, !296}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2504, file: !294, line: 143, baseType: !2533, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !296}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2504, file: !294, line: 144, baseType: !2533, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2504, file: !294, line: 145, baseType: !2538, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !296, !342}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2504, file: !294, line: 146, baseType: !2542, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!189, !296, !189, !108}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2504, file: !294, line: 147, baseType: !2546, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!292, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2504, file: !294, line: 148, baseType: !2551, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!108, !462, !403}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2504, file: !294, line: 149, baseType: !2555, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!296, !296, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !513, file: !31, line: 1500, baseType: !108, size: 32, offset: 7552)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !513, file: !31, line: 1502, baseType: !2562, size: 448, offset: 7616)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2206, line: 60, size: 448, elements: !2563)
!2563 = !{!2564, !2569, !2570, !2571, !2572, !2573, !2574}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2562, file: !2206, line: 61, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!99, !2568, !2204}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2562, file: !2206, line: 63, baseType: !2565, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2562, file: !2206, line: 66, baseType: !224, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2562, file: !2206, line: 67, baseType: !108, size: 32, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !2206, line: 68, baseType: !7, size: 32, offset: 224)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2562, file: !2206, line: 71, baseType: !135, size: 128, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2562, file: !2206, line: 77, baseType: !2575, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !513, file: !31, line: 1505, baseType: !642, size: 64, offset: 8064)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !513, file: !31, line: 1508, baseType: !642, size: 64, offset: 8128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !513, file: !31, line: 1511, baseType: !108, size: 32, offset: 8192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !513, file: !31, line: 1514, baseType: !862, size: 32, offset: 8224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !513, file: !31, line: 1517, baseType: !2581, size: 64, offset: 8256)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1820, line: 18, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !513, file: !31, line: 1518, baseType: !550, size: 64, offset: 8320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !513, file: !31, line: 1525, baseType: !1576, size: 64, offset: 8384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !513, file: !31, line: 1532, baseType: !2586, size: 64, offset: 8448)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2587, line: 52, size: 64, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2586, file: !2587, line: 53, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2587, line: 40, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2599}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2591, file: !2587, line: 42, baseType: !148)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2591, file: !2587, line: 44, baseType: !2595, size: 192)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2587, line: 28, size: 192, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2595, file: !2587, line: 29, baseType: !135, size: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2595, file: !2587, line: 31, baseType: !224, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2591, file: !2587, line: 49, baseType: !224, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !513, file: !31, line: 1533, baseType: !2586, size: 64, offset: 8512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !513, file: !31, line: 1534, baseType: !279, size: 128, align: 64, offset: 8576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !513, file: !31, line: 1535, baseType: !1819, size: 256, offset: 8704)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !513, file: !31, line: 1537, baseType: !638, size: 192, offset: 8960)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !513, file: !31, line: 1542, baseType: !108, size: 32, offset: 9152)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !513, file: !31, line: 1545, baseType: !148, offset: 9184)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !513, file: !31, line: 1546, baseType: !135, size: 128, offset: 9216)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !513, file: !31, line: 1548, baseType: !148, offset: 9344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !513, file: !31, line: 1549, baseType: !135, size: 128, offset: 9344)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !343, file: !31, line: 624, baseType: !698, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !343, file: !31, line: 631, baseType: !99, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !31, line: 639, baseType: !2612, size: 32, offset: 384)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !31, line: 639, size: 32, elements: !2613)
!2613 = !{!2614, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2612, file: !31, line: 640, baseType: !2615, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2612, file: !31, line: 641, baseType: !7, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !343, file: !31, line: 643, baseType: !426, size: 32, offset: 416)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !343, file: !31, line: 644, baseType: !444, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !343, file: !31, line: 645, baseType: !448, size: 128, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !343, file: !31, line: 646, baseType: !448, size: 128, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !343, file: !31, line: 647, baseType: !448, size: 128, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !343, file: !31, line: 648, baseType: !148, offset: 896)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !343, file: !31, line: 649, baseType: !231, size: 16, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !343, file: !31, line: 650, baseType: !1215, size: 8, offset: 912)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !343, file: !31, line: 651, baseType: !1215, size: 8, offset: 920)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !343, file: !31, line: 652, baseType: !2378, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !343, file: !31, line: 659, baseType: !99, size: 64, offset: 1024)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !343, file: !31, line: 660, baseType: !727, size: 256, offset: 1088)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !343, file: !31, line: 662, baseType: !99, size: 64, offset: 1344)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !343, file: !31, line: 663, baseType: !99, size: 64, offset: 1408)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !343, file: !31, line: 665, baseType: !554, size: 128, offset: 1472)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !343, file: !31, line: 666, baseType: !135, size: 128, offset: 1600)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !343, file: !31, line: 675, baseType: !135, size: 128, offset: 1728)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !343, file: !31, line: 676, baseType: !135, size: 128, offset: 1856)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !343, file: !31, line: 677, baseType: !135, size: 128, offset: 1984)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !31, line: 678, baseType: !2637, size: 128, offset: 2112)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !31, line: 678, size: 128, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2637, file: !31, line: 679, baseType: !550, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2637, file: !31, line: 680, baseType: !279, size: 128, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !343, file: !31, line: 682, baseType: !644, size: 64, offset: 2240)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !343, file: !31, line: 683, baseType: !644, size: 64, offset: 2304)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !343, file: !31, line: 684, baseType: !118, size: 32, offset: 2368)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !343, file: !31, line: 685, baseType: !118, size: 32, offset: 2400)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !343, file: !31, line: 686, baseType: !118, size: 32, offset: 2432)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !343, file: !31, line: 688, baseType: !118, size: 32, offset: 2464)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !31, line: 690, baseType: !2648, size: 64, offset: 2496)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !31, line: 690, size: 64, elements: !2649)
!2649 = !{!2650, !2872}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2648, file: !31, line: 691, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2654)
!2654 = !{!2655, !2656, !2660, !2664, !2668, !2669, !2670, !2674, !2687, !2688, !2696, !2700, !2701, !2705, !2706, !2710, !2715, !2716, !2720, !2724, !2832, !2836, !2837, !2841, !2842, !2846, !2850, !2855, !2859, !2863, !2867, !2871}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2653, file: !31, line: 1823, baseType: !545, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2653, file: !31, line: 1824, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!444, !266, !444, !108}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2653, file: !31, line: 1825, baseType: !2661, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!220, !266, !189, !236, !660}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2653, file: !31, line: 1826, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!220, !266, !131, !236, !660}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2653, file: !31, line: 1827, baseType: !797, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2653, file: !31, line: 1828, baseType: !797, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2653, file: !31, line: 1829, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!108, !800, !403}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2653, file: !31, line: 1830, baseType: !2675, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!108, !266, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2680)
!2680 = !{!2681, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2679, file: !31, line: 1777, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2683)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!108, !2678, !131, !108, !444, !335, !7}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2679, file: !31, line: 1778, baseType: !444, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2653, file: !31, line: 1831, baseType: !2675, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2653, file: !31, line: 1832, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2692, !266, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2693, line: 52, baseType: !7)
!2693 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !31, line: 56, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2653, file: !31, line: 1833, baseType: !2697, size: 64, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!224, !266, !7, !99}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2653, file: !31, line: 1834, baseType: !2697, size: 64, offset: 704)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2653, file: !31, line: 1835, baseType: !2702, size: 64, offset: 768)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!108, !266, !935}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2653, file: !31, line: 1836, baseType: !99, size: 64, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2653, file: !31, line: 1837, baseType: !2707, size: 64, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!108, !342, !266}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2653, file: !31, line: 1838, baseType: !2711, size: 64, offset: 960)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!108, !266, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !94)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2653, file: !31, line: 1839, baseType: !2707, size: 64, offset: 1024)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2653, file: !31, line: 1840, baseType: !2717, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!108, !266, !444, !444, !108}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2653, file: !31, line: 1841, baseType: !2721, size: 64, offset: 1152)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!108, !108, !266, !108}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2653, file: !31, line: 1842, baseType: !2725, size: 64, offset: 1216)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!108, !266, !108, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2762, !2763, !2764, !2777, !2808}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2729, file: !31, line: 1063, baseType: !2728, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2729, file: !31, line: 1064, baseType: !135, size: 128, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2729, file: !31, line: 1065, baseType: !554, size: 128, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2729, file: !31, line: 1066, baseType: !135, size: 128, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2729, file: !31, line: 1069, baseType: !135, size: 128, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2729, file: !31, line: 1072, baseType: !2714, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2729, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2729, file: !31, line: 1074, baseType: !96, size: 8, offset: 672)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2729, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2729, file: !31, line: 1076, baseType: !108, size: 32, offset: 736)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2729, file: !31, line: 1077, baseType: !1344, size: 128, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2729, file: !31, line: 1078, baseType: !266, size: 64, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2729, file: !31, line: 1079, baseType: !444, size: 64, offset: 960)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2729, file: !31, line: 1080, baseType: !444, size: 64, offset: 1024)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2729, file: !31, line: 1082, baseType: !2746, size: 64, offset: 1088)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2748)
!2748 = !{!2749, !2757, !2758, !2759, !2760, !2761}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2747, file: !31, line: 1315, baseType: !2750)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2751, line: 20, baseType: !2752)
!2751 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2751, line: 11, elements: !2753)
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2752, file: !2751, line: 12, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !160, line: 33, baseType: !2756)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 31, elements: !162)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2747, file: !31, line: 1316, baseType: !108, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2747, file: !31, line: 1317, baseType: !108, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2747, file: !31, line: 1318, baseType: !2746, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2747, file: !31, line: 1319, baseType: !266, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2747, file: !31, line: 1320, baseType: !279, size: 128, align: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2729, file: !31, line: 1084, baseType: !99, size: 64, offset: 1152)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2729, file: !31, line: 1085, baseType: !99, size: 64, offset: 1216)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2729, file: !31, line: 1087, baseType: !2765, size: 64, offset: 1280)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2768)
!2768 = !{!2769, !2773}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2767, file: !31, line: 1012, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2728, !2728}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2767, file: !31, line: 1013, baseType: !2774, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2728}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2729, file: !31, line: 1088, baseType: !2778, size: 64, offset: 1344)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2781)
!2781 = !{!2782, !2786, !2790, !2791, !2795, !2799, !2803, !2807}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2780, file: !31, line: 1017, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!2714, !2714}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2780, file: !31, line: 1018, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2714}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2780, file: !31, line: 1019, baseType: !2774, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2780, file: !31, line: 1020, baseType: !2792, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!108, !2728, !108}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2780, file: !31, line: 1021, baseType: !2796, size: 64, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!403, !2728}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2780, file: !31, line: 1022, baseType: !2800, size: 64, offset: 320)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!108, !2728, !108, !138}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2780, file: !31, line: 1023, baseType: !2804, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !2728, !774}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2780, file: !31, line: 1024, baseType: !2796, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2729, file: !31, line: 1097, baseType: !2809, size: 256, offset: 1408)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2729, file: !31, line: 1089, size: 256, elements: !2810)
!2810 = !{!2811, !2820, !2826}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2809, file: !31, line: 1090, baseType: !2812, size: 256)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2813, line: 10, size: 256, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !{!2815, !2816, !2819}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2812, file: !2813, line: 11, baseType: !329, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2812, file: !2813, line: 12, baseType: !2817, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2813, line: 5, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2813, line: 13, baseType: !135, size: 128, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2809, file: !31, line: 1091, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2813, line: 17, size: 64, elements: !2822)
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2821, file: !2813, line: 18, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2813, line: 16, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2809, file: !31, line: 1096, baseType: !2827, size: 192)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !31, line: 1092, size: 192, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2827, file: !31, line: 1093, baseType: !135, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2827, file: !31, line: 1094, baseType: !108, size: 32, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2827, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2653, file: !31, line: 1843, baseType: !2833, size: 64, offset: 1280)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!220, !266, !685, !108, !236, !660, !108}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2653, file: !31, line: 1844, baseType: !975, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2653, file: !31, line: 1845, baseType: !2838, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!108, !108}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2653, file: !31, line: 1846, baseType: !2725, size: 64, offset: 1472)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2653, file: !31, line: 1847, baseType: !2843, size: 64, offset: 1536)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!220, !1960, !266, !660, !236, !7}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2653, file: !31, line: 1848, baseType: !2847, size: 64, offset: 1600)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!220, !266, !660, !1960, !236, !7}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2653, file: !31, line: 1849, baseType: !2851, size: 64, offset: 1664)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!108, !266, !224, !2854, !774}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2653, file: !31, line: 1850, baseType: !2856, size: 64, offset: 1728)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!224, !266, !108, !444, !444}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2653, file: !31, line: 1852, baseType: !2860, size: 64, offset: 1792)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !626, !266}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2653, file: !31, line: 1856, baseType: !2864, size: 64, offset: 1856)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!220, !266, !444, !266, !444, !236, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2653, file: !31, line: 1858, baseType: !2868, size: 64, offset: 1920)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!444, !266, !444, !266, !444, !444, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2653, file: !31, line: 1861, baseType: !2717, size: 64, offset: 1984)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2648, file: !31, line: 692, baseType: !579, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !343, file: !31, line: 694, baseType: !2874, size: 64, offset: 2560)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2875, file: !31, line: 1101, baseType: !148)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2875, file: !31, line: 1102, baseType: !135, size: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2875, file: !31, line: 1103, baseType: !135, size: 128, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2875, file: !31, line: 1104, baseType: !135, size: 128, offset: 256)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !343, file: !31, line: 695, baseType: !699, size: 1216, align: 64, offset: 2624)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !343, file: !31, line: 696, baseType: !135, size: 128, offset: 3840)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !31, line: 697, baseType: !2884, size: 64, offset: 3968)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !31, line: 697, size: 64, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2899, !2900}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2884, file: !31, line: 698, baseType: !1960, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2884, file: !31, line: 699, baseType: !2403, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2884, file: !31, line: 700, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2891, line: 14, size: 832, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2890, file: !2891, line: 15, baseType: !127, size: 512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2890, file: !2891, line: 16, baseType: !545, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2890, file: !2891, line: 17, baseType: !2651, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2890, file: !2891, line: 18, baseType: !135, size: 128, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2890, file: !2891, line: 19, baseType: !426, size: 32, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2890, file: !2891, line: 20, baseType: !7, size: 32, offset: 800)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2884, file: !31, line: 701, baseType: !189, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2884, file: !31, line: 702, baseType: !7, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !343, file: !31, line: 705, baseType: !331, size: 32, offset: 4032)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !343, file: !31, line: 708, baseType: !331, size: 32, offset: 4064)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !343, file: !31, line: 709, baseType: !2485, size: 64, offset: 4096)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !343, file: !31, line: 720, baseType: !94, size: 64, offset: 4160)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !297, file: !294, line: 98, baseType: !2906, size: 256, offset: 448)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !2079)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !297, file: !294, line: 101, baseType: !2908, size: 32, offset: 704)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2909, line: 25, size: 32, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !2909, line: 26, baseType: !2912, size: 32)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2908, file: !2909, line: 26, size: 32, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !2909, line: 30, baseType: !2915, size: 32)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2909, line: 30, size: 32, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2915, file: !2909, line: 31, baseType: !148)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2915, file: !2909, line: 32, baseType: !108, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !297, file: !294, line: 102, baseType: !2502, size: 64, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !297, file: !294, line: 103, baseType: !512, size: 64, offset: 832)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !297, file: !294, line: 104, baseType: !99, size: 64, offset: 896)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !297, file: !294, line: 105, baseType: !94, size: 64, offset: 960)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !294, line: 107, baseType: !2924, size: 128, offset: 1024)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !294, line: 107, size: 128, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2924, file: !294, line: 108, baseType: !135, size: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2924, file: !294, line: 109, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !297, file: !294, line: 111, baseType: !135, size: 128, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !297, file: !294, line: 112, baseType: !135, size: 128, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !297, file: !294, line: 120, baseType: !2932, size: 128, offset: 1408)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !294, line: 116, size: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2932, file: !294, line: 117, baseType: !554, size: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2932, file: !294, line: 118, baseType: !311, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2932, file: !294, line: 119, baseType: !279, size: 128, align: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !267, file: !31, line: 922, baseType: !342, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !267, file: !31, line: 923, baseType: !2651, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !267, file: !31, line: 929, baseType: !148, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !267, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !267, file: !31, line: 931, baseType: !642, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !267, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !267, file: !31, line: 933, baseType: !2498, size: 32, offset: 544)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !267, file: !31, line: 934, baseType: !638, size: 192, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !267, file: !31, line: 935, baseType: !444, size: 64, offset: 768)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !267, file: !31, line: 936, baseType: !2947, size: 192, offset: 832)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2947, file: !31, line: 886, baseType: !2750)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2947, file: !31, line: 887, baseType: !1334, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2947, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2947, file: !31, line: 889, baseType: !348, size: 32, offset: 96)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2947, file: !31, line: 889, baseType: !348, size: 32, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2947, file: !31, line: 890, baseType: !108, size: 32, offset: 160)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !267, file: !31, line: 937, baseType: !1410, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !267, file: !31, line: 938, baseType: !2957, size: 256, offset: 1088)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2957, file: !31, line: 897, baseType: !99, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2957, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2957, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2957, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2957, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2957, file: !31, line: 904, baseType: !444, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !267, file: !31, line: 940, baseType: !335, size: 64, offset: 1344)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !267, file: !31, line: 945, baseType: !94, size: 64, offset: 1408)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !267, file: !31, line: 949, baseType: !135, size: 128, offset: 1472)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !267, file: !31, line: 950, baseType: !135, size: 128, offset: 1600)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !267, file: !31, line: 952, baseType: !698, size: 64, offset: 1728)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !267, file: !31, line: 953, baseType: !862, size: 32, offset: 1792)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !267, file: !31, line: 954, baseType: !862, size: 32, offset: 1824)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !257, file: !214, line: 174, baseType: !263, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !257, file: !214, line: 176, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!108, !266, !141, !256, !935}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !245, file: !214, line: 90, baseType: !240, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !245, file: !214, line: 91, baseType: !2979, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !204, file: !128, line: 143, baseType: !2981, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!2984, !141}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2987)
!2987 = !{!2988, !2989, !2993, !2997, !3005, !3009}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2986, file: !48, line: 40, baseType: !47, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2986, file: !48, line: 41, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!403}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2986, file: !48, line: 42, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!94}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2986, file: !48, line: 43, baseType: !2998, size: 64, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!3001, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2986, file: !48, line: 44, baseType: !3006, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!3001}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2986, file: !48, line: 45, baseType: !381, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !204, file: !128, line: 144, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3001, !141}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !204, file: !128, line: 145, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !141, !3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !127, file: !128, line: 70, baseType: !3021, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3023, line: 123, size: 1024, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3141, !3142, !3143, !3144, !3145}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3022, file: !3023, line: 124, baseType: !118, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3022, file: !3023, line: 125, baseType: !118, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3022, file: !3023, line: 135, baseType: !3021, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3022, file: !3023, line: 136, baseType: !131, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3022, file: !3023, line: 138, baseType: !720, size: 192, align: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3022, file: !3023, line: 140, baseType: !3001, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3022, file: !3023, line: 141, baseType: !7, size: 32, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !3023, line: 142, baseType: !3033, size: 256, offset: 512)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !3023, line: 142, size: 256, elements: !3034)
!3034 = !{!3035, !3081, !3085}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3033, file: !3023, line: 143, baseType: !3036, size: 192)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3023, line: 91, size: 192, elements: !3037)
!3037 = !{!3038, !3039, !3040}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3036, file: !3023, line: 92, baseType: !99, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3036, file: !3023, line: 94, baseType: !716, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3036, file: !3023, line: 100, baseType: !3041, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3023, line: 180, size: 704, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3053, !3054, !3055, !3079, !3080}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3042, file: !3023, line: 182, baseType: !3021, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3042, file: !3023, line: 183, baseType: !7, size: 32, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3042, file: !3023, line: 186, baseType: !3047, size: 192, offset: 128)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3048, line: 19, size: 192, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3047, file: !3048, line: 20, baseType: !703, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3047, file: !3048, line: 21, baseType: !7, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3047, file: !3048, line: 22, baseType: !7, size: 32, offset: 160)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3042, file: !3023, line: 187, baseType: !329, size: 32, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3042, file: !3023, line: 188, baseType: !329, size: 32, offset: 352)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3042, file: !3023, line: 189, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3023, line: 168, size: 320, elements: !3058)
!3058 = !{!3059, !3063, !3067, !3071, !3075}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3057, file: !3023, line: 169, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!108, !626, !3041}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3057, file: !3023, line: 171, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!108, !3021, !131, !230}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3057, file: !3023, line: 173, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!108, !3021}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3057, file: !3023, line: 174, baseType: !3072, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!108, !3021, !3021, !131}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3057, file: !3023, line: 176, baseType: !3076, size: 64, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!108, !626, !3021, !3041}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3042, file: !3023, line: 192, baseType: !135, size: 128, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3042, file: !3023, line: 194, baseType: !1344, size: 128, offset: 576)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3033, file: !3023, line: 144, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3023, line: 103, size: 64, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3082, file: !3023, line: 104, baseType: !3021, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3033, file: !3023, line: 145, baseType: !3086, size: 256)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3023, line: 107, size: 256, elements: !3087)
!3087 = !{!3088, !3136, !3139, !3140}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3086, file: !3023, line: 108, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3023, line: 217, size: 768, elements: !3092)
!3092 = !{!3093, !3113, !3117, !3118, !3119, !3120, !3121, !3125, !3126, !3127, !3128, !3132}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3091, file: !3023, line: 222, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!108, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3023, line: 197, size: 1088, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3098, file: !3023, line: 199, baseType: !3021, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3098, file: !3023, line: 200, baseType: !266, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3098, file: !3023, line: 201, baseType: !626, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3098, file: !3023, line: 202, baseType: !94, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3098, file: !3023, line: 205, baseType: !638, size: 192, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3098, file: !3023, line: 206, baseType: !638, size: 192, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3098, file: !3023, line: 207, baseType: !108, size: 32, offset: 640)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3098, file: !3023, line: 208, baseType: !135, size: 128, offset: 704)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3098, file: !3023, line: 209, baseType: !189, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3098, file: !3023, line: 211, baseType: !236, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3098, file: !3023, line: 212, baseType: !403, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3098, file: !3023, line: 213, baseType: !403, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3098, file: !3023, line: 214, baseType: !963, size: 64, offset: 1024)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3091, file: !3023, line: 223, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3097}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3091, file: !3023, line: 236, baseType: !670, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3091, file: !3023, line: 238, baseType: !657, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3091, file: !3023, line: 239, baseType: !666, size: 64, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3091, file: !3023, line: 240, baseType: !662, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3091, file: !3023, line: 242, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!220, !3097, !189, !236, !444}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3091, file: !3023, line: 252, baseType: !236, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3091, file: !3023, line: 259, baseType: !403, size: 8, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3091, file: !3023, line: 260, baseType: !3122, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3091, file: !3023, line: 263, baseType: !3129, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!2692, !3097, !2694}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3091, file: !3023, line: 266, baseType: !3133, size: 64, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!108, !3097, !935}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3086, file: !3023, line: 109, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3023, line: 31, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3086, file: !3023, line: 110, baseType: !444, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3086, file: !3023, line: 111, baseType: !3021, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3022, file: !3023, line: 148, baseType: !94, size: 64, offset: 768)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3022, file: !3023, line: 154, baseType: !335, size: 64, offset: 832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3022, file: !3023, line: 156, baseType: !231, size: 16, offset: 896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3022, file: !3023, line: 157, baseType: !230, size: 16, offset: 912)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3022, file: !3023, line: 158, baseType: !3146, size: 64, offset: 960)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3023, line: 32, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !127, file: !128, line: 71, baseType: !110, size: 32, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !127, file: !128, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !127, file: !128, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !127, file: !128, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !127, file: !128, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !127, file: !128, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !124, file: !60, line: 463, baseType: !123, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !124, file: !60, line: 465, baseType: !3156, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !124, file: !60, line: 467, baseType: !131, size: 64, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !60, line: 468, baseType: !3160, size: 64, offset: 704)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3170, !3175, !3179}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3162, file: !60, line: 88, baseType: !131, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3162, file: !60, line: 89, baseType: !242, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3162, file: !60, line: 90, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!108, !123, !184}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3162, file: !60, line: 91, baseType: !3171, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!189, !123, !3174, !3018, !3019}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3162, file: !60, line: 93, baseType: !3176, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !123}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3162, file: !60, line: 95, baseType: !3180, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3183)
!3183 = !{!3184, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3182, file: !67, line: 279, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!108, !123}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3182, file: !67, line: 280, baseType: !3176, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3182, file: !67, line: 281, baseType: !3185, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3182, file: !67, line: 282, baseType: !3185, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3182, file: !67, line: 283, baseType: !3185, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3182, file: !67, line: 284, baseType: !3185, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3182, file: !67, line: 285, baseType: !3185, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3182, file: !67, line: 286, baseType: !3185, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3182, file: !67, line: 287, baseType: !3185, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3182, file: !67, line: 288, baseType: !3185, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3182, file: !67, line: 289, baseType: !3185, size: 64, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3182, file: !67, line: 290, baseType: !3185, size: 64, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3182, file: !67, line: 291, baseType: !3185, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3182, file: !67, line: 292, baseType: !3185, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3182, file: !67, line: 293, baseType: !3185, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3182, file: !67, line: 294, baseType: !3185, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3182, file: !67, line: 295, baseType: !3185, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3182, file: !67, line: 296, baseType: !3185, size: 64, offset: 1088)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3182, file: !67, line: 297, baseType: !3185, size: 64, offset: 1152)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3182, file: !67, line: 298, baseType: !3185, size: 64, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3182, file: !67, line: 299, baseType: !3185, size: 64, offset: 1280)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3182, file: !67, line: 300, baseType: !3185, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3182, file: !67, line: 301, baseType: !3185, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !124, file: !60, line: 470, baseType: !3211, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3213, line: 82, size: 1408, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3278, !3281, !3282}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3212, file: !3213, line: 83, baseType: !131, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3212, file: !3213, line: 84, baseType: !131, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3212, file: !3213, line: 85, baseType: !123, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3212, file: !3213, line: 86, baseType: !242, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3212, file: !3213, line: 87, baseType: !242, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3212, file: !3213, line: 88, baseType: !242, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3212, file: !3213, line: 90, baseType: !3222, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!108, !123, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3238, !3242, !3243, !3244, !3245, !3246, !3254, !3255, !3256, !3257, !3258, !3259}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3226, file: !54, line: 96, baseType: !131, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3226, file: !54, line: 97, baseType: !3211, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3226, file: !54, line: 99, baseType: !545, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3226, file: !54, line: 100, baseType: !131, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3226, file: !54, line: 102, baseType: !403, size: 8, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3226, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3226, file: !54, line: 105, baseType: !3235, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !54, line: 105, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3226, file: !54, line: 106, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !54, line: 106, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3226, file: !54, line: 108, baseType: !3185, size: 64, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3226, file: !54, line: 109, baseType: !3176, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3226, file: !54, line: 110, baseType: !3185, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3226, file: !54, line: 111, baseType: !3176, size: 64, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3226, file: !54, line: 112, baseType: !3247, size: 64, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!108, !123, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3252)
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3251, file: !67, line: 51, baseType: !108, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3226, file: !54, line: 113, baseType: !3185, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3226, file: !54, line: 114, baseType: !242, size: 64, offset: 832)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3226, file: !54, line: 115, baseType: !242, size: 64, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3226, file: !54, line: 117, baseType: !3180, size: 64, offset: 960)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3226, file: !54, line: 118, baseType: !3176, size: 64, offset: 1024)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3226, file: !54, line: 120, baseType: !3260, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3212, file: !3213, line: 91, baseType: !3167, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3212, file: !3213, line: 92, baseType: !3185, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3212, file: !3213, line: 93, baseType: !3176, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3212, file: !3213, line: 94, baseType: !3185, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3212, file: !3213, line: 95, baseType: !3176, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3212, file: !3213, line: 97, baseType: !3185, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3212, file: !3213, line: 98, baseType: !3185, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3212, file: !3213, line: 100, baseType: !3247, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3212, file: !3213, line: 101, baseType: !3185, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3212, file: !3213, line: 103, baseType: !3185, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3212, file: !3213, line: 105, baseType: !3185, size: 64, offset: 1088)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3212, file: !3213, line: 107, baseType: !3180, size: 64, offset: 1152)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3212, file: !3213, line: 109, baseType: !3275, size: 64, offset: 1216)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3213, line: 109, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3212, file: !3213, line: 111, baseType: !3279, size: 64, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3213, line: 111, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3212, file: !3213, line: 112, baseType: !560, offset: 1344)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3212, file: !3213, line: 114, baseType: !403, size: 8, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !124, file: !60, line: 471, baseType: !3225, size: 64, offset: 832)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !124, file: !60, line: 473, baseType: !94, size: 64, offset: 896)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !124, file: !60, line: 475, baseType: !94, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !124, file: !60, line: 480, baseType: !638, size: 192, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !124, file: !60, line: 484, baseType: !3288, size: 576, offset: 1216)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3288, file: !60, line: 362, baseType: !135, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3288, file: !60, line: 363, baseType: !135, size: 128, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3288, file: !60, line: 364, baseType: !135, size: 128, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3288, file: !60, line: 365, baseType: !135, size: 128, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3288, file: !60, line: 366, baseType: !403, size: 8, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3288, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !124, file: !60, line: 485, baseType: !3297, size: 2304, offset: 1792)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3394, !3398}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3297, file: !67, line: 566, baseType: !3250, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3297, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3297, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3297, file: !67, line: 569, baseType: !403, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3297, file: !67, line: 570, baseType: !403, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3297, file: !67, line: 571, baseType: !403, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3297, file: !67, line: 572, baseType: !403, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3297, file: !67, line: 573, baseType: !403, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3297, file: !67, line: 574, baseType: !403, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3297, file: !67, line: 575, baseType: !403, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3297, file: !67, line: 576, baseType: !403, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3297, file: !67, line: 577, baseType: !329, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3297, file: !67, line: 578, baseType: !148, offset: 96)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3297, file: !67, line: 580, baseType: !135, size: 128, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3297, file: !67, line: 581, baseType: !1365, size: 192, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3297, file: !67, line: 582, baseType: !3315, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3317, line: 43, size: 1472, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3326, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !3317, line: 44, baseType: !131, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3316, file: !3317, line: 45, baseType: !108, size: 32, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3316, file: !3317, line: 46, baseType: !135, size: 128, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !3317, line: 47, baseType: !148, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3316, file: !3317, line: 48, baseType: !3324, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3316, file: !3317, line: 49, baseType: !3327, size: 320, offset: 320)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3328, line: 11, size: 320, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330, !3331, !3332, !3337}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3327, file: !3328, line: 16, baseType: !554, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3327, file: !3328, line: 17, baseType: !99, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3327, file: !3328, line: 18, baseType: !3333, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !3328, line: 19, baseType: !329, size: 32, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3316, file: !3317, line: 50, baseType: !99, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3316, file: !3317, line: 51, baseType: !1163, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3316, file: !3317, line: 52, baseType: !1163, size: 64, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3316, file: !3317, line: 53, baseType: !1163, size: 64, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3316, file: !3317, line: 54, baseType: !1163, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3316, file: !3317, line: 55, baseType: !1163, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3316, file: !3317, line: 56, baseType: !99, size: 64, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3316, file: !3317, line: 57, baseType: !99, size: 64, offset: 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3316, file: !3317, line: 58, baseType: !99, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3316, file: !3317, line: 59, baseType: !99, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3316, file: !3317, line: 60, baseType: !99, size: 64, offset: 1280)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3316, file: !3317, line: 61, baseType: !123, size: 64, offset: 1344)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3316, file: !3317, line: 62, baseType: !403, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3316, file: !3317, line: 63, baseType: !403, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3297, file: !67, line: 583, baseType: !403, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3297, file: !67, line: 584, baseType: !403, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3297, file: !67, line: 585, baseType: !403, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3297, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3297, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3297, file: !67, line: 592, baseType: !1155, size: 512, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3297, file: !67, line: 593, baseType: !335, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3297, file: !67, line: 594, baseType: !1819, size: 256, offset: 1152)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3297, file: !67, line: 595, baseType: !1344, size: 128, offset: 1408)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3297, file: !67, line: 596, baseType: !3324, size: 64, offset: 1536)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3297, file: !67, line: 597, baseType: !118, size: 32, offset: 1600)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3297, file: !67, line: 598, baseType: !118, size: 32, offset: 1632)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3297, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3297, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3297, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3297, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3297, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3297, file: !67, line: 604, baseType: !403, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3297, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3297, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3297, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3297, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3297, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3297, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3297, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3297, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3297, file: !67, line: 613, baseType: !108, size: 32, offset: 1792)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3297, file: !67, line: 614, baseType: !108, size: 32, offset: 1824)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3297, file: !67, line: 615, baseType: !335, size: 64, offset: 1856)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3297, file: !67, line: 616, baseType: !335, size: 64, offset: 1920)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3297, file: !67, line: 617, baseType: !335, size: 64, offset: 1984)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3297, file: !67, line: 618, baseType: !335, size: 64, offset: 2048)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3297, file: !67, line: 620, baseType: !3385, size: 64, offset: 2112)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3386, file: !67, line: 537, baseType: !148)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3386, file: !67, line: 538, baseType: !7, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3386, file: !67, line: 540, baseType: !135, size: 128, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3386, file: !67, line: 543, baseType: !3392, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3297, file: !67, line: 621, baseType: !3395, size: 64, offset: 2176)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !123, !1307}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3297, file: !67, line: 622, baseType: !3399, size: 64, offset: 2240)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !124, file: !60, line: 486, baseType: !3402, size: 64, offset: 4096)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3411, !3412, !3413}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3403, file: !67, line: 643, baseType: !3182, size: 1472)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3403, file: !67, line: 644, baseType: !3185, size: 64, offset: 1472)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3403, file: !67, line: 645, baseType: !3408, size: 64, offset: 1536)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !123, !403}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3403, file: !67, line: 646, baseType: !3185, size: 64, offset: 1600)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3403, file: !67, line: 647, baseType: !3176, size: 64, offset: 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3403, file: !67, line: 648, baseType: !3176, size: 64, offset: 1728)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !124, file: !60, line: 493, baseType: !3415, size: 64, offset: 4160)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !124, file: !60, line: 499, baseType: !135, size: 128, offset: 4224)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !124, file: !60, line: 502, baseType: !3419, size: 64, offset: 4352)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !124, file: !60, line: 504, baseType: !3423, size: 64, offset: 4416)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !124, file: !60, line: 505, baseType: !335, size: 64, offset: 4480)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !124, file: !60, line: 510, baseType: !335, size: 64, offset: 4544)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !124, file: !60, line: 511, baseType: !3427, size: 64, offset: 4608)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !124, file: !60, line: 513, baseType: !3431, size: 64, offset: 4672)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3432, file: !60, line: 293, baseType: !7, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3432, file: !60, line: 294, baseType: !99, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !124, file: !60, line: 515, baseType: !135, size: 128, offset: 4736)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !124, file: !60, line: 526, baseType: !3438, offset: 4864)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3439, line: 5, elements: !162)
!3439 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !124, file: !60, line: 528, baseType: !3441, size: 64, offset: 4864)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3443, line: 14, flags: DIFlagFwdDecl)
!3443 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !124, file: !60, line: 529, baseType: !3445, size: 64, offset: 4928)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3213, line: 22, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !124, file: !60, line: 534, baseType: !426, size: 32, offset: 4992)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !60, line: 535, baseType: !329, size: 32, offset: 5024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !124, file: !60, line: 537, baseType: !148, offset: 5056)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !124, file: !60, line: 538, baseType: !135, size: 128, offset: 5056)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !124, file: !60, line: 540, baseType: !3452, size: 64, offset: 5184)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3454, line: 54, size: 960, elements: !3455)
!3454 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3466, !3470, !3471, !3472, !3473, !3477, !3481, !3482}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3453, file: !3454, line: 55, baseType: !131, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3453, file: !3454, line: 56, baseType: !545, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3453, file: !3454, line: 58, baseType: !242, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3453, file: !3454, line: 59, baseType: !242, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3453, file: !3454, line: 60, baseType: !141, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3453, file: !3454, line: 62, baseType: !3167, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3453, file: !3454, line: 63, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!189, !123, !3174}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3453, file: !3454, line: 65, baseType: !3467, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3452}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3453, file: !3454, line: 66, baseType: !3176, size: 64, offset: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3453, file: !3454, line: 68, baseType: !3185, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3453, file: !3454, line: 70, baseType: !2984, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3453, file: !3454, line: 71, baseType: !3474, size: 64, offset: 704)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!3001, !123}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3453, file: !3454, line: 73, baseType: !3478, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !123, !3018, !3019}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3453, file: !3454, line: 75, baseType: !3180, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3453, file: !3454, line: 77, baseType: !3279, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !124, file: !60, line: 541, baseType: !242, size: 64, offset: 5248)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !124, file: !60, line: 543, baseType: !3176, size: 64, offset: 5312)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !124, file: !60, line: 544, baseType: !3486, size: 64, offset: 5376)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !124, file: !60, line: 545, baseType: !3489, size: 64, offset: 5440)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !124, file: !60, line: 547, baseType: !403, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !124, file: !60, line: 548, baseType: !403, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !124, file: !60, line: 549, baseType: !403, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !124, file: !60, line: 550, baseType: !403, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !104, file: !105, line: 289, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3498, line: 302, size: 1472, elements: !3499)
!3498 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3499 = !{!3500, !3501, !3502, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3531, !3532, !3535, !3536, !3538, !3623, !3626, !3627, !3789}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3497, file: !3498, line: 303, baseType: !108, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3497, file: !3498, line: 304, baseType: !110, size: 32, offset: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3497, file: !3498, line: 305, baseType: !3503, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3497, file: !3498, line: 306, baseType: !545, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3497, file: !3498, line: 307, baseType: !131, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3497, file: !3498, line: 308, baseType: !131, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3497, file: !3498, line: 309, baseType: !108, size: 32, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3497, file: !3498, line: 310, baseType: !108, size: 32, offset: 352)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3497, file: !3498, line: 311, baseType: !108, size: 32, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3497, file: !3498, line: 312, baseType: !7, size: 32, offset: 416)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3497, file: !3498, line: 313, baseType: !1073, size: 16, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3497, file: !3498, line: 314, baseType: !1073, size: 16, offset: 464)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3497, file: !3498, line: 315, baseType: !3514, size: 352, offset: 480)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3515, line: 32, size: 352, elements: !3516)
!3515 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!3516 = !{!3517, !3519, !3520, !3521, !3522, !3524, !3528, !3530}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3514, file: !3515, line: 33, baseType: !3518, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3515, line: 9, baseType: !7)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3514, file: !3515, line: 34, baseType: !3518, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3514, file: !3515, line: 35, baseType: !3518, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3514, file: !3515, line: 36, baseType: !3518, size: 32, offset: 96)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3514, file: !3515, line: 37, baseType: !3523, size: 8, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3515, line: 7, baseType: !96)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3514, file: !3515, line: 38, baseType: !3525, size: 152, offset: 136)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3523, size: 152, elements: !3526)
!3526 = !{!3527}
!3527 = !DISubrange(count: 19)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3514, file: !3515, line: 39, baseType: !3529, size: 32, offset: 288)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3515, line: 8, baseType: !7)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3514, file: !3515, line: 40, baseType: !3529, size: 32, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3497, file: !3498, line: 316, baseType: !99, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3497, file: !3498, line: 317, baseType: !3533, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3498, line: 317, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3497, file: !3498, line: 318, baseType: !3496, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3497, file: !3498, line: 323, baseType: !3537, size: 64, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3497, file: !3498, line: 324, baseType: !3539, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !105, line: 230, size: 2432, elements: !3542)
!3542 = !{!3543, !3572, !3573, !3574, !3596, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3541, file: !105, line: 231, baseType: !3544, size: 1024)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !105, line: 85, size: 1024, elements: !3545)
!3545 = !{!3546, !3561, !3562, !3563, !3564, !3565, !3569, !3570, !3571}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3544, file: !105, line: 86, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !105, line: 58, size: 256, elements: !3549)
!3549 = !{!3550, !3555, !3556, !3557, !3558, !3559, !3560}
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !105, line: 59, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !105, line: 59, size: 64, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3551, file: !105, line: 60, baseType: !3547, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3551, file: !105, line: 61, baseType: !273, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3548, file: !105, line: 63, baseType: !108, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3548, file: !105, line: 64, baseType: !108, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3548, file: !105, line: 65, baseType: !108, size: 32, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3548, file: !105, line: 66, baseType: !108, size: 32, offset: 160)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3548, file: !105, line: 67, baseType: !108, size: 32, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3548, file: !105, line: 69, baseType: !2179, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3544, file: !105, line: 87, baseType: !1819, size: 256, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3544, file: !105, line: 88, baseType: !638, size: 192, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3544, file: !105, line: 89, baseType: !118, size: 32, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3544, file: !105, line: 90, baseType: !3548, size: 256, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3544, file: !105, line: 91, baseType: !3566, size: 64, offset: 832)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !274, line: 54, size: 64, elements: !3567)
!3567 = !{!3568}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3566, file: !274, line: 55, baseType: !277, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3544, file: !105, line: 92, baseType: !118, size: 32, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3544, file: !105, line: 93, baseType: !108, size: 32, offset: 928)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3544, file: !105, line: 94, baseType: !3547, size: 64, offset: 960)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3541, file: !105, line: 232, baseType: !103, size: 64, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3541, file: !105, line: 233, baseType: !103, size: 64, offset: 1088)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3541, file: !105, line: 234, baseType: !3575, size: 64, offset: 1152)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !105, line: 205, size: 320, elements: !3578)
!3578 = !{!3579, !3583, !3587, !3591, !3595}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3577, file: !105, line: 207, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!108, !3540}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3577, file: !105, line: 209, baseType: !3584, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3540, !108}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3577, file: !105, line: 213, baseType: !3588, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3540}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3577, file: !105, line: 218, baseType: !3592, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!108, !3540, !103}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3577, file: !105, line: 220, baseType: !3588, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3541, file: !105, line: 235, baseType: !3597, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !105, line: 223, size: 128, elements: !3600)
!3600 = !{!3601, !3605}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3599, file: !105, line: 224, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!108, !3540, !339, !339, !236}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3599, file: !105, line: 225, baseType: !3588, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3541, file: !105, line: 236, baseType: !148, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3541, file: !105, line: 237, baseType: !108, size: 32, offset: 1280)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3541, file: !105, line: 238, baseType: !108, size: 32, offset: 1312)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3541, file: !105, line: 239, baseType: !1344, size: 128, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3541, file: !105, line: 240, baseType: !1344, size: 128, offset: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3541, file: !105, line: 241, baseType: !99, size: 64, offset: 1600)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3541, file: !105, line: 242, baseType: !99, size: 64, offset: 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3541, file: !105, line: 243, baseType: !96, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3541, file: !105, line: 244, baseType: !96, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3541, file: !105, line: 245, baseType: !638, size: 192, offset: 1792)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3541, file: !105, line: 246, baseType: !638, size: 192, offset: 1984)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3541, file: !105, line: 247, baseType: !95, size: 64, offset: 2176)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3541, file: !105, line: 248, baseType: !7, size: 32, offset: 2240)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3541, file: !105, line: 249, baseType: !7, size: 32, offset: 2272)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3541, file: !105, line: 250, baseType: !108, size: 32, offset: 2304)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3541, file: !105, line: 253, baseType: !110, size: 32, offset: 2336)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3541, file: !105, line: 254, baseType: !94, size: 64, offset: 2368)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3497, file: !3498, line: 325, baseType: !3624, size: 64, offset: 1152)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3497, file: !3498, line: 326, baseType: !94, size: 64, offset: 1216)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3497, file: !3498, line: 332, baseType: !3628, size: 64, offset: 1280)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3630)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3498, line: 254, size: 2176, elements: !3631)
!3631 = !{!3632, !3636, !3640, !3644, !3648, !3652, !3656, !3657, !3661, !3665, !3666, !3670, !3671, !3675, !3679, !3683, !3684, !3685, !3686, !3687, !3688, !3692, !3693, !3694, !3698, !3702, !3703, !3707, !3719, !3734, !3757, !3783, !3784, !3788}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3630, file: !3498, line: 255, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!103, !3496, !266, !108}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3630, file: !3498, line: 257, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!108, !3496, !103}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3630, file: !3498, line: 258, baseType: !3641, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3496, !103}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3630, file: !3498, line: 259, baseType: !3645, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!108, !103, !266}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3630, file: !3498, line: 260, baseType: !3649, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !103, !266}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3630, file: !3498, line: 261, baseType: !3653, size: 64, offset: 320)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !103}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3630, file: !3498, line: 262, baseType: !3653, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3630, file: !3498, line: 263, baseType: !3658, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!108, !103, !339, !108}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3630, file: !3498, line: 265, baseType: !3662, size: 64, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!108, !103, !96}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3630, file: !3498, line: 266, baseType: !3653, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3630, file: !3498, line: 267, baseType: !3667, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!108, !103}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3630, file: !3498, line: 268, baseType: !3667, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3630, file: !3498, line: 269, baseType: !3672, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!108, !103, !7, !99}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3630, file: !3498, line: 271, baseType: !3676, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!224, !103, !7, !99}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3630, file: !3498, line: 273, baseType: !3680, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !103, !3625}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3630, file: !3498, line: 274, baseType: !3653, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3630, file: !3498, line: 275, baseType: !3653, size: 64, offset: 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3630, file: !3498, line: 276, baseType: !3653, size: 64, offset: 1088)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3630, file: !3498, line: 277, baseType: !3653, size: 64, offset: 1152)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3630, file: !3498, line: 278, baseType: !3653, size: 64, offset: 1216)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3630, file: !3498, line: 279, baseType: !3689, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!108, !103, !108}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3630, file: !3498, line: 280, baseType: !3653, size: 64, offset: 1344)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3630, file: !3498, line: 281, baseType: !3653, size: 64, offset: 1408)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3630, file: !3498, line: 282, baseType: !3695, size: 64, offset: 1472)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !103, !108}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3630, file: !3498, line: 283, baseType: !3699, size: 64, offset: 1536)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !103, !133}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3630, file: !3498, line: 284, baseType: !3667, size: 64, offset: 1600)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3630, file: !3498, line: 285, baseType: !3704, size: 64, offset: 1664)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!108, !103, !7, !7}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3630, file: !3498, line: 287, baseType: !3708, size: 64, offset: 1728)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!108, !103, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3713, line: 15, size: 64, elements: !3714)
!3713 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3712, file: !3713, line: 16, baseType: !231, size: 16)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3712, file: !3713, line: 17, baseType: !231, size: 16, offset: 16)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3712, file: !3713, line: 18, baseType: !231, size: 16, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3712, file: !3713, line: 19, baseType: !231, size: 16, offset: 48)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3630, file: !3498, line: 288, baseType: !3720, size: 64, offset: 1792)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!108, !103, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3725, line: 10, size: 128, elements: !3726)
!3725 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !{!3727, !3728, !3729, !3733}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3724, file: !3725, line: 12, baseType: !813, size: 16)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3724, file: !3725, line: 13, baseType: !813, size: 16, offset: 16)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3724, file: !3725, line: 14, baseType: !3730, size: 80, offset: 32)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 80, elements: !3731)
!3731 = !{!3732}
!3732 = !DISubrange(count: 5)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3724, file: !3725, line: 15, baseType: !813, size: 16, offset: 112)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3630, file: !3498, line: 289, baseType: !3735, size: 64, offset: 1856)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!108, !103, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3740, line: 102, size: 640, elements: !3741)
!3740 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/lizy2001/genbc/linux")
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !3739, file: !3740, line: 103, baseType: !108, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !3739, file: !3740, line: 103, baseType: !108, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !3739, file: !3740, line: 103, baseType: !108, size: 32, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !3739, file: !3740, line: 103, baseType: !108, size: 32, offset: 96)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !3739, file: !3740, line: 104, baseType: !108, size: 32, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !3739, file: !3740, line: 104, baseType: !108, size: 32, offset: 160)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3739, file: !3740, line: 105, baseType: !108, size: 32, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !3739, file: !3740, line: 105, baseType: !108, size: 32, offset: 224)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !3739, file: !3740, line: 105, baseType: !108, size: 32, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !3739, file: !3740, line: 105, baseType: !108, size: 32, offset: 288)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !3739, file: !3740, line: 106, baseType: !108, size: 32, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3739, file: !3740, line: 107, baseType: !3754, size: 288, offset: 352)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 288, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 9)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3630, file: !3498, line: 291, baseType: !3758, size: 64, offset: 1920)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!108, !103, !3761}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3740, line: 19, size: 576, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3762, file: !3740, line: 20, baseType: !108, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3762, file: !3740, line: 21, baseType: !108, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3762, file: !3740, line: 22, baseType: !7, size: 32, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3762, file: !3740, line: 23, baseType: !108, size: 32, offset: 96)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3762, file: !3740, line: 24, baseType: !108, size: 32, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !3762, file: !3740, line: 25, baseType: !108, size: 32, offset: 160)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !3762, file: !3740, line: 26, baseType: !108, size: 32, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !3762, file: !3740, line: 27, baseType: !108, size: 32, offset: 224)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3762, file: !3740, line: 28, baseType: !231, size: 16, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !3762, file: !3740, line: 29, baseType: !133, size: 8, offset: 272)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !3762, file: !3740, line: 30, baseType: !3775, size: 8, offset: 280)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8, elements: !1234)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !3762, file: !3740, line: 31, baseType: !108, size: 32, offset: 288)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3762, file: !3740, line: 32, baseType: !231, size: 16, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !3762, file: !3740, line: 33, baseType: !231, size: 16, offset: 336)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !3762, file: !3740, line: 34, baseType: !95, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !3762, file: !3740, line: 35, baseType: !231, size: 16, offset: 448)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !3762, file: !3740, line: 36, baseType: !7, size: 32, offset: 480)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !3762, file: !3740, line: 37, baseType: !99, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3630, file: !3498, line: 292, baseType: !3758, size: 64, offset: 1984)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3630, file: !3498, line: 293, baseType: !3785, size: 64, offset: 2048)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !103, !626}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3630, file: !3498, line: 299, baseType: !670, size: 64, offset: 2112)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3497, file: !3498, line: 333, baseType: !135, size: 128, offset: 1344)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !104, file: !105, line: 290, baseType: !3628, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !104, file: !105, line: 291, baseType: !108, size: 32, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !104, file: !105, line: 294, baseType: !3793, size: 384, offset: 320)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3794, line: 133, size: 384, elements: !3795)
!3794 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!3795 = !{!3796, !3797, !3798, !3799, !3800}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3793, file: !3794, line: 134, baseType: !642, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3793, file: !3794, line: 135, baseType: !733, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3793, file: !3794, line: 136, baseType: !7, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3793, file: !3794, line: 137, baseType: !135, size: 128, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3793, file: !3794, line: 138, baseType: !135, size: 128, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !104, file: !105, line: 295, baseType: !3802, size: 64, offset: 704)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3794, line: 215, size: 128, elements: !3804)
!3804 = !{!3805, !3850}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3803, file: !3794, line: 216, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3794, line: 175, size: 1216, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3820, !3824, !3828, !3829, !3830, !3834, !3835, !3839, !3840, !3844, !3848, !3849}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3807, file: !3794, line: 176, baseType: !108, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3807, file: !3794, line: 177, baseType: !189, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3807, file: !3794, line: 178, baseType: !108, size: 32, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3807, file: !3794, line: 179, baseType: !108, size: 32, offset: 160)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3807, file: !3794, line: 184, baseType: !3667, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3807, file: !3794, line: 185, baseType: !3653, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3807, file: !3794, line: 186, baseType: !3653, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3807, file: !3794, line: 187, baseType: !3817, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!220, !103, !266, !95, !236}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3807, file: !3794, line: 189, baseType: !3821, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!220, !103, !266, !339, !236}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3807, file: !3794, line: 191, baseType: !3825, size: 64, offset: 512)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!108, !103, !266, !7, !99}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3807, file: !3794, line: 193, baseType: !3825, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3807, file: !3794, line: 195, baseType: !3680, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3807, file: !3794, line: 196, baseType: !3831, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!2692, !103, !266, !2694}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3807, file: !3794, line: 198, baseType: !3667, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3807, file: !3794, line: 203, baseType: !3836, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !103, !339, !189, !108}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3807, file: !3794, line: 205, baseType: !3653, size: 64, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3807, file: !3794, line: 206, baseType: !3841, size: 64, offset: 960)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !103, !7}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3807, file: !3794, line: 207, baseType: !3845, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!108, !103, !339, !189, !108}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3807, file: !3794, line: 210, baseType: !545, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3807, file: !3794, line: 212, baseType: !108, size: 32, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3803, file: !3794, line: 217, baseType: !103, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !104, file: !105, line: 297, baseType: !638, size: 192, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !104, file: !105, line: 298, baseType: !638, size: 192, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !104, file: !105, line: 299, baseType: !638, size: 192, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !104, file: !105, line: 300, baseType: !727, size: 256, offset: 1344)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !104, file: !105, line: 301, baseType: !638, size: 192, offset: 1600)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !104, file: !105, line: 302, baseType: !148, offset: 1792)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !104, file: !105, line: 303, baseType: !148, offset: 1792)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !104, file: !105, line: 305, baseType: !3514, size: 352, offset: 1792)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !104, file: !105, line: 305, baseType: !3514, size: 352, offset: 2144)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !104, file: !105, line: 306, baseType: !3723, size: 64, offset: 2496)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 307, baseType: !3862, size: 512, offset: 2560)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !194)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !104, file: !105, line: 308, baseType: !1334, size: 64, offset: 3072)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !104, file: !105, line: 313, baseType: !1334, size: 64, offset: 3136)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !105, line: 314, baseType: !99, size: 64, offset: 3200)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !105, line: 315, baseType: !108, size: 32, offset: 3264)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !104, file: !105, line: 316, baseType: !3712, size: 64, offset: 3296)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !104, file: !105, line: 317, baseType: !99, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !104, file: !105, line: 318, baseType: !99, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !104, file: !105, line: 319, baseType: !99, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !104, file: !105, line: 320, baseType: !108, size: 32, offset: 3456)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !104, file: !105, line: 321, baseType: !99, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !104, file: !105, line: 322, baseType: !99, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !104, file: !105, line: 323, baseType: !99, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !104, file: !105, line: 324, baseType: !7, size: 32, offset: 3584)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !104, file: !105, line: 325, baseType: !108, size: 32, offset: 3616)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !104, file: !105, line: 327, baseType: !103, size: 64, offset: 3648)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !104, file: !105, line: 328, baseType: !2746, size: 64, offset: 3712)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !104, file: !105, line: 329, baseType: !1344, size: 128, offset: 3776)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !104, file: !105, line: 330, baseType: !1344, size: 128, offset: 3904)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !104, file: !105, line: 331, baseType: !1819, size: 256, offset: 4032)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !104, file: !105, line: 332, baseType: !94, size: 64, offset: 4288)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !104, file: !105, line: 333, baseType: !94, size: 64, offset: 4352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !104, file: !105, line: 334, baseType: !148, offset: 4416)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !104, file: !105, line: 335, baseType: !135, size: 128, offset: 4416)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !104, file: !105, line: 339, baseType: !108, size: 32, offset: 4544)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !104, file: !105, line: 340, baseType: !95, size: 64, offset: 4608)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !104, file: !105, line: 341, baseType: !108, size: 32, offset: 4672)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !104, file: !105, line: 343, baseType: !1819, size: 256, offset: 4736)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !104, file: !105, line: 344, baseType: !3540, size: 64, offset: 4992)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!3898 = !{!0, !3899, !3902, !3904, !3906}
!3899 = !DIGlobalVariableExpression(var: !3900, expr: !DIExpression())
!3900 = distinct !DIGlobalVariable(name: "__key", scope: !3901, file: !3, line: 65, type: !560, isLocal: true, isDefinition: true)
!3901 = distinct !DISubprogram(name: "tty_port_init", scope: !3, file: !3, line: 61, type: !3589, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3902 = !DIGlobalVariableExpression(var: !3903, expr: !DIExpression())
!3903 = distinct !DIGlobalVariable(name: "__key", scope: !3901, file: !3, line: 66, type: !560, isLocal: true, isDefinition: true)
!3904 = !DIGlobalVariableExpression(var: !3905, expr: !DIExpression())
!3905 = distinct !DIGlobalVariable(name: "__key", scope: !3901, file: !3, line: 67, type: !560, isLocal: true, isDefinition: true)
!3906 = !DIGlobalVariableExpression(var: !3907, expr: !DIExpression())
!3907 = distinct !DIGlobalVariable(name: "__key", scope: !3901, file: !3, line: 68, type: !560, isLocal: true, isDefinition: true)
!3908 = !{!"rsp"}
!3909 = !{i32 7, !"Dwarf Version", i32 4}
!3910 = !{i32 2, !"Debug Info Version", i32 3}
!3911 = !{i32 1, !"wchar_size", i32 2}
!3912 = !{i32 1, !"Code Model", i32 2}
!3913 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3914 = distinct !DISubprogram(name: "tty_port_default_receive_buf", scope: !3, file: !3, line: 22, type: !3603, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3915 = !DILocalVariable(name: "port", arg: 1, scope: !3914, file: !3, line: 22, type: !3540)
!3916 = !DILocation(line: 22, column: 58, scope: !3914)
!3917 = !DILocalVariable(name: "p", arg: 2, scope: !3914, file: !3, line: 23, type: !339)
!3918 = !DILocation(line: 23, column: 27, scope: !3914)
!3919 = !DILocalVariable(name: "f", arg: 3, scope: !3914, file: !3, line: 24, type: !339)
!3920 = !DILocation(line: 24, column: 27, scope: !3914)
!3921 = !DILocalVariable(name: "count", arg: 4, scope: !3914, file: !3, line: 24, type: !236)
!3922 = !DILocation(line: 24, column: 37, scope: !3914)
!3923 = !DILocalVariable(name: "ret", scope: !3914, file: !3, line: 26, type: !108)
!3924 = !DILocation(line: 26, column: 6, scope: !3914)
!3925 = !DILocalVariable(name: "tty", scope: !3914, file: !3, line: 27, type: !103)
!3926 = !DILocation(line: 27, column: 21, scope: !3914)
!3927 = !DILocalVariable(name: "disc", scope: !3914, file: !3, line: 28, type: !3802)
!3928 = !DILocation(line: 28, column: 20, scope: !3914)
!3929 = !DILocation(line: 30, column: 8, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 30, column: 8)
!3931 = !DILocation(line: 30, column: 8, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 30, column: 8)
!3933 = !DILocation(line: 30, column: 6, scope: !3914)
!3934 = !DILocation(line: 31, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 31, column: 6)
!3936 = !DILocation(line: 31, column: 6, scope: !3914)
!3937 = !DILocation(line: 32, column: 3, scope: !3935)
!3938 = !DILocation(line: 34, column: 23, scope: !3914)
!3939 = !DILocation(line: 34, column: 9, scope: !3914)
!3940 = !DILocation(line: 34, column: 7, scope: !3914)
!3941 = !DILocation(line: 35, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 35, column: 6)
!3943 = !DILocation(line: 35, column: 6, scope: !3914)
!3944 = !DILocation(line: 36, column: 3, scope: !3942)
!3945 = !DILocation(line: 38, column: 30, scope: !3914)
!3946 = !DILocation(line: 38, column: 36, scope: !3914)
!3947 = !DILocation(line: 38, column: 47, scope: !3914)
!3948 = !DILocation(line: 38, column: 50, scope: !3914)
!3949 = !DILocation(line: 38, column: 8, scope: !3914)
!3950 = !DILocation(line: 38, column: 6, scope: !3914)
!3951 = !DILocation(line: 40, column: 18, scope: !3914)
!3952 = !DILocation(line: 40, column: 2, scope: !3914)
!3953 = !DILocation(line: 42, column: 9, scope: !3914)
!3954 = !DILocation(line: 42, column: 2, scope: !3914)
!3955 = !DILocation(line: 43, column: 1, scope: !3914)
!3956 = distinct !DISubprogram(name: "tty_port_default_wakeup", scope: !3, file: !3, line: 45, type: !3589, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3957 = !DILocalVariable(name: "port", arg: 1, scope: !3956, file: !3, line: 45, type: !3540)
!3958 = !DILocation(line: 45, column: 54, scope: !3956)
!3959 = !DILocalVariable(name: "tty", scope: !3956, file: !3, line: 47, type: !103)
!3960 = !DILocation(line: 47, column: 21, scope: !3956)
!3961 = !DILocation(line: 47, column: 44, scope: !3956)
!3962 = !DILocation(line: 47, column: 27, scope: !3956)
!3963 = !DILocation(line: 49, column: 6, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 49, column: 6)
!3965 = !DILocation(line: 49, column: 6, scope: !3956)
!3966 = !DILocation(line: 50, column: 14, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 49, column: 11)
!3968 = !DILocation(line: 50, column: 3, scope: !3967)
!3969 = !DILocation(line: 51, column: 16, scope: !3967)
!3970 = !DILocation(line: 51, column: 3, scope: !3967)
!3971 = !DILocation(line: 52, column: 2, scope: !3967)
!3972 = !DILocation(line: 53, column: 1, scope: !3956)
!3973 = !DILocalVariable(name: "lock", arg: 1, scope: !3974, file: !3975, line: 327, type: !3979)
!3974 = distinct !DISubprogram(name: "spinlock_check", scope: !3975, file: !3975, line: 327, type: !3976, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3975 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!3980 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 69, column: 2, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 69, column: 2)
!3983 = !DILocalVariable(name: "port", arg: 1, scope: !3901, file: !3, line: 61, type: !3540)
!3984 = !DILocation(line: 61, column: 37, scope: !3901)
!3985 = !DILocation(line: 63, column: 9, scope: !3901)
!3986 = !DILocation(line: 63, column: 2, scope: !3901)
!3987 = !DILocation(line: 64, column: 18, scope: !3901)
!3988 = !DILocation(line: 64, column: 2, scope: !3901)
!3989 = !DILocation(line: 65, column: 2, scope: !3901)
!3990 = !DILocation(line: 65, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 65, column: 2)
!3992 = !DILocation(line: 66, column: 2, scope: !3901)
!3993 = !DILocation(line: 66, column: 2, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 66, column: 2)
!3995 = !DILocation(line: 67, column: 2, scope: !3901)
!3996 = !DILocation(line: 67, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 67, column: 2)
!3998 = !DILocation(line: 68, column: 2, scope: !3901)
!3999 = !DILocation(line: 68, column: 2, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 68, column: 2)
!4001 = !DILocation(line: 69, column: 2, scope: !3901)
!4002 = !DILocation(line: 69, column: 2, scope: !3982)
!4003 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !3981)
!4004 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !3981)
!4005 = !DILocation(line: 70, column: 2, scope: !3901)
!4006 = !DILocation(line: 70, column: 8, scope: !3901)
!4007 = !DILocation(line: 70, column: 20, scope: !3901)
!4008 = !DILocation(line: 71, column: 2, scope: !3901)
!4009 = !DILocation(line: 71, column: 8, scope: !3901)
!4010 = !DILocation(line: 71, column: 21, scope: !3901)
!4011 = !DILocation(line: 72, column: 2, scope: !3901)
!4012 = !DILocation(line: 72, column: 8, scope: !3901)
!4013 = !DILocation(line: 72, column: 19, scope: !3901)
!4014 = !DILocation(line: 73, column: 13, scope: !3901)
!4015 = !DILocation(line: 73, column: 19, scope: !3901)
!4016 = !DILocation(line: 73, column: 2, scope: !3901)
!4017 = !DILocation(line: 74, column: 1, scope: !3901)
!4018 = distinct !DISubprogram(name: "kref_init", scope: !111, file: !111, line: 29, type: !4019, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4022 = !DILocalVariable(name: "kref", arg: 1, scope: !4018, file: !111, line: 29, type: !4021)
!4023 = !DILocation(line: 29, column: 43, scope: !4018)
!4024 = !DILocation(line: 31, column: 16, scope: !4018)
!4025 = !DILocation(line: 31, column: 22, scope: !4018)
!4026 = !DILocation(line: 31, column: 2, scope: !4018)
!4027 = !DILocation(line: 32, column: 1, scope: !4018)
!4028 = distinct !DISubprogram(name: "tty_port_link_device", scope: !3, file: !3, line: 88, type: !4029, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3540, !3496, !7}
!4031 = !DILocalVariable(name: "port", arg: 1, scope: !4028, file: !3, line: 88, type: !3540)
!4032 = !DILocation(line: 88, column: 44, scope: !4028)
!4033 = !DILocalVariable(name: "driver", arg: 2, scope: !4028, file: !3, line: 89, type: !3496)
!4034 = !DILocation(line: 89, column: 22, scope: !4028)
!4035 = !DILocalVariable(name: "index", arg: 3, scope: !4028, file: !3, line: 89, type: !7)
!4036 = !DILocation(line: 89, column: 39, scope: !4028)
!4037 = !DILocalVariable(name: "__ret_warn_on", scope: !4038, file: !3, line: 91, type: !108)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 91, column: 6)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 91, column: 6)
!4040 = !DILocation(line: 91, column: 6, scope: !4038)
!4041 = !DILocation(line: 91, column: 6, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 91, column: 6)
!4043 = !DILocation(line: 91, column: 6, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 91, column: 6)
!4045 = !DILocation(line: 91, column: 6, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 91, column: 6)
!4047 = !DILocation(line: 91, column: 6, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 91, column: 6)
!4049 = !{i32 -2142747876, i32 -2142747847, i32 -2142747801, i32 -2142747743, i32 -2142747689, i32 -2142747635, i32 -2142747580, i32 -2142747549}
!4050 = !DILocation(line: 91, column: 6, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 91, column: 6)
!4052 = !{i32 -2142747146, i32 -2142747139, i32 -2142747087, i32 -2142747056, i32 -2142747026}
!4053 = !DILocation(line: 91, column: 6, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 91, column: 6)
!4055 = !DILocation(line: 91, column: 6, scope: !4039)
!4056 = !DILocation(line: 91, column: 6, scope: !4028)
!4057 = !DILocation(line: 92, column: 3, scope: !4039)
!4058 = !DILocation(line: 93, column: 25, scope: !4028)
!4059 = !DILocation(line: 93, column: 2, scope: !4028)
!4060 = !DILocation(line: 93, column: 10, scope: !4028)
!4061 = !DILocation(line: 93, column: 16, scope: !4028)
!4062 = !DILocation(line: 93, column: 23, scope: !4028)
!4063 = !DILocation(line: 94, column: 1, scope: !4028)
!4064 = distinct !DISubprogram(name: "tty_port_register_device", scope: !3, file: !3, line: 108, type: !4065, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!123, !3540, !3496, !7, !123}
!4067 = !DILocalVariable(name: "port", arg: 1, scope: !4064, file: !3, line: 108, type: !3540)
!4068 = !DILocation(line: 108, column: 58, scope: !4064)
!4069 = !DILocalVariable(name: "driver", arg: 2, scope: !4064, file: !3, line: 109, type: !3496)
!4070 = !DILocation(line: 109, column: 22, scope: !4064)
!4071 = !DILocalVariable(name: "index", arg: 3, scope: !4064, file: !3, line: 109, type: !7)
!4072 = !DILocation(line: 109, column: 39, scope: !4064)
!4073 = !DILocalVariable(name: "device", arg: 4, scope: !4064, file: !3, line: 110, type: !123)
!4074 = !DILocation(line: 110, column: 18, scope: !4064)
!4075 = !DILocation(line: 112, column: 39, scope: !4064)
!4076 = !DILocation(line: 112, column: 45, scope: !4064)
!4077 = !DILocation(line: 112, column: 53, scope: !4064)
!4078 = !DILocation(line: 112, column: 60, scope: !4064)
!4079 = !DILocation(line: 112, column: 9, scope: !4064)
!4080 = !DILocation(line: 112, column: 2, scope: !4064)
!4081 = distinct !DISubprogram(name: "tty_port_register_device_attr", scope: !3, file: !3, line: 129, type: !4082, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!123, !3540, !3496, !7, !123, !94, !242}
!4084 = !DILocalVariable(name: "port", arg: 1, scope: !4081, file: !3, line: 129, type: !3540)
!4085 = !DILocation(line: 129, column: 63, scope: !4081)
!4086 = !DILocalVariable(name: "driver", arg: 2, scope: !4081, file: !3, line: 130, type: !3496)
!4087 = !DILocation(line: 130, column: 22, scope: !4081)
!4088 = !DILocalVariable(name: "index", arg: 3, scope: !4081, file: !3, line: 130, type: !7)
!4089 = !DILocation(line: 130, column: 39, scope: !4081)
!4090 = !DILocalVariable(name: "device", arg: 4, scope: !4081, file: !3, line: 131, type: !123)
!4091 = !DILocation(line: 131, column: 18, scope: !4081)
!4092 = !DILocalVariable(name: "drvdata", arg: 5, scope: !4081, file: !3, line: 131, type: !94)
!4093 = !DILocation(line: 131, column: 32, scope: !4081)
!4094 = !DILocalVariable(name: "attr_grp", arg: 6, scope: !4081, file: !3, line: 132, type: !242)
!4095 = !DILocation(line: 132, column: 34, scope: !4081)
!4096 = !DILocation(line: 134, column: 23, scope: !4081)
!4097 = !DILocation(line: 134, column: 29, scope: !4081)
!4098 = !DILocation(line: 134, column: 37, scope: !4081)
!4099 = !DILocation(line: 134, column: 2, scope: !4081)
!4100 = !DILocation(line: 135, column: 34, scope: !4081)
!4101 = !DILocation(line: 135, column: 42, scope: !4081)
!4102 = !DILocation(line: 135, column: 49, scope: !4081)
!4103 = !DILocation(line: 135, column: 57, scope: !4081)
!4104 = !DILocation(line: 136, column: 4, scope: !4081)
!4105 = !DILocation(line: 135, column: 9, scope: !4081)
!4106 = !DILocation(line: 135, column: 2, scope: !4081)
!4107 = distinct !DISubprogram(name: "tty_port_register_device_attr_serdev", scope: !3, file: !3, line: 152, type: !4082, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4108 = !DILocalVariable(name: "port", arg: 1, scope: !4107, file: !3, line: 152, type: !3540)
!4109 = !DILocation(line: 152, column: 70, scope: !4107)
!4110 = !DILocalVariable(name: "driver", arg: 2, scope: !4107, file: !3, line: 153, type: !3496)
!4111 = !DILocation(line: 153, column: 22, scope: !4107)
!4112 = !DILocalVariable(name: "index", arg: 3, scope: !4107, file: !3, line: 153, type: !7)
!4113 = !DILocation(line: 153, column: 39, scope: !4107)
!4114 = !DILocalVariable(name: "device", arg: 4, scope: !4107, file: !3, line: 154, type: !123)
!4115 = !DILocation(line: 154, column: 18, scope: !4107)
!4116 = !DILocalVariable(name: "drvdata", arg: 5, scope: !4107, file: !3, line: 154, type: !94)
!4117 = !DILocation(line: 154, column: 32, scope: !4107)
!4118 = !DILocalVariable(name: "attr_grp", arg: 6, scope: !4107, file: !3, line: 155, type: !242)
!4119 = !DILocation(line: 155, column: 34, scope: !4107)
!4120 = !DILocalVariable(name: "dev", scope: !4107, file: !3, line: 157, type: !123)
!4121 = !DILocation(line: 157, column: 17, scope: !4107)
!4122 = !DILocation(line: 159, column: 23, scope: !4107)
!4123 = !DILocation(line: 159, column: 29, scope: !4107)
!4124 = !DILocation(line: 159, column: 37, scope: !4107)
!4125 = !DILocation(line: 159, column: 2, scope: !4107)
!4126 = !DILocation(line: 161, column: 33, scope: !4107)
!4127 = !DILocation(line: 161, column: 39, scope: !4107)
!4128 = !DILocation(line: 161, column: 47, scope: !4107)
!4129 = !DILocation(line: 161, column: 55, scope: !4107)
!4130 = !DILocation(line: 161, column: 8, scope: !4107)
!4131 = !DILocation(line: 161, column: 6, scope: !4107)
!4132 = !DILocation(line: 162, column: 14, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 162, column: 6)
!4134 = !DILocation(line: 162, column: 6, scope: !4133)
!4135 = !DILocation(line: 162, column: 19, scope: !4133)
!4136 = !DILocation(line: 162, column: 6, scope: !4107)
!4137 = !DILocation(line: 164, column: 10, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 162, column: 31)
!4139 = !DILocation(line: 164, column: 3, scope: !4138)
!4140 = !DILocation(line: 167, column: 34, scope: !4107)
!4141 = !DILocation(line: 167, column: 42, scope: !4107)
!4142 = !DILocation(line: 167, column: 49, scope: !4107)
!4143 = !DILocation(line: 167, column: 57, scope: !4107)
!4144 = !DILocation(line: 168, column: 4, scope: !4107)
!4145 = !DILocation(line: 167, column: 9, scope: !4107)
!4146 = !DILocation(line: 167, column: 2, scope: !4107)
!4147 = !DILocation(line: 169, column: 1, scope: !4107)
!4148 = distinct !DISubprogram(name: "serdev_tty_port_register", scope: !4149, file: !4149, line: 318, type: !4150, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4149 = !DIFile(filename: "./include/linux/serdev.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!123, !3540, !123, !3496, !108}
!4152 = !DILocalVariable(name: "port", arg: 1, scope: !4148, file: !4149, line: 318, type: !3540)
!4153 = !DILocation(line: 318, column: 72, scope: !4148)
!4154 = !DILocalVariable(name: "parent", arg: 2, scope: !4148, file: !4149, line: 319, type: !123)
!4155 = !DILocation(line: 319, column: 24, scope: !4148)
!4156 = !DILocalVariable(name: "drv", arg: 3, scope: !4148, file: !4149, line: 320, type: !3496)
!4157 = !DILocation(line: 320, column: 28, scope: !4148)
!4158 = !DILocalVariable(name: "idx", arg: 4, scope: !4148, file: !4149, line: 320, type: !108)
!4159 = !DILocation(line: 320, column: 37, scope: !4148)
!4160 = !DILocation(line: 322, column: 9, scope: !4148)
!4161 = !DILocation(line: 322, column: 2, scope: !4148)
!4162 = distinct !DISubprogram(name: "PTR_ERR", scope: !4163, file: !4163, line: 29, type: !4164, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4163 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!224, !3001}
!4166 = !DILocalVariable(name: "ptr", arg: 1, scope: !4162, file: !4163, line: 29, type: !3001)
!4167 = !DILocation(line: 29, column: 61, scope: !4162)
!4168 = !DILocation(line: 31, column: 16, scope: !4162)
!4169 = !DILocation(line: 31, column: 9, scope: !4162)
!4170 = !DILocation(line: 31, column: 2, scope: !4162)
!4171 = distinct !DISubprogram(name: "tty_port_register_device_serdev", scope: !3, file: !3, line: 182, type: !4065, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4172 = !DILocalVariable(name: "port", arg: 1, scope: !4171, file: !3, line: 182, type: !3540)
!4173 = !DILocation(line: 182, column: 65, scope: !4171)
!4174 = !DILocalVariable(name: "driver", arg: 2, scope: !4171, file: !3, line: 183, type: !3496)
!4175 = !DILocation(line: 183, column: 22, scope: !4171)
!4176 = !DILocalVariable(name: "index", arg: 3, scope: !4171, file: !3, line: 183, type: !7)
!4177 = !DILocation(line: 183, column: 39, scope: !4171)
!4178 = !DILocalVariable(name: "device", arg: 4, scope: !4171, file: !3, line: 184, type: !123)
!4179 = !DILocation(line: 184, column: 18, scope: !4171)
!4180 = !DILocation(line: 186, column: 46, scope: !4171)
!4181 = !DILocation(line: 186, column: 52, scope: !4171)
!4182 = !DILocation(line: 186, column: 60, scope: !4171)
!4183 = !DILocation(line: 187, column: 4, scope: !4171)
!4184 = !DILocation(line: 186, column: 9, scope: !4171)
!4185 = !DILocation(line: 186, column: 2, scope: !4171)
!4186 = distinct !DISubprogram(name: "tty_port_unregister_device", scope: !3, file: !3, line: 201, type: !4029, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4187 = !DILocalVariable(name: "port", arg: 1, scope: !4186, file: !3, line: 201, type: !3540)
!4188 = !DILocation(line: 201, column: 50, scope: !4186)
!4189 = !DILocalVariable(name: "driver", arg: 2, scope: !4186, file: !3, line: 202, type: !3496)
!4190 = !DILocation(line: 202, column: 22, scope: !4186)
!4191 = !DILocalVariable(name: "index", arg: 3, scope: !4186, file: !3, line: 202, type: !7)
!4192 = !DILocation(line: 202, column: 39, scope: !4186)
!4193 = !DILocalVariable(name: "ret", scope: !4186, file: !3, line: 204, type: !108)
!4194 = !DILocation(line: 204, column: 6, scope: !4186)
!4195 = !DILocation(line: 206, column: 35, scope: !4186)
!4196 = !DILocation(line: 206, column: 8, scope: !4186)
!4197 = !DILocation(line: 206, column: 6, scope: !4186)
!4198 = !DILocation(line: 207, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 207, column: 6)
!4200 = !DILocation(line: 207, column: 10, scope: !4199)
!4201 = !DILocation(line: 207, column: 6, scope: !4186)
!4202 = !DILocation(line: 208, column: 3, scope: !4199)
!4203 = !DILocation(line: 210, column: 24, scope: !4186)
!4204 = !DILocation(line: 210, column: 32, scope: !4186)
!4205 = !DILocation(line: 210, column: 2, scope: !4186)
!4206 = !DILocation(line: 211, column: 1, scope: !4186)
!4207 = distinct !DISubprogram(name: "serdev_tty_port_unregister", scope: !4149, file: !4149, line: 324, type: !3581, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4208 = !DILocalVariable(name: "port", arg: 1, scope: !4207, file: !4149, line: 324, type: !3540)
!4209 = !DILocation(line: 324, column: 63, scope: !4207)
!4210 = !DILocation(line: 326, column: 2, scope: !4207)
!4211 = distinct !DISubprogram(name: "tty_port_alloc_xmit_buf", scope: !3, file: !3, line: 214, type: !3581, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4212 = !DILocalVariable(name: "port", arg: 1, scope: !4211, file: !3, line: 214, type: !3540)
!4213 = !DILocation(line: 214, column: 46, scope: !4211)
!4214 = !DILocation(line: 217, column: 14, scope: !4211)
!4215 = !DILocation(line: 217, column: 20, scope: !4211)
!4216 = !DILocation(line: 217, column: 2, scope: !4211)
!4217 = !DILocation(line: 218, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 218, column: 6)
!4219 = !DILocation(line: 218, column: 12, scope: !4218)
!4220 = !DILocation(line: 218, column: 21, scope: !4218)
!4221 = !DILocation(line: 218, column: 6, scope: !4211)
!4222 = !DILocation(line: 219, column: 37, scope: !4218)
!4223 = !DILocation(line: 219, column: 20, scope: !4218)
!4224 = !DILocation(line: 219, column: 3, scope: !4218)
!4225 = !DILocation(line: 219, column: 9, scope: !4218)
!4226 = !DILocation(line: 219, column: 18, scope: !4218)
!4227 = !DILocation(line: 220, column: 16, scope: !4211)
!4228 = !DILocation(line: 220, column: 22, scope: !4211)
!4229 = !DILocation(line: 220, column: 2, scope: !4211)
!4230 = !DILocation(line: 221, column: 6, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 221, column: 6)
!4232 = !DILocation(line: 221, column: 12, scope: !4231)
!4233 = !DILocation(line: 221, column: 21, scope: !4231)
!4234 = !DILocation(line: 221, column: 6, scope: !4211)
!4235 = !DILocation(line: 222, column: 3, scope: !4231)
!4236 = !DILocation(line: 223, column: 2, scope: !4211)
!4237 = !DILocation(line: 224, column: 1, scope: !4211)
!4238 = distinct !DISubprogram(name: "tty_port_free_xmit_buf", scope: !3, file: !3, line: 227, type: !3589, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4239 = !DILocalVariable(name: "port", arg: 1, scope: !4238, file: !3, line: 227, type: !3540)
!4240 = !DILocation(line: 227, column: 46, scope: !4238)
!4241 = !DILocation(line: 229, column: 14, scope: !4238)
!4242 = !DILocation(line: 229, column: 20, scope: !4238)
!4243 = !DILocation(line: 229, column: 2, scope: !4238)
!4244 = !DILocation(line: 230, column: 6, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 230, column: 6)
!4246 = !DILocation(line: 230, column: 12, scope: !4245)
!4247 = !DILocation(line: 230, column: 21, scope: !4245)
!4248 = !DILocation(line: 230, column: 6, scope: !4238)
!4249 = !DILocation(line: 231, column: 3, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 230, column: 30)
!4251 = !DILocation(line: 232, column: 3, scope: !4250)
!4252 = !DILocation(line: 232, column: 9, scope: !4250)
!4253 = !DILocation(line: 232, column: 18, scope: !4250)
!4254 = !DILocation(line: 233, column: 2, scope: !4250)
!4255 = !DILocation(line: 234, column: 16, scope: !4238)
!4256 = !DILocation(line: 234, column: 22, scope: !4238)
!4257 = !DILocation(line: 234, column: 2, scope: !4238)
!4258 = !DILocation(line: 235, column: 1, scope: !4238)
!4259 = distinct !DISubprogram(name: "tty_port_destroy", scope: !3, file: !3, line: 246, type: !3589, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4260 = !DILocalVariable(name: "port", arg: 1, scope: !4259, file: !3, line: 246, type: !3540)
!4261 = !DILocation(line: 246, column: 40, scope: !4259)
!4262 = !DILocation(line: 248, column: 25, scope: !4259)
!4263 = !DILocation(line: 248, column: 2, scope: !4259)
!4264 = !DILocation(line: 249, column: 22, scope: !4259)
!4265 = !DILocation(line: 249, column: 2, scope: !4259)
!4266 = !DILocation(line: 250, column: 1, scope: !4259)
!4267 = distinct !DISubprogram(name: "tty_port_put", scope: !3, file: !3, line: 269, type: !3589, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4268 = !DILocalVariable(name: "port", arg: 1, scope: !4267, file: !3, line: 269, type: !3540)
!4269 = !DILocation(line: 269, column: 36, scope: !4267)
!4270 = !DILocation(line: 271, column: 6, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 271, column: 6)
!4272 = !DILocation(line: 271, column: 6, scope: !4267)
!4273 = !DILocation(line: 272, column: 13, scope: !4271)
!4274 = !DILocation(line: 272, column: 19, scope: !4271)
!4275 = !DILocation(line: 272, column: 3, scope: !4271)
!4276 = !DILocation(line: 273, column: 1, scope: !4267)
!4277 = distinct !DISubprogram(name: "kref_put", scope: !111, file: !111, line: 62, type: !4278, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!108, !4021, !4280}
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4281 = !DILocalVariable(name: "kref", arg: 1, scope: !4277, file: !111, line: 62, type: !4021)
!4282 = !DILocation(line: 62, column: 41, scope: !4277)
!4283 = !DILocalVariable(name: "release", arg: 2, scope: !4277, file: !111, line: 62, type: !4280)
!4284 = !DILocation(line: 62, column: 54, scope: !4277)
!4285 = !DILocation(line: 64, column: 29, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4277, file: !111, line: 64, column: 6)
!4287 = !DILocation(line: 64, column: 35, scope: !4286)
!4288 = !DILocation(line: 64, column: 6, scope: !4286)
!4289 = !DILocation(line: 64, column: 6, scope: !4277)
!4290 = !DILocation(line: 65, column: 3, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4286, file: !111, line: 64, column: 46)
!4292 = !DILocation(line: 65, column: 11, scope: !4291)
!4293 = !DILocation(line: 66, column: 3, scope: !4291)
!4294 = !DILocation(line: 68, column: 2, scope: !4277)
!4295 = !DILocation(line: 69, column: 1, scope: !4277)
!4296 = distinct !DISubprogram(name: "tty_port_destructor", scope: !3, file: !3, line: 253, type: !4019, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4297 = !DILocalVariable(name: "kref", arg: 1, scope: !4296, file: !3, line: 253, type: !4021)
!4298 = !DILocation(line: 253, column: 46, scope: !4296)
!4299 = !DILocalVariable(name: "port", scope: !4296, file: !3, line: 255, type: !3540)
!4300 = !DILocation(line: 255, column: 19, scope: !4296)
!4301 = !DILocalVariable(name: "__mptr", scope: !4302, file: !3, line: 255, type: !94)
!4302 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 255, column: 26)
!4303 = !DILocation(line: 255, column: 26, scope: !4302)
!4304 = !DILocation(line: 255, column: 26, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 255, column: 26)
!4306 = !DILocalVariable(name: "__ret_warn_on", scope: !4307, file: !3, line: 258, type: !108)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 258, column: 6)
!4308 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 258, column: 6)
!4309 = !DILocation(line: 258, column: 6, scope: !4307)
!4310 = !DILocation(line: 258, column: 6, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 258, column: 6)
!4312 = !DILocation(line: 258, column: 6, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 258, column: 6)
!4314 = !DILocation(line: 258, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 258, column: 6)
!4316 = !DILocation(line: 258, column: 6, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 258, column: 6)
!4318 = !{i32 -2142743645, i32 -2142743616, i32 -2142743570, i32 -2142743512, i32 -2142743458, i32 -2142743404, i32 -2142743349, i32 -2142743318}
!4319 = !DILocation(line: 258, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 258, column: 6)
!4321 = !{i32 -2142742914, i32 -2142742907, i32 -2142742855, i32 -2142742824, i32 -2142742794}
!4322 = !DILocation(line: 258, column: 6, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 258, column: 6)
!4324 = !DILocation(line: 258, column: 6, scope: !4308)
!4325 = !DILocation(line: 258, column: 6, scope: !4296)
!4326 = !DILocation(line: 259, column: 3, scope: !4308)
!4327 = !DILocation(line: 260, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 260, column: 6)
!4329 = !DILocation(line: 260, column: 12, scope: !4328)
!4330 = !DILocation(line: 260, column: 6, scope: !4296)
!4331 = !DILocation(line: 261, column: 3, scope: !4328)
!4332 = !DILocation(line: 262, column: 19, scope: !4296)
!4333 = !DILocation(line: 262, column: 2, scope: !4296)
!4334 = !DILocation(line: 263, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 263, column: 6)
!4336 = !DILocation(line: 263, column: 12, scope: !4335)
!4337 = !DILocation(line: 263, column: 16, scope: !4335)
!4338 = !DILocation(line: 263, column: 19, scope: !4335)
!4339 = !DILocation(line: 263, column: 25, scope: !4335)
!4340 = !DILocation(line: 263, column: 30, scope: !4335)
!4341 = !DILocation(line: 263, column: 6, scope: !4296)
!4342 = !DILocation(line: 264, column: 3, scope: !4335)
!4343 = !DILocation(line: 264, column: 9, scope: !4335)
!4344 = !DILocation(line: 264, column: 14, scope: !4335)
!4345 = !DILocation(line: 264, column: 23, scope: !4335)
!4346 = !DILocation(line: 266, column: 9, scope: !4335)
!4347 = !DILocation(line: 266, column: 3, scope: !4335)
!4348 = !DILocation(line: 267, column: 1, scope: !4296)
!4349 = distinct !DISubprogram(name: "tty_port_tty_get", scope: !3, file: !3, line: 283, type: !4350, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!103, !3540}
!4352 = !DILocalVariable(name: "lock", arg: 1, scope: !4353, file: !3975, line: 407, type: !3979)
!4353 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3975, file: !3975, line: 407, type: !4354, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !3979, !99}
!4356 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 290, column: 2, scope: !4349)
!4358 = !DILocalVariable(name: "flags", arg: 2, scope: !4353, file: !3975, line: 407, type: !99)
!4359 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !4357)
!4360 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 288, column: 2, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 288, column: 2)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 288, column: 2)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 288, column: 2)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 288, column: 2)
!4366 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 288, column: 2)
!4367 = !DILocalVariable(name: "port", arg: 1, scope: !4349, file: !3, line: 283, type: !3540)
!4368 = !DILocation(line: 283, column: 54, scope: !4349)
!4369 = !DILocalVariable(name: "flags", scope: !4349, file: !3, line: 285, type: !99)
!4370 = !DILocation(line: 285, column: 16, scope: !4349)
!4371 = !DILocalVariable(name: "tty", scope: !4349, file: !3, line: 286, type: !103)
!4372 = !DILocation(line: 286, column: 21, scope: !4349)
!4373 = !DILocation(line: 288, column: 2, scope: !4349)
!4374 = !DILocation(line: 288, column: 2, scope: !4366)
!4375 = !DILocalVariable(name: "__dummy", scope: !4376, file: !3, line: 288, type: !99)
!4376 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 288, column: 2)
!4377 = !DILocation(line: 288, column: 2, scope: !4376)
!4378 = !DILocalVariable(name: "__dummy2", scope: !4376, file: !3, line: 288, type: !99)
!4379 = !DILocation(line: 288, column: 2, scope: !4365)
!4380 = !DILocation(line: 288, column: 2, scope: !4364)
!4381 = !DILocation(line: 288, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 288, column: 2)
!4383 = !DILocalVariable(name: "__dummy", scope: !4384, file: !3, line: 288, type: !99)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 288, column: 2)
!4385 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 288, column: 2)
!4386 = !DILocation(line: 288, column: 2, scope: !4384)
!4387 = !DILocalVariable(name: "__dummy2", scope: !4384, file: !3, line: 288, type: !99)
!4388 = !DILocation(line: 288, column: 2, scope: !4385)
!4389 = !DILocation(line: 288, column: 2, scope: !4363)
!4390 = !{i32 -2142741678}
!4391 = !DILocation(line: 288, column: 2, scope: !4362)
!4392 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !4361)
!4393 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !4361)
!4394 = !DILocation(line: 289, column: 21, scope: !4349)
!4395 = !DILocation(line: 289, column: 27, scope: !4349)
!4396 = !DILocation(line: 289, column: 8, scope: !4349)
!4397 = !DILocation(line: 289, column: 6, scope: !4349)
!4398 = !DILocation(line: 290, column: 26, scope: !4349)
!4399 = !DILocation(line: 290, column: 32, scope: !4349)
!4400 = !DILocation(line: 290, column: 38, scope: !4349)
!4401 = !DILocalVariable(name: "__dummy", scope: !4402, file: !3975, line: 409, type: !99)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !3975, line: 409, column: 2)
!4403 = distinct !DILexicalBlock(scope: !4353, file: !3975, line: 409, column: 2)
!4404 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !4357)
!4405 = !DILocalVariable(name: "__dummy2", scope: !4402, file: !3975, line: 409, type: !99)
!4406 = !DILocalVariable(name: "__dummy", scope: !4407, file: !3975, line: 409, type: !99)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3975, line: 409, column: 2)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !3975, line: 409, column: 2)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !3975, line: 409, column: 2)
!4410 = distinct !DILexicalBlock(scope: !4403, file: !3975, line: 409, column: 2)
!4411 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !4357)
!4412 = !DILocalVariable(name: "__dummy2", scope: !4407, file: !3975, line: 409, type: !99)
!4413 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !4357)
!4414 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !4357)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !3975, line: 409, column: 2)
!4416 = !{i32 -2145413082}
!4417 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !4357)
!4418 = distinct !DILexicalBlock(scope: !4415, file: !3975, line: 409, column: 2)
!4419 = !DILocation(line: 291, column: 9, scope: !4349)
!4420 = !DILocation(line: 291, column: 2, scope: !4349)
!4421 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4422, file: !4422, line: 666, type: !4423, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4422 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!99}
!4425 = !DILocalVariable(name: "f", scope: !4421, file: !4422, line: 668, type: !99)
!4426 = !DILocation(line: 668, column: 16, scope: !4421)
!4427 = !DILocation(line: 670, column: 6, scope: !4421)
!4428 = !DILocation(line: 670, column: 4, scope: !4421)
!4429 = !DILocation(line: 671, column: 2, scope: !4421)
!4430 = !DILocation(line: 672, column: 9, scope: !4421)
!4431 = !DILocation(line: 672, column: 2, scope: !4421)
!4432 = distinct !DISubprogram(name: "tty_kref_get", scope: !105, file: !105, line: 468, type: !4433, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!103, !103}
!4435 = !DILocalVariable(name: "tty", arg: 1, scope: !4432, file: !105, line: 468, type: !103)
!4436 = !DILocation(line: 468, column: 66, scope: !4432)
!4437 = !DILocation(line: 470, column: 6, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4432, file: !105, line: 470, column: 6)
!4439 = !DILocation(line: 470, column: 6, scope: !4432)
!4440 = !DILocation(line: 471, column: 13, scope: !4438)
!4441 = !DILocation(line: 471, column: 18, scope: !4438)
!4442 = !DILocation(line: 471, column: 3, scope: !4438)
!4443 = !DILocation(line: 472, column: 9, scope: !4432)
!4444 = !DILocation(line: 472, column: 2, scope: !4432)
!4445 = distinct !DISubprogram(name: "tty_port_tty_set", scope: !3, file: !3, line: 303, type: !4446, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !3540, !103}
!4448 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 310, column: 2, scope: !4445)
!4450 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !4449)
!4451 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 307, column: 2, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 307, column: 2)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 307, column: 2)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 307, column: 2)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 307, column: 2)
!4457 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 307, column: 2)
!4458 = !DILocalVariable(name: "port", arg: 1, scope: !4445, file: !3, line: 303, type: !3540)
!4459 = !DILocation(line: 303, column: 40, scope: !4445)
!4460 = !DILocalVariable(name: "tty", arg: 2, scope: !4445, file: !3, line: 303, type: !103)
!4461 = !DILocation(line: 303, column: 65, scope: !4445)
!4462 = !DILocalVariable(name: "flags", scope: !4445, file: !3, line: 305, type: !99)
!4463 = !DILocation(line: 305, column: 16, scope: !4445)
!4464 = !DILocation(line: 307, column: 2, scope: !4445)
!4465 = !DILocation(line: 307, column: 2, scope: !4457)
!4466 = !DILocalVariable(name: "__dummy", scope: !4467, file: !3, line: 307, type: !99)
!4467 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 307, column: 2)
!4468 = !DILocation(line: 307, column: 2, scope: !4467)
!4469 = !DILocalVariable(name: "__dummy2", scope: !4467, file: !3, line: 307, type: !99)
!4470 = !DILocation(line: 307, column: 2, scope: !4456)
!4471 = !DILocation(line: 307, column: 2, scope: !4455)
!4472 = !DILocation(line: 307, column: 2, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 307, column: 2)
!4474 = !DILocalVariable(name: "__dummy", scope: !4475, file: !3, line: 307, type: !99)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 307, column: 2)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 307, column: 2)
!4477 = !DILocation(line: 307, column: 2, scope: !4475)
!4478 = !DILocalVariable(name: "__dummy2", scope: !4475, file: !3, line: 307, type: !99)
!4479 = !DILocation(line: 307, column: 2, scope: !4476)
!4480 = !DILocation(line: 307, column: 2, scope: !4454)
!4481 = !{i32 -2142740568}
!4482 = !DILocation(line: 307, column: 2, scope: !4453)
!4483 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !4452)
!4484 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !4452)
!4485 = !DILocation(line: 308, column: 15, scope: !4445)
!4486 = !DILocation(line: 308, column: 21, scope: !4445)
!4487 = !DILocation(line: 308, column: 2, scope: !4445)
!4488 = !DILocation(line: 309, column: 27, scope: !4445)
!4489 = !DILocation(line: 309, column: 14, scope: !4445)
!4490 = !DILocation(line: 309, column: 2, scope: !4445)
!4491 = !DILocation(line: 309, column: 8, scope: !4445)
!4492 = !DILocation(line: 309, column: 12, scope: !4445)
!4493 = !DILocation(line: 310, column: 26, scope: !4445)
!4494 = !DILocation(line: 310, column: 32, scope: !4445)
!4495 = !DILocation(line: 310, column: 38, scope: !4445)
!4496 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !4449)
!4497 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !4449)
!4498 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !4449)
!4499 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !4449)
!4500 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !4449)
!4501 = !DILocation(line: 311, column: 1, scope: !4445)
!4502 = distinct !DISubprogram(name: "tty_port_hangup", scope: !3, file: !3, line: 345, type: !3589, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4503 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 356, column: 2, scope: !4502)
!4505 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !4504)
!4506 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 350, column: 2, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 350, column: 2)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 350, column: 2)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 350, column: 2)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 350, column: 2)
!4512 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 350, column: 2)
!4513 = !DILocalVariable(name: "port", arg: 1, scope: !4502, file: !3, line: 345, type: !3540)
!4514 = !DILocation(line: 345, column: 39, scope: !4502)
!4515 = !DILocalVariable(name: "tty", scope: !4502, file: !3, line: 347, type: !103)
!4516 = !DILocation(line: 347, column: 21, scope: !4502)
!4517 = !DILocalVariable(name: "flags", scope: !4502, file: !3, line: 348, type: !99)
!4518 = !DILocation(line: 348, column: 16, scope: !4502)
!4519 = !DILocation(line: 350, column: 2, scope: !4502)
!4520 = !DILocation(line: 350, column: 2, scope: !4512)
!4521 = !DILocalVariable(name: "__dummy", scope: !4522, file: !3, line: 350, type: !99)
!4522 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 350, column: 2)
!4523 = !DILocation(line: 350, column: 2, scope: !4522)
!4524 = !DILocalVariable(name: "__dummy2", scope: !4522, file: !3, line: 350, type: !99)
!4525 = !DILocation(line: 350, column: 2, scope: !4511)
!4526 = !DILocation(line: 350, column: 2, scope: !4510)
!4527 = !DILocation(line: 350, column: 2, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 350, column: 2)
!4529 = !DILocalVariable(name: "__dummy", scope: !4530, file: !3, line: 350, type: !99)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 350, column: 2)
!4531 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 350, column: 2)
!4532 = !DILocation(line: 350, column: 2, scope: !4530)
!4533 = !DILocalVariable(name: "__dummy2", scope: !4530, file: !3, line: 350, type: !99)
!4534 = !DILocation(line: 350, column: 2, scope: !4531)
!4535 = !DILocation(line: 350, column: 2, scope: !4509)
!4536 = !{i32 -2142739377}
!4537 = !DILocation(line: 350, column: 2, scope: !4508)
!4538 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !4507)
!4539 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !4507)
!4540 = !DILocation(line: 351, column: 2, scope: !4502)
!4541 = !DILocation(line: 351, column: 8, scope: !4502)
!4542 = !DILocation(line: 351, column: 14, scope: !4502)
!4543 = !DILocation(line: 352, column: 8, scope: !4502)
!4544 = !DILocation(line: 352, column: 14, scope: !4502)
!4545 = !DILocation(line: 352, column: 6, scope: !4502)
!4546 = !DILocation(line: 353, column: 6, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 353, column: 6)
!4548 = !DILocation(line: 353, column: 6, scope: !4502)
!4549 = !DILocation(line: 354, column: 26, scope: !4547)
!4550 = !DILocation(line: 354, column: 31, scope: !4547)
!4551 = !DILocation(line: 354, column: 3, scope: !4547)
!4552 = !DILocation(line: 355, column: 2, scope: !4502)
!4553 = !DILocation(line: 355, column: 8, scope: !4502)
!4554 = !DILocation(line: 355, column: 12, scope: !4502)
!4555 = !DILocation(line: 356, column: 26, scope: !4502)
!4556 = !DILocation(line: 356, column: 32, scope: !4502)
!4557 = !DILocation(line: 356, column: 38, scope: !4502)
!4558 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !4504)
!4559 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !4504)
!4560 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !4504)
!4561 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !4504)
!4562 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !4504)
!4563 = !DILocation(line: 357, column: 22, scope: !4502)
!4564 = !DILocation(line: 357, column: 2, scope: !4502)
!4565 = !DILocation(line: 358, column: 20, scope: !4502)
!4566 = !DILocation(line: 358, column: 26, scope: !4502)
!4567 = !DILocation(line: 358, column: 2, scope: !4502)
!4568 = !DILocation(line: 359, column: 15, scope: !4502)
!4569 = !DILocation(line: 359, column: 2, scope: !4502)
!4570 = !DILocation(line: 360, column: 2, scope: !4502)
!4571 = !DILocation(line: 361, column: 2, scope: !4502)
!4572 = !DILocation(line: 362, column: 1, scope: !4502)
!4573 = distinct !DISubprogram(name: "set_bit", scope: !4574, file: !4574, line: 26, type: !4575, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4574 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !224, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!4579 = !DILocalVariable(name: "nr", arg: 1, scope: !4580, file: !4581, line: 52, type: !224)
!4580 = distinct !DISubprogram(name: "arch_set_bit", scope: !4581, file: !4581, line: 52, type: !4575, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4581 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4582 = !DILocation(line: 52, column: 19, scope: !4580, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 29, column: 2, scope: !4573)
!4584 = !DILocalVariable(name: "addr", arg: 2, scope: !4580, file: !4581, line: 52, type: !4577)
!4585 = !DILocation(line: 52, column: 47, scope: !4580, inlinedAt: !4583)
!4586 = !DILocalVariable(name: "v", arg: 1, scope: !4587, file: !4588, line: 84, type: !4591)
!4587 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4588, file: !4588, line: 84, type: !4589, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4588 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4591, !236}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4593)
!4593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4594 = !DILocation(line: 84, column: 74, scope: !4587, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 28, column: 2, scope: !4573)
!4596 = !DILocalVariable(name: "size", arg: 2, scope: !4587, file: !4588, line: 84, type: !236)
!4597 = !DILocation(line: 84, column: 84, scope: !4587, inlinedAt: !4595)
!4598 = !DILocalVariable(name: "nr", arg: 1, scope: !4573, file: !4574, line: 26, type: !224)
!4599 = !DILocation(line: 26, column: 33, scope: !4573)
!4600 = !DILocalVariable(name: "addr", arg: 2, scope: !4573, file: !4574, line: 26, type: !4577)
!4601 = !DILocation(line: 26, column: 61, scope: !4573)
!4602 = !DILocation(line: 28, column: 26, scope: !4573)
!4603 = !DILocation(line: 28, column: 33, scope: !4573)
!4604 = !DILocation(line: 28, column: 31, scope: !4573)
!4605 = !DILocation(line: 86, column: 20, scope: !4587, inlinedAt: !4595)
!4606 = !DILocation(line: 86, column: 23, scope: !4587, inlinedAt: !4595)
!4607 = !DILocation(line: 86, column: 2, scope: !4587, inlinedAt: !4595)
!4608 = !DILocation(line: 87, column: 2, scope: !4587, inlinedAt: !4595)
!4609 = !DILocation(line: 29, column: 15, scope: !4573)
!4610 = !DILocation(line: 29, column: 19, scope: !4573)
!4611 = !DILocation(line: 54, column: 27, scope: !4612, inlinedAt: !4583)
!4612 = distinct !DILexicalBlock(scope: !4580, file: !4581, line: 54, column: 6)
!4613 = !DILocation(line: 54, column: 6, scope: !4612, inlinedAt: !4583)
!4614 = !DILocation(line: 54, column: 6, scope: !4580, inlinedAt: !4583)
!4615 = !DILocation(line: 56, column: 6, scope: !4616, inlinedAt: !4583)
!4616 = distinct !DILexicalBlock(scope: !4612, file: !4581, line: 54, column: 32)
!4617 = !DILocation(line: 57, column: 12, scope: !4616, inlinedAt: !4583)
!4618 = !DILocation(line: 55, column: 3, scope: !4616, inlinedAt: !4583)
!4619 = !{i32 -2146956805}
!4620 = !DILocation(line: 59, column: 2, scope: !4616, inlinedAt: !4583)
!4621 = !DILocation(line: 61, column: 8, scope: !4622, inlinedAt: !4583)
!4622 = distinct !DILexicalBlock(scope: !4612, file: !4581, line: 59, column: 9)
!4623 = !DILocation(line: 61, column: 32, scope: !4622, inlinedAt: !4583)
!4624 = !DILocation(line: 60, column: 3, scope: !4622, inlinedAt: !4583)
!4625 = !{i32 -2146956673}
!4626 = !DILocation(line: 30, column: 1, scope: !4573)
!4627 = distinct !DISubprogram(name: "tty_port_set_active", scope: !105, file: !105, line: 630, type: !4628, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !3540, !403}
!4630 = !DILocalVariable(name: "port", arg: 1, scope: !4627, file: !105, line: 630, type: !3540)
!4631 = !DILocation(line: 630, column: 57, scope: !4627)
!4632 = !DILocalVariable(name: "val", arg: 2, scope: !4627, file: !105, line: 630, type: !403)
!4633 = !DILocation(line: 630, column: 68, scope: !4627)
!4634 = !DILocation(line: 632, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4627, file: !105, line: 632, column: 6)
!4636 = !DILocation(line: 632, column: 6, scope: !4627)
!4637 = !DILocation(line: 633, column: 29, scope: !4635)
!4638 = !DILocation(line: 633, column: 35, scope: !4635)
!4639 = !DILocation(line: 633, column: 3, scope: !4635)
!4640 = !DILocation(line: 635, column: 31, scope: !4635)
!4641 = !DILocation(line: 635, column: 37, scope: !4635)
!4642 = !DILocation(line: 635, column: 3, scope: !4635)
!4643 = !DILocation(line: 636, column: 1, scope: !4627)
!4644 = distinct !DISubprogram(name: "tty_port_shutdown", scope: !3, file: !3, line: 314, type: !4446, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4645 = !DILocalVariable(name: "port", arg: 1, scope: !4644, file: !3, line: 314, type: !3540)
!4646 = !DILocation(line: 314, column: 48, scope: !4644)
!4647 = !DILocalVariable(name: "tty", arg: 2, scope: !4644, file: !3, line: 314, type: !103)
!4648 = !DILocation(line: 314, column: 73, scope: !4644)
!4649 = !DILocation(line: 316, column: 14, scope: !4644)
!4650 = !DILocation(line: 316, column: 20, scope: !4644)
!4651 = !DILocation(line: 316, column: 2, scope: !4644)
!4652 = !DILocation(line: 317, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 317, column: 6)
!4654 = !DILocation(line: 317, column: 12, scope: !4653)
!4655 = !DILocation(line: 317, column: 6, scope: !4644)
!4656 = !DILocation(line: 318, column: 3, scope: !4653)
!4657 = !DILocation(line: 320, column: 27, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 320, column: 6)
!4659 = !DILocation(line: 320, column: 6, scope: !4658)
!4660 = !DILocation(line: 320, column: 6, scope: !4644)
!4661 = !DILocation(line: 321, column: 28, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 320, column: 34)
!4663 = !DILocation(line: 321, column: 3, scope: !4662)
!4664 = !DILocation(line: 326, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 326, column: 7)
!4666 = !DILocation(line: 326, column: 11, scope: !4665)
!4667 = !DILocation(line: 326, column: 14, scope: !4665)
!4668 = !DILocation(line: 326, column: 7, scope: !4662)
!4669 = !DILocation(line: 327, column: 27, scope: !4665)
!4670 = !DILocation(line: 327, column: 4, scope: !4665)
!4671 = !DILocation(line: 329, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 329, column: 7)
!4673 = !DILocation(line: 329, column: 13, scope: !4672)
!4674 = !DILocation(line: 329, column: 18, scope: !4672)
!4675 = !DILocation(line: 329, column: 7, scope: !4662)
!4676 = !DILocation(line: 330, column: 4, scope: !4672)
!4677 = !DILocation(line: 330, column: 10, scope: !4672)
!4678 = !DILocation(line: 330, column: 15, scope: !4672)
!4679 = !DILocation(line: 330, column: 24, scope: !4672)
!4680 = !DILocation(line: 331, column: 2, scope: !4662)
!4681 = !DILocation(line: 320, column: 31, scope: !4658)
!4682 = !DILabel(scope: !4644, name: "out", file: !3, line: 332)
!4683 = !DILocation(line: 332, column: 1, scope: !4644)
!4684 = !DILocation(line: 333, column: 16, scope: !4644)
!4685 = !DILocation(line: 333, column: 22, scope: !4644)
!4686 = !DILocation(line: 333, column: 2, scope: !4644)
!4687 = !DILocation(line: 334, column: 1, scope: !4644)
!4688 = distinct !DISubprogram(name: "tty_port_tty_hangup", scope: !3, file: !3, line: 371, type: !4628, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4689 = !DILocalVariable(name: "port", arg: 1, scope: !4688, file: !3, line: 371, type: !3540)
!4690 = !DILocation(line: 371, column: 43, scope: !4688)
!4691 = !DILocalVariable(name: "check_clocal", arg: 2, scope: !4688, file: !3, line: 371, type: !403)
!4692 = !DILocation(line: 371, column: 54, scope: !4688)
!4693 = !DILocalVariable(name: "tty", scope: !4688, file: !3, line: 373, type: !103)
!4694 = !DILocation(line: 373, column: 21, scope: !4688)
!4695 = !DILocation(line: 373, column: 44, scope: !4688)
!4696 = !DILocation(line: 373, column: 27, scope: !4688)
!4697 = !DILocation(line: 375, column: 6, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 375, column: 6)
!4699 = !DILocation(line: 375, column: 10, scope: !4698)
!4700 = !DILocation(line: 375, column: 15, scope: !4698)
!4701 = !DILocation(line: 375, column: 28, scope: !4698)
!4702 = !DILocation(line: 375, column: 32, scope: !4698)
!4703 = !DILocation(line: 375, column: 6, scope: !4688)
!4704 = !DILocation(line: 376, column: 14, scope: !4698)
!4705 = !DILocation(line: 376, column: 3, scope: !4698)
!4706 = !DILocation(line: 377, column: 15, scope: !4688)
!4707 = !DILocation(line: 377, column: 2, scope: !4688)
!4708 = !DILocation(line: 378, column: 1, scope: !4688)
!4709 = distinct !DISubprogram(name: "tty_port_tty_wakeup", scope: !3, file: !3, line: 386, type: !3589, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4710 = !DILocalVariable(name: "port", arg: 1, scope: !4709, file: !3, line: 386, type: !3540)
!4711 = !DILocation(line: 386, column: 43, scope: !4709)
!4712 = !DILocation(line: 388, column: 2, scope: !4709)
!4713 = !DILocation(line: 388, column: 8, scope: !4709)
!4714 = !DILocation(line: 388, column: 20, scope: !4709)
!4715 = !DILocation(line: 388, column: 33, scope: !4709)
!4716 = !DILocation(line: 389, column: 1, scope: !4709)
!4717 = distinct !DISubprogram(name: "tty_port_carrier_raised", scope: !3, file: !3, line: 400, type: !3581, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4718 = !DILocalVariable(name: "port", arg: 1, scope: !4717, file: !3, line: 400, type: !3540)
!4719 = !DILocation(line: 400, column: 46, scope: !4717)
!4720 = !DILocation(line: 402, column: 6, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 402, column: 6)
!4722 = !DILocation(line: 402, column: 12, scope: !4721)
!4723 = !DILocation(line: 402, column: 17, scope: !4721)
!4724 = !DILocation(line: 402, column: 32, scope: !4721)
!4725 = !DILocation(line: 402, column: 6, scope: !4717)
!4726 = !DILocation(line: 403, column: 3, scope: !4721)
!4727 = !DILocation(line: 404, column: 9, scope: !4717)
!4728 = !DILocation(line: 404, column: 15, scope: !4717)
!4729 = !DILocation(line: 404, column: 20, scope: !4717)
!4730 = !DILocation(line: 404, column: 35, scope: !4717)
!4731 = !DILocation(line: 404, column: 2, scope: !4717)
!4732 = !DILocation(line: 405, column: 1, scope: !4717)
!4733 = distinct !DISubprogram(name: "tty_port_raise_dtr_rts", scope: !3, file: !3, line: 416, type: !3589, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4734 = !DILocalVariable(name: "port", arg: 1, scope: !4733, file: !3, line: 416, type: !3540)
!4735 = !DILocation(line: 416, column: 46, scope: !4733)
!4736 = !DILocation(line: 418, column: 6, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 418, column: 6)
!4738 = !DILocation(line: 418, column: 12, scope: !4737)
!4739 = !DILocation(line: 418, column: 17, scope: !4737)
!4740 = !DILocation(line: 418, column: 6, scope: !4733)
!4741 = !DILocation(line: 419, column: 3, scope: !4737)
!4742 = !DILocation(line: 419, column: 9, scope: !4737)
!4743 = !DILocation(line: 419, column: 14, scope: !4737)
!4744 = !DILocation(line: 419, column: 22, scope: !4737)
!4745 = !DILocation(line: 420, column: 1, scope: !4733)
!4746 = distinct !DISubprogram(name: "tty_port_lower_dtr_rts", scope: !3, file: !3, line: 431, type: !3589, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4747 = !DILocalVariable(name: "port", arg: 1, scope: !4746, file: !3, line: 431, type: !3540)
!4748 = !DILocation(line: 431, column: 46, scope: !4746)
!4749 = !DILocation(line: 433, column: 6, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 433, column: 6)
!4751 = !DILocation(line: 433, column: 12, scope: !4750)
!4752 = !DILocation(line: 433, column: 17, scope: !4750)
!4753 = !DILocation(line: 433, column: 6, scope: !4746)
!4754 = !DILocation(line: 434, column: 3, scope: !4750)
!4755 = !DILocation(line: 434, column: 9, scope: !4750)
!4756 = !DILocation(line: 434, column: 14, scope: !4750)
!4757 = !DILocation(line: 434, column: 22, scope: !4750)
!4758 = !DILocation(line: 435, column: 1, scope: !4746)
!4759 = distinct !DISubprogram(name: "tty_port_block_til_ready", scope: !3, file: !3, line: 462, type: !4760, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!108, !3540, !103, !266}
!4762 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 537, column: 2, scope: !4759)
!4764 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !4763)
!4765 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 533, column: 2, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 533, column: 2)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 533, column: 2)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 533, column: 2)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 533, column: 2)
!4771 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 533, column: 2)
!4772 = !DILocalVariable(name: "pscr_ret__", scope: !4773, file: !4774, line: 15, type: !1084)
!4773 = distinct !DILexicalBlock(scope: !4775, file: !4774, line: 15, column: 9)
!4774 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4775 = distinct !DISubprogram(name: "get_current", scope: !4774, file: !4774, line: 13, type: !4776, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!1084}
!4778 = !DILocation(line: 15, column: 9, scope: !4773, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 521, column: 22, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 521, column: 7)
!4781 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 498, column: 12)
!4782 = !DILocalVariable(name: "__vpp_verify", scope: !4783, file: !4774, line: 15, type: !3001)
!4783 = distinct !DILexicalBlock(scope: !4773, file: !4774, line: 15, column: 9)
!4784 = !DILocation(line: 15, column: 9, scope: !4783, inlinedAt: !4779)
!4785 = !DILocalVariable(name: "pfo_val__", scope: !4786, file: !4774, line: 15, type: !335)
!4786 = distinct !DILexicalBlock(scope: !4773, file: !4774, line: 15, column: 9)
!4787 = !DILocation(line: 15, column: 9, scope: !4786, inlinedAt: !4779)
!4788 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 496, column: 2, scope: !4759)
!4790 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !4789)
!4791 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 493, column: 2, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 493, column: 2)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 493, column: 2)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 493, column: 2)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 493, column: 2)
!4797 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 493, column: 2)
!4798 = !DILocation(line: 15, column: 9, scope: !4773, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 467, column: 2, scope: !4759)
!4800 = !DILocation(line: 15, column: 9, scope: !4783, inlinedAt: !4799)
!4801 = !DILocation(line: 15, column: 9, scope: !4786, inlinedAt: !4799)
!4802 = !DILocalVariable(name: "port", arg: 1, scope: !4759, file: !3, line: 462, type: !3540)
!4803 = !DILocation(line: 462, column: 47, scope: !4759)
!4804 = !DILocalVariable(name: "tty", arg: 2, scope: !4759, file: !3, line: 463, type: !103)
!4805 = !DILocation(line: 463, column: 24, scope: !4759)
!4806 = !DILocalVariable(name: "filp", arg: 3, scope: !4759, file: !3, line: 463, type: !266)
!4807 = !DILocation(line: 463, column: 42, scope: !4759)
!4808 = !DILocalVariable(name: "do_clocal", scope: !4759, file: !3, line: 465, type: !108)
!4809 = !DILocation(line: 465, column: 6, scope: !4759)
!4810 = !DILocalVariable(name: "retval", scope: !4759, file: !3, line: 465, type: !108)
!4811 = !DILocation(line: 465, column: 21, scope: !4759)
!4812 = !DILocalVariable(name: "flags", scope: !4759, file: !3, line: 466, type: !99)
!4813 = !DILocation(line: 466, column: 16, scope: !4759)
!4814 = !DILocalVariable(name: "wait", scope: !4759, file: !3, line: 467, type: !4815)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1345, line: 29, size: 320, elements: !4816)
!4816 = !{!4817, !4818, !4819, !4825}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4815, file: !1345, line: 30, baseType: !7, size: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4815, file: !1345, line: 31, baseType: !94, size: 64, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4815, file: !1345, line: 32, baseType: !4820, size: 64, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1345, line: 16, baseType: !4821)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!108, !4824, !7, !108, !94}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4815, file: !1345, line: 33, baseType: !135, size: 128, offset: 192)
!4826 = !DILocation(line: 467, column: 2, scope: !4759)
!4827 = !{i32 -2146571020}
!4828 = !DILocation(line: 471, column: 19, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 471, column: 6)
!4830 = !DILocation(line: 471, column: 6, scope: !4829)
!4831 = !DILocation(line: 471, column: 6, scope: !4759)
!4832 = !DILocation(line: 472, column: 23, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 471, column: 25)
!4834 = !DILocation(line: 472, column: 3, scope: !4833)
!4835 = !DILocation(line: 473, column: 3, scope: !4833)
!4836 = !DILocation(line: 475, column: 6, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 475, column: 6)
!4838 = !DILocation(line: 475, column: 11, scope: !4837)
!4839 = !DILocation(line: 475, column: 19, scope: !4837)
!4840 = !DILocation(line: 475, column: 23, scope: !4837)
!4841 = !DILocation(line: 475, column: 29, scope: !4837)
!4842 = !DILocation(line: 475, column: 37, scope: !4837)
!4843 = !DILocation(line: 475, column: 6, scope: !4759)
!4844 = !DILocation(line: 477, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 477, column: 7)
!4846 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 475, column: 52)
!4847 = !DILocation(line: 477, column: 7, scope: !4846)
!4848 = !DILocation(line: 478, column: 27, scope: !4845)
!4849 = !DILocation(line: 478, column: 4, scope: !4845)
!4850 = !DILocation(line: 479, column: 23, scope: !4846)
!4851 = !DILocation(line: 479, column: 3, scope: !4846)
!4852 = !DILocation(line: 480, column: 3, scope: !4846)
!4853 = !DILocation(line: 483, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 483, column: 6)
!4855 = !DILocation(line: 483, column: 6, scope: !4759)
!4856 = !DILocation(line: 484, column: 13, scope: !4854)
!4857 = !DILocation(line: 484, column: 3, scope: !4854)
!4858 = !DILocation(line: 490, column: 9, scope: !4759)
!4859 = !DILocation(line: 493, column: 2, scope: !4759)
!4860 = !DILocation(line: 493, column: 2, scope: !4797)
!4861 = !DILocalVariable(name: "__dummy", scope: !4862, file: !3, line: 493, type: !99)
!4862 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 493, column: 2)
!4863 = !DILocation(line: 493, column: 2, scope: !4862)
!4864 = !DILocalVariable(name: "__dummy2", scope: !4862, file: !3, line: 493, type: !99)
!4865 = !DILocation(line: 493, column: 2, scope: !4796)
!4866 = !DILocation(line: 493, column: 2, scope: !4795)
!4867 = !DILocation(line: 493, column: 2, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 493, column: 2)
!4869 = !DILocalVariable(name: "__dummy", scope: !4870, file: !3, line: 493, type: !99)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 493, column: 2)
!4871 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 493, column: 2)
!4872 = !DILocation(line: 493, column: 2, scope: !4870)
!4873 = !DILocalVariable(name: "__dummy2", scope: !4870, file: !3, line: 493, type: !99)
!4874 = !DILocation(line: 493, column: 2, scope: !4871)
!4875 = !DILocation(line: 493, column: 2, scope: !4794)
!4876 = !{i32 -2142736998}
!4877 = !DILocation(line: 493, column: 2, scope: !4793)
!4878 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !4792)
!4879 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !4792)
!4880 = !DILocation(line: 494, column: 2, scope: !4759)
!4881 = !DILocation(line: 494, column: 8, scope: !4759)
!4882 = !DILocation(line: 494, column: 13, scope: !4759)
!4883 = !DILocation(line: 495, column: 2, scope: !4759)
!4884 = !DILocation(line: 495, column: 8, scope: !4759)
!4885 = !DILocation(line: 495, column: 20, scope: !4759)
!4886 = !DILocation(line: 496, column: 26, scope: !4759)
!4887 = !DILocation(line: 496, column: 32, scope: !4759)
!4888 = !DILocation(line: 496, column: 38, scope: !4759)
!4889 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !4789)
!4890 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !4789)
!4891 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !4789)
!4892 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !4789)
!4893 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !4789)
!4894 = !DILocation(line: 498, column: 2, scope: !4759)
!4895 = !DILocation(line: 500, column: 7, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 500, column: 7)
!4897 = !DILocation(line: 500, column: 19, scope: !4896)
!4898 = !DILocation(line: 500, column: 43, scope: !4896)
!4899 = !DILocation(line: 500, column: 22, scope: !4896)
!4900 = !DILocation(line: 500, column: 7, scope: !4781)
!4901 = !DILocation(line: 501, column: 27, scope: !4896)
!4902 = !DILocation(line: 501, column: 4, scope: !4896)
!4903 = !DILocation(line: 503, column: 20, scope: !4781)
!4904 = !DILocation(line: 503, column: 26, scope: !4781)
!4905 = !DILocation(line: 503, column: 3, scope: !4781)
!4906 = !DILocation(line: 506, column: 21, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 506, column: 7)
!4908 = !DILocation(line: 506, column: 7, scope: !4907)
!4909 = !DILocation(line: 506, column: 27, scope: !4907)
!4910 = !DILocation(line: 506, column: 52, scope: !4907)
!4911 = !DILocation(line: 506, column: 31, scope: !4907)
!4912 = !DILocation(line: 506, column: 7, scope: !4781)
!4913 = !DILocation(line: 507, column: 8, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 507, column: 8)
!4915 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 506, column: 59)
!4916 = !DILocation(line: 507, column: 14, scope: !4914)
!4917 = !DILocation(line: 507, column: 20, scope: !4914)
!4918 = !DILocation(line: 507, column: 8, scope: !4915)
!4919 = !DILocation(line: 508, column: 12, scope: !4914)
!4920 = !DILocation(line: 508, column: 5, scope: !4914)
!4921 = !DILocation(line: 510, column: 12, scope: !4914)
!4922 = !DILocation(line: 511, column: 4, scope: !4915)
!4923 = !DILocation(line: 519, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 519, column: 7)
!4925 = !DILocation(line: 519, column: 17, scope: !4924)
!4926 = !DILocation(line: 519, column: 44, scope: !4924)
!4927 = !DILocation(line: 519, column: 20, scope: !4924)
!4928 = !DILocation(line: 519, column: 7, scope: !4781)
!4929 = !DILocation(line: 520, column: 4, scope: !4924)
!4930 = !DILocation(line: 521, column: 7, scope: !4780)
!4931 = !DILocation(line: 521, column: 7, scope: !4781)
!4932 = !DILocation(line: 522, column: 11, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 521, column: 32)
!4934 = !DILocation(line: 523, column: 4, scope: !4933)
!4935 = !DILocation(line: 525, column: 14, scope: !4781)
!4936 = !DILocation(line: 525, column: 3, scope: !4781)
!4937 = !DILocation(line: 526, column: 3, scope: !4781)
!4938 = !DILocation(line: 527, column: 12, scope: !4781)
!4939 = !DILocation(line: 527, column: 3, scope: !4781)
!4940 = distinct !{!4940, !4894, !4941}
!4941 = !DILocation(line: 528, column: 2, scope: !4759)
!4942 = !DILocation(line: 529, column: 15, scope: !4759)
!4943 = !DILocation(line: 529, column: 21, scope: !4759)
!4944 = !DILocation(line: 529, column: 2, scope: !4759)
!4945 = !DILocation(line: 533, column: 2, scope: !4759)
!4946 = !DILocation(line: 533, column: 2, scope: !4771)
!4947 = !DILocalVariable(name: "__dummy", scope: !4948, file: !3, line: 533, type: !99)
!4948 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 533, column: 2)
!4949 = !DILocation(line: 533, column: 2, scope: !4948)
!4950 = !DILocalVariable(name: "__dummy2", scope: !4948, file: !3, line: 533, type: !99)
!4951 = !DILocation(line: 533, column: 2, scope: !4770)
!4952 = !DILocation(line: 533, column: 2, scope: !4769)
!4953 = !DILocation(line: 533, column: 2, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 533, column: 2)
!4955 = !DILocalVariable(name: "__dummy", scope: !4956, file: !3, line: 533, type: !99)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 533, column: 2)
!4957 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 533, column: 2)
!4958 = !DILocation(line: 533, column: 2, scope: !4956)
!4959 = !DILocalVariable(name: "__dummy2", scope: !4956, file: !3, line: 533, type: !99)
!4960 = !DILocation(line: 533, column: 2, scope: !4957)
!4961 = !DILocation(line: 533, column: 2, scope: !4768)
!4962 = !{i32 -2142735838}
!4963 = !DILocation(line: 533, column: 2, scope: !4767)
!4964 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !4766)
!4965 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !4766)
!4966 = !DILocation(line: 534, column: 21, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 534, column: 6)
!4968 = !DILocation(line: 534, column: 7, scope: !4967)
!4969 = !DILocation(line: 534, column: 6, scope: !4759)
!4970 = !DILocation(line: 535, column: 3, scope: !4967)
!4971 = !DILocation(line: 535, column: 9, scope: !4967)
!4972 = !DILocation(line: 535, column: 14, scope: !4967)
!4973 = !DILocation(line: 536, column: 2, scope: !4759)
!4974 = !DILocation(line: 536, column: 8, scope: !4759)
!4975 = !DILocation(line: 536, column: 20, scope: !4759)
!4976 = !DILocation(line: 537, column: 26, scope: !4759)
!4977 = !DILocation(line: 537, column: 32, scope: !4759)
!4978 = !DILocation(line: 537, column: 38, scope: !4759)
!4979 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !4763)
!4980 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !4763)
!4981 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !4763)
!4982 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !4763)
!4983 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !4763)
!4984 = !DILocation(line: 538, column: 6, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 538, column: 6)
!4986 = !DILocation(line: 538, column: 13, scope: !4985)
!4987 = !DILocation(line: 538, column: 6, scope: !4759)
!4988 = !DILocation(line: 539, column: 23, scope: !4985)
!4989 = !DILocation(line: 539, column: 3, scope: !4985)
!4990 = !DILocation(line: 540, column: 9, scope: !4759)
!4991 = !DILocation(line: 540, column: 2, scope: !4759)
!4992 = !DILocation(line: 541, column: 1, scope: !4759)
!4993 = distinct !DISubprogram(name: "tty_io_error", scope: !105, file: !105, line: 399, type: !4994, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!403, !103}
!4996 = !DILocalVariable(name: "tty", arg: 1, scope: !4993, file: !105, line: 399, type: !103)
!4997 = !DILocation(line: 399, column: 52, scope: !4993)
!4998 = !DILocation(line: 401, column: 33, scope: !4993)
!4999 = !DILocation(line: 401, column: 38, scope: !4993)
!5000 = !DILocation(line: 401, column: 9, scope: !4993)
!5001 = !DILocation(line: 401, column: 2, scope: !4993)
!5002 = distinct !DISubprogram(name: "tty_port_initialized", scope: !105, file: !105, line: 664, type: !5003, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!403, !3540}
!5005 = !DILocalVariable(name: "port", arg: 1, scope: !5002, file: !105, line: 664, type: !3540)
!5006 = !DILocation(line: 664, column: 58, scope: !5002)
!5007 = !DILocation(line: 666, column: 41, scope: !5002)
!5008 = !DILocation(line: 666, column: 47, scope: !5002)
!5009 = !DILocation(line: 666, column: 9, scope: !5002)
!5010 = !DILocation(line: 666, column: 2, scope: !5002)
!5011 = distinct !DISubprogram(name: "signal_pending", scope: !1618, file: !1618, line: 356, type: !5012, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!108, !1084}
!5014 = !DILocalVariable(name: "p", arg: 1, scope: !5011, file: !1618, line: 356, type: !1084)
!5015 = !DILocation(line: 356, column: 54, scope: !5011)
!5016 = !DILocation(line: 358, column: 9, scope: !5011)
!5017 = !DILocation(line: 358, column: 2, scope: !5011)
!5018 = distinct !DISubprogram(name: "tty_port_close_start", scope: !3, file: !3, line: 559, type: !4760, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5019 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 583, column: 2, scope: !5018)
!5021 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !5020)
!5022 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 580, column: 3, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 579, column: 19)
!5025 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 579, column: 6)
!5026 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !5023)
!5027 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 567, column: 2, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 567, column: 2)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 567, column: 2)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 567, column: 2)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 567, column: 2)
!5033 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 567, column: 2)
!5034 = !DILocalVariable(name: "port", arg: 1, scope: !5018, file: !3, line: 559, type: !3540)
!5035 = !DILocation(line: 559, column: 43, scope: !5018)
!5036 = !DILocalVariable(name: "tty", arg: 2, scope: !5018, file: !3, line: 560, type: !103)
!5037 = !DILocation(line: 560, column: 24, scope: !5018)
!5038 = !DILocalVariable(name: "filp", arg: 3, scope: !5018, file: !3, line: 560, type: !266)
!5039 = !DILocation(line: 560, column: 42, scope: !5018)
!5040 = !DILocalVariable(name: "flags", scope: !5018, file: !3, line: 562, type: !99)
!5041 = !DILocation(line: 562, column: 16, scope: !5018)
!5042 = !DILocation(line: 564, column: 20, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 564, column: 6)
!5044 = !DILocation(line: 564, column: 6, scope: !5043)
!5045 = !DILocation(line: 564, column: 6, scope: !5018)
!5046 = !DILocation(line: 565, column: 3, scope: !5043)
!5047 = !DILocation(line: 567, column: 2, scope: !5018)
!5048 = !DILocation(line: 567, column: 2, scope: !5033)
!5049 = !DILocalVariable(name: "__dummy", scope: !5050, file: !3, line: 567, type: !99)
!5050 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 567, column: 2)
!5051 = !DILocation(line: 567, column: 2, scope: !5050)
!5052 = !DILocalVariable(name: "__dummy2", scope: !5050, file: !3, line: 567, type: !99)
!5053 = !DILocation(line: 567, column: 2, scope: !5032)
!5054 = !DILocation(line: 567, column: 2, scope: !5031)
!5055 = !DILocation(line: 567, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 567, column: 2)
!5057 = !DILocalVariable(name: "__dummy", scope: !5058, file: !3, line: 567, type: !99)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 567, column: 2)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 567, column: 2)
!5060 = !DILocation(line: 567, column: 2, scope: !5058)
!5061 = !DILocalVariable(name: "__dummy2", scope: !5058, file: !3, line: 567, type: !99)
!5062 = !DILocation(line: 567, column: 2, scope: !5059)
!5063 = !DILocation(line: 567, column: 2, scope: !5030)
!5064 = !{i32 -2142732985}
!5065 = !DILocation(line: 567, column: 2, scope: !5029)
!5066 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !5028)
!5067 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !5028)
!5068 = !DILocation(line: 568, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 568, column: 6)
!5070 = !DILocation(line: 568, column: 11, scope: !5069)
!5071 = !DILocation(line: 568, column: 17, scope: !5069)
!5072 = !DILocation(line: 568, column: 22, scope: !5069)
!5073 = !DILocation(line: 568, column: 25, scope: !5069)
!5074 = !DILocation(line: 568, column: 31, scope: !5069)
!5075 = !DILocation(line: 568, column: 37, scope: !5069)
!5076 = !DILocation(line: 568, column: 6, scope: !5018)
!5077 = !DILocation(line: 569, column: 3, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 568, column: 43)
!5079 = !DILocation(line: 571, column: 3, scope: !5078)
!5080 = !DILocation(line: 571, column: 9, scope: !5078)
!5081 = !DILocation(line: 571, column: 15, scope: !5078)
!5082 = !DILocation(line: 572, column: 2, scope: !5078)
!5083 = !DILocation(line: 573, column: 8, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 573, column: 6)
!5085 = !DILocation(line: 573, column: 14, scope: !5084)
!5086 = !DILocation(line: 573, column: 6, scope: !5084)
!5087 = !DILocation(line: 573, column: 20, scope: !5084)
!5088 = !DILocation(line: 573, column: 6, scope: !5018)
!5089 = !DILocation(line: 574, column: 3, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 573, column: 25)
!5091 = !DILocation(line: 576, column: 3, scope: !5090)
!5092 = !DILocation(line: 576, column: 9, scope: !5090)
!5093 = !DILocation(line: 576, column: 15, scope: !5090)
!5094 = !DILocation(line: 577, column: 2, scope: !5090)
!5095 = !DILocation(line: 579, column: 6, scope: !5025)
!5096 = !DILocation(line: 579, column: 12, scope: !5025)
!5097 = !DILocation(line: 579, column: 6, scope: !5018)
!5098 = !DILocation(line: 580, column: 27, scope: !5024)
!5099 = !DILocation(line: 580, column: 33, scope: !5024)
!5100 = !DILocation(line: 580, column: 39, scope: !5024)
!5101 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !5023)
!5102 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !5023)
!5103 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !5023)
!5104 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !5023)
!5105 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !5023)
!5106 = !DILocation(line: 581, column: 3, scope: !5024)
!5107 = !DILocation(line: 583, column: 26, scope: !5018)
!5108 = !DILocation(line: 583, column: 32, scope: !5018)
!5109 = !DILocation(line: 583, column: 38, scope: !5018)
!5110 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !5020)
!5111 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !5020)
!5112 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !5020)
!5113 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !5020)
!5114 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !5020)
!5115 = !DILocation(line: 585, column: 2, scope: !5018)
!5116 = !DILocation(line: 585, column: 7, scope: !5018)
!5117 = !DILocation(line: 585, column: 15, scope: !5018)
!5118 = !DILocation(line: 587, column: 27, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 587, column: 6)
!5120 = !DILocation(line: 587, column: 6, scope: !5119)
!5121 = !DILocation(line: 587, column: 6, scope: !5018)
!5122 = !DILocation(line: 589, column: 7, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 589, column: 7)
!5124 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 587, column: 34)
!5125 = !DILocation(line: 589, column: 12, scope: !5123)
!5126 = !DILocation(line: 589, column: 7, scope: !5124)
!5127 = !DILocation(line: 590, column: 28, scope: !5123)
!5128 = !DILocation(line: 590, column: 4, scope: !5123)
!5129 = !DILocation(line: 591, column: 7, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 591, column: 7)
!5131 = !DILocation(line: 591, column: 13, scope: !5130)
!5132 = !DILocation(line: 591, column: 26, scope: !5130)
!5133 = !DILocation(line: 591, column: 7, scope: !5124)
!5134 = !DILocation(line: 592, column: 24, scope: !5130)
!5135 = !DILocation(line: 592, column: 29, scope: !5130)
!5136 = !DILocation(line: 592, column: 35, scope: !5130)
!5137 = !DILocation(line: 592, column: 4, scope: !5130)
!5138 = !DILocation(line: 593, column: 7, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 593, column: 7)
!5140 = !DILocation(line: 593, column: 13, scope: !5139)
!5141 = !DILocation(line: 593, column: 7, scope: !5124)
!5142 = !DILocation(line: 594, column: 25, scope: !5139)
!5143 = !DILocation(line: 594, column: 31, scope: !5139)
!5144 = !DILocation(line: 594, column: 4, scope: !5139)
!5145 = !DILocation(line: 595, column: 2, scope: !5124)
!5146 = !DILocation(line: 597, column: 18, scope: !5018)
!5147 = !DILocation(line: 597, column: 2, scope: !5018)
!5148 = !DILocation(line: 600, column: 2, scope: !5018)
!5149 = !DILocation(line: 601, column: 1, scope: !5018)
!5150 = distinct !DISubprogram(name: "tty_port_drain_delay", scope: !3, file: !3, line: 544, type: !4446, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5151 = !DILocalVariable(name: "port", arg: 1, scope: !5150, file: !3, line: 544, type: !3540)
!5152 = !DILocation(line: 544, column: 51, scope: !5150)
!5153 = !DILocalVariable(name: "tty", arg: 2, scope: !5150, file: !3, line: 544, type: !103)
!5154 = !DILocation(line: 544, column: 76, scope: !5150)
!5155 = !DILocalVariable(name: "bps", scope: !5150, file: !3, line: 546, type: !7)
!5156 = !DILocation(line: 546, column: 15, scope: !5150)
!5157 = !DILocation(line: 546, column: 39, scope: !5150)
!5158 = !DILocation(line: 546, column: 21, scope: !5150)
!5159 = !DILocalVariable(name: "timeout", scope: !5150, file: !3, line: 547, type: !224)
!5160 = !DILocation(line: 547, column: 7, scope: !5150)
!5161 = !DILocation(line: 549, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 549, column: 6)
!5163 = !DILocation(line: 549, column: 10, scope: !5162)
!5164 = !DILocation(line: 549, column: 6, scope: !5150)
!5165 = !DILocation(line: 550, column: 24, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 549, column: 18)
!5167 = !DILocation(line: 550, column: 30, scope: !5166)
!5168 = !DILocation(line: 550, column: 22, scope: !5166)
!5169 = !DILocation(line: 550, column: 45, scope: !5166)
!5170 = !DILocation(line: 550, column: 43, scope: !5166)
!5171 = !DILocation(line: 550, column: 13, scope: !5166)
!5172 = !DILocation(line: 550, column: 11, scope: !5166)
!5173 = !DILocalVariable(name: "__UNIQUE_ID___x212", scope: !5174, file: !3, line: 551, type: !224)
!5174 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 551, column: 13)
!5175 = !DILocation(line: 551, column: 13, scope: !5174)
!5176 = !DILocalVariable(name: "__UNIQUE_ID___y213", scope: !5174, file: !3, line: 551, type: !224)
!5177 = !DILocation(line: 551, column: 11, scope: !5166)
!5178 = !DILocation(line: 552, column: 2, scope: !5166)
!5179 = !DILocation(line: 553, column: 11, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 552, column: 9)
!5181 = !DILocation(line: 555, column: 33, scope: !5150)
!5182 = !DILocation(line: 555, column: 2, scope: !5150)
!5183 = !DILocation(line: 556, column: 1, scope: !5150)
!5184 = distinct !DISubprogram(name: "tty_port_close_end", scope: !3, file: !3, line: 605, type: !4446, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5185 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !5186)
!5186 = distinct !DILocation(line: 621, column: 2, scope: !5184)
!5187 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !5186)
!5188 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 618, column: 3, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 618, column: 3)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 618, column: 3)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 618, column: 3)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 618, column: 3)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 618, column: 3)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 614, column: 26)
!5196 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 614, column: 6)
!5197 = !DILocation(line: 407, column: 64, scope: !4353, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 615, column: 3, scope: !5195)
!5199 = !DILocation(line: 407, column: 84, scope: !4353, inlinedAt: !5198)
!5200 = !DILocation(line: 327, column: 67, scope: !3974, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 612, column: 2, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 612, column: 2)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 612, column: 2)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 612, column: 2)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 612, column: 2)
!5206 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 612, column: 2)
!5207 = !DILocalVariable(name: "port", arg: 1, scope: !5184, file: !3, line: 605, type: !3540)
!5208 = !DILocation(line: 605, column: 42, scope: !5184)
!5209 = !DILocalVariable(name: "tty", arg: 2, scope: !5184, file: !3, line: 605, type: !103)
!5210 = !DILocation(line: 605, column: 67, scope: !5184)
!5211 = !DILocalVariable(name: "flags", scope: !5184, file: !3, line: 607, type: !99)
!5212 = !DILocation(line: 607, column: 16, scope: !5184)
!5213 = !DILocation(line: 609, column: 18, scope: !5184)
!5214 = !DILocation(line: 609, column: 2, scope: !5184)
!5215 = !DILocation(line: 610, column: 2, scope: !5184)
!5216 = !DILocation(line: 610, column: 7, scope: !5184)
!5217 = !DILocation(line: 610, column: 15, scope: !5184)
!5218 = !DILocation(line: 612, column: 2, scope: !5184)
!5219 = !DILocation(line: 612, column: 2, scope: !5206)
!5220 = !DILocalVariable(name: "__dummy", scope: !5221, file: !3, line: 612, type: !99)
!5221 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 612, column: 2)
!5222 = !DILocation(line: 612, column: 2, scope: !5221)
!5223 = !DILocalVariable(name: "__dummy2", scope: !5221, file: !3, line: 612, type: !99)
!5224 = !DILocation(line: 612, column: 2, scope: !5205)
!5225 = !DILocation(line: 612, column: 2, scope: !5204)
!5226 = !DILocation(line: 612, column: 2, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 612, column: 2)
!5228 = !DILocalVariable(name: "__dummy", scope: !5229, file: !3, line: 612, type: !99)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 612, column: 2)
!5230 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 612, column: 2)
!5231 = !DILocation(line: 612, column: 2, scope: !5229)
!5232 = !DILocalVariable(name: "__dummy2", scope: !5229, file: !3, line: 612, type: !99)
!5233 = !DILocation(line: 612, column: 2, scope: !5230)
!5234 = !DILocation(line: 612, column: 2, scope: !5203)
!5235 = !{i32 -2142730915}
!5236 = !DILocation(line: 612, column: 2, scope: !5202)
!5237 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !5201)
!5238 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !5201)
!5239 = !DILocation(line: 614, column: 6, scope: !5196)
!5240 = !DILocation(line: 614, column: 12, scope: !5196)
!5241 = !DILocation(line: 614, column: 6, scope: !5184)
!5242 = !DILocation(line: 615, column: 27, scope: !5195)
!5243 = !DILocation(line: 615, column: 33, scope: !5195)
!5244 = !DILocation(line: 615, column: 39, scope: !5195)
!5245 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !5198)
!5246 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !5198)
!5247 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !5198)
!5248 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !5198)
!5249 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !5198)
!5250 = !DILocation(line: 616, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 616, column: 7)
!5252 = !DILocation(line: 616, column: 13, scope: !5251)
!5253 = !DILocation(line: 616, column: 7, scope: !5195)
!5254 = !DILocation(line: 617, column: 42, scope: !5251)
!5255 = !DILocation(line: 617, column: 48, scope: !5251)
!5256 = !DILocation(line: 617, column: 25, scope: !5251)
!5257 = !DILocation(line: 617, column: 4, scope: !5251)
!5258 = !DILocation(line: 618, column: 3, scope: !5195)
!5259 = !DILocation(line: 618, column: 3, scope: !5194)
!5260 = !DILocalVariable(name: "__dummy", scope: !5261, file: !3, line: 618, type: !99)
!5261 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 618, column: 3)
!5262 = !DILocation(line: 618, column: 3, scope: !5261)
!5263 = !DILocalVariable(name: "__dummy2", scope: !5261, file: !3, line: 618, type: !99)
!5264 = !DILocation(line: 618, column: 3, scope: !5193)
!5265 = !DILocation(line: 618, column: 3, scope: !5192)
!5266 = !DILocation(line: 618, column: 3, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 618, column: 3)
!5268 = !DILocalVariable(name: "__dummy", scope: !5269, file: !3, line: 618, type: !99)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 618, column: 3)
!5270 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 618, column: 3)
!5271 = !DILocation(line: 618, column: 3, scope: !5269)
!5272 = !DILocalVariable(name: "__dummy2", scope: !5269, file: !3, line: 618, type: !99)
!5273 = !DILocation(line: 618, column: 3, scope: !5270)
!5274 = !DILocation(line: 618, column: 3, scope: !5191)
!5275 = !{i32 -2142729896}
!5276 = !DILocation(line: 618, column: 3, scope: !5190)
!5277 = !DILocation(line: 329, column: 10, scope: !3974, inlinedAt: !5189)
!5278 = !DILocation(line: 329, column: 16, scope: !3974, inlinedAt: !5189)
!5279 = !DILocation(line: 619, column: 3, scope: !5195)
!5280 = !DILocation(line: 620, column: 2, scope: !5195)
!5281 = !DILocation(line: 621, column: 26, scope: !5184)
!5282 = !DILocation(line: 621, column: 32, scope: !5184)
!5283 = !DILocation(line: 621, column: 38, scope: !5184)
!5284 = !DILocation(line: 409, column: 2, scope: !4402, inlinedAt: !5186)
!5285 = !DILocation(line: 409, column: 2, scope: !4407, inlinedAt: !5186)
!5286 = !DILocation(line: 409, column: 2, scope: !4408, inlinedAt: !5186)
!5287 = !DILocation(line: 409, column: 2, scope: !4415, inlinedAt: !5186)
!5288 = !DILocation(line: 409, column: 2, scope: !4418, inlinedAt: !5186)
!5289 = !DILocation(line: 622, column: 22, scope: !5184)
!5290 = !DILocation(line: 622, column: 2, scope: !5184)
!5291 = !DILocation(line: 623, column: 1, scope: !5184)
!5292 = distinct !DISubprogram(name: "tty_port_close", scope: !3, file: !3, line: 631, type: !5293, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !3540, !103, !266}
!5295 = !DILocalVariable(name: "port", arg: 1, scope: !5292, file: !3, line: 631, type: !3540)
!5296 = !DILocation(line: 631, column: 38, scope: !5292)
!5297 = !DILocalVariable(name: "tty", arg: 2, scope: !5292, file: !3, line: 631, type: !103)
!5298 = !DILocation(line: 631, column: 63, scope: !5292)
!5299 = !DILocalVariable(name: "filp", arg: 3, scope: !5292, file: !3, line: 632, type: !266)
!5300 = !DILocation(line: 632, column: 21, scope: !5292)
!5301 = !DILocation(line: 634, column: 27, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 634, column: 6)
!5303 = !DILocation(line: 634, column: 33, scope: !5302)
!5304 = !DILocation(line: 634, column: 38, scope: !5302)
!5305 = !DILocation(line: 634, column: 6, scope: !5302)
!5306 = !DILocation(line: 634, column: 44, scope: !5302)
!5307 = !DILocation(line: 634, column: 6, scope: !5292)
!5308 = !DILocation(line: 635, column: 3, scope: !5302)
!5309 = !DILocation(line: 636, column: 20, scope: !5292)
!5310 = !DILocation(line: 636, column: 26, scope: !5292)
!5311 = !DILocation(line: 636, column: 2, scope: !5292)
!5312 = !DILocation(line: 637, column: 7, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 637, column: 6)
!5314 = !DILocation(line: 637, column: 13, scope: !5313)
!5315 = !DILocation(line: 637, column: 6, scope: !5292)
!5316 = !DILocation(line: 638, column: 26, scope: !5313)
!5317 = !DILocation(line: 638, column: 31, scope: !5313)
!5318 = !DILocation(line: 638, column: 3, scope: !5313)
!5319 = !DILocation(line: 639, column: 21, scope: !5292)
!5320 = !DILocation(line: 639, column: 27, scope: !5292)
!5321 = !DILocation(line: 639, column: 2, scope: !5292)
!5322 = !DILocation(line: 640, column: 19, scope: !5292)
!5323 = !DILocation(line: 640, column: 2, scope: !5292)
!5324 = !DILocation(line: 641, column: 1, scope: !5292)
!5325 = distinct !DISubprogram(name: "tty_port_install", scope: !3, file: !3, line: 654, type: !5326, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!108, !3540, !3496, !103}
!5328 = !DILocalVariable(name: "port", arg: 1, scope: !5325, file: !3, line: 654, type: !3540)
!5329 = !DILocation(line: 654, column: 39, scope: !5325)
!5330 = !DILocalVariable(name: "driver", arg: 2, scope: !5325, file: !3, line: 654, type: !3496)
!5331 = !DILocation(line: 654, column: 64, scope: !5325)
!5332 = !DILocalVariable(name: "tty", arg: 3, scope: !5325, file: !3, line: 655, type: !103)
!5333 = !DILocation(line: 655, column: 22, scope: !5325)
!5334 = !DILocation(line: 657, column: 14, scope: !5325)
!5335 = !DILocation(line: 657, column: 2, scope: !5325)
!5336 = !DILocation(line: 657, column: 7, scope: !5325)
!5337 = !DILocation(line: 657, column: 12, scope: !5325)
!5338 = !DILocation(line: 658, column: 30, scope: !5325)
!5339 = !DILocation(line: 658, column: 38, scope: !5325)
!5340 = !DILocation(line: 658, column: 9, scope: !5325)
!5341 = !DILocation(line: 658, column: 2, scope: !5325)
!5342 = distinct !DISubprogram(name: "tty_port_open", scope: !3, file: !3, line: 670, type: !4760, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5343 = !DILocalVariable(name: "lock", arg: 1, scope: !5344, file: !3975, line: 402, type: !3979)
!5344 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3975, file: !3975, line: 402, type: !5345, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !3979}
!5347 = !DILocation(line: 402, column: 57, scope: !5344, inlinedAt: !5348)
!5348 = distinct !DILocation(line: 675, column: 2, scope: !5342)
!5349 = !DILocalVariable(name: "lock", arg: 1, scope: !5350, file: !3975, line: 377, type: !3979)
!5350 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3975, file: !3975, line: 377, type: !5345, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5351 = !DILocation(line: 377, column: 55, scope: !5350, inlinedAt: !5352)
!5352 = distinct !DILocation(line: 673, column: 2, scope: !5342)
!5353 = !DILocalVariable(name: "port", arg: 1, scope: !5342, file: !3, line: 670, type: !3540)
!5354 = !DILocation(line: 670, column: 36, scope: !5342)
!5355 = !DILocalVariable(name: "tty", arg: 2, scope: !5342, file: !3, line: 670, type: !103)
!5356 = !DILocation(line: 670, column: 61, scope: !5342)
!5357 = !DILocalVariable(name: "filp", arg: 3, scope: !5342, file: !3, line: 671, type: !266)
!5358 = !DILocation(line: 671, column: 21, scope: !5342)
!5359 = !DILocation(line: 673, column: 17, scope: !5342)
!5360 = !DILocation(line: 673, column: 23, scope: !5342)
!5361 = !DILocation(line: 379, column: 2, scope: !5362, inlinedAt: !5352)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !3975, line: 379, column: 2)
!5363 = distinct !DILexicalBlock(scope: !5350, file: !3975, line: 379, column: 2)
!5364 = !DILocation(line: 379, column: 2, scope: !5365, inlinedAt: !5352)
!5365 = distinct !DILexicalBlock(scope: !5363, file: !3975, line: 379, column: 2)
!5366 = !{i32 -2145415874}
!5367 = !DILocation(line: 379, column: 2, scope: !5368, inlinedAt: !5352)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !3975, line: 379, column: 2)
!5369 = !DILocation(line: 674, column: 4, scope: !5342)
!5370 = !DILocation(line: 674, column: 10, scope: !5342)
!5371 = !DILocation(line: 674, column: 2, scope: !5342)
!5372 = !DILocation(line: 675, column: 19, scope: !5342)
!5373 = !DILocation(line: 675, column: 25, scope: !5342)
!5374 = !DILocation(line: 404, column: 2, scope: !5375, inlinedAt: !5348)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !3975, line: 404, column: 2)
!5376 = distinct !DILexicalBlock(scope: !5344, file: !3975, line: 404, column: 2)
!5377 = !DILocation(line: 404, column: 2, scope: !5378, inlinedAt: !5348)
!5378 = distinct !DILexicalBlock(scope: !5376, file: !3975, line: 404, column: 2)
!5379 = !{i32 -2145414126}
!5380 = !DILocation(line: 404, column: 2, scope: !5381, inlinedAt: !5348)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !3975, line: 404, column: 2)
!5382 = !DILocation(line: 676, column: 19, scope: !5342)
!5383 = !DILocation(line: 676, column: 25, scope: !5342)
!5384 = !DILocation(line: 676, column: 2, scope: !5342)
!5385 = !DILocation(line: 684, column: 14, scope: !5342)
!5386 = !DILocation(line: 684, column: 20, scope: !5342)
!5387 = !DILocation(line: 684, column: 2, scope: !5342)
!5388 = !DILocation(line: 686, column: 28, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 686, column: 6)
!5390 = !DILocation(line: 686, column: 7, scope: !5389)
!5391 = !DILocation(line: 686, column: 6, scope: !5342)
!5392 = !DILocation(line: 687, column: 28, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 686, column: 35)
!5394 = !DILocation(line: 687, column: 33, scope: !5393)
!5395 = !DILocation(line: 687, column: 3, scope: !5393)
!5396 = !DILocation(line: 688, column: 7, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 688, column: 7)
!5398 = !DILocation(line: 688, column: 13, scope: !5397)
!5399 = !DILocation(line: 688, column: 18, scope: !5397)
!5400 = !DILocation(line: 688, column: 7, scope: !5393)
!5401 = !DILocalVariable(name: "retval", scope: !5402, file: !3, line: 689, type: !108)
!5402 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 688, column: 28)
!5403 = !DILocation(line: 689, column: 8, scope: !5402)
!5404 = !DILocation(line: 689, column: 17, scope: !5402)
!5405 = !DILocation(line: 689, column: 23, scope: !5402)
!5406 = !DILocation(line: 689, column: 28, scope: !5402)
!5407 = !DILocation(line: 689, column: 37, scope: !5402)
!5408 = !DILocation(line: 689, column: 43, scope: !5402)
!5409 = !DILocation(line: 690, column: 8, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 690, column: 8)
!5411 = !DILocation(line: 690, column: 8, scope: !5402)
!5412 = !DILocation(line: 691, column: 19, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 690, column: 16)
!5414 = !DILocation(line: 691, column: 25, scope: !5413)
!5415 = !DILocation(line: 691, column: 5, scope: !5413)
!5416 = !DILocation(line: 692, column: 12, scope: !5413)
!5417 = !DILocation(line: 692, column: 5, scope: !5413)
!5418 = !DILocation(line: 694, column: 3, scope: !5402)
!5419 = !DILocation(line: 695, column: 28, scope: !5393)
!5420 = !DILocation(line: 695, column: 3, scope: !5393)
!5421 = !DILocation(line: 696, column: 2, scope: !5393)
!5422 = !DILocation(line: 697, column: 16, scope: !5342)
!5423 = !DILocation(line: 697, column: 22, scope: !5342)
!5424 = !DILocation(line: 697, column: 2, scope: !5342)
!5425 = !DILocation(line: 698, column: 34, scope: !5342)
!5426 = !DILocation(line: 698, column: 40, scope: !5342)
!5427 = !DILocation(line: 698, column: 45, scope: !5342)
!5428 = !DILocation(line: 698, column: 9, scope: !5342)
!5429 = !DILocation(line: 698, column: 2, scope: !5342)
!5430 = !DILocation(line: 699, column: 1, scope: !5342)
!5431 = distinct !DISubprogram(name: "clear_bit", scope: !4574, file: !4574, line: 39, type: !4575, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5432 = !DILocalVariable(name: "nr", arg: 1, scope: !5433, file: !4581, line: 72, type: !224)
!5433 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4581, file: !4581, line: 72, type: !4575, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5434 = !DILocation(line: 72, column: 21, scope: !5433, inlinedAt: !5435)
!5435 = distinct !DILocation(line: 42, column: 2, scope: !5431)
!5436 = !DILocalVariable(name: "addr", arg: 2, scope: !5433, file: !4581, line: 72, type: !4577)
!5437 = !DILocation(line: 72, column: 49, scope: !5433, inlinedAt: !5435)
!5438 = !DILocation(line: 84, column: 74, scope: !4587, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 41, column: 2, scope: !5431)
!5440 = !DILocation(line: 84, column: 84, scope: !4587, inlinedAt: !5439)
!5441 = !DILocalVariable(name: "nr", arg: 1, scope: !5431, file: !4574, line: 39, type: !224)
!5442 = !DILocation(line: 39, column: 35, scope: !5431)
!5443 = !DILocalVariable(name: "addr", arg: 2, scope: !5431, file: !4574, line: 39, type: !4577)
!5444 = !DILocation(line: 39, column: 63, scope: !5431)
!5445 = !DILocation(line: 41, column: 26, scope: !5431)
!5446 = !DILocation(line: 41, column: 33, scope: !5431)
!5447 = !DILocation(line: 41, column: 31, scope: !5431)
!5448 = !DILocation(line: 86, column: 20, scope: !4587, inlinedAt: !5439)
!5449 = !DILocation(line: 86, column: 23, scope: !4587, inlinedAt: !5439)
!5450 = !DILocation(line: 86, column: 2, scope: !4587, inlinedAt: !5439)
!5451 = !DILocation(line: 87, column: 2, scope: !4587, inlinedAt: !5439)
!5452 = !DILocation(line: 42, column: 17, scope: !5431)
!5453 = !DILocation(line: 42, column: 21, scope: !5431)
!5454 = !DILocation(line: 74, column: 27, scope: !5455, inlinedAt: !5435)
!5455 = distinct !DILexicalBlock(scope: !5433, file: !4581, line: 74, column: 6)
!5456 = !DILocation(line: 74, column: 6, scope: !5455, inlinedAt: !5435)
!5457 = !DILocation(line: 74, column: 6, scope: !5433, inlinedAt: !5435)
!5458 = !DILocation(line: 76, column: 6, scope: !5459, inlinedAt: !5435)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !4581, line: 74, column: 32)
!5460 = !DILocation(line: 77, column: 13, scope: !5459, inlinedAt: !5435)
!5461 = !DILocation(line: 77, column: 12, scope: !5459, inlinedAt: !5435)
!5462 = !DILocation(line: 75, column: 3, scope: !5459, inlinedAt: !5435)
!5463 = !{i32 -2146955851}
!5464 = !DILocation(line: 78, column: 2, scope: !5459, inlinedAt: !5435)
!5465 = !DILocation(line: 80, column: 8, scope: !5466, inlinedAt: !5435)
!5466 = distinct !DILexicalBlock(scope: !5455, file: !4581, line: 78, column: 9)
!5467 = !DILocation(line: 80, column: 32, scope: !5466, inlinedAt: !5435)
!5468 = !DILocation(line: 79, column: 3, scope: !5466, inlinedAt: !5435)
!5469 = !{i32 -2146955719}
!5470 = !DILocation(line: 43, column: 1, scope: !5431)
!5471 = distinct !DISubprogram(name: "tty_port_set_initialized", scope: !105, file: !105, line: 669, type: !4628, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5472 = !DILocalVariable(name: "port", arg: 1, scope: !5471, file: !105, line: 669, type: !3540)
!5473 = !DILocation(line: 669, column: 62, scope: !5471)
!5474 = !DILocalVariable(name: "val", arg: 2, scope: !5471, file: !105, line: 669, type: !403)
!5475 = !DILocation(line: 669, column: 73, scope: !5471)
!5476 = !DILocation(line: 671, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5471, file: !105, line: 671, column: 6)
!5478 = !DILocation(line: 671, column: 6, scope: !5471)
!5479 = !DILocation(line: 672, column: 34, scope: !5477)
!5480 = !DILocation(line: 672, column: 40, scope: !5477)
!5481 = !DILocation(line: 672, column: 3, scope: !5477)
!5482 = !DILocation(line: 674, column: 36, scope: !5477)
!5483 = !DILocation(line: 674, column: 42, scope: !5477)
!5484 = !DILocation(line: 674, column: 3, scope: !5477)
!5485 = !DILocation(line: 675, column: 1, scope: !5471)
!5486 = distinct !DISubprogram(name: "refcount_set", scope: !86, file: !86, line: 134, type: !5487, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{null, !5489, !108}
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!5490 = !DILocalVariable(name: "v", arg: 1, scope: !5491, file: !5492, line: 39, type: !5495)
!5491 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5492, file: !5492, line: 39, type: !5493, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5492 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !5495, !108}
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!5496 = !DILocation(line: 39, column: 55, scope: !5491, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 46, column: 2, scope: !5498, inlinedAt: !5500)
!5498 = distinct !DISubprogram(name: "atomic_set", scope: !5499, file: !5499, line: 43, type: !5493, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5499 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5500 = distinct !DILocation(line: 136, column: 2, scope: !5486)
!5501 = !DILocalVariable(name: "i", arg: 2, scope: !5491, file: !5492, line: 39, type: !108)
!5502 = !DILocation(line: 39, column: 62, scope: !5491, inlinedAt: !5497)
!5503 = !DILocation(line: 84, column: 74, scope: !4587, inlinedAt: !5504)
!5504 = distinct !DILocation(line: 45, column: 2, scope: !5498, inlinedAt: !5500)
!5505 = !DILocation(line: 84, column: 84, scope: !4587, inlinedAt: !5504)
!5506 = !DILocalVariable(name: "v", arg: 1, scope: !5498, file: !5499, line: 43, type: !5495)
!5507 = !DILocation(line: 43, column: 22, scope: !5498, inlinedAt: !5500)
!5508 = !DILocalVariable(name: "i", arg: 2, scope: !5498, file: !5499, line: 43, type: !108)
!5509 = !DILocation(line: 43, column: 29, scope: !5498, inlinedAt: !5500)
!5510 = !DILocalVariable(name: "r", arg: 1, scope: !5486, file: !86, line: 134, type: !5489)
!5511 = !DILocation(line: 134, column: 45, scope: !5486)
!5512 = !DILocalVariable(name: "n", arg: 2, scope: !5486, file: !86, line: 134, type: !108)
!5513 = !DILocation(line: 134, column: 52, scope: !5486)
!5514 = !DILocation(line: 136, column: 14, scope: !5486)
!5515 = !DILocation(line: 136, column: 17, scope: !5486)
!5516 = !DILocation(line: 136, column: 23, scope: !5486)
!5517 = !DILocation(line: 45, column: 26, scope: !5498, inlinedAt: !5500)
!5518 = !DILocation(line: 86, column: 20, scope: !4587, inlinedAt: !5504)
!5519 = !DILocation(line: 86, column: 23, scope: !4587, inlinedAt: !5504)
!5520 = !DILocation(line: 86, column: 2, scope: !4587, inlinedAt: !5504)
!5521 = !DILocation(line: 87, column: 2, scope: !4587, inlinedAt: !5504)
!5522 = !DILocation(line: 46, column: 18, scope: !5498, inlinedAt: !5500)
!5523 = !DILocation(line: 46, column: 21, scope: !5498, inlinedAt: !5500)
!5524 = !DILocation(line: 41, column: 2, scope: !5525, inlinedAt: !5497)
!5525 = distinct !DILexicalBlock(scope: !5491, file: !5492, line: 41, column: 2)
!5526 = !DILocation(line: 137, column: 1, scope: !5486)
!5527 = distinct !DISubprogram(name: "kasan_check_write", scope: !5528, file: !5528, line: 38, type: !5529, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5528 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!403, !4591, !7}
!5531 = !DILocalVariable(name: "p", arg: 1, scope: !5527, file: !5528, line: 38, type: !4591)
!5532 = !DILocation(line: 38, column: 59, scope: !5527)
!5533 = !DILocalVariable(name: "size", arg: 2, scope: !5527, file: !5528, line: 38, type: !7)
!5534 = !DILocation(line: 38, column: 75, scope: !5527)
!5535 = !DILocation(line: 40, column: 2, scope: !5527)
!5536 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5537, file: !5537, line: 178, type: !5538, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5537 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !4591, !236, !108}
!5540 = !DILocalVariable(name: "ptr", arg: 1, scope: !5536, file: !5537, line: 178, type: !4591)
!5541 = !DILocation(line: 178, column: 60, scope: !5536)
!5542 = !DILocalVariable(name: "size", arg: 2, scope: !5536, file: !5537, line: 178, type: !236)
!5543 = !DILocation(line: 178, column: 72, scope: !5536)
!5544 = !DILocalVariable(name: "type", arg: 3, scope: !5536, file: !5537, line: 179, type: !108)
!5545 = !DILocation(line: 179, column: 15, scope: !5536)
!5546 = !DILocation(line: 179, column: 23, scope: !5536)
!5547 = distinct !DISubprogram(name: "ERR_PTR", scope: !4163, file: !4163, line: 24, type: !5548, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{!94, !224}
!5550 = !DILocalVariable(name: "error", arg: 1, scope: !5547, file: !4163, line: 24, type: !224)
!5551 = !DILocation(line: 24, column: 48, scope: !5547)
!5552 = !DILocation(line: 26, column: 18, scope: !5547)
!5553 = !DILocation(line: 26, column: 9, scope: !5547)
!5554 = !DILocation(line: 26, column: 2, scope: !5547)
!5555 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !86, file: !86, line: 331, type: !5556, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!403, !5489}
!5558 = !DILocalVariable(name: "r", arg: 1, scope: !5555, file: !86, line: 331, type: !5489)
!5559 = !DILocation(line: 331, column: 67, scope: !5555)
!5560 = !DILocation(line: 333, column: 33, scope: !5555)
!5561 = !DILocation(line: 333, column: 9, scope: !5555)
!5562 = !DILocation(line: 333, column: 2, scope: !5555)
!5563 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !86, file: !86, line: 313, type: !5564, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!403, !5489, !620}
!5566 = !DILocalVariable(name: "r", arg: 1, scope: !5563, file: !86, line: 313, type: !5489)
!5567 = !DILocation(line: 313, column: 69, scope: !5563)
!5568 = !DILocalVariable(name: "oldp", arg: 2, scope: !5563, file: !86, line: 313, type: !620)
!5569 = !DILocation(line: 313, column: 77, scope: !5563)
!5570 = !DILocation(line: 315, column: 36, scope: !5563)
!5571 = !DILocation(line: 315, column: 39, scope: !5563)
!5572 = !DILocation(line: 315, column: 9, scope: !5563)
!5573 = !DILocation(line: 315, column: 2, scope: !5563)
!5574 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !86, file: !86, line: 270, type: !5575, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!403, !108, !5489, !620}
!5577 = !DILocalVariable(name: "i", arg: 1, scope: !5578, file: !5492, line: 188, type: !108)
!5578 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5492, file: !5492, line: 188, type: !5579, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!108, !108, !5495}
!5581 = !DILocation(line: 188, column: 54, scope: !5578, inlinedAt: !5582)
!5582 = distinct !DILocation(line: 221, column: 9, scope: !5583, inlinedAt: !5584)
!5583 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5499, file: !5499, line: 218, type: !5579, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5584 = distinct !DILocation(line: 272, column: 12, scope: !5574)
!5585 = !DILocalVariable(name: "v", arg: 2, scope: !5578, file: !5492, line: 188, type: !5495)
!5586 = !DILocation(line: 188, column: 67, scope: !5578, inlinedAt: !5582)
!5587 = !DILocalVariable(name: "__ret", scope: !5588, file: !5492, line: 190, type: !108)
!5588 = distinct !DILexicalBlock(scope: !5578, file: !5492, line: 190, column: 9)
!5589 = !DILocation(line: 190, column: 9, scope: !5588, inlinedAt: !5582)
!5590 = !DILocalVariable(name: "v", arg: 1, scope: !5591, file: !4588, line: 99, type: !4591)
!5591 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4588, file: !4588, line: 99, type: !4589, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5592 = !DILocation(line: 99, column: 79, scope: !5591, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 220, column: 2, scope: !5583, inlinedAt: !5584)
!5594 = !DILocalVariable(name: "size", arg: 2, scope: !5591, file: !4588, line: 99, type: !236)
!5595 = !DILocation(line: 99, column: 89, scope: !5591, inlinedAt: !5593)
!5596 = !DILocalVariable(name: "i", arg: 1, scope: !5583, file: !5499, line: 218, type: !108)
!5597 = !DILocation(line: 218, column: 30, scope: !5583, inlinedAt: !5584)
!5598 = !DILocalVariable(name: "v", arg: 2, scope: !5583, file: !5499, line: 218, type: !5495)
!5599 = !DILocation(line: 218, column: 43, scope: !5583, inlinedAt: !5584)
!5600 = !DILocalVariable(name: "i", arg: 1, scope: !5574, file: !86, line: 270, type: !108)
!5601 = !DILocation(line: 270, column: 61, scope: !5574)
!5602 = !DILocalVariable(name: "r", arg: 2, scope: !5574, file: !86, line: 270, type: !5489)
!5603 = !DILocation(line: 270, column: 76, scope: !5574)
!5604 = !DILocalVariable(name: "oldp", arg: 3, scope: !5574, file: !86, line: 270, type: !620)
!5605 = !DILocation(line: 270, column: 84, scope: !5574)
!5606 = !DILocalVariable(name: "old", scope: !5574, file: !86, line: 272, type: !108)
!5607 = !DILocation(line: 272, column: 6, scope: !5574)
!5608 = !DILocation(line: 272, column: 37, scope: !5574)
!5609 = !DILocation(line: 272, column: 41, scope: !5574)
!5610 = !DILocation(line: 272, column: 44, scope: !5574)
!5611 = !DILocation(line: 220, column: 31, scope: !5583, inlinedAt: !5584)
!5612 = !DILocation(line: 101, column: 20, scope: !5591, inlinedAt: !5593)
!5613 = !DILocation(line: 101, column: 23, scope: !5591, inlinedAt: !5593)
!5614 = !DILocation(line: 101, column: 2, scope: !5591, inlinedAt: !5593)
!5615 = !DILocation(line: 102, column: 2, scope: !5591, inlinedAt: !5593)
!5616 = !DILocation(line: 221, column: 39, scope: !5583, inlinedAt: !5584)
!5617 = !DILocation(line: 221, column: 42, scope: !5583, inlinedAt: !5584)
!5618 = !{i32 -2146326125}
!5619 = !DILocation(line: 274, column: 6, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5574, file: !86, line: 274, column: 6)
!5621 = !DILocation(line: 274, column: 6, scope: !5574)
!5622 = !DILocation(line: 275, column: 11, scope: !5620)
!5623 = !DILocation(line: 275, column: 4, scope: !5620)
!5624 = !DILocation(line: 275, column: 9, scope: !5620)
!5625 = !DILocation(line: 275, column: 3, scope: !5620)
!5626 = !DILocation(line: 277, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5574, file: !86, line: 277, column: 6)
!5628 = !DILocation(line: 277, column: 13, scope: !5627)
!5629 = !DILocation(line: 277, column: 10, scope: !5627)
!5630 = !DILocation(line: 277, column: 6, scope: !5574)
!5631 = !DILocation(line: 278, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5627, file: !86, line: 277, column: 16)
!5633 = !{i32 -2144215235}
!5634 = !DILocation(line: 279, column: 3, scope: !5632)
!5635 = !DILocation(line: 282, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5574, file: !86, line: 282, column: 6)
!5637 = !DILocation(line: 282, column: 6, scope: !5574)
!5638 = !DILocation(line: 283, column: 26, scope: !5636)
!5639 = !DILocation(line: 283, column: 3, scope: !5636)
!5640 = !DILocation(line: 285, column: 2, scope: !5574)
!5641 = !DILocation(line: 286, column: 1, scope: !5574)
!5642 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4422, file: !4422, line: 646, type: !4423, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5643 = !DILocalVariable(name: "__ret", scope: !5644, file: !4422, line: 648, type: !99)
!5644 = distinct !DILexicalBlock(scope: !5642, file: !4422, line: 648, column: 9)
!5645 = !DILocation(line: 648, column: 9, scope: !5644)
!5646 = !DILocalVariable(name: "__edi", scope: !5644, file: !4422, line: 648, type: !99)
!5647 = !DILocalVariable(name: "__esi", scope: !5644, file: !4422, line: 648, type: !99)
!5648 = !DILocalVariable(name: "__edx", scope: !5644, file: !4422, line: 648, type: !99)
!5649 = !DILocalVariable(name: "__ecx", scope: !5644, file: !4422, line: 648, type: !99)
!5650 = !DILocalVariable(name: "__eax", scope: !5644, file: !4422, line: 648, type: !99)
!5651 = !DILocation(line: 648, column: 9, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !4422, line: 648, column: 9)
!5653 = distinct !DILexicalBlock(scope: !5644, file: !4422, line: 648, column: 9)
!5654 = !{i32 -2145585459, i32 -2145583144, i32 -2145582910, i32 -2145582859, i32 -2145582831, i32 -2145582806, i32 -2145583122, i32 -2145583109, i32 -2145582671, i32 -2145582552, i32 -2145583017, i32 -2145582990, i32 -2145582962, i32 -2145582932}
!5655 = !DILocalVariable(name: "__mask", scope: !5656, file: !4422, line: 648, type: !99)
!5656 = distinct !DILexicalBlock(scope: !5652, file: !4422, line: 648, column: 9)
!5657 = !DILocation(line: 648, column: 9, scope: !5656)
!5658 = !DILocation(line: 648, column: 9, scope: !5653)
!5659 = !DILocation(line: 648, column: 2, scope: !5642)
!5660 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4422, file: !4422, line: 656, type: !1740, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5661 = !DILocalVariable(name: "__edi", scope: !5662, file: !4422, line: 658, type: !99)
!5662 = distinct !DILexicalBlock(scope: !5660, file: !4422, line: 658, column: 2)
!5663 = !DILocation(line: 658, column: 2, scope: !5662)
!5664 = !DILocalVariable(name: "__esi", scope: !5662, file: !4422, line: 658, type: !99)
!5665 = !DILocalVariable(name: "__edx", scope: !5662, file: !4422, line: 658, type: !99)
!5666 = !DILocalVariable(name: "__ecx", scope: !5662, file: !4422, line: 658, type: !99)
!5667 = !DILocalVariable(name: "__eax", scope: !5662, file: !4422, line: 658, type: !99)
!5668 = !{i32 -2145578365, i32 -2145577633, i32 -2145577399, i32 -2145577348, i32 -2145577320, i32 -2145577295, i32 -2145577611, i32 -2145577598, i32 -2145577160, i32 -2145577041, i32 -2145577506, i32 -2145577479, i32 -2145577451, i32 -2145577421}
!5669 = !DILocation(line: 659, column: 1, scope: !5660)
!5670 = distinct !DISubprogram(name: "kref_get", scope: !111, file: !111, line: 43, type: !4019, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5671 = !DILocalVariable(name: "kref", arg: 1, scope: !5670, file: !111, line: 43, type: !4021)
!5672 = !DILocation(line: 43, column: 42, scope: !5670)
!5673 = !DILocation(line: 45, column: 16, scope: !5670)
!5674 = !DILocation(line: 45, column: 22, scope: !5670)
!5675 = !DILocation(line: 45, column: 2, scope: !5670)
!5676 = !DILocation(line: 46, column: 1, scope: !5670)
!5677 = distinct !DISubprogram(name: "refcount_inc", scope: !86, file: !86, line: 265, type: !5678, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !5489}
!5680 = !DILocalVariable(name: "r", arg: 1, scope: !5677, file: !86, line: 265, type: !5489)
!5681 = !DILocation(line: 265, column: 45, scope: !5677)
!5682 = !DILocation(line: 267, column: 17, scope: !5677)
!5683 = !DILocation(line: 267, column: 2, scope: !5677)
!5684 = !DILocation(line: 268, column: 1, scope: !5677)
!5685 = distinct !DISubprogram(name: "__refcount_inc", scope: !86, file: !86, line: 248, type: !5686, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !5489, !620}
!5688 = !DILocalVariable(name: "r", arg: 1, scope: !5685, file: !86, line: 248, type: !5489)
!5689 = !DILocation(line: 248, column: 47, scope: !5685)
!5690 = !DILocalVariable(name: "oldp", arg: 2, scope: !5685, file: !86, line: 248, type: !620)
!5691 = !DILocation(line: 248, column: 55, scope: !5685)
!5692 = !DILocation(line: 250, column: 20, scope: !5685)
!5693 = !DILocation(line: 250, column: 23, scope: !5685)
!5694 = !DILocation(line: 250, column: 2, scope: !5685)
!5695 = !DILocation(line: 251, column: 1, scope: !5685)
!5696 = distinct !DISubprogram(name: "__refcount_add", scope: !86, file: !86, line: 191, type: !5697, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{null, !108, !5489, !620}
!5699 = !DILocalVariable(name: "i", arg: 1, scope: !5700, file: !5492, line: 182, type: !108)
!5700 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5492, file: !5492, line: 182, type: !5579, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5701 = !DILocation(line: 182, column: 54, scope: !5700, inlinedAt: !5702)
!5702 = distinct !DILocation(line: 143, column: 9, scope: !5703, inlinedAt: !5704)
!5703 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5499, file: !5499, line: 140, type: !5579, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5704 = distinct !DILocation(line: 193, column: 12, scope: !5696)
!5705 = !DILocalVariable(name: "v", arg: 2, scope: !5700, file: !5492, line: 182, type: !5495)
!5706 = !DILocation(line: 182, column: 67, scope: !5700, inlinedAt: !5702)
!5707 = !DILocalVariable(name: "__ret", scope: !5708, file: !5492, line: 184, type: !108)
!5708 = distinct !DILexicalBlock(scope: !5700, file: !5492, line: 184, column: 9)
!5709 = !DILocation(line: 184, column: 9, scope: !5708, inlinedAt: !5702)
!5710 = !DILocation(line: 99, column: 79, scope: !5591, inlinedAt: !5711)
!5711 = distinct !DILocation(line: 142, column: 2, scope: !5703, inlinedAt: !5704)
!5712 = !DILocation(line: 99, column: 89, scope: !5591, inlinedAt: !5711)
!5713 = !DILocalVariable(name: "i", arg: 1, scope: !5703, file: !5499, line: 140, type: !108)
!5714 = !DILocation(line: 140, column: 30, scope: !5703, inlinedAt: !5704)
!5715 = !DILocalVariable(name: "v", arg: 2, scope: !5703, file: !5499, line: 140, type: !5495)
!5716 = !DILocation(line: 140, column: 43, scope: !5703, inlinedAt: !5704)
!5717 = !DILocalVariable(name: "i", arg: 1, scope: !5696, file: !86, line: 191, type: !108)
!5718 = !DILocation(line: 191, column: 39, scope: !5696)
!5719 = !DILocalVariable(name: "r", arg: 2, scope: !5696, file: !86, line: 191, type: !5489)
!5720 = !DILocation(line: 191, column: 54, scope: !5696)
!5721 = !DILocalVariable(name: "oldp", arg: 3, scope: !5696, file: !86, line: 191, type: !620)
!5722 = !DILocation(line: 191, column: 62, scope: !5696)
!5723 = !DILocalVariable(name: "old", scope: !5696, file: !86, line: 193, type: !108)
!5724 = !DILocation(line: 193, column: 6, scope: !5696)
!5725 = !DILocation(line: 193, column: 37, scope: !5696)
!5726 = !DILocation(line: 193, column: 41, scope: !5696)
!5727 = !DILocation(line: 193, column: 44, scope: !5696)
!5728 = !DILocation(line: 142, column: 31, scope: !5703, inlinedAt: !5704)
!5729 = !DILocation(line: 101, column: 20, scope: !5591, inlinedAt: !5711)
!5730 = !DILocation(line: 101, column: 23, scope: !5591, inlinedAt: !5711)
!5731 = !DILocation(line: 101, column: 2, scope: !5591, inlinedAt: !5711)
!5732 = !DILocation(line: 102, column: 2, scope: !5591, inlinedAt: !5711)
!5733 = !DILocation(line: 143, column: 39, scope: !5703, inlinedAt: !5704)
!5734 = !DILocation(line: 143, column: 42, scope: !5703, inlinedAt: !5704)
!5735 = !{i32 -2146327477}
!5736 = !DILocation(line: 195, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5696, file: !86, line: 195, column: 6)
!5738 = !DILocation(line: 195, column: 6, scope: !5696)
!5739 = !DILocation(line: 196, column: 11, scope: !5737)
!5740 = !DILocation(line: 196, column: 4, scope: !5737)
!5741 = !DILocation(line: 196, column: 9, scope: !5737)
!5742 = !DILocation(line: 196, column: 3, scope: !5737)
!5743 = !DILocation(line: 198, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5696, file: !86, line: 198, column: 6)
!5745 = !DILocation(line: 198, column: 6, scope: !5696)
!5746 = !DILocation(line: 199, column: 26, scope: !5744)
!5747 = !DILocation(line: 199, column: 3, scope: !5744)
!5748 = !DILocation(line: 200, column: 11, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5744, file: !86, line: 200, column: 11)
!5750 = !DILocation(line: 200, column: 11, scope: !5744)
!5751 = !DILocation(line: 201, column: 26, scope: !5749)
!5752 = !DILocation(line: 201, column: 3, scope: !5749)
!5753 = !DILocation(line: 202, column: 1, scope: !5696)
!5754 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4422, file: !4422, line: 651, type: !5755, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{null, !99}
!5757 = !DILocalVariable(name: "f", arg: 1, scope: !5754, file: !4422, line: 651, type: !99)
!5758 = !DILocation(line: 651, column: 65, scope: !5754)
!5759 = !DILocalVariable(name: "__edi", scope: !5760, file: !4422, line: 653, type: !99)
!5760 = distinct !DILexicalBlock(scope: !5754, file: !4422, line: 653, column: 2)
!5761 = !DILocation(line: 653, column: 2, scope: !5760)
!5762 = !DILocalVariable(name: "__esi", scope: !5760, file: !4422, line: 653, type: !99)
!5763 = !DILocalVariable(name: "__edx", scope: !5760, file: !4422, line: 653, type: !99)
!5764 = !DILocalVariable(name: "__ecx", scope: !5760, file: !4422, line: 653, type: !99)
!5765 = !DILocalVariable(name: "__eax", scope: !5760, file: !4422, line: 653, type: !99)
!5766 = !{i32 -2145580992, i32 -2145580242, i32 -2145580008, i32 -2145579957, i32 -2145579929, i32 -2145579904, i32 -2145580220, i32 -2145580207, i32 -2145579769, i32 -2145579650, i32 -2145580115, i32 -2145580088, i32 -2145580060, i32 -2145580030}
!5767 = !DILocation(line: 654, column: 1, scope: !5754)
!5768 = distinct !DISubprogram(name: "test_bit", scope: !5769, file: !5769, line: 132, type: !5770, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5769 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!403, !224, !5772}
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!5774 = !DILocalVariable(name: "nr", arg: 1, scope: !5775, file: !4581, line: 210, type: !224)
!5775 = distinct !DISubprogram(name: "variable_test_bit", scope: !4581, file: !4581, line: 210, type: !5770, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5776 = !DILocation(line: 210, column: 52, scope: !5775, inlinedAt: !5777)
!5777 = distinct !DILocation(line: 135, column: 9, scope: !5768)
!5778 = !DILocalVariable(name: "addr", arg: 2, scope: !5775, file: !4581, line: 210, type: !5772)
!5779 = !DILocation(line: 210, column: 86, scope: !5775, inlinedAt: !5777)
!5780 = !DILocalVariable(name: "oldbit", scope: !5775, file: !4581, line: 212, type: !403)
!5781 = !DILocation(line: 212, column: 7, scope: !5775, inlinedAt: !5777)
!5782 = !DILocalVariable(name: "nr", arg: 1, scope: !5783, file: !4581, line: 204, type: !224)
!5783 = distinct !DISubprogram(name: "constant_test_bit", scope: !4581, file: !4581, line: 204, type: !5770, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5784 = !DILocation(line: 204, column: 52, scope: !5783, inlinedAt: !5785)
!5785 = distinct !DILocation(line: 135, column: 9, scope: !5768)
!5786 = !DILocalVariable(name: "addr", arg: 2, scope: !5783, file: !4581, line: 204, type: !5772)
!5787 = !DILocation(line: 204, column: 86, scope: !5783, inlinedAt: !5785)
!5788 = !DILocalVariable(name: "v", arg: 1, scope: !5789, file: !4588, line: 69, type: !4591)
!5789 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4588, file: !4588, line: 69, type: !4589, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5790 = !DILocation(line: 69, column: 73, scope: !5789, inlinedAt: !5791)
!5791 = distinct !DILocation(line: 134, column: 2, scope: !5768)
!5792 = !DILocalVariable(name: "size", arg: 2, scope: !5789, file: !4588, line: 69, type: !236)
!5793 = !DILocation(line: 69, column: 83, scope: !5789, inlinedAt: !5791)
!5794 = !DILocalVariable(name: "nr", arg: 1, scope: !5768, file: !5769, line: 132, type: !224)
!5795 = !DILocation(line: 132, column: 34, scope: !5768)
!5796 = !DILocalVariable(name: "addr", arg: 2, scope: !5768, file: !5769, line: 132, type: !5772)
!5797 = !DILocation(line: 132, column: 68, scope: !5768)
!5798 = !DILocation(line: 134, column: 25, scope: !5768)
!5799 = !DILocation(line: 134, column: 32, scope: !5768)
!5800 = !DILocation(line: 134, column: 30, scope: !5768)
!5801 = !DILocation(line: 71, column: 19, scope: !5789, inlinedAt: !5791)
!5802 = !DILocation(line: 71, column: 22, scope: !5789, inlinedAt: !5791)
!5803 = !DILocation(line: 71, column: 2, scope: !5789, inlinedAt: !5791)
!5804 = !DILocation(line: 72, column: 2, scope: !5789, inlinedAt: !5791)
!5805 = !DILocation(line: 135, column: 9, scope: !5768)
!5806 = !DILocation(line: 206, column: 19, scope: !5783, inlinedAt: !5785)
!5807 = !DILocation(line: 206, column: 22, scope: !5783, inlinedAt: !5785)
!5808 = !DILocation(line: 206, column: 15, scope: !5783, inlinedAt: !5785)
!5809 = !DILocation(line: 207, column: 4, scope: !5783, inlinedAt: !5785)
!5810 = !DILocation(line: 207, column: 9, scope: !5783, inlinedAt: !5785)
!5811 = !DILocation(line: 207, column: 12, scope: !5783, inlinedAt: !5785)
!5812 = !DILocation(line: 206, column: 44, scope: !5783, inlinedAt: !5785)
!5813 = !DILocation(line: 207, column: 37, scope: !5783, inlinedAt: !5785)
!5814 = !DILocation(line: 217, column: 33, scope: !5775, inlinedAt: !5777)
!5815 = !DILocation(line: 217, column: 46, scope: !5775, inlinedAt: !5777)
!5816 = !DILocation(line: 214, column: 2, scope: !5775, inlinedAt: !5777)
!5817 = !{i32 -2146947557, i32 -2146947497}
!5818 = !DILocation(line: 219, column: 9, scope: !5775, inlinedAt: !5777)
!5819 = !DILocation(line: 135, column: 2, scope: !5768)
!5820 = distinct !DISubprogram(name: "kasan_check_read", scope: !5528, file: !5528, line: 34, type: !5529, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5821 = !DILocalVariable(name: "p", arg: 1, scope: !5820, file: !5528, line: 34, type: !4591)
!5822 = !DILocation(line: 34, column: 58, scope: !5820)
!5823 = !DILocalVariable(name: "size", arg: 2, scope: !5820, file: !5528, line: 34, type: !7)
!5824 = !DILocation(line: 34, column: 74, scope: !5820)
!5825 = !DILocation(line: 36, column: 2, scope: !5820)
!5826 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1086, file: !1086, line: 1828, type: !5827, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!108, !1084, !108}
!5829 = !DILocalVariable(name: "tsk", arg: 1, scope: !5826, file: !1086, line: 1828, type: !1084)
!5830 = !DILocation(line: 1828, column: 60, scope: !5826)
!5831 = !DILocalVariable(name: "flag", arg: 2, scope: !5826, file: !1086, line: 1828, type: !108)
!5832 = !DILocation(line: 1828, column: 69, scope: !5826)
!5833 = !DILocation(line: 1830, column: 46, scope: !5826)
!5834 = !DILocation(line: 1830, column: 29, scope: !5826)
!5835 = !DILocation(line: 1830, column: 52, scope: !5826)
!5836 = !DILocation(line: 1830, column: 9, scope: !5826)
!5837 = !DILocation(line: 1830, column: 2, scope: !5826)
!5838 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5839, file: !5839, line: 82, type: !5840, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5839 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!108, !5842, !108}
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!5843 = !DILocalVariable(name: "ti", arg: 1, scope: !5838, file: !5839, line: 82, type: !5842)
!5844 = !DILocation(line: 82, column: 59, scope: !5838)
!5845 = !DILocalVariable(name: "flag", arg: 2, scope: !5838, file: !5839, line: 82, type: !108)
!5846 = !DILocation(line: 82, column: 67, scope: !5838)
!5847 = !DILocation(line: 84, column: 18, scope: !5838)
!5848 = !DILocation(line: 84, column: 42, scope: !5838)
!5849 = !DILocation(line: 84, column: 46, scope: !5838)
!5850 = !DILocation(line: 84, column: 9, scope: !5838)
!5851 = !DILocation(line: 84, column: 2, scope: !5838)
!5852 = distinct !DISubprogram(name: "task_thread_info", scope: !1086, file: !1086, line: 1729, type: !5853, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!5842, !1084}
!5855 = !DILocalVariable(name: "task", arg: 1, scope: !5852, file: !1086, line: 1729, type: !1084)
!5856 = !DILocation(line: 1729, column: 72, scope: !5852)
!5857 = !DILocation(line: 1731, column: 10, scope: !5852)
!5858 = !DILocation(line: 1731, column: 16, scope: !5852)
!5859 = !DILocation(line: 1731, column: 2, scope: !5852)
!5860 = distinct !DISubprogram(name: "tty_get_baud_rate", scope: !105, file: !105, line: 538, type: !5861, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!3529, !103}
!5863 = !DILocalVariable(name: "tty", arg: 1, scope: !5860, file: !105, line: 538, type: !103)
!5864 = !DILocation(line: 538, column: 60, scope: !5860)
!5865 = !DILocation(line: 540, column: 32, scope: !5860)
!5866 = !DILocation(line: 540, column: 37, scope: !5860)
!5867 = !DILocation(line: 540, column: 9, scope: !5860)
!5868 = !DILocation(line: 540, column: 2, scope: !5860)
!5869 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4422, file: !4422, line: 661, type: !1740, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!5870 = !DILocalVariable(name: "__edi", scope: !5871, file: !4422, line: 663, type: !99)
!5871 = distinct !DILexicalBlock(scope: !5869, file: !4422, line: 663, column: 2)
!5872 = !DILocation(line: 663, column: 2, scope: !5871)
!5873 = !DILocalVariable(name: "__esi", scope: !5871, file: !4422, line: 663, type: !99)
!5874 = !DILocalVariable(name: "__edx", scope: !5871, file: !4422, line: 663, type: !99)
!5875 = !DILocalVariable(name: "__ecx", scope: !5871, file: !4422, line: 663, type: !99)
!5876 = !DILocalVariable(name: "__eax", scope: !5871, file: !4422, line: 663, type: !99)
!5877 = !{i32 -2145575781, i32 -2145575051, i32 -2145574817, i32 -2145574766, i32 -2145574738, i32 -2145574713, i32 -2145575029, i32 -2145575016, i32 -2145574578, i32 -2145574459, i32 -2145574924, i32 -2145574897, i32 -2145574869, i32 -2145574839}
!5878 = !DILocation(line: 664, column: 1, scope: !5869)
