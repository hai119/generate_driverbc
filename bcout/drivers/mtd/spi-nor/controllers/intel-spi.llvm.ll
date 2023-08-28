; ModuleID = '../bcout/drivers/mtd/spi-nor/controllers/intel-spi.llvm.bc'
source_filename = "drivers/mtd/spi-nor/controllers/intel-spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_controller_ops = type { i32 (%struct.spi_nor*)*, void (%struct.spi_nor*)*, i32 (%struct.spi_nor*, i8, i8*, i64)*, i32 (%struct.spi_nor*, i8, i8*, i64)*, i64 (%struct.spi_nor*, i64, i64, i8*)*, i64 (%struct.spi_nor*, i64, i64, i8*)*, i32 (%struct.spi_nor*, i64)* }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, %struct.device*, %struct.spi_mem*, i8*, i64, %struct.flash_info*, %struct.spi_nor_manufacturer*, i32, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, %struct.spi_nor_controller_ops*, %struct.spi_nor_flash_parameter*, %struct.anon.75, i8* }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.mtd_ooblayout_ops*, %struct.mtd_pairing_scheme*, i32, i32, i32, %struct.mtd_erase_region_info*, i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, i8*, %struct.module*, %struct.device, i32, %struct.mtd_debug_info, %struct.nvmem_device*, %struct.mtd_info*, %struct.list_head, %union.anon.69 }
%struct.mtd_ooblayout_ops = type { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* }
%struct.mtd_oob_region = type { i32, i32 }
%struct.mtd_pairing_scheme = type { i32, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)* }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, i64* }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i64, i64, i64, i64, i32, i8*, i8* }
%struct.otp_info = type { i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.68 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.56 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.57, i32 }
%union.anon.57 = type { %struct.kuid_t }
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
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.19, [0 x i64] }
%struct.anon.19 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.20, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.20 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.26, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.27, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.28, %union.anon.32, %struct.key_restriction* }
%union.anon.26 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.27 = type { i64 }
%union.anon.28 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.29, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.29 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.32 = type { %union.key_payload }
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
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.49 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.50, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.53 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i64, i64 }
%union.anon.53 = type { [12 x i32] }
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
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.59 = type { %struct.callback_head }
%union.anon.60 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.6, %union.anon.7 }
%union.anon.6 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.7 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mtd_debug_info = type { %struct.dentry*, i8*, i8* }
%struct.nvmem_device = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.69 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spi_mem = type { %struct.spi_device*, i8*, i8* }
%struct.spi_device = type { %struct.device, %struct.spi_controller*, %struct.spi_controller*, i32, i8, i8, i8, i32, i32, i8*, i8*, [32 x i8], i8*, i32, %struct.gpio_desc*, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)*, %struct.mutex, %struct.spinlock, %struct.mutex, i8, i32 (%struct.spi_device*)*, i32 (%struct.spi_device*, %struct.spi_delay*, %struct.spi_delay*, %struct.spi_delay*)*, i32 (%struct.spi_device*, %struct.spi_message*)*, void (%struct.spi_device*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i8, %struct.kthread_worker*, %struct.kthread_work, %struct.spinlock, %struct.list_head, %struct.spi_message*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i64, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, void (%struct.spi_device*, i1)*, i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, void (%struct.spi_controller*, %struct.spi_message*)*, %struct.spi_controller_mem_ops*, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32*, %struct.gpio_desc**, i8, i8, i8, %struct.spi_statistics, %struct.dma_chan*, %struct.dma_chan*, i8*, i8*, i32 (%struct.spi_controller*, i32)*, i8, i64 }
%struct.spi_transfer = type { i8*, i8*, i32, i64, i64, %struct.sg_table, %struct.sg_table, i8, i8, i16, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, %struct.ptp_system_timestamp*, i8, %struct.list_head, i16 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.spi_message = type { %struct.list_head, %struct.spi_device*, i8, void (i8*)*, i8*, i32, i32, i32, %struct.list_head, i8*, %struct.list_head }
%struct.spi_controller_mem_ops = type { i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i1 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i8* (%struct.spi_mem*)*, i32 (%struct.spi_mem_dirmap_desc*)*, void (%struct.spi_mem_dirmap_desc*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)*, i64 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* }
%struct.spi_mem_op = type { %struct.anon.70, %struct.anon.71, %struct.anon.72, %struct.anon.73 }
%struct.anon.70 = type { i8, i8, i8, i16 }
%struct.anon.71 = type { i8, i8, i8, i64 }
%struct.anon.72 = type { i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i32, i32, %union.anon.74 }
%union.anon.74 = type { i8* }
%struct.spi_mem_dirmap_desc = type { %struct.spi_mem*, %struct.spi_mem_dirmap_info, i32, i8* }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.dma_chan = type opaque
%struct.gpio_desc = type opaque
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [17 x i64], i64 }
%struct.flash_info = type opaque
%struct.spi_nor_manufacturer = type opaque
%struct.spi_nor_flash_parameter = type opaque
%struct.anon.75 = type { %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc* }
%struct.intel_spi = type { %struct.device*, %struct.intel_spi_boardinfo*, %struct.spi_nor, i8*, i8*, i8*, i64, i64, i8, i8, i8, i8, i8, i8, [8 x i8] }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.intel_spi_boardinfo = type { i32, i8 }
%struct.mtd_partition = type { i8*, i8**, i64, i64, i32, i32, %struct.device_node* }
%struct.mtd_part_parser_data = type { i64 }

@__param_str_writeable = internal constant [20 x i8] c"intel_spi.writeable\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@writeable = internal global i8 0, align 1, !dbg !247
@__param_writeable = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_writeable, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon { i8* @writeable } }, section "__param", align 8, !dbg !147
@__UNIQUE_ID_writeabletype238 = internal constant [34 x i8] c"intel_spi.parmtype=writeable:bool\00", section ".modinfo", align 1, !dbg !217
@__UNIQUE_ID_writeable239 = internal constant [75 x i8] c"intel_spi.parm=writeable:Enable write access to SPI flash chip (default=0)\00", section ".modinfo", align 1, !dbg !222
@__const.intel_spi_probe.hwcaps = private unnamed_addr constant %struct.spi_nor_hwcaps { i32 65539 }, align 4
@intel_spi_controller_ops = internal constant %struct.spi_nor_controller_ops { i32 (%struct.spi_nor*)* null, void (%struct.spi_nor*)* null, i32 (%struct.spi_nor*, i8, i8*, i64)* @intel_spi_read_reg, i32 (%struct.spi_nor*, i8, i8*, i64)* @intel_spi_write_reg, i64 (%struct.spi_nor*, i64, i64, i8*)* @intel_spi_read, i64 (%struct.spi_nor*, i64, i64, i8*)* @intel_spi_write, i32 (%struct.spi_nor*, i64)* @intel_spi_erase }, align 8, !dbg !251
@.str = private unnamed_addr constant [27 x i8] c"failed to locate the chip\0A\00", align 1
@__UNIQUE_ID_description253 = internal constant [58 x i8] c"intel_spi.description=Intel PCH/PCU SPI flash core driver\00", section ".modinfo", align 1, !dbg !227
@__UNIQUE_ID_author254 = internal constant [67 x i8] c"intel_spi.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1, !dbg !232
@__UNIQUE_ID_file255 = internal constant [57 x i8] c"intel_spi.file=drivers/mtd/spi-nor/controllers/intel-spi\00", section ".modinfo", align 1, !dbg !237
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"intel_spi.license=GPL v2\00", section ".modinfo", align 1, !dbg !242
@.str.1 = private unnamed_addr constant [48 x i8] c"software sequencer not supported, but required\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"drivers/mtd/spi-nor/controllers/intel-spi.c\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"read error: %llx: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to write block\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"write error: %llx: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_writeable to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_writeabletype238, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_writeable239, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_description253, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_author254, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_file255, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license256, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_spi* @intel_spi_probe(%struct.device* %dev, %struct.resource* %mem, %struct.intel_spi_boardinfo* %info) #0 !dbg !4528 {
entry:
  %retval = alloca %struct.intel_spi*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %mem.addr = alloca %struct.resource*, align 8
  %info.addr = alloca %struct.intel_spi_boardinfo*, align 8
  %hwcaps = alloca %struct.spi_nor_hwcaps, align 4
  %part = alloca %struct.mtd_partition, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  store %struct.resource* %mem, %struct.resource** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mem.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  store %struct.intel_spi_boardinfo* %info, %struct.intel_spi_boardinfo** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi_boardinfo** %info.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.declare(metadata %struct.spi_nor_hwcaps* %hwcaps, metadata !4574, metadata !DIExpression()), !dbg !4579
  %0 = bitcast %struct.spi_nor_hwcaps* %hwcaps to i8*, !dbg !4579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.spi_nor_hwcaps* @__const.intel_spi_probe.hwcaps to i8*), i64 4, i1 false), !dbg !4579
  call void @llvm.dbg.declare(metadata %struct.mtd_partition* %part, metadata !4580, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !4594, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4596, metadata !DIExpression()), !dbg !4597
  %1 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info.addr, align 8, !dbg !4598
  %tobool = icmp ne %struct.intel_spi_boardinfo* %1, null, !dbg !4598
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4600

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.resource*, %struct.resource** %mem.addr, align 8, !dbg !4601
  %tobool1 = icmp ne %struct.resource* %2, null, !dbg !4601
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4602

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -22) #5, !dbg !4603
  %3 = bitcast i8* %call to %struct.intel_spi*, !dbg !4603
  store %struct.intel_spi* %3, %struct.intel_spi** %retval, align 8, !dbg !4604
  br label %return, !dbg !4604

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4605
  %call2 = call i8* @devm_kzalloc(%struct.device* %4, i64 1424, i32 3264) #5, !dbg !4606
  %5 = bitcast i8* %call2 to %struct.intel_spi*, !dbg !4606
  store %struct.intel_spi* %5, %struct.intel_spi** %ispi, align 8, !dbg !4607
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4608
  %tobool3 = icmp ne %struct.intel_spi* %6, null, !dbg !4608
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4610

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -12) #5, !dbg !4611
  %7 = bitcast i8* %call5 to %struct.intel_spi*, !dbg !4611
  store %struct.intel_spi* %7, %struct.intel_spi** %retval, align 8, !dbg !4612
  br label %return, !dbg !4612

if.end6:                                          ; preds = %if.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4613
  %9 = load %struct.resource*, %struct.resource** %mem.addr, align 8, !dbg !4614
  %call7 = call i8* @devm_ioremap_resource(%struct.device* %8, %struct.resource* %9) #5, !dbg !4615
  %10 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4616
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 3, !dbg !4617
  store i8* %call7, i8** %base, align 8, !dbg !4618
  %11 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4619
  %base8 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %11, i32 0, i32 3, !dbg !4621
  %12 = load i8*, i8** %base8, align 8, !dbg !4621
  %call9 = call zeroext i1 @IS_ERR(i8* %12) #5, !dbg !4622
  br i1 %call9, label %if.then10, label %if.end13, !dbg !4623

if.then10:                                        ; preds = %if.end6
  %13 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4624
  %base11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %13, i32 0, i32 3, !dbg !4625
  %14 = load i8*, i8** %base11, align 8, !dbg !4625
  %call12 = call i8* @ERR_CAST(i8* %14) #5, !dbg !4626
  %15 = bitcast i8* %call12 to %struct.intel_spi*, !dbg !4626
  store %struct.intel_spi* %15, %struct.intel_spi** %retval, align 8, !dbg !4627
  br label %return, !dbg !4627

if.end13:                                         ; preds = %if.end6
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4628
  %17 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4629
  %dev14 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %17, i32 0, i32 0, !dbg !4630
  store %struct.device* %16, %struct.device** %dev14, align 8, !dbg !4631
  %18 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info.addr, align 8, !dbg !4632
  %19 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4633
  %info15 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %19, i32 0, i32 1, !dbg !4634
  store %struct.intel_spi_boardinfo* %18, %struct.intel_spi_boardinfo** %info15, align 8, !dbg !4635
  %20 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info.addr, align 8, !dbg !4636
  %writeable = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %20, i32 0, i32 1, !dbg !4637
  %21 = load i8, i8* %writeable, align 4, !dbg !4637
  %tobool16 = trunc i8 %21 to i1, !dbg !4637
  %22 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4638
  %writeable17 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %22, i32 0, i32 8, !dbg !4639
  %frombool = zext i1 %tobool16 to i8, !dbg !4640
  store i8 %frombool, i8* %writeable17, align 8, !dbg !4640
  %23 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4641
  %call18 = call i32 @intel_spi_init(%struct.intel_spi* %23) #5, !dbg !4642
  store i32 %call18, i32* %ret, align 4, !dbg !4643
  %24 = load i32, i32* %ret, align 4, !dbg !4644
  %tobool19 = icmp ne i32 %24, 0, !dbg !4644
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4646

if.then20:                                        ; preds = %if.end13
  %25 = load i32, i32* %ret, align 4, !dbg !4647
  %conv = sext i32 %25 to i64, !dbg !4647
  %call21 = call i8* @ERR_PTR(i64 %conv) #5, !dbg !4648
  %26 = bitcast i8* %call21 to %struct.intel_spi*, !dbg !4648
  store %struct.intel_spi* %26, %struct.intel_spi** %retval, align 8, !dbg !4649
  br label %return, !dbg !4649

if.end22:                                         ; preds = %if.end13
  %27 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4650
  %dev23 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %27, i32 0, i32 0, !dbg !4651
  %28 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !4651
  %29 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4652
  %nor = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %29, i32 0, i32 2, !dbg !4653
  %dev24 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor, i32 0, i32 2, !dbg !4654
  store %struct.device* %28, %struct.device** %dev24, align 8, !dbg !4655
  %30 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4656
  %31 = bitcast %struct.intel_spi* %30 to i8*, !dbg !4656
  %32 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4657
  %nor25 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %32, i32 0, i32 2, !dbg !4658
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor25, i32 0, i32 22, !dbg !4659
  store i8* %31, i8** %priv, align 8, !dbg !4660
  %33 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4661
  %nor26 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %33, i32 0, i32 2, !dbg !4662
  %controller_ops = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor26, i32 0, i32 19, !dbg !4663
  store %struct.spi_nor_controller_ops* @intel_spi_controller_ops, %struct.spi_nor_controller_ops** %controller_ops, align 8, !dbg !4664
  %34 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4665
  %nor27 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %34, i32 0, i32 2, !dbg !4666
  %call28 = call i32 @spi_nor_scan(%struct.spi_nor* %nor27, i8* null, %struct.spi_nor_hwcaps* %hwcaps) #5, !dbg !4667
  store i32 %call28, i32* %ret, align 4, !dbg !4668
  %35 = load i32, i32* %ret, align 4, !dbg !4669
  %tobool29 = icmp ne i32 %35, 0, !dbg !4669
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !4671

if.then30:                                        ; preds = %if.end22
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4672
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4672
  %37 = load i32, i32* %ret, align 4, !dbg !4674
  %conv31 = sext i32 %37 to i64, !dbg !4674
  %call32 = call i8* @ERR_PTR(i64 %conv31) #5, !dbg !4675
  %38 = bitcast i8* %call32 to %struct.intel_spi*, !dbg !4675
  store %struct.intel_spi* %38, %struct.intel_spi** %retval, align 8, !dbg !4676
  br label %return, !dbg !4676

if.end33:                                         ; preds = %if.end22
  %39 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4677
  call void @intel_spi_fill_partition(%struct.intel_spi* %39, %struct.mtd_partition* %part) #5, !dbg !4678
  %40 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4679
  %writeable34 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %40, i32 0, i32 8, !dbg !4681
  %41 = load i8, i8* %writeable34, align 8, !dbg !4681
  %tobool35 = trunc i8 %41 to i1, !dbg !4681
  br i1 %tobool35, label %lor.lhs.false36, label %if.then38, !dbg !4682

lor.lhs.false36:                                  ; preds = %if.end33
  %42 = load i8, i8* @writeable, align 1, !dbg !4683
  %tobool37 = trunc i8 %42 to i1, !dbg !4683
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !4684

if.then38:                                        ; preds = %lor.lhs.false36, %if.end33
  %43 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4685
  %nor39 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %43, i32 0, i32 2, !dbg !4686
  %mtd = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor39, i32 0, i32 0, !dbg !4687
  %flags = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd, i32 0, i32 1, !dbg !4688
  %44 = load i32, i32* %flags, align 4, !dbg !4689
  %and = and i32 %44, -1025, !dbg !4689
  store i32 %and, i32* %flags, align 4, !dbg !4689
  br label %if.end40, !dbg !4685

if.end40:                                         ; preds = %if.then38, %lor.lhs.false36
  %45 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4690
  %nor41 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %45, i32 0, i32 2, !dbg !4690
  %mtd42 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor41, i32 0, i32 0, !dbg !4690
  %call43 = call i32 @mtd_device_parse_register(%struct.mtd_info* %mtd42, i8** null, %struct.mtd_part_parser_data* null, %struct.mtd_partition* %part, i32 1) #5, !dbg !4690
  store i32 %call43, i32* %ret, align 4, !dbg !4691
  %46 = load i32, i32* %ret, align 4, !dbg !4692
  %tobool44 = icmp ne i32 %46, 0, !dbg !4692
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !4694

if.then45:                                        ; preds = %if.end40
  %47 = load i32, i32* %ret, align 4, !dbg !4695
  %conv46 = sext i32 %47 to i64, !dbg !4695
  %call47 = call i8* @ERR_PTR(i64 %conv46) #5, !dbg !4696
  %48 = bitcast i8* %call47 to %struct.intel_spi*, !dbg !4696
  store %struct.intel_spi* %48, %struct.intel_spi** %retval, align 8, !dbg !4697
  br label %return, !dbg !4697

if.end48:                                         ; preds = %if.end40
  %49 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !4698
  store %struct.intel_spi* %49, %struct.intel_spi** %retval, align 8, !dbg !4699
  br label %return, !dbg !4699

return:                                           ; preds = %if.end48, %if.then45, %if.then30, %if.then20, %if.then10, %if.then4, %if.then
  %50 = load %struct.intel_spi*, %struct.intel_spi** %retval, align 8, !dbg !4700
  ret %struct.intel_spi* %50, !dbg !4700
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4701 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load i64, i64* %error.addr, align 8, !dbg !4707
  %1 = inttoptr i64 %0 to i8*, !dbg !4708
  ret i8* %1, !dbg !4709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !4710 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4719
  %1 = load i64, i64* %size.addr, align 8, !dbg !4720
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4721
  %or = or i32 %2, 256, !dbg !4722
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !4723
  ret i8* %call, !dbg !4724
}

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4725 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4730
  %1 = ptrtoint i8* %0 to i64, !dbg !4730
  %2 = inttoptr i64 %1 to i8*, !dbg !4730
  %3 = ptrtoint i8* %2 to i64, !dbg !4730
  %cmp = icmp uge i64 %3, -4095, !dbg !4730
  %lnot = xor i1 %cmp, true, !dbg !4730
  %lnot1 = xor i1 %lnot, true, !dbg !4730
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4730
  %conv = sext i32 %lnot.ext to i64, !dbg !4730
  %tobool = icmp ne i64 %conv, 0, !dbg !4730
  ret i1 %tobool, !dbg !4731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !4732 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4737
  ret i8* %0, !dbg !4738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_init(%struct.intel_spi* %ispi) #0 !dbg !4739 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %opmenu0 = alloca i32, align 4
  %opmenu1 = alloca i32, align 4
  %lvscc = alloca i32, align 4
  %uvscc = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata i32* %opmenu0, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata i32* %opmenu1, metadata !4746, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.declare(metadata i32* %lvscc, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata i32* %uvscc, metadata !4750, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4752, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4754, metadata !DIExpression()), !dbg !4755
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4756
  %info = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %0, i32 0, i32 1, !dbg !4757
  %1 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info, align 8, !dbg !4757
  %type = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %1, i32 0, i32 0, !dbg !4758
  %2 = load i32, i32* %type, align 4, !dbg !4758
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb29
    i32 4, label %sw.bb38
  ], !dbg !4759

sw.bb:                                            ; preds = %entry
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4760
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 3, !dbg !4762
  %4 = load i8*, i8** %base, align 8, !dbg !4762
  %add.ptr = getelementptr i8, i8* %4, i64 144, !dbg !4763
  %5 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4764
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %5, i32 0, i32 5, !dbg !4765
  store i8* %add.ptr, i8** %sregs, align 8, !dbg !4766
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4767
  %base1 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %6, i32 0, i32 3, !dbg !4768
  %7 = load i8*, i8** %base1, align 8, !dbg !4768
  %add.ptr2 = getelementptr i8, i8* %7, i64 116, !dbg !4769
  %8 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4770
  %pregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %8, i32 0, i32 4, !dbg !4771
  store i8* %add.ptr2, i8** %pregs, align 8, !dbg !4772
  %9 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4773
  %nregions = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %9, i32 0, i32 6, !dbg !4774
  store i64 5, i64* %nregions, align 8, !dbg !4775
  %10 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4776
  %pr_num = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 7, !dbg !4777
  store i64 5, i64* %pr_num, align 8, !dbg !4778
  %11 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4779
  %swseq_reg = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %11, i32 0, i32 10, !dbg !4780
  store i8 1, i8* %swseq_reg, align 2, !dbg !4781
  %12 = load i8, i8* @writeable, align 1, !dbg !4782
  %tobool = trunc i8 %12 to i1, !dbg !4782
  br i1 %tobool, label %if.then, label %if.end18, !dbg !4784

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4785
  %base3 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %13, i32 0, i32 3, !dbg !4787
  %14 = load i8*, i8** %base3, align 8, !dbg !4787
  %add.ptr4 = getelementptr i8, i8* %14, i64 252, !dbg !4788
  %call = call i32 @readl(i8* %add.ptr4) #5, !dbg !4789
  store i32 %call, i32* %val, align 4, !dbg !4790
  %15 = load i32, i32* %val, align 4, !dbg !4791
  %conv = zext i32 %15 to i64, !dbg !4791
  %and = and i64 %conv, 1, !dbg !4793
  %tobool5 = icmp ne i64 %and, 0, !dbg !4793
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !4794

if.then6:                                         ; preds = %if.then
  %16 = load i32, i32* %val, align 4, !dbg !4795
  %conv7 = zext i32 %16 to i64, !dbg !4795
  %or = or i64 %conv7, 1, !dbg !4795
  %conv8 = trunc i64 %or to i32, !dbg !4795
  store i32 %conv8, i32* %val, align 4, !dbg !4795
  %17 = load i32, i32* %val, align 4, !dbg !4797
  %18 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4798
  %base9 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %18, i32 0, i32 3, !dbg !4799
  %19 = load i8*, i8** %base9, align 8, !dbg !4799
  %add.ptr10 = getelementptr i8, i8* %19, i64 252, !dbg !4800
  call void @writel(i32 %17, i8* %add.ptr10) #5, !dbg !4801
  %20 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4802
  %base11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %20, i32 0, i32 3, !dbg !4803
  %21 = load i8*, i8** %base11, align 8, !dbg !4803
  %add.ptr12 = getelementptr i8, i8* %21, i64 252, !dbg !4804
  %call13 = call i32 @readl(i8* %add.ptr12) #5, !dbg !4805
  store i32 %call13, i32* %val, align 4, !dbg !4806
  br label %if.end, !dbg !4807

if.end:                                           ; preds = %if.then6, %if.then
  %22 = load i32, i32* %val, align 4, !dbg !4808
  %conv14 = zext i32 %22 to i64, !dbg !4808
  %and15 = and i64 %conv14, 1, !dbg !4809
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4810
  %lnot = xor i1 %tobool16, true, !dbg !4810
  %lnot17 = xor i1 %lnot, true, !dbg !4811
  %23 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4812
  %writeable = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 8, !dbg !4813
  %frombool = zext i1 %lnot17 to i8, !dbg !4814
  store i8 %frombool, i8* %writeable, align 8, !dbg !4814
  br label %if.end18, !dbg !4815

if.end18:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog, !dbg !4816

sw.bb19:                                          ; preds = %entry
  %24 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4817
  %base20 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %24, i32 0, i32 3, !dbg !4818
  %25 = load i8*, i8** %base20, align 8, !dbg !4818
  %add.ptr21 = getelementptr i8, i8* %25, i64 144, !dbg !4819
  %26 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4820
  %sregs22 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %26, i32 0, i32 5, !dbg !4821
  store i8* %add.ptr21, i8** %sregs22, align 8, !dbg !4822
  %27 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4823
  %base23 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %27, i32 0, i32 3, !dbg !4824
  %28 = load i8*, i8** %base23, align 8, !dbg !4824
  %add.ptr24 = getelementptr i8, i8* %28, i64 116, !dbg !4825
  %29 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4826
  %pregs25 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %29, i32 0, i32 4, !dbg !4827
  store i8* %add.ptr24, i8** %pregs25, align 8, !dbg !4828
  %30 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4829
  %nregions26 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %30, i32 0, i32 6, !dbg !4830
  store i64 5, i64* %nregions26, align 8, !dbg !4831
  %31 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4832
  %pr_num27 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %31, i32 0, i32 7, !dbg !4833
  store i64 5, i64* %pr_num27, align 8, !dbg !4834
  %32 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4835
  %swseq_reg28 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %32, i32 0, i32 10, !dbg !4836
  store i8 1, i8* %swseq_reg28, align 2, !dbg !4837
  br label %sw.epilog, !dbg !4838

sw.bb29:                                          ; preds = %entry
  %33 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4839
  %base30 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %33, i32 0, i32 3, !dbg !4840
  %34 = load i8*, i8** %base30, align 8, !dbg !4840
  %add.ptr31 = getelementptr i8, i8* %34, i64 160, !dbg !4841
  %35 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4842
  %sregs32 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %35, i32 0, i32 5, !dbg !4843
  store i8* %add.ptr31, i8** %sregs32, align 8, !dbg !4844
  %36 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4845
  %base33 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %36, i32 0, i32 3, !dbg !4846
  %37 = load i8*, i8** %base33, align 8, !dbg !4846
  %add.ptr34 = getelementptr i8, i8* %37, i64 132, !dbg !4847
  %38 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4848
  %pregs35 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %38, i32 0, i32 4, !dbg !4849
  store i8* %add.ptr34, i8** %pregs35, align 8, !dbg !4850
  %39 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4851
  %nregions36 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %39, i32 0, i32 6, !dbg !4852
  store i64 12, i64* %nregions36, align 8, !dbg !4853
  %40 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4854
  %pr_num37 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %40, i32 0, i32 7, !dbg !4855
  store i64 6, i64* %pr_num37, align 8, !dbg !4856
  %41 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4857
  %erase_64k = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %41, i32 0, i32 12, !dbg !4858
  store i8 1, i8* %erase_64k, align 4, !dbg !4859
  br label %sw.epilog, !dbg !4860

sw.bb38:                                          ; preds = %entry
  %42 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4861
  %sregs39 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %42, i32 0, i32 5, !dbg !4862
  store i8* null, i8** %sregs39, align 8, !dbg !4863
  %43 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4864
  %base40 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %43, i32 0, i32 3, !dbg !4865
  %44 = load i8*, i8** %base40, align 8, !dbg !4865
  %add.ptr41 = getelementptr i8, i8* %44, i64 132, !dbg !4866
  %45 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4867
  %pregs42 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %45, i32 0, i32 4, !dbg !4868
  store i8* %add.ptr41, i8** %pregs42, align 8, !dbg !4869
  %46 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4870
  %nregions43 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %46, i32 0, i32 6, !dbg !4871
  store i64 6, i64* %nregions43, align 8, !dbg !4872
  %47 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4873
  %pr_num44 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %47, i32 0, i32 7, !dbg !4874
  store i64 5, i64* %pr_num44, align 8, !dbg !4875
  br label %sw.epilog, !dbg !4876

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4877
  br label %return, !dbg !4877

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb29, %sw.bb19, %if.end18
  %48 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4878
  %base45 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %48, i32 0, i32 3, !dbg !4879
  %49 = load i8*, i8** %base45, align 8, !dbg !4879
  %add.ptr46 = getelementptr i8, i8* %49, i64 4, !dbg !4880
  %call47 = call i32 @readl(i8* %add.ptr46) #5, !dbg !4881
  store i32 %call47, i32* %val, align 4, !dbg !4882
  %50 = load i32, i32* %val, align 4, !dbg !4883
  %conv48 = zext i32 %50 to i64, !dbg !4883
  %and49 = and i64 %conv48, -2147483649, !dbg !4883
  %conv50 = trunc i64 %and49 to i32, !dbg !4883
  store i32 %conv50, i32* %val, align 4, !dbg !4883
  %51 = load i32, i32* %val, align 4, !dbg !4884
  %52 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4885
  %base51 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %52, i32 0, i32 3, !dbg !4886
  %53 = load i8*, i8** %base51, align 8, !dbg !4886
  %add.ptr52 = getelementptr i8, i8* %53, i64 4, !dbg !4887
  call void @writel(i32 %51, i8* %add.ptr52) #5, !dbg !4888
  %54 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4889
  %base53 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %54, i32 0, i32 3, !dbg !4890
  %55 = load i8*, i8** %base53, align 8, !dbg !4890
  %add.ptr54 = getelementptr i8, i8* %55, i64 196, !dbg !4891
  %call55 = call i32 @readl(i8* %add.ptr54) #5, !dbg !4892
  store i32 %call55, i32* %lvscc, align 4, !dbg !4893
  %56 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4894
  %base56 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %56, i32 0, i32 3, !dbg !4895
  %57 = load i8*, i8** %base56, align 8, !dbg !4895
  %add.ptr57 = getelementptr i8, i8* %57, i64 200, !dbg !4896
  %call58 = call i32 @readl(i8* %add.ptr57) #5, !dbg !4897
  store i32 %call58, i32* %uvscc, align 4, !dbg !4898
  %58 = load i32, i32* %lvscc, align 4, !dbg !4899
  %and59 = and i32 %58, 65280, !dbg !4901
  %tobool60 = icmp ne i32 %and59, 0, !dbg !4901
  br i1 %tobool60, label %lor.lhs.false, label %if.then63, !dbg !4902

lor.lhs.false:                                    ; preds = %sw.epilog
  %59 = load i32, i32* %uvscc, align 4, !dbg !4903
  %and61 = and i32 %59, 65280, !dbg !4904
  %tobool62 = icmp ne i32 %and61, 0, !dbg !4904
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !4905

if.then63:                                        ; preds = %lor.lhs.false, %sw.epilog
  %60 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4906
  %swseq_erase = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %60, i32 0, i32 11, !dbg !4907
  store i8 1, i8* %swseq_erase, align 1, !dbg !4908
  br label %if.end64, !dbg !4906

if.end64:                                         ; preds = %if.then63, %lor.lhs.false
  %61 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4909
  %info65 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %61, i32 0, i32 1, !dbg !4911
  %62 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info65, align 8, !dbg !4911
  %type66 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %62, i32 0, i32 0, !dbg !4912
  %63 = load i32, i32* %type66, align 4, !dbg !4912
  %cmp = icmp eq i32 %63, 3, !dbg !4913
  br i1 %cmp, label %land.lhs.true, label %if.end79, !dbg !4914

land.lhs.true:                                    ; preds = %if.end64
  %64 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4915
  %swseq_erase68 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %64, i32 0, i32 11, !dbg !4916
  %65 = load i8, i8* %swseq_erase68, align 1, !dbg !4916
  %tobool69 = trunc i8 %65 to i1, !dbg !4916
  br i1 %tobool69, label %if.end79, label %if.then70, !dbg !4917

if.then70:                                        ; preds = %land.lhs.true
  %66 = load i32, i32* %lvscc, align 4, !dbg !4918
  %and71 = and i32 %66, 65280, !dbg !4920
  %tobool72 = icmp ne i32 %and71, 0, !dbg !4920
  br i1 %tobool72, label %lor.lhs.false73, label %if.then76, !dbg !4921

lor.lhs.false73:                                  ; preds = %if.then70
  %67 = load i32, i32* %uvscc, align 4, !dbg !4922
  %and74 = and i32 %67, 65280, !dbg !4923
  %tobool75 = icmp ne i32 %and74, 0, !dbg !4923
  br i1 %tobool75, label %if.end78, label %if.then76, !dbg !4924

if.then76:                                        ; preds = %lor.lhs.false73, %if.then70
  %68 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4925
  %erase_64k77 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %68, i32 0, i32 12, !dbg !4926
  store i8 0, i8* %erase_64k77, align 4, !dbg !4927
  br label %if.end78, !dbg !4925

if.end78:                                         ; preds = %if.then76, %lor.lhs.false73
  br label %if.end79, !dbg !4928

if.end79:                                         ; preds = %if.end78, %land.lhs.true, %if.end64
  %69 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4929
  %sregs80 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %69, i32 0, i32 5, !dbg !4931
  %70 = load i8*, i8** %sregs80, align 8, !dbg !4931
  %cmp81 = icmp eq i8* %70, null, !dbg !4932
  br i1 %cmp81, label %land.lhs.true83, label %if.end92, !dbg !4933

land.lhs.true83:                                  ; preds = %if.end79
  %71 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4934
  %swseq_reg84 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %71, i32 0, i32 10, !dbg !4935
  %72 = load i8, i8* %swseq_reg84, align 2, !dbg !4935
  %tobool85 = trunc i8 %72 to i1, !dbg !4935
  br i1 %tobool85, label %if.then91, label %lor.lhs.false87, !dbg !4936

lor.lhs.false87:                                  ; preds = %land.lhs.true83
  %73 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4937
  %swseq_erase88 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %73, i32 0, i32 11, !dbg !4938
  %74 = load i8, i8* %swseq_erase88, align 1, !dbg !4938
  %tobool89 = trunc i8 %74 to i1, !dbg !4938
  br i1 %tobool89, label %if.then91, label %if.end92, !dbg !4939

if.then91:                                        ; preds = %lor.lhs.false87, %land.lhs.true83
  %75 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4940
  %dev = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %75, i32 0, i32 0, !dbg !4940
  %76 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4940
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4940
  store i32 -22, i32* %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

if.end92:                                         ; preds = %lor.lhs.false87, %if.end79
  %77 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4943
  %swseq_reg93 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %77, i32 0, i32 10, !dbg !4945
  %78 = load i8, i8* %swseq_reg93, align 2, !dbg !4945
  %tobool94 = trunc i8 %78 to i1, !dbg !4945
  br i1 %tobool94, label %if.then95, label %if.end104, !dbg !4946

if.then95:                                        ; preds = %if.end92
  %79 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4947
  %sregs96 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %79, i32 0, i32 5, !dbg !4949
  %80 = load i8*, i8** %sregs96, align 8, !dbg !4949
  %add.ptr97 = getelementptr i8, i8* %80, i64 0, !dbg !4950
  %call98 = call i32 @readl(i8* %add.ptr97) #5, !dbg !4951
  store i32 %call98, i32* %val, align 4, !dbg !4952
  %81 = load i32, i32* %val, align 4, !dbg !4953
  %conv99 = zext i32 %81 to i64, !dbg !4953
  %and100 = and i64 %conv99, -8388609, !dbg !4953
  %conv101 = trunc i64 %and100 to i32, !dbg !4953
  store i32 %conv101, i32* %val, align 4, !dbg !4953
  %82 = load i32, i32* %val, align 4, !dbg !4954
  %83 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4955
  %sregs102 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %83, i32 0, i32 5, !dbg !4956
  %84 = load i8*, i8** %sregs102, align 8, !dbg !4956
  %add.ptr103 = getelementptr i8, i8* %84, i64 0, !dbg !4957
  call void @writel(i32 %82, i8* %add.ptr103) #5, !dbg !4958
  br label %if.end104, !dbg !4959

if.end104:                                        ; preds = %if.then95, %if.end92
  %85 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4960
  %base105 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %85, i32 0, i32 3, !dbg !4961
  %86 = load i8*, i8** %base105, align 8, !dbg !4961
  %add.ptr106 = getelementptr i8, i8* %86, i64 4, !dbg !4962
  %call107 = call i32 @readl(i8* %add.ptr106) #5, !dbg !4963
  store i32 %call107, i32* %val, align 4, !dbg !4964
  %87 = load i32, i32* %val, align 4, !dbg !4965
  %conv108 = zext i32 %87 to i64, !dbg !4965
  %and109 = and i64 %conv108, 32768, !dbg !4966
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4967
  %lnot111 = xor i1 %tobool110, true, !dbg !4967
  %lnot112 = xor i1 %lnot111, true, !dbg !4968
  %88 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4969
  %locked = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %88, i32 0, i32 9, !dbg !4970
  %frombool113 = zext i1 %lnot112 to i8, !dbg !4971
  store i8 %frombool113, i8* %locked, align 1, !dbg !4971
  %89 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4972
  %locked114 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %89, i32 0, i32 9, !dbg !4974
  %90 = load i8, i8* %locked114, align 1, !dbg !4974
  %tobool115 = trunc i8 %90 to i1, !dbg !4974
  br i1 %tobool115, label %land.lhs.true117, label %if.end142, !dbg !4975

land.lhs.true117:                                 ; preds = %if.end104
  %91 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4976
  %sregs118 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %91, i32 0, i32 5, !dbg !4977
  %92 = load i8*, i8** %sregs118, align 8, !dbg !4977
  %tobool119 = icmp ne i8* %92, null, !dbg !4976
  br i1 %tobool119, label %if.then120, label %if.end142, !dbg !4978

if.then120:                                       ; preds = %land.lhs.true117
  %93 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4979
  %sregs121 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %93, i32 0, i32 5, !dbg !4981
  %94 = load i8*, i8** %sregs121, align 8, !dbg !4981
  %add.ptr122 = getelementptr i8, i8* %94, i64 8, !dbg !4982
  %call123 = call i32 @readl(i8* %add.ptr122) #5, !dbg !4983
  store i32 %call123, i32* %opmenu0, align 4, !dbg !4984
  %95 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !4985
  %sregs124 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %95, i32 0, i32 5, !dbg !4986
  %96 = load i8*, i8** %sregs124, align 8, !dbg !4986
  %add.ptr125 = getelementptr i8, i8* %96, i64 12, !dbg !4987
  %call126 = call i32 @readl(i8* %add.ptr125) #5, !dbg !4988
  store i32 %call126, i32* %opmenu1, align 4, !dbg !4989
  %97 = load i32, i32* %opmenu0, align 4, !dbg !4990
  %tobool127 = icmp ne i32 %97, 0, !dbg !4990
  br i1 %tobool127, label %land.lhs.true128, label %if.end141, !dbg !4992

land.lhs.true128:                                 ; preds = %if.then120
  %98 = load i32, i32* %opmenu1, align 4, !dbg !4993
  %tobool129 = icmp ne i32 %98, 0, !dbg !4993
  br i1 %tobool129, label %if.then130, label %if.end141, !dbg !4994

if.then130:                                       ; preds = %land.lhs.true128
  store i32 0, i32* %i, align 4, !dbg !4995
  br label %for.cond, !dbg !4998

for.cond:                                         ; preds = %for.inc, %if.then130
  %99 = load i32, i32* %i, align 4, !dbg !4999
  %conv131 = sext i32 %99 to i64, !dbg !4999
  %cmp132 = icmp ult i64 %conv131, 4, !dbg !5001
  br i1 %cmp132, label %for.body, label %for.end, !dbg !5002

for.body:                                         ; preds = %for.cond
  %100 = load i32, i32* %opmenu0, align 4, !dbg !5003
  %101 = load i32, i32* %i, align 4, !dbg !5005
  %mul = mul i32 %101, 8, !dbg !5006
  %shr = lshr i32 %100, %mul, !dbg !5007
  %conv134 = trunc i32 %shr to i8, !dbg !5003
  %102 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5008
  %opcodes = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %102, i32 0, i32 14, !dbg !5009
  %103 = load i32, i32* %i, align 4, !dbg !5010
  %idxprom = sext i32 %103 to i64, !dbg !5008
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %opcodes, i64 0, i64 %idxprom, !dbg !5008
  store i8 %conv134, i8* %arrayidx, align 1, !dbg !5011
  %104 = load i32, i32* %opmenu1, align 4, !dbg !5012
  %105 = load i32, i32* %i, align 4, !dbg !5013
  %mul135 = mul i32 %105, 8, !dbg !5014
  %shr136 = lshr i32 %104, %mul135, !dbg !5015
  %conv137 = trunc i32 %shr136 to i8, !dbg !5012
  %106 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5016
  %opcodes138 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %106, i32 0, i32 14, !dbg !5017
  %107 = load i32, i32* %i, align 4, !dbg !5018
  %add = add i32 %107, 4, !dbg !5019
  %idxprom139 = sext i32 %add to i64, !dbg !5016
  %arrayidx140 = getelementptr [8 x i8], [8 x i8]* %opcodes138, i64 0, i64 %idxprom139, !dbg !5016
  store i8 %conv137, i8* %arrayidx140, align 1, !dbg !5020
  br label %for.inc, !dbg !5021

for.inc:                                          ; preds = %for.body
  %108 = load i32, i32* %i, align 4, !dbg !5022
  %inc = add i32 %108, 1, !dbg !5022
  store i32 %inc, i32* %i, align 4, !dbg !5022
  br label %for.cond, !dbg !5023, !llvm.loop !5024

for.end:                                          ; preds = %for.cond
  br label %if.end141, !dbg !5026

if.end141:                                        ; preds = %for.end, %land.lhs.true128, %if.then120
  br label %if.end142, !dbg !5027

if.end142:                                        ; preds = %if.end141, %land.lhs.true117, %if.end104
  %109 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5028
  call void @intel_spi_dump_regs(%struct.intel_spi* %109) #5, !dbg !5029
  store i32 0, i32* %retval, align 4, !dbg !5030
  br label %return, !dbg !5030

return:                                           ; preds = %if.end142, %if.then91, %sw.default
  %110 = load i32, i32* %retval, align 4, !dbg !5031
  ret i32 %110, !dbg !5031
}

; Function Attrs: noredzone
declare dso_local i32 @spi_nor_scan(%struct.spi_nor*, i8*, %struct.spi_nor_hwcaps*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_spi_fill_partition(%struct.intel_spi* %ispi, %struct.mtd_partition* %part) #0 !dbg !5032 {
entry:
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %part.addr = alloca %struct.mtd_partition*, align 8
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  %region = alloca i32, align 4
  %base = alloca i32, align 4
  %limit = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.mtd_partition* %part, %struct.mtd_partition** %part.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %part.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata i64* %end, metadata !5040, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5042, metadata !DIExpression()), !dbg !5043
  %0 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !5044
  %1 = bitcast %struct.mtd_partition* %0 to i8*, !dbg !5045
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 48, i1 false), !dbg !5045
  %2 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !5046
  %size = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %2, i32 0, i32 2, !dbg !5047
  store i64 4096, i64* %size, align 8, !dbg !5048
  %3 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !5049
  %name = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %3, i32 0, i32 0, !dbg !5050
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %name, align 8, !dbg !5051
  store i32 1, i32* %i, align 4, !dbg !5052
  br label %for.cond, !dbg !5054

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5055
  %conv = sext i32 %4 to i64, !dbg !5055
  %5 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5057
  %nregions = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %5, i32 0, i32 6, !dbg !5058
  %6 = load i64, i64* %nregions, align 8, !dbg !5058
  %cmp = icmp ult i64 %conv, %6, !dbg !5059
  br i1 %cmp, label %for.body, label %for.end, !dbg !5060

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %region, metadata !5061, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5064, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !5066, metadata !DIExpression()), !dbg !5067
  %7 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5068
  %base2 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %7, i32 0, i32 3, !dbg !5069
  %8 = load i8*, i8** %base2, align 8, !dbg !5069
  %9 = load i32, i32* %i, align 4, !dbg !5070
  %mul = mul i32 %9, 4, !dbg !5070
  %add = add i32 84, %mul, !dbg !5070
  %idx.ext = sext i32 %add to i64, !dbg !5071
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5071
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !5072
  store i32 %call, i32* %region, align 4, !dbg !5073
  %10 = load i32, i32* %region, align 4, !dbg !5074
  %and = and i32 %10, 16383, !dbg !5075
  store i32 %and, i32* %base, align 4, !dbg !5076
  %11 = load i32, i32* %region, align 4, !dbg !5077
  %and3 = and i32 %11, 1073676288, !dbg !5078
  %shr = lshr i32 %and3, 16, !dbg !5079
  store i32 %shr, i32* %limit, align 4, !dbg !5080
  %12 = load i32, i32* %base, align 4, !dbg !5081
  %13 = load i32, i32* %limit, align 4, !dbg !5083
  %cmp4 = icmp uge i32 %12, %13, !dbg !5084
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !5085

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, i32* %limit, align 4, !dbg !5086
  %cmp6 = icmp eq i32 %14, 0, !dbg !5087
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5088

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5089

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5090
  %16 = load i32, i32* %base, align 4, !dbg !5092
  %17 = load i32, i32* %limit, align 4, !dbg !5093
  %call8 = call zeroext i1 @intel_spi_is_protected(%struct.intel_spi* %15, i32 %16, i32 %17) #5, !dbg !5094
  br i1 %call8, label %if.then9, label %if.end10, !dbg !5095

if.then9:                                         ; preds = %if.end
  %18 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5096
  %writeable = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %18, i32 0, i32 8, !dbg !5097
  store i8 0, i8* %writeable, align 8, !dbg !5098
  br label %if.end10, !dbg !5096

if.end10:                                         ; preds = %if.then9, %if.end
  %19 = load i32, i32* %limit, align 4, !dbg !5099
  %shl = shl i32 %19, 12, !dbg !5100
  %add11 = add i32 %shl, 4096, !dbg !5101
  %conv12 = zext i32 %add11 to i64, !dbg !5102
  store i64 %conv12, i64* %end, align 8, !dbg !5103
  %20 = load i64, i64* %end, align 8, !dbg !5104
  %21 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !5106
  %size13 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %21, i32 0, i32 2, !dbg !5107
  %22 = load i64, i64* %size13, align 8, !dbg !5107
  %cmp14 = icmp ugt i64 %20, %22, !dbg !5108
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !5109

if.then16:                                        ; preds = %if.end10
  %23 = load i64, i64* %end, align 8, !dbg !5110
  %24 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !5111
  %size17 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %24, i32 0, i32 2, !dbg !5112
  store i64 %23, i64* %size17, align 8, !dbg !5113
  br label %if.end18, !dbg !5111

if.end18:                                         ; preds = %if.then16, %if.end10
  br label %for.inc, !dbg !5114

for.inc:                                          ; preds = %if.end18, %if.then
  %25 = load i32, i32* %i, align 4, !dbg !5115
  %inc = add i32 %25, 1, !dbg !5115
  store i32 %inc, i32* %i, align 4, !dbg !5115
  br label %for.cond, !dbg !5116, !llvm.loop !5117

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5119
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_parse_register(%struct.mtd_info*, i8**, %struct.mtd_part_parser_data*, %struct.mtd_partition*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_spi_remove(%struct.intel_spi* %ispi) #0 !dbg !5120 {
entry:
  %ispi.addr = alloca %struct.intel_spi*, align 8
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5123
  %nor = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %0, i32 0, i32 2, !dbg !5124
  %mtd = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %nor, i32 0, i32 0, !dbg !5125
  %call = call i32 @mtd_device_unregister(%struct.mtd_info* %mtd) #5, !dbg !5126
  ret i32 %call, !dbg !5127
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5128 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5137, metadata !DIExpression()), !dbg !5136
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5136
  %1 = bitcast i8* %0 to i32*, !dbg !5136
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !5136, !srcloc !5138
  store i32 %2, i32* %ret, align 4, !dbg !5136
  %3 = load i32, i32* %ret, align 4, !dbg !5136
  ret i32 %3, !dbg !5136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5139 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5145, metadata !DIExpression()), !dbg !5144
  %0 = load i32, i32* %val.addr, align 4, !dbg !5144
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5144
  %2 = bitcast i8* %1 to i32*, !dbg !5144
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !5144, !srcloc !5146
  ret void, !dbg !5144
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_spi_dump_regs(%struct.intel_spi* %ispi) #0 !dbg !5147 {
entry:
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  %base34 = alloca i32, align 4
  %limit = alloca i32, align 4
  %region = alloca i32, align 4
  %base53 = alloca i32, align 4
  %limit54 = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5156
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %0, i32 0, i32 3, !dbg !5157
  %1 = load i8*, i8** %base, align 8, !dbg !5157
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !5158
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !5159
  store i32 %call, i32* %value, align 4, !dbg !5160
  %2 = load i32, i32* %value, align 4, !dbg !5161
  %conv = zext i32 %2 to i64, !dbg !5161
  %and = and i64 %conv, 32768, !dbg !5163
  %tobool = icmp ne i64 %and, 0, !dbg !5163
  br i1 %tobool, label %if.then, label %if.end, !dbg !5164

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !5165

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !dbg !5166
  br label %for.cond, !dbg !5168

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !5169
  %cmp = icmp slt i32 %3, 16, !dbg !5171
  br i1 %cmp, label %for.body, label %for.end, !dbg !5172

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !5173

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !5174
  %inc = add i32 %4, 1, !dbg !5174
  store i32 %inc, i32* %i, align 4, !dbg !5174
  br label %for.cond, !dbg !5175, !llvm.loop !5176

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5178
  br label %for.cond2, !dbg !5180

for.cond2:                                        ; preds = %for.inc7, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !5181
  %conv3 = sext i32 %5 to i64, !dbg !5181
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5183
  %nregions = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %6, i32 0, i32 6, !dbg !5184
  %7 = load i64, i64* %nregions, align 8, !dbg !5184
  %cmp4 = icmp ult i64 %conv3, %7, !dbg !5185
  br i1 %cmp4, label %for.body6, label %for.end9, !dbg !5186

for.body6:                                        ; preds = %for.cond2
  br label %for.inc7, !dbg !5187

for.inc7:                                         ; preds = %for.body6
  %8 = load i32, i32* %i, align 4, !dbg !5188
  %inc8 = add i32 %8, 1, !dbg !5188
  store i32 %inc8, i32* %i, align 4, !dbg !5188
  br label %for.cond2, !dbg !5189, !llvm.loop !5190

for.end9:                                         ; preds = %for.cond2
  store i32 0, i32* %i, align 4, !dbg !5192
  br label %for.cond10, !dbg !5194

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %9 = load i32, i32* %i, align 4, !dbg !5195
  %conv11 = sext i32 %9 to i64, !dbg !5195
  %10 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5197
  %pr_num = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 7, !dbg !5198
  %11 = load i64, i64* %pr_num, align 8, !dbg !5198
  %cmp12 = icmp ult i64 %conv11, %11, !dbg !5199
  br i1 %cmp12, label %for.body14, label %for.end17, !dbg !5200

for.body14:                                       ; preds = %for.cond10
  br label %for.inc15, !dbg !5201

for.inc15:                                        ; preds = %for.body14
  %12 = load i32, i32* %i, align 4, !dbg !5202
  %inc16 = add i32 %12, 1, !dbg !5202
  store i32 %inc16, i32* %i, align 4, !dbg !5202
  br label %for.cond10, !dbg !5203, !llvm.loop !5204

for.end17:                                        ; preds = %for.cond10
  %13 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5206
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %13, i32 0, i32 5, !dbg !5208
  %14 = load i8*, i8** %sregs, align 8, !dbg !5208
  %tobool18 = icmp ne i8* %14, null, !dbg !5206
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !5209

if.then19:                                        ; preds = %for.end17
  %15 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5210
  %sregs20 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %15, i32 0, i32 5, !dbg !5212
  %16 = load i8*, i8** %sregs20, align 8, !dbg !5212
  %add.ptr21 = getelementptr i8, i8* %16, i64 0, !dbg !5213
  %call22 = call i32 @readl(i8* %add.ptr21) #5, !dbg !5214
  store i32 %call22, i32* %value, align 4, !dbg !5215
  br label %if.end23, !dbg !5216

if.end23:                                         ; preds = %if.then19, %for.end17
  %17 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5217
  %info = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %17, i32 0, i32 1, !dbg !5219
  %18 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %info, align 8, !dbg !5219
  %type = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %18, i32 0, i32 0, !dbg !5220
  %19 = load i32, i32* %type, align 4, !dbg !5220
  %cmp24 = icmp eq i32 %19, 1, !dbg !5221
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5222

if.then26:                                        ; preds = %if.end23
  br label %if.end27, !dbg !5223

if.end27:                                         ; preds = %if.then26, %if.end23
  store i32 0, i32* %i, align 4, !dbg !5224
  br label %for.cond28, !dbg !5226

for.cond28:                                       ; preds = %for.inc44, %if.end27
  %20 = load i32, i32* %i, align 4, !dbg !5227
  %conv29 = sext i32 %20 to i64, !dbg !5227
  %21 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5229
  %pr_num30 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %21, i32 0, i32 7, !dbg !5230
  %22 = load i64, i64* %pr_num30, align 8, !dbg !5230
  %cmp31 = icmp ult i64 %conv29, %22, !dbg !5231
  br i1 %cmp31, label %for.body33, label %for.end46, !dbg !5232

for.body33:                                       ; preds = %for.cond28
  call void @llvm.dbg.declare(metadata i32* %base34, metadata !5233, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !5236, metadata !DIExpression()), !dbg !5237
  %23 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5238
  %pregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 4, !dbg !5239
  %24 = load i8*, i8** %pregs, align 8, !dbg !5239
  %25 = load i32, i32* %i, align 4, !dbg !5240
  %mul = mul i32 %25, 4, !dbg !5240
  %idx.ext = sext i32 %mul to i64, !dbg !5241
  %add.ptr35 = getelementptr i8, i8* %24, i64 %idx.ext, !dbg !5241
  %call36 = call i32 @readl(i8* %add.ptr35) #5, !dbg !5242
  store i32 %call36, i32* %value, align 4, !dbg !5243
  %26 = load i32, i32* %value, align 4, !dbg !5244
  %conv37 = zext i32 %26 to i64, !dbg !5244
  %and38 = and i64 %conv37, 2147516416, !dbg !5246
  %tobool39 = icmp ne i64 %and38, 0, !dbg !5246
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !5247

if.then40:                                        ; preds = %for.body33
  br label %for.inc44, !dbg !5248

if.end41:                                         ; preds = %for.body33
  %27 = load i32, i32* %value, align 4, !dbg !5249
  %and42 = and i32 %27, 1073676288, !dbg !5250
  %shr = lshr i32 %and42, 16, !dbg !5251
  store i32 %shr, i32* %limit, align 4, !dbg !5252
  %28 = load i32, i32* %value, align 4, !dbg !5253
  %and43 = and i32 %28, 16383, !dbg !5254
  store i32 %and43, i32* %base34, align 4, !dbg !5255
  br label %for.inc44, !dbg !5256

for.inc44:                                        ; preds = %if.end41, %if.then40
  %29 = load i32, i32* %i, align 4, !dbg !5257
  %inc45 = add i32 %29, 1, !dbg !5257
  store i32 %inc45, i32* %i, align 4, !dbg !5257
  br label %for.cond28, !dbg !5258, !llvm.loop !5259

for.end46:                                        ; preds = %for.cond28
  store i32 0, i32* %i, align 4, !dbg !5261
  br label %for.cond47, !dbg !5263

for.cond47:                                       ; preds = %for.inc71, %for.end46
  %30 = load i32, i32* %i, align 4, !dbg !5264
  %conv48 = sext i32 %30 to i64, !dbg !5264
  %31 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5266
  %nregions49 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %31, i32 0, i32 6, !dbg !5267
  %32 = load i64, i64* %nregions49, align 8, !dbg !5267
  %cmp50 = icmp ult i64 %conv48, %32, !dbg !5268
  br i1 %cmp50, label %for.body52, label %for.end73, !dbg !5269

for.body52:                                       ; preds = %for.cond47
  call void @llvm.dbg.declare(metadata i32* %region, metadata !5270, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.declare(metadata i32* %base53, metadata !5273, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.declare(metadata i32* %limit54, metadata !5275, metadata !DIExpression()), !dbg !5276
  %33 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5277
  %base55 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %33, i32 0, i32 3, !dbg !5278
  %34 = load i8*, i8** %base55, align 8, !dbg !5278
  %35 = load i32, i32* %i, align 4, !dbg !5279
  %mul56 = mul i32 %35, 4, !dbg !5279
  %add = add i32 84, %mul56, !dbg !5279
  %idx.ext57 = sext i32 %add to i64, !dbg !5280
  %add.ptr58 = getelementptr i8, i8* %34, i64 %idx.ext57, !dbg !5280
  %call59 = call i32 @readl(i8* %add.ptr58) #5, !dbg !5281
  store i32 %call59, i32* %region, align 4, !dbg !5282
  %36 = load i32, i32* %region, align 4, !dbg !5283
  %and60 = and i32 %36, 16383, !dbg !5284
  store i32 %and60, i32* %base53, align 4, !dbg !5285
  %37 = load i32, i32* %region, align 4, !dbg !5286
  %and61 = and i32 %37, 1073676288, !dbg !5287
  %shr62 = lshr i32 %and61, 16, !dbg !5288
  store i32 %shr62, i32* %limit54, align 4, !dbg !5289
  %38 = load i32, i32* %base53, align 4, !dbg !5290
  %39 = load i32, i32* %limit54, align 4, !dbg !5292
  %cmp63 = icmp uge i32 %38, %39, !dbg !5293
  br i1 %cmp63, label %if.then69, label %lor.lhs.false, !dbg !5294

lor.lhs.false:                                    ; preds = %for.body52
  %40 = load i32, i32* %i, align 4, !dbg !5295
  %cmp65 = icmp sgt i32 %40, 0, !dbg !5296
  br i1 %cmp65, label %land.lhs.true, label %if.else, !dbg !5297

land.lhs.true:                                    ; preds = %lor.lhs.false
  %41 = load i32, i32* %limit54, align 4, !dbg !5298
  %cmp67 = icmp eq i32 %41, 0, !dbg !5299
  br i1 %cmp67, label %if.then69, label %if.else, !dbg !5300

if.then69:                                        ; preds = %land.lhs.true, %for.body52
  br label %if.end70, !dbg !5301

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then69
  br label %for.inc71, !dbg !5302

for.inc71:                                        ; preds = %if.end70
  %42 = load i32, i32* %i, align 4, !dbg !5303
  %inc72 = add i32 %42, 1, !dbg !5303
  store i32 %inc72, i32* %i, align 4, !dbg !5303
  br label %for.cond47, !dbg !5304, !llvm.loop !5305

for.end73:                                        ; preds = %for.cond47
  ret void, !dbg !5307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_read_reg(%struct.spi_nor* %nor, i8 zeroext %opcode, i8* %buf, i64 %len) #0 !dbg !5308 {
entry:
  %retval = alloca i32, align 4
  %nor.addr = alloca %struct.spi_nor*, align 8
  %opcode.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %ret = alloca i32, align 4
  store %struct.spi_nor* %nor, %struct.spi_nor** %nor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_nor** %nor.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  store i8 %opcode, i8* %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %opcode.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !5317, metadata !DIExpression()), !dbg !5318
  %0 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5319
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %0, i32 0, i32 22, !dbg !5320
  %1 = load i8*, i8** %priv, align 8, !dbg !5320
  %2 = bitcast i8* %1 to %struct.intel_spi*, !dbg !5319
  store %struct.intel_spi* %2, %struct.intel_spi** %ispi, align 8, !dbg !5318
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5321, metadata !DIExpression()), !dbg !5322
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5323
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 3, !dbg !5324
  %4 = load i8*, i8** %base, align 8, !dbg !5324
  %add.ptr = getelementptr i8, i8* %4, i64 8, !dbg !5325
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !5326
  %5 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5327
  %swseq_reg = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %5, i32 0, i32 10, !dbg !5329
  %6 = load i8, i8* %swseq_reg, align 2, !dbg !5329
  %tobool = trunc i8 %6 to i1, !dbg !5329
  br i1 %tobool, label %if.then, label %if.else, !dbg !5330

if.then:                                          ; preds = %entry
  %7 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5331
  %8 = load i8, i8* %opcode.addr, align 1, !dbg !5332
  %9 = load i64, i64* %len.addr, align 8, !dbg !5333
  %call = call i32 @intel_spi_sw_cycle(%struct.intel_spi* %7, i8 zeroext %8, i64 %9, i32 0) #5, !dbg !5334
  store i32 %call, i32* %ret, align 4, !dbg !5335
  br label %if.end, !dbg !5336

if.else:                                          ; preds = %entry
  %10 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5337
  %11 = load i8, i8* %opcode.addr, align 1, !dbg !5338
  %12 = load i64, i64* %len.addr, align 8, !dbg !5339
  %call1 = call i32 @intel_spi_hw_cycle(%struct.intel_spi* %10, i8 zeroext %11, i64 %12) #5, !dbg !5340
  store i32 %call1, i32* %ret, align 4, !dbg !5341
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %ret, align 4, !dbg !5342
  %tobool2 = icmp ne i32 %13, 0, !dbg !5342
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5344

if.then3:                                         ; preds = %if.end
  %14 = load i32, i32* %ret, align 4, !dbg !5345
  store i32 %14, i32* %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end4:                                          ; preds = %if.end
  %15 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5347
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !5348
  %17 = load i64, i64* %len.addr, align 8, !dbg !5349
  %call5 = call i32 @intel_spi_read_block(%struct.intel_spi* %15, i8* %16, i64 %17) #5, !dbg !5350
  store i32 %call5, i32* %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

return:                                           ; preds = %if.end4, %if.then3
  %18 = load i32, i32* %retval, align 4, !dbg !5352
  ret i32 %18, !dbg !5352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_write_reg(%struct.spi_nor* %nor, i8 zeroext %opcode, i8* %buf, i64 %len) #0 !dbg !5353 {
entry:
  %retval = alloca i32, align 4
  %nor.addr = alloca %struct.spi_nor*, align 8
  %opcode.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %ret = alloca i32, align 4
  %preop = alloca i16, align 2
  store %struct.spi_nor* %nor, %struct.spi_nor** %nor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_nor** %nor.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store i8 %opcode, i8* %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %opcode.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !5362, metadata !DIExpression()), !dbg !5363
  %0 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5364
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %0, i32 0, i32 22, !dbg !5365
  %1 = load i8*, i8** %priv, align 8, !dbg !5365
  %2 = bitcast i8* %1 to %struct.intel_spi*, !dbg !5364
  store %struct.intel_spi* %2, %struct.intel_spi** %ispi, align 8, !dbg !5363
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5366, metadata !DIExpression()), !dbg !5367
  %3 = load i8, i8* %opcode.addr, align 1, !dbg !5368
  %conv = zext i8 %3 to i32, !dbg !5368
  %cmp = icmp eq i32 %conv, 6, !dbg !5370
  br i1 %cmp, label %if.then, label %if.end19, !dbg !5371

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i16* %preop, metadata !5372, metadata !DIExpression()), !dbg !5374
  %4 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5375
  %swseq_reg = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %4, i32 0, i32 10, !dbg !5377
  %5 = load i8, i8* %swseq_reg, align 2, !dbg !5377
  %tobool = trunc i8 %5 to i1, !dbg !5377
  br i1 %tobool, label %if.end, label %if.then2, !dbg !5378

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end:                                           ; preds = %if.then
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5380
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %6, i32 0, i32 5, !dbg !5381
  %7 = load i8*, i8** %sregs, align 8, !dbg !5381
  %add.ptr = getelementptr i8, i8* %7, i64 4, !dbg !5382
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5383
  store i16 %call, i16* %preop, align 2, !dbg !5384
  %8 = load i16, i16* %preop, align 2, !dbg !5385
  %conv3 = zext i16 %8 to i32, !dbg !5385
  %and = and i32 %conv3, 255, !dbg !5387
  %9 = load i8, i8* %opcode.addr, align 1, !dbg !5388
  %conv4 = zext i8 %9 to i32, !dbg !5388
  %cmp5 = icmp ne i32 %and, %conv4, !dbg !5389
  br i1 %cmp5, label %land.lhs.true, label %if.end18, !dbg !5390

land.lhs.true:                                    ; preds = %if.end
  %10 = load i16, i16* %preop, align 2, !dbg !5391
  %conv7 = zext i16 %10 to i32, !dbg !5391
  %shr = ashr i32 %conv7, 8, !dbg !5392
  %11 = load i8, i8* %opcode.addr, align 1, !dbg !5393
  %conv8 = zext i8 %11 to i32, !dbg !5393
  %cmp9 = icmp ne i32 %shr, %conv8, !dbg !5394
  br i1 %cmp9, label %if.then11, label %if.end18, !dbg !5395

if.then11:                                        ; preds = %land.lhs.true
  %12 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5396
  %locked = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %12, i32 0, i32 9, !dbg !5399
  %13 = load i8, i8* %locked, align 1, !dbg !5399
  %tobool12 = trunc i8 %13 to i1, !dbg !5399
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5400

if.then13:                                        ; preds = %if.then11
  store i32 -22, i32* %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

if.end14:                                         ; preds = %if.then11
  %14 = load i8, i8* %opcode.addr, align 1, !dbg !5402
  %conv15 = zext i8 %14 to i32, !dbg !5402
  %15 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5403
  %sregs16 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %15, i32 0, i32 5, !dbg !5404
  %16 = load i8*, i8** %sregs16, align 8, !dbg !5404
  %add.ptr17 = getelementptr i8, i8* %16, i64 4, !dbg !5405
  call void @writel(i32 %conv15, i8* %add.ptr17) #5, !dbg !5406
  br label %if.end18, !dbg !5407

if.end18:                                         ; preds = %if.end14, %land.lhs.true, %if.end
  %17 = load i8, i8* %opcode.addr, align 1, !dbg !5408
  %18 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5409
  %atomic_preopcode = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %18, i32 0, i32 13, !dbg !5410
  store i8 %17, i8* %atomic_preopcode, align 1, !dbg !5411
  store i32 0, i32* %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

if.end19:                                         ; preds = %entry
  %19 = load i8, i8* %opcode.addr, align 1, !dbg !5413
  %conv20 = zext i8 %19 to i32, !dbg !5413
  %cmp21 = icmp eq i32 %conv20, 4, !dbg !5415
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !5416

if.then23:                                        ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end24:                                         ; preds = %if.end19
  %20 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5418
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %20, i32 0, i32 3, !dbg !5419
  %21 = load i8*, i8** %base, align 8, !dbg !5419
  %add.ptr25 = getelementptr i8, i8* %21, i64 8, !dbg !5420
  call void @writel(i32 0, i8* %add.ptr25) #5, !dbg !5421
  %22 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5422
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !5423
  %24 = load i64, i64* %len.addr, align 8, !dbg !5424
  %call26 = call i32 @intel_spi_write_block(%struct.intel_spi* %22, i8* %23, i64 %24) #5, !dbg !5425
  store i32 %call26, i32* %ret, align 4, !dbg !5426
  %25 = load i32, i32* %ret, align 4, !dbg !5427
  %tobool27 = icmp ne i32 %25, 0, !dbg !5427
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5429

if.then28:                                        ; preds = %if.end24
  %26 = load i32, i32* %ret, align 4, !dbg !5430
  store i32 %26, i32* %retval, align 4, !dbg !5431
  br label %return, !dbg !5431

if.end29:                                         ; preds = %if.end24
  %27 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5432
  %swseq_reg30 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %27, i32 0, i32 10, !dbg !5434
  %28 = load i8, i8* %swseq_reg30, align 2, !dbg !5434
  %tobool31 = trunc i8 %28 to i1, !dbg !5434
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5435

if.then32:                                        ; preds = %if.end29
  %29 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5436
  %30 = load i8, i8* %opcode.addr, align 1, !dbg !5437
  %31 = load i64, i64* %len.addr, align 8, !dbg !5438
  %call33 = call i32 @intel_spi_sw_cycle(%struct.intel_spi* %29, i8 zeroext %30, i64 %31, i32 1) #5, !dbg !5439
  store i32 %call33, i32* %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end34:                                         ; preds = %if.end29
  %32 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5441
  %33 = load i8, i8* %opcode.addr, align 1, !dbg !5442
  %34 = load i64, i64* %len.addr, align 8, !dbg !5443
  %call35 = call i32 @intel_spi_hw_cycle(%struct.intel_spi* %32, i8 zeroext %33, i64 %34) #5, !dbg !5444
  store i32 %call35, i32* %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

return:                                           ; preds = %if.end34, %if.then32, %if.then28, %if.then23, %if.end18, %if.then13, %if.then2
  %35 = load i32, i32* %retval, align 4, !dbg !5446
  ret i32 %35, !dbg !5446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @intel_spi_read(%struct.spi_nor* %nor, i64 %from, i64 %len, i8* %read_buf) #0 !dbg !5447 {
entry:
  %retval = alloca i64, align 8
  %nor.addr = alloca %struct.spi_nor*, align 8
  %from.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %read_buf.addr = alloca i8*, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %block_size = alloca i64, align 8
  %retlen = alloca i64, align 8
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x245 = alloca i64, align 8
  %__UNIQUE_ID___y246 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %__UNIQUE_ID___x247 = alloca i64, align 8
  %__UNIQUE_ID___y248 = alloca i64, align 8
  %tmp31 = alloca i64, align 8
  store %struct.spi_nor* %nor, %struct.spi_nor** %nor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_nor** %nor.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i64 %from, i64* %from.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %from.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i8* %read_buf, i8** %read_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %read_buf.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5460
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %0, i32 0, i32 22, !dbg !5461
  %1 = load i8*, i8** %priv, align 8, !dbg !5461
  %2 = bitcast i8* %1 to %struct.intel_spi*, !dbg !5460
  store %struct.intel_spi* %2, %struct.intel_spi** %ispi, align 8, !dbg !5459
  call void @llvm.dbg.declare(metadata i64* %block_size, metadata !5462, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.declare(metadata i64* %retlen, metadata !5464, metadata !DIExpression()), !dbg !5465
  store i64 0, i64* %retlen, align 8, !dbg !5465
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5470, metadata !DIExpression()), !dbg !5471
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5472, metadata !DIExpression()), !dbg !5475
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5475
  %atomic_preopcode = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 13, !dbg !5475
  %4 = load i8, i8* %atomic_preopcode, align 1, !dbg !5475
  %tobool = icmp ne i8 %4, 0, !dbg !5475
  %lnot = xor i1 %tobool, true, !dbg !5475
  %lnot1 = xor i1 %lnot, true, !dbg !5475
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5475
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5475
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !5476
  %tobool2 = icmp ne i32 %5, 0, !dbg !5476
  %lnot3 = xor i1 %tobool2, true, !dbg !5476
  %lnot5 = xor i1 %lnot3, true, !dbg !5476
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5476
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5476
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5476
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5475

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5476

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5478

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5480

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !5478

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 649, i32 2307, i64 12) #7, !dbg !5482, !srcloc !5484
  br label %do.end10, !dbg !5482

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 244) #7, !dbg !5485, !srcloc !5487
  br label %do.body11, !dbg !5478

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !5488

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5478

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !5478

if.end:                                           ; preds = %do.end13, %entry
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5475
  %tobool14 = icmp ne i32 %6, 0, !dbg !5475
  %lnot15 = xor i1 %tobool14, true, !dbg !5475
  %lnot17 = xor i1 %lnot15, true, !dbg !5475
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5475
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !5475
  store i64 %conv19, i64* %tmp, align 8, !dbg !5476
  %7 = load i64, i64* %tmp, align 8, !dbg !5475
  %tobool20 = icmp ne i64 %7, 0, !dbg !5490
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5491

if.then21:                                        ; preds = %if.end
  %8 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5492
  %atomic_preopcode22 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %8, i32 0, i32 13, !dbg !5493
  store i8 0, i8* %atomic_preopcode22, align 1, !dbg !5494
  br label %if.end23, !dbg !5492

if.end23:                                         ; preds = %if.then21, %if.end
  %9 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5495
  %read_opcode = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 11, !dbg !5496
  %10 = load i8, i8* %read_opcode, align 2, !dbg !5496
  %conv24 = zext i8 %10 to i32, !dbg !5495
  switch i32 %conv24, label %sw.default [
    i32 3, label %sw.bb
    i32 11, label %sw.bb
    i32 19, label %sw.bb
    i32 12, label %sw.bb
  ], !dbg !5497

sw.bb:                                            ; preds = %if.end23, %if.end23, %if.end23, %if.end23
  br label %sw.epilog, !dbg !5498

sw.default:                                       ; preds = %if.end23
  store i64 -22, i64* %retval, align 8, !dbg !5500
  br label %return, !dbg !5500

sw.epilog:                                        ; preds = %sw.bb
  br label %while.cond, !dbg !5501

while.cond:                                       ; preds = %if.end80, %sw.epilog
  %11 = load i64, i64* %len.addr, align 8, !dbg !5502
  %cmp = icmp ugt i64 %11, 0, !dbg !5503
  br i1 %cmp, label %while.body, label %while.end, !dbg !5501

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x245, metadata !5504, metadata !DIExpression()), !dbg !5507
  %12 = load i64, i64* %len.addr, align 8, !dbg !5507
  store i64 %12, i64* %__UNIQUE_ID___x245, align 8, !dbg !5507
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y246, metadata !5508, metadata !DIExpression()), !dbg !5507
  store i64 64, i64* %__UNIQUE_ID___y246, align 8, !dbg !5507
  %13 = load i64, i64* %__UNIQUE_ID___x245, align 8, !dbg !5507
  %14 = load i64, i64* %__UNIQUE_ID___y246, align 8, !dbg !5507
  %cmp27 = icmp ult i64 %13, %14, !dbg !5507
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !5507

cond.true:                                        ; preds = %while.body
  %15 = load i64, i64* %__UNIQUE_ID___x245, align 8, !dbg !5507
  br label %cond.end, !dbg !5507

cond.false:                                       ; preds = %while.body
  %16 = load i64, i64* %__UNIQUE_ID___y246, align 8, !dbg !5507
  br label %cond.end, !dbg !5507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !5507
  store i64 %cond, i64* %tmp26, align 8, !dbg !5507
  %17 = load i64, i64* %tmp26, align 8, !dbg !5507
  store i64 %17, i64* %block_size, align 8, !dbg !5509
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x247, metadata !5510, metadata !DIExpression()), !dbg !5512
  %18 = load i64, i64* %from.addr, align 8, !dbg !5512
  %19 = load i64, i64* %block_size, align 8, !dbg !5512
  %add = add i64 %18, %19, !dbg !5512
  store i64 %add, i64* %__UNIQUE_ID___x247, align 8, !dbg !5512
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y248, metadata !5513, metadata !DIExpression()), !dbg !5512
  %20 = load i64, i64* %from.addr, align 8, !dbg !5512
  %add29 = add i64 %20, 1, !dbg !5512
  %sub = sub i64 %add29, 1, !dbg !5512
  %or = or i64 %sub, 4095, !dbg !5512
  %add30 = add i64 %or, 1, !dbg !5512
  store i64 %add30, i64* %__UNIQUE_ID___y248, align 8, !dbg !5512
  %21 = load i64, i64* %__UNIQUE_ID___x247, align 8, !dbg !5512
  %22 = load i64, i64* %__UNIQUE_ID___y248, align 8, !dbg !5512
  %cmp32 = icmp slt i64 %21, %22, !dbg !5512
  br i1 %cmp32, label %cond.true34, label %cond.false35, !dbg !5512

cond.true34:                                      ; preds = %cond.end
  %23 = load i64, i64* %__UNIQUE_ID___x247, align 8, !dbg !5512
  br label %cond.end36, !dbg !5512

cond.false35:                                     ; preds = %cond.end
  %24 = load i64, i64* %__UNIQUE_ID___y248, align 8, !dbg !5512
  br label %cond.end36, !dbg !5512

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i64 [ %23, %cond.true34 ], [ %24, %cond.false35 ], !dbg !5512
  store i64 %cond37, i64* %tmp31, align 8, !dbg !5512
  %25 = load i64, i64* %tmp31, align 8, !dbg !5512
  %26 = load i64, i64* %from.addr, align 8, !dbg !5514
  %sub38 = sub i64 %25, %26, !dbg !5515
  store i64 %sub38, i64* %block_size, align 8, !dbg !5516
  %27 = load i64, i64* %from.addr, align 8, !dbg !5517
  %conv39 = trunc i64 %27 to i32, !dbg !5517
  %28 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5518
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %28, i32 0, i32 3, !dbg !5519
  %29 = load i8*, i8** %base, align 8, !dbg !5519
  %add.ptr = getelementptr i8, i8* %29, i64 8, !dbg !5520
  call void @writel(i32 %conv39, i8* %add.ptr) #5, !dbg !5521
  %30 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5522
  %base40 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %30, i32 0, i32 3, !dbg !5523
  %31 = load i8*, i8** %base40, align 8, !dbg !5523
  %add.ptr41 = getelementptr i8, i8* %31, i64 4, !dbg !5524
  %call = call i32 @readl(i8* %add.ptr41) #5, !dbg !5525
  store i32 %call, i32* %val, align 4, !dbg !5526
  %32 = load i32, i32* %val, align 4, !dbg !5527
  %and = and i32 %32, -1058930689, !dbg !5527
  store i32 %and, i32* %val, align 4, !dbg !5527
  %33 = load i32, i32* %val, align 4, !dbg !5528
  %conv42 = zext i32 %33 to i64, !dbg !5528
  %or43 = or i64 %conv42, 7, !dbg !5528
  %conv44 = trunc i64 %or43 to i32, !dbg !5528
  store i32 %conv44, i32* %val, align 4, !dbg !5528
  %34 = load i64, i64* %block_size, align 8, !dbg !5529
  %sub45 = sub i64 %34, 1, !dbg !5530
  %shl = shl i64 %sub45, 24, !dbg !5531
  %35 = load i32, i32* %val, align 4, !dbg !5532
  %conv46 = zext i32 %35 to i64, !dbg !5532
  %or47 = or i64 %conv46, %shl, !dbg !5532
  %conv48 = trunc i64 %or47 to i32, !dbg !5532
  store i32 %conv48, i32* %val, align 4, !dbg !5532
  %36 = load i32, i32* %val, align 4, !dbg !5533
  store i32 %36, i32* %val, align 4, !dbg !5533
  %37 = load i32, i32* %val, align 4, !dbg !5534
  %conv49 = zext i32 %37 to i64, !dbg !5534
  %or50 = or i64 %conv49, 65536, !dbg !5534
  %conv51 = trunc i64 %or50 to i32, !dbg !5534
  store i32 %conv51, i32* %val, align 4, !dbg !5534
  %38 = load i32, i32* %val, align 4, !dbg !5535
  %39 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5536
  %base52 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %39, i32 0, i32 3, !dbg !5537
  %40 = load i8*, i8** %base52, align 8, !dbg !5537
  %add.ptr53 = getelementptr i8, i8* %40, i64 4, !dbg !5538
  call void @writel(i32 %38, i8* %add.ptr53) #5, !dbg !5539
  %41 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5540
  %call54 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %41) #5, !dbg !5541
  %conv55 = sext i32 %call54 to i64, !dbg !5541
  store i64 %conv55, i64* %ret, align 8, !dbg !5542
  %42 = load i64, i64* %ret, align 8, !dbg !5543
  %tobool56 = icmp ne i64 %42, 0, !dbg !5543
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !5545

if.then57:                                        ; preds = %cond.end36
  %43 = load i64, i64* %ret, align 8, !dbg !5546
  store i64 %43, i64* %retval, align 8, !dbg !5547
  br label %return, !dbg !5547

if.end58:                                         ; preds = %cond.end36
  %44 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5548
  %base59 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %44, i32 0, i32 3, !dbg !5549
  %45 = load i8*, i8** %base59, align 8, !dbg !5549
  %add.ptr60 = getelementptr i8, i8* %45, i64 4, !dbg !5550
  %call61 = call i32 @readl(i8* %add.ptr60) #5, !dbg !5551
  store i32 %call61, i32* %status, align 4, !dbg !5552
  %46 = load i32, i32* %status, align 4, !dbg !5553
  %conv62 = zext i32 %46 to i64, !dbg !5553
  %and63 = and i64 %conv62, 2, !dbg !5555
  %tobool64 = icmp ne i64 %and63, 0, !dbg !5555
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !5556

if.then65:                                        ; preds = %if.end58
  store i64 -5, i64* %ret, align 8, !dbg !5557
  br label %if.end71, !dbg !5558

if.else:                                          ; preds = %if.end58
  %47 = load i32, i32* %status, align 4, !dbg !5559
  %conv66 = zext i32 %47 to i64, !dbg !5559
  %and67 = and i64 %conv66, 4, !dbg !5561
  %tobool68 = icmp ne i64 %and67, 0, !dbg !5561
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !5562

if.then69:                                        ; preds = %if.else
  store i64 -13, i64* %ret, align 8, !dbg !5563
  br label %if.end70, !dbg !5564

if.end70:                                         ; preds = %if.then69, %if.else
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then65
  %48 = load i64, i64* %ret, align 8, !dbg !5565
  %cmp72 = icmp slt i64 %48, 0, !dbg !5567
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !5568

if.then74:                                        ; preds = %if.end71
  %49 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5569
  %dev = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %49, i32 0, i32 0, !dbg !5569
  %50 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5569
  %51 = load i64, i64* %from.addr, align 8, !dbg !5569
  %52 = load i32, i32* %status, align 4, !dbg !5569
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %51, i32 %52) #6, !dbg !5569
  %53 = load i64, i64* %ret, align 8, !dbg !5571
  store i64 %53, i64* %retval, align 8, !dbg !5572
  br label %return, !dbg !5572

if.end75:                                         ; preds = %if.end71
  %54 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5573
  %55 = load i8*, i8** %read_buf.addr, align 8, !dbg !5574
  %56 = load i64, i64* %block_size, align 8, !dbg !5575
  %call76 = call i32 @intel_spi_read_block(%struct.intel_spi* %54, i8* %55, i64 %56) #5, !dbg !5576
  %conv77 = sext i32 %call76 to i64, !dbg !5576
  store i64 %conv77, i64* %ret, align 8, !dbg !5577
  %57 = load i64, i64* %ret, align 8, !dbg !5578
  %tobool78 = icmp ne i64 %57, 0, !dbg !5578
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !5580

if.then79:                                        ; preds = %if.end75
  %58 = load i64, i64* %ret, align 8, !dbg !5581
  store i64 %58, i64* %retval, align 8, !dbg !5582
  br label %return, !dbg !5582

if.end80:                                         ; preds = %if.end75
  %59 = load i64, i64* %block_size, align 8, !dbg !5583
  %60 = load i64, i64* %len.addr, align 8, !dbg !5584
  %sub81 = sub i64 %60, %59, !dbg !5584
  store i64 %sub81, i64* %len.addr, align 8, !dbg !5584
  %61 = load i64, i64* %block_size, align 8, !dbg !5585
  %62 = load i64, i64* %from.addr, align 8, !dbg !5586
  %add82 = add i64 %62, %61, !dbg !5586
  store i64 %add82, i64* %from.addr, align 8, !dbg !5586
  %63 = load i64, i64* %block_size, align 8, !dbg !5587
  %64 = load i64, i64* %retlen, align 8, !dbg !5588
  %add83 = add i64 %64, %63, !dbg !5588
  store i64 %add83, i64* %retlen, align 8, !dbg !5588
  %65 = load i64, i64* %block_size, align 8, !dbg !5589
  %66 = load i8*, i8** %read_buf.addr, align 8, !dbg !5590
  %add.ptr84 = getelementptr i8, i8* %66, i64 %65, !dbg !5590
  store i8* %add.ptr84, i8** %read_buf.addr, align 8, !dbg !5590
  br label %while.cond, !dbg !5501, !llvm.loop !5591

while.end:                                        ; preds = %while.cond
  %67 = load i64, i64* %retlen, align 8, !dbg !5593
  store i64 %67, i64* %retval, align 8, !dbg !5594
  br label %return, !dbg !5594

return:                                           ; preds = %while.end, %if.then79, %if.then74, %if.then57, %sw.default
  %68 = load i64, i64* %retval, align 8, !dbg !5595
  ret i64 %68, !dbg !5595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @intel_spi_write(%struct.spi_nor* %nor, i64 %to, i64 %len, i8* %write_buf) #0 !dbg !5596 {
entry:
  %retval = alloca i64, align 8
  %nor.addr = alloca %struct.spi_nor*, align 8
  %to.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %write_buf.addr = alloca i8*, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %block_size = alloca i64, align 8
  %retlen = alloca i64, align 8
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i64, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x251 = alloca i64, align 8
  %__UNIQUE_ID___y252 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.spi_nor* %nor, %struct.spi_nor** %nor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_nor** %nor.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  store i64 %to, i64* %to.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %to.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  store i8* %write_buf, i8** %write_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %write_buf.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !5607, metadata !DIExpression()), !dbg !5608
  %0 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5609
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %0, i32 0, i32 22, !dbg !5610
  %1 = load i8*, i8** %priv, align 8, !dbg !5610
  %2 = bitcast i8* %1 to %struct.intel_spi*, !dbg !5609
  store %struct.intel_spi* %2, %struct.intel_spi** %ispi, align 8, !dbg !5608
  call void @llvm.dbg.declare(metadata i64* %block_size, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata i64* %retlen, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i64 0, i64* %retlen, align 8, !dbg !5614
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5619, metadata !DIExpression()), !dbg !5620
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5621
  %atomic_preopcode = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 13, !dbg !5622
  store i8 0, i8* %atomic_preopcode, align 1, !dbg !5623
  br label %while.cond, !dbg !5624

while.cond:                                       ; preds = %if.end51, %entry
  %4 = load i64, i64* %len.addr, align 8, !dbg !5625
  %cmp = icmp ugt i64 %4, 0, !dbg !5626
  br i1 %cmp, label %while.body, label %while.end, !dbg !5624

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x249, metadata !5627, metadata !DIExpression()), !dbg !5630
  %5 = load i64, i64* %len.addr, align 8, !dbg !5630
  store i64 %5, i64* %__UNIQUE_ID___x249, align 8, !dbg !5630
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y250, metadata !5631, metadata !DIExpression()), !dbg !5630
  store i64 64, i64* %__UNIQUE_ID___y250, align 8, !dbg !5630
  %6 = load i64, i64* %__UNIQUE_ID___x249, align 8, !dbg !5630
  %7 = load i64, i64* %__UNIQUE_ID___y250, align 8, !dbg !5630
  %cmp1 = icmp ult i64 %6, %7, !dbg !5630
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5630

cond.true:                                        ; preds = %while.body
  %8 = load i64, i64* %__UNIQUE_ID___x249, align 8, !dbg !5630
  br label %cond.end, !dbg !5630

cond.false:                                       ; preds = %while.body
  %9 = load i64, i64* %__UNIQUE_ID___y250, align 8, !dbg !5630
  br label %cond.end, !dbg !5630

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5630
  store i64 %cond, i64* %tmp, align 8, !dbg !5630
  %10 = load i64, i64* %tmp, align 8, !dbg !5630
  store i64 %10, i64* %block_size, align 8, !dbg !5632
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x251, metadata !5633, metadata !DIExpression()), !dbg !5635
  %11 = load i64, i64* %to.addr, align 8, !dbg !5635
  %12 = load i64, i64* %block_size, align 8, !dbg !5635
  %add = add i64 %11, %12, !dbg !5635
  store i64 %add, i64* %__UNIQUE_ID___x251, align 8, !dbg !5635
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y252, metadata !5636, metadata !DIExpression()), !dbg !5635
  %13 = load i64, i64* %to.addr, align 8, !dbg !5635
  %add2 = add i64 %13, 1, !dbg !5635
  %sub = sub i64 %add2, 1, !dbg !5635
  %or = or i64 %sub, 4095, !dbg !5635
  %add3 = add i64 %or, 1, !dbg !5635
  store i64 %add3, i64* %__UNIQUE_ID___y252, align 8, !dbg !5635
  %14 = load i64, i64* %__UNIQUE_ID___x251, align 8, !dbg !5635
  %15 = load i64, i64* %__UNIQUE_ID___y252, align 8, !dbg !5635
  %cmp5 = icmp slt i64 %14, %15, !dbg !5635
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !5635

cond.true6:                                       ; preds = %cond.end
  %16 = load i64, i64* %__UNIQUE_ID___x251, align 8, !dbg !5635
  br label %cond.end8, !dbg !5635

cond.false7:                                      ; preds = %cond.end
  %17 = load i64, i64* %__UNIQUE_ID___y252, align 8, !dbg !5635
  br label %cond.end8, !dbg !5635

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %16, %cond.true6 ], [ %17, %cond.false7 ], !dbg !5635
  store i64 %cond9, i64* %tmp4, align 8, !dbg !5635
  %18 = load i64, i64* %tmp4, align 8, !dbg !5635
  %19 = load i64, i64* %to.addr, align 8, !dbg !5637
  %sub10 = sub i64 %18, %19, !dbg !5638
  store i64 %sub10, i64* %block_size, align 8, !dbg !5639
  %20 = load i64, i64* %to.addr, align 8, !dbg !5640
  %conv = trunc i64 %20 to i32, !dbg !5640
  %21 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5641
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %21, i32 0, i32 3, !dbg !5642
  %22 = load i8*, i8** %base, align 8, !dbg !5642
  %add.ptr = getelementptr i8, i8* %22, i64 8, !dbg !5643
  call void @writel(i32 %conv, i8* %add.ptr) #5, !dbg !5644
  %23 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5645
  %base11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 3, !dbg !5646
  %24 = load i8*, i8** %base11, align 8, !dbg !5646
  %add.ptr12 = getelementptr i8, i8* %24, i64 4, !dbg !5647
  %call = call i32 @readl(i8* %add.ptr12) #5, !dbg !5648
  store i32 %call, i32* %val, align 4, !dbg !5649
  %25 = load i32, i32* %val, align 4, !dbg !5650
  %and = and i32 %25, -1058930689, !dbg !5650
  store i32 %and, i32* %val, align 4, !dbg !5650
  %26 = load i32, i32* %val, align 4, !dbg !5651
  %conv13 = zext i32 %26 to i64, !dbg !5651
  %or14 = or i64 %conv13, 7, !dbg !5651
  %conv15 = trunc i64 %or14 to i32, !dbg !5651
  store i32 %conv15, i32* %val, align 4, !dbg !5651
  %27 = load i64, i64* %block_size, align 8, !dbg !5652
  %sub16 = sub i64 %27, 1, !dbg !5653
  %shl = shl i64 %sub16, 24, !dbg !5654
  %28 = load i32, i32* %val, align 4, !dbg !5655
  %conv17 = zext i32 %28 to i64, !dbg !5655
  %or18 = or i64 %conv17, %shl, !dbg !5655
  %conv19 = trunc i64 %or18 to i32, !dbg !5655
  store i32 %conv19, i32* %val, align 4, !dbg !5655
  %29 = load i32, i32* %val, align 4, !dbg !5656
  %or20 = or i32 %29, 262144, !dbg !5656
  store i32 %or20, i32* %val, align 4, !dbg !5656
  %30 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5657
  %31 = load i8*, i8** %write_buf.addr, align 8, !dbg !5658
  %32 = load i64, i64* %block_size, align 8, !dbg !5659
  %call21 = call i32 @intel_spi_write_block(%struct.intel_spi* %30, i8* %31, i64 %32) #5, !dbg !5660
  %conv22 = sext i32 %call21 to i64, !dbg !5660
  store i64 %conv22, i64* %ret, align 8, !dbg !5661
  %33 = load i64, i64* %ret, align 8, !dbg !5662
  %tobool = icmp ne i64 %33, 0, !dbg !5662
  br i1 %tobool, label %if.then, label %if.end, !dbg !5664

if.then:                                          ; preds = %cond.end8
  %34 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5665
  %dev = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %34, i32 0, i32 0, !dbg !5665
  %35 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5665
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !5665
  %36 = load i64, i64* %ret, align 8, !dbg !5667
  store i64 %36, i64* %retval, align 8, !dbg !5668
  br label %return, !dbg !5668

if.end:                                           ; preds = %cond.end8
  %37 = load i32, i32* %val, align 4, !dbg !5669
  %conv23 = zext i32 %37 to i64, !dbg !5669
  %or24 = or i64 %conv23, 65536, !dbg !5669
  %conv25 = trunc i64 %or24 to i32, !dbg !5669
  store i32 %conv25, i32* %val, align 4, !dbg !5669
  %38 = load i32, i32* %val, align 4, !dbg !5670
  %39 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5671
  %base26 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %39, i32 0, i32 3, !dbg !5672
  %40 = load i8*, i8** %base26, align 8, !dbg !5672
  %add.ptr27 = getelementptr i8, i8* %40, i64 4, !dbg !5673
  call void @writel(i32 %38, i8* %add.ptr27) #5, !dbg !5674
  %41 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5675
  %call28 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %41) #5, !dbg !5676
  %conv29 = sext i32 %call28 to i64, !dbg !5676
  store i64 %conv29, i64* %ret, align 8, !dbg !5677
  %42 = load i64, i64* %ret, align 8, !dbg !5678
  %tobool30 = icmp ne i64 %42, 0, !dbg !5678
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !5680

if.then31:                                        ; preds = %if.end
  %43 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5681
  %dev32 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %43, i32 0, i32 0, !dbg !5681
  %44 = load %struct.device*, %struct.device** %dev32, align 8, !dbg !5681
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !5681
  %45 = load i64, i64* %ret, align 8, !dbg !5683
  store i64 %45, i64* %retval, align 8, !dbg !5684
  br label %return, !dbg !5684

if.end33:                                         ; preds = %if.end
  %46 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5685
  %base34 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %46, i32 0, i32 3, !dbg !5686
  %47 = load i8*, i8** %base34, align 8, !dbg !5686
  %add.ptr35 = getelementptr i8, i8* %47, i64 4, !dbg !5687
  %call36 = call i32 @readl(i8* %add.ptr35) #5, !dbg !5688
  store i32 %call36, i32* %status, align 4, !dbg !5689
  %48 = load i32, i32* %status, align 4, !dbg !5690
  %conv37 = zext i32 %48 to i64, !dbg !5690
  %and38 = and i64 %conv37, 2, !dbg !5692
  %tobool39 = icmp ne i64 %and38, 0, !dbg !5692
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !5693

if.then40:                                        ; preds = %if.end33
  store i64 -5, i64* %ret, align 8, !dbg !5694
  br label %if.end46, !dbg !5695

if.else:                                          ; preds = %if.end33
  %49 = load i32, i32* %status, align 4, !dbg !5696
  %conv41 = zext i32 %49 to i64, !dbg !5696
  %and42 = and i64 %conv41, 4, !dbg !5698
  %tobool43 = icmp ne i64 %and42, 0, !dbg !5698
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !5699

if.then44:                                        ; preds = %if.else
  store i64 -13, i64* %ret, align 8, !dbg !5700
  br label %if.end45, !dbg !5701

if.end45:                                         ; preds = %if.then44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then40
  %50 = load i64, i64* %ret, align 8, !dbg !5702
  %cmp47 = icmp slt i64 %50, 0, !dbg !5704
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !5705

if.then49:                                        ; preds = %if.end46
  %51 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5706
  %dev50 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %51, i32 0, i32 0, !dbg !5706
  %52 = load %struct.device*, %struct.device** %dev50, align 8, !dbg !5706
  %53 = load i64, i64* %to.addr, align 8, !dbg !5706
  %54 = load i32, i32* %status, align 4, !dbg !5706
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %53, i32 %54) #6, !dbg !5706
  %55 = load i64, i64* %ret, align 8, !dbg !5708
  store i64 %55, i64* %retval, align 8, !dbg !5709
  br label %return, !dbg !5709

if.end51:                                         ; preds = %if.end46
  %56 = load i64, i64* %block_size, align 8, !dbg !5710
  %57 = load i64, i64* %len.addr, align 8, !dbg !5711
  %sub52 = sub i64 %57, %56, !dbg !5711
  store i64 %sub52, i64* %len.addr, align 8, !dbg !5711
  %58 = load i64, i64* %block_size, align 8, !dbg !5712
  %59 = load i64, i64* %to.addr, align 8, !dbg !5713
  %add53 = add i64 %59, %58, !dbg !5713
  store i64 %add53, i64* %to.addr, align 8, !dbg !5713
  %60 = load i64, i64* %block_size, align 8, !dbg !5714
  %61 = load i64, i64* %retlen, align 8, !dbg !5715
  %add54 = add i64 %61, %60, !dbg !5715
  store i64 %add54, i64* %retlen, align 8, !dbg !5715
  %62 = load i64, i64* %block_size, align 8, !dbg !5716
  %63 = load i8*, i8** %write_buf.addr, align 8, !dbg !5717
  %add.ptr55 = getelementptr i8, i8* %63, i64 %62, !dbg !5717
  store i8* %add.ptr55, i8** %write_buf.addr, align 8, !dbg !5717
  br label %while.cond, !dbg !5624, !llvm.loop !5718

while.end:                                        ; preds = %while.cond
  %64 = load i64, i64* %retlen, align 8, !dbg !5720
  store i64 %64, i64* %retval, align 8, !dbg !5721
  br label %return, !dbg !5721

return:                                           ; preds = %while.end, %if.then49, %if.then31, %if.then
  %65 = load i64, i64* %retval, align 8, !dbg !5722
  ret i64 %65, !dbg !5722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_erase(%struct.spi_nor* %nor, i64 %offs) #0 !dbg !5723 {
entry:
  %retval = alloca i32, align 4
  %nor.addr = alloca %struct.spi_nor*, align 8
  %offs.addr = alloca i64, align 8
  %erase_size = alloca i64, align 8
  %len = alloca i64, align 8
  %ispi = alloca %struct.intel_spi*, align 8
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %cmd = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.spi_nor* %nor, %struct.spi_nor** %nor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_nor** %nor.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  call void @llvm.dbg.declare(metadata i64* %erase_size, metadata !5728, metadata !DIExpression()), !dbg !5729
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5732
  %mtd = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %0, i32 0, i32 0, !dbg !5733
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd, i32 0, i32 3, !dbg !5734
  %1 = load i32, i32* %erasesize, align 8, !dbg !5734
  %conv = zext i32 %1 to i64, !dbg !5732
  store i64 %conv, i64* %len, align 8, !dbg !5731
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi, metadata !5735, metadata !DIExpression()), !dbg !5736
  %2 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5737
  %priv = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %2, i32 0, i32 22, !dbg !5738
  %3 = load i8*, i8** %priv, align 8, !dbg !5738
  %4 = bitcast i8* %3 to %struct.intel_spi*, !dbg !5737
  store %struct.intel_spi* %4, %struct.intel_spi** %ispi, align 8, !dbg !5736
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5739, metadata !DIExpression()), !dbg !5740
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5741, metadata !DIExpression()), !dbg !5742
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5743, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5745, metadata !DIExpression()), !dbg !5746
  %5 = load i64, i64* %len, align 8, !dbg !5747
  %cmp = icmp uge i64 %5, 65536, !dbg !5749
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5750

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5751
  %erase_64k = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %6, i32 0, i32 12, !dbg !5752
  %7 = load i8, i8* %erase_64k, align 4, !dbg !5752
  %tobool = trunc i8 %7 to i1, !dbg !5752
  br i1 %tobool, label %if.then, label %if.else, !dbg !5753

if.then:                                          ; preds = %land.lhs.true
  store i32 524288, i32* %cmd, align 4, !dbg !5754
  store i64 65536, i64* %erase_size, align 8, !dbg !5756
  br label %if.end, !dbg !5757

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 393216, i32* %cmd, align 4, !dbg !5758
  store i64 4096, i64* %erase_size, align 8, !dbg !5760
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5761
  %swseq_erase = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %8, i32 0, i32 11, !dbg !5763
  %9 = load i8, i8* %swseq_erase, align 1, !dbg !5763
  %tobool3 = trunc i8 %9 to i1, !dbg !5763
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !5764

if.then4:                                         ; preds = %if.end
  br label %while.cond, !dbg !5765

while.cond:                                       ; preds = %if.end10, %if.then4
  %10 = load i64, i64* %len, align 8, !dbg !5767
  %cmp5 = icmp ugt i64 %10, 0, !dbg !5768
  br i1 %cmp5, label %while.body, label %while.end, !dbg !5765

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %offs.addr, align 8, !dbg !5769
  %conv7 = trunc i64 %11 to i32, !dbg !5769
  %12 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5771
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %12, i32 0, i32 3, !dbg !5772
  %13 = load i8*, i8** %base, align 8, !dbg !5772
  %add.ptr = getelementptr i8, i8* %13, i64 8, !dbg !5773
  call void @writel(i32 %conv7, i8* %add.ptr) #5, !dbg !5774
  %14 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5775
  %15 = load %struct.spi_nor*, %struct.spi_nor** %nor.addr, align 8, !dbg !5776
  %erase_opcode = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 10, !dbg !5777
  %16 = load i8, i8* %erase_opcode, align 1, !dbg !5777
  %call = call i32 @intel_spi_sw_cycle(%struct.intel_spi* %14, i8 zeroext %16, i64 0, i32 3) #5, !dbg !5778
  store i32 %call, i32* %ret, align 4, !dbg !5779
  %17 = load i32, i32* %ret, align 4, !dbg !5780
  %tobool8 = icmp ne i32 %17, 0, !dbg !5780
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5782

if.then9:                                         ; preds = %while.body
  %18 = load i32, i32* %ret, align 4, !dbg !5783
  store i32 %18, i32* %retval, align 4, !dbg !5784
  br label %return, !dbg !5784

if.end10:                                         ; preds = %while.body
  %19 = load i64, i64* %erase_size, align 8, !dbg !5785
  %20 = load i64, i64* %offs.addr, align 8, !dbg !5786
  %add = add i64 %20, %19, !dbg !5786
  store i64 %add, i64* %offs.addr, align 8, !dbg !5786
  %21 = load i64, i64* %erase_size, align 8, !dbg !5787
  %22 = load i64, i64* %len, align 8, !dbg !5788
  %sub = sub i64 %22, %21, !dbg !5788
  store i64 %sub, i64* %len, align 8, !dbg !5788
  br label %while.cond, !dbg !5765, !llvm.loop !5789

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !5791
  br label %return, !dbg !5791

if.end11:                                         ; preds = %if.end
  %23 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5792
  %atomic_preopcode = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 13, !dbg !5793
  store i8 0, i8* %atomic_preopcode, align 1, !dbg !5794
  br label %while.cond12, !dbg !5795

while.cond12:                                     ; preds = %if.end47, %if.end11
  %24 = load i64, i64* %len, align 8, !dbg !5796
  %cmp13 = icmp ugt i64 %24, 0, !dbg !5797
  br i1 %cmp13, label %while.body15, label %while.end50, !dbg !5795

while.body15:                                     ; preds = %while.cond12
  %25 = load i64, i64* %offs.addr, align 8, !dbg !5798
  %conv16 = trunc i64 %25 to i32, !dbg !5798
  %26 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5800
  %base17 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %26, i32 0, i32 3, !dbg !5801
  %27 = load i8*, i8** %base17, align 8, !dbg !5801
  %add.ptr18 = getelementptr i8, i8* %27, i64 8, !dbg !5802
  call void @writel(i32 %conv16, i8* %add.ptr18) #5, !dbg !5803
  %28 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5804
  %base19 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %28, i32 0, i32 3, !dbg !5805
  %29 = load i8*, i8** %base19, align 8, !dbg !5805
  %add.ptr20 = getelementptr i8, i8* %29, i64 4, !dbg !5806
  %call21 = call i32 @readl(i8* %add.ptr20) #5, !dbg !5807
  store i32 %call21, i32* %val, align 4, !dbg !5808
  %30 = load i32, i32* %val, align 4, !dbg !5809
  %and = and i32 %30, -1058930689, !dbg !5809
  store i32 %and, i32* %val, align 4, !dbg !5809
  %31 = load i32, i32* %val, align 4, !dbg !5810
  %conv22 = zext i32 %31 to i64, !dbg !5810
  %or = or i64 %conv22, 7, !dbg !5810
  %conv23 = trunc i64 %or to i32, !dbg !5810
  store i32 %conv23, i32* %val, align 4, !dbg !5810
  %32 = load i32, i32* %cmd, align 4, !dbg !5811
  %33 = load i32, i32* %val, align 4, !dbg !5812
  %or24 = or i32 %33, %32, !dbg !5812
  store i32 %or24, i32* %val, align 4, !dbg !5812
  %34 = load i32, i32* %val, align 4, !dbg !5813
  %conv25 = zext i32 %34 to i64, !dbg !5813
  %or26 = or i64 %conv25, 65536, !dbg !5813
  %conv27 = trunc i64 %or26 to i32, !dbg !5813
  store i32 %conv27, i32* %val, align 4, !dbg !5813
  %35 = load i32, i32* %val, align 4, !dbg !5814
  %36 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5815
  %base28 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %36, i32 0, i32 3, !dbg !5816
  %37 = load i8*, i8** %base28, align 8, !dbg !5816
  %add.ptr29 = getelementptr i8, i8* %37, i64 4, !dbg !5817
  call void @writel(i32 %35, i8* %add.ptr29) #5, !dbg !5818
  %38 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5819
  %call30 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %38) #5, !dbg !5820
  store i32 %call30, i32* %ret, align 4, !dbg !5821
  %39 = load i32, i32* %ret, align 4, !dbg !5822
  %tobool31 = icmp ne i32 %39, 0, !dbg !5822
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5824

if.then32:                                        ; preds = %while.body15
  %40 = load i32, i32* %ret, align 4, !dbg !5825
  store i32 %40, i32* %retval, align 4, !dbg !5826
  br label %return, !dbg !5826

if.end33:                                         ; preds = %while.body15
  %41 = load %struct.intel_spi*, %struct.intel_spi** %ispi, align 8, !dbg !5827
  %base34 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %41, i32 0, i32 3, !dbg !5828
  %42 = load i8*, i8** %base34, align 8, !dbg !5828
  %add.ptr35 = getelementptr i8, i8* %42, i64 4, !dbg !5829
  %call36 = call i32 @readl(i8* %add.ptr35) #5, !dbg !5830
  store i32 %call36, i32* %status, align 4, !dbg !5831
  %43 = load i32, i32* %status, align 4, !dbg !5832
  %conv37 = zext i32 %43 to i64, !dbg !5832
  %and38 = and i64 %conv37, 2, !dbg !5834
  %tobool39 = icmp ne i64 %and38, 0, !dbg !5834
  br i1 %tobool39, label %if.then40, label %if.else41, !dbg !5835

if.then40:                                        ; preds = %if.end33
  store i32 -5, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.else41:                                        ; preds = %if.end33
  %44 = load i32, i32* %status, align 4, !dbg !5837
  %conv42 = zext i32 %44 to i64, !dbg !5837
  %and43 = and i64 %conv42, 4, !dbg !5839
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5839
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5840

if.then45:                                        ; preds = %if.else41
  store i32 -13, i32* %retval, align 4, !dbg !5841
  br label %return, !dbg !5841

if.end46:                                         ; preds = %if.else41
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  %45 = load i64, i64* %erase_size, align 8, !dbg !5842
  %46 = load i64, i64* %offs.addr, align 8, !dbg !5843
  %add48 = add i64 %46, %45, !dbg !5843
  store i64 %add48, i64* %offs.addr, align 8, !dbg !5843
  %47 = load i64, i64* %erase_size, align 8, !dbg !5844
  %48 = load i64, i64* %len, align 8, !dbg !5845
  %sub49 = sub i64 %48, %47, !dbg !5845
  store i64 %sub49, i64* %len, align 8, !dbg !5845
  br label %while.cond12, !dbg !5795, !llvm.loop !5846

while.end50:                                      ; preds = %while.cond12
  store i32 0, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

return:                                           ; preds = %while.end50, %if.then45, %if.then40, %if.then32, %while.end, %if.then9
  %49 = load i32, i32* %retval, align 4, !dbg !5849
  ret i32 %49, !dbg !5849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_sw_cycle(%struct.intel_spi* %ispi, i8 zeroext %opcode, i64 %len, i32 %optype) #0 !dbg !5850 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %opcode.addr = alloca i8, align 1
  %len.addr = alloca i64, align 8
  %optype.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %atomic_preopcode = alloca i8, align 1
  %ret = alloca i32, align 4
  %preop = alloca i16, align 2
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  store i8 %opcode, i8* %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %opcode.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  store i32 %optype, i32* %optype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %optype.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5861, metadata !DIExpression()), !dbg !5862
  store i32 0, i32* %val, align 4, !dbg !5862
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5863, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata i8* %atomic_preopcode, metadata !5865, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5867, metadata !DIExpression()), !dbg !5868
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5869
  %1 = load i8, i8* %opcode.addr, align 1, !dbg !5870
  %2 = load i32, i32* %optype.addr, align 4, !dbg !5871
  %call = call i32 @intel_spi_opcode_index(%struct.intel_spi* %0, i8 zeroext %1, i32 %2) #5, !dbg !5872
  store i32 %call, i32* %ret, align 4, !dbg !5873
  %3 = load i32, i32* %ret, align 4, !dbg !5874
  %cmp = icmp slt i32 %3, 0, !dbg !5876
  br i1 %cmp, label %if.then, label %if.end, !dbg !5877

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5878
  store i32 %4, i32* %retval, align 4, !dbg !5879
  br label %return, !dbg !5879

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len.addr, align 8, !dbg !5880
  %cmp1 = icmp ugt i64 %5, 64, !dbg !5882
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5883

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5884
  br label %return, !dbg !5884

if.end3:                                          ; preds = %if.end
  %6 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5885
  %atomic_preopcode4 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %6, i32 0, i32 13, !dbg !5886
  %7 = load i8, i8* %atomic_preopcode4, align 1, !dbg !5886
  store i8 %7, i8* %atomic_preopcode, align 1, !dbg !5887
  %8 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5888
  %atomic_preopcode5 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %8, i32 0, i32 13, !dbg !5889
  store i8 0, i8* %atomic_preopcode5, align 1, !dbg !5890
  %9 = load i64, i64* %len.addr, align 8, !dbg !5891
  %cmp6 = icmp ugt i64 %9, 0, !dbg !5893
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5894

if.then7:                                         ; preds = %if.end3
  %10 = load i64, i64* %len.addr, align 8, !dbg !5895
  %sub = sub i64 %10, 1, !dbg !5896
  %shl = shl i64 %sub, 16, !dbg !5897
  %or = or i64 %shl, 4194304, !dbg !5898
  %conv = trunc i64 %or to i32, !dbg !5899
  store i32 %conv, i32* %val, align 4, !dbg !5900
  br label %if.end8, !dbg !5901

if.end8:                                          ; preds = %if.then7, %if.end3
  %11 = load i32, i32* %ret, align 4, !dbg !5902
  %shl9 = shl i32 %11, 12, !dbg !5903
  %12 = load i32, i32* %val, align 4, !dbg !5904
  %or10 = or i32 %12, %shl9, !dbg !5904
  store i32 %or10, i32* %val, align 4, !dbg !5904
  %13 = load i32, i32* %val, align 4, !dbg !5905
  %conv11 = zext i32 %13 to i64, !dbg !5905
  %or12 = or i64 %conv11, 12, !dbg !5905
  %conv13 = trunc i64 %or12 to i32, !dbg !5905
  store i32 %conv13, i32* %val, align 4, !dbg !5905
  %14 = load i32, i32* %val, align 4, !dbg !5906
  %conv14 = zext i32 %14 to i64, !dbg !5906
  %or15 = or i64 %conv14, 512, !dbg !5906
  %conv16 = trunc i64 %or15 to i32, !dbg !5906
  store i32 %conv16, i32* %val, align 4, !dbg !5906
  %15 = load i8, i8* %atomic_preopcode, align 1, !dbg !5907
  %tobool = icmp ne i8 %15, 0, !dbg !5907
  br i1 %tobool, label %if.then17, label %if.end38, !dbg !5909

if.then17:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i16* %preop, metadata !5910, metadata !DIExpression()), !dbg !5912
  %16 = load i32, i32* %optype.addr, align 4, !dbg !5913
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
  ], !dbg !5914

sw.bb:                                            ; preds = %if.then17, %if.then17
  %17 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5915
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %17, i32 0, i32 5, !dbg !5917
  %18 = load i8*, i8** %sregs, align 8, !dbg !5917
  %add.ptr = getelementptr i8, i8* %18, i64 4, !dbg !5918
  %call18 = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5919
  store i16 %call18, i16* %preop, align 2, !dbg !5920
  %19 = load i16, i16* %preop, align 2, !dbg !5921
  %conv19 = zext i16 %19 to i32, !dbg !5921
  %and = and i32 %conv19, 255, !dbg !5923
  %20 = load i8, i8* %atomic_preopcode, align 1, !dbg !5924
  %conv20 = zext i8 %20 to i32, !dbg !5924
  %cmp21 = icmp eq i32 %and, %conv20, !dbg !5925
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !5926

if.then23:                                        ; preds = %sw.bb
  br label %if.end34, !dbg !5926

if.else:                                          ; preds = %sw.bb
  %21 = load i16, i16* %preop, align 2, !dbg !5927
  %conv24 = zext i16 %21 to i32, !dbg !5927
  %shr = ashr i32 %conv24, 8, !dbg !5929
  %22 = load i8, i8* %atomic_preopcode, align 1, !dbg !5930
  %conv25 = zext i8 %22 to i32, !dbg !5930
  %cmp26 = icmp eq i32 %shr, %conv25, !dbg !5931
  br i1 %cmp26, label %if.then28, label %if.else32, !dbg !5932

if.then28:                                        ; preds = %if.else
  %23 = load i32, i32* %val, align 4, !dbg !5933
  %conv29 = zext i32 %23 to i64, !dbg !5933
  %or30 = or i64 %conv29, 2048, !dbg !5933
  %conv31 = trunc i64 %or30 to i32, !dbg !5933
  store i32 %conv31, i32* %val, align 4, !dbg !5933
  br label %if.end33, !dbg !5934

if.else32:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !5935
  br label %return, !dbg !5935

if.end33:                                         ; preds = %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  %24 = load i32, i32* %val, align 4, !dbg !5936
  %conv35 = zext i32 %24 to i64, !dbg !5936
  %or36 = or i64 %conv35, 1024, !dbg !5936
  %conv37 = trunc i64 %or36 to i32, !dbg !5936
  store i32 %conv37, i32* %val, align 4, !dbg !5936
  br label %sw.epilog, !dbg !5937

sw.default:                                       ; preds = %if.then17
  store i32 -22, i32* %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

sw.epilog:                                        ; preds = %if.end34
  br label %if.end38, !dbg !5939

if.end38:                                         ; preds = %sw.epilog, %if.end8
  %25 = load i32, i32* %val, align 4, !dbg !5940
  %26 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5941
  %sregs39 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %26, i32 0, i32 5, !dbg !5942
  %27 = load i8*, i8** %sregs39, align 8, !dbg !5942
  %add.ptr40 = getelementptr i8, i8* %27, i64 0, !dbg !5943
  call void @writel(i32 %25, i8* %add.ptr40) #5, !dbg !5944
  %28 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5945
  %call41 = call i32 @intel_spi_wait_sw_busy(%struct.intel_spi* %28) #5, !dbg !5946
  store i32 %call41, i32* %ret, align 4, !dbg !5947
  %29 = load i32, i32* %ret, align 4, !dbg !5948
  %tobool42 = icmp ne i32 %29, 0, !dbg !5948
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5950

if.then43:                                        ; preds = %if.end38
  %30 = load i32, i32* %ret, align 4, !dbg !5951
  store i32 %30, i32* %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

if.end44:                                         ; preds = %if.end38
  %31 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5953
  %sregs45 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %31, i32 0, i32 5, !dbg !5954
  %32 = load i8*, i8** %sregs45, align 8, !dbg !5954
  %add.ptr46 = getelementptr i8, i8* %32, i64 0, !dbg !5955
  %call47 = call i32 @readl(i8* %add.ptr46) #5, !dbg !5956
  store i32 %call47, i32* %status, align 4, !dbg !5957
  %33 = load i32, i32* %status, align 4, !dbg !5958
  %conv48 = zext i32 %33 to i64, !dbg !5958
  %and49 = and i64 %conv48, 8, !dbg !5960
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5960
  br i1 %tobool50, label %if.then51, label %if.else52, !dbg !5961

if.then51:                                        ; preds = %if.end44
  store i32 -5, i32* %retval, align 4, !dbg !5962
  br label %return, !dbg !5962

if.else52:                                        ; preds = %if.end44
  %34 = load i32, i32* %status, align 4, !dbg !5963
  %conv53 = zext i32 %34 to i64, !dbg !5963
  %and54 = and i64 %conv53, 16, !dbg !5965
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5965
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5966

if.then56:                                        ; preds = %if.else52
  store i32 -13, i32* %retval, align 4, !dbg !5967
  br label %return, !dbg !5967

if.end57:                                         ; preds = %if.else52
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  store i32 0, i32* %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

return:                                           ; preds = %if.end58, %if.then56, %if.then51, %if.then43, %sw.default, %if.else32, %if.then2, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5969
  ret i32 %35, !dbg !5969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_hw_cycle(%struct.intel_spi* %ispi, i8 zeroext %opcode, i64 %len) #0 !dbg !5970 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %opcode.addr = alloca i8, align 1
  %len.addr = alloca i64, align 8
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  store i8 %opcode, i8* %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %opcode.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5979, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5981, metadata !DIExpression()), !dbg !5982
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !5985
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %0, i32 0, i32 3, !dbg !5986
  %1 = load i8*, i8** %base, align 8, !dbg !5986
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !5987
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !5988
  store i32 %call, i32* %val, align 4, !dbg !5989
  %2 = load i32, i32* %val, align 4, !dbg !5990
  %and = and i32 %2, -1058930689, !dbg !5990
  store i32 %and, i32* %val, align 4, !dbg !5990
  %3 = load i8, i8* %opcode.addr, align 1, !dbg !5991
  %conv = zext i8 %3 to i32, !dbg !5991
  switch i32 %conv, label %sw.default [
    i32 159, label %sw.bb
    i32 1, label %sw.bb1
    i32 5, label %sw.bb3
  ], !dbg !5992

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %val, align 4, !dbg !5993
  %or = or i32 %4, 786432, !dbg !5993
  store i32 %or, i32* %val, align 4, !dbg !5993
  br label %sw.epilog, !dbg !5995

sw.bb1:                                           ; preds = %entry
  %5 = load i32, i32* %val, align 4, !dbg !5996
  %or2 = or i32 %5, 917504, !dbg !5996
  store i32 %or2, i32* %val, align 4, !dbg !5996
  br label %sw.epilog, !dbg !5997

sw.bb3:                                           ; preds = %entry
  %6 = load i32, i32* %val, align 4, !dbg !5998
  %or4 = or i32 %6, 1048576, !dbg !5998
  store i32 %or4, i32* %val, align 4, !dbg !5998
  br label %sw.epilog, !dbg !5999

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6000
  br label %return, !dbg !6000

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %7 = load i64, i64* %len.addr, align 8, !dbg !6001
  %cmp = icmp ugt i64 %7, 64, !dbg !6003
  br i1 %cmp, label %if.then, label %if.end, !dbg !6004

if.then:                                          ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !6005
  br label %return, !dbg !6005

if.end:                                           ; preds = %sw.epilog
  %8 = load i64, i64* %len.addr, align 8, !dbg !6006
  %sub = sub i64 %8, 1, !dbg !6007
  %shl = shl i64 %sub, 24, !dbg !6008
  %9 = load i32, i32* %val, align 4, !dbg !6009
  %conv6 = zext i32 %9 to i64, !dbg !6009
  %or7 = or i64 %conv6, %shl, !dbg !6009
  %conv8 = trunc i64 %or7 to i32, !dbg !6009
  store i32 %conv8, i32* %val, align 4, !dbg !6009
  %10 = load i32, i32* %val, align 4, !dbg !6010
  %conv9 = zext i32 %10 to i64, !dbg !6010
  %or10 = or i64 %conv9, 3, !dbg !6010
  %conv11 = trunc i64 %or10 to i32, !dbg !6010
  store i32 %conv11, i32* %val, align 4, !dbg !6010
  %11 = load i32, i32* %val, align 4, !dbg !6011
  %conv12 = zext i32 %11 to i64, !dbg !6011
  %or13 = or i64 %conv12, 65536, !dbg !6011
  %conv14 = trunc i64 %or13 to i32, !dbg !6011
  store i32 %conv14, i32* %val, align 4, !dbg !6011
  %12 = load i32, i32* %val, align 4, !dbg !6012
  %13 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6013
  %base15 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %13, i32 0, i32 3, !dbg !6014
  %14 = load i8*, i8** %base15, align 8, !dbg !6014
  %add.ptr16 = getelementptr i8, i8* %14, i64 4, !dbg !6015
  call void @writel(i32 %12, i8* %add.ptr16) #5, !dbg !6016
  %15 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6017
  %call17 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %15) #5, !dbg !6018
  store i32 %call17, i32* %ret, align 4, !dbg !6019
  %16 = load i32, i32* %ret, align 4, !dbg !6020
  %tobool = icmp ne i32 %16, 0, !dbg !6020
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !6022

if.then18:                                        ; preds = %if.end
  %17 = load i32, i32* %ret, align 4, !dbg !6023
  store i32 %17, i32* %retval, align 4, !dbg !6024
  br label %return, !dbg !6024

if.end19:                                         ; preds = %if.end
  %18 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6025
  %base20 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %18, i32 0, i32 3, !dbg !6026
  %19 = load i8*, i8** %base20, align 8, !dbg !6026
  %add.ptr21 = getelementptr i8, i8* %19, i64 4, !dbg !6027
  %call22 = call i32 @readl(i8* %add.ptr21) #5, !dbg !6028
  store i32 %call22, i32* %status, align 4, !dbg !6029
  %20 = load i32, i32* %status, align 4, !dbg !6030
  %conv23 = zext i32 %20 to i64, !dbg !6030
  %and24 = and i64 %conv23, 2, !dbg !6032
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6032
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !6033

if.then26:                                        ; preds = %if.end19
  store i32 -5, i32* %retval, align 4, !dbg !6034
  br label %return, !dbg !6034

if.else:                                          ; preds = %if.end19
  %21 = load i32, i32* %status, align 4, !dbg !6035
  %conv27 = zext i32 %21 to i64, !dbg !6035
  %and28 = and i64 %conv27, 4, !dbg !6037
  %tobool29 = icmp ne i64 %and28, 0, !dbg !6037
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6038

if.then30:                                        ; preds = %if.else
  store i32 -13, i32* %retval, align 4, !dbg !6039
  br label %return, !dbg !6039

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  store i32 0, i32* %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

return:                                           ; preds = %if.end32, %if.then30, %if.then26, %if.then18, %if.then, %sw.default
  %22 = load i32, i32* %retval, align 4, !dbg !6041
  ret i32 %22, !dbg !6041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_read_block(%struct.intel_spi* %ispi, i8* %buf, i64 %size) #0 !dbg !6042 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6045, metadata !DIExpression()), !dbg !6046
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6051, metadata !DIExpression()), !dbg !6052
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6053, metadata !DIExpression()), !dbg !6054
  store i32 0, i32* %i, align 4, !dbg !6054
  %0 = load i64, i64* %size.addr, align 8, !dbg !6055
  %cmp = icmp ugt i64 %0, 64, !dbg !6057
  br i1 %cmp, label %if.then, label %if.end, !dbg !6058

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6060

while.cond:                                       ; preds = %cond.end, %if.end
  %1 = load i64, i64* %size.addr, align 8, !dbg !6061
  %cmp1 = icmp ugt i64 %1, 0, !dbg !6062
  br i1 %cmp1, label %while.body, label %while.end, !dbg !6060

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !6063, metadata !DIExpression()), !dbg !6066
  %2 = load i64, i64* %size.addr, align 8, !dbg !6066
  store i64 %2, i64* %__UNIQUE_ID___x240, align 8, !dbg !6066
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !6067, metadata !DIExpression()), !dbg !6066
  store i64 4, i64* %__UNIQUE_ID___y241, align 8, !dbg !6066
  %3 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !6066
  %4 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !6066
  %cmp2 = icmp ult i64 %3, %4, !dbg !6066
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !6066

cond.true:                                        ; preds = %while.body
  %5 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !6066
  br label %cond.end, !dbg !6066

cond.false:                                       ; preds = %while.body
  %6 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !6066
  br label %cond.end, !dbg !6066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6066
  store i64 %cond, i64* %tmp, align 8, !dbg !6066
  %7 = load i64, i64* %tmp, align 8, !dbg !6066
  store i64 %7, i64* %bytes, align 8, !dbg !6068
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !6069
  %9 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6070
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %9, i32 0, i32 3, !dbg !6071
  %10 = load i8*, i8** %base, align 8, !dbg !6071
  %11 = load i32, i32* %i, align 4, !dbg !6072
  %mul = mul i32 %11, 4, !dbg !6072
  %add = add i32 16, %mul, !dbg !6072
  %idx.ext = sext i32 %add to i64, !dbg !6073
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !6073
  %12 = load i64, i64* %bytes, align 8, !dbg !6074
  call void @memcpy_fromio(i8* %8, i8* %add.ptr, i64 %12) #5, !dbg !6075
  %13 = load i64, i64* %bytes, align 8, !dbg !6076
  %14 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub = sub i64 %14, %13, !dbg !6077
  store i64 %sub, i64* %size.addr, align 8, !dbg !6077
  %15 = load i64, i64* %bytes, align 8, !dbg !6078
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !6079
  %add.ptr3 = getelementptr i8, i8* %16, i64 %15, !dbg !6079
  store i8* %add.ptr3, i8** %buf.addr, align 8, !dbg !6079
  %17 = load i32, i32* %i, align 4, !dbg !6080
  %inc = add i32 %17, 1, !dbg !6080
  store i32 %inc, i32* %i, align 4, !dbg !6080
  br label %while.cond, !dbg !6060, !llvm.loop !6081

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6083
  br label %return, !dbg !6083

return:                                           ; preds = %while.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !6084
  ret i32 %18, !dbg !6084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_opcode_index(%struct.intel_spi* %ispi, i8 zeroext %opcode, i32 %optype) #0 !dbg !6085 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %opcode.addr = alloca i8, align 1
  %optype.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %preop = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  store i8 %opcode, i8* %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %opcode.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store i32 %optype, i32* %optype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %optype.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6094, metadata !DIExpression()), !dbg !6095
  call void @llvm.dbg.declare(metadata i32* %preop, metadata !6096, metadata !DIExpression()), !dbg !6097
  %0 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6098
  %locked = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %0, i32 0, i32 9, !dbg !6100
  %1 = load i8, i8* %locked, align 1, !dbg !6100
  %tobool = trunc i8 %1 to i1, !dbg !6100
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6101

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6102
  br label %for.cond, !dbg !6105

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !6106
  %conv = sext i32 %2 to i64, !dbg !6106
  %cmp = icmp ult i64 %conv, 8, !dbg !6108
  br i1 %cmp, label %for.body, label %for.end, !dbg !6109

for.body:                                         ; preds = %for.cond
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6110
  %opcodes = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 14, !dbg !6112
  %4 = load i32, i32* %i, align 4, !dbg !6113
  %idxprom = sext i32 %4 to i64, !dbg !6110
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %opcodes, i64 0, i64 %idxprom, !dbg !6110
  %5 = load i8, i8* %arrayidx, align 1, !dbg !6110
  %conv2 = zext i8 %5 to i32, !dbg !6110
  %6 = load i8, i8* %opcode.addr, align 1, !dbg !6114
  %conv3 = zext i8 %6 to i32, !dbg !6114
  %cmp4 = icmp eq i32 %conv2, %conv3, !dbg !6115
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !6116

if.then6:                                         ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !6117
  store i32 %7, i32* %retval, align 4, !dbg !6118
  br label %return, !dbg !6118

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6114

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !6119
  %inc = add i32 %8, 1, !dbg !6119
  store i32 %inc, i32* %i, align 4, !dbg !6119
  br label %for.cond, !dbg !6120, !llvm.loop !6121

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !6123
  br label %return, !dbg !6123

if.end7:                                          ; preds = %entry
  %9 = load i8, i8* %opcode.addr, align 1, !dbg !6124
  %conv8 = zext i8 %9 to i32, !dbg !6124
  %10 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6125
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 5, !dbg !6126
  %11 = load i8*, i8** %sregs, align 8, !dbg !6126
  %add.ptr = getelementptr i8, i8* %11, i64 8, !dbg !6127
  call void @writel(i32 %conv8, i8* %add.ptr) #5, !dbg !6128
  %12 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6129
  %sregs9 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %12, i32 0, i32 5, !dbg !6130
  %13 = load i8*, i8** %sregs9, align 8, !dbg !6130
  %add.ptr10 = getelementptr i8, i8* %13, i64 4, !dbg !6131
  %call = call zeroext i16 @readw(i8* %add.ptr10) #5, !dbg !6132
  %conv11 = zext i16 %call to i32, !dbg !6132
  store i32 %conv11, i32* %preop, align 4, !dbg !6133
  %14 = load i32, i32* %optype.addr, align 4, !dbg !6134
  %shl = shl i32 %14, 16, !dbg !6135
  %15 = load i32, i32* %preop, align 4, !dbg !6136
  %or = or i32 %shl, %15, !dbg !6137
  %16 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6138
  %sregs12 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %16, i32 0, i32 5, !dbg !6139
  %17 = load i8*, i8** %sregs12, align 8, !dbg !6139
  %add.ptr13 = getelementptr i8, i8* %17, i64 4, !dbg !6140
  call void @writel(i32 %or, i8* %add.ptr13) #5, !dbg !6141
  store i32 0, i32* %retval, align 4, !dbg !6142
  br label %return, !dbg !6142

return:                                           ; preds = %if.end7, %for.end, %if.then6
  %18 = load i32, i32* %retval, align 4, !dbg !6143
  ret i32 %18, !dbg !6143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #0 !dbg !6144 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !6149, metadata !DIExpression()), !dbg !6148
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6148
  %1 = bitcast i8* %0 to i16*, !dbg !6148
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #7, !dbg !6148, !srcloc !6150
  store i16 %2, i16* %ret, align 2, !dbg !6148
  %3 = load i16, i16* %ret, align 2, !dbg !6148
  ret i16 %3, !dbg !6148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_wait_sw_busy(%struct.intel_spi* %ispi) #0 !dbg !6151 {
entry:
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %val = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6154, metadata !DIExpression()), !dbg !6155
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !6156, metadata !DIExpression()), !dbg !6158
  store i64 5000000, i64* %__timeout_us, align 8, !dbg !6158
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !6159, metadata !DIExpression()), !dbg !6158
  store i64 0, i64* %__sleep_us, align 8, !dbg !6158
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !6160, metadata !DIExpression()), !dbg !6158
  %call = call i64 @ktime_get() #5, !dbg !6158
  %0 = load i64, i64* %__timeout_us, align 8, !dbg !6158
  %call1 = call i64 @ktime_add_us(i64 %call, i64 %0) #5, !dbg !6158
  store i64 %call1, i64* %__timeout, align 8, !dbg !6158
  br label %do.body, !dbg !6158

do.body:                                          ; preds = %entry
  %1 = load i64, i64* %__sleep_us, align 8, !dbg !6161
  %cmp = icmp ne i64 %1, 0, !dbg !6161
  br i1 %cmp, label %if.then, label %if.end, !dbg !6164

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6161

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6165

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !6167

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !6165

do.end4:                                          ; preds = %do.end
  br label %if.end, !dbg !6165

if.end:                                           ; preds = %do.end4, %do.body
  br label %do.end5, !dbg !6164

do.end5:                                          ; preds = %if.end
  br label %for.cond, !dbg !6158

for.cond:                                         ; preds = %if.end21, %do.end5
  %2 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6169
  %sregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %2, i32 0, i32 5, !dbg !6169
  %3 = load i8*, i8** %sregs, align 8, !dbg !6169
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !6169
  %call6 = call i32 @readl(i8* %add.ptr) #5, !dbg !6169
  store i32 %call6, i32* %val, align 4, !dbg !6169
  %4 = load i32, i32* %val, align 4, !dbg !6173
  %conv = zext i32 %4 to i64, !dbg !6173
  %and = and i64 %conv, 1, !dbg !6173
  %tobool = icmp ne i64 %and, 0, !dbg !6173
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !6169

if.then7:                                         ; preds = %for.cond
  br label %for.end, !dbg !6173

if.end8:                                          ; preds = %for.cond
  %5 = load i64, i64* %__timeout_us, align 8, !dbg !6175
  %tobool9 = icmp ne i64 %5, 0, !dbg !6175
  br i1 %tobool9, label %land.lhs.true, label %if.end18, !dbg !6175

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call i64 @ktime_get() #5, !dbg !6175
  %6 = load i64, i64* %__timeout, align 8, !dbg !6175
  %call11 = call i32 @ktime_compare(i64 %call10, i64 %6) #5, !dbg !6175
  %cmp12 = icmp sgt i32 %call11, 0, !dbg !6175
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !6169

if.then14:                                        ; preds = %land.lhs.true
  %7 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6177
  %sregs15 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %7, i32 0, i32 5, !dbg !6177
  %8 = load i8*, i8** %sregs15, align 8, !dbg !6177
  %add.ptr16 = getelementptr i8, i8* %8, i64 0, !dbg !6177
  %call17 = call i32 @readl(i8* %add.ptr16) #5, !dbg !6177
  store i32 %call17, i32* %val, align 4, !dbg !6177
  br label %for.end, !dbg !6177

if.end18:                                         ; preds = %land.lhs.true, %if.end8
  %9 = load i64, i64* %__sleep_us, align 8, !dbg !6179
  %tobool19 = icmp ne i64 %9, 0, !dbg !6179
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6169

if.then20:                                        ; preds = %if.end18
  %10 = load i64, i64* %__sleep_us, align 8, !dbg !6179
  %shr = lshr i64 %10, 2, !dbg !6179
  %add = add i64 %shr, 1, !dbg !6179
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !6179
  call void @usleep_range(i64 %add, i64 %11) #5, !dbg !6179
  br label %if.end21, !dbg !6179

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %for.cond, !dbg !6181, !llvm.loop !6182

for.end:                                          ; preds = %if.then14, %if.then7
  %12 = load i32, i32* %val, align 4, !dbg !6158
  %conv22 = zext i32 %12 to i64, !dbg !6158
  %and23 = and i64 %conv22, 1, !dbg !6158
  %tobool24 = icmp ne i64 %and23, 0, !dbg !6158
  %lnot = xor i1 %tobool24, true, !dbg !6158
  %13 = zext i1 %lnot to i64, !dbg !6158
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !6158
  store i32 %cond, i32* %tmp, align 4, !dbg !6183
  %14 = load i32, i32* %tmp, align 4, !dbg !6158
  ret i32 %14, !dbg !6184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !6185 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load i64, i64* %kt.addr, align 8, !dbg !6194
  %1 = load i64, i64* %usec.addr, align 8, !dbg !6194
  %mul = mul i64 %1, 1000, !dbg !6194
  %add = add i64 %0, %mul, !dbg !6194
  ret i64 %add, !dbg !6195
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !6196 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !6203
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !6205
  %cmp = icmp slt i64 %0, %1, !dbg !6206
  br i1 %cmp, label %if.then, label %if.end, !dbg !6207

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !6209
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !6211
  %cmp3 = icmp sgt i64 %2, %3, !dbg !6212
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6213

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !6214
  br label %return, !dbg !6214

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6215
  br label %return, !dbg !6215

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !6216
  ret i32 %4, !dbg !6216
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %ispi) #0 !dbg !6217 {
entry:
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %val = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6220, metadata !DIExpression()), !dbg !6221
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !6222, metadata !DIExpression()), !dbg !6224
  store i64 5000000, i64* %__timeout_us, align 8, !dbg !6224
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !6225, metadata !DIExpression()), !dbg !6224
  store i64 0, i64* %__sleep_us, align 8, !dbg !6224
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !6226, metadata !DIExpression()), !dbg !6224
  %call = call i64 @ktime_get() #5, !dbg !6224
  %0 = load i64, i64* %__timeout_us, align 8, !dbg !6224
  %call1 = call i64 @ktime_add_us(i64 %call, i64 %0) #5, !dbg !6224
  store i64 %call1, i64* %__timeout, align 8, !dbg !6224
  br label %do.body, !dbg !6224

do.body:                                          ; preds = %entry
  %1 = load i64, i64* %__sleep_us, align 8, !dbg !6227
  %cmp = icmp ne i64 %1, 0, !dbg !6227
  br i1 %cmp, label %if.then, label %if.end, !dbg !6230

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6227

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6231

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !6233

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !6231

do.end4:                                          ; preds = %do.end
  br label %if.end, !dbg !6231

if.end:                                           ; preds = %do.end4, %do.body
  br label %do.end5, !dbg !6230

do.end5:                                          ; preds = %if.end
  br label %for.cond, !dbg !6224

for.cond:                                         ; preds = %if.end21, %do.end5
  %2 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6235
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %2, i32 0, i32 3, !dbg !6235
  %3 = load i8*, i8** %base, align 8, !dbg !6235
  %add.ptr = getelementptr i8, i8* %3, i64 4, !dbg !6235
  %call6 = call i32 @readl(i8* %add.ptr) #5, !dbg !6235
  store i32 %call6, i32* %val, align 4, !dbg !6235
  %4 = load i32, i32* %val, align 4, !dbg !6239
  %conv = zext i32 %4 to i64, !dbg !6239
  %and = and i64 %conv, 32, !dbg !6239
  %tobool = icmp ne i64 %and, 0, !dbg !6239
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !6235

if.then7:                                         ; preds = %for.cond
  br label %for.end, !dbg !6239

if.end8:                                          ; preds = %for.cond
  %5 = load i64, i64* %__timeout_us, align 8, !dbg !6241
  %tobool9 = icmp ne i64 %5, 0, !dbg !6241
  br i1 %tobool9, label %land.lhs.true, label %if.end18, !dbg !6241

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call i64 @ktime_get() #5, !dbg !6241
  %6 = load i64, i64* %__timeout, align 8, !dbg !6241
  %call11 = call i32 @ktime_compare(i64 %call10, i64 %6) #5, !dbg !6241
  %cmp12 = icmp sgt i32 %call11, 0, !dbg !6241
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !6235

if.then14:                                        ; preds = %land.lhs.true
  %7 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6243
  %base15 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %7, i32 0, i32 3, !dbg !6243
  %8 = load i8*, i8** %base15, align 8, !dbg !6243
  %add.ptr16 = getelementptr i8, i8* %8, i64 4, !dbg !6243
  %call17 = call i32 @readl(i8* %add.ptr16) #5, !dbg !6243
  store i32 %call17, i32* %val, align 4, !dbg !6243
  br label %for.end, !dbg !6243

if.end18:                                         ; preds = %land.lhs.true, %if.end8
  %9 = load i64, i64* %__sleep_us, align 8, !dbg !6245
  %tobool19 = icmp ne i64 %9, 0, !dbg !6245
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6235

if.then20:                                        ; preds = %if.end18
  %10 = load i64, i64* %__sleep_us, align 8, !dbg !6245
  %shr = lshr i64 %10, 2, !dbg !6245
  %add = add i64 %shr, 1, !dbg !6245
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !6245
  call void @usleep_range(i64 %add, i64 %11) #5, !dbg !6245
  br label %if.end21, !dbg !6245

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %for.cond, !dbg !6247, !llvm.loop !6248

for.end:                                          ; preds = %if.then14, %if.then7
  %12 = load i32, i32* %val, align 4, !dbg !6224
  %conv22 = zext i32 %12 to i64, !dbg !6224
  %and23 = and i64 %conv22, 32, !dbg !6224
  %tobool24 = icmp ne i64 %and23, 0, !dbg !6224
  %lnot = xor i1 %tobool24, true, !dbg !6224
  %13 = zext i1 %lnot to i64, !dbg !6224
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !6224
  store i32 %cond, i32* %tmp, align 4, !dbg !6249
  %14 = load i32, i32* %tmp, align 4, !dbg !6224
  ret i32 %14, !dbg !6250
}

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_spi_write_block(%struct.intel_spi* %ispi, i8* %buf, i64 %size) #0 !dbg !6251 {
entry:
  %retval = alloca i32, align 4
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %__UNIQUE_ID___x242 = alloca i64, align 8
  %__UNIQUE_ID___y243 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6256, metadata !DIExpression()), !dbg !6257
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6260, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6262, metadata !DIExpression()), !dbg !6263
  store i32 0, i32* %i, align 4, !dbg !6263
  %0 = load i64, i64* %size.addr, align 8, !dbg !6264
  %cmp = icmp ugt i64 %0, 64, !dbg !6266
  br i1 %cmp, label %if.then, label %if.end, !dbg !6267

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6268
  br label %return, !dbg !6268

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6269

while.cond:                                       ; preds = %cond.end, %if.end
  %1 = load i64, i64* %size.addr, align 8, !dbg !6270
  %cmp1 = icmp ugt i64 %1, 0, !dbg !6271
  br i1 %cmp1, label %while.body, label %while.end, !dbg !6269

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x242, metadata !6272, metadata !DIExpression()), !dbg !6275
  %2 = load i64, i64* %size.addr, align 8, !dbg !6275
  store i64 %2, i64* %__UNIQUE_ID___x242, align 8, !dbg !6275
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y243, metadata !6276, metadata !DIExpression()), !dbg !6275
  store i64 4, i64* %__UNIQUE_ID___y243, align 8, !dbg !6275
  %3 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !6275
  %4 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !6275
  %cmp2 = icmp ult i64 %3, %4, !dbg !6275
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !6275

cond.true:                                        ; preds = %while.body
  %5 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !6275
  br label %cond.end, !dbg !6275

cond.false:                                       ; preds = %while.body
  %6 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !6275
  br label %cond.end, !dbg !6275

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6275
  store i64 %cond, i64* %tmp, align 8, !dbg !6275
  %7 = load i64, i64* %tmp, align 8, !dbg !6275
  store i64 %7, i64* %bytes, align 8, !dbg !6277
  %8 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6278
  %base = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %8, i32 0, i32 3, !dbg !6279
  %9 = load i8*, i8** %base, align 8, !dbg !6279
  %10 = load i32, i32* %i, align 4, !dbg !6280
  %mul = mul i32 %10, 4, !dbg !6280
  %add = add i32 16, %mul, !dbg !6280
  %idx.ext = sext i32 %add to i64, !dbg !6281
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !6281
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !6282
  %12 = load i64, i64* %bytes, align 8, !dbg !6283
  call void @memcpy_toio(i8* %add.ptr, i8* %11, i64 %12) #5, !dbg !6284
  %13 = load i64, i64* %bytes, align 8, !dbg !6285
  %14 = load i64, i64* %size.addr, align 8, !dbg !6286
  %sub = sub i64 %14, %13, !dbg !6286
  store i64 %sub, i64* %size.addr, align 8, !dbg !6286
  %15 = load i64, i64* %bytes, align 8, !dbg !6287
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !6288
  %add.ptr3 = getelementptr i8, i8* %16, i64 %15, !dbg !6288
  store i8* %add.ptr3, i8** %buf.addr, align 8, !dbg !6288
  %17 = load i32, i32* %i, align 4, !dbg !6289
  %inc = add i32 %17, 1, !dbg !6289
  store i32 %inc, i32* %i, align 4, !dbg !6289
  br label %while.cond, !dbg !6269, !llvm.loop !6290

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6292
  br label %return, !dbg !6292

return:                                           ; preds = %while.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !6293
  ret i32 %18, !dbg !6293
}

; Function Attrs: noredzone
declare dso_local void @memcpy_toio(i8*, i8*, i64) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @intel_spi_is_protected(%struct.intel_spi* %ispi, i32 %base, i32 %limit) #0 !dbg !6294 {
entry:
  %retval = alloca i1, align 1
  %ispi.addr = alloca %struct.intel_spi*, align 8
  %base.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pr_base = alloca i32, align 4
  %pr_limit = alloca i32, align 4
  %pr_value = alloca i32, align 4
  store %struct.intel_spi* %ispi, %struct.intel_spi** %ispi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_spi** %ispi.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  store i32 %limit, i32* %limit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %limit.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6305, metadata !DIExpression()), !dbg !6306
  store i32 0, i32* %i, align 4, !dbg !6307
  br label %for.cond, !dbg !6309

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6310
  %conv = sext i32 %0 to i64, !dbg !6310
  %1 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6312
  %pr_num = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %1, i32 0, i32 7, !dbg !6313
  %2 = load i64, i64* %pr_num, align 8, !dbg !6313
  %cmp = icmp ult i64 %conv, %2, !dbg !6314
  br i1 %cmp, label %for.body, label %for.end, !dbg !6315

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %pr_base, metadata !6316, metadata !DIExpression()), !dbg !6318
  call void @llvm.dbg.declare(metadata i32* %pr_limit, metadata !6319, metadata !DIExpression()), !dbg !6320
  call void @llvm.dbg.declare(metadata i32* %pr_value, metadata !6321, metadata !DIExpression()), !dbg !6322
  %3 = load %struct.intel_spi*, %struct.intel_spi** %ispi.addr, align 8, !dbg !6323
  %pregs = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %3, i32 0, i32 4, !dbg !6324
  %4 = load i8*, i8** %pregs, align 8, !dbg !6324
  %5 = load i32, i32* %i, align 4, !dbg !6325
  %mul = mul i32 %5, 4, !dbg !6325
  %idx.ext = sext i32 %mul to i64, !dbg !6326
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !6326
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !6327
  store i32 %call, i32* %pr_value, align 4, !dbg !6328
  %6 = load i32, i32* %pr_value, align 4, !dbg !6329
  %conv2 = zext i32 %6 to i64, !dbg !6329
  %and = and i64 %conv2, 2147516416, !dbg !6331
  %tobool = icmp ne i64 %and, 0, !dbg !6331
  br i1 %tobool, label %if.end, label %if.then, !dbg !6332

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6333

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %pr_value, align 4, !dbg !6334
  %and3 = and i32 %7, 1073676288, !dbg !6335
  %shr = lshr i32 %and3, 16, !dbg !6336
  store i32 %shr, i32* %pr_limit, align 4, !dbg !6337
  %8 = load i32, i32* %pr_value, align 4, !dbg !6338
  %and4 = and i32 %8, 16383, !dbg !6339
  store i32 %and4, i32* %pr_base, align 4, !dbg !6340
  %9 = load i32, i32* %pr_base, align 4, !dbg !6341
  %10 = load i32, i32* %base.addr, align 4, !dbg !6343
  %cmp5 = icmp uge i32 %9, %10, !dbg !6344
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !6345

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %pr_limit, align 4, !dbg !6346
  %12 = load i32, i32* %limit.addr, align 4, !dbg !6347
  %cmp7 = icmp ule i32 %11, %12, !dbg !6348
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6349

if.then9:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !6350
  br label %return, !dbg !6350

if.end10:                                         ; preds = %land.lhs.true, %if.end
  br label %for.inc, !dbg !6351

for.inc:                                          ; preds = %if.end10, %if.then
  %13 = load i32, i32* %i, align 4, !dbg !6352
  %inc = add i32 %13, 1, !dbg !6352
  store i32 %inc, i32* %i, align 4, !dbg !6352
  br label %for.cond, !dbg !6353, !llvm.loop !6354

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !6356
  br label %return, !dbg !6356

return:                                           ; preds = %for.end, %if.then9
  %14 = load i1, i1* %retval, align 1, !dbg !6357
  ret i1 %14, !dbg !6357
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4523, !4524, !4525, !4526}
!llvm.ident = !{!4527}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_writeable", scope: !2, file: !3, line: 163, type: !4522, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !128, globals: !146, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/spi-nor/controllers/intel-spi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !106, !123}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intel_spi_type", file: !94, line: 12, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/platform_data/intel-spi.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "INTEL_SPI_BYT", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "INTEL_SPI_LPT", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "INTEL_SPI_BXT", value: 3, isUnsigned: true)
!99 = !DIEnumerator(name: "INTEL_SPI_CNL", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spi_mem_data_dir", file: !101, line: 65, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/spi/spi-mem.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "SPI_MEM_NO_DATA", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "SPI_MEM_DATA_IN", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "SPI_MEM_DATA_OUT", value: 2, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spi_nor_protocol", file: !107, line: 169, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/mtd/spi-nor.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!109 = !DIEnumerator(name: "SNOR_PROTO_1_1_1", value: 65793, isUnsigned: true)
!110 = !DIEnumerator(name: "SNOR_PROTO_1_1_2", value: 65794, isUnsigned: true)
!111 = !DIEnumerator(name: "SNOR_PROTO_1_1_4", value: 65796, isUnsigned: true)
!112 = !DIEnumerator(name: "SNOR_PROTO_1_1_8", value: 65800, isUnsigned: true)
!113 = !DIEnumerator(name: "SNOR_PROTO_1_2_2", value: 66050, isUnsigned: true)
!114 = !DIEnumerator(name: "SNOR_PROTO_1_4_4", value: 66564, isUnsigned: true)
!115 = !DIEnumerator(name: "SNOR_PROTO_1_8_8", value: 67592, isUnsigned: true)
!116 = !DIEnumerator(name: "SNOR_PROTO_2_2_2", value: 131586, isUnsigned: true)
!117 = !DIEnumerator(name: "SNOR_PROTO_4_4_4", value: 263172, isUnsigned: true)
!118 = !DIEnumerator(name: "SNOR_PROTO_8_8_8", value: 526344, isUnsigned: true)
!119 = !DIEnumerator(name: "SNOR_PROTO_1_1_1_DTR", value: 16843009, isUnsigned: true)
!120 = !DIEnumerator(name: "SNOR_PROTO_1_2_2_DTR", value: 16843266, isUnsigned: true)
!121 = !DIEnumerator(name: "SNOR_PROTO_1_4_4_DTR", value: 16843780, isUnsigned: true)
!122 = !DIEnumerator(name: "SNOR_PROTO_1_8_8_DTR", value: 16844808, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!128 = !{!129, !131, !132, !133, !134, !136, !139, !143, !145}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 148, baseType: !7)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 55, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !141, line: 72, baseType: !142)
!141 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !141, line: 16, baseType: !132)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !130, line: 46, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !141, line: 88, baseType: !145)
!145 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!146 = !{!147, !217, !222, !227, !232, !237, !242, !247, !0, !251}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__param_writeable", scope: !2, file: !3, line: 163, type: !149, isLocal: true, isDefinition: true, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !151, line: 69, size: 320, elements: !152)
!151 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !157, !161, !181, !187, !191, !195}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 70, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !150, file: !151, line: 71, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !160, line: 76, flags: DIFlagFwdDecl)
!160 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !150, file: !151, line: 72, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !151, line: 47, size: 256, elements: !165)
!165 = !{!166, !167, !172, !177}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !151, line: 49, baseType: !7, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !164, file: !151, line: 51, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!133, !154, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !164, file: !151, line: 53, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!133, !176, !171}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !164, file: !151, line: 55, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !131}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !150, file: !151, line: 73, baseType: !182, size: 16, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !184, line: 19, baseType: !185)
!184 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !186, line: 24, baseType: !138)
!186 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !150, file: !151, line: 74, baseType: !188, size: 8, offset: 208)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !184, line: 16, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !186, line: 20, baseType: !190)
!190 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !151, line: 75, baseType: !192, size: 8, offset: 216)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !184, line: 17, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !186, line: 21, baseType: !194)
!194 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !151, line: 76, baseType: !196, size: 64, offset: 256)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !151, line: 76, size: 64, elements: !197)
!197 = !{!198, !199, !206}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !196, file: !151, line: 77, baseType: !131, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !196, file: !151, line: 78, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !151, line: 86, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !202, file: !151, line: 87, baseType: !7, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !202, file: !151, line: 88, baseType: !176, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !196, file: !151, line: 79, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !151, line: 92, size: 256, elements: !210)
!210 = !{!211, !212, !213, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !209, file: !151, line: 94, baseType: !7, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !209, file: !151, line: 95, baseType: !7, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !209, file: !151, line: 96, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !209, file: !151, line: 97, baseType: !162, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !209, file: !151, line: 98, baseType: !131, size: 64, offset: 192)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_writeabletype238", scope: !2, file: !3, line: 163, type: !219, isLocal: true, isDefinition: true, align: 8)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 272, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 34)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_writeable239", scope: !2, file: !3, line: 164, type: !224, isLocal: true, isDefinition: true, align: 8)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 600, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 75)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description253", scope: !2, file: !3, line: 967, type: !229, isLocal: true, isDefinition: true, align: 8)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 464, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 58)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author254", scope: !2, file: !3, line: 968, type: !234, isLocal: true, isDefinition: true, align: 8)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 536, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 67)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file255", scope: !2, file: !3, line: 969, type: !239, isLocal: true, isDefinition: true, align: 8)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 456, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 57)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license256", scope: !2, file: !3, line: 969, type: !244, isLocal: true, isDefinition: true, align: 8)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 200, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 25)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "writeable", scope: !2, file: !3, line: 162, type: !249, isLocal: true, isDefinition: true)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 30, baseType: !250)
!250 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "intel_spi_controller_ops", scope: !2, file: !3, line: 898, type: !253, isLocal: true, isDefinition: true)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_nor_controller_ops", file: !107, line: 308, size: 448, elements: !255)
!255 = !{!256, !4496, !4500, !4504, !4510, !4514, !4518}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !254, file: !107, line: 309, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!133, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_nor", file: !107, line: 359, size: 10816, elements: !262)
!262 = !{!263, !4132, !4133, !4134, !4463, !4465, !4466, !4470, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4487, !4490, !4495}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !261, file: !107, line: 360, baseType: !264, size: 9664)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !265, line: 235, size: 9664, elements: !266)
!265 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267, !269, !273, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !306, !327, !328, !329, !330, !339, !349, !358, !362, !367, !373, !374, !391, !392, !403, !404, !405, !406, !407, !408, !419, !423, !427, !428, !429, !433, !434, !435, !436, !440, !441, !442, !443, !444, !445, !457, !464, !465, !466, !467, !4104, !4105, !4111, !4115, !4116, !4117}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !265, line: 236, baseType: !268, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !130, line: 79, baseType: !194)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !265, line: 237, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 104, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !184, line: 21, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !186, line: 27, baseType: !7)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !264, file: !265, line: 238, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !130, line: 107, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !184, line: 23, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !186, line: 31, baseType: !277)
!277 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !264, file: !265, line: 244, baseType: !270, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !264, file: !265, line: 252, baseType: !270, size: 32, offset: 160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !264, file: !265, line: 263, baseType: !270, size: 32, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !264, file: !265, line: 265, baseType: !270, size: 32, offset: 224)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !264, file: !265, line: 266, baseType: !270, size: 32, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !264, file: !265, line: 272, baseType: !7, size: 32, offset: 288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !264, file: !265, line: 273, baseType: !7, size: 32, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !264, file: !265, line: 275, baseType: !7, size: 32, offset: 352)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !264, file: !265, line: 276, baseType: !7, size: 32, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !264, file: !265, line: 285, baseType: !7, size: 32, offset: 416)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !265, line: 288, baseType: !154, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !264, file: !265, line: 289, baseType: !133, size: 32, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !264, file: !265, line: 292, baseType: !291, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !265, line: 101, size: 128, elements: !294)
!294 = !{!295, !305}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !293, file: !265, line: 102, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!133, !299, !133, !300}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !265, line: 87, size: 64, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !301, file: !265, line: 88, baseType: !271, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !301, file: !265, line: 89, baseType: !271, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !293, file: !265, line: 104, baseType: !296, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !264, file: !265, line: 295, baseType: !307, size: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !265, line: 176, size: 192, elements: !310)
!310 = !{!311, !312, !321}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !309, file: !265, line: 177, baseType: !133, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !309, file: !265, line: 178, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!133, !299, !133, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !265, line: 138, size: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !317, file: !265, line: 139, baseType: !133, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !317, file: !265, line: 140, baseType: !133, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !309, file: !265, line: 180, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!133, !299, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !264, file: !265, line: 298, baseType: !7, size: 32, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !264, file: !265, line: 301, baseType: !7, size: 32, offset: 736)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !264, file: !265, line: 306, baseType: !133, size: 32, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !264, file: !265, line: 307, baseType: !331, size: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !265, line: 36, size: 192, elements: !333)
!333 = !{!334, !335, !336, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !332, file: !265, line: 37, baseType: !274, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !332, file: !265, line: 38, baseType: !270, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !332, file: !265, line: 39, baseType: !270, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !332, file: !265, line: 40, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !264, file: !265, line: 313, baseType: !340, size: 64, offset: 896)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!133, !299, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !265, line: 30, size: 192, elements: !345)
!345 = !{!346, !347, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !344, file: !265, line: 31, baseType: !274, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !344, file: !265, line: 32, baseType: !274, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !344, file: !265, line: 33, baseType: !274, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !264, file: !265, line: 314, baseType: !350, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!133, !299, !143, !139, !353, !354, !355}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !130, line: 158, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !130, line: 153, baseType: !275)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !264, file: !265, line: 316, baseType: !359, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!133, !299, !143, !139}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !264, file: !265, line: 317, baseType: !363, size: 64, offset: 1088)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!133, !299, !143, !139, !353, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !264, file: !265, line: 319, baseType: !368, size: 64, offset: 1152)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!133, !299, !143, !139, !353, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !264, file: !265, line: 321, baseType: !368, size: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !264, file: !265, line: 323, baseType: !375, size: 64, offset: 1280)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!133, !299, !143, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !265, line: 64, size: 512, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !390}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !379, file: !265, line: 65, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !379, file: !265, line: 66, baseType: !139, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !379, file: !265, line: 67, baseType: !139, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !379, file: !265, line: 68, baseType: !139, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !379, file: !265, line: 69, baseType: !139, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !379, file: !265, line: 70, baseType: !270, size: 32, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !379, file: !265, line: 71, baseType: !388, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 102, baseType: !192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !379, file: !265, line: 72, baseType: !388, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !264, file: !265, line: 325, baseType: !375, size: 64, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !264, file: !265, line: 327, baseType: !393, size: 64, offset: 1408)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!133, !299, !139, !353, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !398, line: 146, size: 96, elements: !399)
!398 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !397, file: !398, line: 147, baseType: !272, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !397, file: !398, line: 148, baseType: !272, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !397, file: !398, line: 149, baseType: !272, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !264, file: !265, line: 329, baseType: !363, size: 64, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !264, file: !265, line: 331, baseType: !393, size: 64, offset: 1536)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !264, file: !265, line: 333, baseType: !363, size: 64, offset: 1600)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !264, file: !265, line: 335, baseType: !363, size: 64, offset: 1664)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !264, file: !265, line: 337, baseType: !359, size: 64, offset: 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !264, file: !265, line: 339, baseType: !409, size: 64, offset: 1792)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!133, !299, !412, !132, !143, !353}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !415, line: 15, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !414, file: !415, line: 16, baseType: !131, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !414, file: !415, line: 17, baseType: !139, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !264, file: !265, line: 341, baseType: !420, size: 64, offset: 1856)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !299}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !264, file: !265, line: 342, baseType: !424, size: 64, offset: 1920)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!133, !299, !143, !274}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !264, file: !265, line: 343, baseType: !424, size: 64, offset: 1984)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !264, file: !265, line: 344, baseType: !424, size: 64, offset: 2048)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !264, file: !265, line: 345, baseType: !430, size: 64, offset: 2112)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!133, !299, !143}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !264, file: !265, line: 346, baseType: !430, size: 64, offset: 2176)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !264, file: !265, line: 347, baseType: !430, size: 64, offset: 2240)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !264, file: !265, line: 348, baseType: !359, size: 64, offset: 2304)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !264, file: !265, line: 349, baseType: !437, size: 64, offset: 2368)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!133, !299}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !264, file: !265, line: 350, baseType: !420, size: 64, offset: 2432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !264, file: !265, line: 351, baseType: !420, size: 64, offset: 2496)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !264, file: !265, line: 356, baseType: !437, size: 64, offset: 2560)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !264, file: !265, line: 357, baseType: !420, size: 64, offset: 2624)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !264, file: !265, line: 363, baseType: !249, size: 8, offset: 2688)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !264, file: !265, line: 365, baseType: !446, size: 192, offset: 2752)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !447, line: 54, size: 192, elements: !448)
!447 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !455, !456}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !446, file: !447, line: 55, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !447, line: 51, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!133, !454, !132, !131}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !447, line: 56, baseType: !454, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !446, file: !447, line: 57, baseType: !133, size: 32, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !264, file: !265, line: 368, baseType: !458, size: 128, offset: 2944)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !398, line: 250, size: 128, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !458, file: !398, line: 251, baseType: !272, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !458, file: !398, line: 252, baseType: !272, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !458, file: !398, line: 253, baseType: !272, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !458, file: !398, line: 254, baseType: !272, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !264, file: !265, line: 370, baseType: !133, size: 32, offset: 3072)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !264, file: !265, line: 372, baseType: !131, size: 64, offset: 3136)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !264, file: !265, line: 374, baseType: !158, size: 64, offset: 3200)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !264, file: !265, line: 375, baseType: !468, size: 5568, offset: 3264)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !469)
!469 = !{!470, !3635, !3637, !3640, !3641, !3692, !3783, !3784, !3785, !3786, !3787, !3796, !3901, !3914, !3917, !3918, !3922, !3924, !3925, !3926, !3930, !3936, !3937, !3940, !4055, !4056, !4057, !4058, !4059, !4060, !4092, !4093, !4094, !4097, !4100, !4101, !4102, !4103}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !468, file: !73, line: 462, baseType: !471, size: 512)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !472, line: 64, size: 512, elements: !473)
!472 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475, !481, !483, !542, !3486, !3625, !3630, !3631, !3632, !3633, !3634}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !472, line: 65, baseType: !154, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !471, file: !472, line: 66, baseType: !476, size: 128, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !130, line: 178, size: 128, elements: !477)
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !130, line: 179, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !476, file: !130, line: 179, baseType: !479, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !471, file: !472, line: 67, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !471, file: !472, line: 68, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !472, line: 192, size: 704, elements: !486)
!486 = !{!487, !488, !504, !505}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !485, file: !472, line: 193, baseType: !476, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !485, file: !472, line: 194, baseType: !489, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !490, line: 83, baseType: !491)
!490 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !490, line: 71, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !490, line: 72, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !490, line: 72, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !494, file: !490, line: 73, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !490, line: 20, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !497, file: !490, line: 21, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !501, line: 25, baseType: !502)
!501 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 25, elements: !503)
!503 = !{}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !485, file: !472, line: 195, baseType: !471, size: 512, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !485, file: !472, line: 196, baseType: !506, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !472, line: 156, size: 192, elements: !509)
!509 = !{!510, !515, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !508, file: !472, line: 157, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!133, !484, !482}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !472, line: 158, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!154, !484, !482}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !508, file: !472, line: 159, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!133, !484, !482, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !472, line: 148, size: 20736, elements: !527)
!527 = !{!528, !532, !536, !537, !541}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !526, file: !472, line: 149, baseType: !529, size: 192)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 192, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 3)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !526, file: !472, line: 150, baseType: !533, size: 4096, offset: 192)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 4096, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !526, file: !472, line: 151, baseType: !133, size: 32, offset: 4288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !526, file: !472, line: 152, baseType: !538, size: 16384, offset: 4320)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16384, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 2048)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !526, file: !472, line: 153, baseType: !133, size: 32, offset: 20704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !471, file: !472, line: 69, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !472, line: 138, size: 448, elements: !545)
!545 = !{!546, !550, !574, !576, !3448, !3476, !3480}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !544, file: !472, line: 139, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !482}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !544, file: !472, line: 140, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !554, line: 230, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !570}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !553, file: !554, line: 231, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !482, !564, !176}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !130, line: 60, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !141, line: 73, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !141, line: 15, baseType: !563)
!563 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !554, line: 30, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !554, line: 31, baseType: !154, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !554, line: 32, baseType: !569, size: 16, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 19, baseType: !138)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !553, file: !554, line: 232, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!560, !482, !564, !154, !139}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !544, file: !472, line: 141, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !544, file: !472, line: 142, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !554, line: 84, size: 320, elements: !581)
!581 = !{!582, !583, !587, !3445, !3446}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !554, line: 85, baseType: !154, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !580, file: !554, line: 86, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!569, !482, !564, !133}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !580, file: !554, line: 88, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!569, !482, !591, !133}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !554, line: 168, size: 448, elements: !593)
!593 = !{!594, !595, !596, !597, !3440, !3441}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !592, file: !554, line: 169, baseType: !565, size: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !554, line: 170, baseType: !139, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !592, file: !554, line: 171, baseType: !131, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !592, file: !554, line: 172, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!560, !601, !482, !591, !176, !143, !139}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !603)
!603 = !{!604, !622, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3423, !3424, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !602, file: !44, line: 920, baseType: !605, size: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !44, line: 917, size: 128, elements: !606)
!606 = !{!607, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !605, file: !44, line: 918, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !609, line: 58, size: 64, elements: !610)
!609 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !609, line: 59, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !605, file: !44, line: 919, baseType: !614, size: 128, align: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !130, line: 216, size: 128, align: 64, elements: !615)
!615 = !{!616, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !130, line: 217, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !614, file: !130, line: 218, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !617}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !602, file: !44, line: 921, baseType: !623, size: 128, offset: 128)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !624, line: 8, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!625 = !{!626, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !623, file: !624, line: 9, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !629, line: 18, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !623, file: !624, line: 10, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !629, line: 89, size: 1536, elements: !633)
!633 = !{!634, !635, !645, !653, !654, !669, !3373, !3375, !3387, !3388, !3389, !3390, !3391, !3397, !3398, !3399}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !632, file: !629, line: 91, baseType: !7, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !632, file: !629, line: 92, baseType: !636, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !637, line: 277, baseType: !638)
!637 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !637, line: 277, size: 32, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !638, file: !637, line: 277, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !637, line: 70, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !637, line: 65, size: 32, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !642, file: !637, line: 66, baseType: !7, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !632, file: !629, line: 93, baseType: !646, size: 128, offset: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !647, line: 38, size: 128, elements: !648)
!647 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !647, line: 39, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !646, file: !647, line: 39, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !632, file: !629, line: 94, baseType: !631, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !632, file: !629, line: 95, baseType: !655, size: 128, offset: 256)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !629, line: 47, size: 128, elements: !656)
!656 = !{!657, !666}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !629, line: 48, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !629, line: 48, size: 64, elements: !659)
!659 = !{!660, !665}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !629, line: 49, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !629, line: 49, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !661, file: !629, line: 50, baseType: !271, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !661, file: !629, line: 50, baseType: !271, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !658, file: !629, line: 52, baseType: !275, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !655, file: !629, line: 54, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !632, file: !629, line: 96, baseType: !670, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !672)
!672 = !{!673, !674, !675, !683, !690, !691, !830, !3076, !3077, !3078, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3341, !3349, !3350, !3351, !3369, !3370, !3371, !3372}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !671, file: !44, line: 611, baseType: !569, size: 16)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !671, file: !44, line: 612, baseType: !138, size: 16, offset: 16)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !671, file: !44, line: 613, baseType: !676, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !677, line: 23, baseType: !678)
!677 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 21, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !678, file: !677, line: 22, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !130, line: 32, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !141, line: 49, baseType: !7)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !671, file: !44, line: 614, baseType: !684, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !677, line: 28, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 26, size: 32, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !677, line: 27, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !130, line: 33, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !141, line: 50, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !671, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !671, file: !44, line: 622, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !695)
!695 = !{!696, !700, !710, !714, !720, !724, !728, !732, !736, !740, !744, !745, !751, !755, !778, !806, !810, !816, !821, !825, !826}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !694, file: !44, line: 1865, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!631, !670, !631, !7}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !694, file: !44, line: 1866, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!154, !631, !670, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !706, line: 10, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !705, file: !706, line: 11, baseType: !178, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !705, file: !706, line: 12, baseType: !131, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !694, file: !44, line: 1867, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!133, !670, !133}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !694, file: !44, line: 1868, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!718, !670, !133}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !694, file: !44, line: 1870, baseType: !721, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!133, !631, !176, !133}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !694, file: !44, line: 1872, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!133, !670, !631, !569, !249}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !694, file: !44, line: 1873, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!133, !631, !670, !631}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !694, file: !44, line: 1874, baseType: !733, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!133, !670, !631}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !694, file: !44, line: 1875, baseType: !737, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!133, !670, !631, !154}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !694, file: !44, line: 1876, baseType: !741, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!133, !670, !631, !569}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !694, file: !44, line: 1877, baseType: !733, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !694, file: !44, line: 1878, baseType: !746, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!133, !670, !631, !569, !749}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 16, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 13, baseType: !271)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !694, file: !44, line: 1879, baseType: !752, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!133, !670, !631, !670, !631, !7}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !694, file: !44, line: 1881, baseType: !756, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!133, !631, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !775, !776, !777}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !760, file: !44, line: 220, baseType: !7, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !760, file: !44, line: 221, baseType: !569, size: 16, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !760, file: !44, line: 222, baseType: !676, size: 32, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !760, file: !44, line: 223, baseType: !684, size: 32, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !760, file: !44, line: 224, baseType: !143, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !760, file: !44, line: 225, baseType: !768, size: 128, offset: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !769, line: 13, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!770 = !{!771, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !768, file: !769, line: 14, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !769, line: 8, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !186, line: 30, baseType: !145)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !768, file: !769, line: 15, baseType: !563, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !760, file: !44, line: 226, baseType: !768, size: 128, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !760, file: !44, line: 227, baseType: !768, size: 128, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !760, file: !44, line: 234, baseType: !601, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !694, file: !44, line: 1882, baseType: !779, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!133, !782, !784, !271, !7}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !786, line: 22, size: 1152, elements: !787)
!786 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !785, file: !786, line: 23, baseType: !271, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !785, file: !786, line: 24, baseType: !569, size: 16, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !785, file: !786, line: 25, baseType: !7, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !785, file: !786, line: 26, baseType: !270, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !785, file: !786, line: 27, baseType: !275, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !785, file: !786, line: 28, baseType: !275, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !785, file: !786, line: 37, baseType: !275, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !785, file: !786, line: 38, baseType: !749, size: 32, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !785, file: !786, line: 39, baseType: !749, size: 32, offset: 352)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !785, file: !786, line: 40, baseType: !676, size: 32, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !785, file: !786, line: 41, baseType: !684, size: 32, offset: 416)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !785, file: !786, line: 42, baseType: !143, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !785, file: !786, line: 43, baseType: !768, size: 128, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !785, file: !786, line: 44, baseType: !768, size: 128, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !785, file: !786, line: 45, baseType: !768, size: 128, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !785, file: !786, line: 46, baseType: !768, size: 128, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !785, file: !786, line: 47, baseType: !275, size: 64, offset: 1024)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !785, file: !786, line: 48, baseType: !275, size: 64, offset: 1088)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !694, file: !44, line: 1883, baseType: !807, size: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!560, !631, !176, !139}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !694, file: !44, line: 1884, baseType: !811, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!133, !670, !814, !275, !275}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !694, file: !44, line: 1886, baseType: !817, size: 64, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!133, !670, !820, !133}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !694, file: !44, line: 1887, baseType: !822, size: 64, offset: 1152)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!133, !670, !631, !601, !7, !569}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !694, file: !44, line: 1890, baseType: !741, size: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !694, file: !44, line: 1891, baseType: !827, size: 64, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!133, !670, !718, !133}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !671, file: !44, line: 623, baseType: !831, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !886, !2686, !2768, !2851, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2867, !2871, !2872, !2875, !2876, !2877, !2878, !2879, !2920, !2946, !2947, !2948, !2949, !2950, !2951, !2954, !2956, !2963, !2964, !2966, !2967, !2968, !3027, !3028, !3043, !3044, !3045, !3046, !3047, !3050, !3051, !3052, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !832, file: !44, line: 1417, baseType: !476, size: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !832, file: !44, line: 1418, baseType: !749, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !832, file: !44, line: 1419, baseType: !194, size: 8, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !832, file: !44, line: 1420, baseType: !132, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !832, file: !44, line: 1421, baseType: !143, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !832, file: !44, line: 1422, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !842)
!842 = !{!843, !844, !845, !852, !856, !860, !864, !865, !866, !876, !879, !880, !881, !883, !884, !885}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !841, file: !44, line: 2229, baseType: !154, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !841, file: !44, line: 2230, baseType: !133, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !841, file: !44, line: 2238, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!133, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !851, line: 28, flags: DIFlagFwdDecl)
!851 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !841, file: !44, line: 2239, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !841, file: !44, line: 2240, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!631, !840, !133, !154, !131}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !841, file: !44, line: 2242, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !831}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !841, file: !44, line: 2243, baseType: !158, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !44, line: 2244, baseType: !840, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !841, file: !44, line: 2245, baseType: !867, size: 64, offset: 512)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !130, line: 182, size: 64, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !867, file: !130, line: 183, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !130, line: 186, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !130, line: 187, baseType: !870, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !871, file: !130, line: 187, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !841, file: !44, line: 2247, baseType: !877, offset: 576)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !878, line: 187, elements: !503)
!878 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !841, file: !44, line: 2248, baseType: !877, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !841, file: !44, line: 2249, baseType: !877, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !841, file: !44, line: 2250, baseType: !882, offset: 576)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, elements: !530)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !841, file: !44, line: 2252, baseType: !877, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !841, file: !44, line: 2253, baseType: !877, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !841, file: !44, line: 2254, baseType: !877, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !832, file: !44, line: 1423, baseType: !887, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !890)
!890 = !{!891, !895, !899, !900, !904, !910, !914, !915, !916, !920, !924, !925, !926, !927, !933, !938, !939, !946, !947, !948, !949, !2670, !2685}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !889, file: !44, line: 1936, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!670, !831}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !889, file: !44, line: 1937, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !670}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !889, file: !44, line: 1938, baseType: !896, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !889, file: !44, line: 1940, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !670, !133}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !889, file: !44, line: 1941, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!133, !670, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !889, file: !44, line: 1942, baseType: !911, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!133, !670}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !889, file: !44, line: 1943, baseType: !896, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !889, file: !44, line: 1944, baseType: !861, size: 64, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !889, file: !44, line: 1945, baseType: !917, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!133, !831, !133}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !889, file: !44, line: 1946, baseType: !921, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!133, !831}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !889, file: !44, line: 1947, baseType: !921, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !889, file: !44, line: 1948, baseType: !921, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !889, file: !44, line: 1949, baseType: !921, size: 64, offset: 768)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !889, file: !44, line: 1950, baseType: !928, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!133, !631, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !889, file: !44, line: 1951, baseType: !934, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!133, !831, !937, !176}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !889, file: !44, line: 1952, baseType: !861, size: 64, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !889, file: !44, line: 1954, baseType: !940, size: 64, offset: 1024)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!133, !943, !631}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !945, line: 539, flags: DIFlagFwdDecl)
!945 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!946 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !889, file: !44, line: 1955, baseType: !940, size: 64, offset: 1088)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !889, file: !44, line: 1956, baseType: !940, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !889, file: !44, line: 1957, baseType: !940, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !889, file: !44, line: 1963, baseType: !950, size: 64, offset: 1280)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!133, !831, !953, !129}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !955, line: 68, size: 512, align: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!956 = !{!957, !958, !2662, !2669}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !955, line: 69, baseType: !132, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 77, baseType: !959, size: 320, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 77, size: 320, elements: !960)
!960 = !{!961, !1178, !1183, !1211, !1219, !1225, !2593, !2661}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 78, baseType: !962, size: 320)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 78, size: 320, elements: !963)
!963 = !{!964, !965, !1176, !1177}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !962, file: !955, line: 84, baseType: !476, size: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !962, file: !955, line: 86, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !968)
!968 = !{!969, !970, !977, !978, !983, !998, !1014, !1015, !1016, !1017, !1169, !1170, !1173, !1174, !1175}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !967, file: !44, line: 452, baseType: !670, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !967, file: !44, line: 453, baseType: !971, size: 128, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !972, line: 292, size: 128, elements: !973)
!972 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !971, file: !972, line: 293, baseType: !489)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !971, file: !972, line: 295, baseType: !129, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !971, file: !972, line: 296, baseType: !131, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !967, file: !44, line: 454, baseType: !129, size: 32, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !967, file: !44, line: 455, baseType: !979, size: 32, offset: 224)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 168, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 166, size: 32, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !980, file: !130, line: 167, baseType: !133, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !967, file: !44, line: 460, baseType: !984, size: 128, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !985, line: 125, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !997}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !984, file: !985, line: 126, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !985, line: 31, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !988, file: !985, line: 32, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !985, line: 24, size: 192, align: 64, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !992, file: !985, line: 25, baseType: !132, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !992, file: !985, line: 26, baseType: !991, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !992, file: !985, line: 27, baseType: !991, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !984, file: !985, line: 127, baseType: !991, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !967, file: !44, line: 461, baseType: !999, size: 256, offset: 384)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1000, line: 35, size: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1010, !1011, !1013}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !999, file: !1000, line: 36, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1004, line: 13, baseType: !1005)
!1004 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !130, line: 175, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 173, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1006, file: !130, line: 174, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !184, line: 22, baseType: !773)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !999, file: !1000, line: 42, baseType: !1003, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !999, file: !1000, line: 46, baseType: !1012, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !490, line: 29, baseType: !497)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !999, file: !1000, line: 47, baseType: !476, size: 128, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !967, file: !44, line: 462, baseType: !132, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !967, file: !44, line: 463, baseType: !132, size: 64, offset: 704)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !967, file: !44, line: 464, baseType: !132, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !967, file: !44, line: 465, baseType: !1018, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !1021)
!1021 = !{!1022, !1026, !1030, !1034, !1038, !1042, !1048, !1053, !1057, !1062, !1066, !1070, !1074, !1133, !1137, !1143, !1144, !1145, !1149, !1154, !1158, !1165}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1020, file: !44, line: 368, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!133, !953, !908}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1020, file: !44, line: 369, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!133, !601, !953}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1020, file: !44, line: 372, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!133, !966, !908}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1020, file: !44, line: 375, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!133, !953}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1020, file: !44, line: 381, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!133, !601, !966, !479, !7}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1020, file: !44, line: 383, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1020, file: !44, line: 385, baseType: !1049, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!133, !601, !966, !143, !7, !7, !1052, !354}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1020, file: !44, line: 388, baseType: !1054, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!133, !601, !966, !143, !7, !7, !953, !131}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1020, file: !44, line: 393, baseType: !1058, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !966, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !130, line: 125, baseType: !275)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1020, file: !44, line: 394, baseType: !1063, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !953, !7, !7}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1020, file: !44, line: 395, baseType: !1067, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!133, !953, !129}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1020, file: !44, line: 396, baseType: !1071, size: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !953}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1020, file: !44, line: 397, baseType: !1075, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!560, !1078, !1098}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1087, !1088, !1089, !1090, !1091}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1079, file: !44, line: 321, baseType: !601, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1079, file: !44, line: 326, baseType: !143, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1079, file: !44, line: 327, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1078, !563, !563}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1079, file: !44, line: 328, baseType: !131, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1079, file: !44, line: 329, baseType: !133, size: 32, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1079, file: !44, line: 330, baseType: !183, size: 16, offset: 288)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1079, file: !44, line: 331, baseType: !183, size: 16, offset: 304)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !44, line: 332, baseType: !1092, size: 64, offset: 320)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !44, line: 332, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1092, file: !44, line: 333, baseType: !7, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1092, file: !44, line: 334, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !415, line: 29, size: 320, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1124}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1099, file: !415, line: 35, baseType: !7, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1099, file: !415, line: 36, baseType: !139, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !415, line: 37, baseType: !139, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !415, line: 38, baseType: !1105, size: 64, offset: 192)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !415, line: 38, size: 64, elements: !1106)
!1106 = !{!1107, !1115, !1116, !1120}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !1105, file: !415, line: 39, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1111, line: 17, size: 128, elements: !1112)
!1111 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1110, file: !1111, line: 19, baseType: !131, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1110, file: !1111, line: 20, baseType: !140, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1105, file: !415, line: 40, baseType: !412, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1105, file: !415, line: 41, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !415, line: 41, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !1105, file: !415, line: 42, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1123, line: 53, flags: DIFlagFwdDecl)
!1123 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !415, line: 44, baseType: !1125, size: 64, offset: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !415, line: 44, size: 64, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1125, file: !415, line: 45, baseType: !132, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !415, line: 46, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !415, line: 46, size: 64, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1129, file: !415, line: 47, baseType: !7, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !1129, file: !415, line: 48, baseType: !7, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1020, file: !44, line: 402, baseType: !1134, size: 64, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!133, !966, !953, !953, !5}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1020, file: !44, line: 404, baseType: !1138, size: 64, offset: 896)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!249, !953, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1142, line: 305, baseType: !7)
!1142 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1020, file: !44, line: 405, baseType: !1071, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1020, file: !44, line: 406, baseType: !1035, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1020, file: !44, line: 407, baseType: !1146, size: 64, offset: 1088)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!133, !953, !132, !132}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1020, file: !44, line: 409, baseType: !1150, size: 64, offset: 1152)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !953, !1153, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1020, file: !44, line: 410, baseType: !1155, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!133, !966, !953}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1020, file: !44, line: 413, baseType: !1159, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!133, !1162, !601, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1020, file: !44, line: 415, baseType: !1166, size: 64, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !601}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !44, line: 466, baseType: !132, size: 64, offset: 896)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !967, file: !44, line: 467, baseType: !1171, size: 32, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1172, line: 8, baseType: !271)
!1172 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !967, file: !44, line: 468, baseType: !489, offset: 992)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !967, file: !44, line: 469, baseType: !476, size: 128, offset: 1024)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !967, file: !44, line: 470, baseType: !131, size: 64, offset: 1152)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !962, file: !955, line: 87, baseType: !132, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !962, file: !955, line: 94, baseType: !132, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 96, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 96, size: 64, elements: !1180)
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1179, file: !955, line: 101, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !130, line: 143, baseType: !275)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 103, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 103, size: 320, elements: !1185)
!1185 = !{!1186, !1196, !1199, !1200}
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !955, line: 104, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !955, line: 104, size: 128, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1187, file: !955, line: 105, baseType: !476, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !955, line: 106, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !955, line: 106, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1191, file: !955, line: 107, baseType: !953, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1191, file: !955, line: 109, baseType: !133, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1191, file: !955, line: 110, baseType: !133, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1184, file: !955, line: 117, baseType: !1197, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !955, line: 117, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1184, file: !955, line: 119, baseType: !131, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !955, line: 120, baseType: !1201, size: 64, offset: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !955, line: 120, size: 64, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1201, file: !955, line: 121, baseType: !131, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1201, file: !955, line: 122, baseType: !132, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !955, line: 123, baseType: !1206, size: 32)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !955, line: 123, size: 32, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1206, file: !955, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1206, file: !955, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1206, file: !955, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 130, baseType: !1212, size: 192)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 130, size: 192, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1212, file: !955, line: 131, baseType: !132, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1212, file: !955, line: 134, baseType: !194, size: 8, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1212, file: !955, line: 135, baseType: !194, size: 8, offset: 72)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1212, file: !955, line: 136, baseType: !979, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1212, file: !955, line: 137, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 139, baseType: !1220, size: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 139, size: 256, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1220, file: !955, line: 140, baseType: !132, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1220, file: !955, line: 141, baseType: !979, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1220, file: !955, line: 143, baseType: !476, size: 128, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 145, baseType: !1226, size: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 145, size: 256, elements: !1227)
!1227 = !{!1228, !1229, !1231, !1232, !2592}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1226, file: !955, line: 146, baseType: !132, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1226, file: !955, line: 147, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !945, line: 509, baseType: !953)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1226, file: !955, line: 148, baseType: !132, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !955, line: 149, baseType: !1233, size: 64, offset: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !955, line: 149, size: 64, elements: !1234)
!1234 = !{!1235, !2591}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1233, file: !955, line: 150, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !955, line: 388, size: 7296, elements: !1238)
!1238 = !{!1239, !2587}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !955, line: 389, baseType: !1240, size: 7296)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !955, line: 389, size: 7296, elements: !1241)
!1241 = !{!1242, !1360, !1361, !1362, !1366, !1367, !1368, !1369, !1370, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1411, !1419, !1422, !1468, !1469, !2571, !2572, !2575, !2576, !2577, !2580, !2581, !2582, !2585, !2586}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1240, file: !955, line: 390, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !955, line: 305, size: 1472, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1260, !1261, !1266, !1267, !1270, !1354, !1355, !1356, !1357, !1358}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1244, file: !955, line: 308, baseType: !132, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1244, file: !955, line: 309, baseType: !132, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1244, file: !955, line: 313, baseType: !1243, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1244, file: !955, line: 313, baseType: !1243, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1244, file: !955, line: 315, baseType: !992, size: 192, align: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1244, file: !955, line: 323, baseType: !132, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1244, file: !955, line: 327, baseType: !1236, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1244, file: !955, line: 333, baseType: !1254, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !945, line: 284, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !945, line: 284, size: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1255, file: !945, line: 284, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1259, line: 19, baseType: !132)
!1259 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1244, file: !955, line: 334, baseType: !132, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1244, file: !955, line: 343, baseType: !1262, size: 256, offset: 704)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1244, file: !955, line: 340, size: 256, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1262, file: !955, line: 341, baseType: !992, size: 192, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1262, file: !955, line: 342, baseType: !132, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1244, file: !955, line: 351, baseType: !476, size: 128, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1244, file: !955, line: 353, baseType: !1268, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !955, line: 353, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1244, file: !955, line: 356, baseType: !1271, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1274)
!1274 = !{!1275, !1279, !1280, !1284, !1288, !1328, !1332, !1336, !1340, !1341, !1342, !1346, !1350}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1273, file: !14, line: 558, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1243}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1273, file: !14, line: 559, baseType: !1276, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1273, file: !14, line: 560, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!133, !1243, !132}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1273, file: !14, line: 561, baseType: !1285, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!133, !1243}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1273, file: !14, line: 562, baseType: !1289, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !955, line: 682, baseType: !7)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1308, !1315, !1321, !1322, !1323, !1325, !1327}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1294, file: !14, line: 509, baseType: !1243, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1294, file: !14, line: 511, baseType: !129, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1294, file: !14, line: 512, baseType: !132, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1294, file: !14, line: 513, baseType: !132, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1294, file: !14, line: 514, baseType: !1302, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !945, line: 385, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !945, line: 385, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1304, file: !945, line: 385, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1259, line: 15, baseType: !132)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1294, file: !14, line: 516, baseType: !1309, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !945, line: 359, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !945, line: 359, size: 64, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1311, file: !945, line: 359, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1259, line: 16, baseType: !132)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1294, file: !14, line: 519, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1259, line: 21, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1259, line: 21, size: 64, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1317, file: !1259, line: 21, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1259, line: 14, baseType: !132)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1294, file: !14, line: 521, baseType: !953, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1294, file: !14, line: 522, baseType: !953, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1294, file: !14, line: 528, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1294, file: !14, line: 532, baseType: !1326, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1294, file: !14, line: 536, baseType: !1230, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1273, file: !14, line: 563, baseType: !1329, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1292, !1293, !13}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1273, file: !14, line: 565, baseType: !1333, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1293, !132, !132}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1273, file: !14, line: 567, baseType: !1337, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!132, !1243}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1273, file: !14, line: 571, baseType: !1289, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1273, file: !14, line: 574, baseType: !1289, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1273, file: !14, line: 579, baseType: !1343, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!133, !1243, !132, !131, !133, !133}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1273, file: !14, line: 585, baseType: !1347, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!154, !1243}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1273, file: !14, line: 615, baseType: !1351, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!953, !1243, !132}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1244, file: !955, line: 359, baseType: !132, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1244, file: !955, line: 361, baseType: !601, size: 64, offset: 1280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1244, file: !955, line: 362, baseType: !131, size: 64, offset: 1344)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1244, file: !955, line: 365, baseType: !1003, size: 64, offset: 1408)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1244, file: !955, line: 373, baseType: !1359, offset: 1472)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !955, line: 296, elements: !503)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1240, file: !955, line: 391, baseType: !988, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1240, file: !955, line: 392, baseType: !275, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1240, file: !955, line: 394, baseType: !1363, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!132, !601, !132, !132, !132, !132}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1240, file: !955, line: 398, baseType: !132, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1240, file: !955, line: 399, baseType: !132, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1240, file: !955, line: 405, baseType: !132, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1240, file: !955, line: 406, baseType: !132, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1240, file: !955, line: 407, baseType: !1371, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !945, line: 286, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !945, line: 286, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1373, file: !945, line: 286, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1259, line: 18, baseType: !132)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1240, file: !955, line: 416, baseType: !979, size: 32, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1240, file: !955, line: 428, baseType: !979, size: 32, offset: 608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1240, file: !955, line: 437, baseType: !979, size: 32, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1240, file: !955, line: 447, baseType: !979, size: 32, offset: 672)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1240, file: !955, line: 450, baseType: !1003, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1240, file: !955, line: 452, baseType: !133, size: 32, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1240, file: !955, line: 454, baseType: !489, offset: 800)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1240, file: !955, line: 457, baseType: !999, size: 256, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1240, file: !955, line: 459, baseType: !476, size: 128, offset: 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1240, file: !955, line: 466, baseType: !132, size: 64, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1240, file: !955, line: 467, baseType: !132, size: 64, offset: 1280)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1240, file: !955, line: 469, baseType: !132, size: 64, offset: 1344)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1240, file: !955, line: 470, baseType: !132, size: 64, offset: 1408)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1240, file: !955, line: 471, baseType: !1005, size: 64, offset: 1472)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1240, file: !955, line: 472, baseType: !132, size: 64, offset: 1536)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1240, file: !955, line: 473, baseType: !132, size: 64, offset: 1600)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1240, file: !955, line: 474, baseType: !132, size: 64, offset: 1664)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1240, file: !955, line: 475, baseType: !132, size: 64, offset: 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1240, file: !955, line: 477, baseType: !489, offset: 1792)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1240, file: !955, line: 478, baseType: !132, size: 64, offset: 1792)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1240, file: !955, line: 478, baseType: !132, size: 64, offset: 1856)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1240, file: !955, line: 478, baseType: !132, size: 64, offset: 1920)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1240, file: !955, line: 478, baseType: !132, size: 64, offset: 1984)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1240, file: !955, line: 479, baseType: !132, size: 64, offset: 2048)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1240, file: !955, line: 479, baseType: !132, size: 64, offset: 2112)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1240, file: !955, line: 479, baseType: !132, size: 64, offset: 2176)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1240, file: !955, line: 480, baseType: !132, size: 64, offset: 2240)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1240, file: !955, line: 480, baseType: !132, size: 64, offset: 2304)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1240, file: !955, line: 480, baseType: !132, size: 64, offset: 2368)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1240, file: !955, line: 480, baseType: !132, size: 64, offset: 2432)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1240, file: !955, line: 482, baseType: !1408, size: 2816, offset: 2496)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 2816, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 44)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1240, file: !955, line: 488, baseType: !1412, size: 256, offset: 5312)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1413, line: 60, size: 256, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1412, file: !1413, line: 61, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 256, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 4)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1240, file: !955, line: 490, baseType: !1420, size: 64, offset: 5568)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !955, line: 490, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1240, file: !955, line: 493, baseType: !1423, size: 896, offset: 5632)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1424, line: 53, baseType: !1425)
!1424 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 13, size: 896, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1433, !1434, !1441, !1442, !1462, !1463, !1464}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1425, file: !1424, line: 18, baseType: !275, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1425, file: !1424, line: 28, baseType: !1005, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1425, file: !1424, line: 31, baseType: !999, size: 256, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1425, file: !1424, line: 32, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1424, line: 32, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1425, file: !1424, line: 37, baseType: !138, size: 16, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1424, line: 40, baseType: !1435, size: 192, offset: 512)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1436, line: 53, size: 192, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1435, file: !1436, line: 54, baseType: !1003, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1435, file: !1436, line: 55, baseType: !489, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1435, file: !1436, line: 59, baseType: !476, size: 128, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1425, file: !1424, line: 41, baseType: !131, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1425, file: !1424, line: 42, baseType: !1443, size: 64, offset: 768)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1446, line: 13, size: 896, elements: !1447)
!1446 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1445, file: !1446, line: 14, baseType: !131, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1445, file: !1446, line: 15, baseType: !132, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1445, file: !1446, line: 17, baseType: !132, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1445, file: !1446, line: 17, baseType: !132, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1445, file: !1446, line: 19, baseType: !563, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1445, file: !1446, line: 21, baseType: !563, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1445, file: !1446, line: 22, baseType: !563, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1445, file: !1446, line: 23, baseType: !563, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1445, file: !1446, line: 24, baseType: !563, size: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1445, file: !1446, line: 25, baseType: !563, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1445, file: !1446, line: 26, baseType: !563, size: 64, offset: 640)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1445, file: !1446, line: 27, baseType: !563, size: 64, offset: 704)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1445, file: !1446, line: 28, baseType: !563, size: 64, offset: 768)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1445, file: !1446, line: 29, baseType: !563, size: 64, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1425, file: !1424, line: 44, baseType: !979, size: 32, offset: 832)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1425, file: !1424, line: 50, baseType: !183, size: 16, offset: 864)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1425, file: !1424, line: 51, baseType: !1465, size: 16, offset: 880)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !184, line: 18, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !186, line: 23, baseType: !1467)
!1467 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !955, line: 495, baseType: !132, size: 64, offset: 6528)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1240, file: !955, line: 497, baseType: !1470, size: 64, offset: 6592)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !955, line: 381, size: 384, elements: !1472)
!1472 = !{!1473, !1474, !2570}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1471, file: !955, line: 382, baseType: !979, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1471, file: !955, line: 383, baseType: !1475, size: 128, offset: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !955, line: 376, size: 128, elements: !1476)
!1476 = !{!1477, !2568}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1475, file: !955, line: 377, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1123, line: 640, size: 48640, elements: !1480)
!1480 = !{!1481, !1487, !1489, !1490, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1507, !1525, !1536, !1619, !1620, !1621, !1632, !1633, !1635, !1636, !1637, !1638, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1717, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1755, !1757, !1758, !1759, !1771, !1772, !1773, !1774, !1775, !1776, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1800, !1805, !1989, !1990, !1991, !1992, !1996, !1999, !2002, !2005, !2008, !2012, !2113, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2159, !2160, !2161, !2162, !2163, !2168, !2169, !2170, !2173, !2174, !2177, !2180, !2183, !2186, !2229, !2232, !2233, !2312, !2313, !2316, !2317, !2320, !2321, !2322, !2326, !2327, !2328, !2341, !2342, !2343, !2353, !2358, !2359, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1479, file: !1123, line: 646, baseType: !1482, size: 128)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1483, line: 56, size: 128, elements: !1484)
!1483 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !1483, line: 57, baseType: !132, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1482, file: !1483, line: 58, baseType: !271, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1479, file: !1123, line: 649, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !563)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1479, file: !1123, line: 657, baseType: !131, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1479, file: !1123, line: 658, baseType: !1491, size: 32, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1492, line: 113, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1492, line: 111, size: 32, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1493, file: !1492, line: 112, baseType: !979, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1123, line: 660, baseType: !7, size: 32, offset: 288)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1479, file: !1123, line: 661, baseType: !7, size: 32, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1479, file: !1123, line: 684, baseType: !133, size: 32, offset: 352)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1479, file: !1123, line: 686, baseType: !133, size: 32, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1479, file: !1123, line: 687, baseType: !133, size: 32, offset: 416)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1479, file: !1123, line: 688, baseType: !133, size: 32, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1479, file: !1123, line: 689, baseType: !7, size: 32, offset: 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1479, file: !1123, line: 691, baseType: !1504, size: 64, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1123, line: 691, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1479, file: !1123, line: 692, baseType: !1508, size: 832, offset: 576)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1123, line: 451, size: 832, elements: !1509)
!1509 = !{!1510, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1508, file: !1123, line: 453, baseType: !1511, size: 128)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1123, line: 325, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1511, file: !1123, line: 326, baseType: !132, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1511, file: !1123, line: 327, baseType: !271, size: 32, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1508, file: !1123, line: 454, baseType: !992, size: 192, align: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1508, file: !1123, line: 455, baseType: !476, size: 128, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1508, file: !1123, line: 456, baseType: !7, size: 32, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1508, file: !1123, line: 458, baseType: !275, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1508, file: !1123, line: 459, baseType: !275, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1508, file: !1123, line: 460, baseType: !275, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1508, file: !1123, line: 461, baseType: !275, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1508, file: !1123, line: 463, baseType: !275, size: 64, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1508, file: !1123, line: 465, baseType: !1524, offset: 832)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1123, line: 415, elements: !503)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1479, file: !1123, line: 693, baseType: !1526, size: 384, offset: 1408)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1123, line: 489, size: 384, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1526, file: !1123, line: 490, baseType: !476, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1526, file: !1123, line: 491, baseType: !132, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1526, file: !1123, line: 492, baseType: !132, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1526, file: !1123, line: 493, baseType: !7, size: 32, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1526, file: !1123, line: 494, baseType: !138, size: 16, offset: 288)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1526, file: !1123, line: 495, baseType: !138, size: 16, offset: 304)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1526, file: !1123, line: 497, baseType: !1535, size: 64, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1479, file: !1123, line: 697, baseType: !1537, size: 1792, offset: 1792)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1123, line: 507, size: 1792, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1616, !1617}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1537, file: !1123, line: 508, baseType: !992, size: 192, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1537, file: !1123, line: 515, baseType: !275, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1537, file: !1123, line: 516, baseType: !275, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1537, file: !1123, line: 517, baseType: !275, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1537, file: !1123, line: 518, baseType: !275, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1537, file: !1123, line: 519, baseType: !275, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1537, file: !1123, line: 526, baseType: !1009, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1537, file: !1123, line: 527, baseType: !275, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1123, line: 528, baseType: !7, size: 32, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1537, file: !1123, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1537, file: !1123, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1537, file: !1123, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1537, file: !1123, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1537, file: !1123, line: 563, baseType: !1553, size: 512, offset: 704)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1554)
!1554 = !{!1555, !1563, !1564, !1569, !1612, !1613, !1614, !1615}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1553, file: !20, line: 119, baseType: !1556, size: 256)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1557, line: 9, size: 256, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1556, file: !1557, line: 10, baseType: !992, size: 192, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1556, file: !1557, line: 11, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1562, line: 29, baseType: !1009)
!1562 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1553, file: !20, line: 120, baseType: !1561, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1553, file: !20, line: 121, baseType: !1565, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!19, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1553, file: !20, line: 122, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1572)
!1572 = !{!1573, !1593, !1594, !1597, !1602, !1603, !1607, !1611}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1571, file: !20, line: 160, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !20, line: 215, baseType: !1012)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1575, file: !20, line: 216, baseType: !7, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1575, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1575, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1575, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1575, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1575, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1575, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1575, file: !20, line: 233, baseType: !1561, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1575, file: !20, line: 234, baseType: !1568, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1575, file: !20, line: 235, baseType: !1561, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1575, file: !20, line: 236, baseType: !1568, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1575, file: !20, line: 237, baseType: !1590, size: 4096, offset: 512)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1571, size: 4096, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 8)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1571, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1571, file: !20, line: 162, baseType: !1595, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !130, line: 27, baseType: !1596)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !141, line: 96, baseType: !133)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1571, file: !20, line: 163, baseType: !1598, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !637, line: 276, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !637, line: 276, size: 32, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1599, file: !637, line: 276, baseType: !641, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1571, file: !20, line: 164, baseType: !1568, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1571, file: !20, line: 165, baseType: !1604, size: 128, offset: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1557, line: 14, size: 128, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1604, file: !1557, line: 15, baseType: !984, size: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1571, file: !20, line: 166, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1561}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1571, file: !20, line: 167, baseType: !1561, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1553, file: !20, line: 123, baseType: !192, size: 8, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1553, file: !20, line: 124, baseType: !192, size: 8, offset: 456)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1553, file: !20, line: 125, baseType: !192, size: 8, offset: 464)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1553, file: !20, line: 126, baseType: !192, size: 8, offset: 472)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1537, file: !1123, line: 572, baseType: !1553, size: 512, offset: 1216)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1537, file: !1123, line: 580, baseType: !1618, size: 64, offset: 1728)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1479, file: !1123, line: 721, baseType: !7, size: 32, offset: 3584)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1479, file: !1123, line: 722, baseType: !133, size: 32, offset: 3616)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1479, file: !1123, line: 723, baseType: !1622, size: 64, offset: 3648)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1625, line: 17, baseType: !1626)
!1625 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1625, line: 17, size: 64, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1626, file: !1625, line: 17, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 1)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1479, file: !1123, line: 724, baseType: !1624, size: 64, offset: 3712)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1479, file: !1123, line: 749, baseType: !1634, offset: 3776)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1123, line: 290, elements: !503)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1479, file: !1123, line: 751, baseType: !476, size: 128, offset: 3776)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1479, file: !1123, line: 757, baseType: !1236, size: 64, offset: 3904)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1479, file: !1123, line: 758, baseType: !1236, size: 64, offset: 3968)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1479, file: !1123, line: 761, baseType: !1639, size: 320, offset: 4032)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1413, line: 34, size: 320, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1639, file: !1413, line: 35, baseType: !275, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1639, file: !1413, line: 36, baseType: !1643, size: 256, offset: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 256, elements: !1417)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1479, file: !1123, line: 766, baseType: !133, size: 32, offset: 4352)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1479, file: !1123, line: 767, baseType: !133, size: 32, offset: 4384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1479, file: !1123, line: 768, baseType: !133, size: 32, offset: 4416)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1479, file: !1123, line: 770, baseType: !133, size: 32, offset: 4448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1479, file: !1123, line: 772, baseType: !132, size: 64, offset: 4480)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1479, file: !1123, line: 775, baseType: !7, size: 32, offset: 4544)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1479, file: !1123, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1479, file: !1123, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1479, file: !1123, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1479, file: !1123, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1479, file: !1123, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1479, file: !1123, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1479, file: !1123, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1479, file: !1123, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1479, file: !1123, line: 831, baseType: !132, size: 64, offset: 4672)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1479, file: !1123, line: 833, baseType: !1660, size: 384, offset: 4736)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1661)
!1661 = !{!1662, !1667}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1660, file: !25, line: 26, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!563, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !25, line: 27, baseType: !1668, size: 320, offset: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !25, line: 27, size: 320, elements: !1669)
!1669 = !{!1670, !1680, !1707}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1668, file: !25, line: 36, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !25, line: 29, size: 320, elements: !1672)
!1672 = !{!1673, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1671, file: !25, line: 30, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1671, file: !25, line: 31, baseType: !271, size: 32, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !25, line: 32, baseType: !271, size: 32, offset: 96)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1671, file: !25, line: 33, baseType: !271, size: 32, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1671, file: !25, line: 34, baseType: !275, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1671, file: !25, line: 35, baseType: !1674, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1668, file: !25, line: 46, baseType: !1681, size: 192)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !25, line: 38, size: 192, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1706}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1681, file: !25, line: 39, baseType: !1595, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1681, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !25, line: 41, baseType: !1686, size: 64, offset: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !25, line: 41, size: 64, elements: !1687)
!1687 = !{!1688, !1696}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1686, file: !25, line: 42, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1691, line: 7, size: 128, elements: !1692)
!1691 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1690, file: !1691, line: 8, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !141, line: 93, baseType: !145)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1690, file: !1691, line: 9, baseType: !145, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1686, file: !25, line: 43, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1699, line: 7, size: 64, elements: !1700)
!1699 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1705}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1698, file: !1699, line: 8, baseType: !1702, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1699, line: 5, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !184, line: 20, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !186, line: 26, baseType: !133)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1698, file: !1699, line: 9, baseType: !1703, size: 32, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1681, file: !25, line: 45, baseType: !275, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1668, file: !25, line: 54, baseType: !1708, size: 256)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !25, line: 48, size: 256, elements: !1709)
!1709 = !{!1710, !1713, !1714, !1715, !1716}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1708, file: !25, line: 49, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1708, file: !25, line: 50, baseType: !133, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1708, file: !25, line: 51, baseType: !133, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1708, file: !25, line: 52, baseType: !132, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1708, file: !25, line: 53, baseType: !132, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1479, file: !1123, line: 835, baseType: !1718, size: 32, offset: 5120)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !130, line: 22, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !141, line: 28, baseType: !133)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1479, file: !1123, line: 836, baseType: !1718, size: 32, offset: 5152)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1479, file: !1123, line: 840, baseType: !132, size: 64, offset: 5184)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1479, file: !1123, line: 849, baseType: !1478, size: 64, offset: 5248)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1479, file: !1123, line: 852, baseType: !1478, size: 64, offset: 5312)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1479, file: !1123, line: 857, baseType: !476, size: 128, offset: 5376)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1479, file: !1123, line: 858, baseType: !476, size: 128, offset: 5504)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1479, file: !1123, line: 859, baseType: !1478, size: 64, offset: 5632)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1479, file: !1123, line: 867, baseType: !476, size: 128, offset: 5696)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1479, file: !1123, line: 868, baseType: !476, size: 128, offset: 5824)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1479, file: !1123, line: 871, baseType: !1730, size: 64, offset: 5952)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1738, !1739, !1746, !1747}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !53, line: 61, baseType: !1491, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1731, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !53, line: 63, baseType: !489, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1731, file: !53, line: 65, baseType: !1737, size: 256, offset: 64)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 256, elements: !1417)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1731, file: !53, line: 66, baseType: !867, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1731, file: !53, line: 68, baseType: !1740, size: 128, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1741, line: 40, baseType: !1742)
!1741 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1741, line: 36, size: 128, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !1741, line: 37, baseType: !489)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1742, file: !1741, line: 38, baseType: !476, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1731, file: !53, line: 69, baseType: !614, size: 128, align: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1731, file: !53, line: 70, baseType: !1748, size: 128, offset: 640)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 128, elements: !1630)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1749, file: !53, line: 55, baseType: !133, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1749, file: !53, line: 56, baseType: !1753, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1479, file: !1123, line: 872, baseType: !1756, size: 512, offset: 6016)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 512, elements: !1417)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1479, file: !1123, line: 873, baseType: !476, size: 128, offset: 6528)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1479, file: !1123, line: 874, baseType: !476, size: 128, offset: 6656)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1479, file: !1123, line: 876, baseType: !1760, size: 64, offset: 6784)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1762, line: 26, size: 192, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1761, file: !1762, line: 27, baseType: !7, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1761, file: !1762, line: 28, baseType: !1766, size: 128, offset: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1767, line: 43, size: 128, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !1767, line: 44, baseType: !1012)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1766, file: !1767, line: 45, baseType: !476, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1479, file: !1123, line: 879, baseType: !937, size: 64, offset: 6848)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1479, file: !1123, line: 882, baseType: !937, size: 64, offset: 6912)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1479, file: !1123, line: 884, baseType: !275, size: 64, offset: 6976)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1479, file: !1123, line: 885, baseType: !275, size: 64, offset: 7040)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1479, file: !1123, line: 890, baseType: !275, size: 64, offset: 7104)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1479, file: !1123, line: 891, baseType: !1777, size: 128, offset: 7168)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1123, line: 242, size: 128, elements: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1777, file: !1123, line: 244, baseType: !275, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1777, file: !1123, line: 245, baseType: !275, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !1123, line: 246, baseType: !1012, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1479, file: !1123, line: 900, baseType: !132, size: 64, offset: 7296)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1479, file: !1123, line: 901, baseType: !132, size: 64, offset: 7360)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1479, file: !1123, line: 904, baseType: !275, size: 64, offset: 7424)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1479, file: !1123, line: 907, baseType: !275, size: 64, offset: 7488)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1479, file: !1123, line: 910, baseType: !132, size: 64, offset: 7552)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1479, file: !1123, line: 911, baseType: !132, size: 64, offset: 7616)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1479, file: !1123, line: 914, baseType: !1789, size: 640, offset: 7680)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1790, line: 123, size: 640, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1798, !1799}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1789, file: !1790, line: 124, baseType: !1793, size: 576)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 576, elements: !530)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1790, line: 108, size: 192, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1794, file: !1790, line: 109, baseType: !275, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1794, file: !1790, line: 110, baseType: !1604, size: 128, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1789, file: !1790, line: 125, baseType: !7, size: 32, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1789, file: !1790, line: 126, baseType: !7, size: 32, offset: 608)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1479, file: !1123, line: 917, baseType: !1801, size: 192, offset: 8320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1790, line: 134, size: 192, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1801, file: !1790, line: 135, baseType: !614, size: 128, align: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1801, file: !1790, line: 136, baseType: !7, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1479, file: !1123, line: 923, baseType: !1806, size: 64, offset: 8512)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1809, line: 111, size: 1280, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1830, !1831, !1832, !1833, !1834, !1835, !1942, !1943, !1944, !1945, !1971, !1974, !1984}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1809, line: 112, baseType: !979, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 120, baseType: !676, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1809, line: 121, baseType: !684, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1808, file: !1809, line: 122, baseType: !676, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1808, file: !1809, line: 123, baseType: !684, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1808, file: !1809, line: 124, baseType: !676, size: 32, offset: 160)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1808, file: !1809, line: 125, baseType: !684, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1808, file: !1809, line: 126, baseType: !676, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1808, file: !1809, line: 127, baseType: !684, size: 32, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1808, file: !1809, line: 128, baseType: !7, size: 32, offset: 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1808, file: !1809, line: 129, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1823, line: 26, baseType: !1824)
!1823 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1823, line: 24, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1824, file: !1823, line: 25, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !1828)
!1828 = !{!1829}
!1829 = !DISubrange(count: 2)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1808, file: !1809, line: 130, baseType: !1822, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1808, file: !1809, line: 131, baseType: !1822, size: 64, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1808, file: !1809, line: 132, baseType: !1822, size: 64, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1808, file: !1809, line: 133, baseType: !1822, size: 64, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1808, file: !1809, line: 135, baseType: !194, size: 8, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1808, file: !1809, line: 137, baseType: !1836, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1838, line: 189, size: 1664, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1844, !1849, !1850, !1853, !1854, !1859, !1860, !1861, !1862, !1864, !1865, !1866, !1867, !1868, !1906, !1927}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1837, file: !1838, line: 190, baseType: !1491, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1837, file: !1838, line: 191, baseType: !1842, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1838, line: 28, baseType: !1843)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !130, line: 98, baseType: !1703)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 192, baseType: !1845, size: 192, offset: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 192, size: 192, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1845, file: !1838, line: 193, baseType: !476, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1845, file: !1838, line: 194, baseType: !992, size: 192, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1837, file: !1838, line: 199, baseType: !999, size: 256, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1837, file: !1838, line: 200, baseType: !1851, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1838, line: 200, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1837, file: !1838, line: 201, baseType: !131, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 202, baseType: !1855, size: 64, offset: 640)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 202, size: 64, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1855, file: !1838, line: 203, baseType: !772, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1855, file: !1838, line: 204, baseType: !772, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1837, file: !1838, line: 206, baseType: !772, size: 64, offset: 704)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1837, file: !1838, line: 207, baseType: !676, size: 32, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1837, file: !1838, line: 208, baseType: !684, size: 32, offset: 800)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1837, file: !1838, line: 209, baseType: !1863, size: 32, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1838, line: 31, baseType: !270)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1837, file: !1838, line: 210, baseType: !138, size: 16, offset: 864)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1837, file: !1838, line: 211, baseType: !138, size: 16, offset: 880)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1837, file: !1838, line: 215, baseType: !1467, size: 16, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1838, line: 222, baseType: !132, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 239, baseType: !1869, size: 320, offset: 1024)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 239, size: 320, elements: !1870)
!1870 = !{!1871, !1898}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1869, file: !1838, line: 240, baseType: !1872, size: 320)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1838, line: 108, size: 320, elements: !1873)
!1873 = !{!1874, !1875, !1887, !1890, !1897}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1872, file: !1838, line: 110, baseType: !132, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1838, line: 111, baseType: !1876, size: 64, offset: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1838, line: 111, size: 64, elements: !1877)
!1877 = !{!1878, !1886}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1838, line: 112, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1838, line: 112, size: 64, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1879, file: !1838, line: 114, baseType: !183, size: 16)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1879, file: !1838, line: 115, baseType: !1883, size: 48, offset: 16)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 48, elements: !1884)
!1884 = !{!1885}
!1885 = !DISubrange(count: 6)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1876, file: !1838, line: 121, baseType: !132, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1872, file: !1838, line: 123, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1838, line: 96, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1872, file: !1838, line: 124, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1838, line: 102, size: 192, elements: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1892, file: !1838, line: 103, baseType: !614, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1892, file: !1838, line: 104, baseType: !1491, size: 32, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1892, file: !1838, line: 105, baseType: !249, size: 8, offset: 160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1872, file: !1838, line: 125, baseType: !154, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1838, line: 241, baseType: !1899, size: 320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1838, line: 241, size: 320, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904, !1905}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1899, file: !1838, line: 242, baseType: !132, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1899, file: !1838, line: 243, baseType: !132, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1899, file: !1838, line: 244, baseType: !1888, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1899, file: !1838, line: 245, baseType: !1891, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1899, file: !1838, line: 246, baseType: !176, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 254, baseType: !1907, size: 256, offset: 1344)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 254, size: 256, elements: !1908)
!1908 = !{!1909, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1907, file: !1838, line: 255, baseType: !1910, size: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1838, line: 128, size: 256, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1910, file: !1838, line: 129, baseType: !131, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1910, file: !1838, line: 130, baseType: !1914, size: 256)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1417)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1838, line: 256, baseType: !1916, size: 256)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1838, line: 256, size: 256, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1916, file: !1838, line: 258, baseType: !476, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1916, file: !1838, line: 259, baseType: !1920, size: 128, offset: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1921, line: 22, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1920, file: !1921, line: 23, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1921, line: 23, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1920, file: !1921, line: 24, baseType: !132, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1837, file: !1838, line: 274, baseType: !1928, size: 64, offset: 1600)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1838, line: 170, size: 192, elements: !1930)
!1930 = !{!1931, !1940, !1941}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1929, file: !1838, line: 171, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1838, line: 165, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!133, !1836, !1936, !1938, !1836}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1929, file: !1838, line: 172, baseType: !1836, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1929, file: !1838, line: 173, baseType: !1888, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1808, file: !1809, line: 138, baseType: !1836, size: 64, offset: 768)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1808, file: !1809, line: 139, baseType: !1836, size: 64, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1808, file: !1809, line: 140, baseType: !1836, size: 64, offset: 896)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1808, file: !1809, line: 145, baseType: !1946, size: 64, offset: 960)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1948, line: 13, size: 896, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1947, file: !1948, line: 14, baseType: !1491, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1947, file: !1948, line: 15, baseType: !979, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1947, file: !1948, line: 16, baseType: !979, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1947, file: !1948, line: 21, baseType: !1003, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1947, file: !1948, line: 27, baseType: !132, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1947, file: !1948, line: 28, baseType: !132, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1947, file: !1948, line: 29, baseType: !1003, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1947, file: !1948, line: 32, baseType: !871, size: 128, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1947, file: !1948, line: 33, baseType: !676, size: 32, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1947, file: !1948, line: 37, baseType: !1003, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1947, file: !1948, line: 44, baseType: !1961, size: 256, offset: 640)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1962, line: 15, size: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !1962, line: 16, baseType: !1012)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1961, file: !1962, line: 18, baseType: !133, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1961, file: !1962, line: 19, baseType: !133, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1961, file: !1962, line: 20, baseType: !133, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1961, file: !1962, line: 21, baseType: !133, size: 32, offset: 96)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1961, file: !1962, line: 22, baseType: !132, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 23, baseType: !132, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1808, file: !1809, line: 146, baseType: !1972, size: 64, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !677, line: 18, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1808, file: !1809, line: 147, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1809, line: 25, size: 64, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1976, file: !1809, line: 26, baseType: !979, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1976, file: !1809, line: 27, baseType: !133, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1976, file: !1809, line: 28, baseType: !1981, offset: 64)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, elements: !1982)
!1982 = !{!1983}
!1983 = !DISubrange(count: 0)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 149, baseType: !1985, size: 128, offset: 1152)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 149, size: 128, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1985, file: !1809, line: 150, baseType: !133, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1985, file: !1809, line: 151, baseType: !614, size: 128, align: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1479, file: !1123, line: 926, baseType: !1806, size: 64, offset: 8576)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1479, file: !1123, line: 929, baseType: !1806, size: 64, offset: 8640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1479, file: !1123, line: 933, baseType: !1836, size: 64, offset: 8704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1479, file: !1123, line: 943, baseType: !1993, size: 128, offset: 8768)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !1994)
!1994 = !{!1995}
!1995 = !DISubrange(count: 16)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1479, file: !1123, line: 945, baseType: !1997, size: 64, offset: 8896)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1123, line: 49, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1479, file: !1123, line: 956, baseType: !2000, size: 64, offset: 8960)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1123, line: 45, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1479, file: !1123, line: 959, baseType: !2003, size: 64, offset: 9024)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1123, line: 959, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1479, file: !1123, line: 962, baseType: !2006, size: 64, offset: 9088)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1123, line: 66, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1479, file: !1123, line: 966, baseType: !2009, size: 64, offset: 9152)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2011, line: 35, flags: DIFlagFwdDecl)
!2011 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1479, file: !1123, line: 969, baseType: !2013, size: 64, offset: 9216)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2015, line: 82, size: 7296, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2052, !2061, !2062, !2064, !2065, !2066, !2069, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2099, !2100, !2107, !2108, !2109, !2110, !2111, !2112}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2014, file: !2015, line: 83, baseType: !1491, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2014, file: !2015, line: 84, baseType: !979, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2014, file: !2015, line: 85, baseType: !133, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2014, file: !2015, line: 86, baseType: !476, size: 128, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2014, file: !2015, line: 88, baseType: !1740, size: 128, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2014, file: !2015, line: 91, baseType: !1478, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2014, file: !2015, line: 94, baseType: !2024, size: 192, offset: 448)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2025, line: 30, size: 192, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2024, file: !2025, line: 31, baseType: !476, size: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2024, file: !2025, line: 32, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2030, line: 25, baseType: !2031)
!2030 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2030, line: 23, size: 64, elements: !2032)
!2032 = !{!2033}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2031, file: !2030, line: 24, baseType: !1629, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2014, file: !2015, line: 97, baseType: !867, size: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2014, file: !2015, line: 100, baseType: !133, size: 32, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2014, file: !2015, line: 106, baseType: !133, size: 32, offset: 736)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2014, file: !2015, line: 107, baseType: !1478, size: 64, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2014, file: !2015, line: 110, baseType: !133, size: 32, offset: 832)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2014, file: !2015, line: 111, baseType: !7, size: 32, offset: 864)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2014, file: !2015, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2014, file: !2015, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2014, file: !2015, line: 128, baseType: !133, size: 32, offset: 928)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2014, file: !2015, line: 129, baseType: !476, size: 128, offset: 960)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2014, file: !2015, line: 132, baseType: !1553, size: 512, offset: 1088)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2014, file: !2015, line: 133, baseType: !1561, size: 64, offset: 1600)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2014, file: !2015, line: 140, baseType: !2047, size: 256, offset: 1664)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 256, elements: !1828)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2015, line: 38, size: 128, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2048, file: !2015, line: 39, baseType: !275, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2048, file: !2015, line: 40, baseType: !275, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2014, file: !2015, line: 146, baseType: !2053, size: 192, offset: 1920)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2015, line: 66, size: 192, elements: !2054)
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2053, file: !2015, line: 67, baseType: !2056, size: 192)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2015, line: 47, size: 192, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2056, file: !2015, line: 48, baseType: !1005, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2056, file: !2015, line: 49, baseType: !1005, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2056, file: !2015, line: 50, baseType: !1005, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2014, file: !2015, line: 150, baseType: !1789, size: 640, offset: 2112)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2014, file: !2015, line: 153, baseType: !2063, size: 256, offset: 2752)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 256, elements: !1417)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2014, file: !2015, line: 159, baseType: !1730, size: 64, offset: 3008)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2014, file: !2015, line: 162, baseType: !133, size: 32, offset: 3072)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2014, file: !2015, line: 164, baseType: !2067, size: 64, offset: 3136)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2015, line: 164, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2014, file: !2015, line: 175, baseType: !2070, size: 32, offset: 3200)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !637, line: 805, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 798, size: 32, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2071, file: !637, line: 803, baseType: !636, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2071, file: !637, line: 804, baseType: !489, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2014, file: !2015, line: 176, baseType: !275, size: 64, offset: 3264)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2014, file: !2015, line: 176, baseType: !275, size: 64, offset: 3328)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2014, file: !2015, line: 176, baseType: !275, size: 64, offset: 3392)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2014, file: !2015, line: 176, baseType: !275, size: 64, offset: 3456)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2014, file: !2015, line: 177, baseType: !275, size: 64, offset: 3520)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2014, file: !2015, line: 178, baseType: !275, size: 64, offset: 3584)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2014, file: !2015, line: 179, baseType: !1777, size: 128, offset: 3648)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2014, file: !2015, line: 180, baseType: !132, size: 64, offset: 3776)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2014, file: !2015, line: 180, baseType: !132, size: 64, offset: 3840)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2014, file: !2015, line: 180, baseType: !132, size: 64, offset: 3904)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2014, file: !2015, line: 180, baseType: !132, size: 64, offset: 3968)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2014, file: !2015, line: 181, baseType: !132, size: 64, offset: 4032)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2014, file: !2015, line: 181, baseType: !132, size: 64, offset: 4096)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2014, file: !2015, line: 181, baseType: !132, size: 64, offset: 4160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2014, file: !2015, line: 181, baseType: !132, size: 64, offset: 4224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2014, file: !2015, line: 182, baseType: !132, size: 64, offset: 4288)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2014, file: !2015, line: 182, baseType: !132, size: 64, offset: 4352)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2014, file: !2015, line: 182, baseType: !132, size: 64, offset: 4416)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2014, file: !2015, line: 182, baseType: !132, size: 64, offset: 4480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2014, file: !2015, line: 183, baseType: !132, size: 64, offset: 4544)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2014, file: !2015, line: 183, baseType: !132, size: 64, offset: 4608)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2014, file: !2015, line: 184, baseType: !2097, offset: 4672)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2098, line: 12, elements: !503)
!2098 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2014, file: !2015, line: 192, baseType: !277, size: 64, offset: 4672)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2014, file: !2015, line: 203, baseType: !2101, size: 2048, offset: 4736)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 2048, elements: !1994)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2103, line: 43, size: 128, elements: !2104)
!2103 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2102, file: !2103, line: 44, baseType: !142, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2102, file: !2103, line: 45, baseType: !142, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2014, file: !2015, line: 220, baseType: !249, size: 8, offset: 6784)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2014, file: !2015, line: 221, baseType: !1467, size: 16, offset: 6800)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2014, file: !2015, line: 222, baseType: !1467, size: 16, offset: 6816)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2014, file: !2015, line: 224, baseType: !1236, size: 64, offset: 6848)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2014, file: !2015, line: 227, baseType: !1435, size: 192, offset: 6912)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2014, file: !2015, line: 233, baseType: !1435, size: 192, offset: 7104)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1479, file: !1123, line: 970, baseType: !2114, size: 64, offset: 9280)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2015, line: 20, size: 16576, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2115, file: !2015, line: 21, baseType: !489)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2115, file: !2015, line: 22, baseType: !1491, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2115, file: !2015, line: 23, baseType: !1740, size: 128, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2115, file: !2015, line: 24, baseType: !2121, size: 16384, offset: 192)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2122, size: 16384, elements: !534)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2025, line: 49, size: 256, elements: !2123)
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2122, file: !2025, line: 50, baseType: !2125, size: 256)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2025, line: 35, size: 256, elements: !2126)
!2126 = !{!2127, !2134, !2135, !2141}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2125, file: !2025, line: 37, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2129, line: 19, baseType: !2130)
!2129 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2129, line: 18, baseType: !2132)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !133}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2125, file: !2025, line: 38, baseType: !132, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2125, file: !2025, line: 44, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2129, line: 22, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2129, line: 21, baseType: !2139)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2125, file: !2025, line: 46, baseType: !2029, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1479, file: !1123, line: 971, baseType: !2029, size: 64, offset: 9344)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1479, file: !1123, line: 972, baseType: !2029, size: 64, offset: 9408)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1479, file: !1123, line: 974, baseType: !2029, size: 64, offset: 9472)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1479, file: !1123, line: 975, baseType: !2024, size: 192, offset: 9536)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1479, file: !1123, line: 976, baseType: !132, size: 64, offset: 9728)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1479, file: !1123, line: 977, baseType: !139, size: 64, offset: 9792)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1479, file: !1123, line: 978, baseType: !7, size: 32, offset: 9856)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1479, file: !1123, line: 980, baseType: !617, size: 64, offset: 9920)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1479, file: !1123, line: 989, baseType: !2151, size: 128, offset: 9984)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2152, line: 35, size: 128, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2151, file: !2152, line: 36, baseType: !133, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2151, file: !2152, line: 37, baseType: !979, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2151, file: !2152, line: 38, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2152, line: 23, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1479, file: !1123, line: 992, baseType: !275, size: 64, offset: 10112)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1479, file: !1123, line: 993, baseType: !275, size: 64, offset: 10176)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1479, file: !1123, line: 996, baseType: !489, offset: 10240)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1479, file: !1123, line: 999, baseType: !1012, offset: 10240)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1479, file: !1123, line: 1001, baseType: !2164, size: 64, offset: 10240)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1123, line: 636, size: 64, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2164, file: !1123, line: 637, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1479, file: !1123, line: 1005, baseType: !984, size: 128, offset: 10304)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1479, file: !1123, line: 1007, baseType: !1478, size: 64, offset: 10432)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1479, file: !1123, line: 1009, baseType: !2171, size: 64, offset: 10496)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1123, line: 1009, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1479, file: !1123, line: 1043, baseType: !131, size: 64, offset: 10560)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1479, file: !1123, line: 1046, baseType: !2175, size: 64, offset: 10624)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1123, line: 41, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1479, file: !1123, line: 1050, baseType: !2178, size: 64, offset: 10688)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1123, line: 42, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1479, file: !1123, line: 1054, baseType: !2181, size: 64, offset: 10752)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1123, line: 55, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1479, file: !1123, line: 1056, baseType: !2184, size: 64, offset: 10816)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1123, line: 40, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1479, file: !1123, line: 1058, baseType: !2187, size: 64, offset: 10880)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2189, line: 99, size: 704, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2216, !2217}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2188, file: !2189, line: 100, baseType: !1003, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2188, file: !2189, line: 101, baseType: !979, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2188, file: !2189, line: 102, baseType: !979, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2188, file: !2189, line: 105, baseType: !489, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2188, file: !2189, line: 107, baseType: !138, size: 16, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2188, file: !2189, line: 109, baseType: !971, size: 128, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2188, file: !2189, line: 110, baseType: !2198, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2189, line: 73, size: 448, elements: !2200)
!2200 = !{!2201, !2204, !2205, !2210, !2215}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2199, file: !2189, line: 74, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2189, line: 74, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2199, file: !2189, line: 75, baseType: !2187, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2189, line: 83, baseType: !2206, size: 128, offset: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2189, line: 83, size: 128, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2206, file: !2189, line: 84, baseType: !476, size: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2206, file: !2189, line: 85, baseType: !1197, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2189, line: 87, baseType: !2211, size: 128, offset: 256)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2189, line: 87, size: 128, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2211, file: !2189, line: 88, baseType: !871, size: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2211, file: !2189, line: 89, baseType: !614, size: 128, align: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2199, file: !2189, line: 92, baseType: !7, size: 32, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2188, file: !2189, line: 111, baseType: !867, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2188, file: !2189, line: 113, baseType: !2218, size: 256, offset: 448)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2219, line: 102, size: 256, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2218, file: !2219, line: 103, baseType: !1003, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2218, file: !2219, line: 104, baseType: !476, size: 128, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2218, file: !2219, line: 105, baseType: !2224, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2219, line: 21, baseType: !2225)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1479, file: !1123, line: 1061, baseType: !2230, size: 64, offset: 10944)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1123, line: 43, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1479, file: !1123, line: 1064, baseType: !132, size: 64, offset: 11008)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1479, file: !1123, line: 1065, baseType: !2234, size: 64, offset: 11072)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2025, line: 14, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2025, line: 12, size: 384, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2025, line: 13, baseType: !2239, size: 384)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2025, line: 13, size: 384, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2239, file: !2025, line: 13, baseType: !133, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2239, file: !2025, line: 13, baseType: !133, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2239, file: !2025, line: 13, baseType: !133, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2239, file: !2025, line: 13, baseType: !2245, size: 256, offset: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2246, line: 32, size: 256, elements: !2247)
!2246 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2253, !2266, !2272, !2281, !2301, !2306}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2245, file: !2246, line: 37, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 34, size: 64, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2249, file: !2246, line: 35, baseType: !1719, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2249, file: !2246, line: 36, baseType: !682, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2245, file: !2246, line: 45, baseType: !2254, size: 192)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 40, size: 192, elements: !2255)
!2255 = !{!2256, !2258, !2259, !2265}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2254, file: !2246, line: 41, baseType: !2257, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !141, line: 95, baseType: !133)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2254, file: !2246, line: 42, baseType: !133, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2254, file: !2246, line: 43, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2246, line: 11, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2246, line: 8, size: 64, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2261, file: !2246, line: 9, baseType: !133, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2261, file: !2246, line: 10, baseType: !131, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2254, file: !2246, line: 44, baseType: !133, size: 32, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2245, file: !2246, line: 52, baseType: !2267, size: 128)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 48, size: 128, elements: !2268)
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2267, file: !2246, line: 49, baseType: !1719, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2267, file: !2246, line: 50, baseType: !682, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2267, file: !2246, line: 51, baseType: !2260, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2245, file: !2246, line: 61, baseType: !2273, size: 256)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 55, size: 256, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2280}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2273, file: !2246, line: 56, baseType: !1719, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2273, file: !2246, line: 57, baseType: !682, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2273, file: !2246, line: 58, baseType: !133, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2273, file: !2246, line: 59, baseType: !2279, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !141, line: 94, baseType: !562)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2273, file: !2246, line: 60, baseType: !2279, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2245, file: !2246, line: 95, baseType: !2282, size: 256)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 64, size: 256, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2282, file: !2246, line: 65, baseType: !131, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !2246, line: 77, baseType: !2286, size: 192, offset: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2282, file: !2246, line: 77, size: 192, elements: !2287)
!2287 = !{!2288, !2289, !2296}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2286, file: !2246, line: 82, baseType: !1467, size: 16)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2286, file: !2246, line: 88, baseType: !2290, size: 192)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2246, line: 84, size: 192, elements: !2291)
!2291 = !{!2292, !2294, !2295}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2290, file: !2246, line: 85, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1591)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2290, file: !2246, line: 86, baseType: !131, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2290, file: !2246, line: 87, baseType: !131, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2286, file: !2246, line: 93, baseType: !2297, size: 96)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2246, line: 90, size: 96, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2297, file: !2246, line: 91, baseType: !2293, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2297, file: !2246, line: 92, baseType: !272, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2245, file: !2246, line: 101, baseType: !2302, size: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 98, size: 128, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2302, file: !2246, line: 99, baseType: !563, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2302, file: !2246, line: 100, baseType: !133, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2245, file: !2246, line: 108, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2245, file: !2246, line: 104, size: 128, elements: !2308)
!2308 = !{!2309, !2310, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2307, file: !2246, line: 105, baseType: !131, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2307, file: !2246, line: 106, baseType: !133, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2307, file: !2246, line: 107, baseType: !7, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1479, file: !1123, line: 1067, baseType: !2097, offset: 11136)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1479, file: !1123, line: 1099, baseType: !2314, size: 64, offset: 11136)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1123, line: 56, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1479, file: !1123, line: 1103, baseType: !476, size: 128, offset: 11200)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1479, file: !1123, line: 1104, baseType: !2318, size: 64, offset: 11328)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1123, line: 46, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1479, file: !1123, line: 1105, baseType: !1435, size: 192, offset: 11392)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1479, file: !1123, line: 1106, baseType: !7, size: 32, offset: 11584)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1479, file: !1123, line: 1109, baseType: !2323, size: 128, offset: 11648)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2324, size: 128, elements: !1828)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1123, line: 51, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1479, file: !1123, line: 1110, baseType: !1435, size: 192, offset: 11776)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1479, file: !1123, line: 1111, baseType: !476, size: 128, offset: 11968)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1479, file: !1123, line: 1173, baseType: !2329, size: 64, offset: 12096)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2331, line: 62, size: 256, align: 256, elements: !2332)
!2331 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333, !2334, !2335, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2330, file: !2331, line: 75, baseType: !272, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2330, file: !2331, line: 90, baseType: !272, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2330, file: !2331, line: 124, baseType: !2336, size: 64, offset: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2330, file: !2331, line: 109, size: 64, elements: !2337)
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2336, file: !2331, line: 110, baseType: !276, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2336, file: !2331, line: 112, baseType: !276, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !2331, line: 144, baseType: !272, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1479, file: !1123, line: 1174, baseType: !271, size: 32, offset: 12160)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1479, file: !1123, line: 1179, baseType: !132, size: 64, offset: 12224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1479, file: !1123, line: 1182, baseType: !2344, size: 128, offset: 12288)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1413, line: 76, size: 128, elements: !2345)
!2345 = !{!2346, !2351, !2352}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2344, file: !1413, line: 85, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2348, line: 7, size: 64, elements: !2349)
!2348 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2347, file: !2348, line: 12, baseType: !1626, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2344, file: !1413, line: 88, baseType: !249, size: 8, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2344, file: !1413, line: 95, baseType: !249, size: 8, offset: 72)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1123, line: 1184, baseType: !2354, size: 128, offset: 12416)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !1123, line: 1184, size: 128, elements: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2354, file: !1123, line: 1185, baseType: !1491, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2354, file: !1123, line: 1186, baseType: !614, size: 128, align: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1479, file: !1123, line: 1190, baseType: !1121, size: 64, offset: 12544)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1479, file: !1123, line: 1192, baseType: !2360, size: 128, offset: 12608)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1413, line: 64, size: 128, elements: !2361)
!2361 = !{!2362, !2363, !2364}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2360, file: !1413, line: 65, baseType: !953, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2360, file: !1413, line: 67, baseType: !272, size: 32, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2360, file: !1413, line: 68, baseType: !272, size: 32, offset: 96)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1479, file: !1123, line: 1206, baseType: !133, size: 32, offset: 12736)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1479, file: !1123, line: 1207, baseType: !133, size: 32, offset: 12768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1479, file: !1123, line: 1209, baseType: !132, size: 64, offset: 12800)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1479, file: !1123, line: 1219, baseType: !275, size: 64, offset: 12864)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1479, file: !1123, line: 1220, baseType: !275, size: 64, offset: 12928)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1479, file: !1123, line: 1317, baseType: !133, size: 32, offset: 12992)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1479, file: !1123, line: 1319, baseType: !1478, size: 64, offset: 13056)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1479, file: !1123, line: 1322, baseType: !2373, size: 64, offset: 13120)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2375, line: 56, size: 512, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2374, file: !2375, line: 57, baseType: !2373, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2374, file: !2375, line: 58, baseType: !131, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2374, file: !2375, line: 59, baseType: !132, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !2375, line: 60, baseType: !132, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2374, file: !2375, line: 61, baseType: !1052, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2374, file: !2375, line: 62, baseType: !7, size: 32, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2374, file: !2375, line: 63, baseType: !357, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2374, file: !2375, line: 64, baseType: !2385, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1479, file: !1123, line: 1326, baseType: !1491, size: 32, offset: 13184)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1479, file: !1123, line: 1342, baseType: !131, size: 64, offset: 13248)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1479, file: !1123, line: 1343, baseType: !276, size: 64, offset: 13312)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1479, file: !1123, line: 1344, baseType: !275, size: 64, offset: 13376)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1479, file: !1123, line: 1345, baseType: !276, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1479, file: !1123, line: 1346, baseType: !276, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1479, file: !1123, line: 1347, baseType: !276, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1479, file: !1123, line: 1348, baseType: !614, size: 128, align: 64, offset: 13504)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1479, file: !1123, line: 1358, baseType: !2396, size: 34816, offset: 13824)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2397, line: 485, size: 34816, elements: !2398)
!2397 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2398 = !{!2399, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2428, !2429, !2430, !2431, !2432, !2433, !2436, !2437, !2438}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2396, file: !2397, line: 487, baseType: !2400, size: 192)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2401, size: 192, elements: !530)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2402, line: 16, size: 64, elements: !2403)
!2402 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2401, file: !2402, line: 17, baseType: !183, size: 16)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2401, file: !2402, line: 18, baseType: !183, size: 16, offset: 16)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2401, file: !2402, line: 19, baseType: !183, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2401, file: !2402, line: 19, baseType: !183, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2401, file: !2402, line: 19, baseType: !183, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2401, file: !2402, line: 19, baseType: !183, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2401, file: !2402, line: 19, baseType: !183, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2401, file: !2402, line: 20, baseType: !183, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2401, file: !2402, line: 20, baseType: !183, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2401, file: !2402, line: 20, baseType: !183, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2401, file: !2402, line: 20, baseType: !183, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2401, file: !2402, line: 20, baseType: !183, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2401, file: !2402, line: 20, baseType: !183, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2396, file: !2397, line: 491, baseType: !132, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2396, file: !2397, line: 495, baseType: !138, size: 16, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2396, file: !2397, line: 496, baseType: !138, size: 16, offset: 272)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2396, file: !2397, line: 497, baseType: !138, size: 16, offset: 288)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2396, file: !2397, line: 498, baseType: !138, size: 16, offset: 304)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2396, file: !2397, line: 502, baseType: !132, size: 64, offset: 320)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2396, file: !2397, line: 503, baseType: !132, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2396, file: !2397, line: 514, baseType: !2425, size: 256, offset: 448)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2426, size: 256, elements: !1417)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2397, line: 483, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2396, file: !2397, line: 516, baseType: !132, size: 64, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2396, file: !2397, line: 518, baseType: !132, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2396, file: !2397, line: 520, baseType: !132, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2396, file: !2397, line: 521, baseType: !132, size: 64, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2396, file: !2397, line: 522, baseType: !132, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2396, file: !2397, line: 528, baseType: !2434, size: 64, offset: 1024)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2397, line: 10, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2396, file: !2397, line: 535, baseType: !132, size: 64, offset: 1088)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2396, file: !2397, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2396, file: !2397, line: 540, baseType: !2439, size: 33280, offset: 1536)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2440, line: 317, size: 33280, elements: !2441)
!2440 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2439, file: !2440, line: 330, baseType: !7, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2439, file: !2440, line: 337, baseType: !132, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2439, file: !2440, line: 348, baseType: !2445, size: 32768, offset: 512)
!2445 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2440, line: 304, size: 32768, elements: !2446)
!2446 = !{!2447, !2462, !2501, !2551, !2564}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2445, file: !2440, line: 305, baseType: !2448, size: 896)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2440, line: 12, size: 896, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2461}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2448, file: !2440, line: 13, baseType: !271, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2448, file: !2440, line: 14, baseType: !271, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2448, file: !2440, line: 15, baseType: !271, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2448, file: !2440, line: 16, baseType: !271, size: 32, offset: 96)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2448, file: !2440, line: 17, baseType: !271, size: 32, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2448, file: !2440, line: 18, baseType: !271, size: 32, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2448, file: !2440, line: 19, baseType: !271, size: 32, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2448, file: !2440, line: 22, baseType: !2458, size: 640, offset: 224)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 640, elements: !2459)
!2459 = !{!2460}
!2460 = !DISubrange(count: 20)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2448, file: !2440, line: 25, baseType: !271, size: 32, offset: 864)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2445, file: !2440, line: 306, baseType: !2463, size: 4096, align: 128)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2440, line: 34, size: 4096, align: 128, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2484, !2485, !2486, !2490, !2492, !2496}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2463, file: !2440, line: 35, baseType: !183, size: 16)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2463, file: !2440, line: 36, baseType: !183, size: 16, offset: 16)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2463, file: !2440, line: 37, baseType: !183, size: 16, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2463, file: !2440, line: 38, baseType: !183, size: 16, offset: 48)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !2440, line: 39, baseType: !2470, size: 128, offset: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !2440, line: 39, size: 128, elements: !2471)
!2471 = !{!2472, !2477}
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !2440, line: 40, baseType: !2473, size: 128)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !2440, line: 40, size: 128, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2473, file: !2440, line: 41, baseType: !275, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2473, file: !2440, line: 42, baseType: !275, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !2440, line: 44, baseType: !2478, size: 128)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !2440, line: 44, size: 128, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2478, file: !2440, line: 45, baseType: !271, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2478, file: !2440, line: 46, baseType: !271, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2478, file: !2440, line: 47, baseType: !271, size: 32, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2478, file: !2440, line: 48, baseType: !271, size: 32, offset: 96)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2463, file: !2440, line: 51, baseType: !271, size: 32, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2463, file: !2440, line: 52, baseType: !271, size: 32, offset: 224)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2463, file: !2440, line: 55, baseType: !2487, size: 1024, offset: 256)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 1024, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2463, file: !2440, line: 58, baseType: !2491, size: 2048, offset: 1280)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, elements: !534)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2463, file: !2440, line: 60, baseType: !2493, size: 384, offset: 3328)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !2494)
!2494 = !{!2495}
!2495 = !DISubrange(count: 12)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !2440, line: 62, baseType: !2497, size: 384, offset: 3712)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !2440, line: 62, size: 384, elements: !2498)
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2497, file: !2440, line: 63, baseType: !2493, size: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2497, file: !2440, line: 64, baseType: !2493, size: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2445, file: !2440, line: 307, baseType: !2502, size: 1088)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2440, line: 79, size: 1088, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2550}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2502, file: !2440, line: 80, baseType: !271, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2502, file: !2440, line: 81, baseType: !271, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2502, file: !2440, line: 82, baseType: !271, size: 32, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2502, file: !2440, line: 83, baseType: !271, size: 32, offset: 96)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2502, file: !2440, line: 84, baseType: !271, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2502, file: !2440, line: 85, baseType: !271, size: 32, offset: 160)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2502, file: !2440, line: 86, baseType: !271, size: 32, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2502, file: !2440, line: 88, baseType: !2458, size: 640, offset: 224)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2502, file: !2440, line: 89, baseType: !192, size: 8, offset: 864)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2502, file: !2440, line: 90, baseType: !192, size: 8, offset: 872)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2502, file: !2440, line: 91, baseType: !192, size: 8, offset: 880)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2502, file: !2440, line: 92, baseType: !192, size: 8, offset: 888)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2502, file: !2440, line: 93, baseType: !192, size: 8, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2502, file: !2440, line: 94, baseType: !192, size: 8, offset: 904)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2502, file: !2440, line: 95, baseType: !2519, size: 64, offset: 960)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2521, line: 11, size: 128, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2524}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2520, file: !2521, line: 12, baseType: !563, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2520, file: !2521, line: 13, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2527, line: 56, size: 1344, elements: !2528)
!2527 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2526, file: !2527, line: 61, baseType: !132, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2526, file: !2527, line: 62, baseType: !132, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2526, file: !2527, line: 63, baseType: !132, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2526, file: !2527, line: 64, baseType: !132, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2526, file: !2527, line: 65, baseType: !132, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2526, file: !2527, line: 66, baseType: !132, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2526, file: !2527, line: 68, baseType: !132, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2526, file: !2527, line: 69, baseType: !132, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2526, file: !2527, line: 70, baseType: !132, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2526, file: !2527, line: 71, baseType: !132, size: 64, offset: 576)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2526, file: !2527, line: 72, baseType: !132, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2526, file: !2527, line: 73, baseType: !132, size: 64, offset: 704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2526, file: !2527, line: 74, baseType: !132, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2526, file: !2527, line: 75, baseType: !132, size: 64, offset: 832)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2526, file: !2527, line: 76, baseType: !132, size: 64, offset: 896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2526, file: !2527, line: 81, baseType: !132, size: 64, offset: 960)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2526, file: !2527, line: 83, baseType: !132, size: 64, offset: 1024)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2526, file: !2527, line: 84, baseType: !132, size: 64, offset: 1088)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2526, file: !2527, line: 85, baseType: !132, size: 64, offset: 1152)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2526, file: !2527, line: 86, baseType: !132, size: 64, offset: 1216)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2526, file: !2527, line: 87, baseType: !132, size: 64, offset: 1280)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2502, file: !2440, line: 96, baseType: !271, size: 32, offset: 1024)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2445, file: !2440, line: 308, baseType: !2552, size: 4608, align: 512)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2440, line: 289, size: 4608, align: 512, elements: !2553)
!2553 = !{!2554, !2555, !2562}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2552, file: !2440, line: 290, baseType: !2463, size: 4096, align: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2552, file: !2440, line: 291, baseType: !2556, size: 512, offset: 4096)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2440, line: 268, size: 512, elements: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2556, file: !2440, line: 269, baseType: !275, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2556, file: !2440, line: 270, baseType: !275, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2556, file: !2440, line: 271, baseType: !2561, size: 384, offset: 128)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 384, elements: !1884)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2552, file: !2440, line: 292, baseType: !2563, offset: 4608)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !1982)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2445, file: !2440, line: 309, baseType: !2565, size: 32768)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 32768, elements: !2566)
!2566 = !{!2567}
!2567 = !DISubrange(count: 4096)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1475, file: !955, line: 378, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1471, file: !955, line: 384, baseType: !1761, size: 192, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1240, file: !955, line: 500, baseType: !489, offset: 6656)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1240, file: !955, line: 501, baseType: !2573, size: 64, offset: 6656)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !955, line: 387, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1240, file: !955, line: 516, baseType: !1972, size: 64, offset: 6720)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1240, file: !955, line: 519, baseType: !601, size: 64, offset: 6784)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1240, file: !955, line: 521, baseType: !2578, size: 64, offset: 6848)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !955, line: 521, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1240, file: !955, line: 545, baseType: !979, size: 32, offset: 6912)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1240, file: !955, line: 548, baseType: !249, size: 8, offset: 6944)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1240, file: !955, line: 550, baseType: !2583, offset: 6952)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2584, line: 142, elements: !503)
!2584 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1240, file: !955, line: 554, baseType: !2218, size: 256, offset: 6976)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1240, file: !955, line: 557, baseType: !271, size: 32, offset: 7232)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1237, file: !955, line: 565, baseType: !2588, offset: 7296)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, elements: !2589)
!2589 = !{!2590}
!2590 = !DISubrange(count: -1)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1233, file: !955, line: 151, baseType: !979, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1226, file: !955, line: 156, baseType: !489, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !955, line: 159, baseType: !2594, size: 128)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !955, line: 159, size: 128, elements: !2595)
!2595 = !{!2596, !2660}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2594, file: !955, line: 161, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2599)
!2599 = !{!2600, !2610, !2631, !2632, !2633, !2634, !2635, !2647, !2648, !2649}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2598, file: !31, line: 111, baseType: !2601, size: 384)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2602)
!2602 = !{!2603, !2605, !2606, !2607, !2608, !2609}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2601, file: !31, line: 20, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2601, file: !31, line: 21, baseType: !2604, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2601, file: !31, line: 22, baseType: !2604, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2601, file: !31, line: 23, baseType: !132, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2601, file: !31, line: 24, baseType: !132, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2601, file: !31, line: 25, baseType: !132, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2598, file: !31, line: 112, baseType: !2611, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2613, line: 105, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2612, file: !2613, line: 110, baseType: !132, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2612, file: !2613, line: 118, baseType: !2617, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2613, line: 95, size: 448, elements: !2619)
!2619 = !{!2620, !2621, !2626, !2627, !2628, !2629, !2630}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2618, file: !2613, line: 96, baseType: !1003, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2618, file: !2613, line: 97, baseType: !2622, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2613, line: 60, baseType: !2624)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !2611}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2618, file: !2613, line: 98, baseType: !2622, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2618, file: !2613, line: 99, baseType: !249, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2618, file: !2613, line: 100, baseType: !249, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2618, file: !2613, line: 101, baseType: !614, size: 128, align: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2618, file: !2613, line: 102, baseType: !2611, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2598, file: !31, line: 113, baseType: !2612, size: 128, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2598, file: !31, line: 114, baseType: !1761, size: 192, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2598, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2598, file: !31, line: 117, baseType: !2636, size: 64, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2645, !2646}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2638, file: !31, line: 73, baseType: !1071, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2638, file: !31, line: 78, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2597}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2638, file: !31, line: 83, baseType: !2642, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2638, file: !31, line: 89, baseType: !1289, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2598, file: !31, line: 118, baseType: !131, size: 64, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2598, file: !31, line: 119, baseType: !133, size: 32, offset: 960)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2598, file: !31, line: 120, baseType: !2650, size: 128, offset: 1024)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2598, file: !31, line: 120, size: 128, elements: !2651)
!2651 = !{!2652, !2658}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2650, file: !31, line: 121, baseType: !2653, size: 128)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2654, line: 6, size: 128, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2653, file: !2654, line: 7, baseType: !275, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2653, file: !2654, line: 8, baseType: !275, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2650, file: !31, line: 122, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, elements: !1982)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2594, file: !955, line: 162, baseType: !131, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !959, file: !955, line: 176, baseType: !614, size: 128, align: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 179, baseType: !2663, size: 32, offset: 384)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 179, size: 32, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2668}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2663, file: !955, line: 184, baseType: !979, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2663, file: !955, line: 192, baseType: !7, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2663, file: !955, line: 194, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2663, file: !955, line: 195, baseType: !133, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !954, file: !955, line: 199, baseType: !979, size: 32, offset: 416)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !889, file: !44, line: 1964, baseType: !2671, size: 64, offset: 1344)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!563, !831, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2676, line: 12, size: 256, elements: !2677)
!2676 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2677 = !{!2678, !2679, !2680, !2681, !2682}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2675, file: !2676, line: 13, baseType: !129, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2675, file: !2676, line: 16, baseType: !133, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2675, file: !2676, line: 23, baseType: !132, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2675, file: !2676, line: 30, baseType: !132, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2675, file: !2676, line: 33, baseType: !2683, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !955, line: 27, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !889, file: !44, line: 1966, baseType: !2671, size: 64, offset: 1408)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !832, file: !44, line: 1424, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2690)
!2690 = !{!2691, !2737, !2741, !2745, !2746, !2747, !2748, !2749, !2754, !2759, !2763}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2689, file: !38, line: 323, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!133, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2722, !2723, !2724}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2696, file: !38, line: 295, baseType: !871, size: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2696, file: !38, line: 296, baseType: !476, size: 128, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2696, file: !38, line: 297, baseType: !476, size: 128, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2696, file: !38, line: 298, baseType: !476, size: 128, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2696, file: !38, line: 299, baseType: !1435, size: 192, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2696, file: !38, line: 300, baseType: !489, offset: 704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2696, file: !38, line: 301, baseType: !979, size: 32, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2696, file: !38, line: 302, baseType: !831, size: 64, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2696, file: !38, line: 303, baseType: !2707, size: 64, offset: 832)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2708)
!2708 = !{!2709, !2721}
!2709 = !DIDerivedType(tag: DW_TAG_member, scope: !2707, file: !38, line: 69, baseType: !2710, size: 32)
!2710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2707, file: !38, line: 69, size: 32, elements: !2711)
!2711 = !{!2712, !2713, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2710, file: !38, line: 70, baseType: !676, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2710, file: !38, line: 71, baseType: !684, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2710, file: !38, line: 72, baseType: !2715, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2716, line: 24, baseType: !2717)
!2716 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2716, line: 22, size: 32, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2717, file: !2716, line: 23, baseType: !2720, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2716, line: 20, baseType: !682)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2696, file: !38, line: 304, baseType: !143, size: 64, offset: 896)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2696, file: !38, line: 305, baseType: !132, size: 64, offset: 960)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2696, file: !38, line: 306, baseType: !2725, size: 576, offset: 1024)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2726)
!2726 = !{!2727, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2725, file: !38, line: 206, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !145)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2725, file: !38, line: 207, baseType: !2728, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2725, file: !38, line: 208, baseType: !2728, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2725, file: !38, line: 209, baseType: !2728, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2725, file: !38, line: 210, baseType: !2728, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2725, file: !38, line: 211, baseType: !2728, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2725, file: !38, line: 212, baseType: !2728, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2725, file: !38, line: 213, baseType: !772, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2725, file: !38, line: 214, baseType: !772, size: 64, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2689, file: !38, line: 324, baseType: !2738, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2695, !831, !133}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2689, file: !38, line: 325, baseType: !2742, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2695}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2689, file: !38, line: 326, baseType: !2692, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2689, file: !38, line: 327, baseType: !2692, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2689, file: !38, line: 328, baseType: !2692, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2689, file: !38, line: 329, baseType: !917, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2689, file: !38, line: 332, baseType: !2750, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !670}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2689, file: !38, line: 333, baseType: !2755, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!133, !670, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2689, file: !38, line: 335, baseType: !2760, size: 64, offset: 576)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!133, !670, !2753}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2689, file: !38, line: 337, baseType: !2764, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!133, !831, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !832, file: !44, line: 1425, baseType: !2769, size: 64, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2772)
!2772 = !{!2773, !2777, !2778, !2782, !2783, !2784, !2799, !2822, !2826, !2827, !2850}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2771, file: !38, line: 429, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!133, !831, !133, !133, !782}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2771, file: !38, line: 430, baseType: !917, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2771, file: !38, line: 431, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!133, !831, !7}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2771, file: !38, line: 432, baseType: !2779, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2771, file: !38, line: 433, baseType: !917, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2771, file: !38, line: 434, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!133, !831, !133, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2789, file: !38, line: 416, baseType: !133, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2789, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2789, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2789, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2789, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2789, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2789, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2789, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2771, file: !38, line: 435, baseType: !2800, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!133, !831, !2707, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2804, file: !38, line: 344, baseType: !133, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2804, file: !38, line: 345, baseType: !275, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2804, file: !38, line: 346, baseType: !275, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2804, file: !38, line: 347, baseType: !275, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2804, file: !38, line: 348, baseType: !275, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2804, file: !38, line: 349, baseType: !275, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2804, file: !38, line: 350, baseType: !275, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2804, file: !38, line: 351, baseType: !1009, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2804, file: !38, line: 353, baseType: !1009, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2804, file: !38, line: 354, baseType: !133, size: 32, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2804, file: !38, line: 355, baseType: !133, size: 32, offset: 608)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2804, file: !38, line: 356, baseType: !275, size: 64, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2804, file: !38, line: 357, baseType: !275, size: 64, offset: 704)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2804, file: !38, line: 358, baseType: !275, size: 64, offset: 768)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2804, file: !38, line: 359, baseType: !1009, size: 64, offset: 832)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2804, file: !38, line: 360, baseType: !133, size: 32, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2771, file: !38, line: 436, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!133, !831, !2767, !2803}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2771, file: !38, line: 438, baseType: !2800, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2771, file: !38, line: 439, baseType: !2828, size: 64, offset: 576)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!133, !831, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2832, file: !38, line: 410, baseType: !7, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2832, file: !38, line: 411, baseType: !2836, size: 1344, offset: 64)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2837, size: 1344, elements: !530)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2849}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2837, file: !38, line: 396, baseType: !7, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2837, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2837, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2837, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2837, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2837, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2837, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2837, file: !38, line: 404, baseType: !277, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2837, file: !38, line: 405, baseType: !2848, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !130, line: 126, baseType: !275)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2837, file: !38, line: 406, baseType: !2848, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2771, file: !38, line: 440, baseType: !2779, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !832, file: !44, line: 1426, baseType: !2852, size: 64, offset: 576)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !832, file: !44, line: 1427, baseType: !132, size: 64, offset: 640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !832, file: !44, line: 1428, baseType: !132, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !832, file: !44, line: 1429, baseType: !132, size: 64, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !832, file: !44, line: 1430, baseType: !631, size: 64, offset: 832)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !832, file: !44, line: 1431, baseType: !999, size: 256, offset: 896)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !832, file: !44, line: 1432, baseType: !133, size: 32, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !832, file: !44, line: 1433, baseType: !979, size: 32, offset: 1184)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !832, file: !44, line: 1437, baseType: !2863, size: 64, offset: 1216)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2866)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !832, file: !44, line: 1449, baseType: !2868, size: 64, offset: 1280)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !647, line: 34, size: 64, elements: !2869)
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2868, file: !647, line: 35, baseType: !650, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !832, file: !44, line: 1450, baseType: !476, size: 128, offset: 1344)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !832, file: !44, line: 1451, baseType: !2873, size: 64, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !832, file: !44, line: 1452, baseType: !2184, size: 64, offset: 1536)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !832, file: !44, line: 1453, baseType: !299, size: 64, offset: 1600)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !832, file: !44, line: 1454, baseType: !871, size: 128, offset: 1664)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !832, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !832, file: !44, line: 1456, baseType: !2880, size: 2432, offset: 1856)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2886, !2918}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2880, file: !38, line: 519, baseType: !7, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2880, file: !38, line: 520, baseType: !999, size: 256, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2880, file: !38, line: 521, baseType: !2885, size: 192, offset: 320)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 192, elements: !530)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2880, file: !38, line: 522, baseType: !2887, size: 1728, offset: 512)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2888, size: 1728, elements: !530)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2889)
!2889 = !{!2890, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2888, file: !38, line: 223, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2893)
!2893 = !{!2894, !2895, !2908, !2909}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2892, file: !38, line: 444, baseType: !133, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2892, file: !38, line: 445, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2898)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2898, file: !38, line: 311, baseType: !917, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2898, file: !38, line: 312, baseType: !917, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2898, file: !38, line: 313, baseType: !917, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2898, file: !38, line: 314, baseType: !917, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2898, file: !38, line: 315, baseType: !2692, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2898, file: !38, line: 316, baseType: !2692, size: 64, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2898, file: !38, line: 317, baseType: !2692, size: 64, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2898, file: !38, line: 318, baseType: !2764, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2892, file: !38, line: 446, baseType: !158, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2892, file: !38, line: 447, baseType: !2891, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2888, file: !38, line: 224, baseType: !133, size: 32, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2888, file: !38, line: 226, baseType: !476, size: 128, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2888, file: !38, line: 227, baseType: !132, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2888, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2888, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2888, file: !38, line: 230, baseType: !2728, size: 64, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2888, file: !38, line: 231, baseType: !2728, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2888, file: !38, line: 232, baseType: !131, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2880, file: !38, line: 523, baseType: !2919, size: 192, offset: 2240)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, size: 192, elements: !530)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !832, file: !44, line: 1458, baseType: !2921, size: 2112, offset: 4288)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2922)
!2922 = !{!2923, !2924, !2925}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2921, file: !44, line: 1411, baseType: !133, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2921, file: !44, line: 1412, baseType: !1740, size: 128, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2921, file: !44, line: 1413, baseType: !2926, size: 1920, offset: 192)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 1920, elements: !530)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2928, line: 12, size: 640, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2929 = !{!2930, !2938, !2939, !2944, !2945}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2927, file: !2928, line: 13, baseType: !2931, size: 320)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2932, line: 17, size: 320, elements: !2933)
!2932 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2931, file: !2932, line: 18, baseType: !133, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2931, file: !2932, line: 19, baseType: !133, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2931, file: !2932, line: 20, baseType: !1740, size: 128, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2931, file: !2932, line: 22, baseType: !614, size: 128, align: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2927, file: !2928, line: 14, baseType: !214, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2927, file: !2928, line: 15, baseType: !2940, size: 64, offset: 384)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2941, line: 16, size: 64, elements: !2942)
!2941 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2940, file: !2941, line: 17, baseType: !1478, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2927, file: !2928, line: 16, baseType: !1740, size: 128, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2927, file: !2928, line: 17, baseType: !979, size: 32, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !832, file: !44, line: 1465, baseType: !131, size: 64, offset: 6400)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !832, file: !44, line: 1468, baseType: !271, size: 32, offset: 6464)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !832, file: !44, line: 1470, baseType: !772, size: 64, offset: 6528)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !832, file: !44, line: 1471, baseType: !772, size: 64, offset: 6592)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !832, file: !44, line: 1473, baseType: !272, size: 32, offset: 6656)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !832, file: !44, line: 1474, baseType: !2952, size: 64, offset: 6720)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !832, file: !44, line: 1477, baseType: !2955, size: 256, offset: 6784)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !2488)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !832, file: !44, line: 1478, baseType: !2957, size: 128, offset: 7040)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2958, line: 18, baseType: !2959)
!2958 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2958, line: 16, size: 128, elements: !2960)
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2959, file: !2958, line: 17, baseType: !2962, size: 128)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !1994)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !832, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !832, file: !44, line: 1481, baseType: !2965, size: 32, offset: 7200)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !130, line: 150, baseType: !7)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !832, file: !44, line: 1487, baseType: !1435, size: 192, offset: 7232)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !832, file: !44, line: 1493, baseType: !154, size: 64, offset: 7424)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !832, file: !44, line: 1495, baseType: !2969, size: 64, offset: 7488)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2971)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !629, line: 135, size: 1024, align: 512, elements: !2972)
!2972 = !{!2973, !2977, !2978, !2985, !2991, !2995, !2999, !3003, !3004, !3008, !3012, !3017, !3021}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2971, file: !629, line: 136, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!133, !631, !7}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2971, file: !629, line: 137, baseType: !2974, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2971, file: !629, line: 138, baseType: !2979, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!133, !2982, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2971, file: !629, line: 139, baseType: !2986, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!133, !2982, !7, !154, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2971, file: !629, line: 141, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!133, !2982}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2971, file: !629, line: 142, baseType: !2996, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!133, !631}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2971, file: !629, line: 143, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !631}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2971, file: !629, line: 144, baseType: !3000, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2971, file: !629, line: 145, baseType: !3005, size: 64, offset: 512)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !631, !670}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2971, file: !629, line: 146, baseType: !3009, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!176, !631, !176, !133}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2971, file: !629, line: 147, baseType: !3013, size: 64, offset: 640)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!627, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2971, file: !629, line: 148, baseType: !3018, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!133, !782, !249}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2971, file: !629, line: 149, baseType: !3022, size: 64, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!631, !631, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !832, file: !44, line: 1500, baseType: !133, size: 32, offset: 7552)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !832, file: !44, line: 1502, baseType: !3029, size: 448, offset: 7616)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2676, line: 60, size: 448, elements: !3030)
!3030 = !{!3031, !3036, !3037, !3038, !3039, !3040, !3041}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3029, file: !2676, line: 61, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!132, !3035, !2674}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3029, file: !2676, line: 63, baseType: !3032, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3029, file: !2676, line: 66, baseType: !563, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3029, file: !2676, line: 67, baseType: !133, size: 32, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3029, file: !2676, line: 68, baseType: !7, size: 32, offset: 224)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3029, file: !2676, line: 71, baseType: !476, size: 128, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3029, file: !2676, line: 77, baseType: !3042, size: 64, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !832, file: !44, line: 1505, baseType: !1003, size: 64, offset: 8064)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !832, file: !44, line: 1508, baseType: !1003, size: 64, offset: 8128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !832, file: !44, line: 1511, baseType: !133, size: 32, offset: 8192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !832, file: !44, line: 1514, baseType: !1171, size: 32, offset: 8224)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !832, file: !44, line: 1517, baseType: !3048, size: 64, offset: 8256)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2219, line: 18, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !832, file: !44, line: 1518, baseType: !867, size: 64, offset: 8320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !832, file: !44, line: 1525, baseType: !1972, size: 64, offset: 8384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !832, file: !44, line: 1532, baseType: !3053, size: 64, offset: 8448)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3054, line: 52, size: 64, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !{!3056}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3053, file: !3054, line: 53, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3054, line: 40, size: 256, elements: !3059)
!3059 = !{!3060, !3061, !3066}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3058, file: !3054, line: 42, baseType: !489)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3058, file: !3054, line: 44, baseType: !3062, size: 192)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3054, line: 28, size: 192, elements: !3063)
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3062, file: !3054, line: 29, baseType: !476, size: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3062, file: !3054, line: 31, baseType: !563, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3058, file: !3054, line: 49, baseType: !563, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !832, file: !44, line: 1533, baseType: !3053, size: 64, offset: 8512)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !832, file: !44, line: 1534, baseType: !614, size: 128, align: 64, offset: 8576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !832, file: !44, line: 1535, baseType: !2218, size: 256, offset: 8704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !832, file: !44, line: 1537, baseType: !1435, size: 192, offset: 8960)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !832, file: !44, line: 1542, baseType: !133, size: 32, offset: 9152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !832, file: !44, line: 1545, baseType: !489, offset: 9184)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !832, file: !44, line: 1546, baseType: !476, size: 128, offset: 9216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !832, file: !44, line: 1548, baseType: !489, offset: 9344)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !832, file: !44, line: 1549, baseType: !476, size: 128, offset: 9344)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !671, file: !44, line: 624, baseType: !966, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !671, file: !44, line: 631, baseType: !132, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !44, line: 639, baseType: !3079, size: 32, offset: 384)
!3079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !44, line: 639, size: 32, elements: !3080)
!3080 = !{!3081, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3079, file: !44, line: 640, baseType: !3082, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3079, file: !44, line: 641, baseType: !7, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !671, file: !44, line: 643, baseType: !749, size: 32, offset: 416)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !671, file: !44, line: 644, baseType: !143, size: 64, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !671, file: !44, line: 645, baseType: !768, size: 128, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !671, file: !44, line: 646, baseType: !768, size: 128, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !671, file: !44, line: 647, baseType: !768, size: 128, offset: 768)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !671, file: !44, line: 648, baseType: !489, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !671, file: !44, line: 649, baseType: !138, size: 16, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !671, file: !44, line: 650, baseType: !192, size: 8, offset: 912)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !671, file: !44, line: 651, baseType: !192, size: 8, offset: 920)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !671, file: !44, line: 652, baseType: !2848, size: 64, offset: 960)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !671, file: !44, line: 659, baseType: !132, size: 64, offset: 1024)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !671, file: !44, line: 660, baseType: !999, size: 256, offset: 1088)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !671, file: !44, line: 662, baseType: !132, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !671, file: !44, line: 663, baseType: !132, size: 64, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !671, file: !44, line: 665, baseType: !871, size: 128, offset: 1472)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !671, file: !44, line: 666, baseType: !476, size: 128, offset: 1600)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !671, file: !44, line: 675, baseType: !476, size: 128, offset: 1728)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !671, file: !44, line: 676, baseType: !476, size: 128, offset: 1856)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !671, file: !44, line: 677, baseType: !476, size: 128, offset: 1984)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !44, line: 678, baseType: !3104, size: 128, offset: 2112)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !44, line: 678, size: 128, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3104, file: !44, line: 679, baseType: !867, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3104, file: !44, line: 680, baseType: !614, size: 128, align: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !671, file: !44, line: 682, baseType: !1005, size: 64, offset: 2240)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !671, file: !44, line: 683, baseType: !1005, size: 64, offset: 2304)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !671, file: !44, line: 684, baseType: !979, size: 32, offset: 2368)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !671, file: !44, line: 685, baseType: !979, size: 32, offset: 2400)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !671, file: !44, line: 686, baseType: !979, size: 32, offset: 2432)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !671, file: !44, line: 688, baseType: !979, size: 32, offset: 2464)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !44, line: 690, baseType: !3115, size: 64, offset: 2496)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !44, line: 690, size: 64, elements: !3116)
!3116 = !{!3117, !3340}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3115, file: !44, line: 691, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3120)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3121)
!3121 = !{!3122, !3123, !3127, !3132, !3136, !3137, !3138, !3142, !3155, !3156, !3164, !3168, !3169, !3173, !3174, !3178, !3183, !3184, !3188, !3192, !3300, !3304, !3305, !3309, !3310, !3314, !3318, !3323, !3327, !3331, !3335, !3339}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3120, file: !44, line: 1823, baseType: !158, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3120, file: !44, line: 1824, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!143, !601, !143, !133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3120, file: !44, line: 1825, baseType: !3128, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!560, !601, !176, !139, !3131}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3120, file: !44, line: 1826, baseType: !3133, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!560, !601, !154, !139, !3131}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3120, file: !44, line: 1827, baseType: !1075, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3120, file: !44, line: 1828, baseType: !1075, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3120, file: !44, line: 1829, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!133, !1078, !249}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3120, file: !44, line: 1830, baseType: !3143, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!133, !601, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3148)
!3148 = !{!3149, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3147, file: !44, line: 1777, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3151)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!133, !3146, !154, !133, !143, !275, !7}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3147, file: !44, line: 1778, baseType: !143, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3120, file: !44, line: 1831, baseType: !3143, size: 64, offset: 512)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3120, file: !44, line: 1832, baseType: !3157, size: 64, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!3160, !601, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3161, line: 52, baseType: !7)
!3161 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !851, line: 27, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3120, file: !44, line: 1833, baseType: !3165, size: 64, offset: 640)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!563, !601, !7, !132}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3120, file: !44, line: 1834, baseType: !3165, size: 64, offset: 704)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3120, file: !44, line: 1835, baseType: !3170, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!133, !601, !1243}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3120, file: !44, line: 1836, baseType: !132, size: 64, offset: 832)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3120, file: !44, line: 1837, baseType: !3175, size: 64, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!133, !670, !601}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3120, file: !44, line: 1838, baseType: !3179, size: 64, offset: 960)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!133, !601, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !131)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3120, file: !44, line: 1839, baseType: !3175, size: 64, offset: 1024)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3120, file: !44, line: 1840, baseType: !3185, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!133, !601, !143, !143, !133}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3120, file: !44, line: 1841, baseType: !3189, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!133, !133, !601, !133}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !44, line: 1842, baseType: !3193, size: 64, offset: 1216)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!133, !601, !133, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3230, !3231, !3232, !3245, !3276}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3197, file: !44, line: 1063, baseType: !3196, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3197, file: !44, line: 1064, baseType: !476, size: 128, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3197, file: !44, line: 1065, baseType: !871, size: 128, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3197, file: !44, line: 1066, baseType: !476, size: 128, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3197, file: !44, line: 1069, baseType: !476, size: 128, offset: 448)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3197, file: !44, line: 1072, baseType: !3182, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3197, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3197, file: !44, line: 1074, baseType: !194, size: 8, offset: 672)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3197, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3197, file: !44, line: 1076, baseType: !133, size: 32, offset: 736)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3197, file: !44, line: 1077, baseType: !1740, size: 128, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3197, file: !44, line: 1078, baseType: !601, size: 64, offset: 896)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3197, file: !44, line: 1079, baseType: !143, size: 64, offset: 960)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3197, file: !44, line: 1080, baseType: !143, size: 64, offset: 1024)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3197, file: !44, line: 1082, baseType: !3214, size: 64, offset: 1088)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3216)
!3216 = !{!3217, !3225, !3226, !3227, !3228, !3229}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3215, file: !44, line: 1315, baseType: !3218)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3219, line: 20, baseType: !3220)
!3219 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3219, line: 11, elements: !3221)
!3221 = !{!3222}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3220, file: !3219, line: 12, baseType: !3223)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !501, line: 33, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 31, elements: !503)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3215, file: !44, line: 1316, baseType: !133, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3215, file: !44, line: 1317, baseType: !133, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3215, file: !44, line: 1318, baseType: !3214, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3215, file: !44, line: 1319, baseType: !601, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3215, file: !44, line: 1320, baseType: !614, size: 128, align: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3197, file: !44, line: 1084, baseType: !132, size: 64, offset: 1152)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3197, file: !44, line: 1085, baseType: !132, size: 64, offset: 1216)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3197, file: !44, line: 1087, baseType: !3233, size: 64, offset: 1280)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3236)
!3236 = !{!3237, !3241}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3235, file: !44, line: 1012, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3196, !3196}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3235, file: !44, line: 1013, baseType: !3242, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3196}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3197, file: !44, line: 1088, baseType: !3246, size: 64, offset: 1344)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3249)
!3249 = !{!3250, !3254, !3258, !3259, !3263, !3267, !3271, !3275}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3248, file: !44, line: 1017, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!3182, !3182}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3248, file: !44, line: 1018, baseType: !3255, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3182}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3248, file: !44, line: 1019, baseType: !3242, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3248, file: !44, line: 1020, baseType: !3260, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!133, !3196, !133}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3248, file: !44, line: 1021, baseType: !3264, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!249, !3196}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3248, file: !44, line: 1022, baseType: !3268, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!133, !3196, !133, !479}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3248, file: !44, line: 1023, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !3196, !354}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3248, file: !44, line: 1024, baseType: !3264, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3197, file: !44, line: 1097, baseType: !3277, size: 256, offset: 1408)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !44, line: 1089, size: 256, elements: !3278)
!3278 = !{!3279, !3288, !3294}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3277, file: !44, line: 1090, baseType: !3280, size: 256)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3281, line: 10, size: 256, elements: !3282)
!3281 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3282 = !{!3283, !3284, !3287}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3280, file: !3281, line: 11, baseType: !271, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3280, file: !3281, line: 12, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3281, line: 5, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3280, file: !3281, line: 13, baseType: !476, size: 128, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3277, file: !44, line: 1091, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3281, line: 17, size: 64, elements: !3290)
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3289, file: !3281, line: 18, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3281, line: 16, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3277, file: !44, line: 1096, baseType: !3295, size: 192)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !44, line: 1092, size: 192, elements: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3295, file: !44, line: 1093, baseType: !476, size: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3295, file: !44, line: 1094, baseType: !133, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3295, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3120, file: !44, line: 1843, baseType: !3301, size: 64, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!560, !601, !953, !133, !139, !3131, !133}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3120, file: !44, line: 1844, baseType: !1363, size: 64, offset: 1344)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3120, file: !44, line: 1845, baseType: !3306, size: 64, offset: 1408)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!133, !133}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3120, file: !44, line: 1846, baseType: !3193, size: 64, offset: 1472)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3120, file: !44, line: 1847, baseType: !3311, size: 64, offset: 1536)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!560, !1121, !601, !3131, !139, !7}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3120, file: !44, line: 1848, baseType: !3315, size: 64, offset: 1600)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!560, !601, !3131, !1121, !139, !7}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3120, file: !44, line: 1849, baseType: !3319, size: 64, offset: 1664)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!133, !601, !563, !3322, !354}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3120, file: !44, line: 1850, baseType: !3324, size: 64, offset: 1728)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!563, !601, !133, !143, !143}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3120, file: !44, line: 1852, baseType: !3328, size: 64, offset: 1792)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !943, !601}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3120, file: !44, line: 1856, baseType: !3332, size: 64, offset: 1856)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!560, !601, !143, !601, !143, !139, !7}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3120, file: !44, line: 1858, baseType: !3336, size: 64, offset: 1920)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!143, !601, !143, !601, !143, !143, !7}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3120, file: !44, line: 1861, baseType: !3185, size: 64, offset: 1984)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3115, file: !44, line: 692, baseType: !896, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !671, file: !44, line: 694, baseType: !3342, size: 64, offset: 2560)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3343, file: !44, line: 1101, baseType: !489)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3343, file: !44, line: 1102, baseType: !476, size: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3343, file: !44, line: 1103, baseType: !476, size: 128, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3343, file: !44, line: 1104, baseType: !476, size: 128, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !671, file: !44, line: 695, baseType: !967, size: 1216, align: 64, offset: 2624)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !671, file: !44, line: 696, baseType: !476, size: 128, offset: 3840)
!3351 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !44, line: 697, baseType: !3352, size: 64, offset: 3968)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !44, line: 697, size: 64, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3367, !3368}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3352, file: !44, line: 698, baseType: !1121, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3352, file: !44, line: 699, baseType: !2873, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3352, file: !44, line: 700, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3359, line: 14, size: 832, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3358, file: !3359, line: 15, baseType: !471, size: 512)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3358, file: !3359, line: 16, baseType: !158, size: 64, offset: 512)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3358, file: !3359, line: 17, baseType: !3118, size: 64, offset: 576)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3358, file: !3359, line: 18, baseType: !476, size: 128, offset: 640)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3358, file: !3359, line: 19, baseType: !749, size: 32, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3358, file: !3359, line: 20, baseType: !7, size: 32, offset: 800)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3352, file: !44, line: 701, baseType: !176, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3352, file: !44, line: 702, baseType: !7, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !671, file: !44, line: 705, baseType: !272, size: 32, offset: 4032)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !671, file: !44, line: 708, baseType: !272, size: 32, offset: 4064)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !671, file: !44, line: 709, baseType: !2952, size: 64, offset: 4096)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !671, file: !44, line: 720, baseType: !131, size: 64, offset: 4160)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !632, file: !629, line: 98, baseType: !3374, size: 256, offset: 448)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !2488)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !632, file: !629, line: 101, baseType: !3376, size: 32, offset: 704)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3377, line: 25, size: 32, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 26, baseType: !3380, size: 32)
!3380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 26, size: 32, elements: !3381)
!3381 = !{!3382}
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !3377, line: 30, baseType: !3383, size: 32)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3380, file: !3377, line: 30, size: 32, elements: !3384)
!3384 = !{!3385, !3386}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3383, file: !3377, line: 31, baseType: !489)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3383, file: !3377, line: 32, baseType: !133, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !632, file: !629, line: 102, baseType: !2969, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !632, file: !629, line: 103, baseType: !831, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !632, file: !629, line: 104, baseType: !132, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !632, file: !629, line: 105, baseType: !131, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !629, line: 107, baseType: !3392, size: 128, offset: 1024)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !629, line: 107, size: 128, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3392, file: !629, line: 108, baseType: !476, size: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3392, file: !629, line: 109, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !632, file: !629, line: 111, baseType: !476, size: 128, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !632, file: !629, line: 112, baseType: !476, size: 128, offset: 1280)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !632, file: !629, line: 120, baseType: !3400, size: 128, offset: 1408)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !629, line: 116, size: 128, elements: !3401)
!3401 = !{!3402, !3403, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3400, file: !629, line: 117, baseType: !871, size: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3400, file: !629, line: 118, baseType: !646, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3400, file: !629, line: 119, baseType: !614, size: 128, align: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !602, file: !44, line: 922, baseType: !670, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !602, file: !44, line: 923, baseType: !3118, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !602, file: !44, line: 929, baseType: !489, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !602, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !602, file: !44, line: 931, baseType: !1003, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !602, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !602, file: !44, line: 933, baseType: !2965, size: 32, offset: 544)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !602, file: !44, line: 934, baseType: !1435, size: 192, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !602, file: !44, line: 935, baseType: !143, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !602, file: !44, line: 936, baseType: !3415, size: 192, offset: 832)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !44, line: 886, baseType: !3218)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3415, file: !44, line: 887, baseType: !1730, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3415, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3415, file: !44, line: 889, baseType: !676, size: 32, offset: 96)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3415, file: !44, line: 889, baseType: !676, size: 32, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3415, file: !44, line: 890, baseType: !133, size: 32, offset: 160)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !602, file: !44, line: 937, baseType: !1806, size: 64, offset: 1024)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !602, file: !44, line: 938, baseType: !3425, size: 256, offset: 1088)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3425, file: !44, line: 897, baseType: !132, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3425, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3425, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3425, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3425, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3425, file: !44, line: 904, baseType: !143, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !602, file: !44, line: 940, baseType: !275, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !602, file: !44, line: 945, baseType: !131, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !602, file: !44, line: 949, baseType: !476, size: 128, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !602, file: !44, line: 950, baseType: !476, size: 128, offset: 1600)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !602, file: !44, line: 952, baseType: !966, size: 64, offset: 1728)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !602, file: !44, line: 953, baseType: !1171, size: 32, offset: 1792)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !602, file: !44, line: 954, baseType: !1171, size: 32, offset: 1824)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !592, file: !554, line: 174, baseType: !598, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !592, file: !554, line: 176, baseType: !3442, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!133, !601, !482, !591, !1243}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !580, file: !554, line: 90, baseType: !575, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !580, file: !554, line: 91, baseType: !3447, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !544, file: !472, line: 143, baseType: !3449, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!3452, !482}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3455)
!3455 = !{!3456, !3457, !3461, !3465, !3471, !3475}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3454, file: !61, line: 40, baseType: !60, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3454, file: !61, line: 41, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!249}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3454, file: !61, line: 42, baseType: !3462, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!131}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3454, file: !61, line: 43, baseType: !3466, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!2385, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3454, file: !61, line: 44, baseType: !3472, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!2385}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3454, file: !61, line: 45, baseType: !178, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !544, file: !472, line: 144, baseType: !3477, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!2385, !482}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !544, file: !472, line: 145, baseType: !3481, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !482, !3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !471, file: !472, line: 70, baseType: !3487, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !851, line: 123, size: 1024, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3618, !3619, !3620, !3621, !3622}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3488, file: !851, line: 124, baseType: !979, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3488, file: !851, line: 125, baseType: !979, size: 32, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3488, file: !851, line: 135, baseType: !3487, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !851, line: 136, baseType: !154, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3488, file: !851, line: 138, baseType: !992, size: 192, align: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3488, file: !851, line: 140, baseType: !2385, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3488, file: !851, line: 141, baseType: !7, size: 32, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !851, line: 142, baseType: !3498, size: 256, offset: 512)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !851, line: 142, size: 256, elements: !3499)
!3499 = !{!3500, !3546, !3550}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3498, file: !851, line: 143, baseType: !3501, size: 192)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !851, line: 91, size: 192, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3501, file: !851, line: 92, baseType: !132, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3501, file: !851, line: 94, baseType: !988, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3501, file: !851, line: 100, baseType: !3506, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !851, line: 180, size: 704, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3518, !3519, !3520, !3544, !3545}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3507, file: !851, line: 182, baseType: !3487, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3507, file: !851, line: 183, baseType: !7, size: 32, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3507, file: !851, line: 186, baseType: !3512, size: 192, offset: 128)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3513, line: 19, size: 192, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3512, file: !3513, line: 20, baseType: !971, size: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3512, file: !3513, line: 21, baseType: !7, size: 32, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3512, file: !3513, line: 22, baseType: !7, size: 32, offset: 160)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3507, file: !851, line: 187, baseType: !271, size: 32, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3507, file: !851, line: 188, baseType: !271, size: 32, offset: 352)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3507, file: !851, line: 189, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !851, line: 168, size: 320, elements: !3523)
!3523 = !{!3524, !3528, !3532, !3536, !3540}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3522, file: !851, line: 169, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!133, !943, !3506}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3522, file: !851, line: 171, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!133, !3487, !154, !569}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3522, file: !851, line: 173, baseType: !3533, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!133, !3487}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3522, file: !851, line: 174, baseType: !3537, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!133, !3487, !3487, !154}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3522, file: !851, line: 176, baseType: !3541, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!133, !943, !3487, !3506}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3507, file: !851, line: 192, baseType: !476, size: 128, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3507, file: !851, line: 194, baseType: !1740, size: 128, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3498, file: !851, line: 144, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !851, line: 103, size: 64, elements: !3548)
!3548 = !{!3549}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3547, file: !851, line: 104, baseType: !3487, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3498, file: !851, line: 145, baseType: !3551, size: 256)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !851, line: 107, size: 256, elements: !3552)
!3552 = !{!3553, !3613, !3616, !3617}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3551, file: !851, line: 108, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !851, line: 217, size: 768, elements: !3557)
!3557 = !{!3558, !3578, !3582, !3586, !3590, !3594, !3598, !3602, !3603, !3604, !3605, !3609}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3556, file: !851, line: 222, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!133, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !851, line: 197, size: 1088, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3563, file: !851, line: 199, baseType: !3487, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3563, file: !851, line: 200, baseType: !601, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3563, file: !851, line: 201, baseType: !943, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3563, file: !851, line: 202, baseType: !131, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3563, file: !851, line: 205, baseType: !1435, size: 192, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3563, file: !851, line: 206, baseType: !1435, size: 192, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3563, file: !851, line: 207, baseType: !133, size: 32, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3563, file: !851, line: 208, baseType: !476, size: 128, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3563, file: !851, line: 209, baseType: !176, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3563, file: !851, line: 211, baseType: !139, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3563, file: !851, line: 212, baseType: !249, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3563, file: !851, line: 213, baseType: !249, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3563, file: !851, line: 214, baseType: !1271, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3556, file: !851, line: 223, baseType: !3579, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3562}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3556, file: !851, line: 236, baseType: !3583, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!133, !943, !131}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3556, file: !851, line: 238, baseType: !3587, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!131, !943, !3131}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3556, file: !851, line: 239, baseType: !3591, size: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!131, !943, !131, !3131}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3556, file: !851, line: 240, baseType: !3595, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !943, !131}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3556, file: !851, line: 242, baseType: !3599, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!560, !3562, !176, !139, !143}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3556, file: !851, line: 252, baseType: !139, size: 64, offset: 448)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3556, file: !851, line: 259, baseType: !249, size: 8, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3556, file: !851, line: 260, baseType: !3599, size: 64, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3556, file: !851, line: 263, baseType: !3606, size: 64, offset: 640)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!3160, !3562, !3162}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3556, file: !851, line: 266, baseType: !3610, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!133, !3562, !1243}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3551, file: !851, line: 109, baseType: !3614, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !851, line: 31, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3551, file: !851, line: 110, baseType: !143, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3551, file: !851, line: 111, baseType: !3487, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3488, file: !851, line: 148, baseType: !131, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3488, file: !851, line: 154, baseType: !275, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !851, line: 156, baseType: !138, size: 16, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3488, file: !851, line: 157, baseType: !569, size: 16, offset: 912)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3488, file: !851, line: 158, baseType: !3623, size: 64, offset: 960)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !851, line: 32, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !471, file: !472, line: 71, baseType: !3626, size: 32, offset: 448)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3627, line: 19, size: 32, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !{!3629}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3626, file: !3627, line: 20, baseType: !1491, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !471, file: !472, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !471, file: !472, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !471, file: !472, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !471, file: !472, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !471, file: !472, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !468, file: !73, line: 463, baseType: !3636, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !468, file: !73, line: 465, baseType: !3638, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !468, file: !73, line: 467, baseType: !154, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !73, line: 468, baseType: !3642, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3652, !3657, !3661}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3644, file: !73, line: 88, baseType: !154, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3644, file: !73, line: 89, baseType: !577, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3644, file: !73, line: 90, baseType: !3649, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!133, !3636, !525}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3644, file: !73, line: 91, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!176, !3636, !3656, !3484, !3485}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3644, file: !73, line: 93, baseType: !3658, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !3636}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3644, file: !73, line: 95, baseType: !3662, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3665)
!3665 = !{!3666, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3664, file: !80, line: 279, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!133, !3636}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3664, file: !80, line: 280, baseType: !3658, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3664, file: !80, line: 281, baseType: !3667, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3664, file: !80, line: 282, baseType: !3667, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3664, file: !80, line: 283, baseType: !3667, size: 64, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3664, file: !80, line: 284, baseType: !3667, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3664, file: !80, line: 285, baseType: !3667, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3664, file: !80, line: 286, baseType: !3667, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3664, file: !80, line: 287, baseType: !3667, size: 64, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3664, file: !80, line: 288, baseType: !3667, size: 64, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3664, file: !80, line: 289, baseType: !3667, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3664, file: !80, line: 290, baseType: !3667, size: 64, offset: 704)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3664, file: !80, line: 291, baseType: !3667, size: 64, offset: 768)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3664, file: !80, line: 292, baseType: !3667, size: 64, offset: 832)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3664, file: !80, line: 293, baseType: !3667, size: 64, offset: 896)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3664, file: !80, line: 294, baseType: !3667, size: 64, offset: 960)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3664, file: !80, line: 295, baseType: !3667, size: 64, offset: 1024)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3664, file: !80, line: 296, baseType: !3667, size: 64, offset: 1088)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3664, file: !80, line: 297, baseType: !3667, size: 64, offset: 1152)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3664, file: !80, line: 298, baseType: !3667, size: 64, offset: 1216)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3664, file: !80, line: 299, baseType: !3667, size: 64, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3664, file: !80, line: 300, baseType: !3667, size: 64, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3664, file: !80, line: 301, baseType: !3667, size: 64, offset: 1408)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !468, file: !73, line: 470, baseType: !3693, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3695, line: 82, size: 1408, elements: !3696)
!3695 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3778, !3781, !3782}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3694, file: !3695, line: 83, baseType: !154, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3694, file: !3695, line: 84, baseType: !154, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3694, file: !3695, line: 85, baseType: !3636, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3694, file: !3695, line: 86, baseType: !577, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3694, file: !3695, line: 87, baseType: !577, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3694, file: !3695, line: 88, baseType: !577, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3694, file: !3695, line: 90, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!133, !3636, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3709)
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3729, !3742, !3743, !3744, !3745, !3746, !3754, !3755, !3756, !3757, !3758, !3759}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3708, file: !67, line: 96, baseType: !154, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3708, file: !67, line: 97, baseType: !3693, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3708, file: !67, line: 99, baseType: !158, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3708, file: !67, line: 100, baseType: !154, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3708, file: !67, line: 102, baseType: !249, size: 8, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3708, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3708, file: !67, line: 105, baseType: !3717, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3720, line: 262, size: 1600, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3721 = !{!3722, !3723, !3724, !3728}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3719, file: !3720, line: 263, baseType: !2955, size: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3719, file: !3720, line: 264, baseType: !2955, size: 256, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3719, file: !3720, line: 265, baseType: !3725, size: 1024, offset: 512)
!3725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1024, elements: !3726)
!3726 = !{!3727}
!3727 = !DISubrange(count: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3719, file: !3720, line: 266, baseType: !2385, size: 64, offset: 1536)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3708, file: !67, line: 106, baseType: !3730, size: 64, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3720, line: 210, size: 256, elements: !3733)
!3733 = !{!3734, !3738, !3740, !3741}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3732, file: !3720, line: 211, baseType: !3735, size: 72)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 72, elements: !3736)
!3736 = !{!3737}
!3737 = !DISubrange(count: 9)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3732, file: !3720, line: 212, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3720, line: 14, baseType: !132)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3732, file: !3720, line: 213, baseType: !272, size: 32, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3732, file: !3720, line: 214, baseType: !272, size: 32, offset: 224)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3708, file: !67, line: 108, baseType: !3667, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3708, file: !67, line: 109, baseType: !3658, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3708, file: !67, line: 110, baseType: !3667, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3708, file: !67, line: 111, baseType: !3658, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3708, file: !67, line: 112, baseType: !3747, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!133, !3636, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3751)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3752)
!3752 = !{!3753}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3751, file: !80, line: 51, baseType: !133, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3708, file: !67, line: 113, baseType: !3667, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3708, file: !67, line: 114, baseType: !577, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3708, file: !67, line: 115, baseType: !577, size: 64, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3708, file: !67, line: 117, baseType: !3662, size: 64, offset: 960)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3708, file: !67, line: 118, baseType: !3658, size: 64, offset: 1024)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3708, file: !67, line: 120, baseType: !3760, size: 64, offset: 1088)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3694, file: !3695, line: 91, baseType: !3649, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3694, file: !3695, line: 92, baseType: !3667, size: 64, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3694, file: !3695, line: 93, baseType: !3658, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3694, file: !3695, line: 94, baseType: !3667, size: 64, offset: 640)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3694, file: !3695, line: 95, baseType: !3658, size: 64, offset: 704)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3694, file: !3695, line: 97, baseType: !3667, size: 64, offset: 768)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3694, file: !3695, line: 98, baseType: !3667, size: 64, offset: 832)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3694, file: !3695, line: 100, baseType: !3747, size: 64, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3694, file: !3695, line: 101, baseType: !3667, size: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3694, file: !3695, line: 103, baseType: !3667, size: 64, offset: 1024)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3694, file: !3695, line: 105, baseType: !3667, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3694, file: !3695, line: 107, baseType: !3662, size: 64, offset: 1152)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3694, file: !3695, line: 109, baseType: !3775, size: 64, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3695, line: 109, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3694, file: !3695, line: 111, baseType: !3779, size: 64, offset: 1280)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3695, line: 111, flags: DIFlagFwdDecl)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3694, file: !3695, line: 112, baseType: !877, offset: 1344)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3694, file: !3695, line: 114, baseType: !249, size: 8, offset: 1344)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !468, file: !73, line: 471, baseType: !3707, size: 64, offset: 832)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !468, file: !73, line: 473, baseType: !131, size: 64, offset: 896)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !468, file: !73, line: 475, baseType: !131, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !468, file: !73, line: 480, baseType: !1435, size: 192, offset: 1024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !468, file: !73, line: 484, baseType: !3788, size: 576, offset: 1216)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3789)
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3788, file: !73, line: 362, baseType: !476, size: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3788, file: !73, line: 363, baseType: !476, size: 128, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3788, file: !73, line: 364, baseType: !476, size: 128, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3788, file: !73, line: 365, baseType: !476, size: 128, offset: 384)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3788, file: !73, line: 366, baseType: !249, size: 8, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3788, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !468, file: !73, line: 485, baseType: !3797, size: 2304, offset: 1792)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3894, !3898}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3797, file: !80, line: 566, baseType: !3750, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3797, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3797, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3797, file: !80, line: 569, baseType: !249, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3797, file: !80, line: 570, baseType: !249, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3797, file: !80, line: 571, baseType: !249, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3797, file: !80, line: 572, baseType: !249, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3797, file: !80, line: 573, baseType: !249, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3797, file: !80, line: 574, baseType: !249, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3797, file: !80, line: 575, baseType: !249, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3797, file: !80, line: 576, baseType: !249, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3797, file: !80, line: 577, baseType: !271, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3797, file: !80, line: 578, baseType: !489, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3797, file: !80, line: 580, baseType: !476, size: 128, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3797, file: !80, line: 581, baseType: !1761, size: 192, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3797, file: !80, line: 582, baseType: !3815, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3817, line: 43, size: 1472, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3826, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3816, file: !3817, line: 44, baseType: !154, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3816, file: !3817, line: 45, baseType: !133, size: 32, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3816, file: !3817, line: 46, baseType: !476, size: 128, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3816, file: !3817, line: 47, baseType: !489, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3816, file: !3817, line: 48, baseType: !3824, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3816, file: !3817, line: 49, baseType: !3827, size: 320, offset: 320)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3828, line: 11, size: 320, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3829 = !{!3830, !3831, !3832, !3837}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3827, file: !3828, line: 16, baseType: !871, size: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3827, file: !3828, line: 17, baseType: !132, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3827, file: !3828, line: 18, baseType: !3833, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3827, file: !3828, line: 19, baseType: !271, size: 32, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3816, file: !3817, line: 50, baseType: !132, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3816, file: !3817, line: 51, baseType: !1561, size: 64, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3816, file: !3817, line: 52, baseType: !1561, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3816, file: !3817, line: 53, baseType: !1561, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3816, file: !3817, line: 54, baseType: !1561, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3816, file: !3817, line: 55, baseType: !1561, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3816, file: !3817, line: 56, baseType: !132, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3816, file: !3817, line: 57, baseType: !132, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3816, file: !3817, line: 58, baseType: !132, size: 64, offset: 1152)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3816, file: !3817, line: 59, baseType: !132, size: 64, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3816, file: !3817, line: 60, baseType: !132, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3816, file: !3817, line: 61, baseType: !3636, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3816, file: !3817, line: 62, baseType: !249, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3816, file: !3817, line: 63, baseType: !249, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3797, file: !80, line: 583, baseType: !249, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3797, file: !80, line: 584, baseType: !249, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3797, file: !80, line: 585, baseType: !249, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3797, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3797, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3797, file: !80, line: 592, baseType: !1553, size: 512, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3797, file: !80, line: 593, baseType: !275, size: 64, offset: 1088)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3797, file: !80, line: 594, baseType: !2218, size: 256, offset: 1152)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3797, file: !80, line: 595, baseType: !1740, size: 128, offset: 1408)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3797, file: !80, line: 596, baseType: !3824, size: 64, offset: 1536)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3797, file: !80, line: 597, baseType: !979, size: 32, offset: 1600)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3797, file: !80, line: 598, baseType: !979, size: 32, offset: 1632)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3797, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3797, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3797, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3797, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3797, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3797, file: !80, line: 604, baseType: !249, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3797, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3797, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3797, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3797, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3797, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3797, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3797, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3797, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3797, file: !80, line: 613, baseType: !133, size: 32, offset: 1792)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3797, file: !80, line: 614, baseType: !133, size: 32, offset: 1824)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3797, file: !80, line: 615, baseType: !275, size: 64, offset: 1856)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3797, file: !80, line: 616, baseType: !275, size: 64, offset: 1920)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3797, file: !80, line: 617, baseType: !275, size: 64, offset: 1984)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3797, file: !80, line: 618, baseType: !275, size: 64, offset: 2048)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3797, file: !80, line: 620, baseType: !3885, size: 64, offset: 2112)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3886, file: !80, line: 537, baseType: !489)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3886, file: !80, line: 538, baseType: !7, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3886, file: !80, line: 540, baseType: !476, size: 128, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3886, file: !80, line: 543, baseType: !3892, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3797, file: !80, line: 621, baseType: !3895, size: 64, offset: 2176)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3636, !1703}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3797, file: !80, line: 622, baseType: !3899, size: 64, offset: 2240)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !468, file: !73, line: 486, baseType: !3902, size: 64, offset: 4096)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3911, !3912, !3913}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3903, file: !80, line: 643, baseType: !3664, size: 1472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3903, file: !80, line: 644, baseType: !3667, size: 64, offset: 1472)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3903, file: !80, line: 645, baseType: !3908, size: 64, offset: 1536)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3636, !249}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3903, file: !80, line: 646, baseType: !3667, size: 64, offset: 1600)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3903, file: !80, line: 647, baseType: !3658, size: 64, offset: 1664)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3903, file: !80, line: 648, baseType: !3658, size: 64, offset: 1728)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !468, file: !73, line: 493, baseType: !3915, size: 64, offset: 4160)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !468, file: !73, line: 499, baseType: !476, size: 128, offset: 4224)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !468, file: !73, line: 502, baseType: !3919, size: 64, offset: 4352)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3921)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !468, file: !73, line: 504, baseType: !3923, size: 64, offset: 4416)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !468, file: !73, line: 505, baseType: !275, size: 64, offset: 4480)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !468, file: !73, line: 510, baseType: !275, size: 64, offset: 4544)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !468, file: !73, line: 511, baseType: !3927, size: 64, offset: 4608)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3929)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !468, file: !73, line: 513, baseType: !3931, size: 64, offset: 4672)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3932, file: !73, line: 293, baseType: !7, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3932, file: !73, line: 294, baseType: !132, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !468, file: !73, line: 515, baseType: !476, size: 128, offset: 4736)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !468, file: !73, line: 526, baseType: !3938, offset: 4864)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3939, line: 5, elements: !503)
!3939 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !468, file: !73, line: 528, baseType: !3941, size: 64, offset: 4864)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3943, line: 51, size: 1344, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3944 = !{!3945, !3946, !3948, !3949, !4039, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3942, file: !3943, line: 52, baseType: !154, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3942, file: !3943, line: 53, baseType: !3947, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3943, line: 28, baseType: !271)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3942, file: !3943, line: 54, baseType: !154, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3942, file: !3943, line: 55, baseType: !3950, size: 192, offset: 192)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3951, line: 17, size: 192, elements: !3952)
!3951 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3952 = !{!3953, !3955, !4038}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3950, file: !3951, line: 18, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3950, file: !3951, line: 19, baseType: !3956, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3958)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3951, line: 110, size: 1152, elements: !3959)
!3959 = !{!3960, !3964, !3968, !3974, !3980, !3984, !3988, !3993, !3997, !3998, !4002, !4006, !4010, !4021, !4022, !4023, !4024, !4034}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3958, file: !3951, line: 111, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!3954, !3954}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3958, file: !3951, line: 112, baseType: !3965, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{null, !3954}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3958, file: !3951, line: 113, baseType: !3969, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!249, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3958, file: !3951, line: 114, baseType: !3975, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!2385, !3972, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3958, file: !3951, line: 116, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!249, !3972, !154}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3958, file: !3951, line: 118, baseType: !3985, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!133, !3972, !154, !7, !131, !139}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3958, file: !3951, line: 123, baseType: !3989, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!133, !3972, !154, !3992, !139}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3958, file: !3951, line: 126, baseType: !3994, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!154, !3972}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3958, file: !3951, line: 127, baseType: !3994, size: 64, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3958, file: !3951, line: 128, baseType: !3999, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!3954, !3972}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3958, file: !3951, line: 130, baseType: !4003, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!3954, !3972, !3954}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3958, file: !3951, line: 133, baseType: !4007, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3954, !3972, !154}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3958, file: !3951, line: 135, baseType: !4011, size: 64, offset: 768)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!133, !3972, !154, !154, !7, !7, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3951, line: 43, size: 640, elements: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4015, file: !3951, line: 44, baseType: !3954, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4015, file: !3951, line: 45, baseType: !7, size: 32, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4015, file: !3951, line: 46, baseType: !4020, size: 512, offset: 128)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 512, elements: !1591)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3958, file: !3951, line: 140, baseType: !4003, size: 64, offset: 832)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3958, file: !3951, line: 143, baseType: !3999, size: 64, offset: 896)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3958, file: !3951, line: 145, baseType: !3961, size: 64, offset: 960)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3958, file: !3951, line: 146, baseType: !4025, size: 64, offset: 1024)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!133, !3972, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3951, line: 29, size: 128, elements: !4030)
!4030 = !{!4031, !4032, !4033}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4029, file: !3951, line: 30, baseType: !7, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4029, file: !3951, line: 31, baseType: !7, size: 32, offset: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4029, file: !3951, line: 32, baseType: !3972, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3958, file: !3951, line: 148, baseType: !4035, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!133, !3972, !3636}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3950, file: !3951, line: 20, baseType: !3636, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3942, file: !3943, line: 57, baseType: !4040, size: 64, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3943, line: 31, size: 704, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4041, file: !3943, line: 32, baseType: !176, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4041, file: !3943, line: 33, baseType: !133, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4041, file: !3943, line: 34, baseType: !131, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4041, file: !3943, line: 35, baseType: !4040, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4041, file: !3943, line: 43, baseType: !592, size: 448, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3942, file: !3943, line: 58, baseType: !4040, size: 64, offset: 448)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3942, file: !3943, line: 59, baseType: !3941, size: 64, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3942, file: !3943, line: 60, baseType: !3941, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3942, file: !3943, line: 61, baseType: !3941, size: 64, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3942, file: !3943, line: 63, baseType: !471, size: 512, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3942, file: !3943, line: 65, baseType: !132, size: 64, offset: 1216)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3942, file: !3943, line: 66, baseType: !131, size: 64, offset: 1280)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !468, file: !73, line: 529, baseType: !3954, size: 64, offset: 4928)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !468, file: !73, line: 534, baseType: !749, size: 32, offset: 4992)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !468, file: !73, line: 535, baseType: !271, size: 32, offset: 5024)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !468, file: !73, line: 537, baseType: !489, offset: 5056)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !468, file: !73, line: 538, baseType: !476, size: 128, offset: 5056)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !468, file: !73, line: 540, baseType: !4061, size: 64, offset: 5184)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4063, line: 54, size: 960, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4064 = !{!4065, !4066, !4067, !4068, !4069, !4070, !4071, !4075, !4079, !4080, !4081, !4082, !4086, !4090, !4091}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4062, file: !4063, line: 55, baseType: !154, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4062, file: !4063, line: 56, baseType: !158, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4062, file: !4063, line: 58, baseType: !577, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4062, file: !4063, line: 59, baseType: !577, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4062, file: !4063, line: 60, baseType: !482, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4062, file: !4063, line: 62, baseType: !3649, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4062, file: !4063, line: 63, baseType: !4072, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!176, !3636, !3656}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4062, file: !4063, line: 65, baseType: !4076, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4061}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4062, file: !4063, line: 66, baseType: !3658, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4062, file: !4063, line: 68, baseType: !3667, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4062, file: !4063, line: 70, baseType: !3452, size: 64, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4062, file: !4063, line: 71, baseType: !4083, size: 64, offset: 704)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!2385, !3636}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4062, file: !4063, line: 73, baseType: !4087, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !3636, !3484, !3485}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4062, file: !4063, line: 75, baseType: !3662, size: 64, offset: 832)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4062, file: !4063, line: 77, baseType: !3779, size: 64, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !468, file: !73, line: 541, baseType: !577, size: 64, offset: 5248)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !468, file: !73, line: 543, baseType: !3658, size: 64, offset: 5312)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !468, file: !73, line: 544, baseType: !4095, size: 64, offset: 5376)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !468, file: !73, line: 545, baseType: !4098, size: 64, offset: 5440)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !468, file: !73, line: 547, baseType: !249, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !468, file: !73, line: 548, baseType: !249, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !468, file: !73, line: 549, baseType: !249, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !468, file: !73, line: 550, baseType: !249, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !264, file: !265, line: 376, baseType: !133, size: 32, offset: 8832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !264, file: !265, line: 377, baseType: !4106, size: 192, offset: 8896)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !265, line: 191, size: 192, elements: !4107)
!4107 = !{!4108, !4109, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !4106, file: !265, line: 192, baseType: !631, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !4106, file: !265, line: 194, baseType: !154, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !4106, file: !265, line: 195, baseType: !154, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !264, file: !265, line: 378, baseType: !4112, size: 64, offset: 9088)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !4114, line: 16, flags: DIFlagFwdDecl)
!4114 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !264, file: !265, line: 386, baseType: !299, size: 64, offset: 9152)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !264, file: !265, line: 389, baseType: !476, size: 128, offset: 9216)
!4117 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !265, line: 391, baseType: !4118, size: 320, offset: 9344)
!4118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !265, line: 391, size: 320, elements: !4119)
!4119 = !{!4120, !4127}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !4118, file: !265, line: 392, baseType: !4121, size: 320)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !265, line: 211, size: 320, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4121, file: !265, line: 212, baseType: !476, size: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4121, file: !265, line: 213, baseType: !275, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4121, file: !265, line: 214, baseType: !275, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4121, file: !265, line: 215, baseType: !271, size: 32, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4118, file: !265, line: 393, baseType: !4128, size: 256)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !265, line: 230, size: 256, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !4128, file: !265, line: 231, baseType: !1435, size: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !4128, file: !265, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !261, file: !107, line: 361, baseType: !1435, size: 192, offset: 9664)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !261, file: !107, line: 362, baseType: !3636, size: 64, offset: 9856)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "spimem", scope: !261, file: !107, line: 363, baseType: !4135, size: 64, offset: 9920)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem", file: !101, line: 194, size: 192, elements: !4137)
!4137 = !{!4138, !4461, !4462}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !4136, file: !101, line: 195, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device", file: !4141, line: 159, size: 8256, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/spi/spi.h", directory: "/home/lizy2001/genbc/linux")
!4142 = !{!4143, !4144, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4140, file: !4141, line: 160, baseType: !468, size: 5568)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4140, file: !4141, line: 161, baseType: !4145, size: 64, offset: 5568)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller", file: !4141, line: 466, size: 11072, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4164, !4165, !4166, !4167, !4168, !4169, !4173, !4182, !4200, !4204, !4254, !4255, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4297, !4301, !4302, !4303, !4304, !4305, !4309, !4313, !4317, !4403, !4404, !4405, !4406, !4407, !4412, !4413, !4414, !4415, !4434, !4437, !4438, !4439, !4440, !4444, !4445}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4146, file: !4141, line: 467, baseType: !468, size: 5568)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4146, file: !4141, line: 469, baseType: !476, size: 128, offset: 5568)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bus_num", scope: !4146, file: !4141, line: 477, baseType: !1465, size: 16, offset: 5696)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "num_chipselect", scope: !4146, file: !4141, line: 482, baseType: !183, size: 16, offset: 5712)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !4146, file: !4141, line: 487, baseType: !183, size: 16, offset: 5728)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !4146, file: !4141, line: 490, baseType: !271, size: 32, offset: 5760)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth_override_bits", scope: !4146, file: !4141, line: 493, baseType: !271, size: 32, offset: 5792)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word_mask", scope: !4146, file: !4141, line: 496, baseType: !271, size: 32, offset: 5824)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "min_speed_hz", scope: !4146, file: !4141, line: 501, baseType: !271, size: 32, offset: 5856)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !4146, file: !4141, line: 502, baseType: !271, size: 32, offset: 5888)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4146, file: !4141, line: 505, baseType: !183, size: 16, offset: 5920)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4146, file: !4141, line: 515, baseType: !249, size: 8, offset: 5936)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "max_transfer_size", scope: !4146, file: !4141, line: 521, baseType: !4161, size: 64, offset: 5952)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!139, !4139}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "max_message_size", scope: !4146, file: !4141, line: 522, baseType: !4161, size: 64, offset: 6016)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "io_mutex", scope: !4146, file: !4141, line: 525, baseType: !1435, size: 192, offset: 6080)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_spinlock", scope: !4146, file: !4141, line: 528, baseType: !489, offset: 6272)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_mutex", scope: !4146, file: !4141, line: 529, baseType: !1435, size: 192, offset: 6272)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_flag", scope: !4146, file: !4141, line: 532, baseType: !249, size: 8, offset: 6464)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4146, file: !4141, line: 540, baseType: !4170, size: 64, offset: 6528)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!133, !4139}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs_timing", scope: !4146, file: !4141, line: 550, baseType: !4174, size: 64, offset: 6592)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!133, !4139, !4177, !4177, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_delay", file: !4141, line: 98, size: 32, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4178, file: !4141, line: 102, baseType: !183, size: 16)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !4178, file: !4141, line: 103, baseType: !192, size: 8, offset: 16)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !4146, file: !4141, line: 572, baseType: !4183, size: 64, offset: 6656)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!133, !4139, !4186}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_message", file: !4141, line: 999, size: 832, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4187, file: !4141, line: 1000, baseType: !476, size: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !4187, file: !4141, line: 1002, baseType: !4139, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "is_dma_mapped", scope: !4187, file: !4141, line: 1004, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4187, file: !4141, line: 1018, baseType: !178, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4187, file: !4141, line: 1019, baseType: !131, size: 64, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "frame_length", scope: !4187, file: !4141, line: 1020, baseType: !7, size: 32, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4187, file: !4141, line: 1021, baseType: !7, size: 32, offset: 416)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4187, file: !4141, line: 1022, baseType: !133, size: 32, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4187, file: !4141, line: 1028, baseType: !476, size: 128, offset: 512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4187, file: !4141, line: 1029, baseType: !131, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4187, file: !4141, line: 1032, baseType: !476, size: 128, offset: 704)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4146, file: !4141, line: 576, baseType: !4201, size: 64, offset: 6720)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4139}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma", scope: !4146, file: !4141, line: 585, baseType: !4205, size: 64, offset: 6784)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!249, !4145, !4139, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_transfer", file: !4141, line: 926, size: 1152, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4251, !4252, !4253}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "tx_buf", scope: !4209, file: !4141, line: 932, baseType: !2385, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf", scope: !4209, file: !4141, line: 933, baseType: !131, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4209, file: !4141, line: 934, baseType: !7, size: 32, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma", scope: !4209, file: !4141, line: 936, baseType: !1182, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma", scope: !4209, file: !4141, line: 937, baseType: !1182, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "tx_sg", scope: !4209, file: !4141, line: 938, baseType: !4217, size: 128, offset: 320)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4218, line: 42, size: 128, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4219 = !{!4220, !4229, !4230}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4217, file: !4218, line: 43, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4218, line: 11, size: 256, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227, !4228}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4222, file: !4218, line: 12, baseType: !132, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4222, file: !4218, line: 13, baseType: !7, size: 32, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4222, file: !4218, line: 14, baseType: !7, size: 32, offset: 96)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4222, file: !4218, line: 15, baseType: !1182, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4222, file: !4218, line: 17, baseType: !7, size: 32, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4217, file: !4218, line: 44, baseType: !7, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4217, file: !4218, line: 45, baseType: !7, size: 32, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "rx_sg", scope: !4209, file: !4141, line: 939, baseType: !4217, size: 128, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change", scope: !4209, file: !4141, line: 941, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "tx_nbits", scope: !4209, file: !4141, line: 942, baseType: !7, size: 3, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rx_nbits", scope: !4209, file: !4141, line: 943, baseType: !7, size: 3, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !4209, file: !4141, line: 947, baseType: !192, size: 8, offset: 584)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "delay_usecs", scope: !4209, file: !4141, line: 948, baseType: !183, size: 16, offset: 592)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4209, file: !4141, line: 949, baseType: !4178, size: 32, offset: 608)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change_delay", scope: !4209, file: !4141, line: 950, baseType: !4178, size: 32, offset: 640)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !4209, file: !4141, line: 951, baseType: !4178, size: 32, offset: 672)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "speed_hz", scope: !4209, file: !4141, line: 952, baseType: !271, size: 32, offset: 704)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "effective_speed_hz", scope: !4209, file: !4141, line: 954, baseType: !271, size: 32, offset: 736)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_pre", scope: !4209, file: !4141, line: 956, baseType: !7, size: 32, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_post", scope: !4209, file: !4141, line: 957, baseType: !7, size: 32, offset: 800)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts", scope: !4209, file: !4141, line: 959, baseType: !4245, size: 64, offset: 832)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !4247, line: 33, size: 256, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!4248 = !{!4249, !4250}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4246, file: !4247, line: 34, baseType: !768, size: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4246, file: !4247, line: 35, baseType: !768, size: 128, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "timestamped", scope: !4209, file: !4141, line: 961, baseType: !249, size: 8, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_list", scope: !4209, file: !4141, line: 963, baseType: !476, size: 128, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4209, file: !4141, line: 966, baseType: !183, size: 16, offset: 1088)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !4146, file: !4141, line: 595, baseType: !249, size: 8, offset: 6848)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !4146, file: !4141, line: 596, baseType: !4256, size: 64, offset: 6912)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4258, line: 89, size: 448, elements: !4259)
!4258 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4257, file: !4258, line: 90, baseType: !7, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4257, file: !4258, line: 91, baseType: !1012, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4257, file: !4258, line: 92, baseType: !476, size: 128, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4257, file: !4258, line: 93, baseType: !476, size: 128, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4257, file: !4258, line: 94, baseType: !1478, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4257, file: !4258, line: 95, baseType: !4266, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4258, line: 98, size: 320, elements: !4268)
!4268 = !{!4269, !4270, !4275, !4276}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4267, file: !4258, line: 99, baseType: !476, size: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4267, file: !4258, line: 100, baseType: !4271, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4258, line: 82, baseType: !4272)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{null, !4266}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4267, file: !4258, line: 101, baseType: !4256, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4267, file: !4258, line: 103, baseType: !133, size: 32, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "pump_messages", scope: !4146, file: !4141, line: 597, baseType: !4267, size: 320, offset: 6976)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !4146, file: !4141, line: 598, baseType: !489, offset: 7296)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4146, file: !4141, line: 599, baseType: !476, size: 128, offset: 7296)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg", scope: !4146, file: !4141, line: 600, baseType: !4186, size: 64, offset: 7424)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "idling", scope: !4146, file: !4141, line: 601, baseType: !249, size: 8, offset: 7488)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !4146, file: !4141, line: 602, baseType: !249, size: 8, offset: 7496)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4146, file: !4141, line: 603, baseType: !249, size: 8, offset: 7504)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !4146, file: !4141, line: 604, baseType: !249, size: 8, offset: 7512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "auto_runtime_pm", scope: !4146, file: !4141, line: 605, baseType: !249, size: 8, offset: 7520)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_prepared", scope: !4146, file: !4141, line: 606, baseType: !249, size: 8, offset: 7528)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_mapped", scope: !4146, file: !4141, line: 607, baseType: !249, size: 8, offset: 7536)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_enable", scope: !4146, file: !4141, line: 608, baseType: !249, size: 8, offset: 7544)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_mode_high", scope: !4146, file: !4141, line: 609, baseType: !249, size: 8, offset: 7552)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !4146, file: !4141, line: 610, baseType: !249, size: 8, offset: 7560)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_completion", scope: !4146, file: !4141, line: 611, baseType: !1761, size: 192, offset: 7616)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "max_dma_len", scope: !4146, file: !4141, line: 612, baseType: !139, size: 64, offset: 7808)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_transfer_hardware", scope: !4146, file: !4141, line: 614, baseType: !4294, size: 64, offset: 7872)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!133, !4145}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one_message", scope: !4146, file: !4141, line: 615, baseType: !4298, size: 64, offset: 7936)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!133, !4145, !4186}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_transfer_hardware", scope: !4146, file: !4141, line: 617, baseType: !4294, size: 64, offset: 8000)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_message", scope: !4146, file: !4141, line: 618, baseType: !4298, size: 64, offset: 8064)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_message", scope: !4146, file: !4141, line: 620, baseType: !4298, size: 64, offset: 8128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "slave_abort", scope: !4146, file: !4141, line: 622, baseType: !4294, size: 64, offset: 8192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs", scope: !4146, file: !4141, line: 628, baseType: !4306, size: 64, offset: 8256)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{null, !4139, !249}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one", scope: !4146, file: !4141, line: 629, baseType: !4310, size: 64, offset: 8320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!133, !4145, !4139, !4208}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "handle_err", scope: !4146, file: !4141, line: 631, baseType: !4314, size: 64, offset: 8384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !4145, !4186}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mem_ops", scope: !4146, file: !4141, line: 635, baseType: !4318, size: 64, offset: 8448)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller_mem_ops", file: !101, line: 264, size: 512, elements: !4321)
!4321 = !{!4322, !4361, !4367, !4371, !4375, !4391, !4395, !4399}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_op_size", scope: !4320, file: !101, line: 265, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!133, !4135, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_op", file: !101, line: 98, size: 448, elements: !4328)
!4328 = !{!4329, !4336, !4343, !4349}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4327, file: !101, line: 104, baseType: !4330, size: 48)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !101, line: 99, size: 48, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4330, file: !101, line: 100, baseType: !192, size: 8)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4330, file: !101, line: 101, baseType: !192, size: 8, offset: 8)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4330, file: !101, line: 102, baseType: !192, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4330, file: !101, line: 103, baseType: !183, size: 16, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4327, file: !101, line: 111, baseType: !4337, size: 128, offset: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !101, line: 106, size: 128, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4337, file: !101, line: 107, baseType: !192, size: 8)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4337, file: !101, line: 108, baseType: !192, size: 8, offset: 8)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4337, file: !101, line: 109, baseType: !192, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4337, file: !101, line: 110, baseType: !275, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !4327, file: !101, line: 117, baseType: !4344, size: 24, offset: 192)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !101, line: 113, size: 24, elements: !4345)
!4345 = !{!4346, !4347, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4344, file: !101, line: 114, baseType: !192, size: 8)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4344, file: !101, line: 115, baseType: !192, size: 8, offset: 8)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4344, file: !101, line: 116, baseType: !192, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4327, file: !101, line: 128, baseType: !4350, size: 192, offset: 256)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !101, line: 119, size: 192, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355, !4356}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth", scope: !4350, file: !101, line: 120, baseType: !192, size: 8)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !4350, file: !101, line: 121, baseType: !192, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4350, file: !101, line: 122, baseType: !100, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4350, file: !101, line: 123, baseType: !7, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4350, file: !101, line: 127, baseType: !4357, size: 64, offset: 128)
!4357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4350, file: !101, line: 124, size: 64, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4357, file: !101, line: 125, baseType: !131, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4357, file: !101, line: 126, baseType: !2385, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "supports_op", scope: !4320, file: !101, line: 266, baseType: !4362, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!249, !4135, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !4320, file: !101, line: 268, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!133, !4135, !4365}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4320, file: !101, line: 270, baseType: !4372, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!154, !4135}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_create", scope: !4320, file: !101, line: 271, baseType: !4376, size: 64, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!133, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_desc", file: !101, line: 175, size: 768, elements: !4381)
!4381 = !{!4382, !4383, !4389, !4390}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !4380, file: !101, line: 176, baseType: !4135, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4380, file: !101, line: 177, baseType: !4384, size: 576, offset: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_mem_dirmap_info", file: !101, line: 152, size: 576, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "op_tmpl", scope: !4384, file: !101, line: 153, baseType: !4327, size: 448)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4384, file: !101, line: 154, baseType: !275, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4384, file: !101, line: 155, baseType: !275, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "nodirmap", scope: !4380, file: !101, line: 178, baseType: !7, size: 32, offset: 640)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4380, file: !101, line: 179, baseType: !131, size: 64, offset: 704)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_destroy", scope: !4320, file: !101, line: 272, baseType: !4392, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !4379}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_read", scope: !4320, file: !101, line: 273, baseType: !4396, size: 64, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!560, !4379, !275, !139, !131}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap_write", scope: !4320, file: !101, line: 275, baseType: !4400, size: 64, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!560, !4379, !275, !139, !2385}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cs_setup", scope: !4146, file: !4141, line: 638, baseType: !4178, size: 32, offset: 8512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "cs_hold", scope: !4146, file: !4141, line: 639, baseType: !4178, size: 32, offset: 8544)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cs_inactive", scope: !4146, file: !4141, line: 640, baseType: !4178, size: 32, offset: 8576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpios", scope: !4146, file: !4141, line: 643, baseType: !937, size: 64, offset: 8640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiods", scope: !4146, file: !4141, line: 644, baseType: !4408, size: 64, offset: 8704)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4411, line: 19, flags: DIFlagFwdDecl)
!4411 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "use_gpio_descriptors", scope: !4146, file: !4141, line: 645, baseType: !249, size: 8, offset: 8768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "unused_native_cs", scope: !4146, file: !4141, line: 646, baseType: !192, size: 8, offset: 8776)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "max_native_cs", scope: !4146, file: !4141, line: 647, baseType: !192, size: 8, offset: 8784)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !4146, file: !4141, line: 650, baseType: !4416, size: 1792, offset: 8832)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_statistics", file: !4141, line: 56, size: 1792, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4433}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4416, file: !4141, line: 57, baseType: !489)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !4416, file: !4141, line: 59, baseType: !132, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4416, file: !4141, line: 60, baseType: !132, size: 64, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4416, file: !4141, line: 61, baseType: !132, size: 64, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !4416, file: !4141, line: 62, baseType: !132, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync", scope: !4416, file: !4141, line: 64, baseType: !132, size: 64, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync_immediate", scope: !4416, file: !4141, line: 65, baseType: !132, size: 64, offset: 320)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "spi_async", scope: !4416, file: !4141, line: 66, baseType: !132, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4416, file: !4141, line: 68, baseType: !277, size: 64, offset: 448)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_rx", scope: !4416, file: !4141, line: 69, baseType: !277, size: 64, offset: 512)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_tx", scope: !4416, file: !4141, line: 70, baseType: !277, size: 64, offset: 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_bytes_histo", scope: !4416, file: !4141, line: 73, baseType: !4430, size: 1088, offset: 640)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1088, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 17)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "transfers_split_maxsize", scope: !4416, file: !4141, line: 75, baseType: !132, size: 64, offset: 1728)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx", scope: !4146, file: !4141, line: 653, baseType: !4435, size: 64, offset: 10624)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !4141, line: 18, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx", scope: !4146, file: !4141, line: 654, baseType: !4435, size: 64, offset: 10688)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_rx", scope: !4146, file: !4141, line: 657, baseType: !131, size: 64, offset: 10752)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_tx", scope: !4146, file: !4141, line: 658, baseType: !131, size: 64, offset: 10816)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "fw_translate_cs", scope: !4146, file: !4141, line: 660, baseType: !4441, size: 64, offset: 10880)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!133, !4145, !7}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_supported", scope: !4146, file: !4141, line: 666, baseType: !249, size: 8, offset: 10944)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !4146, file: !4141, line: 669, baseType: !132, size: 64, offset: 11008)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4140, file: !4141, line: 162, baseType: !4145, size: 64, offset: 5632)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !4140, file: !4141, line: 163, baseType: !271, size: 32, offset: 5696)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !4140, file: !4141, line: 164, baseType: !192, size: 8, offset: 5728)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !4140, file: !4141, line: 165, baseType: !192, size: 8, offset: 5736)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !4140, file: !4141, line: 166, baseType: !249, size: 8, offset: 5744)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4140, file: !4141, line: 167, baseType: !271, size: 32, offset: 5760)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4140, file: !4141, line: 188, baseType: !133, size: 32, offset: 5792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "controller_state", scope: !4140, file: !4141, line: 189, baseType: !131, size: 64, offset: 5824)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "controller_data", scope: !4140, file: !4141, line: 190, baseType: !131, size: 64, offset: 5888)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !4140, file: !4141, line: 191, baseType: !2955, size: 256, offset: 5952)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4140, file: !4141, line: 192, baseType: !154, size: 64, offset: 6208)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpio", scope: !4140, file: !4141, line: 193, baseType: !133, size: 32, offset: 6272)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiod", scope: !4140, file: !4141, line: 194, baseType: !4409, size: 64, offset: 6336)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !4140, file: !4141, line: 195, baseType: !4178, size: 32, offset: 6400)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !4140, file: !4141, line: 198, baseType: !4416, size: 1792, offset: 6464)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "drvpriv", scope: !4136, file: !101, line: 196, baseType: !131, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4136, file: !101, line: 197, baseType: !154, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "bouncebuf", scope: !261, file: !107, line: 364, baseType: !4464, size: 64, offset: 9984)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bouncebuf_size", scope: !261, file: !107, line: 365, baseType: !139, size: 64, offset: 10048)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !261, file: !107, line: 366, baseType: !4467, size: 64, offset: 10112)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4469)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "flash_info", file: !107, line: 325, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !261, file: !107, line: 367, baseType: !4471, size: 64, offset: 10176)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "spi_nor_manufacturer", file: !107, line: 326, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !261, file: !107, line: 368, baseType: !271, size: 32, offset: 10240)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "addr_width", scope: !261, file: !107, line: 369, baseType: !192, size: 8, offset: 10272)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "erase_opcode", scope: !261, file: !107, line: 370, baseType: !192, size: 8, offset: 10280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "read_opcode", scope: !261, file: !107, line: 371, baseType: !192, size: 8, offset: 10288)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "read_dummy", scope: !261, file: !107, line: 372, baseType: !192, size: 8, offset: 10296)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "program_opcode", scope: !261, file: !107, line: 373, baseType: !192, size: 8, offset: 10304)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "read_proto", scope: !261, file: !107, line: 374, baseType: !106, size: 32, offset: 10336)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "write_proto", scope: !261, file: !107, line: 375, baseType: !106, size: 32, offset: 10368)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "reg_proto", scope: !261, file: !107, line: 376, baseType: !106, size: 32, offset: 10400)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sst_write_second", scope: !261, file: !107, line: 377, baseType: !249, size: 8, offset: 10432)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !107, line: 378, baseType: !271, size: 32, offset: 10464)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "controller_ops", scope: !261, file: !107, line: 380, baseType: !4486, size: 64, offset: 10496)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !261, file: !107, line: 382, baseType: !4488, size: 64, offset: 10560)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "spi_nor_flash_parameter", file: !107, line: 327, flags: DIFlagFwdDecl)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dirmap", scope: !261, file: !107, line: 387, baseType: !4491, size: 128, offset: 10624)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !107, line: 384, size: 128, elements: !4492)
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !4491, file: !107, line: 385, baseType: !4379, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "wdesc", scope: !4491, file: !107, line: 386, baseType: !4379, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !261, file: !107, line: 389, baseType: !131, size: 64, offset: 10752)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !254, file: !107, line: 310, baseType: !4497, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !260}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "read_reg", scope: !254, file: !107, line: 311, baseType: !4501, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!133, !260, !192, !4464, !139}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "write_reg", scope: !254, file: !107, line: 312, baseType: !4505, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!133, !260, !192, !4508, !139}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !254, file: !107, line: 315, baseType: !4511, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!560, !260, !143, !139, !4464}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !254, file: !107, line: 316, baseType: !4515, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!560, !260, !143, !139, !4508}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !254, file: !107, line: 318, baseType: !4519, size: 64, offset: 384)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!133, !260, !143}
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !2459)
!4523 = !{i32 7, !"Dwarf Version", i32 4}
!4524 = !{i32 2, !"Debug Info Version", i32 3}
!4525 = !{i32 1, !"wchar_size", i32 2}
!4526 = !{i32 1, !"Code Model", i32 2}
!4527 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4528 = distinct !DISubprogram(name: "intel_spi_probe", scope: !3, file: !3, line: 906, type: !4529, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!4531, !3636, !4556, !4536}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_spi", file: !3, line: 144, size: 11392, elements: !4533)
!4533 = !{!4534, !4535, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4532, file: !3, line: 145, baseType: !3636, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4532, file: !3, line: 146, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4538)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_spi_boardinfo", file: !94, line: 24, size: 64, elements: !4539)
!4539 = !{!4540, !4541}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4538, file: !94, line: 25, baseType: !93, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "writeable", scope: !4538, file: !94, line: 26, baseType: !249, size: 8, offset: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "nor", scope: !4532, file: !3, line: 147, baseType: !261, size: 10816, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4532, file: !3, line: 148, baseType: !131, size: 64, offset: 10944)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pregs", scope: !4532, file: !3, line: 149, baseType: !131, size: 64, offset: 11008)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "sregs", scope: !4532, file: !3, line: 150, baseType: !131, size: 64, offset: 11072)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "nregions", scope: !4532, file: !3, line: 151, baseType: !139, size: 64, offset: 11136)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pr_num", scope: !4532, file: !3, line: 152, baseType: !139, size: 64, offset: 11200)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "writeable", scope: !4532, file: !3, line: 153, baseType: !249, size: 8, offset: 11264)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4532, file: !3, line: 154, baseType: !249, size: 8, offset: 11272)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "swseq_reg", scope: !4532, file: !3, line: 155, baseType: !249, size: 8, offset: 11280)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "swseq_erase", scope: !4532, file: !3, line: 156, baseType: !249, size: 8, offset: 11288)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "erase_64k", scope: !4532, file: !3, line: 157, baseType: !249, size: 8, offset: 11296)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_preopcode", scope: !4532, file: !3, line: 158, baseType: !192, size: 8, offset: 11304)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "opcodes", scope: !4532, file: !3, line: 159, baseType: !4555, size: 64, offset: 11312)
!4555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !1591)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4558, line: 20, size: 512, elements: !4559)
!4558 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4557, file: !4558, line: 21, baseType: !356, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4557, file: !4558, line: 22, baseType: !356, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4557, file: !4558, line: 23, baseType: !154, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4557, file: !4558, line: 24, baseType: !132, size: 64, offset: 192)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4557, file: !4558, line: 25, baseType: !132, size: 64, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4557, file: !4558, line: 26, baseType: !4556, size: 64, offset: 320)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4557, file: !4558, line: 26, baseType: !4556, size: 64, offset: 384)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4557, file: !4558, line: 26, baseType: !4556, size: 64, offset: 448)
!4568 = !DILocalVariable(name: "dev", arg: 1, scope: !4528, file: !3, line: 906, type: !3636)
!4569 = !DILocation(line: 906, column: 50, scope: !4528)
!4570 = !DILocalVariable(name: "mem", arg: 2, scope: !4528, file: !3, line: 907, type: !4556)
!4571 = !DILocation(line: 907, column: 19, scope: !4528)
!4572 = !DILocalVariable(name: "info", arg: 3, scope: !4528, file: !3, line: 907, type: !4536)
!4573 = !DILocation(line: 907, column: 58, scope: !4528)
!4574 = !DILocalVariable(name: "hwcaps", scope: !4528, file: !3, line: 909, type: !4575)
!4575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4576)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_nor_hwcaps", file: !107, line: 220, size: 32, elements: !4577)
!4577 = !{!4578}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4576, file: !107, line: 221, baseType: !271, size: 32)
!4579 = !DILocation(line: 909, column: 30, scope: !4528)
!4580 = !DILocalVariable(name: "part", scope: !4528, file: !3, line: 914, type: !4581)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partition", file: !4582, line: 46, size: 384, elements: !4583)
!4582 = !DIFile(filename: "./include/linux/mtd/partitions.h", directory: "/home/lizy2001/genbc/linux")
!4583 = !{!4584, !4585, !4588, !4589, !4590, !4591, !4592}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4581, file: !4582, line: 47, baseType: !154, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !4581, file: !4582, line: 48, baseType: !4586, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4581, file: !4582, line: 49, baseType: !274, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4581, file: !4582, line: 50, baseType: !274, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "mask_flags", scope: !4581, file: !4582, line: 51, baseType: !270, size: 32, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "add_flags", scope: !4581, file: !4582, line: 52, baseType: !270, size: 32, offset: 288)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4581, file: !4582, line: 53, baseType: !3941, size: 64, offset: 320)
!4593 = !DILocation(line: 914, column: 23, scope: !4528)
!4594 = !DILocalVariable(name: "ispi", scope: !4528, file: !3, line: 915, type: !4531)
!4595 = !DILocation(line: 915, column: 20, scope: !4528)
!4596 = !DILocalVariable(name: "ret", scope: !4528, file: !3, line: 916, type: !133)
!4597 = !DILocation(line: 916, column: 6, scope: !4528)
!4598 = !DILocation(line: 918, column: 7, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 918, column: 6)
!4600 = !DILocation(line: 918, column: 12, scope: !4599)
!4601 = !DILocation(line: 918, column: 16, scope: !4599)
!4602 = !DILocation(line: 918, column: 6, scope: !4528)
!4603 = !DILocation(line: 919, column: 10, scope: !4599)
!4604 = !DILocation(line: 919, column: 3, scope: !4599)
!4605 = !DILocation(line: 921, column: 22, scope: !4528)
!4606 = !DILocation(line: 921, column: 9, scope: !4528)
!4607 = !DILocation(line: 921, column: 7, scope: !4528)
!4608 = !DILocation(line: 922, column: 7, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 922, column: 6)
!4610 = !DILocation(line: 922, column: 6, scope: !4528)
!4611 = !DILocation(line: 923, column: 10, scope: !4609)
!4612 = !DILocation(line: 923, column: 3, scope: !4609)
!4613 = !DILocation(line: 925, column: 37, scope: !4528)
!4614 = !DILocation(line: 925, column: 42, scope: !4528)
!4615 = !DILocation(line: 925, column: 15, scope: !4528)
!4616 = !DILocation(line: 925, column: 2, scope: !4528)
!4617 = !DILocation(line: 925, column: 8, scope: !4528)
!4618 = !DILocation(line: 925, column: 13, scope: !4528)
!4619 = !DILocation(line: 926, column: 13, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 926, column: 6)
!4621 = !DILocation(line: 926, column: 19, scope: !4620)
!4622 = !DILocation(line: 926, column: 6, scope: !4620)
!4623 = !DILocation(line: 926, column: 6, scope: !4528)
!4624 = !DILocation(line: 927, column: 19, scope: !4620)
!4625 = !DILocation(line: 927, column: 25, scope: !4620)
!4626 = !DILocation(line: 927, column: 10, scope: !4620)
!4627 = !DILocation(line: 927, column: 3, scope: !4620)
!4628 = !DILocation(line: 929, column: 14, scope: !4528)
!4629 = !DILocation(line: 929, column: 2, scope: !4528)
!4630 = !DILocation(line: 929, column: 8, scope: !4528)
!4631 = !DILocation(line: 929, column: 12, scope: !4528)
!4632 = !DILocation(line: 930, column: 15, scope: !4528)
!4633 = !DILocation(line: 930, column: 2, scope: !4528)
!4634 = !DILocation(line: 930, column: 8, scope: !4528)
!4635 = !DILocation(line: 930, column: 13, scope: !4528)
!4636 = !DILocation(line: 931, column: 20, scope: !4528)
!4637 = !DILocation(line: 931, column: 26, scope: !4528)
!4638 = !DILocation(line: 931, column: 2, scope: !4528)
!4639 = !DILocation(line: 931, column: 8, scope: !4528)
!4640 = !DILocation(line: 931, column: 18, scope: !4528)
!4641 = !DILocation(line: 933, column: 23, scope: !4528)
!4642 = !DILocation(line: 933, column: 8, scope: !4528)
!4643 = !DILocation(line: 933, column: 6, scope: !4528)
!4644 = !DILocation(line: 934, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 934, column: 6)
!4646 = !DILocation(line: 934, column: 6, scope: !4528)
!4647 = !DILocation(line: 935, column: 18, scope: !4645)
!4648 = !DILocation(line: 935, column: 10, scope: !4645)
!4649 = !DILocation(line: 935, column: 3, scope: !4645)
!4650 = !DILocation(line: 937, column: 18, scope: !4528)
!4651 = !DILocation(line: 937, column: 24, scope: !4528)
!4652 = !DILocation(line: 937, column: 2, scope: !4528)
!4653 = !DILocation(line: 937, column: 8, scope: !4528)
!4654 = !DILocation(line: 937, column: 12, scope: !4528)
!4655 = !DILocation(line: 937, column: 16, scope: !4528)
!4656 = !DILocation(line: 938, column: 19, scope: !4528)
!4657 = !DILocation(line: 938, column: 2, scope: !4528)
!4658 = !DILocation(line: 938, column: 8, scope: !4528)
!4659 = !DILocation(line: 938, column: 12, scope: !4528)
!4660 = !DILocation(line: 938, column: 17, scope: !4528)
!4661 = !DILocation(line: 939, column: 2, scope: !4528)
!4662 = !DILocation(line: 939, column: 8, scope: !4528)
!4663 = !DILocation(line: 939, column: 12, scope: !4528)
!4664 = !DILocation(line: 939, column: 27, scope: !4528)
!4665 = !DILocation(line: 941, column: 22, scope: !4528)
!4666 = !DILocation(line: 941, column: 28, scope: !4528)
!4667 = !DILocation(line: 941, column: 8, scope: !4528)
!4668 = !DILocation(line: 941, column: 6, scope: !4528)
!4669 = !DILocation(line: 942, column: 6, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 942, column: 6)
!4671 = !DILocation(line: 942, column: 6, scope: !4528)
!4672 = !DILocation(line: 943, column: 3, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 942, column: 11)
!4674 = !DILocation(line: 944, column: 18, scope: !4673)
!4675 = !DILocation(line: 944, column: 10, scope: !4673)
!4676 = !DILocation(line: 944, column: 3, scope: !4673)
!4677 = !DILocation(line: 947, column: 27, scope: !4528)
!4678 = !DILocation(line: 947, column: 2, scope: !4528)
!4679 = !DILocation(line: 950, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 950, column: 6)
!4681 = !DILocation(line: 950, column: 13, scope: !4680)
!4682 = !DILocation(line: 950, column: 23, scope: !4680)
!4683 = !DILocation(line: 950, column: 27, scope: !4680)
!4684 = !DILocation(line: 950, column: 6, scope: !4528)
!4685 = !DILocation(line: 951, column: 3, scope: !4680)
!4686 = !DILocation(line: 951, column: 9, scope: !4680)
!4687 = !DILocation(line: 951, column: 13, scope: !4680)
!4688 = !DILocation(line: 951, column: 17, scope: !4680)
!4689 = !DILocation(line: 951, column: 23, scope: !4680)
!4690 = !DILocation(line: 953, column: 8, scope: !4528)
!4691 = !DILocation(line: 953, column: 6, scope: !4528)
!4692 = !DILocation(line: 954, column: 6, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 954, column: 6)
!4694 = !DILocation(line: 954, column: 6, scope: !4528)
!4695 = !DILocation(line: 955, column: 18, scope: !4693)
!4696 = !DILocation(line: 955, column: 10, scope: !4693)
!4697 = !DILocation(line: 955, column: 3, scope: !4693)
!4698 = !DILocation(line: 957, column: 9, scope: !4528)
!4699 = !DILocation(line: 957, column: 2, scope: !4528)
!4700 = !DILocation(line: 958, column: 1, scope: !4528)
!4701 = distinct !DISubprogram(name: "ERR_PTR", scope: !4702, file: !4702, line: 24, type: !4703, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4702 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!131, !563}
!4705 = !DILocalVariable(name: "error", arg: 1, scope: !4701, file: !4702, line: 24, type: !563)
!4706 = !DILocation(line: 24, column: 48, scope: !4701)
!4707 = !DILocation(line: 26, column: 18, scope: !4701)
!4708 = !DILocation(line: 26, column: 9, scope: !4701)
!4709 = !DILocation(line: 26, column: 2, scope: !4701)
!4710 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4711, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!131, !3636, !139, !129}
!4713 = !DILocalVariable(name: "dev", arg: 1, scope: !4710, file: !73, line: 215, type: !3636)
!4714 = !DILocation(line: 215, column: 49, scope: !4710)
!4715 = !DILocalVariable(name: "size", arg: 2, scope: !4710, file: !73, line: 215, type: !139)
!4716 = !DILocation(line: 215, column: 61, scope: !4710)
!4717 = !DILocalVariable(name: "gfp", arg: 3, scope: !4710, file: !73, line: 215, type: !129)
!4718 = !DILocation(line: 215, column: 73, scope: !4710)
!4719 = !DILocation(line: 217, column: 22, scope: !4710)
!4720 = !DILocation(line: 217, column: 27, scope: !4710)
!4721 = !DILocation(line: 217, column: 33, scope: !4710)
!4722 = !DILocation(line: 217, column: 37, scope: !4710)
!4723 = !DILocation(line: 217, column: 9, scope: !4710)
!4724 = !DILocation(line: 217, column: 2, scope: !4710)
!4725 = distinct !DISubprogram(name: "IS_ERR", scope: !4702, file: !4702, line: 34, type: !4726, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!249, !2385}
!4728 = !DILocalVariable(name: "ptr", arg: 1, scope: !4725, file: !4702, line: 34, type: !2385)
!4729 = !DILocation(line: 34, column: 60, scope: !4725)
!4730 = !DILocation(line: 36, column: 9, scope: !4725)
!4731 = !DILocation(line: 36, column: 2, scope: !4725)
!4732 = distinct !DISubprogram(name: "ERR_CAST", scope: !4702, file: !4702, line: 51, type: !4733, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!131, !2385}
!4735 = !DILocalVariable(name: "ptr", arg: 1, scope: !4732, file: !4702, line: 51, type: !2385)
!4736 = !DILocation(line: 51, column: 64, scope: !4732)
!4737 = !DILocation(line: 54, column: 18, scope: !4732)
!4738 = !DILocation(line: 54, column: 2, scope: !4732)
!4739 = distinct !DISubprogram(name: "intel_spi_init", scope: !3, file: !3, line: 308, type: !4740, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!133, !4531}
!4742 = !DILocalVariable(name: "ispi", arg: 1, scope: !4739, file: !3, line: 308, type: !4531)
!4743 = !DILocation(line: 308, column: 45, scope: !4739)
!4744 = !DILocalVariable(name: "opmenu0", scope: !4739, file: !3, line: 310, type: !271)
!4745 = !DILocation(line: 310, column: 6, scope: !4739)
!4746 = !DILocalVariable(name: "opmenu1", scope: !4739, file: !3, line: 310, type: !271)
!4747 = !DILocation(line: 310, column: 15, scope: !4739)
!4748 = !DILocalVariable(name: "lvscc", scope: !4739, file: !3, line: 310, type: !271)
!4749 = !DILocation(line: 310, column: 24, scope: !4739)
!4750 = !DILocalVariable(name: "uvscc", scope: !4739, file: !3, line: 310, type: !271)
!4751 = !DILocation(line: 310, column: 31, scope: !4739)
!4752 = !DILocalVariable(name: "val", scope: !4739, file: !3, line: 310, type: !271)
!4753 = !DILocation(line: 310, column: 38, scope: !4739)
!4754 = !DILocalVariable(name: "i", scope: !4739, file: !3, line: 311, type: !133)
!4755 = !DILocation(line: 311, column: 6, scope: !4739)
!4756 = !DILocation(line: 313, column: 10, scope: !4739)
!4757 = !DILocation(line: 313, column: 16, scope: !4739)
!4758 = !DILocation(line: 313, column: 22, scope: !4739)
!4759 = !DILocation(line: 313, column: 2, scope: !4739)
!4760 = !DILocation(line: 315, column: 17, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 313, column: 28)
!4762 = !DILocation(line: 315, column: 23, scope: !4761)
!4763 = !DILocation(line: 315, column: 28, scope: !4761)
!4764 = !DILocation(line: 315, column: 3, scope: !4761)
!4765 = !DILocation(line: 315, column: 9, scope: !4761)
!4766 = !DILocation(line: 315, column: 15, scope: !4761)
!4767 = !DILocation(line: 316, column: 17, scope: !4761)
!4768 = !DILocation(line: 316, column: 23, scope: !4761)
!4769 = !DILocation(line: 316, column: 28, scope: !4761)
!4770 = !DILocation(line: 316, column: 3, scope: !4761)
!4771 = !DILocation(line: 316, column: 9, scope: !4761)
!4772 = !DILocation(line: 316, column: 15, scope: !4761)
!4773 = !DILocation(line: 317, column: 3, scope: !4761)
!4774 = !DILocation(line: 317, column: 9, scope: !4761)
!4775 = !DILocation(line: 317, column: 18, scope: !4761)
!4776 = !DILocation(line: 318, column: 3, scope: !4761)
!4777 = !DILocation(line: 318, column: 9, scope: !4761)
!4778 = !DILocation(line: 318, column: 16, scope: !4761)
!4779 = !DILocation(line: 319, column: 3, scope: !4761)
!4780 = !DILocation(line: 319, column: 9, scope: !4761)
!4781 = !DILocation(line: 319, column: 19, scope: !4761)
!4782 = !DILocation(line: 321, column: 7, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 321, column: 7)
!4784 = !DILocation(line: 321, column: 7, scope: !4761)
!4785 = !DILocation(line: 323, column: 16, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 321, column: 18)
!4787 = !DILocation(line: 323, column: 22, scope: !4786)
!4788 = !DILocation(line: 323, column: 27, scope: !4786)
!4789 = !DILocation(line: 323, column: 10, scope: !4786)
!4790 = !DILocation(line: 323, column: 8, scope: !4786)
!4791 = !DILocation(line: 324, column: 10, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 324, column: 8)
!4793 = !DILocation(line: 324, column: 14, scope: !4792)
!4794 = !DILocation(line: 324, column: 8, scope: !4786)
!4795 = !DILocation(line: 325, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 324, column: 30)
!4797 = !DILocation(line: 326, column: 12, scope: !4796)
!4798 = !DILocation(line: 326, column: 17, scope: !4796)
!4799 = !DILocation(line: 326, column: 23, scope: !4796)
!4800 = !DILocation(line: 326, column: 28, scope: !4796)
!4801 = !DILocation(line: 326, column: 5, scope: !4796)
!4802 = !DILocation(line: 327, column: 17, scope: !4796)
!4803 = !DILocation(line: 327, column: 23, scope: !4796)
!4804 = !DILocation(line: 327, column: 28, scope: !4796)
!4805 = !DILocation(line: 327, column: 11, scope: !4796)
!4806 = !DILocation(line: 327, column: 9, scope: !4796)
!4807 = !DILocation(line: 328, column: 4, scope: !4796)
!4808 = !DILocation(line: 330, column: 25, scope: !4786)
!4809 = !DILocation(line: 330, column: 29, scope: !4786)
!4810 = !DILocation(line: 330, column: 23, scope: !4786)
!4811 = !DILocation(line: 330, column: 22, scope: !4786)
!4812 = !DILocation(line: 330, column: 4, scope: !4786)
!4813 = !DILocation(line: 330, column: 10, scope: !4786)
!4814 = !DILocation(line: 330, column: 20, scope: !4786)
!4815 = !DILocation(line: 331, column: 3, scope: !4786)
!4816 = !DILocation(line: 333, column: 3, scope: !4761)
!4817 = !DILocation(line: 336, column: 17, scope: !4761)
!4818 = !DILocation(line: 336, column: 23, scope: !4761)
!4819 = !DILocation(line: 336, column: 28, scope: !4761)
!4820 = !DILocation(line: 336, column: 3, scope: !4761)
!4821 = !DILocation(line: 336, column: 9, scope: !4761)
!4822 = !DILocation(line: 336, column: 15, scope: !4761)
!4823 = !DILocation(line: 337, column: 17, scope: !4761)
!4824 = !DILocation(line: 337, column: 23, scope: !4761)
!4825 = !DILocation(line: 337, column: 28, scope: !4761)
!4826 = !DILocation(line: 337, column: 3, scope: !4761)
!4827 = !DILocation(line: 337, column: 9, scope: !4761)
!4828 = !DILocation(line: 337, column: 15, scope: !4761)
!4829 = !DILocation(line: 338, column: 3, scope: !4761)
!4830 = !DILocation(line: 338, column: 9, scope: !4761)
!4831 = !DILocation(line: 338, column: 18, scope: !4761)
!4832 = !DILocation(line: 339, column: 3, scope: !4761)
!4833 = !DILocation(line: 339, column: 9, scope: !4761)
!4834 = !DILocation(line: 339, column: 16, scope: !4761)
!4835 = !DILocation(line: 340, column: 3, scope: !4761)
!4836 = !DILocation(line: 340, column: 9, scope: !4761)
!4837 = !DILocation(line: 340, column: 19, scope: !4761)
!4838 = !DILocation(line: 341, column: 3, scope: !4761)
!4839 = !DILocation(line: 344, column: 17, scope: !4761)
!4840 = !DILocation(line: 344, column: 23, scope: !4761)
!4841 = !DILocation(line: 344, column: 28, scope: !4761)
!4842 = !DILocation(line: 344, column: 3, scope: !4761)
!4843 = !DILocation(line: 344, column: 9, scope: !4761)
!4844 = !DILocation(line: 344, column: 15, scope: !4761)
!4845 = !DILocation(line: 345, column: 17, scope: !4761)
!4846 = !DILocation(line: 345, column: 23, scope: !4761)
!4847 = !DILocation(line: 345, column: 28, scope: !4761)
!4848 = !DILocation(line: 345, column: 3, scope: !4761)
!4849 = !DILocation(line: 345, column: 9, scope: !4761)
!4850 = !DILocation(line: 345, column: 15, scope: !4761)
!4851 = !DILocation(line: 346, column: 3, scope: !4761)
!4852 = !DILocation(line: 346, column: 9, scope: !4761)
!4853 = !DILocation(line: 346, column: 18, scope: !4761)
!4854 = !DILocation(line: 347, column: 3, scope: !4761)
!4855 = !DILocation(line: 347, column: 9, scope: !4761)
!4856 = !DILocation(line: 347, column: 16, scope: !4761)
!4857 = !DILocation(line: 348, column: 3, scope: !4761)
!4858 = !DILocation(line: 348, column: 9, scope: !4761)
!4859 = !DILocation(line: 348, column: 19, scope: !4761)
!4860 = !DILocation(line: 349, column: 3, scope: !4761)
!4861 = !DILocation(line: 352, column: 3, scope: !4761)
!4862 = !DILocation(line: 352, column: 9, scope: !4761)
!4863 = !DILocation(line: 352, column: 15, scope: !4761)
!4864 = !DILocation(line: 353, column: 17, scope: !4761)
!4865 = !DILocation(line: 353, column: 23, scope: !4761)
!4866 = !DILocation(line: 353, column: 28, scope: !4761)
!4867 = !DILocation(line: 353, column: 3, scope: !4761)
!4868 = !DILocation(line: 353, column: 9, scope: !4761)
!4869 = !DILocation(line: 353, column: 15, scope: !4761)
!4870 = !DILocation(line: 354, column: 3, scope: !4761)
!4871 = !DILocation(line: 354, column: 9, scope: !4761)
!4872 = !DILocation(line: 354, column: 18, scope: !4761)
!4873 = !DILocation(line: 355, column: 3, scope: !4761)
!4874 = !DILocation(line: 355, column: 9, scope: !4761)
!4875 = !DILocation(line: 355, column: 16, scope: !4761)
!4876 = !DILocation(line: 356, column: 3, scope: !4761)
!4877 = !DILocation(line: 359, column: 3, scope: !4761)
!4878 = !DILocation(line: 363, column: 14, scope: !4739)
!4879 = !DILocation(line: 363, column: 20, scope: !4739)
!4880 = !DILocation(line: 363, column: 25, scope: !4739)
!4881 = !DILocation(line: 363, column: 8, scope: !4739)
!4882 = !DILocation(line: 363, column: 6, scope: !4739)
!4883 = !DILocation(line: 364, column: 6, scope: !4739)
!4884 = !DILocation(line: 365, column: 9, scope: !4739)
!4885 = !DILocation(line: 365, column: 14, scope: !4739)
!4886 = !DILocation(line: 365, column: 20, scope: !4739)
!4887 = !DILocation(line: 365, column: 25, scope: !4739)
!4888 = !DILocation(line: 365, column: 2, scope: !4739)
!4889 = !DILocation(line: 375, column: 16, scope: !4739)
!4890 = !DILocation(line: 375, column: 22, scope: !4739)
!4891 = !DILocation(line: 375, column: 27, scope: !4739)
!4892 = !DILocation(line: 375, column: 10, scope: !4739)
!4893 = !DILocation(line: 375, column: 8, scope: !4739)
!4894 = !DILocation(line: 376, column: 16, scope: !4739)
!4895 = !DILocation(line: 376, column: 22, scope: !4739)
!4896 = !DILocation(line: 376, column: 27, scope: !4739)
!4897 = !DILocation(line: 376, column: 10, scope: !4739)
!4898 = !DILocation(line: 376, column: 8, scope: !4739)
!4899 = !DILocation(line: 377, column: 8, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 377, column: 6)
!4901 = !DILocation(line: 377, column: 14, scope: !4900)
!4902 = !DILocation(line: 377, column: 35, scope: !4900)
!4903 = !DILocation(line: 377, column: 40, scope: !4900)
!4904 = !DILocation(line: 377, column: 46, scope: !4900)
!4905 = !DILocation(line: 377, column: 6, scope: !4739)
!4906 = !DILocation(line: 378, column: 3, scope: !4900)
!4907 = !DILocation(line: 378, column: 9, scope: !4900)
!4908 = !DILocation(line: 378, column: 21, scope: !4900)
!4909 = !DILocation(line: 380, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 380, column: 6)
!4911 = !DILocation(line: 380, column: 12, scope: !4910)
!4912 = !DILocation(line: 380, column: 18, scope: !4910)
!4913 = !DILocation(line: 380, column: 23, scope: !4910)
!4914 = !DILocation(line: 380, column: 40, scope: !4910)
!4915 = !DILocation(line: 380, column: 44, scope: !4910)
!4916 = !DILocation(line: 380, column: 50, scope: !4910)
!4917 = !DILocation(line: 380, column: 6, scope: !4739)
!4918 = !DILocation(line: 381, column: 9, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 381, column: 7)
!4920 = !DILocation(line: 381, column: 15, scope: !4919)
!4921 = !DILocation(line: 381, column: 40, scope: !4919)
!4922 = !DILocation(line: 382, column: 9, scope: !4919)
!4923 = !DILocation(line: 382, column: 15, scope: !4919)
!4924 = !DILocation(line: 381, column: 7, scope: !4910)
!4925 = !DILocation(line: 383, column: 4, scope: !4919)
!4926 = !DILocation(line: 383, column: 10, scope: !4919)
!4927 = !DILocation(line: 383, column: 20, scope: !4919)
!4928 = !DILocation(line: 382, column: 38, scope: !4919)
!4929 = !DILocation(line: 385, column: 6, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 385, column: 6)
!4931 = !DILocation(line: 385, column: 12, scope: !4930)
!4932 = !DILocation(line: 385, column: 18, scope: !4930)
!4933 = !DILocation(line: 385, column: 26, scope: !4930)
!4934 = !DILocation(line: 385, column: 30, scope: !4930)
!4935 = !DILocation(line: 385, column: 36, scope: !4930)
!4936 = !DILocation(line: 385, column: 46, scope: !4930)
!4937 = !DILocation(line: 385, column: 49, scope: !4930)
!4938 = !DILocation(line: 385, column: 55, scope: !4930)
!4939 = !DILocation(line: 385, column: 6, scope: !4739)
!4940 = !DILocation(line: 386, column: 3, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 385, column: 69)
!4942 = !DILocation(line: 387, column: 3, scope: !4941)
!4943 = !DILocation(line: 395, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 395, column: 6)
!4945 = !DILocation(line: 395, column: 12, scope: !4944)
!4946 = !DILocation(line: 395, column: 6, scope: !4739)
!4947 = !DILocation(line: 397, column: 15, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 395, column: 23)
!4949 = !DILocation(line: 397, column: 21, scope: !4948)
!4950 = !DILocation(line: 397, column: 27, scope: !4948)
!4951 = !DILocation(line: 397, column: 9, scope: !4948)
!4952 = !DILocation(line: 397, column: 7, scope: !4948)
!4953 = !DILocation(line: 398, column: 7, scope: !4948)
!4954 = !DILocation(line: 399, column: 10, scope: !4948)
!4955 = !DILocation(line: 399, column: 15, scope: !4948)
!4956 = !DILocation(line: 399, column: 21, scope: !4948)
!4957 = !DILocation(line: 399, column: 27, scope: !4948)
!4958 = !DILocation(line: 399, column: 3, scope: !4948)
!4959 = !DILocation(line: 400, column: 2, scope: !4948)
!4960 = !DILocation(line: 403, column: 14, scope: !4739)
!4961 = !DILocation(line: 403, column: 20, scope: !4739)
!4962 = !DILocation(line: 403, column: 25, scope: !4739)
!4963 = !DILocation(line: 403, column: 8, scope: !4739)
!4964 = !DILocation(line: 403, column: 6, scope: !4739)
!4965 = !DILocation(line: 404, column: 20, scope: !4739)
!4966 = !DILocation(line: 404, column: 24, scope: !4739)
!4967 = !DILocation(line: 404, column: 18, scope: !4739)
!4968 = !DILocation(line: 404, column: 17, scope: !4739)
!4969 = !DILocation(line: 404, column: 2, scope: !4739)
!4970 = !DILocation(line: 404, column: 8, scope: !4739)
!4971 = !DILocation(line: 404, column: 15, scope: !4739)
!4972 = !DILocation(line: 406, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 406, column: 6)
!4974 = !DILocation(line: 406, column: 12, scope: !4973)
!4975 = !DILocation(line: 406, column: 19, scope: !4973)
!4976 = !DILocation(line: 406, column: 22, scope: !4973)
!4977 = !DILocation(line: 406, column: 28, scope: !4973)
!4978 = !DILocation(line: 406, column: 6, scope: !4739)
!4979 = !DILocation(line: 412, column: 19, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 406, column: 35)
!4981 = !DILocation(line: 412, column: 25, scope: !4980)
!4982 = !DILocation(line: 412, column: 31, scope: !4980)
!4983 = !DILocation(line: 412, column: 13, scope: !4980)
!4984 = !DILocation(line: 412, column: 11, scope: !4980)
!4985 = !DILocation(line: 413, column: 19, scope: !4980)
!4986 = !DILocation(line: 413, column: 25, scope: !4980)
!4987 = !DILocation(line: 413, column: 31, scope: !4980)
!4988 = !DILocation(line: 413, column: 13, scope: !4980)
!4989 = !DILocation(line: 413, column: 11, scope: !4980)
!4990 = !DILocation(line: 415, column: 7, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 415, column: 7)
!4992 = !DILocation(line: 415, column: 15, scope: !4991)
!4993 = !DILocation(line: 415, column: 18, scope: !4991)
!4994 = !DILocation(line: 415, column: 7, scope: !4980)
!4995 = !DILocation(line: 416, column: 11, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 416, column: 4)
!4997 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 415, column: 27)
!4998 = !DILocation(line: 416, column: 9, scope: !4996)
!4999 = !DILocation(line: 416, column: 16, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 416, column: 4)
!5001 = !DILocation(line: 416, column: 18, scope: !5000)
!5002 = !DILocation(line: 416, column: 4, scope: !4996)
!5003 = !DILocation(line: 417, column: 24, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 416, column: 56)
!5005 = !DILocation(line: 417, column: 35, scope: !5004)
!5006 = !DILocation(line: 417, column: 37, scope: !5004)
!5007 = !DILocation(line: 417, column: 32, scope: !5004)
!5008 = !DILocation(line: 417, column: 5, scope: !5004)
!5009 = !DILocation(line: 417, column: 11, scope: !5004)
!5010 = !DILocation(line: 417, column: 19, scope: !5004)
!5011 = !DILocation(line: 417, column: 22, scope: !5004)
!5012 = !DILocation(line: 418, column: 28, scope: !5004)
!5013 = !DILocation(line: 418, column: 39, scope: !5004)
!5014 = !DILocation(line: 418, column: 41, scope: !5004)
!5015 = !DILocation(line: 418, column: 36, scope: !5004)
!5016 = !DILocation(line: 418, column: 5, scope: !5004)
!5017 = !DILocation(line: 418, column: 11, scope: !5004)
!5018 = !DILocation(line: 418, column: 19, scope: !5004)
!5019 = !DILocation(line: 418, column: 21, scope: !5004)
!5020 = !DILocation(line: 418, column: 26, scope: !5004)
!5021 = !DILocation(line: 419, column: 4, scope: !5004)
!5022 = !DILocation(line: 416, column: 52, scope: !5000)
!5023 = !DILocation(line: 416, column: 4, scope: !5000)
!5024 = distinct !{!5024, !5002, !5025}
!5025 = !DILocation(line: 419, column: 4, scope: !4996)
!5026 = !DILocation(line: 420, column: 3, scope: !4997)
!5027 = !DILocation(line: 421, column: 2, scope: !4980)
!5028 = !DILocation(line: 423, column: 22, scope: !4739)
!5029 = !DILocation(line: 423, column: 2, scope: !4739)
!5030 = !DILocation(line: 425, column: 2, scope: !4739)
!5031 = !DILocation(line: 426, column: 1, scope: !4739)
!5032 = distinct !DISubprogram(name: "intel_spi_fill_partition", scope: !3, file: !3, line: 859, type: !5033, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !4531, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!5036 = !DILocalVariable(name: "ispi", arg: 1, scope: !5032, file: !3, line: 859, type: !4531)
!5037 = !DILocation(line: 859, column: 56, scope: !5032)
!5038 = !DILocalVariable(name: "part", arg: 2, scope: !5032, file: !3, line: 860, type: !5035)
!5039 = !DILocation(line: 860, column: 32, scope: !5032)
!5040 = !DILocalVariable(name: "end", scope: !5032, file: !3, line: 862, type: !275)
!5041 = !DILocation(line: 862, column: 6, scope: !5032)
!5042 = !DILocalVariable(name: "i", scope: !5032, file: !3, line: 863, type: !133)
!5043 = !DILocation(line: 863, column: 6, scope: !5032)
!5044 = !DILocation(line: 865, column: 9, scope: !5032)
!5045 = !DILocation(line: 865, column: 2, scope: !5032)
!5046 = !DILocation(line: 868, column: 2, scope: !5032)
!5047 = !DILocation(line: 868, column: 8, scope: !5032)
!5048 = !DILocation(line: 868, column: 13, scope: !5032)
!5049 = !DILocation(line: 869, column: 2, scope: !5032)
!5050 = !DILocation(line: 869, column: 8, scope: !5032)
!5051 = !DILocation(line: 869, column: 13, scope: !5032)
!5052 = !DILocation(line: 875, column: 9, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 875, column: 2)
!5054 = !DILocation(line: 875, column: 7, scope: !5053)
!5055 = !DILocation(line: 875, column: 14, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 875, column: 2)
!5057 = !DILocation(line: 875, column: 18, scope: !5056)
!5058 = !DILocation(line: 875, column: 24, scope: !5056)
!5059 = !DILocation(line: 875, column: 16, scope: !5056)
!5060 = !DILocation(line: 875, column: 2, scope: !5053)
!5061 = !DILocalVariable(name: "region", scope: !5062, file: !3, line: 876, type: !271)
!5062 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 875, column: 39)
!5063 = !DILocation(line: 876, column: 7, scope: !5062)
!5064 = !DILocalVariable(name: "base", scope: !5062, file: !3, line: 876, type: !271)
!5065 = !DILocation(line: 876, column: 15, scope: !5062)
!5066 = !DILocalVariable(name: "limit", scope: !5062, file: !3, line: 876, type: !271)
!5067 = !DILocation(line: 876, column: 21, scope: !5062)
!5068 = !DILocation(line: 878, column: 18, scope: !5062)
!5069 = !DILocation(line: 878, column: 24, scope: !5062)
!5070 = !DILocation(line: 878, column: 31, scope: !5062)
!5071 = !DILocation(line: 878, column: 29, scope: !5062)
!5072 = !DILocation(line: 878, column: 12, scope: !5062)
!5073 = !DILocation(line: 878, column: 10, scope: !5062)
!5074 = !DILocation(line: 879, column: 10, scope: !5062)
!5075 = !DILocation(line: 879, column: 17, scope: !5062)
!5076 = !DILocation(line: 879, column: 8, scope: !5062)
!5077 = !DILocation(line: 880, column: 12, scope: !5062)
!5078 = !DILocation(line: 880, column: 19, scope: !5062)
!5079 = !DILocation(line: 880, column: 38, scope: !5062)
!5080 = !DILocation(line: 880, column: 9, scope: !5062)
!5081 = !DILocation(line: 882, column: 7, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 882, column: 7)
!5083 = !DILocation(line: 882, column: 15, scope: !5082)
!5084 = !DILocation(line: 882, column: 12, scope: !5082)
!5085 = !DILocation(line: 882, column: 21, scope: !5082)
!5086 = !DILocation(line: 882, column: 24, scope: !5082)
!5087 = !DILocation(line: 882, column: 30, scope: !5082)
!5088 = !DILocation(line: 882, column: 7, scope: !5062)
!5089 = !DILocation(line: 883, column: 4, scope: !5082)
!5090 = !DILocation(line: 889, column: 30, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 889, column: 7)
!5092 = !DILocation(line: 889, column: 36, scope: !5091)
!5093 = !DILocation(line: 889, column: 42, scope: !5091)
!5094 = !DILocation(line: 889, column: 7, scope: !5091)
!5095 = !DILocation(line: 889, column: 7, scope: !5062)
!5096 = !DILocation(line: 890, column: 4, scope: !5091)
!5097 = !DILocation(line: 890, column: 10, scope: !5091)
!5098 = !DILocation(line: 890, column: 20, scope: !5091)
!5099 = !DILocation(line: 892, column: 10, scope: !5062)
!5100 = !DILocation(line: 892, column: 16, scope: !5062)
!5101 = !DILocation(line: 892, column: 23, scope: !5062)
!5102 = !DILocation(line: 892, column: 9, scope: !5062)
!5103 = !DILocation(line: 892, column: 7, scope: !5062)
!5104 = !DILocation(line: 893, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 893, column: 7)
!5106 = !DILocation(line: 893, column: 13, scope: !5105)
!5107 = !DILocation(line: 893, column: 19, scope: !5105)
!5108 = !DILocation(line: 893, column: 11, scope: !5105)
!5109 = !DILocation(line: 893, column: 7, scope: !5062)
!5110 = !DILocation(line: 894, column: 17, scope: !5105)
!5111 = !DILocation(line: 894, column: 4, scope: !5105)
!5112 = !DILocation(line: 894, column: 10, scope: !5105)
!5113 = !DILocation(line: 894, column: 15, scope: !5105)
!5114 = !DILocation(line: 895, column: 2, scope: !5062)
!5115 = !DILocation(line: 875, column: 35, scope: !5056)
!5116 = !DILocation(line: 875, column: 2, scope: !5056)
!5117 = distinct !{!5117, !5060, !5118}
!5118 = !DILocation(line: 895, column: 2, scope: !5053)
!5119 = !DILocation(line: 896, column: 1, scope: !5032)
!5120 = distinct !DISubprogram(name: "intel_spi_remove", scope: !3, file: !3, line: 961, type: !4740, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5121 = !DILocalVariable(name: "ispi", arg: 1, scope: !5120, file: !3, line: 961, type: !4531)
!5122 = !DILocation(line: 961, column: 40, scope: !5120)
!5123 = !DILocation(line: 963, column: 32, scope: !5120)
!5124 = !DILocation(line: 963, column: 38, scope: !5120)
!5125 = !DILocation(line: 963, column: 42, scope: !5120)
!5126 = !DILocation(line: 963, column: 9, scope: !5120)
!5127 = !DILocation(line: 963, column: 2, scope: !5120)
!5128 = distinct !DISubprogram(name: "readl", scope: !5129, file: !5129, line: 59, type: !5130, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5129 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!7, !5132}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5134)
!5134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5135 = !DILocalVariable(name: "addr", arg: 1, scope: !5128, file: !5129, line: 59, type: !5132)
!5136 = !DILocation(line: 59, column: 1, scope: !5128)
!5137 = !DILocalVariable(name: "ret", scope: !5128, file: !5129, line: 59, type: !7)
!5138 = !{i32 -2146504784}
!5139 = distinct !DISubprogram(name: "writel", scope: !5129, file: !5129, line: 67, type: !5140, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{null, !7, !5142}
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5143 = !DILocalVariable(name: "val", arg: 1, scope: !5139, file: !5129, line: 67, type: !7)
!5144 = !DILocation(line: 67, column: 1, scope: !5139)
!5145 = !DILocalVariable(name: "addr", arg: 2, scope: !5139, file: !5129, line: 67, type: !5142)
!5146 = !{i32 -2146502391}
!5147 = distinct !DISubprogram(name: "intel_spi_dump_regs", scope: !3, file: !3, line: 166, type: !5148, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !4531}
!5150 = !DILocalVariable(name: "ispi", arg: 1, scope: !5147, file: !3, line: 166, type: !4531)
!5151 = !DILocation(line: 166, column: 51, scope: !5147)
!5152 = !DILocalVariable(name: "value", scope: !5147, file: !3, line: 168, type: !271)
!5153 = !DILocation(line: 168, column: 6, scope: !5147)
!5154 = !DILocalVariable(name: "i", scope: !5147, file: !3, line: 169, type: !133)
!5155 = !DILocation(line: 169, column: 6, scope: !5147)
!5156 = !DILocation(line: 173, column: 16, scope: !5147)
!5157 = !DILocation(line: 173, column: 22, scope: !5147)
!5158 = !DILocation(line: 173, column: 27, scope: !5147)
!5159 = !DILocation(line: 173, column: 10, scope: !5147)
!5160 = !DILocation(line: 173, column: 8, scope: !5147)
!5161 = !DILocation(line: 175, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 175, column: 6)
!5163 = !DILocation(line: 175, column: 12, scope: !5162)
!5164 = !DILocation(line: 175, column: 6, scope: !5147)
!5165 = !DILocation(line: 176, column: 3, scope: !5162)
!5166 = !DILocation(line: 181, column: 9, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 181, column: 2)
!5168 = !DILocation(line: 181, column: 7, scope: !5167)
!5169 = !DILocation(line: 181, column: 14, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 181, column: 2)
!5171 = !DILocation(line: 181, column: 16, scope: !5170)
!5172 = !DILocation(line: 181, column: 2, scope: !5167)
!5173 = !DILocation(line: 182, column: 3, scope: !5170)
!5174 = !DILocation(line: 181, column: 23, scope: !5170)
!5175 = !DILocation(line: 181, column: 2, scope: !5170)
!5176 = distinct !{!5176, !5172, !5177}
!5177 = !DILocation(line: 182, column: 3, scope: !5167)
!5178 = !DILocation(line: 187, column: 9, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 187, column: 2)
!5180 = !DILocation(line: 187, column: 7, scope: !5179)
!5181 = !DILocation(line: 187, column: 14, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 187, column: 2)
!5183 = !DILocation(line: 187, column: 18, scope: !5182)
!5184 = !DILocation(line: 187, column: 24, scope: !5182)
!5185 = !DILocation(line: 187, column: 16, scope: !5182)
!5186 = !DILocation(line: 187, column: 2, scope: !5179)
!5187 = !DILocation(line: 188, column: 3, scope: !5182)
!5188 = !DILocation(line: 187, column: 35, scope: !5182)
!5189 = !DILocation(line: 187, column: 2, scope: !5182)
!5190 = distinct !{!5190, !5186, !5191}
!5191 = !DILocation(line: 188, column: 3, scope: !5179)
!5192 = !DILocation(line: 190, column: 9, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 190, column: 2)
!5194 = !DILocation(line: 190, column: 7, scope: !5193)
!5195 = !DILocation(line: 190, column: 14, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 190, column: 2)
!5197 = !DILocation(line: 190, column: 18, scope: !5196)
!5198 = !DILocation(line: 190, column: 24, scope: !5196)
!5199 = !DILocation(line: 190, column: 16, scope: !5196)
!5200 = !DILocation(line: 190, column: 2, scope: !5193)
!5201 = !DILocation(line: 191, column: 3, scope: !5196)
!5202 = !DILocation(line: 190, column: 33, scope: !5196)
!5203 = !DILocation(line: 190, column: 2, scope: !5196)
!5204 = distinct !{!5204, !5200, !5205}
!5205 = !DILocation(line: 191, column: 3, scope: !5193)
!5206 = !DILocation(line: 194, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 194, column: 6)
!5208 = !DILocation(line: 194, column: 12, scope: !5207)
!5209 = !DILocation(line: 194, column: 6, scope: !5147)
!5210 = !DILocation(line: 195, column: 17, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 194, column: 19)
!5212 = !DILocation(line: 195, column: 23, scope: !5211)
!5213 = !DILocation(line: 195, column: 29, scope: !5211)
!5214 = !DILocation(line: 195, column: 11, scope: !5211)
!5215 = !DILocation(line: 195, column: 9, scope: !5211)
!5216 = !DILocation(line: 203, column: 2, scope: !5211)
!5217 = !DILocation(line: 205, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 205, column: 6)
!5219 = !DILocation(line: 205, column: 12, scope: !5218)
!5220 = !DILocation(line: 205, column: 18, scope: !5218)
!5221 = !DILocation(line: 205, column: 23, scope: !5218)
!5222 = !DILocation(line: 205, column: 6, scope: !5147)
!5223 = !DILocation(line: 206, column: 3, scope: !5218)
!5224 = !DILocation(line: 212, column: 9, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 212, column: 2)
!5226 = !DILocation(line: 212, column: 7, scope: !5225)
!5227 = !DILocation(line: 212, column: 14, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 212, column: 2)
!5229 = !DILocation(line: 212, column: 18, scope: !5228)
!5230 = !DILocation(line: 212, column: 24, scope: !5228)
!5231 = !DILocation(line: 212, column: 16, scope: !5228)
!5232 = !DILocation(line: 212, column: 2, scope: !5225)
!5233 = !DILocalVariable(name: "base", scope: !5234, file: !3, line: 213, type: !271)
!5234 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 212, column: 37)
!5235 = !DILocation(line: 213, column: 7, scope: !5234)
!5236 = !DILocalVariable(name: "limit", scope: !5234, file: !3, line: 213, type: !271)
!5237 = !DILocation(line: 213, column: 13, scope: !5234)
!5238 = !DILocation(line: 215, column: 17, scope: !5234)
!5239 = !DILocation(line: 215, column: 23, scope: !5234)
!5240 = !DILocation(line: 215, column: 31, scope: !5234)
!5241 = !DILocation(line: 215, column: 29, scope: !5234)
!5242 = !DILocation(line: 215, column: 11, scope: !5234)
!5243 = !DILocation(line: 215, column: 9, scope: !5234)
!5244 = !DILocation(line: 216, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 216, column: 7)
!5246 = !DILocation(line: 216, column: 15, scope: !5245)
!5247 = !DILocation(line: 216, column: 7, scope: !5234)
!5248 = !DILocation(line: 217, column: 4, scope: !5245)
!5249 = !DILocation(line: 219, column: 12, scope: !5234)
!5250 = !DILocation(line: 219, column: 18, scope: !5234)
!5251 = !DILocation(line: 219, column: 35, scope: !5234)
!5252 = !DILocation(line: 219, column: 9, scope: !5234)
!5253 = !DILocation(line: 220, column: 10, scope: !5234)
!5254 = !DILocation(line: 220, column: 16, scope: !5234)
!5255 = !DILocation(line: 220, column: 8, scope: !5234)
!5256 = !DILocation(line: 226, column: 2, scope: !5234)
!5257 = !DILocation(line: 212, column: 33, scope: !5228)
!5258 = !DILocation(line: 212, column: 2, scope: !5228)
!5259 = distinct !{!5259, !5232, !5260}
!5260 = !DILocation(line: 226, column: 2, scope: !5225)
!5261 = !DILocation(line: 229, column: 9, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 229, column: 2)
!5263 = !DILocation(line: 229, column: 7, scope: !5262)
!5264 = !DILocation(line: 229, column: 14, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 229, column: 2)
!5266 = !DILocation(line: 229, column: 18, scope: !5265)
!5267 = !DILocation(line: 229, column: 24, scope: !5265)
!5268 = !DILocation(line: 229, column: 16, scope: !5265)
!5269 = !DILocation(line: 229, column: 2, scope: !5262)
!5270 = !DILocalVariable(name: "region", scope: !5271, file: !3, line: 230, type: !271)
!5271 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 229, column: 39)
!5272 = !DILocation(line: 230, column: 7, scope: !5271)
!5273 = !DILocalVariable(name: "base", scope: !5271, file: !3, line: 230, type: !271)
!5274 = !DILocation(line: 230, column: 15, scope: !5271)
!5275 = !DILocalVariable(name: "limit", scope: !5271, file: !3, line: 230, type: !271)
!5276 = !DILocation(line: 230, column: 21, scope: !5271)
!5277 = !DILocation(line: 232, column: 18, scope: !5271)
!5278 = !DILocation(line: 232, column: 24, scope: !5271)
!5279 = !DILocation(line: 232, column: 31, scope: !5271)
!5280 = !DILocation(line: 232, column: 29, scope: !5271)
!5281 = !DILocation(line: 232, column: 12, scope: !5271)
!5282 = !DILocation(line: 232, column: 10, scope: !5271)
!5283 = !DILocation(line: 233, column: 10, scope: !5271)
!5284 = !DILocation(line: 233, column: 17, scope: !5271)
!5285 = !DILocation(line: 233, column: 8, scope: !5271)
!5286 = !DILocation(line: 234, column: 12, scope: !5271)
!5287 = !DILocation(line: 234, column: 19, scope: !5271)
!5288 = !DILocation(line: 234, column: 38, scope: !5271)
!5289 = !DILocation(line: 234, column: 9, scope: !5271)
!5290 = !DILocation(line: 236, column: 7, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 236, column: 7)
!5292 = !DILocation(line: 236, column: 15, scope: !5291)
!5293 = !DILocation(line: 236, column: 12, scope: !5291)
!5294 = !DILocation(line: 236, column: 21, scope: !5291)
!5295 = !DILocation(line: 236, column: 25, scope: !5291)
!5296 = !DILocation(line: 236, column: 27, scope: !5291)
!5297 = !DILocation(line: 236, column: 31, scope: !5291)
!5298 = !DILocation(line: 236, column: 34, scope: !5291)
!5299 = !DILocation(line: 236, column: 40, scope: !5291)
!5300 = !DILocation(line: 236, column: 7, scope: !5271)
!5301 = !DILocation(line: 237, column: 4, scope: !5291)
!5302 = !DILocation(line: 241, column: 2, scope: !5271)
!5303 = !DILocation(line: 229, column: 35, scope: !5265)
!5304 = !DILocation(line: 229, column: 2, scope: !5265)
!5305 = distinct !{!5305, !5269, !5306}
!5306 = !DILocation(line: 241, column: 2, scope: !5262)
!5307 = !DILocation(line: 247, column: 1, scope: !5147)
!5308 = distinct !DISubprogram(name: "intel_spi_read_reg", scope: !3, file: !3, line: 558, type: !4502, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5309 = !DILocalVariable(name: "nor", arg: 1, scope: !5308, file: !3, line: 558, type: !260)
!5310 = !DILocation(line: 558, column: 47, scope: !5308)
!5311 = !DILocalVariable(name: "opcode", arg: 2, scope: !5308, file: !3, line: 558, type: !192)
!5312 = !DILocation(line: 558, column: 55, scope: !5308)
!5313 = !DILocalVariable(name: "buf", arg: 3, scope: !5308, file: !3, line: 558, type: !4464)
!5314 = !DILocation(line: 558, column: 67, scope: !5308)
!5315 = !DILocalVariable(name: "len", arg: 4, scope: !5308, file: !3, line: 559, type: !139)
!5316 = !DILocation(line: 559, column: 17, scope: !5308)
!5317 = !DILocalVariable(name: "ispi", scope: !5308, file: !3, line: 561, type: !4531)
!5318 = !DILocation(line: 561, column: 20, scope: !5308)
!5319 = !DILocation(line: 561, column: 27, scope: !5308)
!5320 = !DILocation(line: 561, column: 32, scope: !5308)
!5321 = !DILocalVariable(name: "ret", scope: !5308, file: !3, line: 562, type: !133)
!5322 = !DILocation(line: 562, column: 6, scope: !5308)
!5323 = !DILocation(line: 565, column: 12, scope: !5308)
!5324 = !DILocation(line: 565, column: 18, scope: !5308)
!5325 = !DILocation(line: 565, column: 23, scope: !5308)
!5326 = !DILocation(line: 565, column: 2, scope: !5308)
!5327 = !DILocation(line: 567, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 567, column: 6)
!5329 = !DILocation(line: 567, column: 12, scope: !5328)
!5330 = !DILocation(line: 567, column: 6, scope: !5308)
!5331 = !DILocation(line: 568, column: 28, scope: !5328)
!5332 = !DILocation(line: 568, column: 34, scope: !5328)
!5333 = !DILocation(line: 568, column: 42, scope: !5328)
!5334 = !DILocation(line: 568, column: 9, scope: !5328)
!5335 = !DILocation(line: 568, column: 7, scope: !5328)
!5336 = !DILocation(line: 568, column: 3, scope: !5328)
!5337 = !DILocation(line: 571, column: 28, scope: !5328)
!5338 = !DILocation(line: 571, column: 34, scope: !5328)
!5339 = !DILocation(line: 571, column: 42, scope: !5328)
!5340 = !DILocation(line: 571, column: 9, scope: !5328)
!5341 = !DILocation(line: 571, column: 7, scope: !5328)
!5342 = !DILocation(line: 573, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 573, column: 6)
!5344 = !DILocation(line: 573, column: 6, scope: !5308)
!5345 = !DILocation(line: 574, column: 10, scope: !5343)
!5346 = !DILocation(line: 574, column: 3, scope: !5343)
!5347 = !DILocation(line: 576, column: 30, scope: !5308)
!5348 = !DILocation(line: 576, column: 36, scope: !5308)
!5349 = !DILocation(line: 576, column: 41, scope: !5308)
!5350 = !DILocation(line: 576, column: 9, scope: !5308)
!5351 = !DILocation(line: 576, column: 2, scope: !5308)
!5352 = !DILocation(line: 577, column: 1, scope: !5308)
!5353 = distinct !DISubprogram(name: "intel_spi_write_reg", scope: !3, file: !3, line: 579, type: !4506, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5354 = !DILocalVariable(name: "nor", arg: 1, scope: !5353, file: !3, line: 579, type: !260)
!5355 = !DILocation(line: 579, column: 48, scope: !5353)
!5356 = !DILocalVariable(name: "opcode", arg: 2, scope: !5353, file: !3, line: 579, type: !192)
!5357 = !DILocation(line: 579, column: 56, scope: !5353)
!5358 = !DILocalVariable(name: "buf", arg: 3, scope: !5353, file: !3, line: 579, type: !4508)
!5359 = !DILocation(line: 579, column: 74, scope: !5353)
!5360 = !DILocalVariable(name: "len", arg: 4, scope: !5353, file: !3, line: 580, type: !139)
!5361 = !DILocation(line: 580, column: 18, scope: !5353)
!5362 = !DILocalVariable(name: "ispi", scope: !5353, file: !3, line: 582, type: !4531)
!5363 = !DILocation(line: 582, column: 20, scope: !5353)
!5364 = !DILocation(line: 582, column: 27, scope: !5353)
!5365 = !DILocation(line: 582, column: 32, scope: !5353)
!5366 = !DILocalVariable(name: "ret", scope: !5353, file: !3, line: 583, type: !133)
!5367 = !DILocation(line: 583, column: 6, scope: !5353)
!5368 = !DILocation(line: 594, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 594, column: 6)
!5370 = !DILocation(line: 594, column: 13, scope: !5369)
!5371 = !DILocation(line: 594, column: 6, scope: !5353)
!5372 = !DILocalVariable(name: "preop", scope: !5373, file: !3, line: 595, type: !183)
!5373 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 594, column: 32)
!5374 = !DILocation(line: 595, column: 7, scope: !5373)
!5375 = !DILocation(line: 597, column: 8, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 597, column: 7)
!5377 = !DILocation(line: 597, column: 14, scope: !5376)
!5378 = !DILocation(line: 597, column: 7, scope: !5373)
!5379 = !DILocation(line: 598, column: 4, scope: !5376)
!5380 = !DILocation(line: 600, column: 17, scope: !5373)
!5381 = !DILocation(line: 600, column: 23, scope: !5373)
!5382 = !DILocation(line: 600, column: 29, scope: !5373)
!5383 = !DILocation(line: 600, column: 11, scope: !5373)
!5384 = !DILocation(line: 600, column: 9, scope: !5373)
!5385 = !DILocation(line: 601, column: 8, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 601, column: 7)
!5387 = !DILocation(line: 601, column: 14, scope: !5386)
!5388 = !DILocation(line: 601, column: 25, scope: !5386)
!5389 = !DILocation(line: 601, column: 22, scope: !5386)
!5390 = !DILocation(line: 601, column: 32, scope: !5386)
!5391 = !DILocation(line: 601, column: 36, scope: !5386)
!5392 = !DILocation(line: 601, column: 42, scope: !5386)
!5393 = !DILocation(line: 601, column: 51, scope: !5386)
!5394 = !DILocation(line: 601, column: 48, scope: !5386)
!5395 = !DILocation(line: 601, column: 7, scope: !5373)
!5396 = !DILocation(line: 602, column: 8, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 602, column: 8)
!5398 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 601, column: 59)
!5399 = !DILocation(line: 602, column: 14, scope: !5397)
!5400 = !DILocation(line: 602, column: 8, scope: !5398)
!5401 = !DILocation(line: 603, column: 5, scope: !5397)
!5402 = !DILocation(line: 604, column: 11, scope: !5398)
!5403 = !DILocation(line: 604, column: 19, scope: !5398)
!5404 = !DILocation(line: 604, column: 25, scope: !5398)
!5405 = !DILocation(line: 604, column: 31, scope: !5398)
!5406 = !DILocation(line: 604, column: 4, scope: !5398)
!5407 = !DILocation(line: 605, column: 3, scope: !5398)
!5408 = !DILocation(line: 611, column: 28, scope: !5373)
!5409 = !DILocation(line: 611, column: 3, scope: !5373)
!5410 = !DILocation(line: 611, column: 9, scope: !5373)
!5411 = !DILocation(line: 611, column: 26, scope: !5373)
!5412 = !DILocation(line: 612, column: 3, scope: !5373)
!5413 = !DILocation(line: 621, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 621, column: 6)
!5415 = !DILocation(line: 621, column: 13, scope: !5414)
!5416 = !DILocation(line: 621, column: 6, scope: !5353)
!5417 = !DILocation(line: 622, column: 3, scope: !5414)
!5418 = !DILocation(line: 624, column: 12, scope: !5353)
!5419 = !DILocation(line: 624, column: 18, scope: !5353)
!5420 = !DILocation(line: 624, column: 23, scope: !5353)
!5421 = !DILocation(line: 624, column: 2, scope: !5353)
!5422 = !DILocation(line: 627, column: 30, scope: !5353)
!5423 = !DILocation(line: 627, column: 36, scope: !5353)
!5424 = !DILocation(line: 627, column: 41, scope: !5353)
!5425 = !DILocation(line: 627, column: 8, scope: !5353)
!5426 = !DILocation(line: 627, column: 6, scope: !5353)
!5427 = !DILocation(line: 628, column: 6, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 628, column: 6)
!5429 = !DILocation(line: 628, column: 6, scope: !5353)
!5430 = !DILocation(line: 629, column: 10, scope: !5428)
!5431 = !DILocation(line: 629, column: 3, scope: !5428)
!5432 = !DILocation(line: 631, column: 6, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 631, column: 6)
!5434 = !DILocation(line: 631, column: 12, scope: !5433)
!5435 = !DILocation(line: 631, column: 6, scope: !5353)
!5436 = !DILocation(line: 632, column: 29, scope: !5433)
!5437 = !DILocation(line: 632, column: 35, scope: !5433)
!5438 = !DILocation(line: 632, column: 43, scope: !5433)
!5439 = !DILocation(line: 632, column: 10, scope: !5433)
!5440 = !DILocation(line: 632, column: 3, scope: !5433)
!5441 = !DILocation(line: 634, column: 28, scope: !5353)
!5442 = !DILocation(line: 634, column: 34, scope: !5353)
!5443 = !DILocation(line: 634, column: 42, scope: !5353)
!5444 = !DILocation(line: 634, column: 9, scope: !5353)
!5445 = !DILocation(line: 634, column: 2, scope: !5353)
!5446 = !DILocation(line: 635, column: 1, scope: !5353)
!5447 = distinct !DISubprogram(name: "intel_spi_read", scope: !3, file: !3, line: 637, type: !5448, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!560, !260, !143, !139, !366}
!5450 = !DILocalVariable(name: "nor", arg: 1, scope: !5447, file: !3, line: 637, type: !260)
!5451 = !DILocation(line: 637, column: 47, scope: !5447)
!5452 = !DILocalVariable(name: "from", arg: 2, scope: !5447, file: !3, line: 637, type: !143)
!5453 = !DILocation(line: 637, column: 59, scope: !5447)
!5454 = !DILocalVariable(name: "len", arg: 3, scope: !5447, file: !3, line: 637, type: !139)
!5455 = !DILocation(line: 637, column: 72, scope: !5447)
!5456 = !DILocalVariable(name: "read_buf", arg: 4, scope: !5447, file: !3, line: 638, type: !366)
!5457 = !DILocation(line: 638, column: 18, scope: !5447)
!5458 = !DILocalVariable(name: "ispi", scope: !5447, file: !3, line: 640, type: !4531)
!5459 = !DILocation(line: 640, column: 20, scope: !5447)
!5460 = !DILocation(line: 640, column: 27, scope: !5447)
!5461 = !DILocation(line: 640, column: 32, scope: !5447)
!5462 = !DILocalVariable(name: "block_size", scope: !5447, file: !3, line: 641, type: !139)
!5463 = !DILocation(line: 641, column: 9, scope: !5447)
!5464 = !DILocalVariable(name: "retlen", scope: !5447, file: !3, line: 641, type: !139)
!5465 = !DILocation(line: 641, column: 21, scope: !5447)
!5466 = !DILocalVariable(name: "val", scope: !5447, file: !3, line: 642, type: !271)
!5467 = !DILocation(line: 642, column: 6, scope: !5447)
!5468 = !DILocalVariable(name: "status", scope: !5447, file: !3, line: 642, type: !271)
!5469 = !DILocation(line: 642, column: 11, scope: !5447)
!5470 = !DILocalVariable(name: "ret", scope: !5447, file: !3, line: 643, type: !560)
!5471 = !DILocation(line: 643, column: 10, scope: !5447)
!5472 = !DILocalVariable(name: "__ret_warn_on", scope: !5473, file: !3, line: 649, type: !133)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 649, column: 6)
!5474 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 649, column: 6)
!5475 = !DILocation(line: 649, column: 6, scope: !5473)
!5476 = !DILocation(line: 649, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 649, column: 6)
!5478 = !DILocation(line: 649, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 649, column: 6)
!5480 = !DILocation(line: 649, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 649, column: 6)
!5482 = !DILocation(line: 649, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 649, column: 6)
!5484 = !{i32 -2141647813, i32 -2141647784, i32 -2141647738, i32 -2141647680, i32 -2141647626, i32 -2141647572, i32 -2141647517, i32 -2141647486}
!5485 = !DILocation(line: 649, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 649, column: 6)
!5487 = !{i32 -2141647050, i32 -2141647043, i32 -2141646991, i32 -2141646960, i32 -2141646930}
!5488 = !DILocation(line: 649, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 649, column: 6)
!5490 = !DILocation(line: 649, column: 6, scope: !5474)
!5491 = !DILocation(line: 649, column: 6, scope: !5447)
!5492 = !DILocation(line: 650, column: 3, scope: !5474)
!5493 = !DILocation(line: 650, column: 9, scope: !5474)
!5494 = !DILocation(line: 650, column: 26, scope: !5474)
!5495 = !DILocation(line: 652, column: 10, scope: !5447)
!5496 = !DILocation(line: 652, column: 15, scope: !5447)
!5497 = !DILocation(line: 652, column: 2, scope: !5447)
!5498 = !DILocation(line: 657, column: 3, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 652, column: 28)
!5500 = !DILocation(line: 659, column: 3, scope: !5499)
!5501 = !DILocation(line: 662, column: 2, scope: !5447)
!5502 = !DILocation(line: 662, column: 9, scope: !5447)
!5503 = !DILocation(line: 662, column: 13, scope: !5447)
!5504 = !DILocalVariable(name: "__UNIQUE_ID___x245", scope: !5505, file: !3, line: 663, type: !139)
!5505 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 663, column: 16)
!5506 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 662, column: 18)
!5507 = !DILocation(line: 663, column: 16, scope: !5505)
!5508 = !DILocalVariable(name: "__UNIQUE_ID___y246", scope: !5505, file: !3, line: 663, type: !139)
!5509 = !DILocation(line: 663, column: 14, scope: !5506)
!5510 = !DILocalVariable(name: "__UNIQUE_ID___x247", scope: !5511, file: !3, line: 666, type: !143)
!5511 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 666, column: 16)
!5512 = !DILocation(line: 666, column: 16, scope: !5511)
!5513 = !DILocalVariable(name: "__UNIQUE_ID___y248", scope: !5511, file: !3, line: 666, type: !143)
!5514 = !DILocation(line: 667, column: 37, scope: !5506)
!5515 = !DILocation(line: 667, column: 35, scope: !5506)
!5516 = !DILocation(line: 666, column: 14, scope: !5506)
!5517 = !DILocation(line: 669, column: 10, scope: !5506)
!5518 = !DILocation(line: 669, column: 16, scope: !5506)
!5519 = !DILocation(line: 669, column: 22, scope: !5506)
!5520 = !DILocation(line: 669, column: 27, scope: !5506)
!5521 = !DILocation(line: 669, column: 3, scope: !5506)
!5522 = !DILocation(line: 671, column: 15, scope: !5506)
!5523 = !DILocation(line: 671, column: 21, scope: !5506)
!5524 = !DILocation(line: 671, column: 26, scope: !5506)
!5525 = !DILocation(line: 671, column: 9, scope: !5506)
!5526 = !DILocation(line: 671, column: 7, scope: !5506)
!5527 = !DILocation(line: 672, column: 7, scope: !5506)
!5528 = !DILocation(line: 673, column: 7, scope: !5506)
!5529 = !DILocation(line: 674, column: 11, scope: !5506)
!5530 = !DILocation(line: 674, column: 22, scope: !5506)
!5531 = !DILocation(line: 674, column: 27, scope: !5506)
!5532 = !DILocation(line: 674, column: 7, scope: !5506)
!5533 = !DILocation(line: 675, column: 7, scope: !5506)
!5534 = !DILocation(line: 676, column: 7, scope: !5506)
!5535 = !DILocation(line: 677, column: 10, scope: !5506)
!5536 = !DILocation(line: 677, column: 15, scope: !5506)
!5537 = !DILocation(line: 677, column: 21, scope: !5506)
!5538 = !DILocation(line: 677, column: 26, scope: !5506)
!5539 = !DILocation(line: 677, column: 3, scope: !5506)
!5540 = !DILocation(line: 679, column: 32, scope: !5506)
!5541 = !DILocation(line: 679, column: 9, scope: !5506)
!5542 = !DILocation(line: 679, column: 7, scope: !5506)
!5543 = !DILocation(line: 680, column: 7, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 680, column: 7)
!5545 = !DILocation(line: 680, column: 7, scope: !5506)
!5546 = !DILocation(line: 681, column: 11, scope: !5544)
!5547 = !DILocation(line: 681, column: 4, scope: !5544)
!5548 = !DILocation(line: 683, column: 18, scope: !5506)
!5549 = !DILocation(line: 683, column: 24, scope: !5506)
!5550 = !DILocation(line: 683, column: 29, scope: !5506)
!5551 = !DILocation(line: 683, column: 12, scope: !5506)
!5552 = !DILocation(line: 683, column: 10, scope: !5506)
!5553 = !DILocation(line: 684, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 684, column: 7)
!5555 = !DILocation(line: 684, column: 14, scope: !5554)
!5556 = !DILocation(line: 684, column: 7, scope: !5506)
!5557 = !DILocation(line: 685, column: 8, scope: !5554)
!5558 = !DILocation(line: 685, column: 4, scope: !5554)
!5559 = !DILocation(line: 686, column: 12, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 686, column: 12)
!5561 = !DILocation(line: 686, column: 19, scope: !5560)
!5562 = !DILocation(line: 686, column: 12, scope: !5554)
!5563 = !DILocation(line: 687, column: 8, scope: !5560)
!5564 = !DILocation(line: 687, column: 4, scope: !5560)
!5565 = !DILocation(line: 689, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 689, column: 7)
!5567 = !DILocation(line: 689, column: 11, scope: !5566)
!5568 = !DILocation(line: 689, column: 7, scope: !5506)
!5569 = !DILocation(line: 690, column: 4, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 689, column: 16)
!5571 = !DILocation(line: 692, column: 11, scope: !5570)
!5572 = !DILocation(line: 692, column: 4, scope: !5570)
!5573 = !DILocation(line: 695, column: 30, scope: !5506)
!5574 = !DILocation(line: 695, column: 36, scope: !5506)
!5575 = !DILocation(line: 695, column: 46, scope: !5506)
!5576 = !DILocation(line: 695, column: 9, scope: !5506)
!5577 = !DILocation(line: 695, column: 7, scope: !5506)
!5578 = !DILocation(line: 696, column: 7, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 696, column: 7)
!5580 = !DILocation(line: 696, column: 7, scope: !5506)
!5581 = !DILocation(line: 697, column: 11, scope: !5579)
!5582 = !DILocation(line: 697, column: 4, scope: !5579)
!5583 = !DILocation(line: 699, column: 10, scope: !5506)
!5584 = !DILocation(line: 699, column: 7, scope: !5506)
!5585 = !DILocation(line: 700, column: 11, scope: !5506)
!5586 = !DILocation(line: 700, column: 8, scope: !5506)
!5587 = !DILocation(line: 701, column: 13, scope: !5506)
!5588 = !DILocation(line: 701, column: 10, scope: !5506)
!5589 = !DILocation(line: 702, column: 15, scope: !5506)
!5590 = !DILocation(line: 702, column: 12, scope: !5506)
!5591 = distinct !{!5591, !5501, !5592}
!5592 = !DILocation(line: 703, column: 2, scope: !5447)
!5593 = !DILocation(line: 705, column: 9, scope: !5447)
!5594 = !DILocation(line: 705, column: 2, scope: !5447)
!5595 = !DILocation(line: 706, column: 1, scope: !5447)
!5596 = distinct !DISubprogram(name: "intel_spi_write", scope: !3, file: !3, line: 708, type: !5597, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!560, !260, !143, !139, !371}
!5599 = !DILocalVariable(name: "nor", arg: 1, scope: !5596, file: !3, line: 708, type: !260)
!5600 = !DILocation(line: 708, column: 48, scope: !5596)
!5601 = !DILocalVariable(name: "to", arg: 2, scope: !5596, file: !3, line: 708, type: !143)
!5602 = !DILocation(line: 708, column: 60, scope: !5596)
!5603 = !DILocalVariable(name: "len", arg: 3, scope: !5596, file: !3, line: 708, type: !139)
!5604 = !DILocation(line: 708, column: 71, scope: !5596)
!5605 = !DILocalVariable(name: "write_buf", arg: 4, scope: !5596, file: !3, line: 709, type: !371)
!5606 = !DILocation(line: 709, column: 25, scope: !5596)
!5607 = !DILocalVariable(name: "ispi", scope: !5596, file: !3, line: 711, type: !4531)
!5608 = !DILocation(line: 711, column: 20, scope: !5596)
!5609 = !DILocation(line: 711, column: 27, scope: !5596)
!5610 = !DILocation(line: 711, column: 32, scope: !5596)
!5611 = !DILocalVariable(name: "block_size", scope: !5596, file: !3, line: 712, type: !139)
!5612 = !DILocation(line: 712, column: 9, scope: !5596)
!5613 = !DILocalVariable(name: "retlen", scope: !5596, file: !3, line: 712, type: !139)
!5614 = !DILocation(line: 712, column: 21, scope: !5596)
!5615 = !DILocalVariable(name: "val", scope: !5596, file: !3, line: 713, type: !271)
!5616 = !DILocation(line: 713, column: 6, scope: !5596)
!5617 = !DILocalVariable(name: "status", scope: !5596, file: !3, line: 713, type: !271)
!5618 = !DILocation(line: 713, column: 11, scope: !5596)
!5619 = !DILocalVariable(name: "ret", scope: !5596, file: !3, line: 714, type: !560)
!5620 = !DILocation(line: 714, column: 10, scope: !5596)
!5621 = !DILocation(line: 717, column: 2, scope: !5596)
!5622 = !DILocation(line: 717, column: 8, scope: !5596)
!5623 = !DILocation(line: 717, column: 25, scope: !5596)
!5624 = !DILocation(line: 719, column: 2, scope: !5596)
!5625 = !DILocation(line: 719, column: 9, scope: !5596)
!5626 = !DILocation(line: 719, column: 13, scope: !5596)
!5627 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !5628, file: !3, line: 720, type: !139)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 720, column: 16)
!5629 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 719, column: 18)
!5630 = !DILocation(line: 720, column: 16, scope: !5628)
!5631 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !5628, file: !3, line: 720, type: !139)
!5632 = !DILocation(line: 720, column: 14, scope: !5629)
!5633 = !DILocalVariable(name: "__UNIQUE_ID___x251", scope: !5634, file: !3, line: 723, type: !143)
!5634 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 723, column: 16)
!5635 = !DILocation(line: 723, column: 16, scope: !5634)
!5636 = !DILocalVariable(name: "__UNIQUE_ID___y252", scope: !5634, file: !3, line: 723, type: !143)
!5637 = !DILocation(line: 724, column: 35, scope: !5629)
!5638 = !DILocation(line: 724, column: 33, scope: !5629)
!5639 = !DILocation(line: 723, column: 14, scope: !5629)
!5640 = !DILocation(line: 726, column: 10, scope: !5629)
!5641 = !DILocation(line: 726, column: 14, scope: !5629)
!5642 = !DILocation(line: 726, column: 20, scope: !5629)
!5643 = !DILocation(line: 726, column: 25, scope: !5629)
!5644 = !DILocation(line: 726, column: 3, scope: !5629)
!5645 = !DILocation(line: 728, column: 15, scope: !5629)
!5646 = !DILocation(line: 728, column: 21, scope: !5629)
!5647 = !DILocation(line: 728, column: 26, scope: !5629)
!5648 = !DILocation(line: 728, column: 9, scope: !5629)
!5649 = !DILocation(line: 728, column: 7, scope: !5629)
!5650 = !DILocation(line: 729, column: 7, scope: !5629)
!5651 = !DILocation(line: 730, column: 7, scope: !5629)
!5652 = !DILocation(line: 731, column: 11, scope: !5629)
!5653 = !DILocation(line: 731, column: 22, scope: !5629)
!5654 = !DILocation(line: 731, column: 27, scope: !5629)
!5655 = !DILocation(line: 731, column: 7, scope: !5629)
!5656 = !DILocation(line: 732, column: 7, scope: !5629)
!5657 = !DILocation(line: 734, column: 31, scope: !5629)
!5658 = !DILocation(line: 734, column: 37, scope: !5629)
!5659 = !DILocation(line: 734, column: 48, scope: !5629)
!5660 = !DILocation(line: 734, column: 9, scope: !5629)
!5661 = !DILocation(line: 734, column: 7, scope: !5629)
!5662 = !DILocation(line: 735, column: 7, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 735, column: 7)
!5664 = !DILocation(line: 735, column: 7, scope: !5629)
!5665 = !DILocation(line: 736, column: 4, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 735, column: 12)
!5667 = !DILocation(line: 737, column: 11, scope: !5666)
!5668 = !DILocation(line: 737, column: 4, scope: !5666)
!5669 = !DILocation(line: 741, column: 7, scope: !5629)
!5670 = !DILocation(line: 742, column: 10, scope: !5629)
!5671 = !DILocation(line: 742, column: 15, scope: !5629)
!5672 = !DILocation(line: 742, column: 21, scope: !5629)
!5673 = !DILocation(line: 742, column: 26, scope: !5629)
!5674 = !DILocation(line: 742, column: 3, scope: !5629)
!5675 = !DILocation(line: 744, column: 32, scope: !5629)
!5676 = !DILocation(line: 744, column: 9, scope: !5629)
!5677 = !DILocation(line: 744, column: 7, scope: !5629)
!5678 = !DILocation(line: 745, column: 7, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 745, column: 7)
!5680 = !DILocation(line: 745, column: 7, scope: !5629)
!5681 = !DILocation(line: 746, column: 4, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 745, column: 12)
!5683 = !DILocation(line: 747, column: 11, scope: !5682)
!5684 = !DILocation(line: 747, column: 4, scope: !5682)
!5685 = !DILocation(line: 750, column: 18, scope: !5629)
!5686 = !DILocation(line: 750, column: 24, scope: !5629)
!5687 = !DILocation(line: 750, column: 29, scope: !5629)
!5688 = !DILocation(line: 750, column: 12, scope: !5629)
!5689 = !DILocation(line: 750, column: 10, scope: !5629)
!5690 = !DILocation(line: 751, column: 7, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 751, column: 7)
!5692 = !DILocation(line: 751, column: 14, scope: !5691)
!5693 = !DILocation(line: 751, column: 7, scope: !5629)
!5694 = !DILocation(line: 752, column: 8, scope: !5691)
!5695 = !DILocation(line: 752, column: 4, scope: !5691)
!5696 = !DILocation(line: 753, column: 12, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 753, column: 12)
!5698 = !DILocation(line: 753, column: 19, scope: !5697)
!5699 = !DILocation(line: 753, column: 12, scope: !5691)
!5700 = !DILocation(line: 754, column: 8, scope: !5697)
!5701 = !DILocation(line: 754, column: 4, scope: !5697)
!5702 = !DILocation(line: 756, column: 7, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 756, column: 7)
!5704 = !DILocation(line: 756, column: 11, scope: !5703)
!5705 = !DILocation(line: 756, column: 7, scope: !5629)
!5706 = !DILocation(line: 757, column: 4, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 756, column: 16)
!5708 = !DILocation(line: 759, column: 11, scope: !5707)
!5709 = !DILocation(line: 759, column: 4, scope: !5707)
!5710 = !DILocation(line: 762, column: 10, scope: !5629)
!5711 = !DILocation(line: 762, column: 7, scope: !5629)
!5712 = !DILocation(line: 763, column: 9, scope: !5629)
!5713 = !DILocation(line: 763, column: 6, scope: !5629)
!5714 = !DILocation(line: 764, column: 13, scope: !5629)
!5715 = !DILocation(line: 764, column: 10, scope: !5629)
!5716 = !DILocation(line: 765, column: 16, scope: !5629)
!5717 = !DILocation(line: 765, column: 13, scope: !5629)
!5718 = distinct !{!5718, !5624, !5719}
!5719 = !DILocation(line: 766, column: 2, scope: !5596)
!5720 = !DILocation(line: 768, column: 9, scope: !5596)
!5721 = !DILocation(line: 768, column: 2, scope: !5596)
!5722 = !DILocation(line: 769, column: 1, scope: !5596)
!5723 = distinct !DISubprogram(name: "intel_spi_erase", scope: !3, file: !3, line: 771, type: !4520, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5724 = !DILocalVariable(name: "nor", arg: 1, scope: !5723, file: !3, line: 771, type: !260)
!5725 = !DILocation(line: 771, column: 44, scope: !5723)
!5726 = !DILocalVariable(name: "offs", arg: 2, scope: !5723, file: !3, line: 771, type: !143)
!5727 = !DILocation(line: 771, column: 56, scope: !5723)
!5728 = !DILocalVariable(name: "erase_size", scope: !5723, file: !3, line: 773, type: !139)
!5729 = !DILocation(line: 773, column: 9, scope: !5723)
!5730 = !DILocalVariable(name: "len", scope: !5723, file: !3, line: 773, type: !139)
!5731 = !DILocation(line: 773, column: 21, scope: !5723)
!5732 = !DILocation(line: 773, column: 27, scope: !5723)
!5733 = !DILocation(line: 773, column: 32, scope: !5723)
!5734 = !DILocation(line: 773, column: 36, scope: !5723)
!5735 = !DILocalVariable(name: "ispi", scope: !5723, file: !3, line: 774, type: !4531)
!5736 = !DILocation(line: 774, column: 20, scope: !5723)
!5737 = !DILocation(line: 774, column: 27, scope: !5723)
!5738 = !DILocation(line: 774, column: 32, scope: !5723)
!5739 = !DILocalVariable(name: "val", scope: !5723, file: !3, line: 775, type: !271)
!5740 = !DILocation(line: 775, column: 6, scope: !5723)
!5741 = !DILocalVariable(name: "status", scope: !5723, file: !3, line: 775, type: !271)
!5742 = !DILocation(line: 775, column: 11, scope: !5723)
!5743 = !DILocalVariable(name: "cmd", scope: !5723, file: !3, line: 775, type: !271)
!5744 = !DILocation(line: 775, column: 19, scope: !5723)
!5745 = !DILocalVariable(name: "ret", scope: !5723, file: !3, line: 776, type: !133)
!5746 = !DILocation(line: 776, column: 6, scope: !5723)
!5747 = !DILocation(line: 779, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 779, column: 6)
!5749 = !DILocation(line: 779, column: 10, scope: !5748)
!5750 = !DILocation(line: 779, column: 20, scope: !5748)
!5751 = !DILocation(line: 779, column: 23, scope: !5748)
!5752 = !DILocation(line: 779, column: 29, scope: !5748)
!5753 = !DILocation(line: 779, column: 6, scope: !5723)
!5754 = !DILocation(line: 780, column: 7, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 779, column: 40)
!5756 = !DILocation(line: 781, column: 14, scope: !5755)
!5757 = !DILocation(line: 782, column: 2, scope: !5755)
!5758 = !DILocation(line: 783, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 782, column: 9)
!5760 = !DILocation(line: 784, column: 14, scope: !5759)
!5761 = !DILocation(line: 787, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 787, column: 6)
!5763 = !DILocation(line: 787, column: 12, scope: !5762)
!5764 = !DILocation(line: 787, column: 6, scope: !5723)
!5765 = !DILocation(line: 788, column: 3, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 787, column: 25)
!5767 = !DILocation(line: 788, column: 10, scope: !5766)
!5768 = !DILocation(line: 788, column: 14, scope: !5766)
!5769 = !DILocation(line: 789, column: 11, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 788, column: 19)
!5771 = !DILocation(line: 789, column: 17, scope: !5770)
!5772 = !DILocation(line: 789, column: 23, scope: !5770)
!5773 = !DILocation(line: 789, column: 28, scope: !5770)
!5774 = !DILocation(line: 789, column: 4, scope: !5770)
!5775 = !DILocation(line: 791, column: 29, scope: !5770)
!5776 = !DILocation(line: 791, column: 35, scope: !5770)
!5777 = !DILocation(line: 791, column: 40, scope: !5770)
!5778 = !DILocation(line: 791, column: 10, scope: !5770)
!5779 = !DILocation(line: 791, column: 8, scope: !5770)
!5780 = !DILocation(line: 793, column: 8, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 793, column: 8)
!5782 = !DILocation(line: 793, column: 8, scope: !5770)
!5783 = !DILocation(line: 794, column: 12, scope: !5781)
!5784 = !DILocation(line: 794, column: 5, scope: !5781)
!5785 = !DILocation(line: 796, column: 12, scope: !5770)
!5786 = !DILocation(line: 796, column: 9, scope: !5770)
!5787 = !DILocation(line: 797, column: 11, scope: !5770)
!5788 = !DILocation(line: 797, column: 8, scope: !5770)
!5789 = distinct !{!5789, !5765, !5790}
!5790 = !DILocation(line: 798, column: 3, scope: !5766)
!5791 = !DILocation(line: 800, column: 3, scope: !5766)
!5792 = !DILocation(line: 804, column: 2, scope: !5723)
!5793 = !DILocation(line: 804, column: 8, scope: !5723)
!5794 = !DILocation(line: 804, column: 25, scope: !5723)
!5795 = !DILocation(line: 806, column: 2, scope: !5723)
!5796 = !DILocation(line: 806, column: 9, scope: !5723)
!5797 = !DILocation(line: 806, column: 13, scope: !5723)
!5798 = !DILocation(line: 807, column: 10, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 806, column: 18)
!5800 = !DILocation(line: 807, column: 16, scope: !5799)
!5801 = !DILocation(line: 807, column: 22, scope: !5799)
!5802 = !DILocation(line: 807, column: 27, scope: !5799)
!5803 = !DILocation(line: 807, column: 3, scope: !5799)
!5804 = !DILocation(line: 809, column: 15, scope: !5799)
!5805 = !DILocation(line: 809, column: 21, scope: !5799)
!5806 = !DILocation(line: 809, column: 26, scope: !5799)
!5807 = !DILocation(line: 809, column: 9, scope: !5799)
!5808 = !DILocation(line: 809, column: 7, scope: !5799)
!5809 = !DILocation(line: 810, column: 7, scope: !5799)
!5810 = !DILocation(line: 811, column: 7, scope: !5799)
!5811 = !DILocation(line: 812, column: 10, scope: !5799)
!5812 = !DILocation(line: 812, column: 7, scope: !5799)
!5813 = !DILocation(line: 813, column: 7, scope: !5799)
!5814 = !DILocation(line: 814, column: 10, scope: !5799)
!5815 = !DILocation(line: 814, column: 15, scope: !5799)
!5816 = !DILocation(line: 814, column: 21, scope: !5799)
!5817 = !DILocation(line: 814, column: 26, scope: !5799)
!5818 = !DILocation(line: 814, column: 3, scope: !5799)
!5819 = !DILocation(line: 816, column: 32, scope: !5799)
!5820 = !DILocation(line: 816, column: 9, scope: !5799)
!5821 = !DILocation(line: 816, column: 7, scope: !5799)
!5822 = !DILocation(line: 817, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 817, column: 7)
!5824 = !DILocation(line: 817, column: 7, scope: !5799)
!5825 = !DILocation(line: 818, column: 11, scope: !5823)
!5826 = !DILocation(line: 818, column: 4, scope: !5823)
!5827 = !DILocation(line: 820, column: 18, scope: !5799)
!5828 = !DILocation(line: 820, column: 24, scope: !5799)
!5829 = !DILocation(line: 820, column: 29, scope: !5799)
!5830 = !DILocation(line: 820, column: 12, scope: !5799)
!5831 = !DILocation(line: 820, column: 10, scope: !5799)
!5832 = !DILocation(line: 821, column: 7, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 821, column: 7)
!5834 = !DILocation(line: 821, column: 14, scope: !5833)
!5835 = !DILocation(line: 821, column: 7, scope: !5799)
!5836 = !DILocation(line: 822, column: 4, scope: !5833)
!5837 = !DILocation(line: 823, column: 12, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 823, column: 12)
!5839 = !DILocation(line: 823, column: 19, scope: !5838)
!5840 = !DILocation(line: 823, column: 12, scope: !5833)
!5841 = !DILocation(line: 824, column: 4, scope: !5838)
!5842 = !DILocation(line: 826, column: 11, scope: !5799)
!5843 = !DILocation(line: 826, column: 8, scope: !5799)
!5844 = !DILocation(line: 827, column: 10, scope: !5799)
!5845 = !DILocation(line: 827, column: 7, scope: !5799)
!5846 = distinct !{!5846, !5795, !5847}
!5847 = !DILocation(line: 828, column: 2, scope: !5723)
!5848 = !DILocation(line: 830, column: 2, scope: !5723)
!5849 = !DILocation(line: 831, column: 1, scope: !5723)
!5850 = distinct !DISubprogram(name: "intel_spi_sw_cycle", scope: !3, file: !3, line: 492, type: !5851, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!133, !4531, !192, !139, !133}
!5853 = !DILocalVariable(name: "ispi", arg: 1, scope: !5850, file: !3, line: 492, type: !4531)
!5854 = !DILocation(line: 492, column: 49, scope: !5850)
!5855 = !DILocalVariable(name: "opcode", arg: 2, scope: !5850, file: !3, line: 492, type: !192)
!5856 = !DILocation(line: 492, column: 58, scope: !5850)
!5857 = !DILocalVariable(name: "len", arg: 3, scope: !5850, file: !3, line: 492, type: !139)
!5858 = !DILocation(line: 492, column: 73, scope: !5850)
!5859 = !DILocalVariable(name: "optype", arg: 4, scope: !5850, file: !3, line: 493, type: !133)
!5860 = !DILocation(line: 493, column: 14, scope: !5850)
!5861 = !DILocalVariable(name: "val", scope: !5850, file: !3, line: 495, type: !271)
!5862 = !DILocation(line: 495, column: 6, scope: !5850)
!5863 = !DILocalVariable(name: "status", scope: !5850, file: !3, line: 495, type: !271)
!5864 = !DILocation(line: 495, column: 15, scope: !5850)
!5865 = !DILocalVariable(name: "atomic_preopcode", scope: !5850, file: !3, line: 496, type: !192)
!5866 = !DILocation(line: 496, column: 5, scope: !5850)
!5867 = !DILocalVariable(name: "ret", scope: !5850, file: !3, line: 497, type: !133)
!5868 = !DILocation(line: 497, column: 6, scope: !5850)
!5869 = !DILocation(line: 499, column: 31, scope: !5850)
!5870 = !DILocation(line: 499, column: 37, scope: !5850)
!5871 = !DILocation(line: 499, column: 45, scope: !5850)
!5872 = !DILocation(line: 499, column: 8, scope: !5850)
!5873 = !DILocation(line: 499, column: 6, scope: !5850)
!5874 = !DILocation(line: 500, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 500, column: 6)
!5876 = !DILocation(line: 500, column: 10, scope: !5875)
!5877 = !DILocation(line: 500, column: 6, scope: !5850)
!5878 = !DILocation(line: 501, column: 10, scope: !5875)
!5879 = !DILocation(line: 501, column: 3, scope: !5875)
!5880 = !DILocation(line: 503, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 503, column: 6)
!5882 = !DILocation(line: 503, column: 10, scope: !5881)
!5883 = !DILocation(line: 503, column: 6, scope: !5850)
!5884 = !DILocation(line: 504, column: 3, scope: !5881)
!5885 = !DILocation(line: 510, column: 21, scope: !5850)
!5886 = !DILocation(line: 510, column: 27, scope: !5850)
!5887 = !DILocation(line: 510, column: 19, scope: !5850)
!5888 = !DILocation(line: 511, column: 2, scope: !5850)
!5889 = !DILocation(line: 511, column: 8, scope: !5850)
!5890 = !DILocation(line: 511, column: 25, scope: !5850)
!5891 = !DILocation(line: 514, column: 6, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 514, column: 6)
!5893 = !DILocation(line: 514, column: 10, scope: !5892)
!5894 = !DILocation(line: 514, column: 6, scope: !5850)
!5895 = !DILocation(line: 515, column: 11, scope: !5892)
!5896 = !DILocation(line: 515, column: 15, scope: !5892)
!5897 = !DILocation(line: 515, column: 20, scope: !5892)
!5898 = !DILocation(line: 515, column: 45, scope: !5892)
!5899 = !DILocation(line: 515, column: 9, scope: !5892)
!5900 = !DILocation(line: 515, column: 7, scope: !5892)
!5901 = !DILocation(line: 515, column: 3, scope: !5892)
!5902 = !DILocation(line: 516, column: 9, scope: !5850)
!5903 = !DILocation(line: 516, column: 13, scope: !5850)
!5904 = !DILocation(line: 516, column: 6, scope: !5850)
!5905 = !DILocation(line: 517, column: 6, scope: !5850)
!5906 = !DILocation(line: 518, column: 6, scope: !5850)
!5907 = !DILocation(line: 519, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 519, column: 6)
!5909 = !DILocation(line: 519, column: 6, scope: !5850)
!5910 = !DILocalVariable(name: "preop", scope: !5911, file: !3, line: 520, type: !183)
!5911 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 519, column: 24)
!5912 = !DILocation(line: 520, column: 7, scope: !5911)
!5913 = !DILocation(line: 522, column: 11, scope: !5911)
!5914 = !DILocation(line: 522, column: 3, scope: !5911)
!5915 = !DILocation(line: 526, column: 18, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 522, column: 19)
!5917 = !DILocation(line: 526, column: 24, scope: !5916)
!5918 = !DILocation(line: 526, column: 30, scope: !5916)
!5919 = !DILocation(line: 526, column: 12, scope: !5916)
!5920 = !DILocation(line: 526, column: 10, scope: !5916)
!5921 = !DILocation(line: 527, column: 9, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 527, column: 8)
!5923 = !DILocation(line: 527, column: 15, scope: !5922)
!5924 = !DILocation(line: 527, column: 26, scope: !5922)
!5925 = !DILocation(line: 527, column: 23, scope: !5922)
!5926 = !DILocation(line: 527, column: 8, scope: !5916)
!5927 = !DILocation(line: 529, column: 14, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 529, column: 13)
!5929 = !DILocation(line: 529, column: 20, scope: !5928)
!5930 = !DILocation(line: 529, column: 29, scope: !5928)
!5931 = !DILocation(line: 529, column: 26, scope: !5928)
!5932 = !DILocation(line: 529, column: 13, scope: !5922)
!5933 = !DILocation(line: 530, column: 9, scope: !5928)
!5934 = !DILocation(line: 530, column: 5, scope: !5928)
!5935 = !DILocation(line: 532, column: 5, scope: !5928)
!5936 = !DILocation(line: 535, column: 8, scope: !5916)
!5937 = !DILocation(line: 536, column: 4, scope: !5916)
!5938 = !DILocation(line: 539, column: 4, scope: !5916)
!5939 = !DILocation(line: 542, column: 2, scope: !5911)
!5940 = !DILocation(line: 543, column: 9, scope: !5850)
!5941 = !DILocation(line: 543, column: 14, scope: !5850)
!5942 = !DILocation(line: 543, column: 20, scope: !5850)
!5943 = !DILocation(line: 543, column: 26, scope: !5850)
!5944 = !DILocation(line: 543, column: 2, scope: !5850)
!5945 = !DILocation(line: 545, column: 31, scope: !5850)
!5946 = !DILocation(line: 545, column: 8, scope: !5850)
!5947 = !DILocation(line: 545, column: 6, scope: !5850)
!5948 = !DILocation(line: 546, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 546, column: 6)
!5950 = !DILocation(line: 546, column: 6, scope: !5850)
!5951 = !DILocation(line: 547, column: 10, scope: !5949)
!5952 = !DILocation(line: 547, column: 3, scope: !5949)
!5953 = !DILocation(line: 549, column: 17, scope: !5850)
!5954 = !DILocation(line: 549, column: 23, scope: !5850)
!5955 = !DILocation(line: 549, column: 29, scope: !5850)
!5956 = !DILocation(line: 549, column: 11, scope: !5850)
!5957 = !DILocation(line: 549, column: 9, scope: !5850)
!5958 = !DILocation(line: 550, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 550, column: 6)
!5960 = !DILocation(line: 550, column: 13, scope: !5959)
!5961 = !DILocation(line: 550, column: 6, scope: !5850)
!5962 = !DILocation(line: 551, column: 3, scope: !5959)
!5963 = !DILocation(line: 552, column: 11, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 552, column: 11)
!5965 = !DILocation(line: 552, column: 18, scope: !5964)
!5966 = !DILocation(line: 552, column: 11, scope: !5959)
!5967 = !DILocation(line: 553, column: 3, scope: !5964)
!5968 = !DILocation(line: 555, column: 2, scope: !5850)
!5969 = !DILocation(line: 556, column: 1, scope: !5850)
!5970 = distinct !DISubprogram(name: "intel_spi_hw_cycle", scope: !3, file: !3, line: 449, type: !5971, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!133, !4531, !192, !139}
!5973 = !DILocalVariable(name: "ispi", arg: 1, scope: !5970, file: !3, line: 449, type: !4531)
!5974 = !DILocation(line: 449, column: 49, scope: !5970)
!5975 = !DILocalVariable(name: "opcode", arg: 2, scope: !5970, file: !3, line: 449, type: !192)
!5976 = !DILocation(line: 449, column: 58, scope: !5970)
!5977 = !DILocalVariable(name: "len", arg: 3, scope: !5970, file: !3, line: 449, type: !139)
!5978 = !DILocation(line: 449, column: 73, scope: !5970)
!5979 = !DILocalVariable(name: "val", scope: !5970, file: !3, line: 451, type: !271)
!5980 = !DILocation(line: 451, column: 6, scope: !5970)
!5981 = !DILocalVariable(name: "status", scope: !5970, file: !3, line: 451, type: !271)
!5982 = !DILocation(line: 451, column: 11, scope: !5970)
!5983 = !DILocalVariable(name: "ret", scope: !5970, file: !3, line: 452, type: !133)
!5984 = !DILocation(line: 452, column: 6, scope: !5970)
!5985 = !DILocation(line: 454, column: 14, scope: !5970)
!5986 = !DILocation(line: 454, column: 20, scope: !5970)
!5987 = !DILocation(line: 454, column: 25, scope: !5970)
!5988 = !DILocation(line: 454, column: 8, scope: !5970)
!5989 = !DILocation(line: 454, column: 6, scope: !5970)
!5990 = !DILocation(line: 455, column: 6, scope: !5970)
!5991 = !DILocation(line: 457, column: 10, scope: !5970)
!5992 = !DILocation(line: 457, column: 2, scope: !5970)
!5993 = !DILocation(line: 459, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 457, column: 18)
!5995 = !DILocation(line: 460, column: 3, scope: !5994)
!5996 = !DILocation(line: 462, column: 7, scope: !5994)
!5997 = !DILocation(line: 463, column: 3, scope: !5994)
!5998 = !DILocation(line: 465, column: 7, scope: !5994)
!5999 = !DILocation(line: 466, column: 3, scope: !5994)
!6000 = !DILocation(line: 468, column: 3, scope: !5994)
!6001 = !DILocation(line: 471, column: 6, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 471, column: 6)
!6003 = !DILocation(line: 471, column: 10, scope: !6002)
!6004 = !DILocation(line: 471, column: 6, scope: !5970)
!6005 = !DILocation(line: 472, column: 3, scope: !6002)
!6006 = !DILocation(line: 474, column: 10, scope: !5970)
!6007 = !DILocation(line: 474, column: 14, scope: !5970)
!6008 = !DILocation(line: 474, column: 19, scope: !5970)
!6009 = !DILocation(line: 474, column: 6, scope: !5970)
!6010 = !DILocation(line: 475, column: 6, scope: !5970)
!6011 = !DILocation(line: 476, column: 6, scope: !5970)
!6012 = !DILocation(line: 477, column: 9, scope: !5970)
!6013 = !DILocation(line: 477, column: 14, scope: !5970)
!6014 = !DILocation(line: 477, column: 20, scope: !5970)
!6015 = !DILocation(line: 477, column: 25, scope: !5970)
!6016 = !DILocation(line: 477, column: 2, scope: !5970)
!6017 = !DILocation(line: 479, column: 31, scope: !5970)
!6018 = !DILocation(line: 479, column: 8, scope: !5970)
!6019 = !DILocation(line: 479, column: 6, scope: !5970)
!6020 = !DILocation(line: 480, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 480, column: 6)
!6022 = !DILocation(line: 480, column: 6, scope: !5970)
!6023 = !DILocation(line: 481, column: 10, scope: !6021)
!6024 = !DILocation(line: 481, column: 3, scope: !6021)
!6025 = !DILocation(line: 483, column: 17, scope: !5970)
!6026 = !DILocation(line: 483, column: 23, scope: !5970)
!6027 = !DILocation(line: 483, column: 28, scope: !5970)
!6028 = !DILocation(line: 483, column: 11, scope: !5970)
!6029 = !DILocation(line: 483, column: 9, scope: !5970)
!6030 = !DILocation(line: 484, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 484, column: 6)
!6032 = !DILocation(line: 484, column: 13, scope: !6031)
!6033 = !DILocation(line: 484, column: 6, scope: !5970)
!6034 = !DILocation(line: 485, column: 3, scope: !6031)
!6035 = !DILocation(line: 486, column: 11, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 486, column: 11)
!6037 = !DILocation(line: 486, column: 18, scope: !6036)
!6038 = !DILocation(line: 486, column: 11, scope: !6031)
!6039 = !DILocation(line: 487, column: 3, scope: !6036)
!6040 = !DILocation(line: 489, column: 2, scope: !5970)
!6041 = !DILocation(line: 490, column: 1, scope: !5970)
!6042 = distinct !DISubprogram(name: "intel_spi_read_block", scope: !3, file: !3, line: 250, type: !6043, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!133, !4531, !131, !139}
!6045 = !DILocalVariable(name: "ispi", arg: 1, scope: !6042, file: !3, line: 250, type: !4531)
!6046 = !DILocation(line: 250, column: 51, scope: !6042)
!6047 = !DILocalVariable(name: "buf", arg: 2, scope: !6042, file: !3, line: 250, type: !131)
!6048 = !DILocation(line: 250, column: 63, scope: !6042)
!6049 = !DILocalVariable(name: "size", arg: 3, scope: !6042, file: !3, line: 250, type: !139)
!6050 = !DILocation(line: 250, column: 75, scope: !6042)
!6051 = !DILocalVariable(name: "bytes", scope: !6042, file: !3, line: 252, type: !139)
!6052 = !DILocation(line: 252, column: 9, scope: !6042)
!6053 = !DILocalVariable(name: "i", scope: !6042, file: !3, line: 253, type: !133)
!6054 = !DILocation(line: 253, column: 6, scope: !6042)
!6055 = !DILocation(line: 255, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 255, column: 6)
!6057 = !DILocation(line: 255, column: 11, scope: !6056)
!6058 = !DILocation(line: 255, column: 6, scope: !6042)
!6059 = !DILocation(line: 256, column: 3, scope: !6056)
!6060 = !DILocation(line: 258, column: 2, scope: !6042)
!6061 = !DILocation(line: 258, column: 9, scope: !6042)
!6062 = !DILocation(line: 258, column: 14, scope: !6042)
!6063 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !6064, file: !3, line: 259, type: !139)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 259, column: 11)
!6065 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 258, column: 19)
!6066 = !DILocation(line: 259, column: 11, scope: !6064)
!6067 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !6064, file: !3, line: 259, type: !139)
!6068 = !DILocation(line: 259, column: 9, scope: !6065)
!6069 = !DILocation(line: 260, column: 17, scope: !6065)
!6070 = !DILocation(line: 260, column: 22, scope: !6065)
!6071 = !DILocation(line: 260, column: 28, scope: !6065)
!6072 = !DILocation(line: 260, column: 35, scope: !6065)
!6073 = !DILocation(line: 260, column: 33, scope: !6065)
!6074 = !DILocation(line: 260, column: 45, scope: !6065)
!6075 = !DILocation(line: 260, column: 3, scope: !6065)
!6076 = !DILocation(line: 261, column: 11, scope: !6065)
!6077 = !DILocation(line: 261, column: 8, scope: !6065)
!6078 = !DILocation(line: 262, column: 10, scope: !6065)
!6079 = !DILocation(line: 262, column: 7, scope: !6065)
!6080 = !DILocation(line: 263, column: 4, scope: !6065)
!6081 = distinct !{!6081, !6060, !6082}
!6082 = !DILocation(line: 264, column: 2, scope: !6042)
!6083 = !DILocation(line: 266, column: 2, scope: !6042)
!6084 = !DILocation(line: 267, column: 1, scope: !6042)
!6085 = distinct !DISubprogram(name: "intel_spi_opcode_index", scope: !3, file: !3, line: 428, type: !6086, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!133, !4531, !192, !133}
!6088 = !DILocalVariable(name: "ispi", arg: 1, scope: !6085, file: !3, line: 428, type: !4531)
!6089 = !DILocation(line: 428, column: 53, scope: !6085)
!6090 = !DILocalVariable(name: "opcode", arg: 2, scope: !6085, file: !3, line: 428, type: !192)
!6091 = !DILocation(line: 428, column: 62, scope: !6085)
!6092 = !DILocalVariable(name: "optype", arg: 3, scope: !6085, file: !3, line: 428, type: !133)
!6093 = !DILocation(line: 428, column: 74, scope: !6085)
!6094 = !DILocalVariable(name: "i", scope: !6085, file: !3, line: 430, type: !133)
!6095 = !DILocation(line: 430, column: 6, scope: !6085)
!6096 = !DILocalVariable(name: "preop", scope: !6085, file: !3, line: 431, type: !133)
!6097 = !DILocation(line: 431, column: 6, scope: !6085)
!6098 = !DILocation(line: 433, column: 6, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 433, column: 6)
!6100 = !DILocation(line: 433, column: 12, scope: !6099)
!6101 = !DILocation(line: 433, column: 6, scope: !6085)
!6102 = !DILocation(line: 434, column: 10, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 434, column: 3)
!6104 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 433, column: 20)
!6105 = !DILocation(line: 434, column: 8, scope: !6103)
!6106 = !DILocation(line: 434, column: 15, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6103, file: !3, line: 434, column: 3)
!6108 = !DILocation(line: 434, column: 17, scope: !6107)
!6109 = !DILocation(line: 434, column: 3, scope: !6103)
!6110 = !DILocation(line: 435, column: 8, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 435, column: 8)
!6112 = !DILocation(line: 435, column: 14, scope: !6111)
!6113 = !DILocation(line: 435, column: 22, scope: !6111)
!6114 = !DILocation(line: 435, column: 28, scope: !6111)
!6115 = !DILocation(line: 435, column: 25, scope: !6111)
!6116 = !DILocation(line: 435, column: 8, scope: !6107)
!6117 = !DILocation(line: 436, column: 12, scope: !6111)
!6118 = !DILocation(line: 436, column: 5, scope: !6111)
!6119 = !DILocation(line: 434, column: 47, scope: !6107)
!6120 = !DILocation(line: 434, column: 3, scope: !6107)
!6121 = distinct !{!6121, !6109, !6122}
!6122 = !DILocation(line: 436, column: 12, scope: !6103)
!6123 = !DILocation(line: 438, column: 3, scope: !6104)
!6124 = !DILocation(line: 442, column: 9, scope: !6085)
!6125 = !DILocation(line: 442, column: 17, scope: !6085)
!6126 = !DILocation(line: 442, column: 23, scope: !6085)
!6127 = !DILocation(line: 442, column: 29, scope: !6085)
!6128 = !DILocation(line: 442, column: 2, scope: !6085)
!6129 = !DILocation(line: 443, column: 16, scope: !6085)
!6130 = !DILocation(line: 443, column: 22, scope: !6085)
!6131 = !DILocation(line: 443, column: 28, scope: !6085)
!6132 = !DILocation(line: 443, column: 10, scope: !6085)
!6133 = !DILocation(line: 443, column: 8, scope: !6085)
!6134 = !DILocation(line: 444, column: 9, scope: !6085)
!6135 = !DILocation(line: 444, column: 16, scope: !6085)
!6136 = !DILocation(line: 444, column: 24, scope: !6085)
!6137 = !DILocation(line: 444, column: 22, scope: !6085)
!6138 = !DILocation(line: 444, column: 31, scope: !6085)
!6139 = !DILocation(line: 444, column: 37, scope: !6085)
!6140 = !DILocation(line: 444, column: 43, scope: !6085)
!6141 = !DILocation(line: 444, column: 2, scope: !6085)
!6142 = !DILocation(line: 446, column: 2, scope: !6085)
!6143 = !DILocation(line: 447, column: 1, scope: !6085)
!6144 = distinct !DISubprogram(name: "readw", scope: !5129, file: !5129, line: 58, type: !6145, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!138, !5132}
!6147 = !DILocalVariable(name: "addr", arg: 1, scope: !6144, file: !5129, line: 58, type: !5132)
!6148 = !DILocation(line: 58, column: 1, scope: !6144)
!6149 = !DILocalVariable(name: "ret", scope: !6144, file: !5129, line: 58, type: !138)
!6150 = !{i32 -2146505201}
!6151 = distinct !DISubprogram(name: "intel_spi_wait_sw_busy", scope: !3, file: !3, line: 299, type: !4740, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6152 = !DILocalVariable(name: "ispi", arg: 1, scope: !6151, file: !3, line: 299, type: !4531)
!6153 = !DILocation(line: 299, column: 53, scope: !6151)
!6154 = !DILocalVariable(name: "val", scope: !6151, file: !3, line: 301, type: !271)
!6155 = !DILocation(line: 301, column: 6, scope: !6151)
!6156 = !DILocalVariable(name: "__timeout_us", scope: !6157, file: !3, line: 303, type: !275)
!6157 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 303, column: 9)
!6158 = !DILocation(line: 303, column: 9, scope: !6157)
!6159 = !DILocalVariable(name: "__sleep_us", scope: !6157, file: !3, line: 303, type: !132)
!6160 = !DILocalVariable(name: "__timeout", scope: !6157, file: !3, line: 303, type: !1561)
!6161 = !DILocation(line: 303, column: 9, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 303, column: 9)
!6163 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 303, column: 9)
!6164 = !DILocation(line: 303, column: 9, scope: !6163)
!6165 = !DILocation(line: 303, column: 9, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 303, column: 9)
!6167 = !DILocation(line: 303, column: 9, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 303, column: 9)
!6169 = !DILocation(line: 303, column: 9, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 303, column: 9)
!6171 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 303, column: 9)
!6172 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 303, column: 9)
!6173 = !DILocation(line: 303, column: 9, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 303, column: 9)
!6175 = !DILocation(line: 303, column: 9, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 303, column: 9)
!6177 = !DILocation(line: 303, column: 9, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 303, column: 9)
!6179 = !DILocation(line: 303, column: 9, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 303, column: 9)
!6181 = !DILocation(line: 303, column: 9, scope: !6171)
!6182 = distinct !{!6182, !6183, !6183}
!6183 = !DILocation(line: 303, column: 9, scope: !6172)
!6184 = !DILocation(line: 303, column: 2, scope: !6151)
!6185 = distinct !DISubprogram(name: "ktime_add_us", scope: !1562, file: !1562, line: 179, type: !6186, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!1561, !6188, !6189}
!6188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!6189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!6190 = !DILocalVariable(name: "kt", arg: 1, scope: !6185, file: !1562, line: 179, type: !6188)
!6191 = !DILocation(line: 179, column: 50, scope: !6185)
!6192 = !DILocalVariable(name: "usec", arg: 2, scope: !6185, file: !1562, line: 179, type: !6189)
!6193 = !DILocation(line: 179, column: 64, scope: !6185)
!6194 = !DILocation(line: 181, column: 9, scope: !6185)
!6195 = !DILocation(line: 181, column: 2, scope: !6185)
!6196 = distinct !DISubprogram(name: "ktime_compare", scope: !1562, file: !1562, line: 95, type: !6197, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!133, !6188, !6188}
!6199 = !DILocalVariable(name: "cmp1", arg: 1, scope: !6196, file: !1562, line: 95, type: !6188)
!6200 = !DILocation(line: 95, column: 47, scope: !6196)
!6201 = !DILocalVariable(name: "cmp2", arg: 2, scope: !6196, file: !1562, line: 95, type: !6188)
!6202 = !DILocation(line: 95, column: 67, scope: !6196)
!6203 = !DILocation(line: 97, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6196, file: !1562, line: 97, column: 6)
!6205 = !DILocation(line: 97, column: 13, scope: !6204)
!6206 = !DILocation(line: 97, column: 11, scope: !6204)
!6207 = !DILocation(line: 97, column: 6, scope: !6196)
!6208 = !DILocation(line: 98, column: 3, scope: !6204)
!6209 = !DILocation(line: 99, column: 6, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6196, file: !1562, line: 99, column: 6)
!6211 = !DILocation(line: 99, column: 13, scope: !6210)
!6212 = !DILocation(line: 99, column: 11, scope: !6210)
!6213 = !DILocation(line: 99, column: 6, scope: !6196)
!6214 = !DILocation(line: 100, column: 3, scope: !6210)
!6215 = !DILocation(line: 101, column: 2, scope: !6196)
!6216 = !DILocation(line: 102, column: 1, scope: !6196)
!6217 = distinct !DISubprogram(name: "intel_spi_wait_hw_busy", scope: !3, file: !3, line: 290, type: !4740, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6218 = !DILocalVariable(name: "ispi", arg: 1, scope: !6217, file: !3, line: 290, type: !4531)
!6219 = !DILocation(line: 290, column: 53, scope: !6217)
!6220 = !DILocalVariable(name: "val", scope: !6217, file: !3, line: 292, type: !271)
!6221 = !DILocation(line: 292, column: 6, scope: !6217)
!6222 = !DILocalVariable(name: "__timeout_us", scope: !6223, file: !3, line: 294, type: !275)
!6223 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 294, column: 9)
!6224 = !DILocation(line: 294, column: 9, scope: !6223)
!6225 = !DILocalVariable(name: "__sleep_us", scope: !6223, file: !3, line: 294, type: !132)
!6226 = !DILocalVariable(name: "__timeout", scope: !6223, file: !3, line: 294, type: !1561)
!6227 = !DILocation(line: 294, column: 9, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 294, column: 9)
!6229 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 294, column: 9)
!6230 = !DILocation(line: 294, column: 9, scope: !6229)
!6231 = !DILocation(line: 294, column: 9, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 294, column: 9)
!6233 = !DILocation(line: 294, column: 9, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6232, file: !3, line: 294, column: 9)
!6235 = !DILocation(line: 294, column: 9, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 294, column: 9)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 294, column: 9)
!6238 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 294, column: 9)
!6239 = !DILocation(line: 294, column: 9, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 294, column: 9)
!6241 = !DILocation(line: 294, column: 9, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 294, column: 9)
!6243 = !DILocation(line: 294, column: 9, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 294, column: 9)
!6245 = !DILocation(line: 294, column: 9, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 294, column: 9)
!6247 = !DILocation(line: 294, column: 9, scope: !6237)
!6248 = distinct !{!6248, !6249, !6249}
!6249 = !DILocation(line: 294, column: 9, scope: !6238)
!6250 = !DILocation(line: 294, column: 2, scope: !6217)
!6251 = distinct !DISubprogram(name: "intel_spi_write_block", scope: !3, file: !3, line: 270, type: !6252, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!133, !4531, !2385, !139}
!6254 = !DILocalVariable(name: "ispi", arg: 1, scope: !6251, file: !3, line: 270, type: !4531)
!6255 = !DILocation(line: 270, column: 52, scope: !6251)
!6256 = !DILocalVariable(name: "buf", arg: 2, scope: !6251, file: !3, line: 270, type: !2385)
!6257 = !DILocation(line: 270, column: 70, scope: !6251)
!6258 = !DILocalVariable(name: "size", arg: 3, scope: !6251, file: !3, line: 271, type: !139)
!6259 = !DILocation(line: 271, column: 13, scope: !6251)
!6260 = !DILocalVariable(name: "bytes", scope: !6251, file: !3, line: 273, type: !139)
!6261 = !DILocation(line: 273, column: 9, scope: !6251)
!6262 = !DILocalVariable(name: "i", scope: !6251, file: !3, line: 274, type: !133)
!6263 = !DILocation(line: 274, column: 6, scope: !6251)
!6264 = !DILocation(line: 276, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 276, column: 6)
!6266 = !DILocation(line: 276, column: 11, scope: !6265)
!6267 = !DILocation(line: 276, column: 6, scope: !6251)
!6268 = !DILocation(line: 277, column: 3, scope: !6265)
!6269 = !DILocation(line: 279, column: 2, scope: !6251)
!6270 = !DILocation(line: 279, column: 9, scope: !6251)
!6271 = !DILocation(line: 279, column: 14, scope: !6251)
!6272 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !6273, file: !3, line: 280, type: !139)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 280, column: 11)
!6274 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 279, column: 19)
!6275 = !DILocation(line: 280, column: 11, scope: !6273)
!6276 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !6273, file: !3, line: 280, type: !139)
!6277 = !DILocation(line: 280, column: 9, scope: !6274)
!6278 = !DILocation(line: 281, column: 15, scope: !6274)
!6279 = !DILocation(line: 281, column: 21, scope: !6274)
!6280 = !DILocation(line: 281, column: 28, scope: !6274)
!6281 = !DILocation(line: 281, column: 26, scope: !6274)
!6282 = !DILocation(line: 281, column: 38, scope: !6274)
!6283 = !DILocation(line: 281, column: 43, scope: !6274)
!6284 = !DILocation(line: 281, column: 3, scope: !6274)
!6285 = !DILocation(line: 282, column: 11, scope: !6274)
!6286 = !DILocation(line: 282, column: 8, scope: !6274)
!6287 = !DILocation(line: 283, column: 10, scope: !6274)
!6288 = !DILocation(line: 283, column: 7, scope: !6274)
!6289 = !DILocation(line: 284, column: 4, scope: !6274)
!6290 = distinct !{!6290, !6269, !6291}
!6291 = !DILocation(line: 285, column: 2, scope: !6251)
!6292 = !DILocation(line: 287, column: 2, scope: !6251)
!6293 = !DILocation(line: 288, column: 1, scope: !6251)
!6294 = distinct !DISubprogram(name: "intel_spi_is_protected", scope: !3, file: !3, line: 833, type: !6295, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !503)
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!249, !6297, !7, !7}
!6297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6298, size: 64)
!6298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!6299 = !DILocalVariable(name: "ispi", arg: 1, scope: !6294, file: !3, line: 833, type: !6297)
!6300 = !DILocation(line: 833, column: 60, scope: !6294)
!6301 = !DILocalVariable(name: "base", arg: 2, scope: !6294, file: !3, line: 834, type: !7)
!6302 = !DILocation(line: 834, column: 21, scope: !6294)
!6303 = !DILocalVariable(name: "limit", arg: 3, scope: !6294, file: !3, line: 834, type: !7)
!6304 = !DILocation(line: 834, column: 40, scope: !6294)
!6305 = !DILocalVariable(name: "i", scope: !6294, file: !3, line: 836, type: !133)
!6306 = !DILocation(line: 836, column: 6, scope: !6294)
!6307 = !DILocation(line: 838, column: 9, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 838, column: 2)
!6309 = !DILocation(line: 838, column: 7, scope: !6308)
!6310 = !DILocation(line: 838, column: 14, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 838, column: 2)
!6312 = !DILocation(line: 838, column: 18, scope: !6311)
!6313 = !DILocation(line: 838, column: 24, scope: !6311)
!6314 = !DILocation(line: 838, column: 16, scope: !6311)
!6315 = !DILocation(line: 838, column: 2, scope: !6308)
!6316 = !DILocalVariable(name: "pr_base", scope: !6317, file: !3, line: 839, type: !271)
!6317 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 838, column: 37)
!6318 = !DILocation(line: 839, column: 7, scope: !6317)
!6319 = !DILocalVariable(name: "pr_limit", scope: !6317, file: !3, line: 839, type: !271)
!6320 = !DILocation(line: 839, column: 16, scope: !6317)
!6321 = !DILocalVariable(name: "pr_value", scope: !6317, file: !3, line: 839, type: !271)
!6322 = !DILocation(line: 839, column: 26, scope: !6317)
!6323 = !DILocation(line: 841, column: 20, scope: !6317)
!6324 = !DILocation(line: 841, column: 26, scope: !6317)
!6325 = !DILocation(line: 841, column: 34, scope: !6317)
!6326 = !DILocation(line: 841, column: 32, scope: !6317)
!6327 = !DILocation(line: 841, column: 14, scope: !6317)
!6328 = !DILocation(line: 841, column: 12, scope: !6317)
!6329 = !DILocation(line: 842, column: 9, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 842, column: 7)
!6331 = !DILocation(line: 842, column: 18, scope: !6330)
!6332 = !DILocation(line: 842, column: 7, scope: !6317)
!6333 = !DILocation(line: 843, column: 4, scope: !6330)
!6334 = !DILocation(line: 845, column: 15, scope: !6317)
!6335 = !DILocation(line: 845, column: 24, scope: !6317)
!6336 = !DILocation(line: 845, column: 41, scope: !6317)
!6337 = !DILocation(line: 845, column: 12, scope: !6317)
!6338 = !DILocation(line: 846, column: 13, scope: !6317)
!6339 = !DILocation(line: 846, column: 22, scope: !6317)
!6340 = !DILocation(line: 846, column: 11, scope: !6317)
!6341 = !DILocation(line: 848, column: 7, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 848, column: 7)
!6343 = !DILocation(line: 848, column: 18, scope: !6342)
!6344 = !DILocation(line: 848, column: 15, scope: !6342)
!6345 = !DILocation(line: 848, column: 23, scope: !6342)
!6346 = !DILocation(line: 848, column: 26, scope: !6342)
!6347 = !DILocation(line: 848, column: 38, scope: !6342)
!6348 = !DILocation(line: 848, column: 35, scope: !6342)
!6349 = !DILocation(line: 848, column: 7, scope: !6317)
!6350 = !DILocation(line: 849, column: 4, scope: !6342)
!6351 = !DILocation(line: 850, column: 2, scope: !6317)
!6352 = !DILocation(line: 838, column: 33, scope: !6311)
!6353 = !DILocation(line: 838, column: 2, scope: !6311)
!6354 = distinct !{!6354, !6315, !6355}
!6355 = !DILocation(line: 850, column: 2, scope: !6308)
!6356 = !DILocation(line: 852, column: 2, scope: !6294)
!6357 = !DILocation(line: 853, column: 1, scope: !6294)
