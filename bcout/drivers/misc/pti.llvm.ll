; ModuleID = '../bcout/drivers/misc/pti.llvm.bc'
source_filename = "drivers/misc/pti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_pti_init6:\09\09\09"
module asm ".long\09pti_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pti_dev = type { [2 x %struct.tty_port], i64, i64, i8*, [16 x i8], [16 x i8], [16 x i8] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_buffer = type { %union.anon.0, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.0 = type { %struct.tty_buffer* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
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
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.kmem_cache = type opaque
%struct.pti_masterchannel = type { i8, i8 }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.console = type { [16 x i8], void (%struct.console*, i8*, i32)*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* }
%struct.pti_tty = type { %struct.pti_masterchannel* }

@alloclock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @alloclock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @alloclock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@drv_data = internal global %struct.pti_dev* null, align 8, !dbg !4153
@pti_tty_driver = internal global %struct.tty_driver* null, align 8, !dbg !4151
@pti_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pti_pci_probe, void (%struct.pci_dev*)* @pti_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4169
@__UNIQUE_ID___addressable_pti_init237 = internal global i8* bitcast (i32 ()* @pti_init to i8*), section ".discard.addressable", align 8, !dbg !4126
@__exitcall_pti_exit = internal global void ()* @pti_exit, section ".exitcall.exit", align 8, !dbg !4128
@__UNIQUE_ID_file238 = internal constant [26 x i8] c"pti.file=drivers/misc/pti\00", section ".modinfo", align 1, !dbg !4133
@__UNIQUE_ID_license239 = internal constant [16 x i8] c"pti.license=GPL\00", section ".modinfo", align 1, !dbg !4138
@__UNIQUE_ID_author240 = internal constant [36 x i8] c"pti.author=Ken Mills, Jay Freyensee\00", section ".modinfo", align 1, !dbg !4141
@__UNIQUE_ID_description241 = internal constant [27 x i8] c"pti.description=PTI Driver\00", section ".modinfo", align 1, !dbg !4146
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__const.pti_control_frame_built_and_sent.mccontrol = private unnamed_addr constant %struct.pti_masterchannel { i8 72, i8 0 }, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%3d %3d %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@pti_control_channel = internal global i32 0, align 4, !dbg !4167
@__preempt_count = external dso_local global i32, section ".data", align 4
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"pciPTI\00", align 1
@pci_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2091, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4447
@pti_char_driver = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct.file_operations* @pti_char_driver_ops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !4450
@.str.4 = private unnamed_addr constant [50 x i8] c"\013%s(%d): CHAR registration failed of pti driver\0A\00", align 1
@__func__.pti_pci_probe = private unnamed_addr constant [14 x i8] c"pti_pci_probe\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013%s(%d): Error value returned: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: pci_enable_device() returned error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s(%d): kmalloc() returned NULL memory.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%s(%d): pci_request_region() returned error %d\0A\00", align 1
@tty_port_ops = internal constant %struct.tty_port_operations { i32 (%struct.tty_port*)* null, void (%struct.tty_port*, i32)* null, void (%struct.tty_port*)* @pti_port_shutdown, i32 (%struct.tty_port*, %struct.tty_struct*)* @pti_port_activate, void (%struct.tty_port*)* null }, align 8, !dbg !4466
@pti_console = internal global %struct.console { [16 x i8] c"ttyPTI\00\00\00\00\00\00\00\00\00\00", void (%struct.console*, i8*, i32)* @pti_console_write, i32 (%struct.console*, i8*, i32)* null, %struct.tty_driver* (%struct.console*, i32*)* @pti_console_device, void ()* null, i32 (%struct.console*, i8*)* @pti_console_setup, i32 (%struct.console*)* null, i32 (%struct.console*, i8*, i32, i8*)* null, i16 1, i16 0, i32 0, i8* null, %struct.console* null }, align 8, !dbg !4468
@.str.9 = private unnamed_addr constant [4 x i8] c"pti\00", align 1
@pti_char_driver_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @pti_char_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @pti_char_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @pti_char_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4464
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%s(%d): buf allocation failed\0A\00", align 1
@__func__.pti_char_write = private unnamed_addr constant [15 x i8] c"pti_char_write\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@pti_console_write.mc = internal global %struct.pti_masterchannel { i8 73, i8 0 }, align 1, !dbg !4505
@pti_console_channel = internal global i32 0, align 4, !dbg !4513
@.str.13 = private unnamed_addr constant [54 x i8] c"\013%s(%d): Memory allocation failed for ptiTTY driver\0A\00", align 1
@__func__.pti_init = private unnamed_addr constant [9 x i8] c"pti_init\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ttyPTI\00", align 1
@tty_std_termios = external dso_local global %struct.ktermios, align 4
@pti_tty_driver_ops = internal constant %struct.tty_operations { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* null, i32 (%struct.tty_driver*, %struct.tty_struct*)* @pti_tty_install, void (%struct.tty_driver*, %struct.tty_struct*)* null, i32 (%struct.tty_struct*, %struct.file*)* @pti_tty_driver_open, void (%struct.tty_struct*, %struct.file*)* @pti_tty_driver_close, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* @pti_tty_cleanup, i32 (%struct.tty_struct*, i8*, i32)* @pti_tty_driver_write, i32 (%struct.tty_struct*, i8)* null, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*)* @pti_tty_write_room, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i64)* null, i64 (%struct.tty_struct*, i32, i64)* null, void (%struct.tty_struct*, %struct.ktermios*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*, i8)* null, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i32)* null, i32 (%struct.tty_struct*, %struct.winsize*)* null, i32 (%struct.tty_struct*, %struct.termiox*)* null, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, void (%struct.tty_struct*, %struct.seq_file*)* null, i32 (%struct.seq_file*, i8*)* null }, align 8, !dbg !4515
@.str.15 = private unnamed_addr constant [49 x i8] c"\013%s(%d): TTY registration failed of pti driver\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\013%s(%d): PCI registration failed of pti driver\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @pti_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_pti_init237 to i8*), i8* bitcast (void ()** @__exitcall_pti_exit to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_file238, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__UNIQUE_ID_license239, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_author240, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_description241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pti_masterchannel* @pti_request_masterchannel(i8 zeroext %type, i8* %thread_name) #0 !dbg !4522 {
entry:
  %type.addr = alloca i8, align 1
  %thread_name.addr = alloca i8*, align 8
  %mc = alloca %struct.pti_masterchannel*, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i8* %thread_name, i8** %thread_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %thread_name.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @mutex_lock(%struct.mutex* @alloclock) #9, !dbg !4532
  %0 = load i8, i8* %type.addr, align 1, !dbg !4533
  %conv = zext i8 %0 to i32, !dbg !4533
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !4534

sw.bb:                                            ; preds = %entry
  %1 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4535
  %ia_app = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %1, i32 0, i32 4, !dbg !4537
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ia_app, i64 0, i64 0, !dbg !4535
  %2 = load i8*, i8** %thread_name.addr, align 8, !dbg !4538
  %call = call %struct.pti_masterchannel* @get_id(i8* %arraydecay, i32 16, i32 80, i8* %2) #9, !dbg !4539
  store %struct.pti_masterchannel* %call, %struct.pti_masterchannel** %mc, align 8, !dbg !4540
  br label %sw.epilog, !dbg !4541

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4542
  %ia_os = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %3, i32 0, i32 5, !dbg !4543
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %ia_os, i64 0, i64 0, !dbg !4542
  %4 = load i8*, i8** %thread_name.addr, align 8, !dbg !4544
  %call3 = call %struct.pti_masterchannel* @get_id(i8* %arraydecay2, i32 16, i32 74, i8* %4) #9, !dbg !4545
  store %struct.pti_masterchannel* %call3, %struct.pti_masterchannel** %mc, align 8, !dbg !4546
  br label %sw.epilog, !dbg !4547

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4548
  %ia_modem = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %5, i32 0, i32 6, !dbg !4549
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %ia_modem, i64 0, i64 0, !dbg !4548
  %6 = load i8*, i8** %thread_name.addr, align 8, !dbg !4550
  %call6 = call %struct.pti_masterchannel* @get_id(i8* %arraydecay5, i32 16, i32 71, i8* %6) #9, !dbg !4551
  store %struct.pti_masterchannel* %call6, %struct.pti_masterchannel** %mc, align 8, !dbg !4552
  br label %sw.epilog, !dbg !4553

sw.default:                                       ; preds = %entry
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %mc, align 8, !dbg !4554
  br label %sw.epilog, !dbg !4555

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb1, %sw.bb
  call void @mutex_unlock(%struct.mutex* @alloclock) #9, !dbg !4556
  %7 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4557
  ret %struct.pti_masterchannel* %7, !dbg !4558
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pti_masterchannel* @get_id(i8* %id_array, i32 %max_ids, i32 %base_id, i8* %thread_name) #0 !dbg !4559 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !4566
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !4584
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !4590
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !4596
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !4616
  %retval = alloca %struct.pti_masterchannel*, align 8
  %id_array.addr = alloca i8*, align 8
  %max_ids.addr = alloca i32, align 4
  %base_id.addr = alloca i32, align 4
  %thread_name.addr = alloca i8*, align 8
  %mc = alloca %struct.pti_masterchannel*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mask = alloca i32, align 4
  store i8* %id_array, i8** %id_array.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id_array.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %max_ids, i32* %max_ids.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_ids.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  store i32 %base_id, i32* %base_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base_id.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  store i8* %thread_name, i8** %thread_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %thread_name.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4627, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4629, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4631, metadata !DIExpression()), !dbg !4632
  store i64 2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4633
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #10, !dbg !4634
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4635

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4636
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4637
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4638

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4639
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4640
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4641
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !4642
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4610
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4643
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4644
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4645
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4646
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4647
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4648
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !4649
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4649
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4649
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4649
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4649
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4650
  br label %kmalloc.exit, !dbg !4650

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4651
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4652
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4654

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4658
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4659

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4660
  br label %kmalloc_index.exit.i, !dbg !4660

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4663
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4664

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4665
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4666
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4667

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4668
  br label %kmalloc_index.exit.i, !dbg !4668

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4669
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4671
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4672

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4674
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4675

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4679
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4680

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4684
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4685

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4689
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4690

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4694
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4695

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4699
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4700

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4704
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4705

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4709
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4710

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4714
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4715

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4716
  br label %kmalloc_index.exit.i, !dbg !4716

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4717
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4719
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4720

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4722
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4724
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4725

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4726
  br label %kmalloc_index.exit.i, !dbg !4726

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4727
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4729
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4730

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4734
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4735

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4739
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4740

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4744
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4745

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4746
  br label %kmalloc_index.exit.i, !dbg !4746

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4747
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4749
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4750

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4754
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4755

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4759
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4760

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4764
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4765

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4769
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4770

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4774
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4775

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4779
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4780

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4781
  br label %kmalloc_index.exit.i, !dbg !4781

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4782
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4784
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4785

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4789
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4790

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4791
  br label %kmalloc_index.exit.i, !dbg !4791

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4792
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4794
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4795

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4797, !srcloc !4800
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #10, !dbg !4801, !srcloc !4804
  unreachable, !dbg !4805

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4806
  store i32 %43, i32* %index.i, align 4, !dbg !4807
  %44 = load i32, i32* %index.i, align 4, !dbg !4808
  %tobool.i = icmp ne i32 %44, 0, !dbg !4808
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4810

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4811
  br label %kmalloc.exit, !dbg !4811

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4812
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4813
  %and.i.i = and i32 %46, 17, !dbg !4813
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4813
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4813
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4813
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4813
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4815

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4816
  br label %kmalloc_type.exit.i, !dbg !4816

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4817
  %and2.i.i = and i32 %47, 1, !dbg !4818
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4817
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4817
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4817
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4819
  br label %kmalloc_type.exit.i, !dbg !4819

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4820
  %idxprom.i = zext i32 %49 to i64, !dbg !4821
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4821
  %50 = load i32, i32* %index.i, align 4, !dbg !4822
  %idxprom6.i = zext i32 %50 to i64, !dbg !4821
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4821
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4821
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4823
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4824
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4825
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4826
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4827
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4827
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4827
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4827
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4827
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4579
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4828
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4829
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4830
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4831
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4832
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4833
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4834
  store i8* %60, i8** %retval.i, align 8, !dbg !4835
  br label %kmalloc.exit, !dbg !4835

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4836
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4837
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4838
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4838
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4838
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4838
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4838
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4839
  br label %kmalloc.exit, !dbg !4839

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4840
  %64 = bitcast i8* %63 to %struct.pti_masterchannel*, !dbg !4841
  store %struct.pti_masterchannel* %64, %struct.pti_masterchannel** %mc, align 8, !dbg !4842
  %65 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4843
  %cmp = icmp eq %struct.pti_masterchannel* %65, null, !dbg !4845
  br i1 %cmp, label %if.then, label %if.end, !dbg !4846

if.then:                                          ; preds = %kmalloc.exit
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %retval, align 8, !dbg !4847
  br label %return, !dbg !4847

if.end:                                           ; preds = %kmalloc.exit
  store i32 0, i32* %i, align 4, !dbg !4848
  br label %for.cond, !dbg !4850

for.cond:                                         ; preds = %for.inc, %if.end
  %66 = load i32, i32* %i, align 4, !dbg !4851
  %67 = load i32, i32* %max_ids.addr, align 4, !dbg !4853
  %cmp1 = icmp slt i32 %66, %67, !dbg !4854
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4855

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %id_array.addr, align 8, !dbg !4856
  %69 = load i32, i32* %i, align 4, !dbg !4858
  %idxprom = sext i32 %69 to i64, !dbg !4856
  %arrayidx = getelementptr i8, i8* %68, i64 %idxprom, !dbg !4856
  %70 = load i8, i8* %arrayidx, align 1, !dbg !4856
  %conv = zext i8 %70 to i32, !dbg !4856
  %cmp2 = icmp ne i32 %conv, 255, !dbg !4859
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !4860

if.then4:                                         ; preds = %for.body
  br label %for.end, !dbg !4861

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4862

for.inc:                                          ; preds = %if.end5
  %71 = load i32, i32* %i, align 4, !dbg !4863
  %inc = add i32 %71, 1, !dbg !4863
  store i32 %inc, i32* %i, align 4, !dbg !4863
  br label %for.cond, !dbg !4864, !llvm.loop !4865

for.end:                                          ; preds = %if.then4, %for.cond
  %72 = load i32, i32* %i, align 4, !dbg !4867
  %73 = load i32, i32* %max_ids.addr, align 4, !dbg !4869
  %cmp6 = icmp eq i32 %72, %73, !dbg !4870
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4871

if.then8:                                         ; preds = %for.end
  %74 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4872
  %75 = bitcast %struct.pti_masterchannel* %74 to i8*, !dbg !4872
  call void @kfree(i8* %75) #9, !dbg !4874
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %retval, align 8, !dbg !4875
  br label %return, !dbg !4875

if.end9:                                          ; preds = %for.end
  store i32 128, i32* %mask, align 4, !dbg !4876
  store i32 0, i32* %j, align 4, !dbg !4877
  br label %for.cond10, !dbg !4879

for.cond10:                                       ; preds = %for.inc21, %if.end9
  %76 = load i32, i32* %j, align 4, !dbg !4880
  %cmp11 = icmp slt i32 %76, 8, !dbg !4882
  br i1 %cmp11, label %for.body13, label %for.end23, !dbg !4883

for.body13:                                       ; preds = %for.cond10
  %77 = load i8*, i8** %id_array.addr, align 8, !dbg !4884
  %78 = load i32, i32* %i, align 4, !dbg !4887
  %idxprom14 = sext i32 %78 to i64, !dbg !4884
  %arrayidx15 = getelementptr i8, i8* %77, i64 %idxprom14, !dbg !4884
  %79 = load i8, i8* %arrayidx15, align 1, !dbg !4884
  %conv16 = zext i8 %79 to i32, !dbg !4884
  %80 = load i32, i32* %mask, align 4, !dbg !4888
  %and = and i32 %conv16, %80, !dbg !4889
  %cmp17 = icmp eq i32 %and, 0, !dbg !4890
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4891

if.then19:                                        ; preds = %for.body13
  br label %for.end23, !dbg !4892

if.end20:                                         ; preds = %for.body13
  %81 = load i32, i32* %mask, align 4, !dbg !4893
  %shr = ashr i32 %81, 1, !dbg !4893
  store i32 %shr, i32* %mask, align 4, !dbg !4893
  br label %for.inc21, !dbg !4894

for.inc21:                                        ; preds = %if.end20
  %82 = load i32, i32* %j, align 4, !dbg !4895
  %inc22 = add i32 %82, 1, !dbg !4895
  store i32 %inc22, i32* %j, align 4, !dbg !4895
  br label %for.cond10, !dbg !4896, !llvm.loop !4897

for.end23:                                        ; preds = %if.then19, %for.cond10
  %83 = load i32, i32* %mask, align 4, !dbg !4899
  %84 = load i8*, i8** %id_array.addr, align 8, !dbg !4900
  %85 = load i32, i32* %i, align 4, !dbg !4901
  %idxprom24 = sext i32 %85 to i64, !dbg !4900
  %arrayidx25 = getelementptr i8, i8* %84, i64 %idxprom24, !dbg !4900
  %86 = load i8, i8* %arrayidx25, align 1, !dbg !4902
  %conv26 = zext i8 %86 to i32, !dbg !4902
  %or = or i32 %conv26, %83, !dbg !4902
  %conv27 = trunc i32 %or to i8, !dbg !4902
  store i8 %conv27, i8* %arrayidx25, align 1, !dbg !4902
  %87 = load i32, i32* %base_id.addr, align 4, !dbg !4903
  %conv28 = trunc i32 %87 to i8, !dbg !4903
  %88 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4904
  %master = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %88, i32 0, i32 0, !dbg !4905
  store i8 %conv28, i8* %master, align 1, !dbg !4906
  %89 = load i32, i32* %i, align 4, !dbg !4907
  %and29 = and i32 %89, 15, !dbg !4908
  %shl = shl i32 %and29, 3, !dbg !4909
  %90 = load i32, i32* %j, align 4, !dbg !4910
  %add = add i32 %shl, %90, !dbg !4911
  %conv30 = trunc i32 %add to i8, !dbg !4912
  %91 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4913
  %channel = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %91, i32 0, i32 1, !dbg !4914
  store i8 %conv30, i8* %channel, align 1, !dbg !4915
  %92 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4916
  %93 = load i8*, i8** %thread_name.addr, align 8, !dbg !4917
  call void @pti_control_frame_built_and_sent(%struct.pti_masterchannel* %92, i8* %93) #9, !dbg !4918
  %94 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !4919
  store %struct.pti_masterchannel* %94, %struct.pti_masterchannel** %retval, align 8, !dbg !4920
  br label %return, !dbg !4920

return:                                           ; preds = %for.end23, %if.then8, %if.then
  %95 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %retval, align 8, !dbg !4921
  ret %struct.pti_masterchannel* %95, !dbg !4921
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pti_release_masterchannel(%struct.pti_masterchannel* %mc) #0 !dbg !4922 {
entry:
  %mc.addr = alloca %struct.pti_masterchannel*, align 8
  %master = alloca i8, align 1
  %channel = alloca i8, align 1
  %i = alloca i8, align 1
  store %struct.pti_masterchannel* %mc, %struct.pti_masterchannel** %mc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc.addr, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.declare(metadata i8* %master, metadata !4927, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.declare(metadata i8* %channel, metadata !4929, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.declare(metadata i8* %i, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @mutex_lock(%struct.mutex* @alloclock) #9, !dbg !4933
  %0 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !4934
  %tobool = icmp ne %struct.pti_masterchannel* %0, null, !dbg !4934
  br i1 %tobool, label %if.then, label %if.end42, !dbg !4936

if.then:                                          ; preds = %entry
  %1 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !4937
  %master1 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %1, i32 0, i32 0, !dbg !4939
  %2 = load i8, i8* %master1, align 1, !dbg !4939
  store i8 %2, i8* %master, align 1, !dbg !4940
  %3 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !4941
  %channel2 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %3, i32 0, i32 1, !dbg !4942
  %4 = load i8, i8* %channel2, align 1, !dbg !4942
  store i8 %4, i8* %channel, align 1, !dbg !4943
  %5 = load i8, i8* %master, align 1, !dbg !4944
  %conv = zext i8 %5 to i32, !dbg !4944
  %cmp = icmp eq i32 %conv, 80, !dbg !4946
  br i1 %cmp, label %if.then4, label %if.else, !dbg !4947

if.then4:                                         ; preds = %if.then
  %6 = load i8, i8* %channel, align 1, !dbg !4948
  %conv5 = zext i8 %6 to i32, !dbg !4948
  %shr = ashr i32 %conv5, 3, !dbg !4950
  %conv6 = trunc i32 %shr to i8, !dbg !4948
  store i8 %conv6, i8* %i, align 1, !dbg !4951
  %7 = load i8, i8* %channel, align 1, !dbg !4952
  %conv7 = zext i8 %7 to i32, !dbg !4952
  %and = and i32 %conv7, 7, !dbg !4953
  %shr8 = ashr i32 128, %and, !dbg !4954
  %neg = xor i32 %shr8, -1, !dbg !4955
  %8 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4956
  %ia_app = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %8, i32 0, i32 4, !dbg !4957
  %9 = load i8, i8* %i, align 1, !dbg !4958
  %idxprom = zext i8 %9 to i64, !dbg !4956
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %ia_app, i64 0, i64 %idxprom, !dbg !4956
  %10 = load i8, i8* %arrayidx, align 1, !dbg !4959
  %conv9 = zext i8 %10 to i32, !dbg !4959
  %and10 = and i32 %conv9, %neg, !dbg !4959
  %conv11 = trunc i32 %and10 to i8, !dbg !4959
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !4959
  br label %if.end41, !dbg !4960

if.else:                                          ; preds = %if.then
  %11 = load i8, i8* %master, align 1, !dbg !4961
  %conv12 = zext i8 %11 to i32, !dbg !4961
  %cmp13 = icmp eq i32 %conv12, 74, !dbg !4963
  br i1 %cmp13, label %if.then15, label %if.else28, !dbg !4964

if.then15:                                        ; preds = %if.else
  %12 = load i8, i8* %channel, align 1, !dbg !4965
  %conv16 = zext i8 %12 to i32, !dbg !4965
  %shr17 = ashr i32 %conv16, 3, !dbg !4967
  %conv18 = trunc i32 %shr17 to i8, !dbg !4965
  store i8 %conv18, i8* %i, align 1, !dbg !4968
  %13 = load i8, i8* %channel, align 1, !dbg !4969
  %conv19 = zext i8 %13 to i32, !dbg !4969
  %and20 = and i32 %conv19, 7, !dbg !4970
  %shr21 = ashr i32 128, %and20, !dbg !4971
  %neg22 = xor i32 %shr21, -1, !dbg !4972
  %14 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4973
  %ia_os = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %14, i32 0, i32 5, !dbg !4974
  %15 = load i8, i8* %i, align 1, !dbg !4975
  %idxprom23 = zext i8 %15 to i64, !dbg !4973
  %arrayidx24 = getelementptr [16 x i8], [16 x i8]* %ia_os, i64 0, i64 %idxprom23, !dbg !4973
  %16 = load i8, i8* %arrayidx24, align 1, !dbg !4976
  %conv25 = zext i8 %16 to i32, !dbg !4976
  %and26 = and i32 %conv25, %neg22, !dbg !4976
  %conv27 = trunc i32 %and26 to i8, !dbg !4976
  store i8 %conv27, i8* %arrayidx24, align 1, !dbg !4976
  br label %if.end, !dbg !4977

if.else28:                                        ; preds = %if.else
  %17 = load i8, i8* %channel, align 1, !dbg !4978
  %conv29 = zext i8 %17 to i32, !dbg !4978
  %shr30 = ashr i32 %conv29, 3, !dbg !4980
  %conv31 = trunc i32 %shr30 to i8, !dbg !4978
  store i8 %conv31, i8* %i, align 1, !dbg !4981
  %18 = load i8, i8* %channel, align 1, !dbg !4982
  %conv32 = zext i8 %18 to i32, !dbg !4982
  %and33 = and i32 %conv32, 7, !dbg !4983
  %shr34 = ashr i32 128, %and33, !dbg !4984
  %neg35 = xor i32 %shr34, -1, !dbg !4985
  %19 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !4986
  %ia_modem = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %19, i32 0, i32 6, !dbg !4987
  %20 = load i8, i8* %i, align 1, !dbg !4988
  %idxprom36 = zext i8 %20 to i64, !dbg !4986
  %arrayidx37 = getelementptr [16 x i8], [16 x i8]* %ia_modem, i64 0, i64 %idxprom36, !dbg !4986
  %21 = load i8, i8* %arrayidx37, align 1, !dbg !4989
  %conv38 = zext i8 %21 to i32, !dbg !4989
  %and39 = and i32 %conv38, %neg35, !dbg !4989
  %conv40 = trunc i32 %and39 to i8, !dbg !4989
  store i8 %conv40, i8* %arrayidx37, align 1, !dbg !4989
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then15
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then4
  %22 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !4990
  %23 = bitcast %struct.pti_masterchannel* %22 to i8*, !dbg !4990
  call void @kfree(i8* %23) #9, !dbg !4991
  br label %if.end42, !dbg !4992

if.end42:                                         ; preds = %if.end41, %entry
  call void @mutex_unlock(%struct.mutex* @alloclock) #9, !dbg !4993
  ret void, !dbg !4994
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pti_writedata(%struct.pti_masterchannel* %mc, i8* %buf, i32 %count) #0 !dbg !4995 {
entry:
  %mc.addr = alloca %struct.pti_masterchannel*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.pti_masterchannel* %mc, %struct.pti_masterchannel** %mc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5004
  %cmp = icmp ne %struct.pti_masterchannel* %0, null, !dbg !5006
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5007

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5008
  %cmp1 = icmp ne i8* %1, null, !dbg !5009
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !5010

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %count.addr, align 4, !dbg !5011
  %cmp3 = icmp sgt i32 %2, 0, !dbg !5012
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %land.lhs.true2
  %3 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5014
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5015
  %5 = load i32, i32* %count.addr, align 4, !dbg !5016
  call void @pti_write_to_aperture(%struct.pti_masterchannel* %3, i8* %4, i32 %5) #9, !dbg !5017
  br label %if.end, !dbg !5017

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_write_to_aperture(%struct.pti_masterchannel* %mc, i8* %buf, i32 %len) #0 !dbg !5019 {
entry:
  %mc.addr = alloca %struct.pti_masterchannel*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dwordcnt = alloca i32, align 4
  %final = alloca i32, align 4
  %i = alloca i32, align 4
  %ptiword = alloca i32, align 4
  %aperture = alloca i32*, align 8
  %p = alloca i8*, align 8
  store %struct.pti_masterchannel* %mc, %struct.pti_masterchannel** %mc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i32* %dwordcnt, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i32* %final, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %ptiword, metadata !5032, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.declare(metadata i32** %aperture, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata i8** %p, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5038
  store i8* %0, i8** %p, align 8, !dbg !5037
  %1 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5039
  %pti_ioaddr = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %1, i32 0, i32 3, !dbg !5040
  %2 = load i8*, i8** %pti_ioaddr, align 8, !dbg !5040
  %3 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5041
  %master = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %3, i32 0, i32 0, !dbg !5042
  %4 = load i8, i8* %master, align 1, !dbg !5042
  %conv = zext i8 %4 to i32, !dbg !5041
  %shl = shl i32 %conv, 15, !dbg !5043
  %idx.ext = sext i32 %shl to i64, !dbg !5044
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !5044
  %5 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5045
  %channel = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %5, i32 0, i32 1, !dbg !5046
  %6 = load i8, i8* %channel, align 1, !dbg !5046
  %conv1 = zext i8 %6 to i32, !dbg !5045
  %shl2 = shl i32 %conv1, 8, !dbg !5047
  %idx.ext3 = sext i32 %shl2 to i64, !dbg !5048
  %add.ptr4 = getelementptr i8, i8* %add.ptr, i64 %idx.ext3, !dbg !5048
  %7 = bitcast i8* %add.ptr4 to i32*, !dbg !5039
  store i32* %7, i32** %aperture, align 8, !dbg !5049
  %8 = load i32, i32* %len.addr, align 4, !dbg !5050
  %shr = ashr i32 %8, 2, !dbg !5051
  store i32 %shr, i32* %dwordcnt, align 4, !dbg !5052
  %9 = load i32, i32* %len.addr, align 4, !dbg !5053
  %10 = load i32, i32* %dwordcnt, align 4, !dbg !5054
  %shl5 = shl i32 %10, 2, !dbg !5055
  %sub = sub i32 %9, %shl5, !dbg !5056
  store i32 %sub, i32* %final, align 4, !dbg !5057
  %11 = load i32, i32* %final, align 4, !dbg !5058
  %cmp = icmp eq i32 %11, 0, !dbg !5060
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5061

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %dwordcnt, align 4, !dbg !5062
  %cmp7 = icmp ne i32 %12, 0, !dbg !5063
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5064

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %final, align 4, !dbg !5065
  %add = add i32 %13, 4, !dbg !5065
  store i32 %add, i32* %final, align 4, !dbg !5065
  %14 = load i32, i32* %dwordcnt, align 4, !dbg !5067
  %dec = add i32 %14, -1, !dbg !5067
  store i32 %dec, i32* %dwordcnt, align 4, !dbg !5067
  br label %if.end, !dbg !5068

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !5069
  br label %for.cond, !dbg !5071

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !dbg !5072
  %16 = load i32, i32* %dwordcnt, align 4, !dbg !5074
  %cmp9 = icmp slt i32 %15, %16, !dbg !5075
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5076

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8, !dbg !5077
  %18 = bitcast i8* %17 to i32*, !dbg !5077
  %19 = load i32, i32* %18, align 4, !dbg !5077
  %20 = call i1 @llvm.is.constant.i32(i32 %19), !dbg !5077
  br i1 %20, label %cond.true, label %cond.false, !dbg !5077

cond.true:                                        ; preds = %for.body
  %21 = load i8*, i8** %p, align 8, !dbg !5077
  %22 = bitcast i8* %21 to i32*, !dbg !5077
  %23 = load i32, i32* %22, align 4, !dbg !5077
  %and = and i32 %23, 255, !dbg !5077
  %shl11 = shl i32 %and, 24, !dbg !5077
  %24 = load i8*, i8** %p, align 8, !dbg !5077
  %25 = bitcast i8* %24 to i32*, !dbg !5077
  %26 = load i32, i32* %25, align 4, !dbg !5077
  %and12 = and i32 %26, 65280, !dbg !5077
  %shl13 = shl i32 %and12, 8, !dbg !5077
  %or = or i32 %shl11, %shl13, !dbg !5077
  %27 = load i8*, i8** %p, align 8, !dbg !5077
  %28 = bitcast i8* %27 to i32*, !dbg !5077
  %29 = load i32, i32* %28, align 4, !dbg !5077
  %and14 = and i32 %29, 16711680, !dbg !5077
  %shr15 = lshr i32 %and14, 8, !dbg !5077
  %or16 = or i32 %or, %shr15, !dbg !5077
  %30 = load i8*, i8** %p, align 8, !dbg !5077
  %31 = bitcast i8* %30 to i32*, !dbg !5077
  %32 = load i32, i32* %31, align 4, !dbg !5077
  %and17 = and i32 %32, -16777216, !dbg !5077
  %shr18 = lshr i32 %and17, 24, !dbg !5077
  %or19 = or i32 %or16, %shr18, !dbg !5077
  br label %cond.end, !dbg !5077

cond.false:                                       ; preds = %for.body
  %33 = load i8*, i8** %p, align 8, !dbg !5077
  %34 = bitcast i8* %33 to i32*, !dbg !5077
  %35 = load i32, i32* %34, align 4, !dbg !5077
  %call = call i32 @__fswab32(i32 %35) #11, !dbg !5077
  br label %cond.end, !dbg !5077

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or19, %cond.true ], [ %call, %cond.false ], !dbg !5077
  store i32 %cond, i32* %ptiword, align 4, !dbg !5079
  %36 = load i8*, i8** %p, align 8, !dbg !5080
  %add.ptr20 = getelementptr i8, i8* %36, i64 4, !dbg !5080
  store i8* %add.ptr20, i8** %p, align 8, !dbg !5080
  %37 = load i32, i32* %ptiword, align 4, !dbg !5081
  %38 = load i32*, i32** %aperture, align 8, !dbg !5082
  %39 = bitcast i32* %38 to i8*, !dbg !5082
  call void @iowrite32(i32 %37, i8* %39) #9, !dbg !5083
  br label %for.inc, !dbg !5084

for.inc:                                          ; preds = %cond.end
  %40 = load i32, i32* %i, align 4, !dbg !5085
  %inc = add i32 %40, 1, !dbg !5085
  store i32 %inc, i32* %i, align 4, !dbg !5085
  br label %for.cond, !dbg !5086, !llvm.loop !5087

for.end:                                          ; preds = %for.cond
  %41 = load i32*, i32** %aperture, align 8, !dbg !5089
  %add.ptr21 = getelementptr i32, i32* %41, i64 48, !dbg !5089
  store i32* %add.ptr21, i32** %aperture, align 8, !dbg !5089
  store i32 0, i32* %ptiword, align 4, !dbg !5090
  store i32 0, i32* %i, align 4, !dbg !5091
  br label %for.cond22, !dbg !5093

for.cond22:                                       ; preds = %for.inc30, %for.end
  %42 = load i32, i32* %i, align 4, !dbg !5094
  %43 = load i32, i32* %final, align 4, !dbg !5096
  %cmp23 = icmp slt i32 %42, %43, !dbg !5097
  br i1 %cmp23, label %for.body25, label %for.end32, !dbg !5098

for.body25:                                       ; preds = %for.cond22
  %44 = load i8*, i8** %p, align 8, !dbg !5099
  %incdec.ptr = getelementptr i8, i8* %44, i32 1, !dbg !5099
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !5099
  %45 = load i8, i8* %44, align 1, !dbg !5100
  %conv26 = zext i8 %45 to i32, !dbg !5100
  %46 = load i32, i32* %i, align 4, !dbg !5101
  %mul = mul i32 8, %46, !dbg !5102
  %sub27 = sub i32 24, %mul, !dbg !5103
  %shl28 = shl i32 %conv26, %sub27, !dbg !5104
  %47 = load i32, i32* %ptiword, align 4, !dbg !5105
  %or29 = or i32 %47, %shl28, !dbg !5105
  store i32 %or29, i32* %ptiword, align 4, !dbg !5105
  br label %for.inc30, !dbg !5106

for.inc30:                                        ; preds = %for.body25
  %48 = load i32, i32* %i, align 4, !dbg !5107
  %inc31 = add i32 %48, 1, !dbg !5107
  store i32 %inc31, i32* %i, align 4, !dbg !5107
  br label %for.cond22, !dbg !5108, !llvm.loop !5109

for.end32:                                        ; preds = %for.cond22
  %49 = load i32, i32* %ptiword, align 4, !dbg !5111
  %50 = load i32*, i32** %aperture, align 8, !dbg !5112
  %51 = bitcast i32* %50 to i8*, !dbg !5112
  call void @iowrite32(i32 %49, i8* %51) #9, !dbg !5113
  ret void, !dbg !5114
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @pti_exit() #3 section ".exit.text" !dbg !5115 {
entry:
  %0 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5116
  %call = call i32 @tty_unregister_driver(%struct.tty_driver* %0) #9, !dbg !5117
  call void @pci_unregister_driver(%struct.pci_driver* @pti_pci_driver) #9, !dbg !5118
  %1 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5119
  call void @put_tty_driver(%struct.tty_driver* %1) #9, !dbg !5120
  ret void, !dbg !5121
}

; Function Attrs: noredzone
declare dso_local i32 @tty_unregister_driver(%struct.tty_driver*) #2

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #2

; Function Attrs: noredzone
declare dso_local void @put_tty_driver(%struct.tty_driver*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_init() #3 section ".init.text" !dbg !5122 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5125, metadata !DIExpression()), !dbg !5126
  %call = call %struct.tty_driver* @alloc_tty_driver(i32 2) #9, !dbg !5127
  store %struct.tty_driver* %call, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5128
  %0 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5129
  %cmp = icmp eq %struct.tty_driver* %0, null, !dbg !5131
  br i1 %cmp, label %if.then, label %if.end, !dbg !5132

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.pti_init, i64 0, i64 0), i32 918) #13, !dbg !5133
  store i32 -12, i32* %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end:                                           ; preds = %entry
  %1 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5136
  %driver_name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i32 0, i32 4, !dbg !5137
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5138
  %2 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5139
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i32 0, i32 5, !dbg !5140
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %name, align 8, !dbg !5141
  %3 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5142
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %3, i32 0, i32 7, !dbg !5143
  store i32 0, i32* %major, align 4, !dbg !5144
  %4 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5145
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i32 0, i32 8, !dbg !5146
  store i32 0, i32* %minor_start, align 8, !dbg !5147
  %5 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5148
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %5, i32 0, i32 10, !dbg !5149
  store i16 1, i16* %type, align 8, !dbg !5150
  %6 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5151
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %6, i32 0, i32 11, !dbg !5152
  store i16 3, i16* %subtype, align 2, !dbg !5153
  %7 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5154
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i32 0, i32 13, !dbg !5155
  store i64 12, i64* %flags, align 8, !dbg !5156
  %8 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5157
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i32 0, i32 12, !dbg !5158
  %9 = bitcast %struct.ktermios* %init_termios to i8*, !dbg !5159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.ktermios* @tty_std_termios to i8*), i64 44, i1 false), !dbg !5159
  %10 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5160
  call void @tty_set_operations(%struct.tty_driver* %10, %struct.tty_operations* @pti_tty_driver_ops) #9, !dbg !5161
  %11 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5162
  %call3 = call i32 @tty_register_driver(%struct.tty_driver* %11) #9, !dbg !5163
  store i32 %call3, i32* %retval1, align 4, !dbg !5164
  %12 = load i32, i32* %retval1, align 4, !dbg !5165
  %tobool = icmp ne i32 %12, 0, !dbg !5165
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !5167

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.pti_init, i64 0, i64 0), i32 937) #13, !dbg !5168
  %13 = load i32, i32* %retval1, align 4, !dbg !5170
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.pti_init, i64 0, i64 0), i32 939, i32 %13) #13, !dbg !5170
  br label %put_tty, !dbg !5171

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @__pci_register_driver(%struct.pci_driver* @pti_pci_driver, %struct.module* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5172
  store i32 %call8, i32* %retval1, align 4, !dbg !5173
  %14 = load i32, i32* %retval1, align 4, !dbg !5174
  %tobool9 = icmp ne i32 %14, 0, !dbg !5174
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5176

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.pti_init, i64 0, i64 0), i32 947) #13, !dbg !5177
  %15 = load i32, i32* %retval1, align 4, !dbg !5179
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.pti_init, i64 0, i64 0), i32 949, i32 %15) #13, !dbg !5179
  br label %unreg_tty, !dbg !5180

if.end13:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5181
  br label %return, !dbg !5181

unreg_tty:                                        ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5182), !dbg !5183
  %16 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5184
  %call14 = call i32 @tty_unregister_driver(%struct.tty_driver* %16) #9, !dbg !5185
  br label %put_tty, !dbg !5185

put_tty:                                          ; preds = %unreg_tty, %if.then4
  call void @llvm.dbg.label(metadata !5186), !dbg !5187
  %17 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5188
  call void @put_tty_driver(%struct.tty_driver* %17) #9, !dbg !5189
  store %struct.tty_driver* null, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5190
  %18 = load i32, i32* %retval1, align 4, !dbg !5191
  store i32 %18, i32* %retval, align 4, !dbg !5192
  br label %return, !dbg !5192

return:                                           ; preds = %put_tty, %if.end13, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5193
  ret i32 %19, !dbg !5193
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_control_frame_built_and_sent(%struct.pti_masterchannel* %mc, i8* %thread_name) #0 !dbg !5194 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5197, metadata !DIExpression()), !dbg !5203
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5209, metadata !DIExpression()), !dbg !5211
  %pfo_val__.i21 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i21, metadata !5212, metadata !DIExpression()), !dbg !5214
  %tmp.i22 = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %pfo_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pfo_val__.i, metadata !5215, metadata !DIExpression()), !dbg !5219
  %tmp.i = alloca i32, align 4
  %mc.addr = alloca %struct.pti_masterchannel*, align 8
  %thread_name.addr = alloca i8*, align 8
  %comm = alloca [16 x i8], align 16
  %mccontrol = alloca %struct.pti_masterchannel, align 1
  %thread_name_p = alloca i8*, align 8
  %control_format = alloca i8*, align 8
  %control_frame = alloca [32 x i8], align 16
  %tmp = alloca i8*, align 8
  store %struct.pti_masterchannel* %mc, %struct.pti_masterchannel** %mc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i8* %thread_name, i8** %thread_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %thread_name.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata [16 x i8]* %comm, metadata !5225, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel* %mccontrol, metadata !5227, metadata !DIExpression()), !dbg !5228
  %0 = bitcast %struct.pti_masterchannel* %mccontrol to i8*, !dbg !5228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds (%struct.pti_masterchannel, %struct.pti_masterchannel* @__const.pti_control_frame_built_and_sent.mccontrol, i32 0, i32 0), i64 2, i1 false), !dbg !5228
  call void @llvm.dbg.declare(metadata i8** %thread_name_p, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i8** %control_format, metadata !5231, metadata !DIExpression()), !dbg !5232
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %control_format, align 8, !dbg !5232
  call void @llvm.dbg.declare(metadata [32 x i8]* %control_frame, metadata !5233, metadata !DIExpression()), !dbg !5235
  %1 = load i8*, i8** %thread_name.addr, align 8, !dbg !5236
  %tobool = icmp ne i8* %1, null, !dbg !5236
  br i1 %tobool, label %if.else8, label %if.then, !dbg !5237

if.then:                                          ; preds = %entry
  %2 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count) #14, !dbg !5219, !srcloc !5238
  store i32 %2, i32* %pfo_val__.i, align 4, !dbg !5219
  %3 = load i32, i32* %pfo_val__.i, align 4, !dbg !5219
  %conv.i = zext i32 %3 to i64, !dbg !5219
  store i32 %3, i32* %tmp.i, align 4, !dbg !5219
  %4 = load i32, i32* %tmp.i, align 4, !dbg !5219
  %and.i = and i32 %4, 2147483647, !dbg !5239
  %conv = sext i32 %and.i to i64, !dbg !5240
  %and = and i64 %conv, 16776960, !dbg !5240
  %tobool1 = icmp ne i64 %and, 0, !dbg !5240
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !5241

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !5242

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !5243

do.end:                                           ; preds = %do.body
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0, !dbg !5242
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5211
  %5 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5211
  %6 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #15, !dbg !5214, !srcloc !5245
  store i64 %6, i64* %pfo_val__.i21, align 8, !dbg !5214
  %7 = load i64, i64* %pfo_val__.i21, align 8, !dbg !5214
  %8 = inttoptr i64 %7 to %struct.task_struct*, !dbg !5214
  store %struct.task_struct* %8, %struct.task_struct** %tmp.i22, align 8, !dbg !5214
  %9 = load %struct.task_struct*, %struct.task_struct** %tmp.i22, align 8, !dbg !5214
  store %struct.task_struct* %9, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5203
  %10 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5203
  store %struct.task_struct* %10, %struct.task_struct** %tmp1.i, align 8, !dbg !5203
  %11 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5203
  %call4 = call i8* @__get_task_comm(i8* %arraydecay, i64 16, %struct.task_struct* %11) #9, !dbg !5242
  store i8* %call4, i8** %tmp, align 8, !dbg !5243
  %12 = load i8*, i8** %tmp, align 8, !dbg !5242
  br label %if.end, !dbg !5246

if.else:                                          ; preds = %if.then
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0, !dbg !5247
  %call6 = call i8* @strncpy(i8* %arraydecay5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 16) #9, !dbg !5248
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %comm, i64 0, i64 15, !dbg !5249
  store i8 0, i8* %arrayidx, align 1, !dbg !5250
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0, !dbg !5251
  store i8* %arraydecay7, i8** %thread_name_p, align 8, !dbg !5252
  br label %if.end9, !dbg !5253

if.else8:                                         ; preds = %entry
  %13 = load i8*, i8** %thread_name.addr, align 8, !dbg !5254
  store i8* %13, i8** %thread_name_p, align 8, !dbg !5256
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.end
  %14 = load i32, i32* @pti_control_channel, align 4, !dbg !5257
  %conv10 = trunc i32 %14 to i8, !dbg !5257
  %channel = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %mccontrol, i32 0, i32 1, !dbg !5258
  store i8 %conv10, i8* %channel, align 1, !dbg !5259
  %15 = load i32, i32* @pti_control_channel, align 4, !dbg !5260
  %add = add i32 %15, 1, !dbg !5261
  %and11 = and i32 %add, 127, !dbg !5262
  store i32 %and11, i32* @pti_control_channel, align 4, !dbg !5263
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %control_frame, i64 0, i64 0, !dbg !5264
  %16 = load i8*, i8** %control_format, align 8, !dbg !5265
  %17 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5266
  %master = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %17, i32 0, i32 0, !dbg !5267
  %18 = load i8, i8* %master, align 1, !dbg !5267
  %conv13 = zext i8 %18 to i32, !dbg !5266
  %19 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !5268
  %channel14 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %19, i32 0, i32 1, !dbg !5269
  %20 = load i8, i8* %channel14, align 1, !dbg !5269
  %conv15 = zext i8 %20 to i32, !dbg !5268
  %21 = load i8*, i8** %thread_name_p, align 8, !dbg !5270
  %call16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay12, i64 32, i8* %16, i32 %conv13, i32 %conv15, i8* %21) #9, !dbg !5271
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %control_frame, i64 0, i64 0, !dbg !5272
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %control_frame, i64 0, i64 0, !dbg !5273
  %call19 = call i64 @strlen(i8* %arraydecay18) #9, !dbg !5274
  %conv20 = trunc i64 %call19 to i32, !dbg !5274
  call void @pti_write_to_aperture(%struct.pti_masterchannel* %mccontrol, i8* %arraydecay17, i32 %conv20) #9, !dbg !5275
  ret void, !dbg !5276
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5277 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5281, metadata !DIExpression()), !dbg !5286
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5288, metadata !DIExpression()), !dbg !5289
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  %0 = load i64, i64* %size.addr, align 8, !dbg !5292
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5294
  br i1 %1, label %if.then, label %if.end447, !dbg !5295

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5296
  %tobool = icmp ne i64 %2, 0, !dbg !5296
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5299

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5301
  %cmp = icmp ult i64 %3, 4096, !dbg !5303
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5304

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5305
  br label %return, !dbg !5305

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub = sub i64 %4, 1, !dbg !5306
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5306
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5306

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub4 = sub i64 %6, 1, !dbg !5306
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5306
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5306

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub6 = sub i64 %8, 1, !dbg !5306
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5306
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5306

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5306

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub9 = sub i64 %9, 1, !dbg !5306
  %and = and i64 %sub9, -9223372036854775808, !dbg !5306
  %tobool10 = icmp ne i64 %and, 0, !dbg !5306
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5306

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5306

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub13 = sub i64 %10, 1, !dbg !5306
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5306
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5306
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5306

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5306

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub18 = sub i64 %11, 1, !dbg !5306
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5306
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5306
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5306

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5306

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub23 = sub i64 %12, 1, !dbg !5306
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5306
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5306
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5306

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5306

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub28 = sub i64 %13, 1, !dbg !5306
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5306
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5306
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5306

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5306

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub33 = sub i64 %14, 1, !dbg !5306
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5306
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5306
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5306

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5306

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub38 = sub i64 %15, 1, !dbg !5306
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5306
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5306
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5306

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5306

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub43 = sub i64 %16, 1, !dbg !5306
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5306
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5306
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5306

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5306

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub48 = sub i64 %17, 1, !dbg !5306
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5306
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5306
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5306

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5306

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub53 = sub i64 %18, 1, !dbg !5306
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5306
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5306
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5306

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5306

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub58 = sub i64 %19, 1, !dbg !5306
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5306
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5306
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5306

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5306

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub63 = sub i64 %20, 1, !dbg !5306
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5306
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5306
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5306

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5306

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub68 = sub i64 %21, 1, !dbg !5306
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5306
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5306
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5306

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5306

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub73 = sub i64 %22, 1, !dbg !5306
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5306
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5306
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5306

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5306

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub78 = sub i64 %23, 1, !dbg !5306
  %and79 = and i64 %sub78, 562949953421312, !dbg !5306
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5306
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5306

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5306

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub83 = sub i64 %24, 1, !dbg !5306
  %and84 = and i64 %sub83, 281474976710656, !dbg !5306
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5306
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5306

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5306

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub88 = sub i64 %25, 1, !dbg !5306
  %and89 = and i64 %sub88, 140737488355328, !dbg !5306
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5306
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5306

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5306

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub93 = sub i64 %26, 1, !dbg !5306
  %and94 = and i64 %sub93, 70368744177664, !dbg !5306
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5306
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5306

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5306

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub98 = sub i64 %27, 1, !dbg !5306
  %and99 = and i64 %sub98, 35184372088832, !dbg !5306
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5306
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5306

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5306

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub103 = sub i64 %28, 1, !dbg !5306
  %and104 = and i64 %sub103, 17592186044416, !dbg !5306
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5306
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5306

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5306

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub108 = sub i64 %29, 1, !dbg !5306
  %and109 = and i64 %sub108, 8796093022208, !dbg !5306
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5306
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5306

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5306

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub113 = sub i64 %30, 1, !dbg !5306
  %and114 = and i64 %sub113, 4398046511104, !dbg !5306
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5306
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5306

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5306

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub118 = sub i64 %31, 1, !dbg !5306
  %and119 = and i64 %sub118, 2199023255552, !dbg !5306
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5306
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5306

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5306

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub123 = sub i64 %32, 1, !dbg !5306
  %and124 = and i64 %sub123, 1099511627776, !dbg !5306
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5306
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5306

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5306

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub128 = sub i64 %33, 1, !dbg !5306
  %and129 = and i64 %sub128, 549755813888, !dbg !5306
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5306
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5306

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5306

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub133 = sub i64 %34, 1, !dbg !5306
  %and134 = and i64 %sub133, 274877906944, !dbg !5306
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5306
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5306

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5306

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub138 = sub i64 %35, 1, !dbg !5306
  %and139 = and i64 %sub138, 137438953472, !dbg !5306
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5306
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5306

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5306

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub143 = sub i64 %36, 1, !dbg !5306
  %and144 = and i64 %sub143, 68719476736, !dbg !5306
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5306
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5306

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5306

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub148 = sub i64 %37, 1, !dbg !5306
  %and149 = and i64 %sub148, 34359738368, !dbg !5306
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5306
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5306

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5306

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub153 = sub i64 %38, 1, !dbg !5306
  %and154 = and i64 %sub153, 17179869184, !dbg !5306
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5306
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5306

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5306

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub158 = sub i64 %39, 1, !dbg !5306
  %and159 = and i64 %sub158, 8589934592, !dbg !5306
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5306
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5306

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5306

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub163 = sub i64 %40, 1, !dbg !5306
  %and164 = and i64 %sub163, 4294967296, !dbg !5306
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5306
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5306

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5306

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub168 = sub i64 %41, 1, !dbg !5306
  %and169 = and i64 %sub168, 2147483648, !dbg !5306
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5306
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5306

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5306

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub173 = sub i64 %42, 1, !dbg !5306
  %and174 = and i64 %sub173, 1073741824, !dbg !5306
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5306
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5306

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5306

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub178 = sub i64 %43, 1, !dbg !5306
  %and179 = and i64 %sub178, 536870912, !dbg !5306
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5306
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5306

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5306

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub183 = sub i64 %44, 1, !dbg !5306
  %and184 = and i64 %sub183, 268435456, !dbg !5306
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5306
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5306

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5306

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub188 = sub i64 %45, 1, !dbg !5306
  %and189 = and i64 %sub188, 134217728, !dbg !5306
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5306
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5306

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5306

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub193 = sub i64 %46, 1, !dbg !5306
  %and194 = and i64 %sub193, 67108864, !dbg !5306
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5306
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5306

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5306

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub198 = sub i64 %47, 1, !dbg !5306
  %and199 = and i64 %sub198, 33554432, !dbg !5306
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5306
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5306

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5306

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub203 = sub i64 %48, 1, !dbg !5306
  %and204 = and i64 %sub203, 16777216, !dbg !5306
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5306
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5306

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5306

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub208 = sub i64 %49, 1, !dbg !5306
  %and209 = and i64 %sub208, 8388608, !dbg !5306
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5306
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5306

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5306

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub213 = sub i64 %50, 1, !dbg !5306
  %and214 = and i64 %sub213, 4194304, !dbg !5306
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5306
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5306

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5306

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub218 = sub i64 %51, 1, !dbg !5306
  %and219 = and i64 %sub218, 2097152, !dbg !5306
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5306
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5306

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5306

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub223 = sub i64 %52, 1, !dbg !5306
  %and224 = and i64 %sub223, 1048576, !dbg !5306
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5306
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5306

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5306

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub228 = sub i64 %53, 1, !dbg !5306
  %and229 = and i64 %sub228, 524288, !dbg !5306
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5306
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5306

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5306

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub233 = sub i64 %54, 1, !dbg !5306
  %and234 = and i64 %sub233, 262144, !dbg !5306
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5306
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5306

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5306

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub238 = sub i64 %55, 1, !dbg !5306
  %and239 = and i64 %sub238, 131072, !dbg !5306
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5306
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5306

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5306

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub243 = sub i64 %56, 1, !dbg !5306
  %and244 = and i64 %sub243, 65536, !dbg !5306
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5306
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5306

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5306

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub248 = sub i64 %57, 1, !dbg !5306
  %and249 = and i64 %sub248, 32768, !dbg !5306
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5306
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5306

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5306

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub253 = sub i64 %58, 1, !dbg !5306
  %and254 = and i64 %sub253, 16384, !dbg !5306
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5306
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5306

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5306

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub258 = sub i64 %59, 1, !dbg !5306
  %and259 = and i64 %sub258, 8192, !dbg !5306
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5306
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5306

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5306

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub263 = sub i64 %60, 1, !dbg !5306
  %and264 = and i64 %sub263, 4096, !dbg !5306
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5306
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5306

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5306

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub268 = sub i64 %61, 1, !dbg !5306
  %and269 = and i64 %sub268, 2048, !dbg !5306
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5306
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5306

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5306

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub273 = sub i64 %62, 1, !dbg !5306
  %and274 = and i64 %sub273, 1024, !dbg !5306
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5306
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5306

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5306

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub278 = sub i64 %63, 1, !dbg !5306
  %and279 = and i64 %sub278, 512, !dbg !5306
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5306
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5306

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5306

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub283 = sub i64 %64, 1, !dbg !5306
  %and284 = and i64 %sub283, 256, !dbg !5306
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5306
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5306

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5306

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub288 = sub i64 %65, 1, !dbg !5306
  %and289 = and i64 %sub288, 128, !dbg !5306
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5306
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5306

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5306

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub293 = sub i64 %66, 1, !dbg !5306
  %and294 = and i64 %sub293, 64, !dbg !5306
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5306
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5306

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5306

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub298 = sub i64 %67, 1, !dbg !5306
  %and299 = and i64 %sub298, 32, !dbg !5306
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5306
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5306

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5306

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub303 = sub i64 %68, 1, !dbg !5306
  %and304 = and i64 %sub303, 16, !dbg !5306
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5306
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5306

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5306

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub308 = sub i64 %69, 1, !dbg !5306
  %and309 = and i64 %sub308, 8, !dbg !5306
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5306
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5306

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5306

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub313 = sub i64 %70, 1, !dbg !5306
  %and314 = and i64 %sub313, 4, !dbg !5306
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5306
  %71 = zext i1 %tobool315 to i64, !dbg !5306
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5306
  br label %cond.end, !dbg !5306

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5306
  br label %cond.end317, !dbg !5306

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5306
  br label %cond.end319, !dbg !5306

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5306
  br label %cond.end321, !dbg !5306

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5306
  br label %cond.end323, !dbg !5306

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5306
  br label %cond.end325, !dbg !5306

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5306
  br label %cond.end327, !dbg !5306

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5306
  br label %cond.end329, !dbg !5306

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5306
  br label %cond.end331, !dbg !5306

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5306
  br label %cond.end333, !dbg !5306

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5306
  br label %cond.end335, !dbg !5306

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5306
  br label %cond.end337, !dbg !5306

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5306
  br label %cond.end339, !dbg !5306

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5306
  br label %cond.end341, !dbg !5306

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5306
  br label %cond.end343, !dbg !5306

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5306
  br label %cond.end345, !dbg !5306

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5306
  br label %cond.end347, !dbg !5306

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5306
  br label %cond.end349, !dbg !5306

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5306
  br label %cond.end351, !dbg !5306

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5306
  br label %cond.end353, !dbg !5306

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5306
  br label %cond.end355, !dbg !5306

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5306
  br label %cond.end357, !dbg !5306

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5306
  br label %cond.end359, !dbg !5306

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5306
  br label %cond.end361, !dbg !5306

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5306
  br label %cond.end363, !dbg !5306

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5306
  br label %cond.end365, !dbg !5306

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5306
  br label %cond.end367, !dbg !5306

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5306
  br label %cond.end369, !dbg !5306

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5306
  br label %cond.end371, !dbg !5306

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5306
  br label %cond.end373, !dbg !5306

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5306
  br label %cond.end375, !dbg !5306

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5306
  br label %cond.end377, !dbg !5306

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5306
  br label %cond.end379, !dbg !5306

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5306
  br label %cond.end381, !dbg !5306

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5306
  br label %cond.end383, !dbg !5306

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5306
  br label %cond.end385, !dbg !5306

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5306
  br label %cond.end387, !dbg !5306

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5306
  br label %cond.end389, !dbg !5306

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5306
  br label %cond.end391, !dbg !5306

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5306
  br label %cond.end393, !dbg !5306

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5306
  br label %cond.end395, !dbg !5306

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5306
  br label %cond.end397, !dbg !5306

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5306
  br label %cond.end399, !dbg !5306

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5306
  br label %cond.end401, !dbg !5306

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5306
  br label %cond.end403, !dbg !5306

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5306
  br label %cond.end405, !dbg !5306

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5306
  br label %cond.end407, !dbg !5306

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5306
  br label %cond.end409, !dbg !5306

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5306
  br label %cond.end411, !dbg !5306

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5306
  br label %cond.end413, !dbg !5306

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5306
  br label %cond.end415, !dbg !5306

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5306
  br label %cond.end417, !dbg !5306

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5306
  br label %cond.end419, !dbg !5306

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5306
  br label %cond.end421, !dbg !5306

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5306
  br label %cond.end423, !dbg !5306

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5306
  br label %cond.end425, !dbg !5306

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5306
  br label %cond.end427, !dbg !5306

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5306
  br label %cond.end429, !dbg !5306

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5306
  br label %cond.end431, !dbg !5306

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5306
  br label %cond.end433, !dbg !5306

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5306
  br label %cond.end435, !dbg !5306

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5306
  br label %cond.end437, !dbg !5306

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5306
  br label %cond.end440, !dbg !5306

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5306

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5306
  br label %cond.end444, !dbg !5306

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5306
  %sub443 = sub i64 %72, 1, !dbg !5306
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5306
  br label %cond.end444, !dbg !5306

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5306
  %sub446 = sub i32 %cond445, 12, !dbg !5307
  %add = add i32 %sub446, 1, !dbg !5308
  store i32 %add, i32* %retval, align 4, !dbg !5309
  br label %return, !dbg !5309

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5310
  %dec = add i64 %73, -1, !dbg !5310
  store i64 %dec, i64* %size.addr, align 8, !dbg !5310
  %74 = load i64, i64* %size.addr, align 8, !dbg !5311
  %shr = lshr i64 %74, 12, !dbg !5311
  store i64 %shr, i64* %size.addr, align 8, !dbg !5311
  %75 = load i64, i64* %size.addr, align 8, !dbg !5312
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5289
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5313
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5314
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5313, !srcloc !5315
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5313
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5316
  %add.i = add i32 %79, 1, !dbg !5317
  store i32 %add.i, i32* %retval, align 4, !dbg !5318
  br label %return, !dbg !5318

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5319
  ret i32 %80, !dbg !5319
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5320 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5281, metadata !DIExpression()), !dbg !5324
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5288, metadata !DIExpression()), !dbg !5326
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load i64, i64* %n.addr, align 8, !dbg !5329
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5326
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5330
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5331
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5330, !srcloc !5315
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5330
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5332
  %add.i = add i32 %4, 1, !dbg !5333
  %sub = sub i32 %add.i, 1, !dbg !5334
  ret i32 %sub, !dbg !5335
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5336 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5348
  ret i8* %0, !dbg !5349
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i8* @__get_task_comm(i8*, i64, %struct.task_struct*) #2

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !5350 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  %0 = load i32, i32* %val.addr, align 4, !dbg !5356
  %call = call i32 @__arch_swab32(i32 %0) #11, !dbg !5357
  ret i32 %call, !dbg !5358
}

; Function Attrs: noredzone
declare dso_local void @iowrite32(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !5359 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  %0 = load i32, i32* %val.addr, align 4, !dbg !5363
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #15, !dbg !5364, !srcloc !5365
  store i32 %1, i32* %val.addr, align 4, !dbg !5364
  %2 = load i32, i32* %val.addr, align 4, !dbg !5366
  ret i32 %2, !dbg !5367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_pci_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %ent) #0 !dbg !5368 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %pci_bar = alloca i32, align 4
  %port = alloca %struct.tty_port*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.declare(metadata i32* %a, metadata !5373, metadata !DIExpression()), !dbg !5374
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5375, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.declare(metadata i32* %pci_bar, metadata !5377, metadata !DIExpression()), !dbg !5378
  store i32 1, i32* %pci_bar, align 4, !dbg !5378
  %call = call i32 @misc_register(%struct.miscdevice* @pti_char_driver) #9, !dbg !5379
  store i32 %call, i32* %retval1, align 4, !dbg !5380
  %0 = load i32, i32* %retval1, align 4, !dbg !5381
  %tobool = icmp ne i32 %0, 0, !dbg !5381
  br i1 %tobool, label %if.then, label %if.end, !dbg !5383

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pti_pci_probe, i64 0, i64 0), i32 803) #13, !dbg !5384
  %1 = load i32, i32* %retval1, align 4, !dbg !5386
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pti_pci_probe, i64 0, i64 0), i32 805, i32 %1) #13, !dbg !5386
  br label %err, !dbg !5387

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5388
  %call4 = call i32 @pci_enable_device(%struct.pci_dev* %2) #9, !dbg !5389
  store i32 %call4, i32* %retval1, align 4, !dbg !5390
  %3 = load i32, i32* %retval1, align 4, !dbg !5391
  %cmp = icmp ne i32 %3, 0, !dbg !5393
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5394

if.then5:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5395
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !5395
  %5 = load i32, i32* %retval1, align 4, !dbg !5395
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pti_pci_probe, i64 0, i64 0), i32 %5) #13, !dbg !5395
  br label %err_unreg_misc, !dbg !5397

if.end6:                                          ; preds = %if.end
  %call7 = call i8* @kzalloc(i64 680, i32 3264) #9, !dbg !5398
  %6 = bitcast i8* %call7 to %struct.pti_dev*, !dbg !5398
  store %struct.pti_dev* %6, %struct.pti_dev** @drv_data, align 8, !dbg !5399
  %7 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5400
  %cmp8 = icmp eq %struct.pti_dev* %7, null, !dbg !5402
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !5403

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %retval1, align 4, !dbg !5404
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5406
  %dev10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !5406
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pti_pci_probe, i64 0, i64 0), i32 822) #13, !dbg !5406
  br label %err_disable_pci, !dbg !5407

if.end11:                                         ; preds = %if.end6
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5408
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 44, !dbg !5408
  %10 = load i32, i32* %pci_bar, align 4, !dbg !5408
  %idxprom = sext i32 %10 to i64, !dbg !5408
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5408
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5408
  %11 = load i64, i64* %start, align 8, !dbg !5408
  %12 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5409
  %pti_addr = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %12, i32 0, i32 1, !dbg !5410
  store i64 %11, i64* %pti_addr, align 8, !dbg !5411
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5412
  %14 = load i32, i32* %pci_bar, align 4, !dbg !5413
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5414
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !5415
  %call13 = call i8* @dev_name(%struct.device* %dev12) #9, !dbg !5416
  %call14 = call i32 @pci_request_region(%struct.pci_dev* %13, i32 %14, i8* %call13) #9, !dbg !5417
  store i32 %call14, i32* %retval1, align 4, !dbg !5418
  %16 = load i32, i32* %retval1, align 4, !dbg !5419
  %cmp15 = icmp ne i32 %16, 0, !dbg !5421
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !5422

if.then16:                                        ; preds = %if.end11
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5423
  %dev17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 41, !dbg !5423
  %18 = load i32, i32* %retval1, align 4, !dbg !5423
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.pti_pci_probe, i64 0, i64 0), i32 831, i32 %18) #13, !dbg !5423
  br label %err_free_dd, !dbg !5425

if.end18:                                         ; preds = %if.end11
  %19 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5426
  %pti_addr19 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %19, i32 0, i32 1, !dbg !5427
  %20 = load i64, i64* %pti_addr19, align 8, !dbg !5427
  %add = add i64 %20, 58720256, !dbg !5428
  %21 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5429
  %aperture_base = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %21, i32 0, i32 2, !dbg !5430
  store i64 %add, i64* %aperture_base, align 8, !dbg !5431
  %22 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5432
  %aperture_base20 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %22, i32 0, i32 2, !dbg !5433
  %23 = load i64, i64* %aperture_base20, align 8, !dbg !5433
  %conv = trunc i64 %23 to i32, !dbg !5434
  %conv21 = zext i32 %conv to i64, !dbg !5434
  %call22 = call i8* @ioremap(i64 %conv21, i64 4194304) #9, !dbg !5435
  %24 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5436
  %pti_ioaddr = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %24, i32 0, i32 3, !dbg !5437
  store i8* %call22, i8** %pti_ioaddr, align 8, !dbg !5438
  %25 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5439
  %pti_ioaddr23 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %25, i32 0, i32 3, !dbg !5441
  %26 = load i8*, i8** %pti_ioaddr23, align 8, !dbg !5441
  %tobool24 = icmp ne i8* %26, null, !dbg !5439
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5442

if.then25:                                        ; preds = %if.end18
  store i32 -12, i32* %retval1, align 4, !dbg !5443
  br label %err_rel_reg, !dbg !5445

if.end26:                                         ; preds = %if.end18
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5446
  %28 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5447
  %29 = bitcast %struct.pti_dev* %28 to i8*, !dbg !5447
  call void @pci_set_drvdata(%struct.pci_dev* %27, i8* %29) #9, !dbg !5448
  store i32 0, i32* %a, align 4, !dbg !5449
  br label %for.cond, !dbg !5451

for.cond:                                         ; preds = %for.inc, %if.end26
  %30 = load i32, i32* %a, align 4, !dbg !5452
  %cmp27 = icmp ult i32 %30, 2, !dbg !5454
  br i1 %cmp27, label %for.body, label %for.end, !dbg !5455

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port, metadata !5456, metadata !DIExpression()), !dbg !5458
  %31 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5459
  %port29 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %31, i32 0, i32 0, !dbg !5460
  %32 = load i32, i32* %a, align 4, !dbg !5461
  %idxprom30 = zext i32 %32 to i64, !dbg !5459
  %arrayidx31 = getelementptr [2 x %struct.tty_port], [2 x %struct.tty_port]* %port29, i64 0, i64 %idxprom30, !dbg !5459
  store %struct.tty_port* %arrayidx31, %struct.tty_port** %port, align 8, !dbg !5458
  %33 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !5462
  call void @tty_port_init(%struct.tty_port* %33) #9, !dbg !5463
  %34 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !5464
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 3, !dbg !5465
  store %struct.tty_port_operations* @tty_port_ops, %struct.tty_port_operations** %ops, align 8, !dbg !5466
  %35 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !5467
  %36 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5468
  %37 = load i32, i32* %a, align 4, !dbg !5469
  %38 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5470
  %dev32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 41, !dbg !5471
  %call33 = call %struct.device* @tty_port_register_device(%struct.tty_port* %35, %struct.tty_driver* %36, i32 %37, %struct.device* %dev32) #9, !dbg !5472
  br label %for.inc, !dbg !5473

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %a, align 4, !dbg !5474
  %inc = add i32 %39, 1, !dbg !5474
  store i32 %inc, i32* %a, align 4, !dbg !5474
  br label %for.cond, !dbg !5475, !llvm.loop !5476

for.end:                                          ; preds = %for.cond
  call void @register_console(%struct.console* @pti_console) #9, !dbg !5478
  store i32 0, i32* %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

err_rel_reg:                                      ; preds = %if.then25
  call void @llvm.dbg.label(metadata !5480), !dbg !5481
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5482
  %41 = load i32, i32* %pci_bar, align 4, !dbg !5483
  call void @pci_release_region(%struct.pci_dev* %40, i32 %41) #9, !dbg !5484
  br label %err_free_dd, !dbg !5484

err_free_dd:                                      ; preds = %err_rel_reg, %if.then16
  call void @llvm.dbg.label(metadata !5485), !dbg !5486
  %42 = load %struct.pti_dev*, %struct.pti_dev** @drv_data, align 8, !dbg !5487
  %43 = bitcast %struct.pti_dev* %42 to i8*, !dbg !5487
  call void @kfree(i8* %43) #9, !dbg !5488
  br label %err_disable_pci, !dbg !5488

err_disable_pci:                                  ; preds = %err_free_dd, %if.then9
  call void @llvm.dbg.label(metadata !5489), !dbg !5490
  %44 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5491
  call void @pci_disable_device(%struct.pci_dev* %44) #9, !dbg !5492
  br label %err_unreg_misc, !dbg !5492

err_unreg_misc:                                   ; preds = %err_disable_pci, %if.then5
  call void @llvm.dbg.label(metadata !5493), !dbg !5494
  call void @misc_deregister(%struct.miscdevice* @pti_char_driver) #9, !dbg !5495
  br label %err, !dbg !5495

err:                                              ; preds = %err_unreg_misc, %if.then
  call void @llvm.dbg.label(metadata !5496), !dbg !5497
  %45 = load i32, i32* %retval1, align 4, !dbg !5498
  store i32 %45, i32* %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

return:                                           ; preds = %err, %for.end
  %46 = load i32, i32* %retval, align 4, !dbg !5500
  ret i32 %46, !dbg !5500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_pci_remove(%struct.pci_dev* %pdev) #0 !dbg !5501 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %drv_data = alloca %struct.pti_dev*, align 8
  %a = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.declare(metadata %struct.pti_dev** %drv_data, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5506
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #9, !dbg !5507
  %1 = bitcast i8* %call to %struct.pti_dev*, !dbg !5507
  store %struct.pti_dev* %1, %struct.pti_dev** %drv_data, align 8, !dbg !5505
  call void @llvm.dbg.declare(metadata i32* %a, metadata !5508, metadata !DIExpression()), !dbg !5509
  %call1 = call i32 @unregister_console(%struct.console* @pti_console) #9, !dbg !5510
  store i32 0, i32* %a, align 4, !dbg !5511
  br label %for.cond, !dbg !5513

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %a, align 4, !dbg !5514
  %cmp = icmp ult i32 %2, 2, !dbg !5516
  br i1 %cmp, label %for.body, label %for.end, !dbg !5517

for.body:                                         ; preds = %for.cond
  %3 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !5518
  %4 = load i32, i32* %a, align 4, !dbg !5520
  call void @tty_unregister_device(%struct.tty_driver* %3, i32 %4) #9, !dbg !5521
  %5 = load %struct.pti_dev*, %struct.pti_dev** %drv_data, align 8, !dbg !5522
  %port = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %5, i32 0, i32 0, !dbg !5523
  %6 = load i32, i32* %a, align 4, !dbg !5524
  %idxprom = zext i32 %6 to i64, !dbg !5522
  %arrayidx = getelementptr [2 x %struct.tty_port], [2 x %struct.tty_port]* %port, i64 0, i64 %idxprom, !dbg !5522
  call void @tty_port_destroy(%struct.tty_port* %arrayidx) #9, !dbg !5525
  br label %for.inc, !dbg !5526

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %a, align 4, !dbg !5527
  %inc = add i32 %7, 1, !dbg !5527
  store i32 %inc, i32* %a, align 4, !dbg !5527
  br label %for.cond, !dbg !5528, !llvm.loop !5529

for.end:                                          ; preds = %for.cond
  %8 = load %struct.pti_dev*, %struct.pti_dev** %drv_data, align 8, !dbg !5531
  %pti_ioaddr = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %8, i32 0, i32 3, !dbg !5532
  %9 = load i8*, i8** %pti_ioaddr, align 8, !dbg !5532
  call void @iounmap(i8* %9) #9, !dbg !5533
  %10 = load %struct.pti_dev*, %struct.pti_dev** %drv_data, align 8, !dbg !5534
  %11 = bitcast %struct.pti_dev* %10 to i8*, !dbg !5534
  call void @kfree(i8* %11) #9, !dbg !5535
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5536
  call void @pci_release_region(%struct.pci_dev* %12, i32 1) #9, !dbg !5537
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5538
  call void @pci_disable_device(%struct.pci_dev* %13) #9, !dbg !5539
  call void @misc_deregister(%struct.miscdevice* @pti_char_driver) #9, !dbg !5540
  ret void, !dbg !5541
}

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #8

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5542 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !5543
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !5546
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !5547
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !5548
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !5549
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !5551
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !5553
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !5556
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !5557
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !5558
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !5559
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !5560
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !5561
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !5562
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !5563
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  %0 = load i64, i64* %size.addr, align 8, !dbg !5568
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5569
  %or = or i32 %1, 256, !dbg !5570
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5571
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5572
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5573

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5574
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5575
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5576

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5577
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5578
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5579
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5580
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5560
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5581
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5582
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5583
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5584
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5585
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5586
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5587
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5587
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5587
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5587
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5587
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5588
  br label %kmalloc.exit, !dbg !5588

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5589
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5590
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5590
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5591

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5592
  br label %kmalloc_index.exit.i, !dbg !5592

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5593
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5594
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5595

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5598
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5599

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5600
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5601
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5602

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5603
  br label %kmalloc_index.exit.i, !dbg !5603

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5604
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5605
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5606

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5607
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5608
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5609

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5610
  br label %kmalloc_index.exit.i, !dbg !5610

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5611
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5612
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5613

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5614
  br label %kmalloc_index.exit.i, !dbg !5614

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5615
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5616
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5617

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5618
  br label %kmalloc_index.exit.i, !dbg !5618

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5619
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5620
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5621

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5622
  br label %kmalloc_index.exit.i, !dbg !5622

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5623
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5624
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5625

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5626
  br label %kmalloc_index.exit.i, !dbg !5626

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5627
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5628
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5629

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5630
  br label %kmalloc_index.exit.i, !dbg !5630

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5631
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5632
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5633

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5634
  br label %kmalloc_index.exit.i, !dbg !5634

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5635
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5636
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5637

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5638
  br label %kmalloc_index.exit.i, !dbg !5638

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5639
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5640
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5641

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5642
  br label %kmalloc_index.exit.i, !dbg !5642

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5643
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5644
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5645

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5646
  br label %kmalloc_index.exit.i, !dbg !5646

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5647
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5648
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5649

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5650
  br label %kmalloc_index.exit.i, !dbg !5650

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5651
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5652
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5653

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5654
  br label %kmalloc_index.exit.i, !dbg !5654

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5655
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5656
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5657

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5658
  br label %kmalloc_index.exit.i, !dbg !5658

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5659
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5660
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5661

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5662
  br label %kmalloc_index.exit.i, !dbg !5662

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5663
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5664
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5665

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5666
  br label %kmalloc_index.exit.i, !dbg !5666

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5667
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5668
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5669

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5670
  br label %kmalloc_index.exit.i, !dbg !5670

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5671
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5672
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5673

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5674
  br label %kmalloc_index.exit.i, !dbg !5674

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5675
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5676
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5677

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5678
  br label %kmalloc_index.exit.i, !dbg !5678

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5679
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5680
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5681

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5682
  br label %kmalloc_index.exit.i, !dbg !5682

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5683
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5684
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5685

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5686
  br label %kmalloc_index.exit.i, !dbg !5686

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5687
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5688
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5689

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5690
  br label %kmalloc_index.exit.i, !dbg !5690

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5691
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5692
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5693

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5694
  br label %kmalloc_index.exit.i, !dbg !5694

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5695
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5696
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5697

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5698
  br label %kmalloc_index.exit.i, !dbg !5698

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5699
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5700
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5701

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5702
  br label %kmalloc_index.exit.i, !dbg !5702

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5703
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5704
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5705

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5706
  br label %kmalloc_index.exit.i, !dbg !5706

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5707, !srcloc !4800
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #10, !dbg !5708, !srcloc !4804
  unreachable, !dbg !5709

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5710
  store i32 %45, i32* %index.i, align 4, !dbg !5711
  %46 = load i32, i32* %index.i, align 4, !dbg !5712
  %tobool.i = icmp ne i32 %46, 0, !dbg !5712
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5713

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5714
  br label %kmalloc.exit, !dbg !5714

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5715
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5716
  %and.i.i = and i32 %48, 17, !dbg !5716
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5716
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5716
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5716
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5716
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5717

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5718
  br label %kmalloc_type.exit.i, !dbg !5718

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5719
  %and2.i.i = and i32 %49, 1, !dbg !5720
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5719
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5719
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5719
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5721
  br label %kmalloc_type.exit.i, !dbg !5721

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5722
  %idxprom.i = zext i32 %51 to i64, !dbg !5723
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5723
  %52 = load i32, i32* %index.i, align 4, !dbg !5724
  %idxprom6.i = zext i32 %52 to i64, !dbg !5723
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5723
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5723
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5725
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5726
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5727
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5728
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5729
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5729
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5729
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5729
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5729
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5548
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5730
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5731
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5732
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5733
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5734
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5735
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5736
  store i8* %62, i8** %retval.i, align 8, !dbg !5737
  br label %kmalloc.exit, !dbg !5737

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5738
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5739
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5740
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5740
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5740
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5740
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5740
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5741
  br label %kmalloc.exit, !dbg !5741

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5742
  ret i8* %65, !dbg !5743
}

; Function Attrs: noredzone
declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5744 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5749
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5751
  %1 = load i8*, i8** %init_name, align 8, !dbg !5751
  %tobool = icmp ne i8* %1, null, !dbg !5749
  br i1 %tobool, label %if.then, label %if.end, !dbg !5752

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5753
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5754
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5754
  store i8* %3, i8** %retval, align 8, !dbg !5755
  br label %return, !dbg !5755

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5756
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5757
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !5758
  store i8* %call, i8** %retval, align 8, !dbg !5759
  br label %return, !dbg !5759

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5760
  ret i8* %5, !dbg !5760
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #0 !dbg !5761 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5768
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5769
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5770
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5771
  ret void, !dbg !5772
}

; Function Attrs: noredzone
declare dso_local void @tty_port_init(%struct.tty_port*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @tty_port_register_device(%struct.tty_port*, %struct.tty_driver*, i32, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @register_console(%struct.console*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @pci_release_region(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pti_char_write(%struct.file* %filp, i8* %data, i64 %len, i64* %ppose) #0 !dbg !5773 {
entry:
  %retval.i.i12 = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5774, metadata !DIExpression()), !dbg !5779
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5789, metadata !DIExpression()), !dbg !5790
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5791, metadata !DIExpression()), !dbg !5792
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5793, metadata !DIExpression()), !dbg !5794
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5795, metadata !DIExpression()), !dbg !5798
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5799, metadata !DIExpression()), !dbg !5800
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5801, metadata !DIExpression()), !dbg !5802
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5803, metadata !DIExpression()), !dbg !5804
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !5805
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !5808
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !5809
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !5810
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !5811
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !5813
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !5815
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !5818
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !5819
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !5820
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !5821
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !5822
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !5823
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !5824
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !5825
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppose.addr = alloca i64*, align 8
  %mc = alloca %struct.pti_masterchannel*, align 8
  %kbuf = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  store i64* %ppose, i64** %ppose.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppose.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc, metadata !5834, metadata !DIExpression()), !dbg !5835
  call void @llvm.dbg.declare(metadata i8** %kbuf, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5838, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata i64* %size, metadata !5840, metadata !DIExpression()), !dbg !5841
  store i64 8192, i64* %size, align 8, !dbg !5841
  call void @llvm.dbg.declare(metadata i64* %n, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i64 0, i64* %n, align 8, !dbg !5843
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5844
  store i8* %0, i8** %tmp, align 8, !dbg !5845
  %1 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5846
  %private_data = getelementptr inbounds %struct.file, %struct.file* %1, i32 0, i32 15, !dbg !5847
  %2 = load i8*, i8** %private_data, align 8, !dbg !5847
  %3 = bitcast i8* %2 to %struct.pti_masterchannel*, !dbg !5846
  store %struct.pti_masterchannel* %3, %struct.pti_masterchannel** %mc, align 8, !dbg !5848
  %4 = load i64, i64* %size, align 8, !dbg !5849
  store i64 %4, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5850
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #10, !dbg !5851
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !5852

if.then.i:                                        ; preds = %entry
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !5853
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !5854
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5855

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !5856
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !5857
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !5858
  %call.i.i = call i32 @get_order(i64 %10) #11, !dbg !5859
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5822
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !5860
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5861
  %13 = load i32, i32* %order.i.i, align 4, !dbg !5862
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5863
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5864
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5865
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #12, !dbg !5866
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5866
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5866
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5866
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5866
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5867
  br label %kmalloc.exit, !dbg !5867

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !5868
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5869
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !5869
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5870

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5871
  br label %kmalloc_index.exit.i, !dbg !5871

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5872
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !5873
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5874

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5875
  br label %kmalloc_index.exit.i, !dbg !5875

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5876
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !5877
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5878

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5879
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !5880
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5881

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5882
  br label %kmalloc_index.exit.i, !dbg !5882

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5883
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !5884
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5885

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5886
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !5887
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5888

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5889
  br label %kmalloc_index.exit.i, !dbg !5889

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5890
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !5891
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5892

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5893
  br label %kmalloc_index.exit.i, !dbg !5893

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5894
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !5895
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5896

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5897
  br label %kmalloc_index.exit.i, !dbg !5897

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5898
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !5899
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5900

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5901
  br label %kmalloc_index.exit.i, !dbg !5901

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5902
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !5903
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5904

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5905
  br label %kmalloc_index.exit.i, !dbg !5905

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5906
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !5907
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5908

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5909
  br label %kmalloc_index.exit.i, !dbg !5909

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5910
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !5911
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5912

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5913
  br label %kmalloc_index.exit.i, !dbg !5913

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5914
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !5915
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5916

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5917
  br label %kmalloc_index.exit.i, !dbg !5917

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5918
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !5919
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5920

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5921
  br label %kmalloc_index.exit.i, !dbg !5921

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5922
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !5923
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5924

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5925
  br label %kmalloc_index.exit.i, !dbg !5925

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5926
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !5927
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5928

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5929
  br label %kmalloc_index.exit.i, !dbg !5929

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5930
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !5931
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5932

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5933
  br label %kmalloc_index.exit.i, !dbg !5933

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5934
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !5935
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5936

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5937
  br label %kmalloc_index.exit.i, !dbg !5937

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5938
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !5939
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5940

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5941
  br label %kmalloc_index.exit.i, !dbg !5941

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5942
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !5943
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5944

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5945
  br label %kmalloc_index.exit.i, !dbg !5945

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5946
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !5947
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5948

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5949
  br label %kmalloc_index.exit.i, !dbg !5949

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5950
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !5951
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5952

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5953
  br label %kmalloc_index.exit.i, !dbg !5953

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5954
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !5955
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5956

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5957
  br label %kmalloc_index.exit.i, !dbg !5957

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5958
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !5959
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5960

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5961
  br label %kmalloc_index.exit.i, !dbg !5961

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5962
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !5963
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5964

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5965
  br label %kmalloc_index.exit.i, !dbg !5965

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5966
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !5967
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5968

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5969
  br label %kmalloc_index.exit.i, !dbg !5969

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5970
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !5971
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5972

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5973
  br label %kmalloc_index.exit.i, !dbg !5973

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5974
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !5975
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5976

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5977
  br label %kmalloc_index.exit.i, !dbg !5977

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5978
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !5979
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5980

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5981
  br label %kmalloc_index.exit.i, !dbg !5981

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5982
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !5983
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5984

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5985
  br label %kmalloc_index.exit.i, !dbg !5985

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5986, !srcloc !4800
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #10, !dbg !5987, !srcloc !4804
  unreachable, !dbg !5988

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !5989
  store i32 %48, i32* %index.i, align 4, !dbg !5990
  %49 = load i32, i32* %index.i, align 4, !dbg !5991
  %tobool.i = icmp ne i32 %49, 0, !dbg !5991
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5992

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5993
  br label %kmalloc.exit, !dbg !5993

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !5994
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5995
  %and.i.i = and i32 %51, 17, !dbg !5995
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5995
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5995
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5995
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5995
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5996

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5997
  br label %kmalloc_type.exit.i, !dbg !5997

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5998
  %and2.i.i = and i32 %52, 1, !dbg !5999
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5998
  %53 = zext i1 %tobool3.i.i to i64, !dbg !5998
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5998
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6000
  br label %kmalloc_type.exit.i, !dbg !6000

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !6001
  %idxprom.i = zext i32 %54 to i64, !dbg !6002
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6002
  %55 = load i32, i32* %index.i, align 4, !dbg !6003
  %idxprom6.i = zext i32 %55 to i64, !dbg !6002
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6002
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6002
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !6004
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !6005
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6006
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6007
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #12, !dbg !6008
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6008
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6008
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6008
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6008
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5810
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6009
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6010
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6011
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6012
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #12, !dbg !6013
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6014
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !6015
  store i8* %65, i8** %retval.i, align 8, !dbg !6016
  br label %kmalloc.exit, !dbg !6016

if.end9.i:                                        ; preds = %entry
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !6017
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !6018
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #12, !dbg !6019
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6019
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6019
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6019
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6019
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6020
  br label %kmalloc.exit, !dbg !6020

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !6021
  store i8* %68, i8** %kbuf, align 8, !dbg !6022
  %69 = load i8*, i8** %kbuf, align 8, !dbg !6023
  %cmp = icmp eq i8* %69, null, !dbg !6025
  br i1 %cmp, label %if.then, label %if.end, !dbg !6026

if.then:                                          ; preds = %kmalloc.exit
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pti_char_write, i64 0, i64 0), i32 615) #13, !dbg !6027
  store i64 -12, i64* %retval, align 8, !dbg !6029
  br label %return, !dbg !6029

if.end:                                           ; preds = %kmalloc.exit
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %do.cond, %if.end
  %70 = load i64, i64* %len.addr, align 8, !dbg !6031
  %71 = load i64, i64* %n, align 8, !dbg !6033
  %sub = sub i64 %70, %71, !dbg !6034
  %cmp2 = icmp ugt i64 %sub, 8192, !dbg !6035
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !6036

if.then3:                                         ; preds = %do.body
  store i64 8192, i64* %size, align 8, !dbg !6037
  br label %if.end5, !dbg !6038

if.else:                                          ; preds = %do.body
  %72 = load i64, i64* %len.addr, align 8, !dbg !6039
  %73 = load i64, i64* %n, align 8, !dbg !6040
  %sub4 = sub i64 %72, %73, !dbg !6041
  store i64 %sub4, i64* %size, align 8, !dbg !6042
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %74 = load i8*, i8** %kbuf, align 8, !dbg !6043
  %75 = load i8*, i8** %tmp, align 8, !dbg !6044
  %76 = load i64, i64* %size, align 8, !dbg !6045
  store i8* %74, i8** %to.addr.i, align 8
  store i8* %75, i8** %from.addr.i, align 8
  store i64 %76, i64* %n.addr.i, align 8
  %77 = load i8*, i8** %to.addr.i, align 8, !dbg !6046
  %78 = load i64, i64* %n.addr.i, align 8, !dbg !6046
  store i8* %77, i8** %addr.addr.i.i, align 8
  store i64 %78, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5794
  %79 = load i32, i32* %sz.i.i, align 4, !dbg !6047
  %cmp.i.i13 = icmp sge i32 %79, 0, !dbg !6047
  br i1 %cmp.i.i13, label %land.rhs.i.i, label %land.end.i.i, !dbg !6047

land.rhs.i.i:                                     ; preds = %if.end5
  %80 = load i32, i32* %sz.i.i, align 4, !dbg !6047
  %conv.i.i14 = sext i32 %80 to i64, !dbg !6047
  %81 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6047
  %cmp1.i.i = icmp ult i64 %conv.i.i14, %81, !dbg !6047
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end5
  %82 = phi i1 [ false, %if.end5 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6049
  %lnot.i.i15 = xor i1 %82, true, !dbg !6047
  %lnot.ext.i.i16 = zext i1 %82 to i32, !dbg !6047
  %conv4.i.i = sext i32 %lnot.ext.i.i16 to i64, !dbg !6047
  br i1 %82, label %if.then.i.i17, label %if.end10.i.i, !dbg !6050

if.then.i.i17:                                    ; preds = %land.end.i.i
  %83 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6051
  %84 = call i1 @llvm.is.constant.i64(i64 %83) #10, !dbg !6054
  br i1 %84, label %if.else.i.i, label %if.then5.i.i18, !dbg !6055

if.then5.i.i18:                                   ; preds = %if.then.i.i17
  %85 = load i32, i32* %sz.i.i, align 4, !dbg !6056
  %86 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6057
  call void @copy_overflow(i32 %85, i64 %86) #12, !dbg !6058
  br label %if.end9.i.i, !dbg !6058

if.else.i.i:                                      ; preds = %if.then.i.i17
  %87 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6059
  %tobool6.i.i = trunc i8 %87 to i1, !dbg !6059
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6061

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !6062
  br label %if.end.i.i19, !dbg !6062

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !6063
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i19, %if.then5.i.i18
  store i1 false, i1* %retval.i.i12, align 1, !dbg !6064
  br label %check_copy_size.exit.i, !dbg !6064

if.end10.i.i:                                     ; preds = %land.end.i.i
  %88 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5798
  %cmp11.i.i = icmp ugt i64 %88, 2147483647, !dbg !5798
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5798
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5798
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5798
  %89 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6065
  %tobool17.i.i = icmp ne i32 %89, 0, !dbg !6065
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6065
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6065
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6065
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5798

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !6067, !srcloc !6070
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !6071, !srcloc !6073
  br label %if.end31.i.i, !dbg !6074

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %90 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5798
  %tobool32.i.i = icmp ne i32 %90, 0, !dbg !5798
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5798
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5798
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5798
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6065
  %91 = load i64, i64* %tmp.i.i, align 8, !dbg !5798
  %tobool38.i.i = icmp ne i64 %91, 0, !dbg !6075
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6076

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i12, align 1, !dbg !6077
  br label %check_copy_size.exit.i, !dbg !6077

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %92 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6078
  %93 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6079
  %94 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6080
  %tobool41.i.i = trunc i8 %94 to i1, !dbg !6080
  call void @check_object_size(i8* %92, i64 %93, i1 zeroext %tobool41.i.i) #12, !dbg !6081
  store i1 true, i1* %retval.i.i12, align 1, !dbg !6082
  br label %check_copy_size.exit.i, !dbg !6082

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %95 = load i1, i1* %retval.i.i12, align 1, !dbg !6083
  %lnot.i = xor i1 %95, true, !dbg !6046
  %lnot.ext.i = zext i1 %95 to i32, !dbg !6046
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6046
  br i1 %95, label %if.then.i20, label %copy_from_user.exit, !dbg !6084

if.then.i20:                                      ; preds = %check_copy_size.exit.i
  %96 = load i8*, i8** %to.addr.i, align 8, !dbg !6085
  %97 = load i8*, i8** %from.addr.i, align 8, !dbg !6086
  %98 = load i64, i64* %n.addr.i, align 8, !dbg !6087
  %call2.i = call i64 @_copy_from_user(i8* %96, i8* %97, i64 %98) #12, !dbg !6088
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6089
  br label %copy_from_user.exit, !dbg !6090

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i20
  %99 = load i64, i64* %n.addr.i, align 8, !dbg !6091
  %tobool = icmp ne i64 %99, 0, !dbg !6092
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !6093

if.then7:                                         ; preds = %copy_from_user.exit
  %100 = load i8*, i8** %kbuf, align 8, !dbg !6094
  call void @kfree(i8* %100) #9, !dbg !6096
  %101 = load i64, i64* %n, align 8, !dbg !6097
  %tobool8 = icmp ne i64 %101, 0, !dbg !6097
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !6097

cond.true:                                        ; preds = %if.then7
  %102 = load i64, i64* %n, align 8, !dbg !6098
  br label %cond.end, !dbg !6097

cond.false:                                       ; preds = %if.then7
  br label %cond.end, !dbg !6097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %102, %cond.true ], [ -14, %cond.false ], !dbg !6097
  store i64 %cond, i64* %retval, align 8, !dbg !6099
  br label %return, !dbg !6099

if.end9:                                          ; preds = %copy_from_user.exit
  %103 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !6100
  %104 = load i8*, i8** %kbuf, align 8, !dbg !6101
  %105 = load i64, i64* %size, align 8, !dbg !6102
  %conv = trunc i64 %105 to i32, !dbg !6102
  call void @pti_write_to_aperture(%struct.pti_masterchannel* %103, i8* %104, i32 %conv) #9, !dbg !6103
  %106 = load i64, i64* %size, align 8, !dbg !6104
  %107 = load i64, i64* %n, align 8, !dbg !6105
  %add = add i64 %107, %106, !dbg !6105
  store i64 %add, i64* %n, align 8, !dbg !6105
  %108 = load i64, i64* %size, align 8, !dbg !6106
  %109 = load i8*, i8** %tmp, align 8, !dbg !6107
  %add.ptr = getelementptr i8, i8* %109, i64 %108, !dbg !6107
  store i8* %add.ptr, i8** %tmp, align 8, !dbg !6107
  br label %do.cond, !dbg !6108

do.cond:                                          ; preds = %if.end9
  %110 = load i64, i64* %len.addr, align 8, !dbg !6109
  %111 = load i64, i64* %n, align 8, !dbg !6110
  %cmp10 = icmp ugt i64 %110, %111, !dbg !6111
  br i1 %cmp10, label %do.body, label %do.end, !dbg !6108, !llvm.loop !6112

do.end:                                           ; preds = %do.cond
  %112 = load i8*, i8** %kbuf, align 8, !dbg !6114
  call void @kfree(i8* %112) #9, !dbg !6115
  %113 = load i64, i64* %len.addr, align 8, !dbg !6116
  store i64 %113, i64* %retval, align 8, !dbg !6117
  br label %return, !dbg !6117

return:                                           ; preds = %do.end, %cond.end, %if.then
  %114 = load i64, i64* %retval, align 8, !dbg !6118
  ret i64 %114, !dbg !6118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_char_open(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !6119 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %mc = alloca %struct.pti_masterchannel*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc, metadata !6124, metadata !DIExpression()), !dbg !6125
  %call = call %struct.pti_masterchannel* @pti_request_masterchannel(i8 zeroext 0, i8* null) #9, !dbg !6126
  store %struct.pti_masterchannel* %call, %struct.pti_masterchannel** %mc, align 8, !dbg !6127
  %0 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !6128
  %cmp = icmp eq %struct.pti_masterchannel* %0, null, !dbg !6130
  br i1 %cmp, label %if.then, label %if.end, !dbg !6131

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6132
  br label %return, !dbg !6132

if.end:                                           ; preds = %entry
  %1 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !6133
  %2 = bitcast %struct.pti_masterchannel* %1 to i8*, !dbg !6133
  %3 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6134
  %private_data = getelementptr inbounds %struct.file, %struct.file* %3, i32 0, i32 15, !dbg !6135
  store i8* %2, i8** %private_data, align 8, !dbg !6136
  store i32 0, i32* %retval, align 4, !dbg !6137
  br label %return, !dbg !6137

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !6138
  ret i32 %4, !dbg !6138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_char_release(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !6139 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6142, metadata !DIExpression()), !dbg !6143
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6144
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !6145
  %1 = load i8*, i8** %private_data, align 8, !dbg !6145
  %2 = bitcast i8* %1 to %struct.pti_masterchannel*, !dbg !6144
  call void @pti_release_masterchannel(%struct.pti_masterchannel* %2) #9, !dbg !6146
  %3 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6147
  %private_data1 = getelementptr inbounds %struct.file, %struct.file* %3, i32 0, i32 15, !dbg !6148
  store i8* null, i8** %private_data1, align 8, !dbg !6149
  ret i32 0, !dbg !6150
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6151 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6158, metadata !DIExpression()), !dbg !6160
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6160
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6161
  %tobool = icmp ne i32 %0, 0, !dbg !6161
  %lnot = xor i1 %tobool, true, !dbg !6161
  %lnot1 = xor i1 %lnot, true, !dbg !6161
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6161
  %conv = sext i32 %lnot.ext to i64, !dbg !6161
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6161
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6160

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6163

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6165

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6163
  %2 = load i64, i64* %count.addr, align 8, !dbg !6163
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !6163
  br label %do.body4, !dbg !6163

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6167

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6169

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6167

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !6171, !srcloc !6173
  br label %do.end8, !dbg !6171

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !6174, !srcloc !6176
  br label %do.body9, !dbg !6167

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6177

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6167

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6163

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6179

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6163

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6163

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6160
  %tobool15 = icmp ne i32 %3, 0, !dbg !6160
  %lnot16 = xor i1 %tobool15, true, !dbg !6160
  %lnot18 = xor i1 %lnot16, true, !dbg !6160
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6160
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6160
  store i64 %conv20, i64* %tmp, align 8, !dbg !6161
  %4 = load i64, i64* %tmp, align 8, !dbg !6160
  ret void, !dbg !6181
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !6182 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  ret void, !dbg !6191
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6192 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6197, metadata !DIExpression()), !dbg !6198
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6199
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6200
  %1 = load i8*, i8** %name, align 8, !dbg !6200
  ret i8* %1, !dbg !6201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6202 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6209
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6210
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6211
  store i8* %0, i8** %driver_data, align 8, !dbg !6212
  ret void, !dbg !6213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_port_shutdown(%struct.tty_port* %port) #0 !dbg !6214 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !6217
  %tty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 1, !dbg !6219
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !6219
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 5, !dbg !6220
  %2 = load i32, i32* %index, align 8, !dbg !6220
  %cmp = icmp eq i32 %2, 0, !dbg !6221
  br i1 %cmp, label %if.then, label %if.end, !dbg !6222

if.then:                                          ; preds = %entry
  call void @console_stop(%struct.console* @pti_console) #9, !dbg !6223
  br label %if.end, !dbg !6223

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_port_activate(%struct.tty_port* %port, %struct.tty_struct* %tty) #0 !dbg !6225 {
entry:
  %port.addr = alloca %struct.tty_port*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %port, %struct.tty_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_port** %port.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  %0 = load %struct.tty_port*, %struct.tty_port** %port.addr, align 8, !dbg !6230
  %tty1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i32 0, i32 1, !dbg !6232
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8, !dbg !6232
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 5, !dbg !6233
  %2 = load i32, i32* %index, align 8, !dbg !6233
  %cmp = icmp eq i32 %2, 0, !dbg !6234
  br i1 %cmp, label %if.then, label %if.end, !dbg !6235

if.then:                                          ; preds = %entry
  call void @console_start(%struct.console* @pti_console) #9, !dbg !6236
  br label %if.end, !dbg !6236

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6237
}

; Function Attrs: noredzone
declare dso_local void @console_stop(%struct.console*) #2

; Function Attrs: noredzone
declare dso_local void @console_start(%struct.console*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_console_write(%struct.console* %c, i8* %buf, i32 %len) #0 !dbg !4507 {
entry:
  %c.addr = alloca %struct.console*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.console* %c, %struct.console** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console** %c.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load i32, i32* @pti_console_channel, align 4, !dbg !6244
  %conv = trunc i32 %0 to i8, !dbg !6244
  store i8 %conv, i8* getelementptr inbounds (%struct.pti_masterchannel, %struct.pti_masterchannel* @pti_console_write.mc, i32 0, i32 1), align 1, !dbg !6245
  %1 = load i32, i32* @pti_console_channel, align 4, !dbg !6246
  %add = add i32 %1, 1, !dbg !6247
  %and = and i32 %add, 127, !dbg !6248
  store i32 %and, i32* @pti_console_channel, align 4, !dbg !6249
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6250
  %3 = load i32, i32* %len.addr, align 4, !dbg !6251
  call void @pti_write_full_frame_to_aperture(%struct.pti_masterchannel* @pti_console_write.mc, i8* %2, i32 %3) #9, !dbg !6252
  ret void, !dbg !6253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_driver* @pti_console_device(%struct.console* %c, i32* %index) #0 !dbg !6254 {
entry:
  %c.addr = alloca %struct.console*, align 8
  %index.addr = alloca i32*, align 8
  store %struct.console* %c, %struct.console** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console** %c.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  store i32* %index, i32** %index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %index.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  %0 = load %struct.console*, %struct.console** %c.addr, align 8, !dbg !6259
  %index1 = getelementptr inbounds %struct.console, %struct.console* %0, i32 0, i32 9, !dbg !6260
  %1 = load i16, i16* %index1, align 2, !dbg !6260
  %conv = sext i16 %1 to i32, !dbg !6259
  %2 = load i32*, i32** %index.addr, align 8, !dbg !6261
  store i32 %conv, i32* %2, align 4, !dbg !6262
  %3 = load %struct.tty_driver*, %struct.tty_driver** @pti_tty_driver, align 8, !dbg !6263
  ret %struct.tty_driver* %3, !dbg !6264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_console_setup(%struct.console* %c, i8* %opts) #0 !dbg !6265 {
entry:
  %c.addr = alloca %struct.console*, align 8
  %opts.addr = alloca i8*, align 8
  store %struct.console* %c, %struct.console** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console** %c.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  store i8* %opts, i8** %opts.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %opts.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i32 0, i32* @pti_console_channel, align 4, !dbg !6270
  store i32 0, i32* @pti_control_channel, align 4, !dbg !6271
  ret i32 0, !dbg !6272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_write_full_frame_to_aperture(%struct.pti_masterchannel* %mc, i8* %buf, i32 %len) #0 !dbg !6273 {
entry:
  %mc.addr = alloca %struct.pti_masterchannel*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.pti_masterchannel* %mc, %struct.pti_masterchannel** %mc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pti_masterchannel** %mc.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  %0 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !6282
  call void @pti_control_frame_built_and_sent(%struct.pti_masterchannel* %0, i8* null) #9, !dbg !6283
  %1 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc.addr, align 8, !dbg !6284
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6285
  %3 = load i32, i32* %len.addr, align 4, !dbg !6286
  call void @pti_write_to_aperture(%struct.pti_masterchannel* %1, i8* %2, i32 %3) #9, !dbg !6287
  ret void, !dbg !6288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #0 !dbg !6289 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6294
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6295
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6296
  ret i8* %call, !dbg !6297
}

; Function Attrs: noredzone
declare dso_local i32 @unregister_console(%struct.console*) #2

; Function Attrs: noredzone
declare dso_local void @tty_unregister_device(%struct.tty_driver*, i32) #2

; Function Attrs: noredzone
declare dso_local void @tty_port_destroy(%struct.tty_port*) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6298 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6303
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6304
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6304
  ret i8* %1, !dbg !6305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_driver* @alloc_tty_driver(i32 %lines) #0 !dbg !6306 {
entry:
  %retval = alloca %struct.tty_driver*, align 8
  %lines.addr = alloca i32, align 4
  %ret = alloca %struct.tty_driver*, align 8
  store i32 %lines, i32* %lines.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lines.addr, metadata !6309, metadata !DIExpression()), !dbg !6310
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %ret, metadata !6311, metadata !DIExpression()), !dbg !6312
  %0 = load i32, i32* %lines.addr, align 4, !dbg !6313
  %call = call %struct.tty_driver* @__tty_alloc_driver(i32 %0, %struct.module* null, i64 0) #9, !dbg !6313
  store %struct.tty_driver* %call, %struct.tty_driver** %ret, align 8, !dbg !6312
  %1 = load %struct.tty_driver*, %struct.tty_driver** %ret, align 8, !dbg !6314
  %2 = bitcast %struct.tty_driver* %1 to i8*, !dbg !6314
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #9, !dbg !6316
  br i1 %call1, label %if.then, label %if.end, !dbg !6317

if.then:                                          ; preds = %entry
  store %struct.tty_driver* null, %struct.tty_driver** %retval, align 8, !dbg !6318
  br label %return, !dbg !6318

if.end:                                           ; preds = %entry
  %3 = load %struct.tty_driver*, %struct.tty_driver** %ret, align 8, !dbg !6319
  store %struct.tty_driver* %3, %struct.tty_driver** %retval, align 8, !dbg !6320
  br label %return, !dbg !6320

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.tty_driver*, %struct.tty_driver** %retval, align 8, !dbg !6321
  ret %struct.tty_driver* %4, !dbg !6321
}

; Function Attrs: noredzone
declare dso_local void @tty_set_operations(%struct.tty_driver*, %struct.tty_operations*) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.tty_driver* @__tty_alloc_driver(i32, %struct.module*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6322 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6328
  %1 = ptrtoint i8* %0 to i64, !dbg !6328
  %2 = inttoptr i64 %1 to i8*, !dbg !6328
  %3 = ptrtoint i8* %2 to i64, !dbg !6328
  %cmp = icmp uge i64 %3, -4095, !dbg !6328
  %lnot = xor i1 %cmp, true, !dbg !6328
  %lnot1 = xor i1 %lnot, true, !dbg !6328
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6328
  %conv = sext i32 %lnot.ext to i64, !dbg !6328
  %tobool = icmp ne i64 %conv, 0, !dbg !6328
  ret i1 %tobool, !dbg !6329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_tty_install(%struct.tty_driver* %driver, %struct.tty_struct* %tty) #0 !dbg !6330 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !6331
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !6336
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !6337
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !6338
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !6339
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !6341
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !6343
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !6346
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !6347
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !6348
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !6349
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !6350
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !6351
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !6352
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !6353
  %retval = alloca i32, align 4
  %driver.addr = alloca %struct.tty_driver*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %idx = alloca i32, align 4
  %pti_tty_data = alloca %struct.pti_tty*, align 8
  %ret = alloca i32, align 4
  store %struct.tty_driver* %driver, %struct.tty_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_driver** %driver.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6360
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 5, !dbg !6361
  %1 = load i32, i32* %index, align 8, !dbg !6361
  store i32 %1, i32* %idx, align 4, !dbg !6359
  call void @llvm.dbg.declare(metadata %struct.pti_tty** %pti_tty_data, metadata !6362, metadata !DIExpression()), !dbg !6367
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6368, metadata !DIExpression()), !dbg !6369
  %2 = load %struct.tty_driver*, %struct.tty_driver** %driver.addr, align 8, !dbg !6370
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6371
  %call = call i32 @tty_standard_install(%struct.tty_driver* %2, %struct.tty_struct* %3) #9, !dbg !6372
  store i32 %call, i32* %ret, align 4, !dbg !6369
  %4 = load i32, i32* %ret, align 4, !dbg !6373
  %cmp = icmp eq i32 %4, 0, !dbg !6374
  br i1 %cmp, label %if.then, label %if.end14, !dbg !6375

if.then:                                          ; preds = %entry
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6376
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #10, !dbg !6377
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !6378

if.then.i:                                        ; preds = %if.then
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !6379
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !6380
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6381

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !6382
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !6383
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6384
  %call.i.i = call i32 @get_order(i64 %10) #11, !dbg !6385
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6350
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !6386
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6387
  %13 = load i32, i32* %order.i.i, align 4, !dbg !6388
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6389
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6390
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6391
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #12, !dbg !6392
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6392
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6392
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6392
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6392
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6393
  br label %kmalloc.exit, !dbg !6393

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !6394
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6395
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !6395
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6396

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6397
  br label %kmalloc_index.exit.i, !dbg !6397

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6398
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !6399
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6400

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6401
  br label %kmalloc_index.exit.i, !dbg !6401

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6402
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !6403
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6404

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6405
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !6406
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6407

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6408
  br label %kmalloc_index.exit.i, !dbg !6408

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6409
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !6410
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6411

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6412
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !6413
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6414

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6415
  br label %kmalloc_index.exit.i, !dbg !6415

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6416
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !6417
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6418

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6419
  br label %kmalloc_index.exit.i, !dbg !6419

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6420
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !6421
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6422

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6423
  br label %kmalloc_index.exit.i, !dbg !6423

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6424
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !6425
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6426

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6427
  br label %kmalloc_index.exit.i, !dbg !6427

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6428
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !6429
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6430

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6431
  br label %kmalloc_index.exit.i, !dbg !6431

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6432
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !6433
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6434

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6435
  br label %kmalloc_index.exit.i, !dbg !6435

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6436
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !6437
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6438

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6439
  br label %kmalloc_index.exit.i, !dbg !6439

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6440
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !6441
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6442

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6443
  br label %kmalloc_index.exit.i, !dbg !6443

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6444
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !6445
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6446

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6447
  br label %kmalloc_index.exit.i, !dbg !6447

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6448
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !6449
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6450

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6451
  br label %kmalloc_index.exit.i, !dbg !6451

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6452
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !6453
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6454

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6455
  br label %kmalloc_index.exit.i, !dbg !6455

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6456
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !6457
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6458

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6459
  br label %kmalloc_index.exit.i, !dbg !6459

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6460
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !6461
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6462

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6463
  br label %kmalloc_index.exit.i, !dbg !6463

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6464
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !6465
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6466

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6467
  br label %kmalloc_index.exit.i, !dbg !6467

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6468
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !6469
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6470

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6471
  br label %kmalloc_index.exit.i, !dbg !6471

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6472
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !6473
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6474

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6475
  br label %kmalloc_index.exit.i, !dbg !6475

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6476
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !6477
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6478

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6479
  br label %kmalloc_index.exit.i, !dbg !6479

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6480
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !6481
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6482

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6483
  br label %kmalloc_index.exit.i, !dbg !6483

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6484
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !6485
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6486

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6487
  br label %kmalloc_index.exit.i, !dbg !6487

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6488
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !6489
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6490

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6491
  br label %kmalloc_index.exit.i, !dbg !6491

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6492
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !6493
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6494

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6495
  br label %kmalloc_index.exit.i, !dbg !6495

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6496
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !6497
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6498

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6499
  br label %kmalloc_index.exit.i, !dbg !6499

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6500
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !6501
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6502

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6503
  br label %kmalloc_index.exit.i, !dbg !6503

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6504
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !6505
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6506

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6507
  br label %kmalloc_index.exit.i, !dbg !6507

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6508
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !6509
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6510

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6511
  br label %kmalloc_index.exit.i, !dbg !6511

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6512, !srcloc !4800
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #10, !dbg !6513, !srcloc !4804
  unreachable, !dbg !6514

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !6515
  store i32 %48, i32* %index.i, align 4, !dbg !6516
  %49 = load i32, i32* %index.i, align 4, !dbg !6517
  %tobool.i = icmp ne i32 %49, 0, !dbg !6517
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6518

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6519
  br label %kmalloc.exit, !dbg !6519

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !6520
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6521
  %and.i.i = and i32 %51, 17, !dbg !6521
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6521
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6521
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6521
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6521
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6522

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6523
  br label %kmalloc_type.exit.i, !dbg !6523

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6524
  %and2.i.i = and i32 %52, 1, !dbg !6525
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6524
  %53 = zext i1 %tobool3.i.i to i64, !dbg !6524
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6524
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6526
  br label %kmalloc_type.exit.i, !dbg !6526

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !6527
  %idxprom.i = zext i32 %54 to i64, !dbg !6528
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6528
  %55 = load i32, i32* %index.i, align 4, !dbg !6529
  %idxprom6.i = zext i32 %55 to i64, !dbg !6528
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6528
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6528
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !6530
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !6531
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6532
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6533
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #12, !dbg !6534
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6534
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6534
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6534
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6534
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6338
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6535
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6536
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6537
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6538
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #12, !dbg !6539
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6540
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !6541
  store i8* %65, i8** %retval.i, align 8, !dbg !6542
  br label %kmalloc.exit, !dbg !6542

if.end9.i:                                        ; preds = %if.then
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !6543
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !6544
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #12, !dbg !6545
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6545
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6545
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6545
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6545
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6546
  br label %kmalloc.exit, !dbg !6546

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !6547
  %69 = bitcast i8* %68 to %struct.pti_tty*, !dbg !6548
  store %struct.pti_tty* %69, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6549
  %70 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6550
  %cmp2 = icmp eq %struct.pti_tty* %70, null, !dbg !6552
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !6553

if.then3:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !6554
  br label %return, !dbg !6554

if.end:                                           ; preds = %kmalloc.exit
  %71 = load i32, i32* %idx, align 4, !dbg !6555
  %cmp4 = icmp eq i32 %71, 0, !dbg !6557
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !6558

if.then5:                                         ; preds = %if.end
  %call6 = call %struct.pti_masterchannel* @pti_request_masterchannel(i8 zeroext 0, i8* null) #9, !dbg !6559
  %72 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6560
  %mc = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %72, i32 0, i32 0, !dbg !6561
  store %struct.pti_masterchannel* %call6, %struct.pti_masterchannel** %mc, align 8, !dbg !6562
  br label %if.end9, !dbg !6560

if.else:                                          ; preds = %if.end
  %call7 = call %struct.pti_masterchannel* @pti_request_masterchannel(i8 zeroext 2, i8* null) #9, !dbg !6563
  %73 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6564
  %mc8 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %73, i32 0, i32 0, !dbg !6565
  store %struct.pti_masterchannel* %call7, %struct.pti_masterchannel** %mc8, align 8, !dbg !6566
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %74 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6567
  %mc10 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %74, i32 0, i32 0, !dbg !6569
  %75 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc10, align 8, !dbg !6569
  %cmp11 = icmp eq %struct.pti_masterchannel* %75, null, !dbg !6570
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !6571

if.then12:                                        ; preds = %if.end9
  %76 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6572
  %77 = bitcast %struct.pti_tty* %76 to i8*, !dbg !6572
  call void @kfree(i8* %77) #9, !dbg !6574
  store i32 -6, i32* %retval, align 4, !dbg !6575
  br label %return, !dbg !6575

if.end13:                                         ; preds = %if.end9
  %78 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6576
  %79 = bitcast %struct.pti_tty* %78 to i8*, !dbg !6576
  %80 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6577
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %80, i32 0, i32 37, !dbg !6578
  store i8* %79, i8** %driver_data, align 8, !dbg !6579
  br label %if.end14, !dbg !6580

if.end14:                                         ; preds = %if.end13, %entry
  %81 = load i32, i32* %ret, align 4, !dbg !6581
  store i32 %81, i32* %retval, align 4, !dbg !6582
  br label %return, !dbg !6582

return:                                           ; preds = %if.end14, %if.then12, %if.then3
  %82 = load i32, i32* %retval, align 4, !dbg !6583
  ret i32 %82, !dbg !6583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_tty_driver_open(%struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !6584 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6585, metadata !DIExpression()), !dbg !6586
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6587, metadata !DIExpression()), !dbg !6588
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6589
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 44, !dbg !6590
  %1 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !6590
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6591
  %3 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6592
  %call = call i32 @tty_port_open(%struct.tty_port* %1, %struct.tty_struct* %2, %struct.file* %3) #9, !dbg !6593
  ret i32 %call, !dbg !6594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_tty_driver_close(%struct.tty_struct* %tty, %struct.file* %filp) #0 !dbg !6595 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %filp.addr = alloca %struct.file*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6596, metadata !DIExpression()), !dbg !6597
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6598, metadata !DIExpression()), !dbg !6599
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6600
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 44, !dbg !6601
  %1 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !6601
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6602
  %3 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6603
  call void @tty_port_close(%struct.tty_port* %1, %struct.tty_struct* %2, %struct.file* %3) #9, !dbg !6604
  ret void, !dbg !6605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pti_tty_cleanup(%struct.tty_struct* %tty) #0 !dbg !6606 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %pti_tty_data = alloca %struct.pti_tty*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6607, metadata !DIExpression()), !dbg !6608
  call void @llvm.dbg.declare(metadata %struct.pti_tty** %pti_tty_data, metadata !6609, metadata !DIExpression()), !dbg !6610
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6611
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6612
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6612
  %2 = bitcast i8* %1 to %struct.pti_tty*, !dbg !6611
  store %struct.pti_tty* %2, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6610
  %3 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6613
  %cmp = icmp eq %struct.pti_tty* %3, null, !dbg !6615
  br i1 %cmp, label %if.then, label %if.end, !dbg !6616

if.then:                                          ; preds = %entry
  br label %return, !dbg !6617

if.end:                                           ; preds = %entry
  %4 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6618
  %mc = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %4, i32 0, i32 0, !dbg !6619
  %5 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !6619
  call void @pti_release_masterchannel(%struct.pti_masterchannel* %5) #9, !dbg !6620
  %6 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6621
  %7 = bitcast %struct.pti_tty* %6 to i8*, !dbg !6621
  call void @kfree(i8* %7) #9, !dbg !6622
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6623
  %driver_data1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 37, !dbg !6624
  store i8* null, i8** %driver_data1, align 8, !dbg !6625
  br label %return, !dbg !6626

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_tty_driver_write(%struct.tty_struct* %tty, i8* %buf, i32 %len) #0 !dbg !6627 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pti_tty_data = alloca %struct.pti_tty*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6628, metadata !DIExpression()), !dbg !6629
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6630, metadata !DIExpression()), !dbg !6631
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6632, metadata !DIExpression()), !dbg !6633
  call void @llvm.dbg.declare(metadata %struct.pti_tty** %pti_tty_data, metadata !6634, metadata !DIExpression()), !dbg !6635
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6636
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 37, !dbg !6637
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6637
  %2 = bitcast i8* %1 to %struct.pti_tty*, !dbg !6636
  store %struct.pti_tty* %2, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6635
  %3 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6638
  %cmp = icmp ne %struct.pti_tty* %3, null, !dbg !6640
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6641

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6642
  %mc = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %4, i32 0, i32 0, !dbg !6643
  %5 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc, align 8, !dbg !6643
  %cmp1 = icmp ne %struct.pti_masterchannel* %5, null, !dbg !6644
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6645

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.pti_tty*, %struct.pti_tty** %pti_tty_data, align 8, !dbg !6646
  %mc2 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %6, i32 0, i32 0, !dbg !6648
  %7 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %mc2, align 8, !dbg !6648
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !6649
  %9 = load i32, i32* %len.addr, align 4, !dbg !6650
  call void @pti_write_to_aperture(%struct.pti_masterchannel* %7, i8* %8, i32 %9) #9, !dbg !6651
  %10 = load i32, i32* %len.addr, align 4, !dbg !6652
  store i32 %10, i32* %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -14, i32* %retval, align 4, !dbg !6654
  br label %return, !dbg !6654

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6655
  ret i32 %11, !dbg !6655
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pti_tty_write_room(%struct.tty_struct* %tty) #0 !dbg !6656 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6657, metadata !DIExpression()), !dbg !6658
  ret i32 2048, !dbg !6659
}

; Function Attrs: noredzone
declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_port_open(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #2

; Function Attrs: noredzone
declare dso_local void @tty_port_close(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4517, !4518, !4519, !4520}
!llvm.ident = !{!4521}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "alloclock", scope: !2, file: !3, line: 69, type: !729, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !4125, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/misc/pti.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !36, !43, !51, !57, !63, !70, !76, !85, !93, !100}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !31, line: 44, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !37, line: 343, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 524, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 502, baseType: !7, size: 32, elements: !52)
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !{!106, !107, !109, !110, !111, !112, !124, !4123, !2652, !122, !4124, !631}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !108, line: 148, baseType: !7)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !114, line: 640, size: 48640, elements: !115)
!114 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !126, !129, !130, !140, !141, !142, !143, !144, !145, !146, !147, !151, !185, !197, !307, !308, !309, !320, !321, !323, !324, !2615, !2616, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2693, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2708, !2709, !2710, !2712, !2713, !2714, !2715, !2716, !2717, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2741, !2746, !2747, !2748, !2749, !2750, !2752, !2755, !2758, !2761, !2764, !2767, !3684, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3730, !3731, !3732, !3733, !3734, !3739, !3740, !3741, !3744, !3745, !3748, !3751, !3754, !3755, !3787, !3790, !3791, !3870, !3871, !3874, !3875, !3878, !3879, !3880, !3884, !3885, !3886, !3899, !3900, !3901, !3911, !3916, !3917, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !113, file: !114, line: 646, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !118, line: 56, size: 128, elements: !119)
!118 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !118, line: 57, baseType: !110, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !117, file: !118, line: 58, baseType: !122, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !125, line: 27, baseType: !7)
!125 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !113, file: !114, line: 649, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!128 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !113, file: !114, line: 657, baseType: !106, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !113, file: !114, line: 658, baseType: !131, size: 32, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !132, line: 113, baseType: !133)
!132 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !132, line: 111, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !133, file: !132, line: 112, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 168, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 166, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !137, file: !108, line: 167, baseType: !109, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !114, line: 660, baseType: !7, size: 32, offset: 288)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !113, file: !114, line: 661, baseType: !7, size: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !113, file: !114, line: 684, baseType: !109, size: 32, offset: 352)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !113, file: !114, line: 686, baseType: !109, size: 32, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !113, file: !114, line: 687, baseType: !109, size: 32, offset: 416)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !113, file: !114, line: 688, baseType: !109, size: 32, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !113, file: !114, line: 689, baseType: !7, size: 32, offset: 480)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !113, file: !114, line: 691, baseType: !148, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !114, line: 691, flags: DIFlagFwdDecl)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !113, file: !114, line: 692, baseType: !152, size: 832, offset: 576)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !114, line: 451, size: 832, elements: !153)
!153 = !{!154, !159, !167, !173, !174, !178, !179, !180, !181, !182}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !152, file: !114, line: 453, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !114, line: 325, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !155, file: !114, line: 326, baseType: !110, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !155, file: !114, line: 327, baseType: !122, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !152, file: !114, line: 454, baseType: !160, size: 192, align: 64, offset: 128)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !161, line: 24, size: 192, align: 64, elements: !162)
!161 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !160, file: !161, line: 25, baseType: !110, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !160, file: !161, line: 26, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !160, file: !161, line: 27, baseType: !165, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !152, file: !114, line: 455, baseType: !168, size: 128, offset: 320)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 178, size: 128, elements: !169)
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !108, line: 179, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !108, line: 179, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !152, file: !114, line: 456, baseType: !7, size: 32, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !152, file: !114, line: 458, baseType: !175, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !123, line: 23, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !125, line: 31, baseType: !177)
!177 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !152, file: !114, line: 459, baseType: !175, size: 64, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !152, file: !114, line: 460, baseType: !175, size: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !152, file: !114, line: 461, baseType: !175, size: 64, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !152, file: !114, line: 463, baseType: !175, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !152, file: !114, line: 465, baseType: !183, offset: 832)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !114, line: 415, elements: !184)
!184 = !{}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !113, file: !114, line: 693, baseType: !186, size: 384, offset: 1408)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !114, line: 489, size: 384, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !194, !195}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !186, file: !114, line: 490, baseType: !168, size: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !186, file: !114, line: 491, baseType: !110, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !186, file: !114, line: 492, baseType: !110, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !186, file: !114, line: 493, baseType: !7, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !186, file: !114, line: 494, baseType: !193, size: 16, offset: 288)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !186, file: !114, line: 495, baseType: !193, size: 16, offset: 304)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !186, file: !114, line: 497, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !113, file: !114, line: 697, baseType: !198, size: 1792, offset: 1792)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !114, line: 507, size: 1792, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !210, !211, !212, !213, !214, !215, !216, !304, !305}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !198, file: !114, line: 508, baseType: !160, size: 192, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !198, file: !114, line: 515, baseType: !175, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !198, file: !114, line: 516, baseType: !175, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !198, file: !114, line: 517, baseType: !175, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !198, file: !114, line: 518, baseType: !175, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !198, file: !114, line: 519, baseType: !175, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !198, file: !114, line: 526, baseType: !207, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !123, line: 22, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !125, line: 30, baseType: !209)
!209 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !198, file: !114, line: 527, baseType: !175, size: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !114, line: 528, baseType: !7, size: 32, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !198, file: !114, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !198, file: !114, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !198, file: !114, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !198, file: !114, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !198, file: !114, line: 563, baseType: !217, size: 512, offset: 704)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !218)
!218 = !{!219, !227, !228, !233, !297, !301, !302, !303}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !20, line: 119, baseType: !220, size: 256)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !221, line: 9, size: 256, elements: !222)
!221 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !221, line: 10, baseType: !160, size: 192, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !220, file: !221, line: 11, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !226, line: 29, baseType: !207)
!226 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !217, file: !20, line: 120, baseType: !225, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !217, file: !20, line: 121, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!19, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !217, file: !20, line: 122, baseType: !234, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !236)
!236 = !{!237, !265, !266, !270, !280, !281, !292, !296}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !235, file: !20, line: 160, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !240)
!240 = !{!241, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !239, file: !20, line: 215, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !243, line: 29, baseType: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !243, line: 20, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !244, file: !243, line: 21, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !248, line: 25, baseType: !249)
!248 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 25, elements: !184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !239, file: !20, line: 216, baseType: !7, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !239, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !239, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !239, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !239, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !239, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !239, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !239, file: !20, line: 233, baseType: !225, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !239, file: !20, line: 234, baseType: !232, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !239, file: !20, line: 235, baseType: !225, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !239, file: !20, line: 236, baseType: !232, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !239, file: !20, line: 237, baseType: !262, size: 4096, offset: 512)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !235, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !235, file: !20, line: 162, baseType: !267, size: 32, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 27, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !269, line: 96, baseType: !109)
!269 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !235, file: !20, line: 163, baseType: !271, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !272, line: 276, baseType: !273)
!272 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !272, line: 276, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !273, file: !272, line: 276, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !272, line: 70, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !272, line: 65, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !277, file: !272, line: 66, baseType: !7, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !235, file: !20, line: 164, baseType: !232, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !235, file: !20, line: 165, baseType: !282, size: 128, offset: 256)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !221, line: 14, size: 128, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !282, file: !221, line: 15, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !161, line: 125, size: 128, elements: !286)
!286 = !{!287, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !285, file: !161, line: 126, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !161, line: 31, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !288, file: !161, line: 32, baseType: !165, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !285, file: !161, line: 127, baseType: !165, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !235, file: !20, line: 166, baseType: !293, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!225}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !235, file: !20, line: 167, baseType: !225, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !217, file: !20, line: 123, baseType: !298, size: 8, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !123, line: 17, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !125, line: 21, baseType: !300)
!300 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !217, file: !20, line: 124, baseType: !298, size: 8, offset: 456)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !217, file: !20, line: 125, baseType: !298, size: 8, offset: 464)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !217, file: !20, line: 126, baseType: !298, size: 8, offset: 472)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !198, file: !114, line: 572, baseType: !217, size: 512, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !198, file: !114, line: 580, baseType: !306, size: 64, offset: 1728)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !113, file: !114, line: 721, baseType: !7, size: 32, offset: 3584)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !113, file: !114, line: 722, baseType: !109, size: 32, offset: 3616)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !113, file: !114, line: 723, baseType: !310, size: 64, offset: 3648)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !313, line: 17, baseType: !314)
!313 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !313, line: 17, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !314, file: !313, line: 17, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 1)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !113, file: !114, line: 724, baseType: !312, size: 64, offset: 3712)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !113, file: !114, line: 749, baseType: !322, offset: 3776)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !114, line: 290, elements: !184)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !113, file: !114, line: 751, baseType: !168, size: 128, offset: 3776)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !113, file: !114, line: 757, baseType: !325, size: 64, offset: 3904)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !327, line: 388, size: 7296, elements: !328)
!327 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !2611}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !327, line: 389, baseType: !330, size: 7296)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !327, line: 389, size: 7296, elements: !331)
!331 = !{!332, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2534, !2540, !2543, !2582, !2583, !2595, !2596, !2599, !2600, !2601, !2604, !2605, !2606, !2609, !2610}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !330, file: !327, line: 390, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !327, line: 305, size: 1472, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !351, !352, !357, !358, !361, !2480, !2481, !2482, !2483, !2484}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !334, file: !327, line: 308, baseType: !110, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !334, file: !327, line: 309, baseType: !110, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !334, file: !327, line: 313, baseType: !333, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !334, file: !327, line: 313, baseType: !333, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !334, file: !327, line: 315, baseType: !160, size: 192, align: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !334, file: !327, line: 323, baseType: !110, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !334, file: !327, line: 327, baseType: !325, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !334, file: !327, line: 333, baseType: !344, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !345, line: 284, baseType: !346)
!345 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !345, line: 284, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !346, file: !345, line: 284, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !350, line: 19, baseType: !110)
!350 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !334, file: !327, line: 334, baseType: !110, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !334, file: !327, line: 343, baseType: !353, size: 256, offset: 704)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !327, line: 340, size: 256, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !353, file: !327, line: 341, baseType: !160, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !353, file: !327, line: 342, baseType: !110, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !334, file: !327, line: 351, baseType: !168, size: 128, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !334, file: !327, line: 353, baseType: !359, size: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !327, line: 353, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !334, file: !327, line: 356, baseType: !362, size: 64, offset: 1152)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !365)
!365 = !{!366, !370, !371, !375, !379, !2454, !2458, !2462, !2466, !2467, !2468, !2472, !2476}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !364, file: !14, line: 558, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !333}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !364, file: !14, line: 559, baseType: !367, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !364, file: !14, line: 560, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!109, !333, !110}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !364, file: !14, line: 561, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!109, !333}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !364, file: !14, line: 562, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !327, line: 682, baseType: !7)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !399, !406, !412, !2448, !2449, !2451, !2453}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !385, file: !14, line: 509, baseType: !333, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !385, file: !14, line: 511, baseType: !107, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !385, file: !14, line: 512, baseType: !110, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !385, file: !14, line: 513, baseType: !110, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !385, file: !14, line: 514, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !345, line: 385, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 385, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !395, file: !345, line: 385, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !350, line: 15, baseType: !110)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !385, file: !14, line: 516, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !345, line: 359, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 359, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !402, file: !345, line: 359, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !350, line: 16, baseType: !110)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !385, file: !14, line: 519, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !350, line: 21, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 21, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !408, file: !350, line: 21, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !350, line: 14, baseType: !110)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !385, file: !14, line: 521, baseType: !413, size: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !327, line: 68, size: 512, align: 128, elements: !415)
!415 = !{!416, !417, !2440, !2447}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !327, line: 69, baseType: !110, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !327, line: 77, baseType: !418, size: 320, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !327, line: 77, size: 320, elements: !419)
!419 = !{!420, !2301, !2306, !2334, !2342, !2348, !2361, !2439}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 78, baseType: !421, size: 320)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 78, size: 320, elements: !422)
!422 = !{!423, !424, !2299, !2300}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !421, file: !327, line: 84, baseType: !168, size: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !421, file: !327, line: 86, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !77, line: 451, size: 1216, align: 64, elements: !427)
!427 = !{!428, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2294, !2295, !2296, !2297, !2298}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !426, file: !77, line: 452, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !77, line: 610, size: 4224, elements: !431)
!431 = !{!432, !434, !435, !443, !450, !451, !1822, !1823, !1824, !1825, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1866, !1874, !1875, !1876, !2188, !2189, !2190, !2191}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !77, line: 611, baseType: !433, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !108, line: 19, baseType: !193)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !77, line: 612, baseType: !193, size: 16, offset: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !77, line: 613, baseType: !436, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !437, line: 23, baseType: !438)
!437 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 21, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !438, file: !437, line: 22, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 32, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !269, line: 49, baseType: !7)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !77, line: 614, baseType: !444, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !437, line: 28, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 26, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !437, line: 27, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 33, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !269, line: 50, baseType: !7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !77, line: 615, baseType: !7, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !77, line: 622, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !77, line: 1864, size: 1536, align: 512, elements: !455)
!455 = !{!456, !1696, !1709, !1713, !1719, !1723, !1727, !1731, !1735, !1739, !1743, !1744, !1748, !1752, !1772, !1798, !1802, !1808, !1813, !1817, !1818}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !454, file: !77, line: 1865, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !429, !460, !7}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !462, line: 89, size: 1536, elements: !463)
!462 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !465, !470, !478, !479, !494, !495, !499, !518, !592, !1680, !1681, !1682, !1688, !1689, !1690}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !461, file: !462, line: 91, baseType: !7, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !461, file: !462, line: 92, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !272, line: 277, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !272, line: 277, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !272, line: 277, baseType: !276, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !461, file: !462, line: 93, baseType: !471, size: 128, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !472, line: 38, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 39, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !471, file: !472, line: 39, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !461, file: !462, line: 94, baseType: !460, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !461, file: !462, line: 95, baseType: !480, size: 128, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !462, line: 47, size: 128, elements: !481)
!481 = !{!482, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !462, line: 48, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !462, line: 48, size: 64, elements: !484)
!484 = !{!485, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !462, line: 49, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !462, line: 49, size: 64, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !486, file: !462, line: 50, baseType: !122, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !486, file: !462, line: 50, baseType: !122, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !483, file: !462, line: 52, baseType: !175, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !462, line: 54, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !461, file: !462, line: 96, baseType: !429, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !461, file: !462, line: 98, baseType: !496, size: 256, offset: 448)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !461, file: !462, line: 101, baseType: !500, size: 32, offset: 704)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !501, line: 25, size: 32, elements: !502)
!501 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !501, line: 26, baseType: !504, size: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !501, line: 26, size: 32, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !501, line: 30, baseType: !507, size: 32)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !501, line: 30, size: 32, elements: !508)
!508 = !{!509, !517}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !501, line: 31, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !243, line: 83, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !243, line: 71, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !243, line: 72, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !243, line: 72, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !514, file: !243, line: 73, baseType: !244)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !507, file: !501, line: 32, baseType: !109, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !461, file: !462, line: 102, baseType: !519, size: 64, offset: 768)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !462, line: 135, size: 1024, align: 512, elements: !522)
!522 = !{!523, !527, !528, !535, !544, !548, !552, !556, !557, !561, !566, !578, !586}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !521, file: !462, line: 136, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!109, !460, !7}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !521, file: !462, line: 137, baseType: !524, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !521, file: !462, line: 138, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!109, !532, !534}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !521, file: !462, line: 139, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!109, !532, !7, !539, !542}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !521, file: !462, line: 141, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!109, !532}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !521, file: !462, line: 142, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!109, !460}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !521, file: !462, line: 143, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !460}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !521, file: !462, line: 144, baseType: !553, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !521, file: !462, line: 145, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !460, !429}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !521, file: !462, line: 146, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !460, !565, !109}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !521, file: !462, line: 147, baseType: !567, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !572}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !462, line: 18, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !574, line: 8, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !573, file: !574, line: 9, baseType: !570, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !573, file: !574, line: 10, baseType: !460, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !521, file: !462, line: 148, baseType: !579, size: 64, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!109, !582, !584}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 30, baseType: !585)
!585 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !521, file: !462, line: 149, baseType: !587, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!460, !460, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !461, file: !462, line: 103, baseType: !593, size: 64, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !77, line: 1416, size: 9472, elements: !595)
!595 = !{!596, !597, !600, !601, !602, !605, !657, !1331, !1413, !1496, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1512, !1516, !1517, !1520, !1523, !1526, !1527, !1528, !1569, !1596, !1597, !1598, !1599, !1600, !1601, !1604, !1606, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1636, !1637, !1638, !1639, !1640, !1644, !1645, !1646, !1661, !1662, !1663, !1674, !1675, !1676, !1677, !1678, !1679}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !594, file: !77, line: 1417, baseType: !168, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !594, file: !77, line: 1418, baseType: !598, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !108, line: 16, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !108, line: 13, baseType: !122)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !594, file: !77, line: 1419, baseType: !300, size: 8, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !594, file: !77, line: 1420, baseType: !110, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !594, file: !77, line: 1421, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !108, line: 46, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !269, line: 88, baseType: !209)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !594, file: !77, line: 1422, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !77, line: 2228, size: 576, elements: !608)
!608 = !{!609, !610, !611, !618, !622, !626, !630, !634, !635, !645, !648, !649, !650, !654, !655, !656}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !77, line: 2229, baseType: !539, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !607, file: !77, line: 2230, baseType: !109, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !607, file: !77, line: 2238, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!109, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !617, line: 28, flags: DIFlagFwdDecl)
!617 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !607, file: !77, line: 2239, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !77, line: 70, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !607, file: !77, line: 2240, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!460, !606, !109, !539, !106}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !607, file: !77, line: 2242, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !593}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !607, file: !77, line: 2243, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !633, line: 76, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !77, line: 2244, baseType: !606, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !607, file: !77, line: 2245, baseType: !636, size: 64, offset: 512)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 182, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !636, file: !108, line: 183, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 186, size: 128, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !108, line: 187, baseType: !639, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !640, file: !108, line: 187, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !607, file: !77, line: 2247, baseType: !646, offset: 576)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !647, line: 187, elements: !184)
!647 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !607, file: !77, line: 2248, baseType: !646, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !607, file: !77, line: 2249, baseType: !646, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !607, file: !77, line: 2250, baseType: !651, offset: 576)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 3)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !607, file: !77, line: 2252, baseType: !646, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !607, file: !77, line: 2253, baseType: !646, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !607, file: !77, line: 2254, baseType: !646, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !594, file: !77, line: 1423, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !77, line: 1935, size: 1472, elements: !661)
!661 = !{!662, !666, !670, !671, !675, !681, !685, !686, !687, !691, !695, !696, !697, !698, !704, !709, !710, !1308, !1309, !1310, !1311, !1315, !1330}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !660, file: !77, line: 1936, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!429, !593}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !660, file: !77, line: 1937, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !429}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !660, file: !77, line: 1938, baseType: !667, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !660, file: !77, line: 1940, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !429, !109}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !660, file: !77, line: 1941, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!109, !429, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !77, line: 289, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !660, file: !77, line: 1942, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!109, !429}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !660, file: !77, line: 1943, baseType: !667, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !660, file: !77, line: 1944, baseType: !627, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !660, file: !77, line: 1945, baseType: !688, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!109, !593, !109}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !660, file: !77, line: 1946, baseType: !692, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!109, !593}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !660, file: !77, line: 1947, baseType: !692, size: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !660, file: !77, line: 1948, baseType: !692, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !660, file: !77, line: 1949, baseType: !692, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !660, file: !77, line: 1950, baseType: !699, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!109, !460, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !77, line: 57, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !660, file: !77, line: 1951, baseType: !705, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!109, !593, !708, !565}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !660, file: !77, line: 1952, baseType: !627, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !660, file: !77, line: 1954, baseType: !711, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!109, !714, !460}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !716, line: 16, size: 896, elements: !717)
!716 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !723, !724, !725, !726, !727, !728, !741, !763, !764, !1307}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !715, file: !716, line: 17, baseType: !565, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !715, file: !716, line: 18, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 55, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !269, line: 72, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !269, line: 16, baseType: !110)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !715, file: !716, line: 19, baseType: !720, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !716, line: 20, baseType: !720, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !715, file: !716, line: 21, baseType: !720, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !715, file: !716, line: 22, baseType: !603, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !715, file: !716, line: 23, baseType: !603, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !716, line: 24, baseType: !729, size: 192, offset: 448)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !730, line: 53, size: 192, elements: !731)
!730 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !739, !740}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !729, file: !730, line: 54, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !734, line: 13, baseType: !735)
!734 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 175, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 173, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !736, file: !108, line: 174, baseType: !207, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !729, file: !730, line: 55, baseType: !510, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !729, file: !730, line: 59, baseType: !168, size: 128, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !715, file: !716, line: 25, baseType: !742, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !716, line: 31, size: 256, elements: !745)
!745 = !{!746, !751, !755, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !744, file: !716, line: 32, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!106, !714, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !744, file: !716, line: 33, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !714, !106}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !716, line: 34, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!106, !714, !106, !750}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !744, file: !716, line: 35, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!109, !714, !106}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !715, file: !716, line: 26, baseType: !109, size: 32, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !715, file: !716, line: 27, baseType: !765, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !77, line: 916, size: 1856, align: 32, elements: !768)
!768 = !{!769, !787, !788, !789, !1054, !1055, !1056, !1057, !1058, !1060, !1061, !1062, !1092, !1289, !1298, !1299, !1300, !1301, !1302, !1303, !1306}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !767, file: !77, line: 920, baseType: !770, size: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !77, line: 917, size: 128, elements: !771)
!771 = !{!772, !778}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !770, file: !77, line: 918, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !774, line: 58, size: 64, elements: !775)
!774 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !774, line: 59, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !770, file: !77, line: 919, baseType: !779, size: 128, align: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 216, size: 128, align: 64, elements: !780)
!780 = !{!781, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !108, line: 217, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !779, file: !108, line: 218, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !782}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !767, file: !77, line: 921, baseType: !573, size: 128, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !767, file: !77, line: 922, baseType: !429, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !767, file: !77, line: 923, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !77, line: 1822, size: 2048, elements: !793)
!793 = !{!794, !795, !800, !807, !811, !839, !840, !844, !857, !858, !866, !870, !871, !875, !876, !880, !885, !886, !890, !894, !1009, !1013, !1017, !1021, !1022, !1028, !1032, !1037, !1041, !1045, !1049, !1053}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !792, file: !77, line: 1823, baseType: !631, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !792, file: !77, line: 1824, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!603, !799, !603, !109}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !792, file: !77, line: 1825, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!804, !799, !565, !720, !750}
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !108, line: 60, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !269, line: 73, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !269, line: 15, baseType: !128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !792, file: !77, line: 1826, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!804, !799, !539, !720, !750}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !792, file: !77, line: 1827, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!804, !815, !837}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !77, line: 320, size: 384, elements: !817)
!817 = !{!818, !819, !820, !824, !825, !826, !829, !830}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !816, file: !77, line: 321, baseType: !799, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !816, file: !77, line: 326, baseType: !603, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !816, file: !77, line: 327, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !815, !128, !128}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !816, file: !77, line: 328, baseType: !106, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !816, file: !77, line: 329, baseType: !109, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !816, file: !77, line: 330, baseType: !827, size: 16, offset: 288)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !123, line: 19, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !125, line: 24, baseType: !193)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !816, file: !77, line: 331, baseType: !827, size: 16, offset: 304)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !77, line: 332, baseType: !831, size: 64, offset: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !77, line: 332, size: 64, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !831, file: !77, line: 333, baseType: !7, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !831, file: !77, line: 334, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !77, line: 334, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !77, line: 64, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !792, file: !77, line: 1828, baseType: !812, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !792, file: !77, line: 1829, baseType: !841, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!109, !815, !584}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !792, file: !77, line: 1830, baseType: !845, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!109, !799, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !77, line: 1776, size: 128, elements: !850)
!850 = !{!851, !856}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !849, file: !77, line: 1777, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !77, line: 1773, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!109, !848, !539, !109, !603, !175, !7}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !849, file: !77, line: 1778, baseType: !603, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !792, file: !77, line: 1831, baseType: !845, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !792, file: !77, line: 1832, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!862, !799, !864}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !863, line: 52, baseType: !7)
!863 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !617, line: 27, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !792, file: !77, line: 1833, baseType: !867, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!128, !799, !7, !110}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !792, file: !77, line: 1834, baseType: !867, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !792, file: !77, line: 1835, baseType: !872, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!109, !799, !333}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !792, file: !77, line: 1836, baseType: !110, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !792, file: !77, line: 1837, baseType: !877, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!109, !429, !799}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !792, file: !77, line: 1838, baseType: !881, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!109, !799, !884}
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !77, line: 1007, baseType: !106)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !792, file: !77, line: 1839, baseType: !877, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !792, file: !77, line: 1840, baseType: !887, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!109, !799, !603, !603, !109}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !792, file: !77, line: 1841, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!109, !109, !799, !109}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !792, file: !77, line: 1842, baseType: !895, size: 64, offset: 1216)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!109, !799, !109, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !77, line: 1062, size: 1664, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !918, !919, !920, !921, !938, !939, !940, !953, !985}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !899, file: !77, line: 1063, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !899, file: !77, line: 1064, baseType: !168, size: 128, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !899, file: !77, line: 1065, baseType: !640, size: 128, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !899, file: !77, line: 1066, baseType: !168, size: 128, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !899, file: !77, line: 1069, baseType: !168, size: 128, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !899, file: !77, line: 1072, baseType: !884, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !899, file: !77, line: 1073, baseType: !7, size: 32, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !899, file: !77, line: 1074, baseType: !300, size: 8, offset: 672)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !899, file: !77, line: 1075, baseType: !7, size: 32, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !899, file: !77, line: 1076, baseType: !109, size: 32, offset: 736)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !899, file: !77, line: 1077, baseType: !912, size: 128, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !913, line: 40, baseType: !914)
!913 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !913, line: 36, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !913, line: 37, baseType: !510)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !914, file: !913, line: 38, baseType: !168, size: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !899, file: !77, line: 1078, baseType: !799, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !899, file: !77, line: 1079, baseType: !603, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !899, file: !77, line: 1080, baseType: !603, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !899, file: !77, line: 1082, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !77, line: 1314, size: 320, elements: !924)
!924 = !{!925, !933, !934, !935, !936, !937}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !923, file: !77, line: 1315, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !927, line: 20, baseType: !928)
!927 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 11, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !928, file: !927, line: 12, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !248, line: 33, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 31, elements: !184)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !923, file: !77, line: 1316, baseType: !109, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !923, file: !77, line: 1317, baseType: !109, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !923, file: !77, line: 1318, baseType: !922, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !923, file: !77, line: 1319, baseType: !799, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !923, file: !77, line: 1320, baseType: !779, size: 128, align: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !899, file: !77, line: 1084, baseType: !110, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !899, file: !77, line: 1085, baseType: !110, size: 64, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !899, file: !77, line: 1087, baseType: !941, size: 64, offset: 1280)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !77, line: 1011, size: 128, elements: !944)
!944 = !{!945, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !943, file: !77, line: 1012, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !898, !898}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !943, file: !77, line: 1013, baseType: !950, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !898}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !899, file: !77, line: 1088, baseType: !954, size: 64, offset: 1344)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !77, line: 1016, size: 512, elements: !957)
!957 = !{!958, !962, !966, !967, !971, !975, !979, !984}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !956, file: !77, line: 1017, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!884, !884}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !956, file: !77, line: 1018, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !884}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !956, file: !77, line: 1019, baseType: !950, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !956, file: !77, line: 1020, baseType: !968, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!109, !898, !109}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !956, file: !77, line: 1021, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!584, !898}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !956, file: !77, line: 1022, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!109, !898, !109, !171}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !956, file: !77, line: 1023, baseType: !980, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !898, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !956, file: !77, line: 1024, baseType: !972, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !899, file: !77, line: 1097, baseType: !986, size: 256, offset: 1408)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !77, line: 1089, size: 256, elements: !987)
!987 = !{!988, !997, !1003}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !986, file: !77, line: 1090, baseType: !989, size: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !990, line: 10, size: 256, elements: !991)
!990 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !993, !996}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !989, file: !990, line: 11, baseType: !122, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !989, file: !990, line: 12, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !990, line: 5, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !989, file: !990, line: 13, baseType: !168, size: 128, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !986, file: !77, line: 1091, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !990, line: 17, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !998, file: !990, line: 18, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !990, line: 16, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !986, file: !77, line: 1096, baseType: !1004, size: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !77, line: 1092, size: 192, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1004, file: !77, line: 1093, baseType: !168, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1004, file: !77, line: 1094, baseType: !109, size: 32, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1004, file: !77, line: 1095, baseType: !7, size: 32, offset: 160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !792, file: !77, line: 1843, baseType: !1010, size: 64, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!804, !799, !413, !109, !720, !750, !109}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !792, file: !77, line: 1844, baseType: !1014, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!110, !799, !110, !110, !110, !110}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !792, file: !77, line: 1845, baseType: !1018, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!109, !109}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !792, file: !77, line: 1846, baseType: !895, size: 64, offset: 1472)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !792, file: !77, line: 1847, baseType: !1023, size: 64, offset: 1536)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!804, !1026, !799, !750, !720, !7}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !114, line: 53, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !792, file: !77, line: 1848, baseType: !1029, size: 64, offset: 1600)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!804, !799, !750, !1026, !720, !7}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !792, file: !77, line: 1849, baseType: !1033, size: 64, offset: 1664)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!109, !799, !128, !1036, !983}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !792, file: !77, line: 1850, baseType: !1038, size: 64, offset: 1728)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!128, !799, !109, !603, !603}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !792, file: !77, line: 1852, baseType: !1042, size: 64, offset: 1792)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !714, !799}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !792, file: !77, line: 1856, baseType: !1046, size: 64, offset: 1856)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!804, !799, !603, !799, !603, !720, !7}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !792, file: !77, line: 1858, baseType: !1050, size: 64, offset: 1920)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!603, !799, !603, !799, !603, !603, !7}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !792, file: !77, line: 1861, baseType: !887, size: 64, offset: 1984)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !767, file: !77, line: 929, baseType: !510, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !767, file: !77, line: 930, baseType: !76, size: 32, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !767, file: !77, line: 931, baseType: !733, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !767, file: !77, line: 932, baseType: !7, size: 32, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !767, file: !77, line: 933, baseType: !1059, size: 32, offset: 544)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !108, line: 150, baseType: !7)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !767, file: !77, line: 934, baseType: !729, size: 192, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !767, file: !77, line: 935, baseType: !603, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !767, file: !77, line: 936, baseType: !1063, size: 192, offset: 832)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !77, line: 885, size: 192, elements: !1064)
!1064 = !{!1065, !1066, !1088, !1089, !1090, !1091}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !77, line: 886, baseType: !926)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1063, file: !77, line: 887, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !86, line: 59, size: 768, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1077, !1078, !1079, !1080}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1068, file: !86, line: 61, baseType: !131, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1068, file: !86, line: 62, baseType: !7, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !86, line: 63, baseType: !510, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1068, file: !86, line: 65, baseType: !1074, size: 256, offset: 64)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 256, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 4)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1068, file: !86, line: 66, baseType: !636, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1068, file: !86, line: 68, baseType: !912, size: 128, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1068, file: !86, line: 69, baseType: !779, size: 128, align: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1068, file: !86, line: 70, baseType: !1081, size: 128, offset: 640)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 128, elements: !318)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !86, line: 54, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1082, file: !86, line: 55, baseType: !109, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1082, file: !86, line: 56, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !86, line: 56, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1063, file: !77, line: 888, baseType: !85, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1063, file: !77, line: 889, baseType: !436, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1063, file: !77, line: 889, baseType: !436, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1063, file: !77, line: 890, baseType: !109, size: 32, offset: 160)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !767, file: !77, line: 937, baseType: !1093, size: 64, offset: 1024)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1096, line: 111, size: 1280, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1117, !1118, !1119, !1120, !1121, !1122, !1242, !1243, !1244, !1245, !1271, !1274, !1284}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1095, file: !1096, line: 112, baseType: !136, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1095, file: !1096, line: 120, baseType: !436, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1095, file: !1096, line: 121, baseType: !444, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1095, file: !1096, line: 122, baseType: !436, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1095, file: !1096, line: 123, baseType: !444, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1095, file: !1096, line: 124, baseType: !436, size: 32, offset: 160)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1095, file: !1096, line: 125, baseType: !444, size: 32, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1095, file: !1096, line: 126, baseType: !436, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1095, file: !1096, line: 127, baseType: !444, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1095, file: !1096, line: 128, baseType: !7, size: 32, offset: 288)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1095, file: !1096, line: 129, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1110, line: 26, baseType: !1111)
!1110 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1110, line: 24, size: 64, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1111, file: !1110, line: 25, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 2)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1095, file: !1096, line: 130, baseType: !1109, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1095, file: !1096, line: 131, baseType: !1109, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1095, file: !1096, line: 132, baseType: !1109, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1095, file: !1096, line: 133, baseType: !1109, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1095, file: !1096, line: 135, baseType: !300, size: 8, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1095, file: !1096, line: 137, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1125, line: 189, size: 1664, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !{!1127, !1128, !1133, !1138, !1146, !1149, !1150, !1157, !1158, !1159, !1160, !1163, !1164, !1165, !1167, !1168, !1206, !1227}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1124, file: !1125, line: 190, baseType: !131, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1124, file: !1125, line: 191, baseType: !1129, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1125, line: 28, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !108, line: 98, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !123, line: 20, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !125, line: 26, baseType: !109)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1125, line: 192, baseType: !1134, size: 192, offset: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1125, line: 192, size: 192, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1134, file: !1125, line: 193, baseType: !168, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1134, file: !1125, line: 194, baseType: !160, size: 192, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1124, file: !1125, line: 199, baseType: !1139, size: 256, offset: 256)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1140, line: 35, size: 256, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1139, file: !1140, line: 36, baseType: !733, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1139, file: !1140, line: 42, baseType: !733, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1139, file: !1140, line: 46, baseType: !242, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1139, file: !1140, line: 47, baseType: !168, size: 128, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1124, file: !1125, line: 200, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1125, line: 200, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1124, file: !1125, line: 201, baseType: !106, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1125, line: 202, baseType: !1151, size: 64, offset: 640)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1125, line: 202, size: 64, elements: !1152)
!1152 = !{!1153, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1151, file: !1125, line: 203, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1155, line: 8, baseType: !208)
!1155 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1151, file: !1125, line: 204, baseType: !1154, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1124, file: !1125, line: 206, baseType: !1154, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1124, file: !1125, line: 207, baseType: !436, size: 32, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1124, file: !1125, line: 208, baseType: !444, size: 32, offset: 800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1124, file: !1125, line: 209, baseType: !1161, size: 32, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1125, line: 31, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !108, line: 104, baseType: !122)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1124, file: !1125, line: 210, baseType: !193, size: 16, offset: 864)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1124, file: !1125, line: 211, baseType: !193, size: 16, offset: 880)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1124, file: !1125, line: 215, baseType: !1166, size: 16, offset: 896)
!1166 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !1125, line: 222, baseType: !110, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1125, line: 239, baseType: !1169, size: 320, offset: 1024)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1125, line: 239, size: 320, elements: !1170)
!1170 = !{!1171, !1198}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1169, file: !1125, line: 240, baseType: !1172, size: 320)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1125, line: 108, size: 320, elements: !1173)
!1173 = !{!1174, !1175, !1187, !1190, !1197}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1172, file: !1125, line: 110, baseType: !110, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1125, line: 111, baseType: !1176, size: 64, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !1125, line: 111, size: 64, elements: !1177)
!1177 = !{!1178, !1186}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1125, line: 112, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1125, line: 112, size: 64, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1179, file: !1125, line: 114, baseType: !827, size: 16)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1179, file: !1125, line: 115, baseType: !1183, size: 48, offset: 16)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 48, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 6)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1176, file: !1125, line: 121, baseType: !110, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1172, file: !1125, line: 123, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1125, line: 96, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1172, file: !1125, line: 124, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1125, line: 102, size: 192, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1192, file: !1125, line: 103, baseType: !779, size: 128, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1192, file: !1125, line: 104, baseType: !131, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1192, file: !1125, line: 105, baseType: !584, size: 8, offset: 160)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1172, file: !1125, line: 125, baseType: !539, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1125, line: 241, baseType: !1199, size: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !1125, line: 241, size: 320, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1199, file: !1125, line: 242, baseType: !110, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1199, file: !1125, line: 243, baseType: !110, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1199, file: !1125, line: 244, baseType: !1188, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1199, file: !1125, line: 245, baseType: !1191, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1199, file: !1125, line: 246, baseType: !565, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1125, line: 254, baseType: !1207, size: 256, offset: 1344)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1125, line: 254, size: 256, elements: !1208)
!1208 = !{!1209, !1215}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1207, file: !1125, line: 255, baseType: !1210, size: 256)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1125, line: 128, size: 256, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1210, file: !1125, line: 129, baseType: !106, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1210, file: !1125, line: 130, baseType: !1214, size: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !1075)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1125, line: 256, baseType: !1216, size: 256)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !1125, line: 256, size: 256, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1216, file: !1125, line: 258, baseType: !168, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1216, file: !1125, line: 259, baseType: !1220, size: 128, offset: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1221, line: 22, size: 128, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1220, file: !1221, line: 23, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1221, line: 23, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1220, file: !1221, line: 24, baseType: !110, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1124, file: !1125, line: 274, baseType: !1228, size: 64, offset: 1600)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1125, line: 170, size: 192, elements: !1230)
!1230 = !{!1231, !1240, !1241}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1229, file: !1125, line: 171, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1125, line: 165, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!109, !1123, !1236, !1238, !1123}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1229, file: !1125, line: 172, baseType: !1123, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1229, file: !1125, line: 173, baseType: !1188, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1095, file: !1096, line: 138, baseType: !1123, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1095, file: !1096, line: 139, baseType: !1123, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1095, file: !1096, line: 140, baseType: !1123, size: 64, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1095, file: !1096, line: 145, baseType: !1246, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1248, line: 13, size: 896, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1247, file: !1248, line: 14, baseType: !131, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1247, file: !1248, line: 15, baseType: !136, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1247, file: !1248, line: 16, baseType: !136, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1247, file: !1248, line: 21, baseType: !733, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1247, file: !1248, line: 27, baseType: !110, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1247, file: !1248, line: 28, baseType: !110, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1247, file: !1248, line: 29, baseType: !733, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1247, file: !1248, line: 32, baseType: !640, size: 128, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1247, file: !1248, line: 33, baseType: !436, size: 32, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1247, file: !1248, line: 37, baseType: !733, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1247, file: !1248, line: 44, baseType: !1261, size: 256, offset: 640)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1262, line: 15, size: 256, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1261, file: !1262, line: 16, baseType: !242)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1261, file: !1262, line: 18, baseType: !109, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1261, file: !1262, line: 19, baseType: !109, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1261, file: !1262, line: 20, baseType: !109, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1261, file: !1262, line: 21, baseType: !109, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1261, file: !1262, line: 22, baseType: !110, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !1262, line: 23, baseType: !110, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1095, file: !1096, line: 146, baseType: !1272, size: 64, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !437, line: 18, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1095, file: !1096, line: 147, baseType: !1275, size: 64, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1096, line: 25, size: 64, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1276, file: !1096, line: 26, baseType: !136, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1276, file: !1096, line: 27, baseType: !109, size: 32, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1276, file: !1096, line: 28, baseType: !1281, offset: 64)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 149, baseType: !1285, size: 128, offset: 1152)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 149, size: 128, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1285, file: !1096, line: 150, baseType: !109, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1285, file: !1096, line: 151, baseType: !779, size: 128, align: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !767, file: !77, line: 938, baseType: !1290, size: 256, offset: 1088)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !77, line: 896, size: 256, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1290, file: !77, line: 897, baseType: !110, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1290, file: !77, line: 898, baseType: !7, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1290, file: !77, line: 899, baseType: !7, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1290, file: !77, line: 902, baseType: !7, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1290, file: !77, line: 903, baseType: !7, size: 32, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1290, file: !77, line: 904, baseType: !603, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !767, file: !77, line: 940, baseType: !175, size: 64, offset: 1344)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !767, file: !77, line: 945, baseType: !106, size: 64, offset: 1408)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !767, file: !77, line: 949, baseType: !168, size: 128, offset: 1472)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !767, file: !77, line: 950, baseType: !168, size: 128, offset: 1600)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !767, file: !77, line: 952, baseType: !425, size: 64, offset: 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !767, file: !77, line: 953, baseType: !1304, size: 32, offset: 1792)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1305, line: 8, baseType: !122)
!1305 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !767, file: !77, line: 954, baseType: !1304, size: 32, offset: 1824)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !715, file: !716, line: 28, baseType: !106, size: 64, offset: 832)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !660, file: !77, line: 1955, baseType: !711, size: 64, offset: 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !660, file: !77, line: 1956, baseType: !711, size: 64, offset: 1152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !660, file: !77, line: 1957, baseType: !711, size: 64, offset: 1216)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !660, file: !77, line: 1963, baseType: !1312, size: 64, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!109, !593, !413, !107}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !660, file: !77, line: 1964, baseType: !1316, size: 64, offset: 1344)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!128, !593, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1321, line: 12, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325, !1326, !1327}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1320, file: !1321, line: 13, baseType: !107, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1320, file: !1321, line: 16, baseType: !109, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1320, file: !1321, line: 23, baseType: !110, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1320, file: !1321, line: 30, baseType: !110, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1320, file: !1321, line: 33, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !327, line: 27, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !660, file: !77, line: 1966, baseType: !1316, size: 64, offset: 1408)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !594, file: !77, line: 1424, baseType: !1332, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !71, line: 322, size: 704, elements: !1335)
!1335 = !{!1336, !1382, !1386, !1390, !1391, !1392, !1393, !1394, !1399, !1404, !1408}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1334, file: !71, line: 323, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!109, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !71, line: 294, size: 1600, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1367, !1368, !1369}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1341, file: !71, line: 295, baseType: !640, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1341, file: !71, line: 296, baseType: !168, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1341, file: !71, line: 297, baseType: !168, size: 128, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1341, file: !71, line: 298, baseType: !168, size: 128, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1341, file: !71, line: 299, baseType: !729, size: 192, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1341, file: !71, line: 300, baseType: !510, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1341, file: !71, line: 301, baseType: !136, size: 32, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1341, file: !71, line: 302, baseType: !593, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1341, file: !71, line: 303, baseType: !1352, size: 64, offset: 832)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !71, line: 68, size: 64, elements: !1353)
!1353 = !{!1354, !1366}
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !71, line: 69, baseType: !1355, size: 32)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !71, line: 69, size: 32, elements: !1356)
!1356 = !{!1357, !1358, !1359}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1355, file: !71, line: 70, baseType: !436, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1355, file: !71, line: 71, baseType: !444, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1355, file: !71, line: 72, baseType: !1360, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1361, line: 24, baseType: !1362)
!1361 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1361, line: 22, size: 32, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1362, file: !1361, line: 23, baseType: !1365, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1361, line: 20, baseType: !442)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1352, file: !71, line: 74, baseType: !70, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1341, file: !71, line: 304, baseType: !603, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1341, file: !71, line: 305, baseType: !110, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1341, file: !71, line: 306, baseType: !1370, size: 576, offset: 1024)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !71, line: 205, size: 576, elements: !1371)
!1371 = !{!1372, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1370, file: !71, line: 206, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !71, line: 66, baseType: !209)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1370, file: !71, line: 207, baseType: !1373, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1370, file: !71, line: 208, baseType: !1373, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1370, file: !71, line: 209, baseType: !1373, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1370, file: !71, line: 210, baseType: !1373, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1370, file: !71, line: 211, baseType: !1373, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1370, file: !71, line: 212, baseType: !1373, size: 64, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1370, file: !71, line: 213, baseType: !1154, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1370, file: !71, line: 214, baseType: !1154, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1334, file: !71, line: 324, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1340, !593, !109}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1334, file: !71, line: 325, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1340}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1334, file: !71, line: 326, baseType: !1337, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1334, file: !71, line: 327, baseType: !1337, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1334, file: !71, line: 328, baseType: !1337, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1334, file: !71, line: 329, baseType: !688, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1334, file: !71, line: 332, baseType: !1395, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1398, !429}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1334, file: !71, line: 333, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!109, !429, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1334, file: !71, line: 335, baseType: !1405, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!109, !429, !1398}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1334, file: !71, line: 337, baseType: !1409, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!109, !593, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !594, file: !77, line: 1425, baseType: !1414, size: 64, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !71, line: 428, size: 704, elements: !1417)
!1417 = !{!1418, !1422, !1423, !1427, !1428, !1429, !1444, !1467, !1471, !1472, !1495}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1416, file: !71, line: 429, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!109, !593, !109, !109, !582}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1416, file: !71, line: 430, baseType: !688, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1416, file: !71, line: 431, baseType: !1424, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!109, !593, !7}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1416, file: !71, line: 432, baseType: !1424, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1416, file: !71, line: 433, baseType: !688, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1416, file: !71, line: 434, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!109, !593, !109, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !71, line: 415, size: 256, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1434, file: !71, line: 416, baseType: !109, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1434, file: !71, line: 417, baseType: !7, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1434, file: !71, line: 418, baseType: !7, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1434, file: !71, line: 420, baseType: !7, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1434, file: !71, line: 421, baseType: !7, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1434, file: !71, line: 422, baseType: !7, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1434, file: !71, line: 423, baseType: !7, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1434, file: !71, line: 424, baseType: !7, size: 32, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1416, file: !71, line: 435, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!109, !593, !1352, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !71, line: 343, size: 960, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1449, file: !71, line: 344, baseType: !109, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1449, file: !71, line: 345, baseType: !175, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1449, file: !71, line: 346, baseType: !175, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1449, file: !71, line: 347, baseType: !175, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1449, file: !71, line: 348, baseType: !175, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1449, file: !71, line: 349, baseType: !175, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1449, file: !71, line: 350, baseType: !175, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1449, file: !71, line: 351, baseType: !207, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1449, file: !71, line: 353, baseType: !207, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1449, file: !71, line: 354, baseType: !109, size: 32, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1449, file: !71, line: 355, baseType: !109, size: 32, offset: 608)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1449, file: !71, line: 356, baseType: !175, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1449, file: !71, line: 357, baseType: !175, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1449, file: !71, line: 358, baseType: !175, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1449, file: !71, line: 359, baseType: !207, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1449, file: !71, line: 360, baseType: !109, size: 32, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1416, file: !71, line: 436, baseType: !1468, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!109, !593, !1412, !1448}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1416, file: !71, line: 438, baseType: !1445, size: 64, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1416, file: !71, line: 439, baseType: !1473, size: 64, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!109, !593, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !71, line: 409, size: 1408, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1477, file: !71, line: 410, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1477, file: !71, line: 411, baseType: !1481, size: 1344, offset: 64)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 1344, elements: !652)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !71, line: 395, size: 448, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1494}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !71, line: 396, baseType: !7, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1482, file: !71, line: 397, baseType: !7, size: 32, offset: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1482, file: !71, line: 399, baseType: !7, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1482, file: !71, line: 400, baseType: !7, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1482, file: !71, line: 401, baseType: !7, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1482, file: !71, line: 402, baseType: !7, size: 32, offset: 160)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1482, file: !71, line: 403, baseType: !7, size: 32, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1482, file: !71, line: 404, baseType: !177, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1482, file: !71, line: 405, baseType: !1493, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !108, line: 126, baseType: !175)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1482, file: !71, line: 406, baseType: !1493, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1416, file: !71, line: 440, baseType: !1424, size: 64, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !594, file: !77, line: 1426, baseType: !1497, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !77, line: 49, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !594, file: !77, line: 1427, baseType: !110, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !594, file: !77, line: 1428, baseType: !110, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !594, file: !77, line: 1429, baseType: !110, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !594, file: !77, line: 1430, baseType: !460, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !594, file: !77, line: 1431, baseType: !1139, size: 256, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !594, file: !77, line: 1432, baseType: !109, size: 32, offset: 1152)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !594, file: !77, line: 1433, baseType: !136, size: 32, offset: 1184)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !594, file: !77, line: 1437, baseType: !1508, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !77, line: 1437, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !594, file: !77, line: 1449, baseType: !1513, size: 64, offset: 1280)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !472, line: 34, size: 64, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1513, file: !472, line: 35, baseType: !475, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !594, file: !77, line: 1450, baseType: !168, size: 128, offset: 1344)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !594, file: !77, line: 1451, baseType: !1518, size: 64, offset: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !77, line: 699, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !594, file: !77, line: 1452, baseType: !1521, size: 64, offset: 1536)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !114, line: 40, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !594, file: !77, line: 1453, baseType: !1524, size: 64, offset: 1600)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !77, line: 1453, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !594, file: !77, line: 1454, baseType: !640, size: 128, offset: 1664)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !594, file: !77, line: 1455, baseType: !7, size: 32, offset: 1792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !594, file: !77, line: 1456, baseType: !1529, size: 2432, offset: 1856)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !71, line: 518, size: 2432, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1535, !1567}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !71, line: 519, baseType: !7, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1529, file: !71, line: 520, baseType: !1139, size: 256, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1529, file: !71, line: 521, baseType: !1534, size: 192, offset: 320)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !652)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1529, file: !71, line: 522, baseType: !1536, size: 1728, offset: 512)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 1728, elements: !652)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !71, line: 222, size: 576, elements: !1538)
!1538 = !{!1539, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1537, file: !71, line: 223, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !71, line: 443, size: 256, elements: !1542)
!1542 = !{!1543, !1544, !1557, !1558}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1541, file: !71, line: 444, baseType: !109, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1541, file: !71, line: 445, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !71, line: 310, size: 512, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1547, file: !71, line: 311, baseType: !688, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1547, file: !71, line: 312, baseType: !688, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1547, file: !71, line: 313, baseType: !688, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1547, file: !71, line: 314, baseType: !688, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1547, file: !71, line: 315, baseType: !1337, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1547, file: !71, line: 316, baseType: !1337, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1547, file: !71, line: 317, baseType: !1337, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1547, file: !71, line: 318, baseType: !1409, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1541, file: !71, line: 446, baseType: !631, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1541, file: !71, line: 447, baseType: !1540, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1537, file: !71, line: 224, baseType: !109, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1537, file: !71, line: 226, baseType: !168, size: 128, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1537, file: !71, line: 227, baseType: !110, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1537, file: !71, line: 228, baseType: !7, size: 32, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1537, file: !71, line: 229, baseType: !7, size: 32, offset: 352)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1537, file: !71, line: 230, baseType: !1373, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1537, file: !71, line: 231, baseType: !1373, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1537, file: !71, line: 232, baseType: !106, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1529, file: !71, line: 523, baseType: !1568, size: 192, offset: 2240)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 192, elements: !652)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !594, file: !77, line: 1458, baseType: !1570, size: 2112, offset: 4288)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !77, line: 1410, size: 2112, elements: !1571)
!1571 = !{!1572, !1573, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1570, file: !77, line: 1411, baseType: !109, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1570, file: !77, line: 1412, baseType: !912, size: 128, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1570, file: !77, line: 1413, baseType: !1575, size: 1920, offset: 192)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1576, size: 1920, elements: !652)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1577, line: 12, size: 640, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1587, !1589, !1594, !1595}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1576, file: !1577, line: 13, baseType: !1580, size: 320)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1581, line: 17, size: 320, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584, !1585, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1580, file: !1581, line: 18, baseType: !109, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1580, file: !1581, line: 19, baseType: !109, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1580, file: !1581, line: 20, baseType: !912, size: 128, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1580, file: !1581, line: 22, baseType: !779, size: 128, align: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1576, file: !1577, line: 14, baseType: !1588, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1576, file: !1577, line: 15, baseType: !1590, size: 64, offset: 384)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1591, line: 16, size: 64, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1590, file: !1591, line: 17, baseType: !112, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1576, file: !1577, line: 16, baseType: !912, size: 128, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1576, file: !1577, line: 17, baseType: !136, size: 32, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !594, file: !77, line: 1465, baseType: !106, size: 64, offset: 6400)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !594, file: !77, line: 1468, baseType: !122, size: 32, offset: 6464)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !594, file: !77, line: 1470, baseType: !1154, size: 64, offset: 6528)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !594, file: !77, line: 1471, baseType: !1154, size: 64, offset: 6592)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !594, file: !77, line: 1473, baseType: !124, size: 32, offset: 6656)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !594, file: !77, line: 1474, baseType: !1602, size: 64, offset: 6720)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !77, line: 603, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !594, file: !77, line: 1477, baseType: !1605, size: 256, offset: 6784)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 256, elements: !497)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !594, file: !77, line: 1478, baseType: !1607, size: 128, offset: 7040)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1608, line: 18, baseType: !1609)
!1608 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1608, line: 16, size: 128, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1609, file: !1608, line: 17, baseType: !1612, size: 128)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 128, elements: !1613)
!1613 = !{!1614}
!1614 = !DISubrange(count: 16)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !594, file: !77, line: 1480, baseType: !7, size: 32, offset: 7168)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !594, file: !77, line: 1481, baseType: !1059, size: 32, offset: 7200)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !594, file: !77, line: 1487, baseType: !729, size: 192, offset: 7232)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !594, file: !77, line: 1493, baseType: !539, size: 64, offset: 7424)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !594, file: !77, line: 1495, baseType: !519, size: 64, offset: 7488)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !594, file: !77, line: 1500, baseType: !109, size: 32, offset: 7552)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !594, file: !77, line: 1502, baseType: !1622, size: 448, offset: 7616)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1321, line: 60, size: 448, elements: !1623)
!1623 = !{!1624, !1629, !1630, !1631, !1632, !1633, !1634}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1622, file: !1321, line: 61, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!110, !1628, !1319}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1622, file: !1321, line: 63, baseType: !1625, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1622, file: !1321, line: 66, baseType: !128, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1622, file: !1321, line: 67, baseType: !109, size: 32, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1321, line: 68, baseType: !7, size: 32, offset: 224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1622, file: !1321, line: 71, baseType: !168, size: 128, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1622, file: !1321, line: 77, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !594, file: !77, line: 1505, baseType: !733, size: 64, offset: 8064)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !594, file: !77, line: 1508, baseType: !733, size: 64, offset: 8128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !594, file: !77, line: 1511, baseType: !109, size: 32, offset: 8192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !594, file: !77, line: 1514, baseType: !1304, size: 32, offset: 8224)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !594, file: !77, line: 1517, baseType: !1641, size: 64, offset: 8256)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1643, line: 18, flags: DIFlagFwdDecl)
!1643 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !594, file: !77, line: 1518, baseType: !636, size: 64, offset: 8320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !594, file: !77, line: 1525, baseType: !1272, size: 64, offset: 8384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !594, file: !77, line: 1532, baseType: !1647, size: 64, offset: 8448)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1648, line: 52, size: 64, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1647, file: !1648, line: 53, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1648, line: 40, size: 256, elements: !1653)
!1653 = !{!1654, !1655, !1660}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1652, file: !1648, line: 42, baseType: !510)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1652, file: !1648, line: 44, baseType: !1656, size: 192)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1648, line: 28, size: 192, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1656, file: !1648, line: 29, baseType: !168, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1656, file: !1648, line: 31, baseType: !128, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1652, file: !1648, line: 49, baseType: !128, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !594, file: !77, line: 1533, baseType: !1647, size: 64, offset: 8512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !594, file: !77, line: 1534, baseType: !779, size: 128, align: 64, offset: 8576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !594, file: !77, line: 1535, baseType: !1664, size: 256, offset: 8704)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1643, line: 102, size: 256, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1664, file: !1643, line: 103, baseType: !733, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1664, file: !1643, line: 104, baseType: !168, size: 128, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1664, file: !1643, line: 105, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1643, line: 21, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !594, file: !77, line: 1537, baseType: !729, size: 192, offset: 8960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !594, file: !77, line: 1542, baseType: !109, size: 32, offset: 9152)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !594, file: !77, line: 1545, baseType: !510, offset: 9184)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !594, file: !77, line: 1546, baseType: !168, size: 128, offset: 9216)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !594, file: !77, line: 1548, baseType: !510, offset: 9344)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !594, file: !77, line: 1549, baseType: !168, size: 128, offset: 9344)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !461, file: !462, line: 104, baseType: !110, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !461, file: !462, line: 105, baseType: !106, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !462, line: 107, baseType: !1683, size: 128, offset: 1024)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 107, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1683, file: !462, line: 108, baseType: !168, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1683, file: !462, line: 109, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !461, file: !462, line: 111, baseType: !168, size: 128, offset: 1152)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !461, file: !462, line: 112, baseType: !168, size: 128, offset: 1280)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !461, file: !462, line: 120, baseType: !1691, size: 128, offset: 1408)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 116, size: 128, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1691, file: !462, line: 117, baseType: !640, size: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1691, file: !462, line: 118, baseType: !471, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1691, file: !462, line: 119, baseType: !779, size: 128, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !454, file: !77, line: 1866, baseType: !1697, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!539, !460, !429, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1702, line: 10, size: 128, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1708}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1701, file: !1702, line: 11, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !106}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1701, file: !1702, line: 12, baseType: !106, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !454, file: !77, line: 1867, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!109, !429, !109}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !454, file: !77, line: 1868, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !429, !109}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !77, line: 581, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !454, file: !77, line: 1870, baseType: !1720, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!109, !460, !565, !109}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !454, file: !77, line: 1872, baseType: !1724, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!109, !429, !460, !433, !584}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !454, file: !77, line: 1873, baseType: !1728, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!109, !460, !429, !460}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !454, file: !77, line: 1874, baseType: !1732, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!109, !429, !460}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !454, file: !77, line: 1875, baseType: !1736, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !429, !460, !539}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !454, file: !77, line: 1876, baseType: !1740, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!109, !429, !460, !433}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !454, file: !77, line: 1877, baseType: !1732, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !454, file: !77, line: 1878, baseType: !1745, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!109, !429, !460, !433, !598}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !454, file: !77, line: 1879, baseType: !1749, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!109, !429, !460, !429, !460, !7}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !454, file: !77, line: 1881, baseType: !1753, size: 64, offset: 832)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!109, !460, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !77, line: 219, size: 640, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1769, !1770, !1771}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1757, file: !77, line: 220, baseType: !7, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1757, file: !77, line: 221, baseType: !433, size: 16, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1757, file: !77, line: 222, baseType: !436, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1757, file: !77, line: 223, baseType: !444, size: 32, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1757, file: !77, line: 224, baseType: !603, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1757, file: !77, line: 225, baseType: !1765, size: 128, offset: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1155, line: 13, size: 128, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1765, file: !1155, line: 14, baseType: !1154, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1765, file: !1155, line: 15, baseType: !128, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1757, file: !77, line: 226, baseType: !1765, size: 128, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1757, file: !77, line: 227, baseType: !1765, size: 128, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1757, file: !77, line: 234, baseType: !799, size: 64, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !454, file: !77, line: 1882, baseType: !1773, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!109, !582, !1776, !122, !7}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1778, line: 22, size: 1152, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1777, file: !1778, line: 23, baseType: !122, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1777, file: !1778, line: 24, baseType: !433, size: 16, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1777, file: !1778, line: 25, baseType: !7, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1777, file: !1778, line: 26, baseType: !1162, size: 32, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1777, file: !1778, line: 27, baseType: !175, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1777, file: !1778, line: 28, baseType: !175, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1777, file: !1778, line: 37, baseType: !175, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1777, file: !1778, line: 38, baseType: !598, size: 32, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1777, file: !1778, line: 39, baseType: !598, size: 32, offset: 352)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1777, file: !1778, line: 40, baseType: !436, size: 32, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1777, file: !1778, line: 41, baseType: !444, size: 32, offset: 416)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1777, file: !1778, line: 42, baseType: !603, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1777, file: !1778, line: 43, baseType: !1765, size: 128, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1777, file: !1778, line: 44, baseType: !1765, size: 128, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1777, file: !1778, line: 45, baseType: !1765, size: 128, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1777, file: !1778, line: 46, baseType: !1765, size: 128, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1777, file: !1778, line: 47, baseType: !175, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1777, file: !1778, line: 48, baseType: !175, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !454, file: !77, line: 1883, baseType: !1799, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!804, !460, !565, !720}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !454, file: !77, line: 1884, baseType: !1803, size: 64, offset: 1024)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!109, !429, !1806, !175, !175}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !77, line: 50, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !454, file: !77, line: 1886, baseType: !1809, size: 64, offset: 1088)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!109, !429, !1812, !109}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !454, file: !77, line: 1887, baseType: !1814, size: 64, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!109, !429, !460, !799, !7, !433}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !454, file: !77, line: 1890, baseType: !1740, size: 64, offset: 1216)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !454, file: !77, line: 1891, baseType: !1819, size: 64, offset: 1280)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!109, !429, !1717, !109}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !77, line: 623, baseType: !593, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !77, line: 624, baseType: !425, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !77, line: 631, baseType: !110, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !77, line: 639, baseType: !1826, size: 32, offset: 384)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !77, line: 639, size: 32, elements: !1827)
!1827 = !{!1828, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1826, file: !77, line: 640, baseType: !1829, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1826, file: !77, line: 641, baseType: !7, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !77, line: 643, baseType: !598, size: 32, offset: 416)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !77, line: 644, baseType: !603, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !77, line: 645, baseType: !1765, size: 128, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !77, line: 646, baseType: !1765, size: 128, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !430, file: !77, line: 647, baseType: !1765, size: 128, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !77, line: 648, baseType: !510, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !77, line: 649, baseType: !193, size: 16, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !77, line: 650, baseType: !298, size: 8, offset: 912)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !77, line: 651, baseType: !298, size: 8, offset: 920)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !77, line: 652, baseType: !1493, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !77, line: 659, baseType: !110, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !77, line: 660, baseType: !1139, size: 256, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !77, line: 662, baseType: !110, size: 64, offset: 1344)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !77, line: 663, baseType: !110, size: 64, offset: 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !77, line: 665, baseType: !640, size: 128, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !77, line: 666, baseType: !168, size: 128, offset: 1600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !77, line: 675, baseType: !168, size: 128, offset: 1728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !77, line: 676, baseType: !168, size: 128, offset: 1856)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !77, line: 677, baseType: !168, size: 128, offset: 1984)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !77, line: 678, baseType: !1851, size: 128, offset: 2112)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !77, line: 678, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1851, file: !77, line: 679, baseType: !636, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1851, file: !77, line: 680, baseType: !779, size: 128, align: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !77, line: 682, baseType: !735, size: 64, offset: 2240)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !77, line: 683, baseType: !735, size: 64, offset: 2304)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !77, line: 684, baseType: !136, size: 32, offset: 2368)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !77, line: 685, baseType: !136, size: 32, offset: 2400)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !77, line: 686, baseType: !136, size: 32, offset: 2432)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !77, line: 688, baseType: !136, size: 32, offset: 2464)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !77, line: 690, baseType: !1862, size: 64, offset: 2496)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !77, line: 690, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1862, file: !77, line: 691, baseType: !790, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1862, file: !77, line: 692, baseType: !667, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !77, line: 694, baseType: !1867, size: 64, offset: 2560)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !77, line: 1100, size: 384, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1868, file: !77, line: 1101, baseType: !510)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1868, file: !77, line: 1102, baseType: !168, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1868, file: !77, line: 1103, baseType: !168, size: 128, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1868, file: !77, line: 1104, baseType: !168, size: 128, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !77, line: 695, baseType: !426, size: 1216, align: 64, offset: 2624)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !77, line: 696, baseType: !168, size: 128, offset: 3840)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !77, line: 697, baseType: !1877, size: 64, offset: 3968)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !77, line: 697, size: 64, elements: !1878)
!1878 = !{!1879, !1880, !1881, !2186, !2187}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1877, file: !77, line: 698, baseType: !1026, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1877, file: !77, line: 699, baseType: !1518, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1877, file: !77, line: 700, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1884, line: 14, size: 832, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !2181, !2182, !2183, !2184, !2185}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1883, file: !1884, line: 15, baseType: !1887, size: 512)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1888, line: 64, size: 512, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892, !1894, !1936, !2038, !2171, !2176, !2177, !2178, !2179, !2180}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1887, file: !1888, line: 65, baseType: !539, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1887, file: !1888, line: 66, baseType: !168, size: 128, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1887, file: !1888, line: 67, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1887, file: !1888, line: 68, baseType: !1895, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1888, line: 192, size: 704, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1896, file: !1888, line: 193, baseType: !168, size: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1896, file: !1888, line: 194, baseType: !510, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1896, file: !1888, line: 195, baseType: !1887, size: 512, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1896, file: !1888, line: 196, baseType: !1902, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1888, line: 156, size: 192, elements: !1905)
!1905 = !{!1906, !1911, !1916}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1904, file: !1888, line: 157, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!109, !1895, !1893}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1904, file: !1888, line: 158, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!539, !1895, !1893}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1904, file: !1888, line: 159, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!109, !1895, !1893, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1888, line: 148, size: 20736, elements: !1923)
!1923 = !{!1924, !1926, !1930, !1931, !1935}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1922, file: !1888, line: 149, baseType: !1925, size: 192)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 192, elements: !652)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1922, file: !1888, line: 150, baseType: !1927, size: 4096, offset: 192)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 4096, elements: !1928)
!1928 = !{!1929}
!1929 = !DISubrange(count: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1922, file: !1888, line: 151, baseType: !109, size: 32, offset: 4288)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1922, file: !1888, line: 152, baseType: !1932, size: 16384, offset: 4320)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 16384, elements: !1933)
!1933 = !{!1934}
!1934 = !DISubrange(count: 2048)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1922, file: !1888, line: 153, baseType: !109, size: 32, offset: 20704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1887, file: !1888, line: 69, baseType: !1937, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1888, line: 138, size: 448, elements: !1939)
!1939 = !{!1940, !1944, !1963, !1965, !1998, !2028, !2032}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1938, file: !1888, line: 139, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1893}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1938, file: !1888, line: 140, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1948, line: 230, size: 128, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950, !1959}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1947, file: !1948, line: 231, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!804, !1893, !1954, !565}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1948, line: 30, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1955, file: !1948, line: 31, baseType: !539, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1955, file: !1948, line: 32, baseType: !433, size: 16, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1947, file: !1948, line: 232, baseType: !1960, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!804, !1893, !1954, !539, !720}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1938, file: !1888, line: 141, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1938, file: !1888, line: 142, baseType: !1966, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1948, line: 84, size: 320, elements: !1970)
!1970 = !{!1971, !1972, !1976, !1995, !1996}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1969, file: !1948, line: 85, baseType: !539, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1969, file: !1948, line: 86, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!433, !1893, !1954, !109}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1969, file: !1948, line: 88, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!433, !1893, !1980, !109}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1948, line: 168, size: 448, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1990, !1991}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1981, file: !1948, line: 169, baseType: !1955, size: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1981, file: !1948, line: 170, baseType: !720, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1981, file: !1948, line: 171, baseType: !106, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1981, file: !1948, line: 172, baseType: !1987, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!804, !799, !1893, !1980, !565, !603, !720}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1981, file: !1948, line: 174, baseType: !1987, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1981, file: !1948, line: 176, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!109, !799, !1893, !1980, !333}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1969, file: !1948, line: 90, baseType: !1964, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1969, file: !1948, line: 91, baseType: !1997, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1938, file: !1888, line: 143, baseType: !1999, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!2002, !1893}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !2005)
!2005 = !{!2006, !2007, !2011, !2015, !2023, !2027}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2004, file: !58, line: 40, baseType: !57, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2004, file: !58, line: 41, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!584}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2004, file: !58, line: 42, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!106}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2004, file: !58, line: 43, baseType: !2016, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2004, file: !58, line: 44, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2019}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2004, file: !58, line: 45, baseType: !1705, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1938, file: !1888, line: 144, baseType: !2029, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!2019, !1893}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1938, file: !1888, line: 145, baseType: !2033, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !1893, !2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1887, file: !1888, line: 70, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !617, line: 123, size: 1024, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2164, !2165, !2166, !2167, !2168}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2040, file: !617, line: 124, baseType: !136, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2040, file: !617, line: 125, baseType: !136, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2040, file: !617, line: 135, baseType: !2039, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2040, file: !617, line: 136, baseType: !539, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2040, file: !617, line: 138, baseType: !160, size: 192, align: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2040, file: !617, line: 140, baseType: !2019, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2040, file: !617, line: 141, baseType: !7, size: 32, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2040, file: !617, line: 142, baseType: !2050, size: 256, offset: 512)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2040, file: !617, line: 142, size: 256, elements: !2051)
!2051 = !{!2052, !2104, !2108}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2050, file: !617, line: 143, baseType: !2053, size: 192)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !617, line: 91, size: 192, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2053, file: !617, line: 92, baseType: !110, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2053, file: !617, line: 94, baseType: !288, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2053, file: !617, line: 100, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !617, line: 180, size: 704, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2076, !2077, !2078, !2102, !2103}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2059, file: !617, line: 182, baseType: !2039, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2059, file: !617, line: 183, baseType: !7, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2059, file: !617, line: 186, baseType: !2064, size: 192, offset: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2065, line: 19, size: 192, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2074, !2075}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2064, file: !2065, line: 20, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2069, line: 292, size: 128, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2068, file: !2069, line: 293, baseType: !510)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2068, file: !2069, line: 295, baseType: !107, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2068, file: !2069, line: 296, baseType: !106, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2064, file: !2065, line: 21, baseType: !7, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2064, file: !2065, line: 22, baseType: !7, size: 32, offset: 160)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2059, file: !617, line: 187, baseType: !122, size: 32, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2059, file: !617, line: 188, baseType: !122, size: 32, offset: 352)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2059, file: !617, line: 189, baseType: !2079, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !617, line: 168, size: 320, elements: !2081)
!2081 = !{!2082, !2086, !2090, !2094, !2098}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2080, file: !617, line: 169, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!109, !714, !2058}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2080, file: !617, line: 171, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!109, !2039, !539, !433}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2080, file: !617, line: 173, baseType: !2091, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!109, !2039}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2080, file: !617, line: 174, baseType: !2095, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!109, !2039, !2039, !539}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2080, file: !617, line: 176, baseType: !2099, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!109, !714, !2039, !2058}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2059, file: !617, line: 192, baseType: !168, size: 128, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2059, file: !617, line: 194, baseType: !912, size: 128, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2050, file: !617, line: 144, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !617, line: 103, size: 64, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2105, file: !617, line: 104, baseType: !2039, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2050, file: !617, line: 145, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !617, line: 107, size: 256, elements: !2110)
!2110 = !{!2111, !2159, !2162, !2163}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2109, file: !617, line: 108, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !617, line: 217, size: 768, elements: !2115)
!2115 = !{!2116, !2136, !2140, !2141, !2142, !2143, !2144, !2148, !2149, !2150, !2151, !2155}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2114, file: !617, line: 222, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!109, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !617, line: 197, size: 1088, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2121, file: !617, line: 199, baseType: !2039, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2121, file: !617, line: 200, baseType: !799, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2121, file: !617, line: 201, baseType: !714, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2121, file: !617, line: 202, baseType: !106, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2121, file: !617, line: 205, baseType: !729, size: 192, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2121, file: !617, line: 206, baseType: !729, size: 192, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2121, file: !617, line: 207, baseType: !109, size: 32, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2121, file: !617, line: 208, baseType: !168, size: 128, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2121, file: !617, line: 209, baseType: !565, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2121, file: !617, line: 211, baseType: !720, size: 64, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2121, file: !617, line: 212, baseType: !584, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2121, file: !617, line: 213, baseType: !584, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2121, file: !617, line: 214, baseType: !362, size: 64, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2114, file: !617, line: 223, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2120}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2114, file: !617, line: 236, baseType: !760, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2114, file: !617, line: 238, baseType: !747, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2114, file: !617, line: 239, baseType: !756, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2114, file: !617, line: 240, baseType: !752, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2114, file: !617, line: 242, baseType: !2145, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!804, !2120, !565, !720, !603}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2114, file: !617, line: 252, baseType: !720, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2114, file: !617, line: 259, baseType: !584, size: 8, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2114, file: !617, line: 260, baseType: !2145, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2114, file: !617, line: 263, baseType: !2152, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!862, !2120, !864}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2114, file: !617, line: 266, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!109, !2120, !333}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2109, file: !617, line: 109, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !617, line: 31, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2109, file: !617, line: 110, baseType: !603, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2109, file: !617, line: 111, baseType: !2039, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2040, file: !617, line: 148, baseType: !106, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2040, file: !617, line: 154, baseType: !175, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2040, file: !617, line: 156, baseType: !193, size: 16, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2040, file: !617, line: 157, baseType: !433, size: 16, offset: 912)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2040, file: !617, line: 158, baseType: !2169, size: 64, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !617, line: 32, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1887, file: !1888, line: 71, baseType: !2172, size: 32, offset: 448)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2173, line: 19, size: 32, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2172, file: !2173, line: 20, baseType: !131, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1887, file: !1888, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1887, file: !1888, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1887, file: !1888, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1887, file: !1888, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1887, file: !1888, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1883, file: !1884, line: 16, baseType: !631, size: 64, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1883, file: !1884, line: 17, baseType: !790, size: 64, offset: 576)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1883, file: !1884, line: 18, baseType: !168, size: 128, offset: 640)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1883, file: !1884, line: 19, baseType: !598, size: 32, offset: 768)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1883, file: !1884, line: 20, baseType: !7, size: 32, offset: 800)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1877, file: !77, line: 701, baseType: !565, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1877, file: !77, line: 702, baseType: !7, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !77, line: 705, baseType: !124, size: 32, offset: 4032)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !77, line: 708, baseType: !124, size: 32, offset: 4064)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !77, line: 709, baseType: !1602, size: 64, offset: 4096)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !77, line: 720, baseType: !106, size: 64, offset: 4160)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !426, file: !77, line: 453, baseType: !2068, size: 128, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !426, file: !77, line: 454, baseType: !107, size: 32, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !426, file: !77, line: 455, baseType: !136, size: 32, offset: 224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !426, file: !77, line: 460, baseType: !285, size: 128, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !426, file: !77, line: 461, baseType: !1139, size: 256, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !426, file: !77, line: 462, baseType: !110, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !426, file: !77, line: 463, baseType: !110, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !426, file: !77, line: 464, baseType: !110, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !426, file: !77, line: 465, baseType: !2201, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !77, line: 367, size: 1408, elements: !2204)
!2204 = !{!2205, !2209, !2213, !2217, !2221, !2225, !2231, !2236, !2240, !2245, !2249, !2253, !2257, !2258, !2262, !2268, !2269, !2270, !2274, !2279, !2283, !2290}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2203, file: !77, line: 368, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!109, !413, !679}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2203, file: !77, line: 369, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!109, !799, !413}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2203, file: !77, line: 372, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!109, !425, !679}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2203, file: !77, line: 375, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!109, !413}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2203, file: !77, line: 381, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!109, !799, !425, !171, !7}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2203, file: !77, line: 383, baseType: !2226, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !77, line: 290, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2203, file: !77, line: 385, baseType: !2232, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!109, !799, !425, !603, !7, !7, !2235, !983}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2203, file: !77, line: 388, baseType: !2237, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!109, !799, !425, !603, !7, !7, !413, !106}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2203, file: !77, line: 393, baseType: !2241, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !425, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !108, line: 125, baseType: !175)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2203, file: !77, line: 394, baseType: !2246, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !413, !7, !7}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2203, file: !77, line: 395, baseType: !2250, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!109, !413, !107}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2203, file: !77, line: 396, baseType: !2254, size: 64, offset: 704)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !413}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2203, file: !77, line: 397, baseType: !812, size: 64, offset: 768)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2203, file: !77, line: 402, baseType: !2259, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!109, !425, !413, !413, !5}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2203, file: !77, line: 404, baseType: !2263, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!584, !413, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2267, line: 305, baseType: !7)
!2267 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2203, file: !77, line: 405, baseType: !2254, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2203, file: !77, line: 406, baseType: !2218, size: 64, offset: 1024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2203, file: !77, line: 407, baseType: !2271, size: 64, offset: 1088)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!109, !413, !110, !110}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2203, file: !77, line: 409, baseType: !2275, size: 64, offset: 1152)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !413, !2278, !2278}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2203, file: !77, line: 410, baseType: !2280, size: 64, offset: 1216)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!109, !425, !413}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2203, file: !77, line: 413, baseType: !2284, size: 64, offset: 1280)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!109, !2287, !799, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !77, line: 61, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2203, file: !77, line: 415, baseType: !2291, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !799}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !77, line: 466, baseType: !110, size: 64, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !426, file: !77, line: 467, baseType: !1304, size: 32, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !426, file: !77, line: 468, baseType: !510, offset: 992)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !426, file: !77, line: 469, baseType: !168, size: 128, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !426, file: !77, line: 470, baseType: !106, size: 64, offset: 1152)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !421, file: !327, line: 87, baseType: !110, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !421, file: !327, line: 94, baseType: !110, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 96, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 96, size: 64, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2302, file: !327, line: 101, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !108, line: 143, baseType: !175)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 103, baseType: !2307, size: 320)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 103, size: 320, elements: !2308)
!2308 = !{!2309, !2319, !2322, !2323}
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !327, line: 104, baseType: !2310, size: 128)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2307, file: !327, line: 104, size: 128, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2310, file: !327, line: 105, baseType: !168, size: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !327, line: 106, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2310, file: !327, line: 106, size: 128, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2314, file: !327, line: 107, baseType: !413, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2314, file: !327, line: 109, baseType: !109, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2314, file: !327, line: 110, baseType: !109, size: 32, offset: 96)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2307, file: !327, line: 117, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !327, line: 117, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2307, file: !327, line: 119, baseType: !106, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !327, line: 120, baseType: !2324, size: 64, offset: 256)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2307, file: !327, line: 120, size: 64, elements: !2325)
!2325 = !{!2326, !2327, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2324, file: !327, line: 121, baseType: !106, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2324, file: !327, line: 122, baseType: !110, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !327, line: 123, baseType: !2329, size: 32)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !327, line: 123, size: 32, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2329, file: !327, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2329, file: !327, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2329, file: !327, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 130, baseType: !2335, size: 192)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 130, size: 192, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2335, file: !327, line: 131, baseType: !110, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2335, file: !327, line: 134, baseType: !300, size: 8, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2335, file: !327, line: 135, baseType: !300, size: 8, offset: 72)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2335, file: !327, line: 136, baseType: !136, size: 32, offset: 96)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2335, file: !327, line: 137, baseType: !7, size: 32, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 139, baseType: !2343, size: 256)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 139, size: 256, elements: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2343, file: !327, line: 140, baseType: !110, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2343, file: !327, line: 141, baseType: !136, size: 32, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2343, file: !327, line: 143, baseType: !168, size: 128, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 145, baseType: !2349, size: 256)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 145, size: 256, elements: !2350)
!2350 = !{!2351, !2352, !2354, !2355, !2360}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2349, file: !327, line: 146, baseType: !110, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2349, file: !327, line: 147, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !345, line: 509, baseType: !413)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2349, file: !327, line: 148, baseType: !110, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2349, file: !327, line: 149, baseType: !2356, size: 64, offset: 192)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !327, line: 149, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2356, file: !327, line: 150, baseType: !325, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2356, file: !327, line: 151, baseType: !136, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2349, file: !327, line: 156, baseType: !510, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !327, line: 159, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !327, line: 159, size: 128, elements: !2363)
!2363 = !{!2364, !2438}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2362, file: !327, line: 161, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !64, line: 110, size: 1152, elements: !2367)
!2367 = !{!2368, !2378, !2399, !2400, !2411, !2412, !2413, !2425, !2426, !2427}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2366, file: !64, line: 111, baseType: !2369, size: 384)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !64, line: 19, size: 384, elements: !2370)
!2370 = !{!2371, !2373, !2374, !2375, !2376, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2369, file: !64, line: 20, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2369, file: !64, line: 21, baseType: !2372, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2369, file: !64, line: 22, baseType: !2372, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2369, file: !64, line: 23, baseType: !110, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2369, file: !64, line: 24, baseType: !110, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2369, file: !64, line: 25, baseType: !110, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2366, file: !64, line: 112, baseType: !2379, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2381, line: 105, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2380, file: !2381, line: 110, baseType: !110, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2380, file: !2381, line: 118, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2381, line: 95, size: 448, elements: !2387)
!2387 = !{!2388, !2389, !2394, !2395, !2396, !2397, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2386, file: !2381, line: 96, baseType: !733, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2386, file: !2381, line: 97, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2381, line: 60, baseType: !2392)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2379}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2386, file: !2381, line: 98, baseType: !2390, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2386, file: !2381, line: 99, baseType: !584, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2386, file: !2381, line: 100, baseType: !584, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2386, file: !2381, line: 101, baseType: !779, size: 128, align: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2386, file: !2381, line: 102, baseType: !2379, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2366, file: !64, line: 113, baseType: !2380, size: 128, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2366, file: !64, line: 114, baseType: !2401, size: 192, offset: 576)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2402, line: 26, size: 192, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2401, file: !2402, line: 27, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2401, file: !2402, line: 28, baseType: !2406, size: 128, offset: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2407, line: 43, size: 128, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2406, file: !2407, line: 44, baseType: !242)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2406, file: !2407, line: 45, baseType: !168, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !64, line: 115, baseType: !63, size: 32, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !64, line: 116, baseType: !7, size: 32, offset: 800)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2366, file: !64, line: 117, baseType: !2414, size: 64, offset: 832)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !64, line: 67, size: 256, elements: !2417)
!2417 = !{!2418, !2419, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2416, file: !64, line: 73, baseType: !2254, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2416, file: !64, line: 78, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2365}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2416, file: !64, line: 83, baseType: !2420, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2416, file: !64, line: 89, baseType: !380, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2366, file: !64, line: 118, baseType: !106, size: 64, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2366, file: !64, line: 119, baseType: !109, size: 32, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !64, line: 120, baseType: !2428, size: 128, offset: 1024)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !64, line: 120, size: 128, elements: !2429)
!2429 = !{!2430, !2436}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2428, file: !64, line: 121, baseType: !2431, size: 128)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2432, line: 6, size: 128, elements: !2433)
!2432 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2431, file: !2432, line: 7, baseType: !175, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2431, file: !2432, line: 8, baseType: !175, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2428, file: !64, line: 122, baseType: !2437)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, elements: !1282)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2362, file: !327, line: 162, baseType: !106, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !418, file: !327, line: 176, baseType: !779, size: 128, align: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !327, line: 179, baseType: !2441, size: 32, offset: 384)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !327, line: 179, size: 32, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2441, file: !327, line: 184, baseType: !136, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2441, file: !327, line: 192, baseType: !7, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2441, file: !327, line: 194, baseType: !7, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2441, file: !327, line: 195, baseType: !109, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !414, file: !327, line: 199, baseType: !136, size: 32, offset: 416)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !385, file: !14, line: 522, baseType: !413, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !385, file: !14, line: 528, baseType: !2450, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !385, file: !14, line: 532, baseType: !2452, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !385, file: !14, line: 536, baseType: !2353, size: 64, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !364, file: !14, line: 563, baseType: !2455, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!383, !384, !13}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !364, file: !14, line: 565, baseType: !2459, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !384, !110, !110}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !364, file: !14, line: 567, baseType: !2463, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!110, !333}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !364, file: !14, line: 571, baseType: !380, size: 64, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !364, file: !14, line: 574, baseType: !380, size: 64, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !364, file: !14, line: 579, baseType: !2469, size: 64, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!109, !333, !110, !106, !109, !109}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !14, line: 585, baseType: !2473, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!539, !333}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !364, file: !14, line: 615, baseType: !2477, size: 64, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!413, !333, !110}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !334, file: !327, line: 359, baseType: !110, size: 64, offset: 1216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !334, file: !327, line: 361, baseType: !799, size: 64, offset: 1280)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !334, file: !327, line: 362, baseType: !106, size: 64, offset: 1344)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !334, file: !327, line: 365, baseType: !733, size: 64, offset: 1408)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !334, file: !327, line: 373, baseType: !2485, offset: 1472)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !327, line: 296, elements: !184)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !330, file: !327, line: 391, baseType: !288, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !330, file: !327, line: 392, baseType: !175, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !330, file: !327, line: 394, baseType: !1014, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !330, file: !327, line: 398, baseType: !110, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !330, file: !327, line: 399, baseType: !110, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !330, file: !327, line: 405, baseType: !110, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !330, file: !327, line: 406, baseType: !110, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !330, file: !327, line: 407, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !345, line: 286, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 286, size: 64, elements: !2497)
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2496, file: !345, line: 286, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !350, line: 18, baseType: !110)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !330, file: !327, line: 416, baseType: !136, size: 32, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !330, file: !327, line: 428, baseType: !136, size: 32, offset: 608)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !330, file: !327, line: 437, baseType: !136, size: 32, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !330, file: !327, line: 447, baseType: !136, size: 32, offset: 672)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !330, file: !327, line: 450, baseType: !733, size: 64, offset: 704)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !330, file: !327, line: 452, baseType: !109, size: 32, offset: 768)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !330, file: !327, line: 454, baseType: !510, offset: 800)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !330, file: !327, line: 457, baseType: !1139, size: 256, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !330, file: !327, line: 459, baseType: !168, size: 128, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !330, file: !327, line: 466, baseType: !110, size: 64, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !330, file: !327, line: 467, baseType: !110, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !330, file: !327, line: 469, baseType: !110, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !330, file: !327, line: 470, baseType: !110, size: 64, offset: 1408)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !330, file: !327, line: 471, baseType: !735, size: 64, offset: 1472)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !330, file: !327, line: 472, baseType: !110, size: 64, offset: 1536)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !330, file: !327, line: 473, baseType: !110, size: 64, offset: 1600)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !330, file: !327, line: 474, baseType: !110, size: 64, offset: 1664)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !330, file: !327, line: 475, baseType: !110, size: 64, offset: 1728)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !330, file: !327, line: 477, baseType: !510, offset: 1792)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !330, file: !327, line: 478, baseType: !110, size: 64, offset: 1792)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !330, file: !327, line: 478, baseType: !110, size: 64, offset: 1856)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !330, file: !327, line: 478, baseType: !110, size: 64, offset: 1920)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !330, file: !327, line: 478, baseType: !110, size: 64, offset: 1984)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !330, file: !327, line: 479, baseType: !110, size: 64, offset: 2048)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !330, file: !327, line: 479, baseType: !110, size: 64, offset: 2112)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !330, file: !327, line: 479, baseType: !110, size: 64, offset: 2176)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !330, file: !327, line: 480, baseType: !110, size: 64, offset: 2240)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !330, file: !327, line: 480, baseType: !110, size: 64, offset: 2304)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !330, file: !327, line: 480, baseType: !110, size: 64, offset: 2368)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !330, file: !327, line: 480, baseType: !110, size: 64, offset: 2432)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !330, file: !327, line: 482, baseType: !2531, size: 2816, offset: 2496)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2816, elements: !2532)
!2532 = !{!2533}
!2533 = !DISubrange(count: 44)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !330, file: !327, line: 488, baseType: !2535, size: 256, offset: 5312)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2536, line: 60, size: 256, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2535, file: !2536, line: 61, baseType: !2539, size: 256)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 256, elements: !1075)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !330, file: !327, line: 490, baseType: !2541, size: 64, offset: 5568)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !327, line: 490, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !330, file: !327, line: 493, baseType: !2544, size: 896, offset: 5632)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2545, line: 53, baseType: !2546)
!2545 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2545, line: 13, size: 896, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2554, !2555, !2556, !2557, !2577, !2578, !2579}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2546, file: !2545, line: 18, baseType: !175, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2546, file: !2545, line: 28, baseType: !735, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2546, file: !2545, line: 31, baseType: !1139, size: 256, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2546, file: !2545, line: 32, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2545, line: 32, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2546, file: !2545, line: 37, baseType: !193, size: 16, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2546, file: !2545, line: 40, baseType: !729, size: 192, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2546, file: !2545, line: 41, baseType: !106, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2546, file: !2545, line: 42, baseType: !2558, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2561, line: 13, size: 896, elements: !2562)
!2561 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2560, file: !2561, line: 14, baseType: !106, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2560, file: !2561, line: 15, baseType: !110, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2560, file: !2561, line: 17, baseType: !110, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2560, file: !2561, line: 17, baseType: !110, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2560, file: !2561, line: 19, baseType: !128, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2560, file: !2561, line: 21, baseType: !128, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2560, file: !2561, line: 22, baseType: !128, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2560, file: !2561, line: 23, baseType: !128, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2560, file: !2561, line: 24, baseType: !128, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2560, file: !2561, line: 25, baseType: !128, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2560, file: !2561, line: 26, baseType: !128, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2560, file: !2561, line: 27, baseType: !128, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2560, file: !2561, line: 28, baseType: !128, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2560, file: !2561, line: 29, baseType: !128, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2546, file: !2545, line: 44, baseType: !136, size: 32, offset: 832)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2546, file: !2545, line: 50, baseType: !827, size: 16, offset: 864)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2546, file: !2545, line: 51, baseType: !2580, size: 16, offset: 880)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !123, line: 18, baseType: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !125, line: 23, baseType: !1166)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !327, line: 495, baseType: !110, size: 64, offset: 6528)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !330, file: !327, line: 497, baseType: !2584, size: 64, offset: 6592)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !327, line: 381, size: 384, elements: !2586)
!2586 = !{!2587, !2588, !2594}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2585, file: !327, line: 382, baseType: !136, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2585, file: !327, line: 383, baseType: !2589, size: 128, offset: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !327, line: 376, size: 128, elements: !2590)
!2590 = !{!2591, !2592}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2589, file: !327, line: 377, baseType: !112, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2589, file: !327, line: 378, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2585, file: !327, line: 384, baseType: !2401, size: 192, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !330, file: !327, line: 500, baseType: !510, offset: 6656)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !330, file: !327, line: 501, baseType: !2597, size: 64, offset: 6656)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !327, line: 387, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !330, file: !327, line: 516, baseType: !1272, size: 64, offset: 6720)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !330, file: !327, line: 519, baseType: !799, size: 64, offset: 6784)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !330, file: !327, line: 521, baseType: !2602, size: 64, offset: 6848)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !327, line: 521, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !330, file: !327, line: 545, baseType: !136, size: 32, offset: 6912)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !330, file: !327, line: 548, baseType: !584, size: 8, offset: 6944)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !330, file: !327, line: 550, baseType: !2607, offset: 6952)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2608, line: 142, elements: !184)
!2608 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !330, file: !327, line: 554, baseType: !1664, size: 256, offset: 6976)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !330, file: !327, line: 557, baseType: !122, size: 32, offset: 7232)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !326, file: !327, line: 565, baseType: !2612, offset: 7296)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !2613)
!2613 = !{!2614}
!2614 = !DISubrange(count: -1)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !113, file: !114, line: 758, baseType: !325, size: 64, offset: 3968)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !113, file: !114, line: 761, baseType: !2617, size: 320, offset: 4032)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2536, line: 34, size: 320, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2617, file: !2536, line: 35, baseType: !175, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2617, file: !2536, line: 36, baseType: !2621, size: 256, offset: 64)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !1075)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !113, file: !114, line: 766, baseType: !109, size: 32, offset: 4352)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !113, file: !114, line: 767, baseType: !109, size: 32, offset: 4384)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !113, file: !114, line: 768, baseType: !109, size: 32, offset: 4416)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !113, file: !114, line: 770, baseType: !109, size: 32, offset: 4448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !113, file: !114, line: 772, baseType: !110, size: 64, offset: 4480)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !113, file: !114, line: 775, baseType: !7, size: 32, offset: 4544)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !113, file: !114, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !113, file: !114, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !113, file: !114, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !113, file: !114, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !113, file: !114, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !113, file: !114, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !113, file: !114, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !113, file: !114, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !113, file: !114, line: 831, baseType: !110, size: 64, offset: 4672)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !113, file: !114, line: 833, baseType: !2638, size: 384, offset: 4736)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !2639)
!2639 = !{!2640, !2645}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2638, file: !25, line: 26, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!128, !2644}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !25, line: 27, baseType: !2646, size: 320, offset: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2638, file: !25, line: 27, size: 320, elements: !2647)
!2647 = !{!2648, !2658, !2683}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2646, file: !25, line: 36, baseType: !2649, size: 320)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !25, line: 29, size: 320, elements: !2650)
!2650 = !{!2651, !2653, !2654, !2655, !2656, !2657}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2649, file: !25, line: 30, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2649, file: !25, line: 31, baseType: !122, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2649, file: !25, line: 32, baseType: !122, size: 32, offset: 96)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2649, file: !25, line: 33, baseType: !122, size: 32, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2649, file: !25, line: 34, baseType: !175, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2649, file: !25, line: 35, baseType: !2652, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2646, file: !25, line: 46, baseType: !2659, size: 192)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !25, line: 38, size: 192, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2682}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2659, file: !25, line: 39, baseType: !267, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2659, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2659, file: !25, line: 41, baseType: !2664, size: 64, offset: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2659, file: !25, line: 41, size: 64, elements: !2665)
!2665 = !{!2666, !2674}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2664, file: !25, line: 42, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2669, line: 7, size: 128, elements: !2670)
!2669 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !{!2671, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2668, file: !2669, line: 8, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !269, line: 93, baseType: !209)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2668, file: !2669, line: 9, baseType: !209, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2664, file: !25, line: 43, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2677, line: 7, size: 64, elements: !2678)
!2677 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2678 = !{!2679, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2676, file: !2677, line: 8, baseType: !2680, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2677, line: 5, baseType: !1131)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2676, file: !2677, line: 9, baseType: !1131, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2659, file: !25, line: 45, baseType: !175, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2646, file: !25, line: 54, baseType: !2684, size: 256)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !25, line: 48, size: 256, elements: !2685)
!2685 = !{!2686, !2689, !2690, !2691, !2692}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2684, file: !25, line: 49, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2684, file: !25, line: 50, baseType: !109, size: 32, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2684, file: !25, line: 51, baseType: !109, size: 32, offset: 96)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2684, file: !25, line: 52, baseType: !110, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2684, file: !25, line: 53, baseType: !110, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !113, file: !114, line: 835, baseType: !2694, size: 32, offset: 5120)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 22, baseType: !2695)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !269, line: 28, baseType: !109)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !113, file: !114, line: 836, baseType: !2694, size: 32, offset: 5152)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !113, file: !114, line: 840, baseType: !110, size: 64, offset: 5184)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !113, file: !114, line: 849, baseType: !112, size: 64, offset: 5248)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 852, baseType: !112, size: 64, offset: 5312)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !113, file: !114, line: 857, baseType: !168, size: 128, offset: 5376)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !113, file: !114, line: 858, baseType: !168, size: 128, offset: 5504)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !113, file: !114, line: 859, baseType: !112, size: 64, offset: 5632)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !113, file: !114, line: 867, baseType: !168, size: 128, offset: 5696)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !113, file: !114, line: 868, baseType: !168, size: 128, offset: 5824)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !113, file: !114, line: 871, baseType: !1067, size: 64, offset: 5952)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !113, file: !114, line: 872, baseType: !2707, size: 512, offset: 6016)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 512, elements: !1075)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !113, file: !114, line: 873, baseType: !168, size: 128, offset: 6528)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !113, file: !114, line: 874, baseType: !168, size: 128, offset: 6656)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !113, file: !114, line: 876, baseType: !2711, size: 64, offset: 6784)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !113, file: !114, line: 879, baseType: !708, size: 64, offset: 6848)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !113, file: !114, line: 882, baseType: !708, size: 64, offset: 6912)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !113, file: !114, line: 884, baseType: !175, size: 64, offset: 6976)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !113, file: !114, line: 885, baseType: !175, size: 64, offset: 7040)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !113, file: !114, line: 890, baseType: !175, size: 64, offset: 7104)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !113, file: !114, line: 891, baseType: !2718, size: 128, offset: 7168)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !114, line: 242, size: 128, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2718, file: !114, line: 244, baseType: !175, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2718, file: !114, line: 245, baseType: !175, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2718, file: !114, line: 246, baseType: !242, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !113, file: !114, line: 900, baseType: !110, size: 64, offset: 7296)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !113, file: !114, line: 901, baseType: !110, size: 64, offset: 7360)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !113, file: !114, line: 904, baseType: !175, size: 64, offset: 7424)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !113, file: !114, line: 907, baseType: !175, size: 64, offset: 7488)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !113, file: !114, line: 910, baseType: !110, size: 64, offset: 7552)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !113, file: !114, line: 911, baseType: !110, size: 64, offset: 7616)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !113, file: !114, line: 914, baseType: !2730, size: 640, offset: 7680)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2731, line: 123, size: 640, elements: !2732)
!2731 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2732 = !{!2733, !2739, !2740}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2730, file: !2731, line: 124, baseType: !2734, size: 576)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2735, size: 576, elements: !652)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2731, line: 108, size: 192, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2735, file: !2731, line: 109, baseType: !175, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2735, file: !2731, line: 110, baseType: !282, size: 128, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2730, file: !2731, line: 125, baseType: !7, size: 32, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2730, file: !2731, line: 126, baseType: !7, size: 32, offset: 608)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !113, file: !114, line: 917, baseType: !2742, size: 192, offset: 8320)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2731, line: 134, size: 192, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2742, file: !2731, line: 135, baseType: !779, size: 128, align: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2742, file: !2731, line: 136, baseType: !7, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !113, file: !114, line: 923, baseType: !1093, size: 64, offset: 8512)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !113, file: !114, line: 926, baseType: !1093, size: 64, offset: 8576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !113, file: !114, line: 929, baseType: !1093, size: 64, offset: 8640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !113, file: !114, line: 933, baseType: !1123, size: 64, offset: 8704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !113, file: !114, line: 943, baseType: !2751, size: 128, offset: 8768)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 128, elements: !1613)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !113, file: !114, line: 945, baseType: !2753, size: 64, offset: 8896)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !114, line: 49, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !113, file: !114, line: 956, baseType: !2756, size: 64, offset: 8960)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !114, line: 45, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !113, file: !114, line: 959, baseType: !2759, size: 64, offset: 9024)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !114, line: 959, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !113, file: !114, line: 962, baseType: !2762, size: 64, offset: 9088)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !114, line: 66, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !113, file: !114, line: 966, baseType: !2765, size: 64, offset: 9152)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !114, line: 50, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !113, file: !114, line: 969, baseType: !2768, size: 64, offset: 9216)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2770, line: 82, size: 7296, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2807, !2816, !2817, !2819, !2820, !2821, !3640, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3670, !3671, !3678, !3679, !3680, !3681, !3682, !3683}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2769, file: !2770, line: 83, baseType: !131, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2769, file: !2770, line: 84, baseType: !136, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2769, file: !2770, line: 85, baseType: !109, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2769, file: !2770, line: 86, baseType: !168, size: 128, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2769, file: !2770, line: 88, baseType: !912, size: 128, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2769, file: !2770, line: 91, baseType: !112, size: 64, offset: 384)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2769, file: !2770, line: 94, baseType: !2779, size: 192, offset: 448)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2780, line: 30, size: 192, elements: !2781)
!2780 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2780, line: 31, baseType: !168, size: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2779, file: !2780, line: 32, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2785, line: 25, baseType: !2786)
!2785 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2785, line: 23, size: 64, elements: !2787)
!2787 = !{!2788}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2786, file: !2785, line: 24, baseType: !317, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2769, file: !2770, line: 97, baseType: !636, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2769, file: !2770, line: 100, baseType: !109, size: 32, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2769, file: !2770, line: 106, baseType: !109, size: 32, offset: 736)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2769, file: !2770, line: 107, baseType: !112, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2769, file: !2770, line: 110, baseType: !109, size: 32, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2769, file: !2770, line: 111, baseType: !7, size: 32, offset: 864)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2769, file: !2770, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2769, file: !2770, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2769, file: !2770, line: 128, baseType: !109, size: 32, offset: 928)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2769, file: !2770, line: 129, baseType: !168, size: 128, offset: 960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2769, file: !2770, line: 132, baseType: !217, size: 512, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2769, file: !2770, line: 133, baseType: !225, size: 64, offset: 1600)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2769, file: !2770, line: 140, baseType: !2802, size: 256, offset: 1664)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2803, size: 256, elements: !1115)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2770, line: 38, size: 128, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2803, file: !2770, line: 39, baseType: !175, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2803, file: !2770, line: 40, baseType: !175, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2769, file: !2770, line: 146, baseType: !2808, size: 192, offset: 1920)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2770, line: 66, size: 192, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2808, file: !2770, line: 67, baseType: !2811, size: 192)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2770, line: 47, size: 192, elements: !2812)
!2812 = !{!2813, !2814, !2815}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2811, file: !2770, line: 48, baseType: !735, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2811, file: !2770, line: 49, baseType: !735, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2811, file: !2770, line: 50, baseType: !735, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2769, file: !2770, line: 150, baseType: !2730, size: 640, offset: 2112)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2769, file: !2770, line: 153, baseType: !2818, size: 256, offset: 2752)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 256, elements: !1075)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2769, file: !2770, line: 159, baseType: !1067, size: 64, offset: 3008)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2769, file: !2770, line: 162, baseType: !109, size: 32, offset: 3072)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2769, file: !2770, line: 164, baseType: !2822, size: 64, offset: 3136)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2824, line: 285, size: 5056, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !{!2826, !2827, !2828, !3279, !3539, !3540, !3541, !3550, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2823, file: !2824, line: 286, baseType: !109, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2823, file: !2824, line: 287, baseType: !2172, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2823, file: !2824, line: 288, baseType: !2829, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !37, line: 461, size: 5568, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2837, !2838, !2889, !2980, !2981, !2982, !2983, !2984, !2993, !3098, !3111, !3114, !3115, !3119, !3121, !3122, !3123, !3127, !3133, !3134, !3137, !3141, !3231, !3232, !3233, !3234, !3235, !3267, !3268, !3269, !3272, !3275, !3276, !3277, !3278}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2830, file: !37, line: 462, baseType: !1887, size: 512)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2830, file: !37, line: 463, baseType: !2829, size: 64, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2830, file: !37, line: 465, baseType: !2835, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !37, line: 36, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2830, file: !37, line: 467, baseType: !539, size: 64, offset: 640)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2830, file: !37, line: 468, baseType: !2839, size: 64, offset: 704)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !37, line: 87, size: 384, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2849, !2854, !2858}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2841, file: !37, line: 88, baseType: !539, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2841, file: !37, line: 89, baseType: !1966, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2841, file: !37, line: 90, baseType: !2846, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!109, !2829, !1921}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2841, file: !37, line: 91, baseType: !2850, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!565, !2829, !2853, !2036, !2037}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2841, file: !37, line: 93, baseType: !2855, size: 64, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2829}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2841, file: !37, line: 95, baseType: !2859, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !2862)
!2862 = !{!2863, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2861, file: !44, line: 279, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!109, !2829}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2861, file: !44, line: 280, baseType: !2855, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2861, file: !44, line: 281, baseType: !2864, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2861, file: !44, line: 282, baseType: !2864, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2861, file: !44, line: 283, baseType: !2864, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2861, file: !44, line: 284, baseType: !2864, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2861, file: !44, line: 285, baseType: !2864, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2861, file: !44, line: 286, baseType: !2864, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2861, file: !44, line: 287, baseType: !2864, size: 64, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2861, file: !44, line: 288, baseType: !2864, size: 64, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2861, file: !44, line: 289, baseType: !2864, size: 64, offset: 640)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2861, file: !44, line: 290, baseType: !2864, size: 64, offset: 704)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2861, file: !44, line: 291, baseType: !2864, size: 64, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2861, file: !44, line: 292, baseType: !2864, size: 64, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2861, file: !44, line: 293, baseType: !2864, size: 64, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2861, file: !44, line: 294, baseType: !2864, size: 64, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2861, file: !44, line: 295, baseType: !2864, size: 64, offset: 1024)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2861, file: !44, line: 296, baseType: !2864, size: 64, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2861, file: !44, line: 297, baseType: !2864, size: 64, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2861, file: !44, line: 298, baseType: !2864, size: 64, offset: 1216)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2861, file: !44, line: 299, baseType: !2864, size: 64, offset: 1280)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2861, file: !44, line: 300, baseType: !2864, size: 64, offset: 1344)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2861, file: !44, line: 301, baseType: !2864, size: 64, offset: 1408)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2830, file: !37, line: 470, baseType: !2890, size: 64, offset: 768)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2892, line: 82, size: 1408, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2975, !2978, !2979}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2891, file: !2892, line: 83, baseType: !539, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2891, file: !2892, line: 84, baseType: !539, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2891, file: !2892, line: 85, baseType: !2829, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2891, file: !2892, line: 86, baseType: !1966, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2891, file: !2892, line: 87, baseType: !1966, size: 64, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2891, file: !2892, line: 88, baseType: !1966, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2891, file: !2892, line: 90, baseType: !2901, size: 64, offset: 384)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!109, !2829, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !31, line: 95, size: 1152, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913, !2926, !2939, !2940, !2941, !2942, !2943, !2951, !2952, !2953, !2954, !2955, !2956}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2905, file: !31, line: 96, baseType: !539, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2905, file: !31, line: 97, baseType: !2890, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2905, file: !31, line: 99, baseType: !631, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2905, file: !31, line: 100, baseType: !539, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2905, file: !31, line: 102, baseType: !584, size: 8, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2905, file: !31, line: 103, baseType: !30, size: 32, offset: 288)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2905, file: !31, line: 105, baseType: !2914, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2917, line: 262, size: 1600, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!2918 = !{!2919, !2920, !2921, !2925}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2916, file: !2917, line: 263, baseType: !1605, size: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2916, file: !2917, line: 264, baseType: !1605, size: 256, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2916, file: !2917, line: 265, baseType: !2922, size: 1024, offset: 512)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 1024, elements: !2923)
!2923 = !{!2924}
!2924 = !DISubrange(count: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2916, file: !2917, line: 266, baseType: !2019, size: 64, offset: 1536)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2905, file: !31, line: 106, baseType: !2927, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2917, line: 210, size: 256, elements: !2930)
!2930 = !{!2931, !2935, !2937, !2938}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2929, file: !2917, line: 211, baseType: !2932, size: 72)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 72, elements: !2933)
!2933 = !{!2934}
!2934 = !DISubrange(count: 9)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2929, file: !2917, line: 212, baseType: !2936, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2917, line: 14, baseType: !110)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2929, file: !2917, line: 213, baseType: !124, size: 32, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2929, file: !2917, line: 214, baseType: !124, size: 32, offset: 224)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2905, file: !31, line: 108, baseType: !2864, size: 64, offset: 448)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2905, file: !31, line: 109, baseType: !2855, size: 64, offset: 512)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2905, file: !31, line: 110, baseType: !2864, size: 64, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2905, file: !31, line: 111, baseType: !2855, size: 64, offset: 640)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2905, file: !31, line: 112, baseType: !2944, size: 64, offset: 704)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!109, !2829, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2948, file: !44, line: 51, baseType: !109, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2905, file: !31, line: 113, baseType: !2864, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2905, file: !31, line: 114, baseType: !1966, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2905, file: !31, line: 115, baseType: !1966, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2905, file: !31, line: 117, baseType: !2859, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2905, file: !31, line: 118, baseType: !2855, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2905, file: !31, line: 120, baseType: !2957, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !31, line: 120, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2891, file: !2892, line: 91, baseType: !2846, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2891, file: !2892, line: 92, baseType: !2864, size: 64, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2891, file: !2892, line: 93, baseType: !2855, size: 64, offset: 576)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2891, file: !2892, line: 94, baseType: !2864, size: 64, offset: 640)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2891, file: !2892, line: 95, baseType: !2855, size: 64, offset: 704)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2891, file: !2892, line: 97, baseType: !2864, size: 64, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2891, file: !2892, line: 98, baseType: !2864, size: 64, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2891, file: !2892, line: 100, baseType: !2944, size: 64, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2891, file: !2892, line: 101, baseType: !2864, size: 64, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2891, file: !2892, line: 103, baseType: !2864, size: 64, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2891, file: !2892, line: 105, baseType: !2864, size: 64, offset: 1088)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2891, file: !2892, line: 107, baseType: !2859, size: 64, offset: 1152)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2891, file: !2892, line: 109, baseType: !2972, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2974)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2892, line: 109, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2891, file: !2892, line: 111, baseType: !2976, size: 64, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2892, line: 111, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2891, file: !2892, line: 112, baseType: !646, offset: 1344)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2891, file: !2892, line: 114, baseType: !584, size: 8, offset: 1344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2830, file: !37, line: 471, baseType: !2904, size: 64, offset: 832)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2830, file: !37, line: 473, baseType: !106, size: 64, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2830, file: !37, line: 475, baseType: !106, size: 64, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2830, file: !37, line: 480, baseType: !729, size: 192, offset: 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2830, file: !37, line: 484, baseType: !2985, size: 576, offset: 1216)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !37, line: 361, size: 576, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2985, file: !37, line: 362, baseType: !168, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2985, file: !37, line: 363, baseType: !168, size: 128, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2985, file: !37, line: 364, baseType: !168, size: 128, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2985, file: !37, line: 365, baseType: !168, size: 128, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2985, file: !37, line: 366, baseType: !584, size: 8, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2985, file: !37, line: 367, baseType: !36, size: 32, offset: 544)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2830, file: !37, line: 485, baseType: !2994, size: 2304, offset: 1792)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3091, !3095}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2994, file: !44, line: 566, baseType: !2947, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2994, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2994, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2994, file: !44, line: 569, baseType: !584, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2994, file: !44, line: 570, baseType: !584, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2994, file: !44, line: 571, baseType: !584, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2994, file: !44, line: 572, baseType: !584, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2994, file: !44, line: 573, baseType: !584, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2994, file: !44, line: 574, baseType: !584, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2994, file: !44, line: 575, baseType: !584, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2994, file: !44, line: 576, baseType: !584, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2994, file: !44, line: 577, baseType: !122, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2994, file: !44, line: 578, baseType: !510, offset: 96)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2994, file: !44, line: 580, baseType: !168, size: 128, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2994, file: !44, line: 581, baseType: !2401, size: 192, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2994, file: !44, line: 582, baseType: !3012, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3014, line: 43, size: 1472, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3023, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3013, file: !3014, line: 44, baseType: !539, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3013, file: !3014, line: 45, baseType: !109, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3013, file: !3014, line: 46, baseType: !168, size: 128, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3013, file: !3014, line: 47, baseType: !510, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3013, file: !3014, line: 48, baseType: !3021, size: 64, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3013, file: !3014, line: 49, baseType: !3024, size: 320, offset: 320)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3025, line: 11, size: 320, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3026 = !{!3027, !3028, !3029, !3034}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3024, file: !3025, line: 16, baseType: !640, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3024, file: !3025, line: 17, baseType: !110, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3024, file: !3025, line: 18, baseType: !3030, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3024, file: !3025, line: 19, baseType: !122, size: 32, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3013, file: !3014, line: 50, baseType: !110, size: 64, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3013, file: !3014, line: 51, baseType: !225, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3013, file: !3014, line: 52, baseType: !225, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3013, file: !3014, line: 53, baseType: !225, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3013, file: !3014, line: 54, baseType: !225, size: 64, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3013, file: !3014, line: 55, baseType: !225, size: 64, offset: 960)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3013, file: !3014, line: 56, baseType: !110, size: 64, offset: 1024)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3013, file: !3014, line: 57, baseType: !110, size: 64, offset: 1088)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3013, file: !3014, line: 58, baseType: !110, size: 64, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3013, file: !3014, line: 59, baseType: !110, size: 64, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3013, file: !3014, line: 60, baseType: !110, size: 64, offset: 1280)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3013, file: !3014, line: 61, baseType: !2829, size: 64, offset: 1344)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3013, file: !3014, line: 62, baseType: !584, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3013, file: !3014, line: 63, baseType: !584, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2994, file: !44, line: 583, baseType: !584, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2994, file: !44, line: 584, baseType: !584, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2994, file: !44, line: 585, baseType: !584, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2994, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2994, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2994, file: !44, line: 592, baseType: !217, size: 512, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2994, file: !44, line: 593, baseType: !175, size: 64, offset: 1088)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2994, file: !44, line: 594, baseType: !1664, size: 256, offset: 1152)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2994, file: !44, line: 595, baseType: !912, size: 128, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2994, file: !44, line: 596, baseType: !3021, size: 64, offset: 1536)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2994, file: !44, line: 597, baseType: !136, size: 32, offset: 1600)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2994, file: !44, line: 598, baseType: !136, size: 32, offset: 1632)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2994, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2994, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2994, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2994, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2994, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2994, file: !44, line: 604, baseType: !584, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2994, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2994, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2994, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2994, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2994, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2994, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2994, file: !44, line: 611, baseType: !43, size: 32, offset: 1728)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2994, file: !44, line: 612, baseType: !51, size: 32, offset: 1760)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2994, file: !44, line: 613, baseType: !109, size: 32, offset: 1792)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2994, file: !44, line: 614, baseType: !109, size: 32, offset: 1824)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2994, file: !44, line: 615, baseType: !175, size: 64, offset: 1856)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2994, file: !44, line: 616, baseType: !175, size: 64, offset: 1920)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2994, file: !44, line: 617, baseType: !175, size: 64, offset: 1984)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2994, file: !44, line: 618, baseType: !175, size: 64, offset: 2048)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2994, file: !44, line: 620, baseType: !3082, size: 64, offset: 2112)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3083, file: !44, line: 537, baseType: !510)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3083, file: !44, line: 538, baseType: !7, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3083, file: !44, line: 540, baseType: !168, size: 128, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3083, file: !44, line: 543, baseType: !3089, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2994, file: !44, line: 621, baseType: !3092, size: 64, offset: 2176)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !2829, !1131}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2994, file: !44, line: 622, baseType: !3096, size: 64, offset: 2240)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2830, file: !37, line: 486, baseType: !3099, size: 64, offset: 4096)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3108, !3109, !3110}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3100, file: !44, line: 643, baseType: !2861, size: 1472)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3100, file: !44, line: 644, baseType: !2864, size: 64, offset: 1472)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3100, file: !44, line: 645, baseType: !3105, size: 64, offset: 1536)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !2829, !584}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3100, file: !44, line: 646, baseType: !2864, size: 64, offset: 1600)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3100, file: !44, line: 647, baseType: !2855, size: 64, offset: 1664)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3100, file: !44, line: 648, baseType: !2855, size: 64, offset: 1728)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2830, file: !37, line: 493, baseType: !3112, size: 64, offset: 4160)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !37, line: 493, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2830, file: !37, line: 499, baseType: !168, size: 128, offset: 4224)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2830, file: !37, line: 502, baseType: !3116, size: 64, offset: 4352)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3118)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !37, line: 502, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2830, file: !37, line: 504, baseType: !3120, size: 64, offset: 4416)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2830, file: !37, line: 505, baseType: !175, size: 64, offset: 4480)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2830, file: !37, line: 510, baseType: !175, size: 64, offset: 4544)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2830, file: !37, line: 511, baseType: !3124, size: 64, offset: 4608)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3126)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !37, line: 511, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2830, file: !37, line: 513, baseType: !3128, size: 64, offset: 4672)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !37, line: 288, size: 128, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3129, file: !37, line: 293, baseType: !7, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3129, file: !37, line: 294, baseType: !110, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2830, file: !37, line: 515, baseType: !168, size: 128, offset: 4736)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2830, file: !37, line: 526, baseType: !3135, offset: 4864)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3136, line: 5, elements: !184)
!3136 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2830, file: !37, line: 528, baseType: !3138, size: 64, offset: 4864)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3140, line: 14, flags: DIFlagFwdDecl)
!3140 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2830, file: !37, line: 529, baseType: !3142, size: 64, offset: 4928)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3144, line: 17, size: 192, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3145 = !{!3146, !3147, !3230}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3143, file: !3144, line: 18, baseType: !3142, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3143, file: !3144, line: 19, baseType: !3148, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3144, line: 110, size: 1152, elements: !3151)
!3151 = !{!3152, !3156, !3160, !3166, !3172, !3176, !3180, !3185, !3189, !3190, !3194, !3198, !3202, !3213, !3214, !3215, !3216, !3226}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3150, file: !3144, line: 111, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3142, !3142}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3150, file: !3144, line: 112, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3142}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3150, file: !3144, line: 113, baseType: !3161, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!584, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3150, file: !3144, line: 114, baseType: !3167, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2019, !3164, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2830)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3150, file: !3144, line: 116, baseType: !3173, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!584, !3164, !539}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3150, file: !3144, line: 118, baseType: !3177, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!109, !3164, !539, !7, !106, !720}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3150, file: !3144, line: 123, baseType: !3181, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!109, !3164, !539, !3184, !720}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3150, file: !3144, line: 126, baseType: !3186, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!539, !3164}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3150, file: !3144, line: 127, baseType: !3186, size: 64, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3150, file: !3144, line: 128, baseType: !3191, size: 64, offset: 576)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!3142, !3164}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3150, file: !3144, line: 130, baseType: !3195, size: 64, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!3142, !3164, !3142}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3150, file: !3144, line: 133, baseType: !3199, size: 64, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!3142, !3164, !539}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3150, file: !3144, line: 135, baseType: !3203, size: 64, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!109, !3164, !539, !539, !7, !7, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3144, line: 43, size: 640, elements: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3207, file: !3144, line: 44, baseType: !3142, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3207, file: !3144, line: 45, baseType: !7, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3207, file: !3144, line: 46, baseType: !3212, size: 512, offset: 128)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 512, elements: !263)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3150, file: !3144, line: 140, baseType: !3195, size: 64, offset: 832)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3150, file: !3144, line: 143, baseType: !3191, size: 64, offset: 896)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3150, file: !3144, line: 145, baseType: !3153, size: 64, offset: 960)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3150, file: !3144, line: 146, baseType: !3217, size: 64, offset: 1024)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!109, !3164, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3144, line: 29, size: 128, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3221, file: !3144, line: 30, baseType: !7, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3221, file: !3144, line: 31, baseType: !7, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3221, file: !3144, line: 32, baseType: !3164, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3150, file: !3144, line: 148, baseType: !3227, size: 64, offset: 1088)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!109, !3164, !2829}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3143, file: !3144, line: 20, baseType: !2829, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2830, file: !37, line: 534, baseType: !598, size: 32, offset: 4992)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2830, file: !37, line: 535, baseType: !122, size: 32, offset: 5024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2830, file: !37, line: 537, baseType: !510, offset: 5056)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2830, file: !37, line: 538, baseType: !168, size: 128, offset: 5056)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2830, file: !37, line: 540, baseType: !3236, size: 64, offset: 5184)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3238, line: 54, size: 960, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3250, !3254, !3255, !3256, !3257, !3261, !3265, !3266}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3237, file: !3238, line: 55, baseType: !539, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3237, file: !3238, line: 56, baseType: !631, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3237, file: !3238, line: 58, baseType: !1966, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3237, file: !3238, line: 59, baseType: !1966, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3237, file: !3238, line: 60, baseType: !1893, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3237, file: !3238, line: 62, baseType: !2846, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3237, file: !3238, line: 63, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!565, !2829, !2853}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3237, file: !3238, line: 65, baseType: !3251, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !3236}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3237, file: !3238, line: 66, baseType: !2855, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3237, file: !3238, line: 68, baseType: !2864, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3237, file: !3238, line: 70, baseType: !2002, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3237, file: !3238, line: 71, baseType: !3258, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!2019, !2829}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3237, file: !3238, line: 73, baseType: !3262, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !2829, !2036, !2037}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3237, file: !3238, line: 75, baseType: !2859, size: 64, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3237, file: !3238, line: 77, baseType: !2976, size: 64, offset: 896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2830, file: !37, line: 541, baseType: !1966, size: 64, offset: 5248)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2830, file: !37, line: 543, baseType: !2855, size: 64, offset: 5312)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2830, file: !37, line: 544, baseType: !3270, size: 64, offset: 5376)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !37, line: 45, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2830, file: !37, line: 545, baseType: !3273, size: 64, offset: 5440)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !37, line: 47, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2830, file: !37, line: 547, baseType: !584, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2830, file: !37, line: 548, baseType: !584, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2830, file: !37, line: 549, baseType: !584, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2830, file: !37, line: 550, baseType: !584, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2823, file: !2824, line: 289, baseType: !3280, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3282, line: 302, size: 1472, elements: !3283)
!3282 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3283 = !{!3284, !3285, !3286, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3315, !3316, !3320, !3321, !3323, !3409, !3412, !3413, !3538}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3281, file: !3282, line: 303, baseType: !109, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3281, file: !3282, line: 304, baseType: !2172, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3281, file: !3282, line: 305, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3281, file: !3282, line: 306, baseType: !631, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3281, file: !3282, line: 307, baseType: !539, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3281, file: !3282, line: 308, baseType: !539, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3281, file: !3282, line: 309, baseType: !109, size: 32, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3281, file: !3282, line: 310, baseType: !109, size: 32, offset: 352)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3281, file: !3282, line: 311, baseType: !109, size: 32, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3281, file: !3282, line: 312, baseType: !7, size: 32, offset: 416)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3281, file: !3282, line: 313, baseType: !1166, size: 16, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3281, file: !3282, line: 314, baseType: !1166, size: 16, offset: 464)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3281, file: !3282, line: 315, baseType: !3298, size: 352, offset: 480)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3299, line: 32, size: 352, elements: !3300)
!3299 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!3300 = !{!3301, !3303, !3304, !3305, !3306, !3308, !3312, !3314}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3298, file: !3299, line: 33, baseType: !3302, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3299, line: 9, baseType: !7)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3298, file: !3299, line: 34, baseType: !3302, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3298, file: !3299, line: 35, baseType: !3302, size: 32, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3298, file: !3299, line: 36, baseType: !3302, size: 32, offset: 96)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3298, file: !3299, line: 37, baseType: !3307, size: 8, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3299, line: 7, baseType: !300)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3298, file: !3299, line: 38, baseType: !3309, size: 152, offset: 136)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 152, elements: !3310)
!3310 = !{!3311}
!3311 = !DISubrange(count: 19)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3298, file: !3299, line: 39, baseType: !3313, size: 32, offset: 288)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3299, line: 8, baseType: !7)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3298, file: !3299, line: 40, baseType: !3313, size: 32, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3281, file: !3282, line: 316, baseType: !110, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3281, file: !3282, line: 317, baseType: !3317, size: 64, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3319, line: 123, flags: DIFlagFwdDecl)
!3319 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3281, file: !3282, line: 318, baseType: !3280, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3281, file: !3282, line: 323, baseType: !3322, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3281, file: !3282, line: 324, baseType: !3324, size: 64, offset: 1088)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2824, line: 230, size: 2432, elements: !3327)
!3327 = !{!3328, !3357, !3358, !3359, !3381, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3404, !3405, !3406, !3407, !3408}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3326, file: !2824, line: 231, baseType: !3329, size: 1024)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2824, line: 85, size: 1024, elements: !3330)
!3330 = !{!3331, !3346, !3347, !3348, !3349, !3350, !3354, !3355, !3356}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3329, file: !2824, line: 86, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2824, line: 58, size: 256, elements: !3334)
!3334 = !{!3335, !3340, !3341, !3342, !3343, !3344, !3345}
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !2824, line: 59, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !2824, line: 59, size: 64, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3336, file: !2824, line: 60, baseType: !3332, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3336, file: !2824, line: 61, baseType: !773, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3333, file: !2824, line: 63, baseType: !109, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3333, file: !2824, line: 64, baseType: !109, size: 32, offset: 96)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3333, file: !2824, line: 65, baseType: !109, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3333, file: !2824, line: 66, baseType: !109, size: 32, offset: 160)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3333, file: !2824, line: 67, baseType: !109, size: 32, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3333, file: !2824, line: 69, baseType: !2612, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3329, file: !2824, line: 87, baseType: !1664, size: 256, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3329, file: !2824, line: 88, baseType: !729, size: 192, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3329, file: !2824, line: 89, baseType: !136, size: 32, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3329, file: !2824, line: 90, baseType: !3333, size: 256, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3329, file: !2824, line: 91, baseType: !3351, size: 64, offset: 832)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !774, line: 54, size: 64, elements: !3352)
!3352 = !{!3353}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3351, file: !774, line: 55, baseType: !777, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3329, file: !2824, line: 92, baseType: !136, size: 32, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3329, file: !2824, line: 93, baseType: !109, size: 32, offset: 928)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3329, file: !2824, line: 94, baseType: !3332, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3326, file: !2824, line: 232, baseType: !2822, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3326, file: !2824, line: 233, baseType: !2822, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3326, file: !2824, line: 234, baseType: !3360, size: 64, offset: 1152)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2824, line: 205, size: 320, elements: !3363)
!3363 = !{!3364, !3368, !3372, !3376, !3380}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3362, file: !2824, line: 207, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!109, !3325}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3362, file: !2824, line: 209, baseType: !3369, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3325, !109}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3362, file: !2824, line: 213, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3325}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3362, file: !2824, line: 218, baseType: !3377, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!109, !3325, !2822}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3362, file: !2824, line: 220, baseType: !3373, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3326, file: !2824, line: 235, baseType: !3382, size: 64, offset: 1216)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2824, line: 223, size: 128, elements: !3385)
!3385 = !{!3386, !3390}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3384, file: !2824, line: 224, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!109, !3325, !492, !492, !720}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3384, file: !2824, line: 225, baseType: !3373, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3326, file: !2824, line: 236, baseType: !510, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3326, file: !2824, line: 237, baseType: !109, size: 32, offset: 1280)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3326, file: !2824, line: 238, baseType: !109, size: 32, offset: 1312)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3326, file: !2824, line: 239, baseType: !912, size: 128, offset: 1344)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3326, file: !2824, line: 240, baseType: !912, size: 128, offset: 1472)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !2824, line: 241, baseType: !110, size: 64, offset: 1600)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3326, file: !2824, line: 242, baseType: !110, size: 64, offset: 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3326, file: !2824, line: 243, baseType: !300, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3326, file: !2824, line: 244, baseType: !300, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3326, file: !2824, line: 245, baseType: !729, size: 192, offset: 1792)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3326, file: !2824, line: 246, baseType: !729, size: 192, offset: 1984)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3326, file: !2824, line: 247, baseType: !3403, size: 64, offset: 2176)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3326, file: !2824, line: 248, baseType: !7, size: 32, offset: 2240)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3326, file: !2824, line: 249, baseType: !7, size: 32, offset: 2272)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3326, file: !2824, line: 250, baseType: !109, size: 32, offset: 2304)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3326, file: !2824, line: 253, baseType: !2172, size: 32, offset: 2336)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3326, file: !2824, line: 254, baseType: !106, size: 64, offset: 2368)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3281, file: !3282, line: 325, baseType: !3410, size: 64, offset: 1152)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3281, file: !3282, line: 326, baseType: !106, size: 64, offset: 1216)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3281, file: !3282, line: 332, baseType: !3414, size: 64, offset: 1280)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3282, line: 254, size: 2176, elements: !3417)
!3417 = !{!3418, !3422, !3426, !3430, !3434, !3438, !3442, !3443, !3447, !3451, !3452, !3456, !3457, !3461, !3465, !3469, !3470, !3471, !3472, !3473, !3474, !3478, !3479, !3480, !3484, !3488, !3489, !3493, !3505, !3520, !3526, !3532, !3533, !3537}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3416, file: !3282, line: 255, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!2822, !3280, !799, !109}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3416, file: !3282, line: 257, baseType: !3423, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!109, !3280, !2822}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3416, file: !3282, line: 258, baseType: !3427, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !3280, !2822}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3416, file: !3282, line: 259, baseType: !3431, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!109, !2822, !799}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3416, file: !3282, line: 260, baseType: !3435, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !2822, !799}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3416, file: !3282, line: 261, baseType: !3439, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !2822}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3416, file: !3282, line: 262, baseType: !3439, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3416, file: !3282, line: 263, baseType: !3444, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!109, !2822, !492, !109}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3416, file: !3282, line: 265, baseType: !3448, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!109, !2822, !300}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3416, file: !3282, line: 266, baseType: !3439, size: 64, offset: 576)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3416, file: !3282, line: 267, baseType: !3453, size: 64, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!109, !2822}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3416, file: !3282, line: 268, baseType: !3453, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3416, file: !3282, line: 269, baseType: !3458, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!109, !2822, !7, !110}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3416, file: !3282, line: 271, baseType: !3462, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!128, !2822, !7, !110}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3416, file: !3282, line: 273, baseType: !3466, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !2822, !3411}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3416, file: !3282, line: 274, baseType: !3439, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3416, file: !3282, line: 275, baseType: !3439, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3416, file: !3282, line: 276, baseType: !3439, size: 64, offset: 1088)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3416, file: !3282, line: 277, baseType: !3439, size: 64, offset: 1152)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3416, file: !3282, line: 278, baseType: !3439, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3416, file: !3282, line: 279, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!109, !2822, !109}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3416, file: !3282, line: 280, baseType: !3439, size: 64, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3416, file: !3282, line: 281, baseType: !3439, size: 64, offset: 1408)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3416, file: !3282, line: 282, baseType: !3481, size: 64, offset: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !2822, !109}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3416, file: !3282, line: 283, baseType: !3485, size: 64, offset: 1536)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !2822, !541}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3416, file: !3282, line: 284, baseType: !3453, size: 64, offset: 1600)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3416, file: !3282, line: 285, baseType: !3490, size: 64, offset: 1664)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!109, !2822, !7, !7}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3416, file: !3282, line: 287, baseType: !3494, size: 64, offset: 1728)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!109, !2822, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3499, line: 15, size: 64, elements: !3500)
!3499 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3498, file: !3499, line: 16, baseType: !193, size: 16)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3498, file: !3499, line: 17, baseType: !193, size: 16, offset: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3498, file: !3499, line: 18, baseType: !193, size: 16, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3498, file: !3499, line: 19, baseType: !193, size: 16, offset: 48)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3416, file: !3282, line: 288, baseType: !3506, size: 64, offset: 1792)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!109, !2822, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3511, line: 10, size: 128, elements: !3512)
!3511 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3512 = !{!3513, !3514, !3515, !3519}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3510, file: !3511, line: 12, baseType: !828, size: 16)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3510, file: !3511, line: 13, baseType: !828, size: 16, offset: 16)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3510, file: !3511, line: 14, baseType: !3516, size: 80, offset: 32)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 80, elements: !3517)
!3517 = !{!3518}
!3518 = !DISubrange(count: 5)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3510, file: !3511, line: 15, baseType: !828, size: 16, offset: 112)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3416, file: !3282, line: 289, baseType: !3521, size: 64, offset: 1856)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!109, !2822, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3282, line: 251, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3416, file: !3282, line: 291, baseType: !3527, size: 64, offset: 1920)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!109, !2822, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3282, line: 252, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3416, file: !3282, line: 292, baseType: !3527, size: 64, offset: 1984)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3416, file: !3282, line: 293, baseType: !3534, size: 64, offset: 2048)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !2822, !714}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3416, file: !3282, line: 299, baseType: !760, size: 64, offset: 2112)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3281, file: !3282, line: 333, baseType: !168, size: 128, offset: 1344)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2823, file: !2824, line: 290, baseType: !3414, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2823, file: !2824, line: 291, baseType: !109, size: 32, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2823, file: !2824, line: 294, baseType: !3542, size: 384, offset: 320)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3543, line: 133, size: 384, elements: !3544)
!3543 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!3544 = !{!3545, !3546, !3547, !3548, !3549}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3542, file: !3543, line: 134, baseType: !733, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3542, file: !3543, line: 135, baseType: !242, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3542, file: !3543, line: 136, baseType: !7, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3542, file: !3543, line: 137, baseType: !168, size: 128, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3542, file: !3543, line: 138, baseType: !168, size: 128, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2823, file: !2824, line: 295, baseType: !3551, size: 64, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3543, line: 215, size: 128, elements: !3553)
!3553 = !{!3554, !3599}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3552, file: !3543, line: 216, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3543, line: 175, size: 1216, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3569, !3573, !3577, !3578, !3579, !3583, !3584, !3588, !3589, !3593, !3597, !3598}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3556, file: !3543, line: 176, baseType: !109, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3556, file: !3543, line: 177, baseType: !565, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3556, file: !3543, line: 178, baseType: !109, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3556, file: !3543, line: 179, baseType: !109, size: 32, offset: 160)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3556, file: !3543, line: 184, baseType: !3453, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3556, file: !3543, line: 185, baseType: !3439, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3556, file: !3543, line: 186, baseType: !3439, size: 64, offset: 320)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3556, file: !3543, line: 187, baseType: !3566, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!804, !2822, !799, !3403, !720}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3556, file: !3543, line: 189, baseType: !3570, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!804, !2822, !799, !492, !720}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3556, file: !3543, line: 191, baseType: !3574, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!109, !2822, !799, !7, !110}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3556, file: !3543, line: 193, baseType: !3574, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3556, file: !3543, line: 195, baseType: !3466, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3556, file: !3543, line: 196, baseType: !3580, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!862, !2822, !799, !864}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3556, file: !3543, line: 198, baseType: !3453, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3556, file: !3543, line: 203, baseType: !3585, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !2822, !492, !565, !109}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3556, file: !3543, line: 205, baseType: !3439, size: 64, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3556, file: !3543, line: 206, baseType: !3590, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !2822, !7}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3556, file: !3543, line: 207, baseType: !3594, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!109, !2822, !492, !565, !109}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3556, file: !3543, line: 210, baseType: !631, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3556, file: !3543, line: 212, baseType: !109, size: 32, offset: 1152)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3552, file: !3543, line: 217, baseType: !2822, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2823, file: !2824, line: 297, baseType: !729, size: 192, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2823, file: !2824, line: 298, baseType: !729, size: 192, offset: 960)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2823, file: !2824, line: 299, baseType: !729, size: 192, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2823, file: !2824, line: 300, baseType: !1139, size: 256, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2823, file: !2824, line: 301, baseType: !729, size: 192, offset: 1600)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !2823, file: !2824, line: 302, baseType: !510, offset: 1792)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !2823, file: !2824, line: 303, baseType: !510, offset: 1792)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2823, file: !2824, line: 305, baseType: !3298, size: 352, offset: 1792)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2823, file: !2824, line: 305, baseType: !3298, size: 352, offset: 2144)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !2823, file: !2824, line: 306, baseType: !3509, size: 64, offset: 2496)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2823, file: !2824, line: 307, baseType: !3611, size: 512, offset: 2560)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !1928)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !2823, file: !2824, line: 308, baseType: !1067, size: 64, offset: 3072)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2823, file: !2824, line: 313, baseType: !1067, size: 64, offset: 3136)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !2824, line: 314, baseType: !110, size: 64, offset: 3200)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2823, file: !2824, line: 315, baseType: !109, size: 32, offset: 3264)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2823, file: !2824, line: 316, baseType: !3498, size: 64, offset: 3296)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !2823, file: !2824, line: 317, baseType: !110, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !2823, file: !2824, line: 318, baseType: !110, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2823, file: !2824, line: 319, baseType: !110, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2823, file: !2824, line: 320, baseType: !109, size: 32, offset: 3456)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !2823, file: !2824, line: 321, baseType: !110, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2823, file: !2824, line: 322, baseType: !110, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !2823, file: !2824, line: 323, baseType: !110, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2823, file: !2824, line: 324, baseType: !7, size: 32, offset: 3584)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2823, file: !2824, line: 325, baseType: !109, size: 32, offset: 3616)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2823, file: !2824, line: 327, baseType: !2822, size: 64, offset: 3648)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2823, file: !2824, line: 328, baseType: !922, size: 64, offset: 3712)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2823, file: !2824, line: 329, baseType: !912, size: 128, offset: 3776)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2823, file: !2824, line: 330, baseType: !912, size: 128, offset: 3904)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2823, file: !2824, line: 331, baseType: !1664, size: 256, offset: 4032)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2823, file: !2824, line: 332, baseType: !106, size: 64, offset: 4288)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2823, file: !2824, line: 333, baseType: !106, size: 64, offset: 4352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2823, file: !2824, line: 334, baseType: !510, offset: 4416)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2823, file: !2824, line: 335, baseType: !168, size: 128, offset: 4416)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2823, file: !2824, line: 339, baseType: !109, size: 32, offset: 4544)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2823, file: !2824, line: 340, baseType: !3403, size: 64, offset: 4608)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2823, file: !2824, line: 341, baseType: !109, size: 32, offset: 4672)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2823, file: !2824, line: 343, baseType: !1664, size: 256, offset: 4736)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2823, file: !2824, line: 344, baseType: !3325, size: 64, offset: 4992)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2769, file: !2770, line: 175, baseType: !3641, size: 32, offset: 3200)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !272, line: 805, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 798, size: 32, elements: !3643)
!3643 = !{!3644, !3645}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3642, file: !272, line: 803, baseType: !466, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !272, line: 804, baseType: !510, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2769, file: !2770, line: 176, baseType: !175, size: 64, offset: 3264)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2769, file: !2770, line: 176, baseType: !175, size: 64, offset: 3328)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2769, file: !2770, line: 176, baseType: !175, size: 64, offset: 3392)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2769, file: !2770, line: 176, baseType: !175, size: 64, offset: 3456)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2769, file: !2770, line: 177, baseType: !175, size: 64, offset: 3520)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2769, file: !2770, line: 178, baseType: !175, size: 64, offset: 3584)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2769, file: !2770, line: 179, baseType: !2718, size: 128, offset: 3648)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2769, file: !2770, line: 180, baseType: !110, size: 64, offset: 3776)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2769, file: !2770, line: 180, baseType: !110, size: 64, offset: 3840)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2769, file: !2770, line: 180, baseType: !110, size: 64, offset: 3904)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2769, file: !2770, line: 180, baseType: !110, size: 64, offset: 3968)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2769, file: !2770, line: 181, baseType: !110, size: 64, offset: 4032)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2769, file: !2770, line: 181, baseType: !110, size: 64, offset: 4096)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2769, file: !2770, line: 181, baseType: !110, size: 64, offset: 4160)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2769, file: !2770, line: 181, baseType: !110, size: 64, offset: 4224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2769, file: !2770, line: 182, baseType: !110, size: 64, offset: 4288)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2769, file: !2770, line: 182, baseType: !110, size: 64, offset: 4352)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2769, file: !2770, line: 182, baseType: !110, size: 64, offset: 4416)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2769, file: !2770, line: 182, baseType: !110, size: 64, offset: 4480)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2769, file: !2770, line: 183, baseType: !110, size: 64, offset: 4544)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2769, file: !2770, line: 183, baseType: !110, size: 64, offset: 4608)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2769, file: !2770, line: 184, baseType: !3668, offset: 4672)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3669, line: 12, elements: !184)
!3669 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2769, file: !2770, line: 192, baseType: !177, size: 64, offset: 4672)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2769, file: !2770, line: 203, baseType: !3672, size: 2048, offset: 4736)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3673, size: 2048, elements: !1613)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3674, line: 43, size: 128, elements: !3675)
!3674 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3673, file: !3674, line: 44, baseType: !722, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3673, file: !3674, line: 45, baseType: !722, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2769, file: !2770, line: 220, baseType: !584, size: 8, offset: 6784)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2769, file: !2770, line: 221, baseType: !1166, size: 16, offset: 6800)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2769, file: !2770, line: 222, baseType: !1166, size: 16, offset: 6816)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2769, file: !2770, line: 224, baseType: !325, size: 64, offset: 6848)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2769, file: !2770, line: 227, baseType: !729, size: 192, offset: 6912)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2769, file: !2770, line: 233, baseType: !729, size: 192, offset: 7104)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !113, file: !114, line: 970, baseType: !3685, size: 64, offset: 9280)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2770, line: 20, size: 16576, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3686, file: !2770, line: 21, baseType: !510)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3686, file: !2770, line: 22, baseType: !131, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3686, file: !2770, line: 23, baseType: !912, size: 128, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3686, file: !2770, line: 24, baseType: !3692, size: 16384, offset: 192)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3693, size: 16384, elements: !1928)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2780, line: 49, size: 256, elements: !3694)
!3694 = !{!3695}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3693, file: !2780, line: 50, baseType: !3696, size: 256)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2780, line: 35, size: 256, elements: !3697)
!3697 = !{!3698, !3705, !3706, !3712}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3696, file: !2780, line: 37, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3700, line: 19, baseType: !3701)
!3700 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3700, line: 18, baseType: !3703)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !109}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3696, file: !2780, line: 38, baseType: !110, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3696, file: !2780, line: 44, baseType: !3707, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3700, line: 22, baseType: !3708)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3700, line: 21, baseType: !3710)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3696, file: !2780, line: 46, baseType: !2784, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !113, file: !114, line: 971, baseType: !2784, size: 64, offset: 9344)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !113, file: !114, line: 972, baseType: !2784, size: 64, offset: 9408)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !113, file: !114, line: 974, baseType: !2784, size: 64, offset: 9472)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !113, file: !114, line: 975, baseType: !2779, size: 192, offset: 9536)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !113, file: !114, line: 976, baseType: !110, size: 64, offset: 9728)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !113, file: !114, line: 977, baseType: !720, size: 64, offset: 9792)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !113, file: !114, line: 978, baseType: !7, size: 32, offset: 9856)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !113, file: !114, line: 980, baseType: !782, size: 64, offset: 9920)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !113, file: !114, line: 989, baseType: !3722, size: 128, offset: 9984)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3723, line: 35, size: 128, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3722, file: !3723, line: 36, baseType: !109, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3722, file: !3723, line: 37, baseType: !136, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3722, file: !3723, line: 38, baseType: !3728, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3723, line: 23, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !113, file: !114, line: 992, baseType: !175, size: 64, offset: 10112)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !113, file: !114, line: 993, baseType: !175, size: 64, offset: 10176)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !113, file: !114, line: 996, baseType: !510, offset: 10240)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !113, file: !114, line: 999, baseType: !242, offset: 10240)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !113, file: !114, line: 1001, baseType: !3735, size: 64, offset: 10240)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !114, line: 636, size: 64, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3735, file: !114, line: 637, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !113, file: !114, line: 1005, baseType: !285, size: 128, offset: 10304)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !113, file: !114, line: 1007, baseType: !112, size: 64, offset: 10432)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !113, file: !114, line: 1009, baseType: !3742, size: 64, offset: 10496)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !114, line: 1009, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !113, file: !114, line: 1043, baseType: !106, size: 64, offset: 10560)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !113, file: !114, line: 1046, baseType: !3746, size: 64, offset: 10624)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !114, line: 41, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !113, file: !114, line: 1050, baseType: !3749, size: 64, offset: 10688)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !114, line: 42, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !113, file: !114, line: 1054, baseType: !3752, size: 64, offset: 10752)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !114, line: 55, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !113, file: !114, line: 1056, baseType: !1521, size: 64, offset: 10816)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !113, file: !114, line: 1058, baseType: !3756, size: 64, offset: 10880)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3758, line: 99, size: 704, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !{!3760, !3761, !3762, !3763, !3764, !3765, !3766, !3785, !3786}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3757, file: !3758, line: 100, baseType: !733, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3757, file: !3758, line: 101, baseType: !136, size: 32, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3757, file: !3758, line: 102, baseType: !136, size: 32, offset: 96)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3757, file: !3758, line: 105, baseType: !510, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3757, file: !3758, line: 107, baseType: !193, size: 16, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3757, file: !3758, line: 109, baseType: !2068, size: 128, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3757, file: !3758, line: 110, baseType: !3767, size: 64, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3758, line: 73, size: 448, elements: !3769)
!3769 = !{!3770, !3773, !3774, !3779, !3784}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3768, file: !3758, line: 74, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3758, line: 74, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3768, file: !3758, line: 75, baseType: !3756, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3768, file: !3758, line: 83, baseType: !3775, size: 128, offset: 128)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3768, file: !3758, line: 83, size: 128, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3775, file: !3758, line: 84, baseType: !168, size: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3775, file: !3758, line: 85, baseType: !2320, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !3768, file: !3758, line: 87, baseType: !3780, size: 128, offset: 256)
!3780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3768, file: !3758, line: 87, size: 128, elements: !3781)
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3780, file: !3758, line: 88, baseType: !640, size: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3780, file: !3758, line: 89, baseType: !779, size: 128, align: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3768, file: !3758, line: 92, baseType: !7, size: 32, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3757, file: !3758, line: 111, baseType: !636, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3757, file: !3758, line: 113, baseType: !1664, size: 256, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !113, file: !114, line: 1061, baseType: !3788, size: 64, offset: 10944)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !114, line: 43, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !113, file: !114, line: 1064, baseType: !110, size: 64, offset: 11008)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !113, file: !114, line: 1065, baseType: !3792, size: 64, offset: 11072)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2780, line: 14, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2780, line: 12, size: 384, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !2780, line: 13, baseType: !3797, size: 384)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3794, file: !2780, line: 13, size: 384, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3797, file: !2780, line: 13, baseType: !109, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3797, file: !2780, line: 13, baseType: !109, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3797, file: !2780, line: 13, baseType: !109, size: 32, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3797, file: !2780, line: 13, baseType: !3803, size: 256, offset: 128)
!3803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3804, line: 32, size: 256, elements: !3805)
!3804 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3805 = !{!3806, !3811, !3824, !3830, !3839, !3859, !3864}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3803, file: !3804, line: 37, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 34, size: 64, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3807, file: !3804, line: 35, baseType: !2695, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3807, file: !3804, line: 36, baseType: !442, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3803, file: !3804, line: 45, baseType: !3812, size: 192)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 40, size: 192, elements: !3813)
!3813 = !{!3814, !3816, !3817, !3823}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3812, file: !3804, line: 41, baseType: !3815, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !269, line: 95, baseType: !109)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3812, file: !3804, line: 42, baseType: !109, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3812, file: !3804, line: 43, baseType: !3818, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3804, line: 11, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3804, line: 8, size: 64, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3819, file: !3804, line: 9, baseType: !109, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3819, file: !3804, line: 10, baseType: !106, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3812, file: !3804, line: 44, baseType: !109, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3803, file: !3804, line: 52, baseType: !3825, size: 128)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 48, size: 128, elements: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3825, file: !3804, line: 49, baseType: !2695, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3825, file: !3804, line: 50, baseType: !442, size: 32, offset: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3825, file: !3804, line: 51, baseType: !3818, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3803, file: !3804, line: 61, baseType: !3831, size: 256)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 55, size: 256, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3838}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3831, file: !3804, line: 56, baseType: !2695, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3831, file: !3804, line: 57, baseType: !442, size: 32, offset: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3831, file: !3804, line: 58, baseType: !109, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3831, file: !3804, line: 59, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !269, line: 94, baseType: !806)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3831, file: !3804, line: 60, baseType: !3837, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3803, file: !3804, line: 95, baseType: !3840, size: 256)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 64, size: 256, elements: !3841)
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3840, file: !3804, line: 65, baseType: !106, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3840, file: !3804, line: 77, baseType: !3844, size: 192, offset: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3840, file: !3804, line: 77, size: 192, elements: !3845)
!3845 = !{!3846, !3847, !3854}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3844, file: !3804, line: 82, baseType: !1166, size: 16)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3844, file: !3804, line: 88, baseType: !3848, size: 192)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3844, file: !3804, line: 84, size: 192, elements: !3849)
!3849 = !{!3850, !3852, !3853}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3848, file: !3804, line: 85, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 64, elements: !263)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3848, file: !3804, line: 86, baseType: !106, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3848, file: !3804, line: 87, baseType: !106, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3844, file: !3804, line: 93, baseType: !3855, size: 96)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3844, file: !3804, line: 90, size: 96, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3855, file: !3804, line: 91, baseType: !3851, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3855, file: !3804, line: 92, baseType: !124, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3803, file: !3804, line: 101, baseType: !3860, size: 128)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 98, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3860, file: !3804, line: 99, baseType: !128, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3860, file: !3804, line: 100, baseType: !109, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3803, file: !3804, line: 108, baseType: !3865, size: 128)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3803, file: !3804, line: 104, size: 128, elements: !3866)
!3866 = !{!3867, !3868, !3869}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3865, file: !3804, line: 105, baseType: !106, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3865, file: !3804, line: 106, baseType: !109, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3865, file: !3804, line: 107, baseType: !7, size: 32, offset: 96)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !113, file: !114, line: 1067, baseType: !3668, offset: 11136)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !113, file: !114, line: 1099, baseType: !3872, size: 64, offset: 11136)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !114, line: 56, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !113, file: !114, line: 1103, baseType: !168, size: 128, offset: 11200)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !113, file: !114, line: 1104, baseType: !3876, size: 64, offset: 11328)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !114, line: 46, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !113, file: !114, line: 1105, baseType: !729, size: 192, offset: 11392)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !113, file: !114, line: 1106, baseType: !7, size: 32, offset: 11584)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !113, file: !114, line: 1109, baseType: !3881, size: 128, offset: 11648)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3882, size: 128, elements: !1115)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !114, line: 51, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !113, file: !114, line: 1110, baseType: !729, size: 192, offset: 11776)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !113, file: !114, line: 1111, baseType: !168, size: 128, offset: 11968)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !113, file: !114, line: 1173, baseType: !3887, size: 64, offset: 12096)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3889, line: 62, size: 256, align: 256, elements: !3890)
!3889 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3890 = !{!3891, !3892, !3893, !3898}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3888, file: !3889, line: 75, baseType: !124, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3888, file: !3889, line: 90, baseType: !124, size: 32, offset: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3888, file: !3889, line: 124, baseType: !3894, size: 64, offset: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3888, file: !3889, line: 109, size: 64, elements: !3895)
!3895 = !{!3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3894, file: !3889, line: 110, baseType: !176, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3894, file: !3889, line: 112, baseType: !176, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3888, file: !3889, line: 144, baseType: !124, size: 32, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !113, file: !114, line: 1174, baseType: !122, size: 32, offset: 12160)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !113, file: !114, line: 1179, baseType: !110, size: 64, offset: 12224)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !113, file: !114, line: 1182, baseType: !3902, size: 128, offset: 12288)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2536, line: 76, size: 128, elements: !3903)
!3903 = !{!3904, !3909, !3910}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3902, file: !2536, line: 85, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3906, line: 7, size: 64, elements: !3907)
!3906 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3905, file: !3906, line: 12, baseType: !314, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3902, file: !2536, line: 88, baseType: !584, size: 8, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3902, file: !2536, line: 95, baseType: !584, size: 8, offset: 72)
!3911 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !114, line: 1184, baseType: !3912, size: 128, offset: 12416)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !114, line: 1184, size: 128, elements: !3913)
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3912, file: !114, line: 1185, baseType: !131, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3912, file: !114, line: 1186, baseType: !779, size: 128, align: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !113, file: !114, line: 1190, baseType: !1026, size: 64, offset: 12544)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !113, file: !114, line: 1192, baseType: !3918, size: 128, offset: 12608)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2536, line: 64, size: 128, elements: !3919)
!3919 = !{!3920, !3921, !3922}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3918, file: !2536, line: 65, baseType: !413, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3918, file: !2536, line: 67, baseType: !124, size: 32, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3918, file: !2536, line: 68, baseType: !124, size: 32, offset: 96)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !113, file: !114, line: 1206, baseType: !109, size: 32, offset: 12736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !113, file: !114, line: 1207, baseType: !109, size: 32, offset: 12768)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !113, file: !114, line: 1209, baseType: !110, size: 64, offset: 12800)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !113, file: !114, line: 1219, baseType: !175, size: 64, offset: 12864)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !113, file: !114, line: 1220, baseType: !175, size: 64, offset: 12928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !113, file: !114, line: 1317, baseType: !109, size: 32, offset: 12992)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !113, file: !114, line: 1319, baseType: !112, size: 64, offset: 13056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !113, file: !114, line: 1322, baseType: !3931, size: 64, offset: 13120)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3933, line: 56, size: 512, elements: !3934)
!3933 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3943}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3932, file: !3933, line: 57, baseType: !3931, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3932, file: !3933, line: 58, baseType: !106, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3932, file: !3933, line: 59, baseType: !110, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !3933, line: 60, baseType: !110, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3932, file: !3933, line: 61, baseType: !2235, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3932, file: !3933, line: 62, baseType: !7, size: 32, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3932, file: !3933, line: 63, baseType: !3942, size: 64, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !108, line: 153, baseType: !175)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3932, file: !3933, line: 64, baseType: !2019, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !113, file: !114, line: 1326, baseType: !131, size: 32, offset: 13184)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !113, file: !114, line: 1342, baseType: !106, size: 64, offset: 13248)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !113, file: !114, line: 1343, baseType: !176, size: 64, offset: 13312)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !113, file: !114, line: 1344, baseType: !175, size: 64, offset: 13376)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !113, file: !114, line: 1345, baseType: !176, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !113, file: !114, line: 1346, baseType: !176, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !113, file: !114, line: 1347, baseType: !176, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !113, file: !114, line: 1348, baseType: !779, size: 128, align: 64, offset: 13504)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !113, file: !114, line: 1358, baseType: !3953, size: 34816, offset: 13824)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3954, line: 485, size: 34816, elements: !3955)
!3954 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3955 = !{!3956, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3985, !3986, !3987, !3988, !3989, !3990, !3993, !3994, !3995}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3953, file: !3954, line: 487, baseType: !3957, size: 192)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3958, size: 192, elements: !652)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3959, line: 16, size: 64, elements: !3960)
!3959 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3958, file: !3959, line: 17, baseType: !827, size: 16)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3958, file: !3959, line: 18, baseType: !827, size: 16, offset: 16)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3958, file: !3959, line: 19, baseType: !827, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3958, file: !3959, line: 19, baseType: !827, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3958, file: !3959, line: 19, baseType: !827, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3958, file: !3959, line: 19, baseType: !827, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3958, file: !3959, line: 19, baseType: !827, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3958, file: !3959, line: 20, baseType: !827, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3958, file: !3959, line: 20, baseType: !827, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3958, file: !3959, line: 20, baseType: !827, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3958, file: !3959, line: 20, baseType: !827, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3958, file: !3959, line: 20, baseType: !827, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3958, file: !3959, line: 20, baseType: !827, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3953, file: !3954, line: 491, baseType: !110, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3953, file: !3954, line: 495, baseType: !193, size: 16, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3953, file: !3954, line: 496, baseType: !193, size: 16, offset: 272)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3953, file: !3954, line: 497, baseType: !193, size: 16, offset: 288)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3953, file: !3954, line: 498, baseType: !193, size: 16, offset: 304)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3953, file: !3954, line: 502, baseType: !110, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3953, file: !3954, line: 503, baseType: !110, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3953, file: !3954, line: 514, baseType: !3982, size: 256, offset: 448)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3983, size: 256, elements: !1075)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3954, line: 483, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3953, file: !3954, line: 516, baseType: !110, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3953, file: !3954, line: 518, baseType: !110, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3953, file: !3954, line: 520, baseType: !110, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3953, file: !3954, line: 521, baseType: !110, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3953, file: !3954, line: 522, baseType: !110, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3953, file: !3954, line: 528, baseType: !3991, size: 64, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3954, line: 10, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3953, file: !3954, line: 535, baseType: !110, size: 64, offset: 1088)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3953, file: !3954, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3953, file: !3954, line: 540, baseType: !3996, size: 33280, offset: 1536)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3997, line: 317, size: 33280, elements: !3998)
!3997 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !{!3999, !4000, !4001}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3996, file: !3997, line: 330, baseType: !7, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3996, file: !3997, line: 337, baseType: !110, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3996, file: !3997, line: 348, baseType: !4002, size: 32768, offset: 512)
!4002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3997, line: 304, size: 32768, elements: !4003)
!4003 = !{!4004, !4019, !4056, !4106, !4119}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4002, file: !3997, line: 305, baseType: !4005, size: 896)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3997, line: 12, size: 896, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4018}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4005, file: !3997, line: 13, baseType: !122, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4005, file: !3997, line: 14, baseType: !122, size: 32, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4005, file: !3997, line: 15, baseType: !122, size: 32, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4005, file: !3997, line: 16, baseType: !122, size: 32, offset: 96)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4005, file: !3997, line: 17, baseType: !122, size: 32, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4005, file: !3997, line: 18, baseType: !122, size: 32, offset: 160)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4005, file: !3997, line: 19, baseType: !122, size: 32, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4005, file: !3997, line: 22, baseType: !4015, size: 640, offset: 224)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !4016)
!4016 = !{!4017}
!4017 = !DISubrange(count: 20)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4005, file: !3997, line: 25, baseType: !122, size: 32, offset: 864)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4002, file: !3997, line: 306, baseType: !4020, size: 4096, align: 128)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3997, line: 34, size: 4096, align: 128, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4041, !4042, !4043, !4045, !4047, !4051}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4020, file: !3997, line: 35, baseType: !827, size: 16)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4020, file: !3997, line: 36, baseType: !827, size: 16, offset: 16)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4020, file: !3997, line: 37, baseType: !827, size: 16, offset: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4020, file: !3997, line: 38, baseType: !827, size: 16, offset: 48)
!4026 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !3997, line: 39, baseType: !4027, size: 128, offset: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4020, file: !3997, line: 39, size: 128, elements: !4028)
!4028 = !{!4029, !4034}
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !3997, line: 40, baseType: !4030, size: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4027, file: !3997, line: 40, size: 128, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4030, file: !3997, line: 41, baseType: !175, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4030, file: !3997, line: 42, baseType: !175, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !3997, line: 44, baseType: !4035, size: 128)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4027, file: !3997, line: 44, size: 128, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4035, file: !3997, line: 45, baseType: !122, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4035, file: !3997, line: 46, baseType: !122, size: 32, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4035, file: !3997, line: 47, baseType: !122, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4035, file: !3997, line: 48, baseType: !122, size: 32, offset: 96)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4020, file: !3997, line: 51, baseType: !122, size: 32, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4020, file: !3997, line: 52, baseType: !122, size: 32, offset: 224)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4020, file: !3997, line: 55, baseType: !4044, size: 1024, offset: 256)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !497)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4020, file: !3997, line: 58, baseType: !4046, size: 2048, offset: 1280)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2048, elements: !1928)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4020, file: !3997, line: 60, baseType: !4048, size: 384, offset: 3328)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 384, elements: !4049)
!4049 = !{!4050}
!4050 = !DISubrange(count: 12)
!4051 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !3997, line: 62, baseType: !4052, size: 384, offset: 3712)
!4052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4020, file: !3997, line: 62, size: 384, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4052, file: !3997, line: 63, baseType: !4048, size: 384)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4052, file: !3997, line: 64, baseType: !4048, size: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4002, file: !3997, line: 307, baseType: !4057, size: 1088)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3997, line: 79, size: 1088, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4105}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4057, file: !3997, line: 80, baseType: !122, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4057, file: !3997, line: 81, baseType: !122, size: 32, offset: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4057, file: !3997, line: 82, baseType: !122, size: 32, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4057, file: !3997, line: 83, baseType: !122, size: 32, offset: 96)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4057, file: !3997, line: 84, baseType: !122, size: 32, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4057, file: !3997, line: 85, baseType: !122, size: 32, offset: 160)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4057, file: !3997, line: 86, baseType: !122, size: 32, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4057, file: !3997, line: 88, baseType: !4015, size: 640, offset: 224)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4057, file: !3997, line: 89, baseType: !298, size: 8, offset: 864)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4057, file: !3997, line: 90, baseType: !298, size: 8, offset: 872)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4057, file: !3997, line: 91, baseType: !298, size: 8, offset: 880)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4057, file: !3997, line: 92, baseType: !298, size: 8, offset: 888)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4057, file: !3997, line: 93, baseType: !298, size: 8, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4057, file: !3997, line: 94, baseType: !298, size: 8, offset: 904)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4057, file: !3997, line: 95, baseType: !4074, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4076, line: 11, size: 128, elements: !4077)
!4076 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!4077 = !{!4078, !4079}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4075, file: !4076, line: 12, baseType: !128, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4075, file: !4076, line: 13, baseType: !4080, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4082, line: 56, size: 1344, elements: !4083)
!4082 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4081, file: !4082, line: 61, baseType: !110, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4081, file: !4082, line: 62, baseType: !110, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4081, file: !4082, line: 63, baseType: !110, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4081, file: !4082, line: 64, baseType: !110, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4081, file: !4082, line: 65, baseType: !110, size: 64, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4081, file: !4082, line: 66, baseType: !110, size: 64, offset: 320)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4081, file: !4082, line: 68, baseType: !110, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4081, file: !4082, line: 69, baseType: !110, size: 64, offset: 448)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4081, file: !4082, line: 70, baseType: !110, size: 64, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4081, file: !4082, line: 71, baseType: !110, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4081, file: !4082, line: 72, baseType: !110, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4081, file: !4082, line: 73, baseType: !110, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4081, file: !4082, line: 74, baseType: !110, size: 64, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4081, file: !4082, line: 75, baseType: !110, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4081, file: !4082, line: 76, baseType: !110, size: 64, offset: 896)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4081, file: !4082, line: 81, baseType: !110, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4081, file: !4082, line: 83, baseType: !110, size: 64, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4081, file: !4082, line: 84, baseType: !110, size: 64, offset: 1088)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4081, file: !4082, line: 85, baseType: !110, size: 64, offset: 1152)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4081, file: !4082, line: 86, baseType: !110, size: 64, offset: 1216)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4081, file: !4082, line: 87, baseType: !110, size: 64, offset: 1280)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4057, file: !3997, line: 96, baseType: !122, size: 32, offset: 1024)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4002, file: !3997, line: 308, baseType: !4107, size: 4608, align: 512)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3997, line: 289, size: 4608, align: 512, elements: !4108)
!4108 = !{!4109, !4110, !4117}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4107, file: !3997, line: 290, baseType: !4020, size: 4096, align: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4107, file: !3997, line: 291, baseType: !4111, size: 512, offset: 4096)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3997, line: 268, size: 512, elements: !4112)
!4112 = !{!4113, !4114, !4115}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4111, file: !3997, line: 269, baseType: !175, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4111, file: !3997, line: 270, baseType: !175, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4111, file: !3997, line: 271, baseType: !4116, size: 384, offset: 128)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 384, elements: !1184)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4107, file: !3997, line: 292, baseType: !4118, offset: 4608)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !1282)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4002, file: !3997, line: 309, baseType: !4120, size: 32768)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32768, elements: !4121)
!4121 = !{!4122}
!4122 = !DISubrange(count: 4096)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !863, line: 32, baseType: !124)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!4125 = !{!4126, !4128, !4133, !4138, !4141, !4146, !4151, !4153, !0, !4167, !4169, !4447, !4450, !4464, !4466, !4468, !4505, !4513, !4515}
!4126 = !DIGlobalVariableExpression(var: !4127, expr: !DIExpression())
!4127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pti_init237", scope: !2, file: !3, line: 972, type: !106, isLocal: true, isDefinition: true)
!4128 = !DIGlobalVariableExpression(var: !4129, expr: !DIExpression())
!4129 = distinct !DIGlobalVariable(name: "__exitcall_pti_exit", scope: !2, file: !3, line: 973, type: !4130, isLocal: true, isDefinition: true)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4131, line: 117, baseType: !4132)
!4131 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file238", scope: !2, file: !3, line: 975, type: !4135, isLocal: true, isDefinition: true, align: 8)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 208, elements: !4136)
!4136 = !{!4137}
!4137 = !DISubrange(count: 26)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license239", scope: !2, file: !3, line: 975, type: !4140, isLocal: true, isDefinition: true, align: 8)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 128, elements: !1613)
!4141 = !DIGlobalVariableExpression(var: !4142, expr: !DIExpression())
!4142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author240", scope: !2, file: !3, line: 976, type: !4143, isLocal: true, isDefinition: true, align: 8)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 288, elements: !4144)
!4144 = !{!4145}
!4145 = !DISubrange(count: 36)
!4146 = !DIGlobalVariableExpression(var: !4147, expr: !DIExpression())
!4147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description241", scope: !2, file: !3, line: 977, type: !4148, isLocal: true, isDefinition: true, align: 8)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 216, elements: !4149)
!4149 = !{!4150}
!4150 = !DISubrange(count: 27)
!4151 = !DIGlobalVariableExpression(var: !4152, expr: !DIExpression())
!4152 = distinct !DIGlobalVariable(name: "pti_tty_driver", scope: !2, file: !3, line: 76, type: !3280, isLocal: true, isDefinition: true)
!4153 = !DIGlobalVariableExpression(var: !4154, expr: !DIExpression())
!4154 = distinct !DIGlobalVariable(name: "drv_data", scope: !2, file: !3, line: 77, type: !4155, isLocal: true, isDefinition: true)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pti_dev", file: !3, line: 54, size: 5440, elements: !4157)
!4157 = !{!4158, !4160, !4161, !4162, !4163, !4165, !4166}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4156, file: !3, line: 55, baseType: !4159, size: 4864)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3326, size: 4864, elements: !1115)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pti_addr", scope: !4156, file: !3, line: 56, baseType: !110, size: 64, offset: 4864)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_base", scope: !4156, file: !3, line: 57, baseType: !110, size: 64, offset: 4928)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "pti_ioaddr", scope: !4156, file: !3, line: 58, baseType: !106, size: 64, offset: 4992)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ia_app", scope: !4156, file: !3, line: 59, baseType: !4164, size: 128, offset: 5056)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !1613)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_os", scope: !4156, file: !3, line: 60, baseType: !4164, size: 128, offset: 5184)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_modem", scope: !4156, file: !3, line: 61, baseType: !4164, size: 128, offset: 5312)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "pti_control_channel", scope: !2, file: !3, line: 80, type: !7, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "pti_pci_driver", scope: !2, file: !3, line: 893, type: !4171, isLocal: true, isDefinition: true)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4172, line: 858, size: 2048, elements: !4173)
!4172 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4173 = !{!4174, !4175, !4176, !4188, !4405, !4409, !4413, !4417, !4418, !4422, !4440, !4441, !4442}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4171, file: !4172, line: 859, baseType: !168, size: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4171, file: !4172, line: 860, baseType: !539, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4171, file: !4172, line: 861, baseType: !4177, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !2917, line: 38, size: 256, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186, !4187}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4179, file: !2917, line: 39, baseType: !124, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4179, file: !2917, line: 39, baseType: !124, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4179, file: !2917, line: 40, baseType: !124, size: 32, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4179, file: !2917, line: 40, baseType: !124, size: 32, offset: 96)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4179, file: !2917, line: 41, baseType: !124, size: 32, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4179, file: !2917, line: 41, baseType: !124, size: 32, offset: 160)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4179, file: !2917, line: 42, baseType: !2936, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4171, file: !4172, line: 862, baseType: !4189, size: 64, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!109, !4192, !4177}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4172, line: 309, size: 19264, elements: !4194)
!4194 = !{!4195, !4196, !4268, !4269, !4270, !4271, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4299, !4301, !4302, !4303, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4327, !4328, !4329, !4330, !4332, !4333, !4334, !4335, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4378, !4379, !4381, !4382, !4383, !4384, !4386, !4387, !4388, !4391, !4398, !4399, !4400, !4401, !4402, !4403, !4404}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4193, file: !4172, line: 310, baseType: !168, size: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4193, file: !4172, line: 311, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4172, line: 605, size: 8064, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4221, !4222, !4223, !4247, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4260, !4261, !4263, !4264, !4265, !4266, !4267}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4198, file: !4172, line: 606, baseType: !168, size: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4198, file: !4172, line: 607, baseType: !4197, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4198, file: !4172, line: 608, baseType: !168, size: 128, offset: 192)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4198, file: !4172, line: 609, baseType: !168, size: 128, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4198, file: !4172, line: 610, baseType: !4192, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4198, file: !4172, line: 611, baseType: !168, size: 128, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4198, file: !4172, line: 613, baseType: !4207, size: 256, offset: 640)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4208, size: 256, elements: !1075)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4210, line: 20, size: 512, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4211 = !{!4212, !4214, !4215, !4216, !4217, !4218, !4219, !4220}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4209, file: !4210, line: 21, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !108, line: 158, baseType: !3942)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4209, file: !4210, line: 22, baseType: !4213, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4209, file: !4210, line: 23, baseType: !539, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4209, file: !4210, line: 24, baseType: !110, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4209, file: !4210, line: 25, baseType: !110, size: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4209, file: !4210, line: 26, baseType: !4208, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4209, file: !4210, line: 26, baseType: !4208, size: 64, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4209, file: !4210, line: 26, baseType: !4208, size: 64, offset: 448)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4198, file: !4172, line: 614, baseType: !168, size: 128, offset: 896)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4198, file: !4172, line: 615, baseType: !4209, size: 512, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4198, file: !4172, line: 617, baseType: !4224, size: 64, offset: 1536)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4172, line: 731, size: 320, elements: !4226)
!4226 = !{!4227, !4231, !4235, !4239, !4243}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4225, file: !4172, line: 732, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!109, !4197}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4225, file: !4172, line: 733, baseType: !4232, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4197}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4225, file: !4172, line: 734, baseType: !4236, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!106, !4197, !7, !109}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4225, file: !4172, line: 735, baseType: !4240, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!109, !4197, !7, !109, !109, !2652}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4225, file: !4172, line: 736, baseType: !4244, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!109, !4197, !7, !109, !109, !122}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4198, file: !4172, line: 618, baseType: !4248, size: 64, offset: 1600)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4172, line: 537, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4198, file: !4172, line: 619, baseType: !106, size: 64, offset: 1664)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4198, file: !4172, line: 620, baseType: !3317, size: 64, offset: 1728)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4198, file: !4172, line: 622, baseType: !300, size: 8, offset: 1792)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4198, file: !4172, line: 623, baseType: !300, size: 8, offset: 1800)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4198, file: !4172, line: 624, baseType: !300, size: 8, offset: 1808)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4198, file: !4172, line: 625, baseType: !300, size: 8, offset: 1816)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4198, file: !4172, line: 630, baseType: !4257, size: 384, offset: 1824)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 384, elements: !4258)
!4258 = !{!4259}
!4259 = !DISubrange(count: 48)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4198, file: !4172, line: 632, baseType: !193, size: 16, offset: 2208)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4198, file: !4172, line: 633, baseType: !4262, size: 16, offset: 2224)
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4172, line: 237, baseType: !193)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4198, file: !4172, line: 634, baseType: !2829, size: 64, offset: 2240)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4198, file: !4172, line: 635, baseType: !2830, size: 5568, offset: 2304)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4198, file: !4172, line: 636, baseType: !1980, size: 64, offset: 7872)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4198, file: !4172, line: 637, baseType: !1980, size: 64, offset: 7936)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4198, file: !4172, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4193, file: !4172, line: 312, baseType: !4197, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4193, file: !4172, line: 314, baseType: !106, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4193, file: !4172, line: 315, baseType: !3317, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4193, file: !4172, line: 316, baseType: !4272, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4172, line: 69, size: 832, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4280, !4281}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4273, file: !4172, line: 70, baseType: !4197, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4273, file: !4172, line: 71, baseType: !168, size: 128, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4273, file: !4172, line: 72, baseType: !4278, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4172, line: 72, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4273, file: !4172, line: 73, baseType: !300, size: 8, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4273, file: !4172, line: 74, baseType: !1887, size: 512, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4193, file: !4172, line: 318, baseType: !7, size: 32, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4193, file: !4172, line: 319, baseType: !193, size: 16, offset: 480)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4193, file: !4172, line: 320, baseType: !193, size: 16, offset: 496)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4193, file: !4172, line: 321, baseType: !193, size: 16, offset: 512)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4193, file: !4172, line: 322, baseType: !193, size: 16, offset: 528)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4193, file: !4172, line: 323, baseType: !7, size: 32, offset: 544)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4193, file: !4172, line: 324, baseType: !298, size: 8, offset: 576)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4193, file: !4172, line: 325, baseType: !298, size: 8, offset: 584)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4193, file: !4172, line: 330, baseType: !298, size: 8, offset: 592)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4193, file: !4172, line: 331, baseType: !298, size: 8, offset: 600)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4193, file: !4172, line: 332, baseType: !298, size: 8, offset: 608)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4193, file: !4172, line: 333, baseType: !298, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4193, file: !4172, line: 334, baseType: !298, size: 8, offset: 624)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4193, file: !4172, line: 335, baseType: !298, size: 8, offset: 632)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4193, file: !4172, line: 336, baseType: !827, size: 16, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4193, file: !4172, line: 337, baseType: !4298, size: 64, offset: 704)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4193, file: !4172, line: 339, baseType: !4300, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4193, file: !4172, line: 340, baseType: !175, size: 64, offset: 832)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4193, file: !4172, line: 346, baseType: !3129, size: 128, offset: 896)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4193, file: !4172, line: 348, baseType: !4304, size: 32, offset: 1024)
!4304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4172, line: 155, baseType: !109)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4193, file: !4172, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4193, file: !4172, line: 352, baseType: !298, size: 8, offset: 1064)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4193, file: !4172, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4193, file: !4172, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4193, file: !4172, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4193, file: !4172, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4193, file: !4172, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4193, file: !4172, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4193, file: !4172, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4193, file: !4172, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4193, file: !4172, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4193, file: !4172, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4193, file: !4172, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4193, file: !4172, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4193, file: !4172, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4193, file: !4172, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4193, file: !4172, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4193, file: !4172, line: 376, baseType: !7, size: 32, offset: 1120)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4193, file: !4172, line: 377, baseType: !7, size: 32, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4193, file: !4172, line: 380, baseType: !4325, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4172, line: 303, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4193, file: !4172, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4193, file: !4172, line: 383, baseType: !109, size: 32, offset: 1312)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4193, file: !4172, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4193, file: !4172, line: 387, baseType: !4331, size: 32, offset: 1376)
!4331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4172, line: 180, baseType: !7)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4193, file: !4172, line: 388, baseType: !2830, size: 5568, offset: 1408)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4193, file: !4172, line: 390, baseType: !109, size: 32, offset: 6976)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4193, file: !4172, line: 396, baseType: !7, size: 32, offset: 7008)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4193, file: !4172, line: 397, baseType: !4336, size: 8704, offset: 7040)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4209, size: 8704, elements: !4337)
!4337 = !{!4338}
!4338 = !DISubrange(count: 17)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4193, file: !4172, line: 399, baseType: !584, size: 8, offset: 15744)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4193, file: !4172, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4193, file: !4172, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4193, file: !4172, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4193, file: !4172, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4193, file: !4172, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4193, file: !4172, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4193, file: !4172, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4193, file: !4172, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4193, file: !4172, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4193, file: !4172, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4193, file: !4172, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4193, file: !4172, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4193, file: !4172, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4193, file: !4172, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4193, file: !4172, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4193, file: !4172, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4193, file: !4172, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4193, file: !4172, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4193, file: !4172, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4193, file: !4172, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4193, file: !4172, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4193, file: !4172, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4193, file: !4172, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4193, file: !4172, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4193, file: !4172, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4193, file: !4172, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4193, file: !4172, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4193, file: !4172, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4193, file: !4172, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4193, file: !4172, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4193, file: !4172, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4193, file: !4172, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4193, file: !4172, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4193, file: !4172, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4193, file: !4172, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4193, file: !4172, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4193, file: !4172, line: 450, baseType: !4377, size: 16, offset: 15792)
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4172, line: 206, baseType: !193)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4193, file: !4172, line: 451, baseType: !136, size: 32, offset: 15808)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4193, file: !4172, line: 453, baseType: !4380, size: 512, offset: 15840)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 512, elements: !1613)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4193, file: !4172, line: 454, baseType: !636, size: 64, offset: 16384)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4193, file: !4172, line: 455, baseType: !1980, size: 64, offset: 16448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4193, file: !4172, line: 456, baseType: !109, size: 32, offset: 16512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4193, file: !4172, line: 457, baseType: !4385, size: 1088, offset: 16576)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 1088, elements: !4337)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4193, file: !4172, line: 458, baseType: !4385, size: 1088, offset: 17664)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4193, file: !4172, line: 469, baseType: !1966, size: 64, offset: 18752)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4193, file: !4172, line: 471, baseType: !4389, size: 64, offset: 18816)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4172, line: 304, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !4172, line: 478, baseType: !4392, size: 64, offset: 18880)
!4392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4193, file: !4172, line: 478, size: 64, elements: !4393)
!4393 = !{!4394, !4397}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4392, file: !4172, line: 479, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4172, line: 305, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4392, file: !4172, line: 480, baseType: !4192, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4193, file: !4172, line: 482, baseType: !827, size: 16, offset: 18944)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4193, file: !4172, line: 483, baseType: !298, size: 8, offset: 18960)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4193, file: !4172, line: 497, baseType: !827, size: 16, offset: 18976)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4193, file: !4172, line: 498, baseType: !3942, size: 64, offset: 19008)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4193, file: !4172, line: 499, baseType: !720, size: 64, offset: 19072)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4193, file: !4172, line: 500, baseType: !565, size: 64, offset: 19136)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4193, file: !4172, line: 502, baseType: !110, size: 64, offset: 19200)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4171, file: !4172, line: 863, baseType: !4406, size: 64, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4192}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4171, file: !4172, line: 864, baseType: !4410, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!109, !4192, !2947}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4171, file: !4172, line: 865, baseType: !4414, size: 64, offset: 448)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!109, !4192}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4171, file: !4172, line: 866, baseType: !4406, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4171, file: !4172, line: 867, baseType: !4419, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!109, !4192, !109}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4171, file: !4172, line: 868, baseType: !4423, size: 64, offset: 640)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4172, line: 795, size: 384, elements: !4426)
!4426 = !{!4427, !4432, !4436, !4437, !4438, !4439}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4425, file: !4172, line: 797, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!4431, !4192, !4331}
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4172, line: 772, baseType: !7)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4425, file: !4172, line: 801, baseType: !4433, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!4431, !4192}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4425, file: !4172, line: 804, baseType: !4433, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4425, file: !4172, line: 807, baseType: !4406, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4425, file: !4172, line: 808, baseType: !4406, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4425, file: !4172, line: 811, baseType: !4406, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4171, file: !4172, line: 869, baseType: !1966, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4171, file: !4172, line: 870, baseType: !2905, size: 1152, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4171, file: !4172, line: 871, baseType: !4443, size: 128, offset: 1920)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4172, line: 759, size: 128, elements: !4444)
!4444 = !{!4445, !4446}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4443, file: !4172, line: 760, baseType: !510)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4443, file: !4172, line: 761, baseType: !168, size: 128)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(name: "pci_ids", scope: !2, file: !3, line: 71, type: !4449, isLocal: true, isDefinition: true)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4178, size: 512, elements: !1115)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "pti_char_driver", scope: !2, file: !3, line: 656, type: !4452, isLocal: true, isDefinition: true)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4453, line: 79, size: 640, elements: !4454)
!4453 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4452, file: !4453, line: 80, baseType: !109, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4452, file: !4453, line: 81, baseType: !539, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4452, file: !4453, line: 82, baseType: !790, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4452, file: !4453, line: 83, baseType: !168, size: 128, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4452, file: !4453, line: 84, baseType: !2829, size: 64, offset: 320)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4452, file: !4453, line: 85, baseType: !2829, size: 64, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4452, file: !4453, line: 86, baseType: !1966, size: 64, offset: 448)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4452, file: !4453, line: 87, baseType: !539, size: 64, offset: 512)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4452, file: !4453, line: 88, baseType: !433, size: 16, offset: 576)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(name: "pti_char_driver_ops", scope: !2, file: !3, line: 649, type: !791, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(name: "tty_port_ops", scope: !2, file: !3, line: 769, type: !3361, isLocal: true, isDefinition: true)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "pti_console", scope: !2, file: !3, line: 723, type: !4470, isLocal: true, isDefinition: true)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !4471, line: 141, size: 768, elements: !4472)
!4471 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!4472 = !{!4473, !4474, !4479, !4483, !4487, !4488, !4492, !4496, !4500, !4501, !4502, !4503, !4504}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4470, file: !4471, line: 142, baseType: !2751, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4470, file: !4471, line: 143, baseType: !4475, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4478, !539, !7}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4470, file: !4471, line: 144, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!109, !4478, !565, !7}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4470, file: !4471, line: 145, baseType: !4484, size: 64, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!3280, !4478, !708}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !4470, file: !4471, line: 146, baseType: !4132, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4470, file: !4471, line: 147, baseType: !4489, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!109, !4478, !565}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4470, file: !4471, line: 148, baseType: !4493, size: 64, offset: 448)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!109, !4478}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4470, file: !4471, line: 149, baseType: !4497, size: 64, offset: 512)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!109, !4478, !565, !109, !565}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4470, file: !4471, line: 150, baseType: !1166, size: 16, offset: 576)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4470, file: !4471, line: 151, baseType: !1166, size: 16, offset: 592)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !4470, file: !4471, line: 152, baseType: !109, size: 32, offset: 608)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4470, file: !4471, line: 153, baseType: !106, size: 64, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4470, file: !4471, line: 154, baseType: !4478, size: 64, offset: 704)
!4505 = !DIGlobalVariableExpression(var: !4506, expr: !DIExpression())
!4506 = distinct !DIGlobalVariable(name: "mc", scope: !4507, file: !3, line: 671, type: !4508, isLocal: true, isDefinition: true)
!4507 = distinct !DISubprogram(name: "pti_console_write", scope: !3, file: !3, line: 669, type: !4476, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pti_masterchannel", file: !4509, line: 24, size: 16, elements: !4510)
!4509 = !DIFile(filename: "./include/linux/intel-pti.h", directory: "/home/lizy2001/genbc/linux")
!4510 = !{!4511, !4512}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4508, file: !4509, line: 25, baseType: !298, size: 8)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4508, file: !4509, line: 26, baseType: !298, size: 8, offset: 8)
!4513 = !DIGlobalVariableExpression(var: !4514, expr: !DIExpression())
!4514 = distinct !DIGlobalVariable(name: "pti_console_channel", scope: !2, file: !3, line: 79, type: !7, isLocal: true, isDefinition: true)
!4515 = !DIGlobalVariableExpression(var: !4516, expr: !DIExpression())
!4516 = distinct !DIGlobalVariable(name: "pti_tty_driver_ops", scope: !2, file: !3, line: 640, type: !3415, isLocal: true, isDefinition: true)
!4517 = !{i32 7, !"Dwarf Version", i32 4}
!4518 = !{i32 2, !"Debug Info Version", i32 3}
!4519 = !{i32 1, !"wchar_size", i32 2}
!4520 = !{i32 1, !"Code Model", i32 2}
!4521 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4522 = distinct !DISubprogram(name: "pti_request_masterchannel", scope: !3, file: !3, line: 296, type: !4523, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!4525, !298, !539}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4526 = !DILocalVariable(name: "type", arg: 1, scope: !4522, file: !3, line: 296, type: !298)
!4527 = !DILocation(line: 296, column: 56, scope: !4522)
!4528 = !DILocalVariable(name: "thread_name", arg: 2, scope: !4522, file: !3, line: 297, type: !539)
!4529 = !DILocation(line: 297, column: 23, scope: !4522)
!4530 = !DILocalVariable(name: "mc", scope: !4522, file: !3, line: 299, type: !4525)
!4531 = !DILocation(line: 299, column: 28, scope: !4522)
!4532 = !DILocation(line: 301, column: 2, scope: !4522)
!4533 = !DILocation(line: 303, column: 10, scope: !4522)
!4534 = !DILocation(line: 303, column: 2, scope: !4522)
!4535 = !DILocation(line: 306, column: 15, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 303, column: 16)
!4537 = !DILocation(line: 306, column: 25, scope: !4536)
!4538 = !DILocation(line: 307, column: 21, scope: !4536)
!4539 = !DILocation(line: 306, column: 8, scope: !4536)
!4540 = !DILocation(line: 306, column: 6, scope: !4536)
!4541 = !DILocation(line: 308, column: 3, scope: !4536)
!4542 = !DILocation(line: 311, column: 15, scope: !4536)
!4543 = !DILocation(line: 311, column: 25, scope: !4536)
!4544 = !DILocation(line: 312, column: 20, scope: !4536)
!4545 = !DILocation(line: 311, column: 8, scope: !4536)
!4546 = !DILocation(line: 311, column: 6, scope: !4536)
!4547 = !DILocation(line: 313, column: 3, scope: !4536)
!4548 = !DILocation(line: 316, column: 15, scope: !4536)
!4549 = !DILocation(line: 316, column: 25, scope: !4536)
!4550 = !DILocation(line: 317, column: 23, scope: !4536)
!4551 = !DILocation(line: 316, column: 8, scope: !4536)
!4552 = !DILocation(line: 316, column: 6, scope: !4536)
!4553 = !DILocation(line: 318, column: 3, scope: !4536)
!4554 = !DILocation(line: 320, column: 6, scope: !4536)
!4555 = !DILocation(line: 321, column: 2, scope: !4536)
!4556 = !DILocation(line: 323, column: 2, scope: !4522)
!4557 = !DILocation(line: 324, column: 9, scope: !4522)
!4558 = !DILocation(line: 324, column: 2, scope: !4522)
!4559 = distinct !DISubprogram(name: "get_id", scope: !3, file: !3, line: 233, type: !4560, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4525, !4124, !109, !109, !539}
!4562 = !DILocalVariable(name: "s", arg: 1, scope: !4563, file: !94, line: 445, type: !2320)
!4563 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !4564, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!106, !2320, !107, !720}
!4566 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !4573)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !94, line: 540, column: 34)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !94, line: 540, column: 6)
!4570 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !4571, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!106, !720, !107}
!4573 = distinct !DILocation(line: 241, column: 7, scope: !4559)
!4574 = !DILocalVariable(name: "flags", arg: 2, scope: !4563, file: !94, line: 446, type: !107)
!4575 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !4567)
!4576 = !DILocalVariable(name: "size", arg: 3, scope: !4563, file: !94, line: 446, type: !720)
!4577 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !4567)
!4578 = !DILocalVariable(name: "ret", scope: !4563, file: !94, line: 448, type: !106)
!4579 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !4567)
!4580 = !DILocalVariable(name: "flags", arg: 1, scope: !4581, file: !94, line: 318, type: !107)
!4581 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4582, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!93, !107}
!4584 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !4573)
!4586 = !DILocalVariable(name: "size", arg: 1, scope: !4587, file: !94, line: 346, type: !720)
!4587 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4588, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!7, !720}
!4590 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !4573)
!4592 = !DILocalVariable(name: "size", arg: 1, scope: !4593, file: !94, line: 472, type: !720)
!4593 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4594, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!106, !720, !107, !7}
!4596 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !4599)
!4598 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !4571, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4599 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !4573)
!4600 = distinct !DILexicalBlock(scope: !4568, file: !94, line: 544, column: 7)
!4601 = !DILocalVariable(name: "flags", arg: 2, scope: !4593, file: !94, line: 472, type: !107)
!4602 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !4597)
!4603 = !DILocalVariable(name: "order", arg: 3, scope: !4593, file: !94, line: 472, type: !7)
!4604 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !4597)
!4605 = !DILocalVariable(name: "size", arg: 1, scope: !4598, file: !94, line: 478, type: !720)
!4606 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !4599)
!4607 = !DILocalVariable(name: "flags", arg: 2, scope: !4598, file: !94, line: 478, type: !107)
!4608 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !4599)
!4609 = !DILocalVariable(name: "order", scope: !4598, file: !94, line: 480, type: !7)
!4610 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !4599)
!4611 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !94, line: 538, type: !720)
!4612 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !4573)
!4613 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !94, line: 538, type: !107)
!4614 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !4573)
!4615 = !DILocalVariable(name: "index", scope: !4568, file: !94, line: 542, type: !7)
!4616 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !4573)
!4617 = !DILocalVariable(name: "id_array", arg: 1, scope: !4559, file: !3, line: 233, type: !4124)
!4618 = !DILocation(line: 233, column: 45, scope: !4559)
!4619 = !DILocalVariable(name: "max_ids", arg: 2, scope: !4559, file: !3, line: 234, type: !109)
!4620 = !DILocation(line: 234, column: 10, scope: !4559)
!4621 = !DILocalVariable(name: "base_id", arg: 3, scope: !4559, file: !3, line: 235, type: !109)
!4622 = !DILocation(line: 235, column: 10, scope: !4559)
!4623 = !DILocalVariable(name: "thread_name", arg: 4, scope: !4559, file: !3, line: 236, type: !539)
!4624 = !DILocation(line: 236, column: 18, scope: !4559)
!4625 = !DILocalVariable(name: "mc", scope: !4559, file: !3, line: 238, type: !4525)
!4626 = !DILocation(line: 238, column: 28, scope: !4559)
!4627 = !DILocalVariable(name: "i", scope: !4559, file: !3, line: 239, type: !109)
!4628 = !DILocation(line: 239, column: 6, scope: !4559)
!4629 = !DILocalVariable(name: "j", scope: !4559, file: !3, line: 239, type: !109)
!4630 = !DILocation(line: 239, column: 9, scope: !4559)
!4631 = !DILocalVariable(name: "mask", scope: !4559, file: !3, line: 239, type: !109)
!4632 = !DILocation(line: 239, column: 12, scope: !4559)
!4633 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !4573)
!4634 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !4573)
!4635 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !4573)
!4636 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !4573)
!4637 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !4573)
!4638 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !4573)
!4639 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !4573)
!4640 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !4573)
!4641 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !4599)
!4642 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !4599)
!4643 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !4599)
!4644 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !4599)
!4645 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !4599)
!4646 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !4597)
!4647 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !4597)
!4648 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !4597)
!4649 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !4597)
!4650 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !4573)
!4651 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !4573)
!4652 = !DILocation(line: 348, column: 7, scope: !4653, inlinedAt: !4591)
!4653 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 348, column: 6)
!4654 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !4591)
!4655 = !DILocation(line: 349, column: 3, scope: !4653, inlinedAt: !4591)
!4656 = !DILocation(line: 351, column: 6, scope: !4657, inlinedAt: !4591)
!4657 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 351, column: 6)
!4658 = !DILocation(line: 351, column: 11, scope: !4657, inlinedAt: !4591)
!4659 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !4591)
!4660 = !DILocation(line: 352, column: 3, scope: !4657, inlinedAt: !4591)
!4661 = !DILocation(line: 354, column: 32, scope: !4662, inlinedAt: !4591)
!4662 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 354, column: 6)
!4663 = !DILocation(line: 354, column: 37, scope: !4662, inlinedAt: !4591)
!4664 = !DILocation(line: 354, column: 42, scope: !4662, inlinedAt: !4591)
!4665 = !DILocation(line: 354, column: 45, scope: !4662, inlinedAt: !4591)
!4666 = !DILocation(line: 354, column: 50, scope: !4662, inlinedAt: !4591)
!4667 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !4591)
!4668 = !DILocation(line: 355, column: 3, scope: !4662, inlinedAt: !4591)
!4669 = !DILocation(line: 356, column: 32, scope: !4670, inlinedAt: !4591)
!4670 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 356, column: 6)
!4671 = !DILocation(line: 356, column: 37, scope: !4670, inlinedAt: !4591)
!4672 = !DILocation(line: 356, column: 43, scope: !4670, inlinedAt: !4591)
!4673 = !DILocation(line: 356, column: 46, scope: !4670, inlinedAt: !4591)
!4674 = !DILocation(line: 356, column: 51, scope: !4670, inlinedAt: !4591)
!4675 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !4591)
!4676 = !DILocation(line: 357, column: 3, scope: !4670, inlinedAt: !4591)
!4677 = !DILocation(line: 358, column: 6, scope: !4678, inlinedAt: !4591)
!4678 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 358, column: 6)
!4679 = !DILocation(line: 358, column: 11, scope: !4678, inlinedAt: !4591)
!4680 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !4591)
!4681 = !DILocation(line: 358, column: 26, scope: !4678, inlinedAt: !4591)
!4682 = !DILocation(line: 359, column: 6, scope: !4683, inlinedAt: !4591)
!4683 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 359, column: 6)
!4684 = !DILocation(line: 359, column: 11, scope: !4683, inlinedAt: !4591)
!4685 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !4591)
!4686 = !DILocation(line: 359, column: 26, scope: !4683, inlinedAt: !4591)
!4687 = !DILocation(line: 360, column: 6, scope: !4688, inlinedAt: !4591)
!4688 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 360, column: 6)
!4689 = !DILocation(line: 360, column: 11, scope: !4688, inlinedAt: !4591)
!4690 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !4591)
!4691 = !DILocation(line: 360, column: 26, scope: !4688, inlinedAt: !4591)
!4692 = !DILocation(line: 361, column: 6, scope: !4693, inlinedAt: !4591)
!4693 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 361, column: 6)
!4694 = !DILocation(line: 361, column: 11, scope: !4693, inlinedAt: !4591)
!4695 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !4591)
!4696 = !DILocation(line: 361, column: 26, scope: !4693, inlinedAt: !4591)
!4697 = !DILocation(line: 362, column: 6, scope: !4698, inlinedAt: !4591)
!4698 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 362, column: 6)
!4699 = !DILocation(line: 362, column: 11, scope: !4698, inlinedAt: !4591)
!4700 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !4591)
!4701 = !DILocation(line: 362, column: 26, scope: !4698, inlinedAt: !4591)
!4702 = !DILocation(line: 363, column: 6, scope: !4703, inlinedAt: !4591)
!4703 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 363, column: 6)
!4704 = !DILocation(line: 363, column: 11, scope: !4703, inlinedAt: !4591)
!4705 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !4591)
!4706 = !DILocation(line: 363, column: 26, scope: !4703, inlinedAt: !4591)
!4707 = !DILocation(line: 364, column: 6, scope: !4708, inlinedAt: !4591)
!4708 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 364, column: 6)
!4709 = !DILocation(line: 364, column: 11, scope: !4708, inlinedAt: !4591)
!4710 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !4591)
!4711 = !DILocation(line: 364, column: 26, scope: !4708, inlinedAt: !4591)
!4712 = !DILocation(line: 365, column: 6, scope: !4713, inlinedAt: !4591)
!4713 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 365, column: 6)
!4714 = !DILocation(line: 365, column: 11, scope: !4713, inlinedAt: !4591)
!4715 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !4591)
!4716 = !DILocation(line: 365, column: 26, scope: !4713, inlinedAt: !4591)
!4717 = !DILocation(line: 366, column: 6, scope: !4718, inlinedAt: !4591)
!4718 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 366, column: 6)
!4719 = !DILocation(line: 366, column: 11, scope: !4718, inlinedAt: !4591)
!4720 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !4591)
!4721 = !DILocation(line: 366, column: 26, scope: !4718, inlinedAt: !4591)
!4722 = !DILocation(line: 367, column: 6, scope: !4723, inlinedAt: !4591)
!4723 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 367, column: 6)
!4724 = !DILocation(line: 367, column: 11, scope: !4723, inlinedAt: !4591)
!4725 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !4591)
!4726 = !DILocation(line: 367, column: 26, scope: !4723, inlinedAt: !4591)
!4727 = !DILocation(line: 368, column: 6, scope: !4728, inlinedAt: !4591)
!4728 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 368, column: 6)
!4729 = !DILocation(line: 368, column: 11, scope: !4728, inlinedAt: !4591)
!4730 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !4591)
!4731 = !DILocation(line: 368, column: 26, scope: !4728, inlinedAt: !4591)
!4732 = !DILocation(line: 369, column: 6, scope: !4733, inlinedAt: !4591)
!4733 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 369, column: 6)
!4734 = !DILocation(line: 369, column: 11, scope: !4733, inlinedAt: !4591)
!4735 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !4591)
!4736 = !DILocation(line: 369, column: 26, scope: !4733, inlinedAt: !4591)
!4737 = !DILocation(line: 370, column: 6, scope: !4738, inlinedAt: !4591)
!4738 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 370, column: 6)
!4739 = !DILocation(line: 370, column: 11, scope: !4738, inlinedAt: !4591)
!4740 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !4591)
!4741 = !DILocation(line: 370, column: 26, scope: !4738, inlinedAt: !4591)
!4742 = !DILocation(line: 371, column: 6, scope: !4743, inlinedAt: !4591)
!4743 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 371, column: 6)
!4744 = !DILocation(line: 371, column: 11, scope: !4743, inlinedAt: !4591)
!4745 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !4591)
!4746 = !DILocation(line: 371, column: 26, scope: !4743, inlinedAt: !4591)
!4747 = !DILocation(line: 372, column: 6, scope: !4748, inlinedAt: !4591)
!4748 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 372, column: 6)
!4749 = !DILocation(line: 372, column: 11, scope: !4748, inlinedAt: !4591)
!4750 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !4591)
!4751 = !DILocation(line: 372, column: 26, scope: !4748, inlinedAt: !4591)
!4752 = !DILocation(line: 373, column: 6, scope: !4753, inlinedAt: !4591)
!4753 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 373, column: 6)
!4754 = !DILocation(line: 373, column: 11, scope: !4753, inlinedAt: !4591)
!4755 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !4591)
!4756 = !DILocation(line: 373, column: 26, scope: !4753, inlinedAt: !4591)
!4757 = !DILocation(line: 374, column: 6, scope: !4758, inlinedAt: !4591)
!4758 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 374, column: 6)
!4759 = !DILocation(line: 374, column: 11, scope: !4758, inlinedAt: !4591)
!4760 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !4591)
!4761 = !DILocation(line: 374, column: 26, scope: !4758, inlinedAt: !4591)
!4762 = !DILocation(line: 375, column: 6, scope: !4763, inlinedAt: !4591)
!4763 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 375, column: 6)
!4764 = !DILocation(line: 375, column: 11, scope: !4763, inlinedAt: !4591)
!4765 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !4591)
!4766 = !DILocation(line: 375, column: 27, scope: !4763, inlinedAt: !4591)
!4767 = !DILocation(line: 376, column: 6, scope: !4768, inlinedAt: !4591)
!4768 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 376, column: 6)
!4769 = !DILocation(line: 376, column: 11, scope: !4768, inlinedAt: !4591)
!4770 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !4591)
!4771 = !DILocation(line: 376, column: 32, scope: !4768, inlinedAt: !4591)
!4772 = !DILocation(line: 377, column: 6, scope: !4773, inlinedAt: !4591)
!4773 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 377, column: 6)
!4774 = !DILocation(line: 377, column: 11, scope: !4773, inlinedAt: !4591)
!4775 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !4591)
!4776 = !DILocation(line: 377, column: 32, scope: !4773, inlinedAt: !4591)
!4777 = !DILocation(line: 378, column: 6, scope: !4778, inlinedAt: !4591)
!4778 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 378, column: 6)
!4779 = !DILocation(line: 378, column: 11, scope: !4778, inlinedAt: !4591)
!4780 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !4591)
!4781 = !DILocation(line: 378, column: 32, scope: !4778, inlinedAt: !4591)
!4782 = !DILocation(line: 379, column: 6, scope: !4783, inlinedAt: !4591)
!4783 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 379, column: 6)
!4784 = !DILocation(line: 379, column: 11, scope: !4783, inlinedAt: !4591)
!4785 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !4591)
!4786 = !DILocation(line: 379, column: 33, scope: !4783, inlinedAt: !4591)
!4787 = !DILocation(line: 380, column: 6, scope: !4788, inlinedAt: !4591)
!4788 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 380, column: 6)
!4789 = !DILocation(line: 380, column: 11, scope: !4788, inlinedAt: !4591)
!4790 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !4591)
!4791 = !DILocation(line: 380, column: 33, scope: !4788, inlinedAt: !4591)
!4792 = !DILocation(line: 381, column: 6, scope: !4793, inlinedAt: !4591)
!4793 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 381, column: 6)
!4794 = !DILocation(line: 381, column: 11, scope: !4793, inlinedAt: !4591)
!4795 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !4591)
!4796 = !DILocation(line: 381, column: 33, scope: !4793, inlinedAt: !4591)
!4797 = !DILocation(line: 382, column: 2, scope: !4798, inlinedAt: !4591)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !94, line: 382, column: 2)
!4799 = distinct !DILexicalBlock(scope: !4587, file: !94, line: 382, column: 2)
!4800 = !{i32 -2142493624, i32 -2142493595, i32 -2142493549, i32 -2142493491, i32 -2142493437, i32 -2142493383, i32 -2142493328, i32 -2142493297}
!4801 = !DILocation(line: 382, column: 2, scope: !4802, inlinedAt: !4591)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !94, line: 382, column: 2)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !94, line: 382, column: 2)
!4804 = !{i32 -2142492854, i32 -2142492847, i32 -2142492793, i32 -2142492762, i32 -2142492732}
!4805 = !DILocation(line: 382, column: 2, scope: !4803, inlinedAt: !4591)
!4806 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !4591)
!4807 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !4573)
!4808 = !DILocation(line: 549, column: 8, scope: !4809, inlinedAt: !4573)
!4809 = distinct !DILexicalBlock(scope: !4568, file: !94, line: 549, column: 7)
!4810 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !4573)
!4811 = !DILocation(line: 550, column: 4, scope: !4809, inlinedAt: !4573)
!4812 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !4573)
!4813 = !DILocation(line: 325, column: 6, scope: !4814, inlinedAt: !4585)
!4814 = distinct !DILexicalBlock(scope: !4581, file: !94, line: 325, column: 6)
!4815 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !4585)
!4816 = !DILocation(line: 326, column: 3, scope: !4814, inlinedAt: !4585)
!4817 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !4585)
!4818 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !4585)
!4819 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !4585)
!4820 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !4585)
!4821 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !4573)
!4822 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !4573)
!4823 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !4573)
!4824 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !4573)
!4825 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !4567)
!4826 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !4567)
!4827 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !4567)
!4828 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !4567)
!4829 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !4567)
!4830 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !4567)
!4831 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !4567)
!4832 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !4567)
!4833 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !4567)
!4834 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !4567)
!4835 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !4573)
!4836 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !4573)
!4837 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !4573)
!4838 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !4573)
!4839 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !4573)
!4840 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !4573)
!4841 = !DILocation(line: 241, column: 7, scope: !4559)
!4842 = !DILocation(line: 241, column: 5, scope: !4559)
!4843 = !DILocation(line: 242, column: 6, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 242, column: 6)
!4845 = !DILocation(line: 242, column: 9, scope: !4844)
!4846 = !DILocation(line: 242, column: 6, scope: !4559)
!4847 = !DILocation(line: 243, column: 3, scope: !4844)
!4848 = !DILocation(line: 246, column: 9, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 246, column: 2)
!4850 = !DILocation(line: 246, column: 7, scope: !4849)
!4851 = !DILocation(line: 246, column: 14, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 246, column: 2)
!4853 = !DILocation(line: 246, column: 18, scope: !4852)
!4854 = !DILocation(line: 246, column: 16, scope: !4852)
!4855 = !DILocation(line: 246, column: 2, scope: !4849)
!4856 = !DILocation(line: 247, column: 7, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 247, column: 7)
!4858 = !DILocation(line: 247, column: 16, scope: !4857)
!4859 = !DILocation(line: 247, column: 19, scope: !4857)
!4860 = !DILocation(line: 247, column: 7, scope: !4852)
!4861 = !DILocation(line: 248, column: 4, scope: !4857)
!4862 = !DILocation(line: 247, column: 22, scope: !4857)
!4863 = !DILocation(line: 246, column: 28, scope: !4852)
!4864 = !DILocation(line: 246, column: 2, scope: !4852)
!4865 = distinct !{!4865, !4855, !4866}
!4866 = !DILocation(line: 248, column: 4, scope: !4849)
!4867 = !DILocation(line: 249, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 249, column: 6)
!4869 = !DILocation(line: 249, column: 11, scope: !4868)
!4870 = !DILocation(line: 249, column: 8, scope: !4868)
!4871 = !DILocation(line: 249, column: 6, scope: !4559)
!4872 = !DILocation(line: 250, column: 9, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 249, column: 20)
!4874 = !DILocation(line: 250, column: 3, scope: !4873)
!4875 = !DILocation(line: 251, column: 3, scope: !4873)
!4876 = !DILocation(line: 254, column: 7, scope: !4559)
!4877 = !DILocation(line: 255, column: 9, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 255, column: 2)
!4879 = !DILocation(line: 255, column: 7, scope: !4878)
!4880 = !DILocation(line: 255, column: 14, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 255, column: 2)
!4882 = !DILocation(line: 255, column: 16, scope: !4881)
!4883 = !DILocation(line: 255, column: 2, scope: !4878)
!4884 = !DILocation(line: 256, column: 8, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 256, column: 7)
!4886 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 255, column: 26)
!4887 = !DILocation(line: 256, column: 17, scope: !4885)
!4888 = !DILocation(line: 256, column: 22, scope: !4885)
!4889 = !DILocation(line: 256, column: 20, scope: !4885)
!4890 = !DILocation(line: 256, column: 28, scope: !4885)
!4891 = !DILocation(line: 256, column: 7, scope: !4886)
!4892 = !DILocation(line: 257, column: 4, scope: !4885)
!4893 = !DILocation(line: 258, column: 8, scope: !4886)
!4894 = !DILocation(line: 259, column: 2, scope: !4886)
!4895 = !DILocation(line: 255, column: 22, scope: !4881)
!4896 = !DILocation(line: 255, column: 2, scope: !4881)
!4897 = distinct !{!4897, !4883, !4898}
!4898 = !DILocation(line: 259, column: 2, scope: !4878)
!4899 = !DILocation(line: 262, column: 17, scope: !4559)
!4900 = !DILocation(line: 262, column: 2, scope: !4559)
!4901 = !DILocation(line: 262, column: 11, scope: !4559)
!4902 = !DILocation(line: 262, column: 14, scope: !4559)
!4903 = !DILocation(line: 263, column: 16, scope: !4559)
!4904 = !DILocation(line: 263, column: 2, scope: !4559)
!4905 = !DILocation(line: 263, column: 6, scope: !4559)
!4906 = !DILocation(line: 263, column: 14, scope: !4559)
!4907 = !DILocation(line: 264, column: 18, scope: !4559)
!4908 = !DILocation(line: 264, column: 20, scope: !4559)
!4909 = !DILocation(line: 264, column: 26, scope: !4559)
!4910 = !DILocation(line: 264, column: 33, scope: !4559)
!4911 = !DILocation(line: 264, column: 31, scope: !4559)
!4912 = !DILocation(line: 264, column: 16, scope: !4559)
!4913 = !DILocation(line: 264, column: 2, scope: !4559)
!4914 = !DILocation(line: 264, column: 6, scope: !4559)
!4915 = !DILocation(line: 264, column: 14, scope: !4559)
!4916 = !DILocation(line: 266, column: 35, scope: !4559)
!4917 = !DILocation(line: 266, column: 39, scope: !4559)
!4918 = !DILocation(line: 266, column: 2, scope: !4559)
!4919 = !DILocation(line: 267, column: 9, scope: !4559)
!4920 = !DILocation(line: 267, column: 2, scope: !4559)
!4921 = !DILocation(line: 268, column: 1, scope: !4559)
!4922 = distinct !DISubprogram(name: "pti_release_masterchannel", scope: !3, file: !3, line: 336, type: !4923, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !4525}
!4925 = !DILocalVariable(name: "mc", arg: 1, scope: !4922, file: !3, line: 336, type: !4525)
!4926 = !DILocation(line: 336, column: 58, scope: !4922)
!4927 = !DILocalVariable(name: "master", scope: !4922, file: !3, line: 338, type: !298)
!4928 = !DILocation(line: 338, column: 5, scope: !4922)
!4929 = !DILocalVariable(name: "channel", scope: !4922, file: !3, line: 338, type: !298)
!4930 = !DILocation(line: 338, column: 13, scope: !4922)
!4931 = !DILocalVariable(name: "i", scope: !4922, file: !3, line: 338, type: !298)
!4932 = !DILocation(line: 338, column: 22, scope: !4922)
!4933 = !DILocation(line: 340, column: 2, scope: !4922)
!4934 = !DILocation(line: 342, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 342, column: 6)
!4936 = !DILocation(line: 342, column: 6, scope: !4922)
!4937 = !DILocation(line: 343, column: 12, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 342, column: 10)
!4939 = !DILocation(line: 343, column: 16, scope: !4938)
!4940 = !DILocation(line: 343, column: 10, scope: !4938)
!4941 = !DILocation(line: 344, column: 13, scope: !4938)
!4942 = !DILocation(line: 344, column: 17, scope: !4938)
!4943 = !DILocation(line: 344, column: 11, scope: !4938)
!4944 = !DILocation(line: 346, column: 7, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 346, column: 7)
!4946 = !DILocation(line: 346, column: 14, scope: !4945)
!4947 = !DILocation(line: 346, column: 7, scope: !4938)
!4948 = !DILocation(line: 347, column: 8, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 346, column: 30)
!4950 = !DILocation(line: 347, column: 16, scope: !4949)
!4951 = !DILocation(line: 347, column: 6, scope: !4949)
!4952 = !DILocation(line: 348, column: 37, scope: !4949)
!4953 = !DILocation(line: 348, column: 45, scope: !4949)
!4954 = !DILocation(line: 348, column: 34, scope: !4949)
!4955 = !DILocation(line: 348, column: 28, scope: !4949)
!4956 = !DILocation(line: 348, column: 4, scope: !4949)
!4957 = !DILocation(line: 348, column: 14, scope: !4949)
!4958 = !DILocation(line: 348, column: 21, scope: !4949)
!4959 = !DILocation(line: 348, column: 24, scope: !4949)
!4960 = !DILocation(line: 349, column: 3, scope: !4949)
!4961 = !DILocation(line: 349, column: 14, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 349, column: 14)
!4963 = !DILocation(line: 349, column: 21, scope: !4962)
!4964 = !DILocation(line: 349, column: 14, scope: !4945)
!4965 = !DILocation(line: 350, column: 8, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 349, column: 36)
!4967 = !DILocation(line: 350, column: 16, scope: !4966)
!4968 = !DILocation(line: 350, column: 6, scope: !4966)
!4969 = !DILocation(line: 351, column: 35, scope: !4966)
!4970 = !DILocation(line: 351, column: 43, scope: !4966)
!4971 = !DILocation(line: 351, column: 32, scope: !4966)
!4972 = !DILocation(line: 351, column: 26, scope: !4966)
!4973 = !DILocation(line: 351, column: 4, scope: !4966)
!4974 = !DILocation(line: 351, column: 14, scope: !4966)
!4975 = !DILocation(line: 351, column: 20, scope: !4966)
!4976 = !DILocation(line: 351, column: 23, scope: !4966)
!4977 = !DILocation(line: 352, column: 3, scope: !4966)
!4978 = !DILocation(line: 353, column: 8, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 352, column: 10)
!4980 = !DILocation(line: 353, column: 16, scope: !4979)
!4981 = !DILocation(line: 353, column: 6, scope: !4979)
!4982 = !DILocation(line: 354, column: 38, scope: !4979)
!4983 = !DILocation(line: 354, column: 46, scope: !4979)
!4984 = !DILocation(line: 354, column: 35, scope: !4979)
!4985 = !DILocation(line: 354, column: 29, scope: !4979)
!4986 = !DILocation(line: 354, column: 4, scope: !4979)
!4987 = !DILocation(line: 354, column: 14, scope: !4979)
!4988 = !DILocation(line: 354, column: 23, scope: !4979)
!4989 = !DILocation(line: 354, column: 26, scope: !4979)
!4990 = !DILocation(line: 357, column: 9, scope: !4938)
!4991 = !DILocation(line: 357, column: 3, scope: !4938)
!4992 = !DILocation(line: 358, column: 2, scope: !4938)
!4993 = !DILocation(line: 360, column: 2, scope: !4922)
!4994 = !DILocation(line: 361, column: 1, scope: !4922)
!4995 = distinct !DISubprogram(name: "pti_writedata", scope: !3, file: !3, line: 375, type: !4996, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{null, !4525, !4124, !109}
!4998 = !DILocalVariable(name: "mc", arg: 1, scope: !4995, file: !3, line: 375, type: !4525)
!4999 = !DILocation(line: 375, column: 46, scope: !4995)
!5000 = !DILocalVariable(name: "buf", arg: 2, scope: !4995, file: !3, line: 375, type: !4124)
!5001 = !DILocation(line: 375, column: 54, scope: !4995)
!5002 = !DILocalVariable(name: "count", arg: 3, scope: !4995, file: !3, line: 375, type: !109)
!5003 = !DILocation(line: 375, column: 63, scope: !4995)
!5004 = !DILocation(line: 382, column: 7, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 382, column: 6)
!5006 = !DILocation(line: 382, column: 10, scope: !5005)
!5007 = !DILocation(line: 382, column: 19, scope: !5005)
!5008 = !DILocation(line: 382, column: 23, scope: !5005)
!5009 = !DILocation(line: 382, column: 27, scope: !5005)
!5010 = !DILocation(line: 382, column: 36, scope: !5005)
!5011 = !DILocation(line: 382, column: 40, scope: !5005)
!5012 = !DILocation(line: 382, column: 46, scope: !5005)
!5013 = !DILocation(line: 382, column: 6, scope: !4995)
!5014 = !DILocation(line: 383, column: 25, scope: !5005)
!5015 = !DILocation(line: 383, column: 29, scope: !5005)
!5016 = !DILocation(line: 383, column: 34, scope: !5005)
!5017 = !DILocation(line: 383, column: 3, scope: !5005)
!5018 = !DILocation(line: 384, column: 2, scope: !4995)
!5019 = distinct !DISubprogram(name: "pti_write_to_aperture", scope: !3, file: !3, line: 99, type: !4996, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5020 = !DILocalVariable(name: "mc", arg: 1, scope: !5019, file: !3, line: 99, type: !4525)
!5021 = !DILocation(line: 99, column: 61, scope: !5019)
!5022 = !DILocalVariable(name: "buf", arg: 2, scope: !5019, file: !3, line: 100, type: !4124)
!5023 = !DILocation(line: 100, column: 11, scope: !5019)
!5024 = !DILocalVariable(name: "len", arg: 3, scope: !5019, file: !3, line: 101, type: !109)
!5025 = !DILocation(line: 101, column: 11, scope: !5019)
!5026 = !DILocalVariable(name: "dwordcnt", scope: !5019, file: !3, line: 103, type: !109)
!5027 = !DILocation(line: 103, column: 6, scope: !5019)
!5028 = !DILocalVariable(name: "final", scope: !5019, file: !3, line: 104, type: !109)
!5029 = !DILocation(line: 104, column: 6, scope: !5019)
!5030 = !DILocalVariable(name: "i", scope: !5019, file: !3, line: 105, type: !109)
!5031 = !DILocation(line: 105, column: 6, scope: !5019)
!5032 = !DILocalVariable(name: "ptiword", scope: !5019, file: !3, line: 106, type: !122)
!5033 = !DILocation(line: 106, column: 6, scope: !5019)
!5034 = !DILocalVariable(name: "aperture", scope: !5019, file: !3, line: 107, type: !2652)
!5035 = !DILocation(line: 107, column: 15, scope: !5019)
!5036 = !DILocalVariable(name: "p", scope: !5019, file: !3, line: 108, type: !4124)
!5037 = !DILocation(line: 108, column: 6, scope: !5019)
!5038 = !DILocation(line: 108, column: 10, scope: !5019)
!5039 = !DILocation(line: 114, column: 13, scope: !5019)
!5040 = !DILocation(line: 114, column: 23, scope: !5019)
!5041 = !DILocation(line: 114, column: 37, scope: !5019)
!5042 = !DILocation(line: 114, column: 41, scope: !5019)
!5043 = !DILocation(line: 114, column: 48, scope: !5019)
!5044 = !DILocation(line: 114, column: 34, scope: !5019)
!5045 = !DILocation(line: 115, column: 6, scope: !5019)
!5046 = !DILocation(line: 115, column: 10, scope: !5019)
!5047 = !DILocation(line: 115, column: 18, scope: !5019)
!5048 = !DILocation(line: 115, column: 3, scope: !5019)
!5049 = !DILocation(line: 114, column: 11, scope: !5019)
!5050 = !DILocation(line: 117, column: 13, scope: !5019)
!5051 = !DILocation(line: 117, column: 17, scope: !5019)
!5052 = !DILocation(line: 117, column: 11, scope: !5019)
!5053 = !DILocation(line: 118, column: 10, scope: !5019)
!5054 = !DILocation(line: 118, column: 17, scope: !5019)
!5055 = !DILocation(line: 118, column: 26, scope: !5019)
!5056 = !DILocation(line: 118, column: 14, scope: !5019)
!5057 = !DILocation(line: 118, column: 8, scope: !5019)
!5058 = !DILocation(line: 119, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 119, column: 6)
!5060 = !DILocation(line: 119, column: 12, scope: !5059)
!5061 = !DILocation(line: 119, column: 17, scope: !5059)
!5062 = !DILocation(line: 119, column: 20, scope: !5059)
!5063 = !DILocation(line: 119, column: 29, scope: !5059)
!5064 = !DILocation(line: 119, column: 6, scope: !5019)
!5065 = !DILocation(line: 120, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 119, column: 35)
!5067 = !DILocation(line: 121, column: 11, scope: !5066)
!5068 = !DILocation(line: 122, column: 2, scope: !5066)
!5069 = !DILocation(line: 124, column: 9, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 124, column: 2)
!5071 = !DILocation(line: 124, column: 7, scope: !5070)
!5072 = !DILocation(line: 124, column: 14, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 124, column: 2)
!5074 = !DILocation(line: 124, column: 18, scope: !5073)
!5075 = !DILocation(line: 124, column: 16, scope: !5073)
!5076 = !DILocation(line: 124, column: 2, scope: !5070)
!5077 = !DILocation(line: 125, column: 13, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 124, column: 33)
!5079 = !DILocation(line: 125, column: 11, scope: !5078)
!5080 = !DILocation(line: 126, column: 5, scope: !5078)
!5081 = !DILocation(line: 127, column: 13, scope: !5078)
!5082 = !DILocation(line: 127, column: 22, scope: !5078)
!5083 = !DILocation(line: 127, column: 3, scope: !5078)
!5084 = !DILocation(line: 128, column: 2, scope: !5078)
!5085 = !DILocation(line: 124, column: 29, scope: !5073)
!5086 = !DILocation(line: 124, column: 2, scope: !5073)
!5087 = distinct !{!5087, !5076, !5088}
!5088 = !DILocation(line: 128, column: 2, scope: !5070)
!5089 = !DILocation(line: 130, column: 11, scope: !5019)
!5090 = !DILocation(line: 132, column: 10, scope: !5019)
!5091 = !DILocation(line: 133, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 133, column: 2)
!5093 = !DILocation(line: 133, column: 7, scope: !5092)
!5094 = !DILocation(line: 133, column: 14, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 133, column: 2)
!5096 = !DILocation(line: 133, column: 18, scope: !5095)
!5097 = !DILocation(line: 133, column: 16, scope: !5095)
!5098 = !DILocation(line: 133, column: 2, scope: !5092)
!5099 = !DILocation(line: 134, column: 16, scope: !5095)
!5100 = !DILocation(line: 134, column: 14, scope: !5095)
!5101 = !DILocation(line: 134, column: 29, scope: !5095)
!5102 = !DILocation(line: 134, column: 28, scope: !5095)
!5103 = !DILocation(line: 134, column: 25, scope: !5095)
!5104 = !DILocation(line: 134, column: 19, scope: !5095)
!5105 = !DILocation(line: 134, column: 11, scope: !5095)
!5106 = !DILocation(line: 134, column: 3, scope: !5095)
!5107 = !DILocation(line: 133, column: 26, scope: !5095)
!5108 = !DILocation(line: 133, column: 2, scope: !5095)
!5109 = distinct !{!5109, !5098, !5110}
!5110 = !DILocation(line: 134, column: 31, scope: !5092)
!5111 = !DILocation(line: 136, column: 12, scope: !5019)
!5112 = !DILocation(line: 136, column: 21, scope: !5019)
!5113 = !DILocation(line: 136, column: 2, scope: !5019)
!5114 = !DILocation(line: 137, column: 2, scope: !5019)
!5115 = distinct !DISubprogram(name: "pti_exit", scope: !3, file: !3, line: 965, type: !3710, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5116 = !DILocation(line: 967, column: 24, scope: !5115)
!5117 = !DILocation(line: 967, column: 2, scope: !5115)
!5118 = !DILocation(line: 968, column: 2, scope: !5115)
!5119 = !DILocation(line: 969, column: 17, scope: !5115)
!5120 = !DILocation(line: 969, column: 2, scope: !5115)
!5121 = !DILocation(line: 970, column: 1, scope: !5115)
!5122 = distinct !DISubprogram(name: "pti_init", scope: !3, file: !3, line: 909, type: !5123, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!109}
!5125 = !DILocalVariable(name: "retval", scope: !5122, file: !3, line: 911, type: !109)
!5126 = !DILocation(line: 911, column: 6, scope: !5122)
!5127 = !DILocation(line: 915, column: 19, scope: !5122)
!5128 = !DILocation(line: 915, column: 17, scope: !5122)
!5129 = !DILocation(line: 916, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 916, column: 6)
!5131 = !DILocation(line: 916, column: 21, scope: !5130)
!5132 = !DILocation(line: 916, column: 6, scope: !5122)
!5133 = !DILocation(line: 917, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 916, column: 30)
!5135 = !DILocation(line: 919, column: 3, scope: !5134)
!5136 = !DILocation(line: 922, column: 2, scope: !5122)
!5137 = !DILocation(line: 922, column: 18, scope: !5122)
!5138 = !DILocation(line: 922, column: 31, scope: !5122)
!5139 = !DILocation(line: 923, column: 2, scope: !5122)
!5140 = !DILocation(line: 923, column: 18, scope: !5122)
!5141 = !DILocation(line: 923, column: 25, scope: !5122)
!5142 = !DILocation(line: 924, column: 2, scope: !5122)
!5143 = !DILocation(line: 924, column: 18, scope: !5122)
!5144 = !DILocation(line: 924, column: 26, scope: !5122)
!5145 = !DILocation(line: 925, column: 2, scope: !5122)
!5146 = !DILocation(line: 925, column: 18, scope: !5122)
!5147 = !DILocation(line: 925, column: 31, scope: !5122)
!5148 = !DILocation(line: 926, column: 2, scope: !5122)
!5149 = !DILocation(line: 926, column: 18, scope: !5122)
!5150 = !DILocation(line: 926, column: 25, scope: !5122)
!5151 = !DILocation(line: 927, column: 2, scope: !5122)
!5152 = !DILocation(line: 927, column: 18, scope: !5122)
!5153 = !DILocation(line: 927, column: 28, scope: !5122)
!5154 = !DILocation(line: 928, column: 2, scope: !5122)
!5155 = !DILocation(line: 928, column: 18, scope: !5122)
!5156 = !DILocation(line: 928, column: 26, scope: !5122)
!5157 = !DILocation(line: 930, column: 2, scope: !5122)
!5158 = !DILocation(line: 930, column: 18, scope: !5122)
!5159 = !DILocation(line: 930, column: 34, scope: !5122)
!5160 = !DILocation(line: 932, column: 21, scope: !5122)
!5161 = !DILocation(line: 932, column: 2, scope: !5122)
!5162 = !DILocation(line: 934, column: 31, scope: !5122)
!5163 = !DILocation(line: 934, column: 11, scope: !5122)
!5164 = !DILocation(line: 934, column: 9, scope: !5122)
!5165 = !DILocation(line: 935, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 935, column: 6)
!5167 = !DILocation(line: 935, column: 6, scope: !5122)
!5168 = !DILocation(line: 936, column: 3, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 935, column: 14)
!5170 = !DILocation(line: 938, column: 3, scope: !5169)
!5171 = !DILocation(line: 941, column: 3, scope: !5169)
!5172 = !DILocation(line: 944, column: 11, scope: !5122)
!5173 = !DILocation(line: 944, column: 9, scope: !5122)
!5174 = !DILocation(line: 945, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 945, column: 6)
!5176 = !DILocation(line: 945, column: 6, scope: !5122)
!5177 = !DILocation(line: 946, column: 3, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 945, column: 14)
!5179 = !DILocation(line: 948, column: 3, scope: !5178)
!5180 = !DILocation(line: 950, column: 3, scope: !5178)
!5181 = !DILocation(line: 953, column: 2, scope: !5122)
!5182 = !DILabel(scope: !5122, name: "unreg_tty", file: !3, line: 954)
!5183 = !DILocation(line: 954, column: 1, scope: !5122)
!5184 = !DILocation(line: 955, column: 24, scope: !5122)
!5185 = !DILocation(line: 955, column: 2, scope: !5122)
!5186 = !DILabel(scope: !5122, name: "put_tty", file: !3, line: 956)
!5187 = !DILocation(line: 956, column: 1, scope: !5122)
!5188 = !DILocation(line: 957, column: 17, scope: !5122)
!5189 = !DILocation(line: 957, column: 2, scope: !5122)
!5190 = !DILocation(line: 958, column: 17, scope: !5122)
!5191 = !DILocation(line: 959, column: 9, scope: !5122)
!5192 = !DILocation(line: 959, column: 2, scope: !5122)
!5193 = !DILocation(line: 960, column: 1, scope: !5122)
!5194 = distinct !DISubprogram(name: "pti_control_frame_built_and_sent", scope: !3, file: !3, line: 157, type: !5195, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !4525, !539}
!5197 = !DILocalVariable(name: "pscr_ret__", scope: !5198, file: !5199, line: 15, type: !112)
!5198 = distinct !DILexicalBlock(scope: !5200, file: !5199, line: 15, column: 9)
!5199 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5200 = distinct !DISubprogram(name: "get_current", scope: !5199, file: !5199, line: 13, type: !5201, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!112}
!5203 = !DILocation(line: 15, column: 9, scope: !5198, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 173, column: 4, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 173, column: 4)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 172, column: 7)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 171, column: 20)
!5208 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 171, column: 6)
!5209 = !DILocalVariable(name: "__vpp_verify", scope: !5210, file: !5199, line: 15, type: !2019)
!5210 = distinct !DILexicalBlock(scope: !5198, file: !5199, line: 15, column: 9)
!5211 = !DILocation(line: 15, column: 9, scope: !5210, inlinedAt: !5204)
!5212 = !DILocalVariable(name: "pfo_val__", scope: !5213, file: !5199, line: 15, type: !175)
!5213 = distinct !DILexicalBlock(scope: !5198, file: !5199, line: 15, column: 9)
!5214 = !DILocation(line: 15, column: 9, scope: !5213, inlinedAt: !5204)
!5215 = !DILocalVariable(name: "pfo_val__", scope: !5216, file: !5217, line: 26, type: !122)
!5216 = distinct !DILexicalBlock(scope: !5218, file: !5217, line: 26, column: 9)
!5217 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!5218 = distinct !DISubprogram(name: "preempt_count", scope: !5217, file: !5217, line: 24, type: !5123, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5219 = !DILocation(line: 26, column: 9, scope: !5216, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 172, column: 8, scope: !5206)
!5221 = !DILocalVariable(name: "mc", arg: 1, scope: !5194, file: !3, line: 157, type: !4525)
!5222 = !DILocation(line: 157, column: 72, scope: !5194)
!5223 = !DILocalVariable(name: "thread_name", arg: 2, scope: !5194, file: !3, line: 158, type: !539)
!5224 = !DILocation(line: 158, column: 23, scope: !5194)
!5225 = !DILocalVariable(name: "comm", scope: !5194, file: !3, line: 164, type: !2751)
!5226 = !DILocation(line: 164, column: 7, scope: !5194)
!5227 = !DILocalVariable(name: "mccontrol", scope: !5194, file: !3, line: 165, type: !4508)
!5228 = !DILocation(line: 165, column: 27, scope: !5194)
!5229 = !DILocalVariable(name: "thread_name_p", scope: !5194, file: !3, line: 167, type: !539)
!5230 = !DILocation(line: 167, column: 14, scope: !5194)
!5231 = !DILocalVariable(name: "control_format", scope: !5194, file: !3, line: 168, type: !539)
!5232 = !DILocation(line: 168, column: 14, scope: !5194)
!5233 = !DILocalVariable(name: "control_frame", scope: !5194, file: !3, line: 169, type: !5234)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !497)
!5235 = !DILocation(line: 169, column: 5, scope: !5194)
!5236 = !DILocation(line: 171, column: 7, scope: !5208)
!5237 = !DILocation(line: 171, column: 6, scope: !5194)
!5238 = !{i32 -2145558776}
!5239 = !DILocation(line: 26, column: 41, scope: !5218, inlinedAt: !5220)
!5240 = !DILocation(line: 172, column: 8, scope: !5206)
!5241 = !DILocation(line: 172, column: 7, scope: !5207)
!5242 = !DILocation(line: 173, column: 4, scope: !5205)
!5243 = !DILocation(line: 173, column: 4, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 173, column: 4)
!5245 = !{i32 -2146842435}
!5246 = !DILocation(line: 173, column: 4, scope: !5206)
!5247 = !DILocation(line: 175, column: 12, scope: !5206)
!5248 = !DILocation(line: 175, column: 4, scope: !5206)
!5249 = !DILocation(line: 178, column: 3, scope: !5207)
!5250 = !DILocation(line: 178, column: 25, scope: !5207)
!5251 = !DILocation(line: 179, column: 19, scope: !5207)
!5252 = !DILocation(line: 179, column: 17, scope: !5207)
!5253 = !DILocation(line: 180, column: 2, scope: !5207)
!5254 = !DILocation(line: 181, column: 19, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 180, column: 9)
!5256 = !DILocation(line: 181, column: 17, scope: !5255)
!5257 = !DILocation(line: 184, column: 22, scope: !5194)
!5258 = !DILocation(line: 184, column: 12, scope: !5194)
!5259 = !DILocation(line: 184, column: 20, scope: !5194)
!5260 = !DILocation(line: 185, column: 25, scope: !5194)
!5261 = !DILocation(line: 185, column: 45, scope: !5194)
!5262 = !DILocation(line: 185, column: 50, scope: !5194)
!5263 = !DILocation(line: 185, column: 22, scope: !5194)
!5264 = !DILocation(line: 187, column: 11, scope: !5194)
!5265 = !DILocation(line: 187, column: 45, scope: !5194)
!5266 = !DILocation(line: 187, column: 61, scope: !5194)
!5267 = !DILocation(line: 187, column: 65, scope: !5194)
!5268 = !DILocation(line: 188, column: 3, scope: !5194)
!5269 = !DILocation(line: 188, column: 7, scope: !5194)
!5270 = !DILocation(line: 188, column: 16, scope: !5194)
!5271 = !DILocation(line: 187, column: 2, scope: !5194)
!5272 = !DILocation(line: 189, column: 36, scope: !5194)
!5273 = !DILocation(line: 189, column: 58, scope: !5194)
!5274 = !DILocation(line: 189, column: 51, scope: !5194)
!5275 = !DILocation(line: 189, column: 2, scope: !5194)
!5276 = !DILocation(line: 190, column: 1, scope: !5194)
!5277 = distinct !DISubprogram(name: "get_order", scope: !5278, file: !5278, line: 29, type: !5279, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5278 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!109, !110}
!5281 = !DILocalVariable(name: "x", arg: 1, scope: !5282, file: !5283, line: 366, type: !176)
!5282 = distinct !DISubprogram(name: "fls64", scope: !5283, file: !5283, line: 366, type: !5284, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5283 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!109, !176}
!5286 = !DILocation(line: 366, column: 40, scope: !5282, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 46, column: 9, scope: !5277)
!5288 = !DILocalVariable(name: "bitpos", scope: !5282, file: !5283, line: 368, type: !109)
!5289 = !DILocation(line: 368, column: 6, scope: !5282, inlinedAt: !5287)
!5290 = !DILocalVariable(name: "size", arg: 1, scope: !5277, file: !5278, line: 29, type: !110)
!5291 = !DILocation(line: 29, column: 63, scope: !5277)
!5292 = !DILocation(line: 31, column: 27, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5277, file: !5278, line: 31, column: 6)
!5294 = !DILocation(line: 31, column: 6, scope: !5293)
!5295 = !DILocation(line: 31, column: 6, scope: !5277)
!5296 = !DILocation(line: 32, column: 8, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !5278, line: 32, column: 7)
!5298 = distinct !DILexicalBlock(scope: !5293, file: !5278, line: 31, column: 34)
!5299 = !DILocation(line: 32, column: 7, scope: !5298)
!5300 = !DILocation(line: 33, column: 4, scope: !5297)
!5301 = !DILocation(line: 35, column: 7, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5298, file: !5278, line: 35, column: 7)
!5303 = !DILocation(line: 35, column: 12, scope: !5302)
!5304 = !DILocation(line: 35, column: 7, scope: !5298)
!5305 = !DILocation(line: 36, column: 4, scope: !5302)
!5306 = !DILocation(line: 38, column: 10, scope: !5298)
!5307 = !DILocation(line: 38, column: 28, scope: !5298)
!5308 = !DILocation(line: 38, column: 41, scope: !5298)
!5309 = !DILocation(line: 38, column: 3, scope: !5298)
!5310 = !DILocation(line: 41, column: 6, scope: !5277)
!5311 = !DILocation(line: 42, column: 7, scope: !5277)
!5312 = !DILocation(line: 46, column: 15, scope: !5277)
!5313 = !DILocation(line: 374, column: 2, scope: !5282, inlinedAt: !5287)
!5314 = !DILocation(line: 376, column: 14, scope: !5282, inlinedAt: !5287)
!5315 = !{i32 359125}
!5316 = !DILocation(line: 377, column: 9, scope: !5282, inlinedAt: !5287)
!5317 = !DILocation(line: 377, column: 16, scope: !5282, inlinedAt: !5287)
!5318 = !DILocation(line: 46, column: 2, scope: !5277)
!5319 = !DILocation(line: 48, column: 1, scope: !5277)
!5320 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5321, file: !5321, line: 30, type: !5322, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5321 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!109, !175}
!5324 = !DILocation(line: 366, column: 40, scope: !5282, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 32, column: 9, scope: !5320)
!5326 = !DILocation(line: 368, column: 6, scope: !5282, inlinedAt: !5325)
!5327 = !DILocalVariable(name: "n", arg: 1, scope: !5320, file: !5321, line: 30, type: !175)
!5328 = !DILocation(line: 30, column: 21, scope: !5320)
!5329 = !DILocation(line: 32, column: 15, scope: !5320)
!5330 = !DILocation(line: 374, column: 2, scope: !5282, inlinedAt: !5325)
!5331 = !DILocation(line: 376, column: 14, scope: !5282, inlinedAt: !5325)
!5332 = !DILocation(line: 377, column: 9, scope: !5282, inlinedAt: !5325)
!5333 = !DILocation(line: 377, column: 16, scope: !5282, inlinedAt: !5325)
!5334 = !DILocation(line: 32, column: 18, scope: !5320)
!5335 = !DILocation(line: 32, column: 2, scope: !5320)
!5336 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5337, file: !5337, line: 137, type: !5338, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5337 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!106, !2320, !2019, !720, !107}
!5340 = !DILocalVariable(name: "s", arg: 1, scope: !5336, file: !5337, line: 137, type: !2320)
!5341 = !DILocation(line: 137, column: 54, scope: !5336)
!5342 = !DILocalVariable(name: "object", arg: 2, scope: !5336, file: !5337, line: 137, type: !2019)
!5343 = !DILocation(line: 137, column: 69, scope: !5336)
!5344 = !DILocalVariable(name: "size", arg: 3, scope: !5336, file: !5337, line: 138, type: !720)
!5345 = !DILocation(line: 138, column: 12, scope: !5336)
!5346 = !DILocalVariable(name: "flags", arg: 4, scope: !5336, file: !5337, line: 138, type: !107)
!5347 = !DILocation(line: 138, column: 24, scope: !5336)
!5348 = !DILocation(line: 140, column: 17, scope: !5336)
!5349 = !DILocation(line: 140, column: 2, scope: !5336)
!5350 = distinct !DISubprogram(name: "__fswab32", scope: !5351, file: !5351, line: 57, type: !5352, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5351 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!124, !124}
!5354 = !DILocalVariable(name: "val", arg: 1, scope: !5350, file: !5351, line: 57, type: !124)
!5355 = !DILocation(line: 57, column: 57, scope: !5350)
!5356 = !DILocation(line: 60, column: 23, scope: !5350)
!5357 = !DILocation(line: 60, column: 9, scope: !5350)
!5358 = !DILocation(line: 60, column: 2, scope: !5350)
!5359 = distinct !DISubprogram(name: "__arch_swab32", scope: !5360, file: !5360, line: 8, type: !5352, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5360 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5361 = !DILocalVariable(name: "val", arg: 1, scope: !5359, file: !5360, line: 8, type: !124)
!5362 = !DILocation(line: 8, column: 61, scope: !5359)
!5363 = !DILocation(line: 10, column: 38, scope: !5359)
!5364 = !DILocation(line: 10, column: 2, scope: !5359)
!5365 = !{i32 479349}
!5366 = !DILocation(line: 11, column: 9, scope: !5359)
!5367 = !DILocation(line: 11, column: 2, scope: !5359)
!5368 = distinct !DISubprogram(name: "pti_pci_probe", scope: !3, file: !3, line: 790, type: !4190, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5369 = !DILocalVariable(name: "pdev", arg: 1, scope: !5368, file: !3, line: 790, type: !4192)
!5370 = !DILocation(line: 790, column: 42, scope: !5368)
!5371 = !DILocalVariable(name: "ent", arg: 2, scope: !5368, file: !3, line: 791, type: !4177)
!5372 = !DILocation(line: 791, column: 31, scope: !5368)
!5373 = !DILocalVariable(name: "a", scope: !5368, file: !3, line: 793, type: !7)
!5374 = !DILocation(line: 793, column: 15, scope: !5368)
!5375 = !DILocalVariable(name: "retval", scope: !5368, file: !3, line: 794, type: !109)
!5376 = !DILocation(line: 794, column: 6, scope: !5368)
!5377 = !DILocalVariable(name: "pci_bar", scope: !5368, file: !3, line: 795, type: !109)
!5378 = !DILocation(line: 795, column: 6, scope: !5368)
!5379 = !DILocation(line: 800, column: 11, scope: !5368)
!5380 = !DILocation(line: 800, column: 9, scope: !5368)
!5381 = !DILocation(line: 801, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 801, column: 6)
!5383 = !DILocation(line: 801, column: 6, scope: !5368)
!5384 = !DILocation(line: 802, column: 3, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 801, column: 14)
!5386 = !DILocation(line: 804, column: 3, scope: !5385)
!5387 = !DILocation(line: 806, column: 3, scope: !5385)
!5388 = !DILocation(line: 809, column: 29, scope: !5368)
!5389 = !DILocation(line: 809, column: 11, scope: !5368)
!5390 = !DILocation(line: 809, column: 9, scope: !5368)
!5391 = !DILocation(line: 810, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 810, column: 6)
!5393 = !DILocation(line: 810, column: 13, scope: !5392)
!5394 = !DILocation(line: 810, column: 6, scope: !5368)
!5395 = !DILocation(line: 811, column: 3, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 810, column: 19)
!5397 = !DILocation(line: 814, column: 3, scope: !5396)
!5398 = !DILocation(line: 817, column: 13, scope: !5368)
!5399 = !DILocation(line: 817, column: 11, scope: !5368)
!5400 = !DILocation(line: 818, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 818, column: 6)
!5402 = !DILocation(line: 818, column: 15, scope: !5401)
!5403 = !DILocation(line: 818, column: 6, scope: !5368)
!5404 = !DILocation(line: 819, column: 10, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 818, column: 24)
!5406 = !DILocation(line: 820, column: 3, scope: !5405)
!5407 = !DILocation(line: 823, column: 3, scope: !5405)
!5408 = !DILocation(line: 825, column: 23, scope: !5368)
!5409 = !DILocation(line: 825, column: 2, scope: !5368)
!5410 = !DILocation(line: 825, column: 12, scope: !5368)
!5411 = !DILocation(line: 825, column: 21, scope: !5368)
!5412 = !DILocation(line: 827, column: 30, scope: !5368)
!5413 = !DILocation(line: 827, column: 36, scope: !5368)
!5414 = !DILocation(line: 827, column: 55, scope: !5368)
!5415 = !DILocation(line: 827, column: 61, scope: !5368)
!5416 = !DILocation(line: 827, column: 45, scope: !5368)
!5417 = !DILocation(line: 827, column: 11, scope: !5368)
!5418 = !DILocation(line: 827, column: 9, scope: !5368)
!5419 = !DILocation(line: 828, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 828, column: 6)
!5421 = !DILocation(line: 828, column: 13, scope: !5420)
!5422 = !DILocation(line: 828, column: 6, scope: !5368)
!5423 = !DILocation(line: 829, column: 3, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 828, column: 19)
!5425 = !DILocation(line: 832, column: 3, scope: !5424)
!5426 = !DILocation(line: 834, column: 28, scope: !5368)
!5427 = !DILocation(line: 834, column: 38, scope: !5368)
!5428 = !DILocation(line: 834, column: 46, scope: !5368)
!5429 = !DILocation(line: 834, column: 2, scope: !5368)
!5430 = !DILocation(line: 834, column: 12, scope: !5368)
!5431 = !DILocation(line: 834, column: 26, scope: !5368)
!5432 = !DILocation(line: 836, column: 16, scope: !5368)
!5433 = !DILocation(line: 836, column: 26, scope: !5368)
!5434 = !DILocation(line: 836, column: 11, scope: !5368)
!5435 = !DILocation(line: 836, column: 3, scope: !5368)
!5436 = !DILocation(line: 835, column: 2, scope: !5368)
!5437 = !DILocation(line: 835, column: 12, scope: !5368)
!5438 = !DILocation(line: 835, column: 23, scope: !5368)
!5439 = !DILocation(line: 838, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 838, column: 6)
!5441 = !DILocation(line: 838, column: 17, scope: !5440)
!5442 = !DILocation(line: 838, column: 6, scope: !5368)
!5443 = !DILocation(line: 839, column: 10, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 838, column: 29)
!5445 = !DILocation(line: 840, column: 3, scope: !5444)
!5446 = !DILocation(line: 843, column: 18, scope: !5368)
!5447 = !DILocation(line: 843, column: 24, scope: !5368)
!5448 = !DILocation(line: 843, column: 2, scope: !5368)
!5449 = !DILocation(line: 845, column: 9, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 845, column: 2)
!5451 = !DILocation(line: 845, column: 7, scope: !5450)
!5452 = !DILocation(line: 845, column: 14, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 845, column: 2)
!5454 = !DILocation(line: 845, column: 16, scope: !5453)
!5455 = !DILocation(line: 845, column: 2, scope: !5450)
!5456 = !DILocalVariable(name: "port", scope: !5457, file: !3, line: 846, type: !3325)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 845, column: 41)
!5458 = !DILocation(line: 846, column: 20, scope: !5457)
!5459 = !DILocation(line: 846, column: 28, scope: !5457)
!5460 = !DILocation(line: 846, column: 38, scope: !5457)
!5461 = !DILocation(line: 846, column: 43, scope: !5457)
!5462 = !DILocation(line: 847, column: 17, scope: !5457)
!5463 = !DILocation(line: 847, column: 3, scope: !5457)
!5464 = !DILocation(line: 848, column: 3, scope: !5457)
!5465 = !DILocation(line: 848, column: 9, scope: !5457)
!5466 = !DILocation(line: 848, column: 13, scope: !5457)
!5467 = !DILocation(line: 850, column: 28, scope: !5457)
!5468 = !DILocation(line: 850, column: 34, scope: !5457)
!5469 = !DILocation(line: 850, column: 50, scope: !5457)
!5470 = !DILocation(line: 850, column: 54, scope: !5457)
!5471 = !DILocation(line: 850, column: 60, scope: !5457)
!5472 = !DILocation(line: 850, column: 3, scope: !5457)
!5473 = !DILocation(line: 851, column: 2, scope: !5457)
!5474 = !DILocation(line: 845, column: 37, scope: !5453)
!5475 = !DILocation(line: 845, column: 2, scope: !5453)
!5476 = distinct !{!5476, !5455, !5477}
!5477 = !DILocation(line: 851, column: 2, scope: !5450)
!5478 = !DILocation(line: 853, column: 2, scope: !5368)
!5479 = !DILocation(line: 855, column: 2, scope: !5368)
!5480 = !DILabel(scope: !5368, name: "err_rel_reg", file: !3, line: 856)
!5481 = !DILocation(line: 856, column: 1, scope: !5368)
!5482 = !DILocation(line: 857, column: 21, scope: !5368)
!5483 = !DILocation(line: 857, column: 27, scope: !5368)
!5484 = !DILocation(line: 857, column: 2, scope: !5368)
!5485 = !DILabel(scope: !5368, name: "err_free_dd", file: !3, line: 858)
!5486 = !DILocation(line: 858, column: 1, scope: !5368)
!5487 = !DILocation(line: 859, column: 8, scope: !5368)
!5488 = !DILocation(line: 859, column: 2, scope: !5368)
!5489 = !DILabel(scope: !5368, name: "err_disable_pci", file: !3, line: 860)
!5490 = !DILocation(line: 860, column: 1, scope: !5368)
!5491 = !DILocation(line: 861, column: 21, scope: !5368)
!5492 = !DILocation(line: 861, column: 2, scope: !5368)
!5493 = !DILabel(scope: !5368, name: "err_unreg_misc", file: !3, line: 862)
!5494 = !DILocation(line: 862, column: 1, scope: !5368)
!5495 = !DILocation(line: 863, column: 2, scope: !5368)
!5496 = !DILabel(scope: !5368, name: "err", file: !3, line: 864)
!5497 = !DILocation(line: 864, column: 1, scope: !5368)
!5498 = !DILocation(line: 865, column: 9, scope: !5368)
!5499 = !DILocation(line: 865, column: 2, scope: !5368)
!5500 = !DILocation(line: 866, column: 1, scope: !5368)
!5501 = distinct !DISubprogram(name: "pti_pci_remove", scope: !3, file: !3, line: 873, type: !4407, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5502 = !DILocalVariable(name: "pdev", arg: 1, scope: !5501, file: !3, line: 873, type: !4192)
!5503 = !DILocation(line: 873, column: 44, scope: !5501)
!5504 = !DILocalVariable(name: "drv_data", scope: !5501, file: !3, line: 875, type: !4155)
!5505 = !DILocation(line: 875, column: 18, scope: !5501)
!5506 = !DILocation(line: 875, column: 45, scope: !5501)
!5507 = !DILocation(line: 875, column: 29, scope: !5501)
!5508 = !DILocalVariable(name: "a", scope: !5501, file: !3, line: 876, type: !7)
!5509 = !DILocation(line: 876, column: 15, scope: !5501)
!5510 = !DILocation(line: 878, column: 2, scope: !5501)
!5511 = !DILocation(line: 880, column: 9, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 880, column: 2)
!5513 = !DILocation(line: 880, column: 7, scope: !5512)
!5514 = !DILocation(line: 880, column: 14, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 880, column: 2)
!5516 = !DILocation(line: 880, column: 16, scope: !5515)
!5517 = !DILocation(line: 880, column: 2, scope: !5512)
!5518 = !DILocation(line: 881, column: 25, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 880, column: 41)
!5520 = !DILocation(line: 881, column: 41, scope: !5519)
!5521 = !DILocation(line: 881, column: 3, scope: !5519)
!5522 = !DILocation(line: 882, column: 21, scope: !5519)
!5523 = !DILocation(line: 882, column: 31, scope: !5519)
!5524 = !DILocation(line: 882, column: 36, scope: !5519)
!5525 = !DILocation(line: 882, column: 3, scope: !5519)
!5526 = !DILocation(line: 883, column: 2, scope: !5519)
!5527 = !DILocation(line: 880, column: 37, scope: !5515)
!5528 = !DILocation(line: 880, column: 2, scope: !5515)
!5529 = distinct !{!5529, !5517, !5530}
!5530 = !DILocation(line: 883, column: 2, scope: !5512)
!5531 = !DILocation(line: 885, column: 10, scope: !5501)
!5532 = !DILocation(line: 885, column: 20, scope: !5501)
!5533 = !DILocation(line: 885, column: 2, scope: !5501)
!5534 = !DILocation(line: 886, column: 8, scope: !5501)
!5535 = !DILocation(line: 886, column: 2, scope: !5501)
!5536 = !DILocation(line: 887, column: 21, scope: !5501)
!5537 = !DILocation(line: 887, column: 2, scope: !5501)
!5538 = !DILocation(line: 888, column: 21, scope: !5501)
!5539 = !DILocation(line: 888, column: 2, scope: !5501)
!5540 = !DILocation(line: 890, column: 2, scope: !5501)
!5541 = !DILocation(line: 891, column: 1, scope: !5501)
!5542 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !4571, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5543 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !5544)
!5544 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !5545)
!5545 = distinct !DILocation(line: 664, column: 9, scope: !5542)
!5546 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !5544)
!5547 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !5544)
!5548 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !5544)
!5549 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !5550)
!5550 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !5545)
!5551 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !5552)
!5552 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !5545)
!5553 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !5555)
!5555 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !5545)
!5556 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !5554)
!5557 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !5554)
!5558 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !5555)
!5559 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !5555)
!5560 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !5555)
!5561 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !5545)
!5562 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !5545)
!5563 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !5545)
!5564 = !DILocalVariable(name: "size", arg: 1, scope: !5542, file: !94, line: 662, type: !720)
!5565 = !DILocation(line: 662, column: 36, scope: !5542)
!5566 = !DILocalVariable(name: "flags", arg: 2, scope: !5542, file: !94, line: 662, type: !107)
!5567 = !DILocation(line: 662, column: 48, scope: !5542)
!5568 = !DILocation(line: 664, column: 17, scope: !5542)
!5569 = !DILocation(line: 664, column: 23, scope: !5542)
!5570 = !DILocation(line: 664, column: 29, scope: !5542)
!5571 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !5545)
!5572 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !5545)
!5573 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !5545)
!5574 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !5545)
!5575 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !5545)
!5576 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !5545)
!5577 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !5545)
!5578 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !5545)
!5579 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !5555)
!5580 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !5555)
!5581 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !5555)
!5582 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !5555)
!5583 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !5555)
!5584 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !5554)
!5585 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !5554)
!5586 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !5554)
!5587 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !5554)
!5588 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !5545)
!5589 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !5545)
!5590 = !DILocation(line: 348, column: 7, scope: !4653, inlinedAt: !5552)
!5591 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !5552)
!5592 = !DILocation(line: 349, column: 3, scope: !4653, inlinedAt: !5552)
!5593 = !DILocation(line: 351, column: 6, scope: !4657, inlinedAt: !5552)
!5594 = !DILocation(line: 351, column: 11, scope: !4657, inlinedAt: !5552)
!5595 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !5552)
!5596 = !DILocation(line: 352, column: 3, scope: !4657, inlinedAt: !5552)
!5597 = !DILocation(line: 354, column: 32, scope: !4662, inlinedAt: !5552)
!5598 = !DILocation(line: 354, column: 37, scope: !4662, inlinedAt: !5552)
!5599 = !DILocation(line: 354, column: 42, scope: !4662, inlinedAt: !5552)
!5600 = !DILocation(line: 354, column: 45, scope: !4662, inlinedAt: !5552)
!5601 = !DILocation(line: 354, column: 50, scope: !4662, inlinedAt: !5552)
!5602 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !5552)
!5603 = !DILocation(line: 355, column: 3, scope: !4662, inlinedAt: !5552)
!5604 = !DILocation(line: 356, column: 32, scope: !4670, inlinedAt: !5552)
!5605 = !DILocation(line: 356, column: 37, scope: !4670, inlinedAt: !5552)
!5606 = !DILocation(line: 356, column: 43, scope: !4670, inlinedAt: !5552)
!5607 = !DILocation(line: 356, column: 46, scope: !4670, inlinedAt: !5552)
!5608 = !DILocation(line: 356, column: 51, scope: !4670, inlinedAt: !5552)
!5609 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !5552)
!5610 = !DILocation(line: 357, column: 3, scope: !4670, inlinedAt: !5552)
!5611 = !DILocation(line: 358, column: 6, scope: !4678, inlinedAt: !5552)
!5612 = !DILocation(line: 358, column: 11, scope: !4678, inlinedAt: !5552)
!5613 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !5552)
!5614 = !DILocation(line: 358, column: 26, scope: !4678, inlinedAt: !5552)
!5615 = !DILocation(line: 359, column: 6, scope: !4683, inlinedAt: !5552)
!5616 = !DILocation(line: 359, column: 11, scope: !4683, inlinedAt: !5552)
!5617 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !5552)
!5618 = !DILocation(line: 359, column: 26, scope: !4683, inlinedAt: !5552)
!5619 = !DILocation(line: 360, column: 6, scope: !4688, inlinedAt: !5552)
!5620 = !DILocation(line: 360, column: 11, scope: !4688, inlinedAt: !5552)
!5621 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !5552)
!5622 = !DILocation(line: 360, column: 26, scope: !4688, inlinedAt: !5552)
!5623 = !DILocation(line: 361, column: 6, scope: !4693, inlinedAt: !5552)
!5624 = !DILocation(line: 361, column: 11, scope: !4693, inlinedAt: !5552)
!5625 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !5552)
!5626 = !DILocation(line: 361, column: 26, scope: !4693, inlinedAt: !5552)
!5627 = !DILocation(line: 362, column: 6, scope: !4698, inlinedAt: !5552)
!5628 = !DILocation(line: 362, column: 11, scope: !4698, inlinedAt: !5552)
!5629 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !5552)
!5630 = !DILocation(line: 362, column: 26, scope: !4698, inlinedAt: !5552)
!5631 = !DILocation(line: 363, column: 6, scope: !4703, inlinedAt: !5552)
!5632 = !DILocation(line: 363, column: 11, scope: !4703, inlinedAt: !5552)
!5633 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !5552)
!5634 = !DILocation(line: 363, column: 26, scope: !4703, inlinedAt: !5552)
!5635 = !DILocation(line: 364, column: 6, scope: !4708, inlinedAt: !5552)
!5636 = !DILocation(line: 364, column: 11, scope: !4708, inlinedAt: !5552)
!5637 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !5552)
!5638 = !DILocation(line: 364, column: 26, scope: !4708, inlinedAt: !5552)
!5639 = !DILocation(line: 365, column: 6, scope: !4713, inlinedAt: !5552)
!5640 = !DILocation(line: 365, column: 11, scope: !4713, inlinedAt: !5552)
!5641 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !5552)
!5642 = !DILocation(line: 365, column: 26, scope: !4713, inlinedAt: !5552)
!5643 = !DILocation(line: 366, column: 6, scope: !4718, inlinedAt: !5552)
!5644 = !DILocation(line: 366, column: 11, scope: !4718, inlinedAt: !5552)
!5645 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !5552)
!5646 = !DILocation(line: 366, column: 26, scope: !4718, inlinedAt: !5552)
!5647 = !DILocation(line: 367, column: 6, scope: !4723, inlinedAt: !5552)
!5648 = !DILocation(line: 367, column: 11, scope: !4723, inlinedAt: !5552)
!5649 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !5552)
!5650 = !DILocation(line: 367, column: 26, scope: !4723, inlinedAt: !5552)
!5651 = !DILocation(line: 368, column: 6, scope: !4728, inlinedAt: !5552)
!5652 = !DILocation(line: 368, column: 11, scope: !4728, inlinedAt: !5552)
!5653 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !5552)
!5654 = !DILocation(line: 368, column: 26, scope: !4728, inlinedAt: !5552)
!5655 = !DILocation(line: 369, column: 6, scope: !4733, inlinedAt: !5552)
!5656 = !DILocation(line: 369, column: 11, scope: !4733, inlinedAt: !5552)
!5657 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !5552)
!5658 = !DILocation(line: 369, column: 26, scope: !4733, inlinedAt: !5552)
!5659 = !DILocation(line: 370, column: 6, scope: !4738, inlinedAt: !5552)
!5660 = !DILocation(line: 370, column: 11, scope: !4738, inlinedAt: !5552)
!5661 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !5552)
!5662 = !DILocation(line: 370, column: 26, scope: !4738, inlinedAt: !5552)
!5663 = !DILocation(line: 371, column: 6, scope: !4743, inlinedAt: !5552)
!5664 = !DILocation(line: 371, column: 11, scope: !4743, inlinedAt: !5552)
!5665 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !5552)
!5666 = !DILocation(line: 371, column: 26, scope: !4743, inlinedAt: !5552)
!5667 = !DILocation(line: 372, column: 6, scope: !4748, inlinedAt: !5552)
!5668 = !DILocation(line: 372, column: 11, scope: !4748, inlinedAt: !5552)
!5669 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !5552)
!5670 = !DILocation(line: 372, column: 26, scope: !4748, inlinedAt: !5552)
!5671 = !DILocation(line: 373, column: 6, scope: !4753, inlinedAt: !5552)
!5672 = !DILocation(line: 373, column: 11, scope: !4753, inlinedAt: !5552)
!5673 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !5552)
!5674 = !DILocation(line: 373, column: 26, scope: !4753, inlinedAt: !5552)
!5675 = !DILocation(line: 374, column: 6, scope: !4758, inlinedAt: !5552)
!5676 = !DILocation(line: 374, column: 11, scope: !4758, inlinedAt: !5552)
!5677 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !5552)
!5678 = !DILocation(line: 374, column: 26, scope: !4758, inlinedAt: !5552)
!5679 = !DILocation(line: 375, column: 6, scope: !4763, inlinedAt: !5552)
!5680 = !DILocation(line: 375, column: 11, scope: !4763, inlinedAt: !5552)
!5681 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !5552)
!5682 = !DILocation(line: 375, column: 27, scope: !4763, inlinedAt: !5552)
!5683 = !DILocation(line: 376, column: 6, scope: !4768, inlinedAt: !5552)
!5684 = !DILocation(line: 376, column: 11, scope: !4768, inlinedAt: !5552)
!5685 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !5552)
!5686 = !DILocation(line: 376, column: 32, scope: !4768, inlinedAt: !5552)
!5687 = !DILocation(line: 377, column: 6, scope: !4773, inlinedAt: !5552)
!5688 = !DILocation(line: 377, column: 11, scope: !4773, inlinedAt: !5552)
!5689 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !5552)
!5690 = !DILocation(line: 377, column: 32, scope: !4773, inlinedAt: !5552)
!5691 = !DILocation(line: 378, column: 6, scope: !4778, inlinedAt: !5552)
!5692 = !DILocation(line: 378, column: 11, scope: !4778, inlinedAt: !5552)
!5693 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !5552)
!5694 = !DILocation(line: 378, column: 32, scope: !4778, inlinedAt: !5552)
!5695 = !DILocation(line: 379, column: 6, scope: !4783, inlinedAt: !5552)
!5696 = !DILocation(line: 379, column: 11, scope: !4783, inlinedAt: !5552)
!5697 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !5552)
!5698 = !DILocation(line: 379, column: 33, scope: !4783, inlinedAt: !5552)
!5699 = !DILocation(line: 380, column: 6, scope: !4788, inlinedAt: !5552)
!5700 = !DILocation(line: 380, column: 11, scope: !4788, inlinedAt: !5552)
!5701 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !5552)
!5702 = !DILocation(line: 380, column: 33, scope: !4788, inlinedAt: !5552)
!5703 = !DILocation(line: 381, column: 6, scope: !4793, inlinedAt: !5552)
!5704 = !DILocation(line: 381, column: 11, scope: !4793, inlinedAt: !5552)
!5705 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !5552)
!5706 = !DILocation(line: 381, column: 33, scope: !4793, inlinedAt: !5552)
!5707 = !DILocation(line: 382, column: 2, scope: !4798, inlinedAt: !5552)
!5708 = !DILocation(line: 382, column: 2, scope: !4802, inlinedAt: !5552)
!5709 = !DILocation(line: 382, column: 2, scope: !4803, inlinedAt: !5552)
!5710 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !5552)
!5711 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !5545)
!5712 = !DILocation(line: 549, column: 8, scope: !4809, inlinedAt: !5545)
!5713 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !5545)
!5714 = !DILocation(line: 550, column: 4, scope: !4809, inlinedAt: !5545)
!5715 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !5545)
!5716 = !DILocation(line: 325, column: 6, scope: !4814, inlinedAt: !5550)
!5717 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !5550)
!5718 = !DILocation(line: 326, column: 3, scope: !4814, inlinedAt: !5550)
!5719 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !5550)
!5720 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !5550)
!5721 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !5550)
!5722 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !5550)
!5723 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !5545)
!5724 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !5545)
!5725 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !5545)
!5726 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !5545)
!5727 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !5544)
!5728 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !5544)
!5729 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !5544)
!5730 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !5544)
!5731 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !5544)
!5732 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !5544)
!5733 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !5544)
!5734 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !5544)
!5735 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !5544)
!5736 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !5544)
!5737 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !5545)
!5738 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !5545)
!5739 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !5545)
!5740 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !5545)
!5741 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !5545)
!5742 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !5545)
!5743 = !DILocation(line: 664, column: 2, scope: !5542)
!5744 = distinct !DISubprogram(name: "dev_name", scope: !37, file: !37, line: 609, type: !5745, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!539, !3170}
!5747 = !DILocalVariable(name: "dev", arg: 1, scope: !5744, file: !37, line: 609, type: !3170)
!5748 = !DILocation(line: 609, column: 57, scope: !5744)
!5749 = !DILocation(line: 612, column: 6, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5744, file: !37, line: 612, column: 6)
!5751 = !DILocation(line: 612, column: 11, scope: !5750)
!5752 = !DILocation(line: 612, column: 6, scope: !5744)
!5753 = !DILocation(line: 613, column: 10, scope: !5750)
!5754 = !DILocation(line: 613, column: 15, scope: !5750)
!5755 = !DILocation(line: 613, column: 3, scope: !5750)
!5756 = !DILocation(line: 615, column: 23, scope: !5744)
!5757 = !DILocation(line: 615, column: 28, scope: !5744)
!5758 = !DILocation(line: 615, column: 9, scope: !5744)
!5759 = !DILocation(line: 615, column: 2, scope: !5744)
!5760 = !DILocation(line: 616, column: 1, scope: !5744)
!5761 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !4172, file: !4172, line: 1870, type: !5762, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{null, !4192, !106}
!5764 = !DILocalVariable(name: "pdev", arg: 1, scope: !5761, file: !4172, line: 1870, type: !4192)
!5765 = !DILocation(line: 1870, column: 52, scope: !5761)
!5766 = !DILocalVariable(name: "data", arg: 2, scope: !5761, file: !4172, line: 1870, type: !106)
!5767 = !DILocation(line: 1870, column: 64, scope: !5761)
!5768 = !DILocation(line: 1872, column: 19, scope: !5761)
!5769 = !DILocation(line: 1872, column: 25, scope: !5761)
!5770 = !DILocation(line: 1872, column: 30, scope: !5761)
!5771 = !DILocation(line: 1872, column: 2, scope: !5761)
!5772 = !DILocation(line: 1873, column: 1, scope: !5761)
!5773 = distinct !DISubprogram(name: "pti_char_write", scope: !3, file: !3, line: 600, type: !809, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5774 = !DILocalVariable(name: "addr", arg: 1, scope: !5775, file: !5776, line: 138, type: !2019)
!5775 = distinct !DISubprogram(name: "check_copy_size", scope: !5776, file: !5776, line: 138, type: !5777, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5776 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!584, !2019, !720, !584}
!5779 = !DILocation(line: 138, column: 29, scope: !5775, inlinedAt: !5780)
!5780 = distinct !DILocation(line: 191, column: 6, scope: !5781, inlinedAt: !5786)
!5781 = distinct !DILexicalBlock(scope: !5783, file: !5782, line: 191, column: 6)
!5782 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5783 = distinct !DISubprogram(name: "copy_from_user", scope: !5782, file: !5782, line: 189, type: !5784, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{!110, !106, !2019, !110}
!5786 = distinct !DILocation(line: 625, column: 7, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 625, column: 7)
!5788 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 619, column: 5)
!5789 = !DILocalVariable(name: "bytes", arg: 2, scope: !5775, file: !5776, line: 138, type: !720)
!5790 = !DILocation(line: 138, column: 42, scope: !5775, inlinedAt: !5780)
!5791 = !DILocalVariable(name: "is_source", arg: 3, scope: !5775, file: !5776, line: 138, type: !584)
!5792 = !DILocation(line: 138, column: 54, scope: !5775, inlinedAt: !5780)
!5793 = !DILocalVariable(name: "sz", scope: !5775, file: !5776, line: 140, type: !109)
!5794 = !DILocation(line: 140, column: 6, scope: !5775, inlinedAt: !5780)
!5795 = !DILocalVariable(name: "__ret_warn_on", scope: !5796, file: !5776, line: 150, type: !109)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !5776, line: 150, column: 6)
!5797 = distinct !DILexicalBlock(scope: !5775, file: !5776, line: 150, column: 6)
!5798 = !DILocation(line: 150, column: 6, scope: !5796, inlinedAt: !5780)
!5799 = !DILocalVariable(name: "to", arg: 1, scope: !5783, file: !5782, line: 189, type: !106)
!5800 = !DILocation(line: 189, column: 22, scope: !5783, inlinedAt: !5786)
!5801 = !DILocalVariable(name: "from", arg: 2, scope: !5783, file: !5782, line: 189, type: !2019)
!5802 = !DILocation(line: 189, column: 45, scope: !5783, inlinedAt: !5786)
!5803 = !DILocalVariable(name: "n", arg: 3, scope: !5783, file: !5782, line: 189, type: !110)
!5804 = !DILocation(line: 189, column: 65, scope: !5783, inlinedAt: !5786)
!5805 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !5806)
!5806 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !5807)
!5807 = distinct !DILocation(line: 612, column: 9, scope: !5773)
!5808 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !5806)
!5809 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !5806)
!5810 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !5806)
!5811 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !5812)
!5812 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !5807)
!5813 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !5807)
!5815 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !5816)
!5816 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !5817)
!5817 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !5807)
!5818 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !5816)
!5819 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !5816)
!5820 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !5817)
!5821 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !5817)
!5822 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !5817)
!5823 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !5807)
!5824 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !5807)
!5825 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !5807)
!5826 = !DILocalVariable(name: "filp", arg: 1, scope: !5773, file: !3, line: 600, type: !799)
!5827 = !DILocation(line: 600, column: 44, scope: !5773)
!5828 = !DILocalVariable(name: "data", arg: 2, scope: !5773, file: !3, line: 600, type: !539)
!5829 = !DILocation(line: 600, column: 69, scope: !5773)
!5830 = !DILocalVariable(name: "len", arg: 3, scope: !5773, file: !3, line: 601, type: !720)
!5831 = !DILocation(line: 601, column: 17, scope: !5773)
!5832 = !DILocalVariable(name: "ppose", arg: 4, scope: !5773, file: !3, line: 601, type: !750)
!5833 = !DILocation(line: 601, column: 30, scope: !5773)
!5834 = !DILocalVariable(name: "mc", scope: !5773, file: !3, line: 603, type: !4525)
!5835 = !DILocation(line: 603, column: 28, scope: !5773)
!5836 = !DILocalVariable(name: "kbuf", scope: !5773, file: !3, line: 604, type: !106)
!5837 = !DILocation(line: 604, column: 8, scope: !5773)
!5838 = !DILocalVariable(name: "tmp", scope: !5773, file: !3, line: 605, type: !539)
!5839 = !DILocation(line: 605, column: 21, scope: !5773)
!5840 = !DILocalVariable(name: "size", scope: !5773, file: !3, line: 606, type: !720)
!5841 = !DILocation(line: 606, column: 9, scope: !5773)
!5842 = !DILocalVariable(name: "n", scope: !5773, file: !3, line: 607, type: !720)
!5843 = !DILocation(line: 607, column: 9, scope: !5773)
!5844 = !DILocation(line: 609, column: 8, scope: !5773)
!5845 = !DILocation(line: 609, column: 6, scope: !5773)
!5846 = !DILocation(line: 610, column: 7, scope: !5773)
!5847 = !DILocation(line: 610, column: 13, scope: !5773)
!5848 = !DILocation(line: 610, column: 5, scope: !5773)
!5849 = !DILocation(line: 612, column: 17, scope: !5773)
!5850 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !5807)
!5851 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !5807)
!5852 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !5807)
!5853 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !5807)
!5854 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !5807)
!5855 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !5807)
!5856 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !5807)
!5857 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !5807)
!5858 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !5817)
!5859 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !5817)
!5860 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !5817)
!5861 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !5817)
!5862 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !5817)
!5863 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !5816)
!5864 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !5816)
!5865 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !5816)
!5866 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !5816)
!5867 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !5807)
!5868 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !5807)
!5869 = !DILocation(line: 348, column: 7, scope: !4653, inlinedAt: !5814)
!5870 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !5814)
!5871 = !DILocation(line: 349, column: 3, scope: !4653, inlinedAt: !5814)
!5872 = !DILocation(line: 351, column: 6, scope: !4657, inlinedAt: !5814)
!5873 = !DILocation(line: 351, column: 11, scope: !4657, inlinedAt: !5814)
!5874 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !5814)
!5875 = !DILocation(line: 352, column: 3, scope: !4657, inlinedAt: !5814)
!5876 = !DILocation(line: 354, column: 32, scope: !4662, inlinedAt: !5814)
!5877 = !DILocation(line: 354, column: 37, scope: !4662, inlinedAt: !5814)
!5878 = !DILocation(line: 354, column: 42, scope: !4662, inlinedAt: !5814)
!5879 = !DILocation(line: 354, column: 45, scope: !4662, inlinedAt: !5814)
!5880 = !DILocation(line: 354, column: 50, scope: !4662, inlinedAt: !5814)
!5881 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !5814)
!5882 = !DILocation(line: 355, column: 3, scope: !4662, inlinedAt: !5814)
!5883 = !DILocation(line: 356, column: 32, scope: !4670, inlinedAt: !5814)
!5884 = !DILocation(line: 356, column: 37, scope: !4670, inlinedAt: !5814)
!5885 = !DILocation(line: 356, column: 43, scope: !4670, inlinedAt: !5814)
!5886 = !DILocation(line: 356, column: 46, scope: !4670, inlinedAt: !5814)
!5887 = !DILocation(line: 356, column: 51, scope: !4670, inlinedAt: !5814)
!5888 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !5814)
!5889 = !DILocation(line: 357, column: 3, scope: !4670, inlinedAt: !5814)
!5890 = !DILocation(line: 358, column: 6, scope: !4678, inlinedAt: !5814)
!5891 = !DILocation(line: 358, column: 11, scope: !4678, inlinedAt: !5814)
!5892 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !5814)
!5893 = !DILocation(line: 358, column: 26, scope: !4678, inlinedAt: !5814)
!5894 = !DILocation(line: 359, column: 6, scope: !4683, inlinedAt: !5814)
!5895 = !DILocation(line: 359, column: 11, scope: !4683, inlinedAt: !5814)
!5896 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !5814)
!5897 = !DILocation(line: 359, column: 26, scope: !4683, inlinedAt: !5814)
!5898 = !DILocation(line: 360, column: 6, scope: !4688, inlinedAt: !5814)
!5899 = !DILocation(line: 360, column: 11, scope: !4688, inlinedAt: !5814)
!5900 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !5814)
!5901 = !DILocation(line: 360, column: 26, scope: !4688, inlinedAt: !5814)
!5902 = !DILocation(line: 361, column: 6, scope: !4693, inlinedAt: !5814)
!5903 = !DILocation(line: 361, column: 11, scope: !4693, inlinedAt: !5814)
!5904 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !5814)
!5905 = !DILocation(line: 361, column: 26, scope: !4693, inlinedAt: !5814)
!5906 = !DILocation(line: 362, column: 6, scope: !4698, inlinedAt: !5814)
!5907 = !DILocation(line: 362, column: 11, scope: !4698, inlinedAt: !5814)
!5908 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !5814)
!5909 = !DILocation(line: 362, column: 26, scope: !4698, inlinedAt: !5814)
!5910 = !DILocation(line: 363, column: 6, scope: !4703, inlinedAt: !5814)
!5911 = !DILocation(line: 363, column: 11, scope: !4703, inlinedAt: !5814)
!5912 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !5814)
!5913 = !DILocation(line: 363, column: 26, scope: !4703, inlinedAt: !5814)
!5914 = !DILocation(line: 364, column: 6, scope: !4708, inlinedAt: !5814)
!5915 = !DILocation(line: 364, column: 11, scope: !4708, inlinedAt: !5814)
!5916 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !5814)
!5917 = !DILocation(line: 364, column: 26, scope: !4708, inlinedAt: !5814)
!5918 = !DILocation(line: 365, column: 6, scope: !4713, inlinedAt: !5814)
!5919 = !DILocation(line: 365, column: 11, scope: !4713, inlinedAt: !5814)
!5920 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !5814)
!5921 = !DILocation(line: 365, column: 26, scope: !4713, inlinedAt: !5814)
!5922 = !DILocation(line: 366, column: 6, scope: !4718, inlinedAt: !5814)
!5923 = !DILocation(line: 366, column: 11, scope: !4718, inlinedAt: !5814)
!5924 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !5814)
!5925 = !DILocation(line: 366, column: 26, scope: !4718, inlinedAt: !5814)
!5926 = !DILocation(line: 367, column: 6, scope: !4723, inlinedAt: !5814)
!5927 = !DILocation(line: 367, column: 11, scope: !4723, inlinedAt: !5814)
!5928 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !5814)
!5929 = !DILocation(line: 367, column: 26, scope: !4723, inlinedAt: !5814)
!5930 = !DILocation(line: 368, column: 6, scope: !4728, inlinedAt: !5814)
!5931 = !DILocation(line: 368, column: 11, scope: !4728, inlinedAt: !5814)
!5932 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !5814)
!5933 = !DILocation(line: 368, column: 26, scope: !4728, inlinedAt: !5814)
!5934 = !DILocation(line: 369, column: 6, scope: !4733, inlinedAt: !5814)
!5935 = !DILocation(line: 369, column: 11, scope: !4733, inlinedAt: !5814)
!5936 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !5814)
!5937 = !DILocation(line: 369, column: 26, scope: !4733, inlinedAt: !5814)
!5938 = !DILocation(line: 370, column: 6, scope: !4738, inlinedAt: !5814)
!5939 = !DILocation(line: 370, column: 11, scope: !4738, inlinedAt: !5814)
!5940 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !5814)
!5941 = !DILocation(line: 370, column: 26, scope: !4738, inlinedAt: !5814)
!5942 = !DILocation(line: 371, column: 6, scope: !4743, inlinedAt: !5814)
!5943 = !DILocation(line: 371, column: 11, scope: !4743, inlinedAt: !5814)
!5944 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !5814)
!5945 = !DILocation(line: 371, column: 26, scope: !4743, inlinedAt: !5814)
!5946 = !DILocation(line: 372, column: 6, scope: !4748, inlinedAt: !5814)
!5947 = !DILocation(line: 372, column: 11, scope: !4748, inlinedAt: !5814)
!5948 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !5814)
!5949 = !DILocation(line: 372, column: 26, scope: !4748, inlinedAt: !5814)
!5950 = !DILocation(line: 373, column: 6, scope: !4753, inlinedAt: !5814)
!5951 = !DILocation(line: 373, column: 11, scope: !4753, inlinedAt: !5814)
!5952 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !5814)
!5953 = !DILocation(line: 373, column: 26, scope: !4753, inlinedAt: !5814)
!5954 = !DILocation(line: 374, column: 6, scope: !4758, inlinedAt: !5814)
!5955 = !DILocation(line: 374, column: 11, scope: !4758, inlinedAt: !5814)
!5956 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !5814)
!5957 = !DILocation(line: 374, column: 26, scope: !4758, inlinedAt: !5814)
!5958 = !DILocation(line: 375, column: 6, scope: !4763, inlinedAt: !5814)
!5959 = !DILocation(line: 375, column: 11, scope: !4763, inlinedAt: !5814)
!5960 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !5814)
!5961 = !DILocation(line: 375, column: 27, scope: !4763, inlinedAt: !5814)
!5962 = !DILocation(line: 376, column: 6, scope: !4768, inlinedAt: !5814)
!5963 = !DILocation(line: 376, column: 11, scope: !4768, inlinedAt: !5814)
!5964 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !5814)
!5965 = !DILocation(line: 376, column: 32, scope: !4768, inlinedAt: !5814)
!5966 = !DILocation(line: 377, column: 6, scope: !4773, inlinedAt: !5814)
!5967 = !DILocation(line: 377, column: 11, scope: !4773, inlinedAt: !5814)
!5968 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !5814)
!5969 = !DILocation(line: 377, column: 32, scope: !4773, inlinedAt: !5814)
!5970 = !DILocation(line: 378, column: 6, scope: !4778, inlinedAt: !5814)
!5971 = !DILocation(line: 378, column: 11, scope: !4778, inlinedAt: !5814)
!5972 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !5814)
!5973 = !DILocation(line: 378, column: 32, scope: !4778, inlinedAt: !5814)
!5974 = !DILocation(line: 379, column: 6, scope: !4783, inlinedAt: !5814)
!5975 = !DILocation(line: 379, column: 11, scope: !4783, inlinedAt: !5814)
!5976 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !5814)
!5977 = !DILocation(line: 379, column: 33, scope: !4783, inlinedAt: !5814)
!5978 = !DILocation(line: 380, column: 6, scope: !4788, inlinedAt: !5814)
!5979 = !DILocation(line: 380, column: 11, scope: !4788, inlinedAt: !5814)
!5980 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !5814)
!5981 = !DILocation(line: 380, column: 33, scope: !4788, inlinedAt: !5814)
!5982 = !DILocation(line: 381, column: 6, scope: !4793, inlinedAt: !5814)
!5983 = !DILocation(line: 381, column: 11, scope: !4793, inlinedAt: !5814)
!5984 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !5814)
!5985 = !DILocation(line: 381, column: 33, scope: !4793, inlinedAt: !5814)
!5986 = !DILocation(line: 382, column: 2, scope: !4798, inlinedAt: !5814)
!5987 = !DILocation(line: 382, column: 2, scope: !4802, inlinedAt: !5814)
!5988 = !DILocation(line: 382, column: 2, scope: !4803, inlinedAt: !5814)
!5989 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !5814)
!5990 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !5807)
!5991 = !DILocation(line: 549, column: 8, scope: !4809, inlinedAt: !5807)
!5992 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !5807)
!5993 = !DILocation(line: 550, column: 4, scope: !4809, inlinedAt: !5807)
!5994 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !5807)
!5995 = !DILocation(line: 325, column: 6, scope: !4814, inlinedAt: !5812)
!5996 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !5812)
!5997 = !DILocation(line: 326, column: 3, scope: !4814, inlinedAt: !5812)
!5998 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !5812)
!5999 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !5812)
!6000 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !5812)
!6001 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !5812)
!6002 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !5807)
!6003 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !5807)
!6004 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !5807)
!6005 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !5807)
!6006 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !5806)
!6007 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !5806)
!6008 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !5806)
!6009 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !5806)
!6010 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !5806)
!6011 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !5806)
!6012 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !5806)
!6013 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !5806)
!6014 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !5806)
!6015 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !5806)
!6016 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !5807)
!6017 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !5807)
!6018 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !5807)
!6019 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !5807)
!6020 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !5807)
!6021 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !5807)
!6022 = !DILocation(line: 612, column: 7, scope: !5773)
!6023 = !DILocation(line: 613, column: 6, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 613, column: 6)
!6025 = !DILocation(line: 613, column: 11, scope: !6024)
!6026 = !DILocation(line: 613, column: 6, scope: !5773)
!6027 = !DILocation(line: 614, column: 3, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 613, column: 21)
!6029 = !DILocation(line: 616, column: 3, scope: !6028)
!6030 = !DILocation(line: 619, column: 2, scope: !5773)
!6031 = !DILocation(line: 620, column: 7, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 620, column: 7)
!6033 = !DILocation(line: 620, column: 13, scope: !6032)
!6034 = !DILocation(line: 620, column: 11, scope: !6032)
!6035 = !DILocation(line: 620, column: 15, scope: !6032)
!6036 = !DILocation(line: 620, column: 7, scope: !5788)
!6037 = !DILocation(line: 621, column: 9, scope: !6032)
!6038 = !DILocation(line: 621, column: 4, scope: !6032)
!6039 = !DILocation(line: 623, column: 11, scope: !6032)
!6040 = !DILocation(line: 623, column: 17, scope: !6032)
!6041 = !DILocation(line: 623, column: 15, scope: !6032)
!6042 = !DILocation(line: 623, column: 9, scope: !6032)
!6043 = !DILocation(line: 625, column: 22, scope: !5787)
!6044 = !DILocation(line: 625, column: 28, scope: !5787)
!6045 = !DILocation(line: 625, column: 33, scope: !5787)
!6046 = !DILocation(line: 191, column: 6, scope: !5781, inlinedAt: !5786)
!6047 = !DILocation(line: 141, column: 6, scope: !6048, inlinedAt: !5780)
!6048 = distinct !DILexicalBlock(scope: !5775, file: !5776, line: 141, column: 6)
!6049 = !DILocation(line: 0, scope: !6048, inlinedAt: !5780)
!6050 = !DILocation(line: 141, column: 6, scope: !5775, inlinedAt: !5780)
!6051 = !DILocation(line: 142, column: 29, scope: !6052, inlinedAt: !5780)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !5776, line: 142, column: 7)
!6053 = distinct !DILexicalBlock(scope: !6048, file: !5776, line: 141, column: 39)
!6054 = !DILocation(line: 142, column: 8, scope: !6052, inlinedAt: !5780)
!6055 = !DILocation(line: 142, column: 7, scope: !6053, inlinedAt: !5780)
!6056 = !DILocation(line: 143, column: 18, scope: !6052, inlinedAt: !5780)
!6057 = !DILocation(line: 143, column: 22, scope: !6052, inlinedAt: !5780)
!6058 = !DILocation(line: 143, column: 4, scope: !6052, inlinedAt: !5780)
!6059 = !DILocation(line: 144, column: 12, scope: !6060, inlinedAt: !5780)
!6060 = distinct !DILexicalBlock(scope: !6052, file: !5776, line: 144, column: 12)
!6061 = !DILocation(line: 144, column: 12, scope: !6052, inlinedAt: !5780)
!6062 = !DILocation(line: 145, column: 4, scope: !6060, inlinedAt: !5780)
!6063 = !DILocation(line: 147, column: 4, scope: !6060, inlinedAt: !5780)
!6064 = !DILocation(line: 148, column: 3, scope: !6053, inlinedAt: !5780)
!6065 = !DILocation(line: 150, column: 6, scope: !6066, inlinedAt: !5780)
!6066 = distinct !DILexicalBlock(scope: !5796, file: !5776, line: 150, column: 6)
!6067 = !DILocation(line: 150, column: 6, scope: !6068, inlinedAt: !5780)
!6068 = distinct !DILexicalBlock(scope: !6069, file: !5776, line: 150, column: 6)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !5776, line: 150, column: 6)
!6070 = !{i32 -2145560561, i32 -2145560532, i32 -2145560486, i32 -2145560428, i32 -2145560374, i32 -2145560320, i32 -2145560265, i32 -2145560234}
!6071 = !DILocation(line: 150, column: 6, scope: !6072, inlinedAt: !5780)
!6072 = distinct !DILexicalBlock(scope: !6069, file: !5776, line: 150, column: 6)
!6073 = !{i32 -2145559814, i32 -2145559807, i32 -2145559755, i32 -2145559724, i32 -2145559694}
!6074 = !DILocation(line: 150, column: 6, scope: !6069, inlinedAt: !5780)
!6075 = !DILocation(line: 150, column: 6, scope: !5797, inlinedAt: !5780)
!6076 = !DILocation(line: 150, column: 6, scope: !5775, inlinedAt: !5780)
!6077 = !DILocation(line: 151, column: 3, scope: !5797, inlinedAt: !5780)
!6078 = !DILocation(line: 152, column: 20, scope: !5775, inlinedAt: !5780)
!6079 = !DILocation(line: 152, column: 26, scope: !5775, inlinedAt: !5780)
!6080 = !DILocation(line: 152, column: 33, scope: !5775, inlinedAt: !5780)
!6081 = !DILocation(line: 152, column: 2, scope: !5775, inlinedAt: !5780)
!6082 = !DILocation(line: 153, column: 2, scope: !5775, inlinedAt: !5780)
!6083 = !DILocation(line: 154, column: 1, scope: !5775, inlinedAt: !5780)
!6084 = !DILocation(line: 191, column: 6, scope: !5783, inlinedAt: !5786)
!6085 = !DILocation(line: 192, column: 23, scope: !5781, inlinedAt: !5786)
!6086 = !DILocation(line: 192, column: 27, scope: !5781, inlinedAt: !5786)
!6087 = !DILocation(line: 192, column: 33, scope: !5781, inlinedAt: !5786)
!6088 = !DILocation(line: 192, column: 7, scope: !5781, inlinedAt: !5786)
!6089 = !DILocation(line: 192, column: 5, scope: !5781, inlinedAt: !5786)
!6090 = !DILocation(line: 192, column: 3, scope: !5781, inlinedAt: !5786)
!6091 = !DILocation(line: 193, column: 9, scope: !5783, inlinedAt: !5786)
!6092 = !DILocation(line: 625, column: 7, scope: !5787)
!6093 = !DILocation(line: 625, column: 7, scope: !5788)
!6094 = !DILocation(line: 626, column: 10, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 625, column: 40)
!6096 = !DILocation(line: 626, column: 4, scope: !6095)
!6097 = !DILocation(line: 627, column: 11, scope: !6095)
!6098 = !DILocation(line: 627, column: 15, scope: !6095)
!6099 = !DILocation(line: 627, column: 4, scope: !6095)
!6100 = !DILocation(line: 630, column: 25, scope: !5788)
!6101 = !DILocation(line: 630, column: 29, scope: !5788)
!6102 = !DILocation(line: 630, column: 35, scope: !5788)
!6103 = !DILocation(line: 630, column: 3, scope: !5788)
!6104 = !DILocation(line: 631, column: 9, scope: !5788)
!6105 = !DILocation(line: 631, column: 6, scope: !5788)
!6106 = !DILocation(line: 632, column: 10, scope: !5788)
!6107 = !DILocation(line: 632, column: 7, scope: !5788)
!6108 = !DILocation(line: 634, column: 2, scope: !5788)
!6109 = !DILocation(line: 634, column: 11, scope: !5773)
!6110 = !DILocation(line: 634, column: 17, scope: !5773)
!6111 = !DILocation(line: 634, column: 15, scope: !5773)
!6112 = distinct !{!6112, !6030, !6113}
!6113 = !DILocation(line: 634, column: 18, scope: !5773)
!6114 = !DILocation(line: 636, column: 8, scope: !5773)
!6115 = !DILocation(line: 636, column: 2, scope: !5773)
!6116 = !DILocation(line: 637, column: 9, scope: !5773)
!6117 = !DILocation(line: 637, column: 2, scope: !5773)
!6118 = !DILocation(line: 638, column: 1, scope: !5773)
!6119 = distinct !DISubprogram(name: "pti_char_open", scope: !3, file: !3, line: 545, type: !878, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6120 = !DILocalVariable(name: "inode", arg: 1, scope: !6119, file: !3, line: 545, type: !429)
!6121 = !DILocation(line: 545, column: 40, scope: !6119)
!6122 = !DILocalVariable(name: "filp", arg: 2, scope: !6119, file: !3, line: 545, type: !799)
!6123 = !DILocation(line: 545, column: 60, scope: !6119)
!6124 = !DILocalVariable(name: "mc", scope: !6119, file: !3, line: 547, type: !4525)
!6125 = !DILocation(line: 547, column: 28, scope: !6119)
!6126 = !DILocation(line: 555, column: 7, scope: !6119)
!6127 = !DILocation(line: 555, column: 5, scope: !6119)
!6128 = !DILocation(line: 556, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 556, column: 6)
!6130 = !DILocation(line: 556, column: 9, scope: !6129)
!6131 = !DILocation(line: 556, column: 6, scope: !6119)
!6132 = !DILocation(line: 557, column: 3, scope: !6129)
!6133 = !DILocation(line: 558, column: 23, scope: !6119)
!6134 = !DILocation(line: 558, column: 2, scope: !6119)
!6135 = !DILocation(line: 558, column: 8, scope: !6119)
!6136 = !DILocation(line: 558, column: 21, scope: !6119)
!6137 = !DILocation(line: 559, column: 2, scope: !6119)
!6138 = !DILocation(line: 560, column: 1, scope: !6119)
!6139 = distinct !DISubprogram(name: "pti_char_release", scope: !3, file: !3, line: 573, type: !878, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6140 = !DILocalVariable(name: "inode", arg: 1, scope: !6139, file: !3, line: 573, type: !429)
!6141 = !DILocation(line: 573, column: 43, scope: !6139)
!6142 = !DILocalVariable(name: "filp", arg: 2, scope: !6139, file: !3, line: 573, type: !799)
!6143 = !DILocation(line: 573, column: 63, scope: !6139)
!6144 = !DILocation(line: 575, column: 28, scope: !6139)
!6145 = !DILocation(line: 575, column: 34, scope: !6139)
!6146 = !DILocation(line: 575, column: 2, scope: !6139)
!6147 = !DILocation(line: 576, column: 2, scope: !6139)
!6148 = !DILocation(line: 576, column: 8, scope: !6139)
!6149 = !DILocation(line: 576, column: 21, scope: !6139)
!6150 = !DILocation(line: 577, column: 2, scope: !6139)
!6151 = distinct !DISubprogram(name: "copy_overflow", scope: !5776, file: !5776, line: 132, type: !6152, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{null, !109, !110}
!6154 = !DILocalVariable(name: "size", arg: 1, scope: !6151, file: !5776, line: 132, type: !109)
!6155 = !DILocation(line: 132, column: 38, scope: !6151)
!6156 = !DILocalVariable(name: "count", arg: 2, scope: !6151, file: !5776, line: 132, type: !110)
!6157 = !DILocation(line: 132, column: 58, scope: !6151)
!6158 = !DILocalVariable(name: "__ret_warn_on", scope: !6159, file: !5776, line: 134, type: !109)
!6159 = distinct !DILexicalBlock(scope: !6151, file: !5776, line: 134, column: 2)
!6160 = !DILocation(line: 134, column: 2, scope: !6159)
!6161 = !DILocation(line: 134, column: 2, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6159, file: !5776, line: 134, column: 2)
!6163 = !DILocation(line: 134, column: 2, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6162, file: !5776, line: 134, column: 2)
!6165 = !DILocation(line: 134, column: 2, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6164, file: !5776, line: 134, column: 2)
!6167 = !DILocation(line: 134, column: 2, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6164, file: !5776, line: 134, column: 2)
!6169 = !DILocation(line: 134, column: 2, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6168, file: !5776, line: 134, column: 2)
!6171 = !DILocation(line: 134, column: 2, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6168, file: !5776, line: 134, column: 2)
!6173 = !{i32 -2145562385, i32 -2145562356, i32 -2145562310, i32 -2145562252, i32 -2145562198, i32 -2145562144, i32 -2145562089, i32 -2145562058}
!6174 = !DILocation(line: 134, column: 2, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6168, file: !5776, line: 134, column: 2)
!6176 = !{i32 -2145561638, i32 -2145561631, i32 -2145561579, i32 -2145561548, i32 -2145561518}
!6177 = !DILocation(line: 134, column: 2, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6168, file: !5776, line: 134, column: 2)
!6179 = !DILocation(line: 134, column: 2, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6164, file: !5776, line: 134, column: 2)
!6181 = !DILocation(line: 135, column: 1, scope: !6151)
!6182 = distinct !DISubprogram(name: "check_object_size", scope: !5776, file: !5776, line: 122, type: !6183, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{null, !2019, !110, !584}
!6185 = !DILocalVariable(name: "ptr", arg: 1, scope: !6182, file: !5776, line: 122, type: !2019)
!6186 = !DILocation(line: 122, column: 50, scope: !6182)
!6187 = !DILocalVariable(name: "n", arg: 2, scope: !6182, file: !5776, line: 122, type: !110)
!6188 = !DILocation(line: 122, column: 69, scope: !6182)
!6189 = !DILocalVariable(name: "to_user", arg: 3, scope: !6182, file: !5776, line: 123, type: !584)
!6190 = !DILocation(line: 123, column: 15, scope: !6182)
!6191 = !DILocation(line: 124, column: 3, scope: !6182)
!6192 = distinct !DISubprogram(name: "kobject_name", scope: !1888, file: !1888, line: 88, type: !6193, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{!539, !6195}
!6195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6196, size: 64)
!6196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!6197 = !DILocalVariable(name: "kobj", arg: 1, scope: !6192, file: !1888, line: 88, type: !6195)
!6198 = !DILocation(line: 88, column: 62, scope: !6192)
!6199 = !DILocation(line: 90, column: 9, scope: !6192)
!6200 = !DILocation(line: 90, column: 15, scope: !6192)
!6201 = !DILocation(line: 90, column: 2, scope: !6192)
!6202 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !37, file: !37, line: 660, type: !6203, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{null, !2829, !106}
!6205 = !DILocalVariable(name: "dev", arg: 1, scope: !6202, file: !37, line: 660, type: !2829)
!6206 = !DILocation(line: 660, column: 51, scope: !6202)
!6207 = !DILocalVariable(name: "data", arg: 2, scope: !6202, file: !37, line: 660, type: !106)
!6208 = !DILocation(line: 660, column: 62, scope: !6202)
!6209 = !DILocation(line: 662, column: 21, scope: !6202)
!6210 = !DILocation(line: 662, column: 2, scope: !6202)
!6211 = !DILocation(line: 662, column: 7, scope: !6202)
!6212 = !DILocation(line: 662, column: 19, scope: !6202)
!6213 = !DILocation(line: 663, column: 1, scope: !6202)
!6214 = distinct !DISubprogram(name: "pti_port_shutdown", scope: !3, file: !3, line: 763, type: !3374, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6215 = !DILocalVariable(name: "port", arg: 1, scope: !6214, file: !3, line: 763, type: !3325)
!6216 = !DILocation(line: 763, column: 48, scope: !6214)
!6217 = !DILocation(line: 765, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 765, column: 6)
!6219 = !DILocation(line: 765, column: 12, scope: !6218)
!6220 = !DILocation(line: 765, column: 17, scope: !6218)
!6221 = !DILocation(line: 765, column: 23, scope: !6218)
!6222 = !DILocation(line: 765, column: 6, scope: !6214)
!6223 = !DILocation(line: 766, column: 3, scope: !6218)
!6224 = !DILocation(line: 767, column: 1, scope: !6214)
!6225 = distinct !DISubprogram(name: "pti_port_activate", scope: !3, file: !3, line: 746, type: !3378, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6226 = !DILocalVariable(name: "port", arg: 1, scope: !6225, file: !3, line: 746, type: !3325)
!6227 = !DILocation(line: 746, column: 47, scope: !6225)
!6228 = !DILocalVariable(name: "tty", arg: 2, scope: !6225, file: !3, line: 746, type: !2822)
!6229 = !DILocation(line: 746, column: 72, scope: !6225)
!6230 = !DILocation(line: 748, column: 6, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 748, column: 6)
!6232 = !DILocation(line: 748, column: 12, scope: !6231)
!6233 = !DILocation(line: 748, column: 17, scope: !6231)
!6234 = !DILocation(line: 748, column: 23, scope: !6231)
!6235 = !DILocation(line: 748, column: 6, scope: !6225)
!6236 = !DILocation(line: 749, column: 3, scope: !6231)
!6237 = !DILocation(line: 750, column: 2, scope: !6225)
!6238 = !DILocalVariable(name: "c", arg: 1, scope: !4507, file: !3, line: 669, type: !4478)
!6239 = !DILocation(line: 669, column: 47, scope: !4507)
!6240 = !DILocalVariable(name: "buf", arg: 2, scope: !4507, file: !3, line: 669, type: !539)
!6241 = !DILocation(line: 669, column: 62, scope: !4507)
!6242 = !DILocalVariable(name: "len", arg: 3, scope: !4507, file: !3, line: 669, type: !7)
!6243 = !DILocation(line: 669, column: 76, scope: !4507)
!6244 = !DILocation(line: 674, column: 15, scope: !4507)
!6245 = !DILocation(line: 674, column: 13, scope: !4507)
!6246 = !DILocation(line: 675, column: 25, scope: !4507)
!6247 = !DILocation(line: 675, column: 45, scope: !4507)
!6248 = !DILocation(line: 675, column: 50, scope: !4507)
!6249 = !DILocation(line: 675, column: 22, scope: !4507)
!6250 = !DILocation(line: 677, column: 40, scope: !4507)
!6251 = !DILocation(line: 677, column: 45, scope: !4507)
!6252 = !DILocation(line: 677, column: 2, scope: !4507)
!6253 = !DILocation(line: 678, column: 1, scope: !4507)
!6254 = distinct !DISubprogram(name: "pti_console_device", scope: !3, file: !3, line: 691, type: !4485, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6255 = !DILocalVariable(name: "c", arg: 1, scope: !6254, file: !3, line: 691, type: !4478)
!6256 = !DILocation(line: 691, column: 62, scope: !6254)
!6257 = !DILocalVariable(name: "index", arg: 2, scope: !6254, file: !3, line: 691, type: !708)
!6258 = !DILocation(line: 691, column: 70, scope: !6254)
!6259 = !DILocation(line: 693, column: 11, scope: !6254)
!6260 = !DILocation(line: 693, column: 14, scope: !6254)
!6261 = !DILocation(line: 693, column: 3, scope: !6254)
!6262 = !DILocation(line: 693, column: 9, scope: !6254)
!6263 = !DILocation(line: 694, column: 9, scope: !6254)
!6264 = !DILocation(line: 694, column: 2, scope: !6254)
!6265 = distinct !DISubprogram(name: "pti_console_setup", scope: !3, file: !3, line: 706, type: !4490, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6266 = !DILocalVariable(name: "c", arg: 1, scope: !6265, file: !3, line: 706, type: !4478)
!6267 = !DILocation(line: 706, column: 46, scope: !6265)
!6268 = !DILocalVariable(name: "opts", arg: 2, scope: !6265, file: !3, line: 706, type: !565)
!6269 = !DILocation(line: 706, column: 55, scope: !6265)
!6270 = !DILocation(line: 708, column: 22, scope: !6265)
!6271 = !DILocation(line: 709, column: 22, scope: !6265)
!6272 = !DILocation(line: 710, column: 2, scope: !6265)
!6273 = distinct !DISubprogram(name: "pti_write_full_frame_to_aperture", scope: !3, file: !3, line: 206, type: !6274, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{null, !4525, !492, !109}
!6276 = !DILocalVariable(name: "mc", arg: 1, scope: !6273, file: !3, line: 206, type: !4525)
!6277 = !DILocation(line: 206, column: 72, scope: !6273)
!6278 = !DILocalVariable(name: "buf", arg: 2, scope: !6273, file: !3, line: 207, type: !492)
!6279 = !DILocation(line: 207, column: 28, scope: !6273)
!6280 = !DILocalVariable(name: "len", arg: 3, scope: !6273, file: !3, line: 208, type: !109)
!6281 = !DILocation(line: 208, column: 11, scope: !6273)
!6282 = !DILocation(line: 210, column: 35, scope: !6273)
!6283 = !DILocation(line: 210, column: 2, scope: !6273)
!6284 = !DILocation(line: 211, column: 24, scope: !6273)
!6285 = !DILocation(line: 211, column: 34, scope: !6273)
!6286 = !DILocation(line: 211, column: 39, scope: !6273)
!6287 = !DILocation(line: 211, column: 2, scope: !6273)
!6288 = !DILocation(line: 212, column: 1, scope: !6273)
!6289 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !4172, file: !4172, line: 1865, type: !6290, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!106, !4192}
!6292 = !DILocalVariable(name: "pdev", arg: 1, scope: !6289, file: !4172, line: 1865, type: !4192)
!6293 = !DILocation(line: 1865, column: 53, scope: !6289)
!6294 = !DILocation(line: 1867, column: 26, scope: !6289)
!6295 = !DILocation(line: 1867, column: 32, scope: !6289)
!6296 = !DILocation(line: 1867, column: 9, scope: !6289)
!6297 = !DILocation(line: 1867, column: 2, scope: !6289)
!6298 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !37, file: !37, line: 655, type: !6299, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!106, !3170}
!6301 = !DILocalVariable(name: "dev", arg: 1, scope: !6298, file: !37, line: 655, type: !3170)
!6302 = !DILocation(line: 655, column: 58, scope: !6298)
!6303 = !DILocation(line: 657, column: 9, scope: !6298)
!6304 = !DILocation(line: 657, column: 14, scope: !6298)
!6305 = !DILocation(line: 657, column: 2, scope: !6298)
!6306 = distinct !DISubprogram(name: "alloc_tty_driver", scope: !3282, file: !3282, line: 355, type: !6307, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!3280, !7}
!6309 = !DILocalVariable(name: "lines", arg: 1, scope: !6306, file: !3282, line: 355, type: !7)
!6310 = !DILocation(line: 355, column: 64, scope: !6306)
!6311 = !DILocalVariable(name: "ret", scope: !6306, file: !3282, line: 357, type: !3280)
!6312 = !DILocation(line: 357, column: 21, scope: !6306)
!6313 = !DILocation(line: 357, column: 27, scope: !6306)
!6314 = !DILocation(line: 358, column: 13, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6306, file: !3282, line: 358, column: 6)
!6316 = !DILocation(line: 358, column: 6, scope: !6315)
!6317 = !DILocation(line: 358, column: 6, scope: !6306)
!6318 = !DILocation(line: 359, column: 3, scope: !6315)
!6319 = !DILocation(line: 360, column: 9, scope: !6306)
!6320 = !DILocation(line: 360, column: 2, scope: !6306)
!6321 = !DILocation(line: 361, column: 1, scope: !6306)
!6322 = distinct !DISubprogram(name: "IS_ERR", scope: !6323, file: !6323, line: 34, type: !6324, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6323 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!584, !2019}
!6326 = !DILocalVariable(name: "ptr", arg: 1, scope: !6322, file: !6323, line: 34, type: !2019)
!6327 = !DILocation(line: 34, column: 60, scope: !6322)
!6328 = !DILocation(line: 36, column: 9, scope: !6322)
!6329 = !DILocation(line: 36, column: 2, scope: !6322)
!6330 = distinct !DISubprogram(name: "pti_tty_install", scope: !3, file: !3, line: 453, type: !3424, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6331 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !6332)
!6332 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !6333)
!6333 = distinct !DILocation(line: 460, column: 18, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 459, column: 16)
!6335 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 459, column: 6)
!6336 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !6332)
!6337 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !6332)
!6338 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !6332)
!6339 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !6340)
!6340 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !6333)
!6341 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !6342)
!6342 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !6333)
!6343 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !6344)
!6344 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !6345)
!6345 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !6333)
!6346 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !6344)
!6347 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !6344)
!6348 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !6345)
!6349 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !6345)
!6350 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !6345)
!6351 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !6333)
!6352 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !6333)
!6353 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !6333)
!6354 = !DILocalVariable(name: "driver", arg: 1, scope: !6330, file: !3, line: 453, type: !3280)
!6355 = !DILocation(line: 453, column: 47, scope: !6330)
!6356 = !DILocalVariable(name: "tty", arg: 2, scope: !6330, file: !3, line: 453, type: !2822)
!6357 = !DILocation(line: 453, column: 74, scope: !6330)
!6358 = !DILocalVariable(name: "idx", scope: !6330, file: !3, line: 455, type: !109)
!6359 = !DILocation(line: 455, column: 6, scope: !6330)
!6360 = !DILocation(line: 455, column: 12, scope: !6330)
!6361 = !DILocation(line: 455, column: 17, scope: !6330)
!6362 = !DILocalVariable(name: "pti_tty_data", scope: !6330, file: !3, line: 456, type: !6363)
!6363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6364, size: 64)
!6364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pti_tty", file: !3, line: 50, size: 64, elements: !6365)
!6365 = !{!6366}
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !6364, file: !3, line: 51, baseType: !4525, size: 64)
!6367 = !DILocation(line: 456, column: 18, scope: !6330)
!6368 = !DILocalVariable(name: "ret", scope: !6330, file: !3, line: 457, type: !109)
!6369 = !DILocation(line: 457, column: 6, scope: !6330)
!6370 = !DILocation(line: 457, column: 33, scope: !6330)
!6371 = !DILocation(line: 457, column: 41, scope: !6330)
!6372 = !DILocation(line: 457, column: 12, scope: !6330)
!6373 = !DILocation(line: 459, column: 6, scope: !6335)
!6374 = !DILocation(line: 459, column: 10, scope: !6335)
!6375 = !DILocation(line: 459, column: 6, scope: !6330)
!6376 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !6333)
!6377 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !6333)
!6378 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !6333)
!6379 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !6333)
!6380 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !6333)
!6381 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !6333)
!6382 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !6333)
!6383 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !6333)
!6384 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !6345)
!6385 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !6345)
!6386 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !6345)
!6387 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !6345)
!6388 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !6345)
!6389 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !6344)
!6390 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !6344)
!6391 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !6344)
!6392 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !6344)
!6393 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !6333)
!6394 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !6333)
!6395 = !DILocation(line: 348, column: 7, scope: !4653, inlinedAt: !6342)
!6396 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !6342)
!6397 = !DILocation(line: 349, column: 3, scope: !4653, inlinedAt: !6342)
!6398 = !DILocation(line: 351, column: 6, scope: !4657, inlinedAt: !6342)
!6399 = !DILocation(line: 351, column: 11, scope: !4657, inlinedAt: !6342)
!6400 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !6342)
!6401 = !DILocation(line: 352, column: 3, scope: !4657, inlinedAt: !6342)
!6402 = !DILocation(line: 354, column: 32, scope: !4662, inlinedAt: !6342)
!6403 = !DILocation(line: 354, column: 37, scope: !4662, inlinedAt: !6342)
!6404 = !DILocation(line: 354, column: 42, scope: !4662, inlinedAt: !6342)
!6405 = !DILocation(line: 354, column: 45, scope: !4662, inlinedAt: !6342)
!6406 = !DILocation(line: 354, column: 50, scope: !4662, inlinedAt: !6342)
!6407 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !6342)
!6408 = !DILocation(line: 355, column: 3, scope: !4662, inlinedAt: !6342)
!6409 = !DILocation(line: 356, column: 32, scope: !4670, inlinedAt: !6342)
!6410 = !DILocation(line: 356, column: 37, scope: !4670, inlinedAt: !6342)
!6411 = !DILocation(line: 356, column: 43, scope: !4670, inlinedAt: !6342)
!6412 = !DILocation(line: 356, column: 46, scope: !4670, inlinedAt: !6342)
!6413 = !DILocation(line: 356, column: 51, scope: !4670, inlinedAt: !6342)
!6414 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !6342)
!6415 = !DILocation(line: 357, column: 3, scope: !4670, inlinedAt: !6342)
!6416 = !DILocation(line: 358, column: 6, scope: !4678, inlinedAt: !6342)
!6417 = !DILocation(line: 358, column: 11, scope: !4678, inlinedAt: !6342)
!6418 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !6342)
!6419 = !DILocation(line: 358, column: 26, scope: !4678, inlinedAt: !6342)
!6420 = !DILocation(line: 359, column: 6, scope: !4683, inlinedAt: !6342)
!6421 = !DILocation(line: 359, column: 11, scope: !4683, inlinedAt: !6342)
!6422 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !6342)
!6423 = !DILocation(line: 359, column: 26, scope: !4683, inlinedAt: !6342)
!6424 = !DILocation(line: 360, column: 6, scope: !4688, inlinedAt: !6342)
!6425 = !DILocation(line: 360, column: 11, scope: !4688, inlinedAt: !6342)
!6426 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !6342)
!6427 = !DILocation(line: 360, column: 26, scope: !4688, inlinedAt: !6342)
!6428 = !DILocation(line: 361, column: 6, scope: !4693, inlinedAt: !6342)
!6429 = !DILocation(line: 361, column: 11, scope: !4693, inlinedAt: !6342)
!6430 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !6342)
!6431 = !DILocation(line: 361, column: 26, scope: !4693, inlinedAt: !6342)
!6432 = !DILocation(line: 362, column: 6, scope: !4698, inlinedAt: !6342)
!6433 = !DILocation(line: 362, column: 11, scope: !4698, inlinedAt: !6342)
!6434 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !6342)
!6435 = !DILocation(line: 362, column: 26, scope: !4698, inlinedAt: !6342)
!6436 = !DILocation(line: 363, column: 6, scope: !4703, inlinedAt: !6342)
!6437 = !DILocation(line: 363, column: 11, scope: !4703, inlinedAt: !6342)
!6438 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !6342)
!6439 = !DILocation(line: 363, column: 26, scope: !4703, inlinedAt: !6342)
!6440 = !DILocation(line: 364, column: 6, scope: !4708, inlinedAt: !6342)
!6441 = !DILocation(line: 364, column: 11, scope: !4708, inlinedAt: !6342)
!6442 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !6342)
!6443 = !DILocation(line: 364, column: 26, scope: !4708, inlinedAt: !6342)
!6444 = !DILocation(line: 365, column: 6, scope: !4713, inlinedAt: !6342)
!6445 = !DILocation(line: 365, column: 11, scope: !4713, inlinedAt: !6342)
!6446 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !6342)
!6447 = !DILocation(line: 365, column: 26, scope: !4713, inlinedAt: !6342)
!6448 = !DILocation(line: 366, column: 6, scope: !4718, inlinedAt: !6342)
!6449 = !DILocation(line: 366, column: 11, scope: !4718, inlinedAt: !6342)
!6450 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !6342)
!6451 = !DILocation(line: 366, column: 26, scope: !4718, inlinedAt: !6342)
!6452 = !DILocation(line: 367, column: 6, scope: !4723, inlinedAt: !6342)
!6453 = !DILocation(line: 367, column: 11, scope: !4723, inlinedAt: !6342)
!6454 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !6342)
!6455 = !DILocation(line: 367, column: 26, scope: !4723, inlinedAt: !6342)
!6456 = !DILocation(line: 368, column: 6, scope: !4728, inlinedAt: !6342)
!6457 = !DILocation(line: 368, column: 11, scope: !4728, inlinedAt: !6342)
!6458 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !6342)
!6459 = !DILocation(line: 368, column: 26, scope: !4728, inlinedAt: !6342)
!6460 = !DILocation(line: 369, column: 6, scope: !4733, inlinedAt: !6342)
!6461 = !DILocation(line: 369, column: 11, scope: !4733, inlinedAt: !6342)
!6462 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !6342)
!6463 = !DILocation(line: 369, column: 26, scope: !4733, inlinedAt: !6342)
!6464 = !DILocation(line: 370, column: 6, scope: !4738, inlinedAt: !6342)
!6465 = !DILocation(line: 370, column: 11, scope: !4738, inlinedAt: !6342)
!6466 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !6342)
!6467 = !DILocation(line: 370, column: 26, scope: !4738, inlinedAt: !6342)
!6468 = !DILocation(line: 371, column: 6, scope: !4743, inlinedAt: !6342)
!6469 = !DILocation(line: 371, column: 11, scope: !4743, inlinedAt: !6342)
!6470 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !6342)
!6471 = !DILocation(line: 371, column: 26, scope: !4743, inlinedAt: !6342)
!6472 = !DILocation(line: 372, column: 6, scope: !4748, inlinedAt: !6342)
!6473 = !DILocation(line: 372, column: 11, scope: !4748, inlinedAt: !6342)
!6474 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !6342)
!6475 = !DILocation(line: 372, column: 26, scope: !4748, inlinedAt: !6342)
!6476 = !DILocation(line: 373, column: 6, scope: !4753, inlinedAt: !6342)
!6477 = !DILocation(line: 373, column: 11, scope: !4753, inlinedAt: !6342)
!6478 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !6342)
!6479 = !DILocation(line: 373, column: 26, scope: !4753, inlinedAt: !6342)
!6480 = !DILocation(line: 374, column: 6, scope: !4758, inlinedAt: !6342)
!6481 = !DILocation(line: 374, column: 11, scope: !4758, inlinedAt: !6342)
!6482 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !6342)
!6483 = !DILocation(line: 374, column: 26, scope: !4758, inlinedAt: !6342)
!6484 = !DILocation(line: 375, column: 6, scope: !4763, inlinedAt: !6342)
!6485 = !DILocation(line: 375, column: 11, scope: !4763, inlinedAt: !6342)
!6486 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !6342)
!6487 = !DILocation(line: 375, column: 27, scope: !4763, inlinedAt: !6342)
!6488 = !DILocation(line: 376, column: 6, scope: !4768, inlinedAt: !6342)
!6489 = !DILocation(line: 376, column: 11, scope: !4768, inlinedAt: !6342)
!6490 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !6342)
!6491 = !DILocation(line: 376, column: 32, scope: !4768, inlinedAt: !6342)
!6492 = !DILocation(line: 377, column: 6, scope: !4773, inlinedAt: !6342)
!6493 = !DILocation(line: 377, column: 11, scope: !4773, inlinedAt: !6342)
!6494 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !6342)
!6495 = !DILocation(line: 377, column: 32, scope: !4773, inlinedAt: !6342)
!6496 = !DILocation(line: 378, column: 6, scope: !4778, inlinedAt: !6342)
!6497 = !DILocation(line: 378, column: 11, scope: !4778, inlinedAt: !6342)
!6498 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !6342)
!6499 = !DILocation(line: 378, column: 32, scope: !4778, inlinedAt: !6342)
!6500 = !DILocation(line: 379, column: 6, scope: !4783, inlinedAt: !6342)
!6501 = !DILocation(line: 379, column: 11, scope: !4783, inlinedAt: !6342)
!6502 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !6342)
!6503 = !DILocation(line: 379, column: 33, scope: !4783, inlinedAt: !6342)
!6504 = !DILocation(line: 380, column: 6, scope: !4788, inlinedAt: !6342)
!6505 = !DILocation(line: 380, column: 11, scope: !4788, inlinedAt: !6342)
!6506 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !6342)
!6507 = !DILocation(line: 380, column: 33, scope: !4788, inlinedAt: !6342)
!6508 = !DILocation(line: 381, column: 6, scope: !4793, inlinedAt: !6342)
!6509 = !DILocation(line: 381, column: 11, scope: !4793, inlinedAt: !6342)
!6510 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !6342)
!6511 = !DILocation(line: 381, column: 33, scope: !4793, inlinedAt: !6342)
!6512 = !DILocation(line: 382, column: 2, scope: !4798, inlinedAt: !6342)
!6513 = !DILocation(line: 382, column: 2, scope: !4802, inlinedAt: !6342)
!6514 = !DILocation(line: 382, column: 2, scope: !4803, inlinedAt: !6342)
!6515 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !6342)
!6516 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !6333)
!6517 = !DILocation(line: 549, column: 8, scope: !4809, inlinedAt: !6333)
!6518 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !6333)
!6519 = !DILocation(line: 550, column: 4, scope: !4809, inlinedAt: !6333)
!6520 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !6333)
!6521 = !DILocation(line: 325, column: 6, scope: !4814, inlinedAt: !6340)
!6522 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !6340)
!6523 = !DILocation(line: 326, column: 3, scope: !4814, inlinedAt: !6340)
!6524 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !6340)
!6525 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !6340)
!6526 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !6340)
!6527 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !6340)
!6528 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !6333)
!6529 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !6333)
!6530 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !6333)
!6531 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !6333)
!6532 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !6332)
!6533 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !6332)
!6534 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !6332)
!6535 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !6332)
!6536 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !6332)
!6537 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !6332)
!6538 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !6332)
!6539 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !6332)
!6540 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !6332)
!6541 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !6332)
!6542 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !6333)
!6543 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !6333)
!6544 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !6333)
!6545 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !6333)
!6546 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !6333)
!6547 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !6333)
!6548 = !DILocation(line: 460, column: 18, scope: !6334)
!6549 = !DILocation(line: 460, column: 16, scope: !6334)
!6550 = !DILocation(line: 461, column: 7, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 461, column: 7)
!6552 = !DILocation(line: 461, column: 20, scope: !6551)
!6553 = !DILocation(line: 461, column: 7, scope: !6334)
!6554 = !DILocation(line: 462, column: 4, scope: !6551)
!6555 = !DILocation(line: 464, column: 7, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 464, column: 7)
!6557 = !DILocation(line: 464, column: 11, scope: !6556)
!6558 = !DILocation(line: 464, column: 7, scope: !6334)
!6559 = !DILocation(line: 465, column: 23, scope: !6556)
!6560 = !DILocation(line: 465, column: 4, scope: !6556)
!6561 = !DILocation(line: 465, column: 18, scope: !6556)
!6562 = !DILocation(line: 465, column: 21, scope: !6556)
!6563 = !DILocation(line: 467, column: 23, scope: !6556)
!6564 = !DILocation(line: 467, column: 4, scope: !6556)
!6565 = !DILocation(line: 467, column: 18, scope: !6556)
!6566 = !DILocation(line: 467, column: 21, scope: !6556)
!6567 = !DILocation(line: 469, column: 7, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 469, column: 7)
!6569 = !DILocation(line: 469, column: 21, scope: !6568)
!6570 = !DILocation(line: 469, column: 24, scope: !6568)
!6571 = !DILocation(line: 469, column: 7, scope: !6334)
!6572 = !DILocation(line: 470, column: 10, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 469, column: 33)
!6574 = !DILocation(line: 470, column: 4, scope: !6573)
!6575 = !DILocation(line: 471, column: 4, scope: !6573)
!6576 = !DILocation(line: 473, column: 22, scope: !6334)
!6577 = !DILocation(line: 473, column: 3, scope: !6334)
!6578 = !DILocation(line: 473, column: 8, scope: !6334)
!6579 = !DILocation(line: 473, column: 20, scope: !6334)
!6580 = !DILocation(line: 474, column: 2, scope: !6334)
!6581 = !DILocation(line: 476, column: 9, scope: !6330)
!6582 = !DILocation(line: 476, column: 2, scope: !6330)
!6583 = !DILocation(line: 477, column: 1, scope: !6330)
!6584 = distinct !DISubprogram(name: "pti_tty_driver_open", scope: !3, file: !3, line: 413, type: !3432, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6585 = !DILocalVariable(name: "tty", arg: 1, scope: !6584, file: !3, line: 413, type: !2822)
!6586 = !DILocation(line: 413, column: 51, scope: !6584)
!6587 = !DILocalVariable(name: "filp", arg: 2, scope: !6584, file: !3, line: 413, type: !799)
!6588 = !DILocation(line: 413, column: 69, scope: !6584)
!6589 = !DILocation(line: 422, column: 23, scope: !6584)
!6590 = !DILocation(line: 422, column: 28, scope: !6584)
!6591 = !DILocation(line: 422, column: 34, scope: !6584)
!6592 = !DILocation(line: 422, column: 39, scope: !6584)
!6593 = !DILocation(line: 422, column: 9, scope: !6584)
!6594 = !DILocation(line: 422, column: 2, scope: !6584)
!6595 = distinct !DISubprogram(name: "pti_tty_driver_close", scope: !3, file: !3, line: 436, type: !3436, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6596 = !DILocalVariable(name: "tty", arg: 1, scope: !6595, file: !3, line: 436, type: !2822)
!6597 = !DILocation(line: 436, column: 53, scope: !6595)
!6598 = !DILocalVariable(name: "filp", arg: 2, scope: !6595, file: !3, line: 436, type: !799)
!6599 = !DILocation(line: 436, column: 71, scope: !6595)
!6600 = !DILocation(line: 438, column: 17, scope: !6595)
!6601 = !DILocation(line: 438, column: 22, scope: !6595)
!6602 = !DILocation(line: 438, column: 28, scope: !6595)
!6603 = !DILocation(line: 438, column: 33, scope: !6595)
!6604 = !DILocation(line: 438, column: 2, scope: !6595)
!6605 = !DILocation(line: 439, column: 1, scope: !6595)
!6606 = distinct !DISubprogram(name: "pti_tty_cleanup", scope: !3, file: !3, line: 485, type: !3440, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6607 = !DILocalVariable(name: "tty", arg: 1, scope: !6606, file: !3, line: 485, type: !2822)
!6608 = !DILocation(line: 485, column: 48, scope: !6606)
!6609 = !DILocalVariable(name: "pti_tty_data", scope: !6606, file: !3, line: 487, type: !6363)
!6610 = !DILocation(line: 487, column: 18, scope: !6606)
!6611 = !DILocation(line: 487, column: 33, scope: !6606)
!6612 = !DILocation(line: 487, column: 38, scope: !6606)
!6613 = !DILocation(line: 488, column: 6, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 488, column: 6)
!6615 = !DILocation(line: 488, column: 19, scope: !6614)
!6616 = !DILocation(line: 488, column: 6, scope: !6606)
!6617 = !DILocation(line: 489, column: 3, scope: !6614)
!6618 = !DILocation(line: 490, column: 28, scope: !6606)
!6619 = !DILocation(line: 490, column: 42, scope: !6606)
!6620 = !DILocation(line: 490, column: 2, scope: !6606)
!6621 = !DILocation(line: 491, column: 8, scope: !6606)
!6622 = !DILocation(line: 491, column: 2, scope: !6606)
!6623 = !DILocation(line: 492, column: 2, scope: !6606)
!6624 = !DILocation(line: 492, column: 7, scope: !6606)
!6625 = !DILocation(line: 492, column: 19, scope: !6606)
!6626 = !DILocation(line: 493, column: 1, scope: !6606)
!6627 = distinct !DISubprogram(name: "pti_tty_driver_write", scope: !3, file: !3, line: 507, type: !3445, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6628 = !DILocalVariable(name: "tty", arg: 1, scope: !6627, file: !3, line: 507, type: !2822)
!6629 = !DILocation(line: 507, column: 52, scope: !6627)
!6630 = !DILocalVariable(name: "buf", arg: 2, scope: !6627, file: !3, line: 508, type: !492)
!6631 = !DILocation(line: 508, column: 23, scope: !6627)
!6632 = !DILocalVariable(name: "len", arg: 3, scope: !6627, file: !3, line: 508, type: !109)
!6633 = !DILocation(line: 508, column: 32, scope: !6627)
!6634 = !DILocalVariable(name: "pti_tty_data", scope: !6627, file: !3, line: 510, type: !6363)
!6635 = !DILocation(line: 510, column: 18, scope: !6627)
!6636 = !DILocation(line: 510, column: 33, scope: !6627)
!6637 = !DILocation(line: 510, column: 38, scope: !6627)
!6638 = !DILocation(line: 511, column: 7, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 511, column: 6)
!6640 = !DILocation(line: 511, column: 20, scope: !6639)
!6641 = !DILocation(line: 511, column: 29, scope: !6639)
!6642 = !DILocation(line: 511, column: 33, scope: !6639)
!6643 = !DILocation(line: 511, column: 47, scope: !6639)
!6644 = !DILocation(line: 511, column: 50, scope: !6639)
!6645 = !DILocation(line: 511, column: 6, scope: !6627)
!6646 = !DILocation(line: 512, column: 25, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6639, file: !3, line: 511, column: 60)
!6648 = !DILocation(line: 512, column: 39, scope: !6647)
!6649 = !DILocation(line: 512, column: 49, scope: !6647)
!6650 = !DILocation(line: 512, column: 54, scope: !6647)
!6651 = !DILocation(line: 512, column: 3, scope: !6647)
!6652 = !DILocation(line: 513, column: 10, scope: !6647)
!6653 = !DILocation(line: 513, column: 3, scope: !6647)
!6654 = !DILocation(line: 520, column: 3, scope: !6639)
!6655 = !DILocation(line: 521, column: 1, scope: !6627)
!6656 = distinct !DISubprogram(name: "pti_tty_write_room", scope: !3, file: !3, line: 528, type: !3454, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6657 = !DILocalVariable(name: "tty", arg: 1, scope: !6656, file: !3, line: 528, type: !2822)
!6658 = !DILocation(line: 528, column: 50, scope: !6656)
!6659 = !DILocation(line: 530, column: 2, scope: !6656)
