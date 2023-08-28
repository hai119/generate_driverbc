; ModuleID = '../bcout/drivers/xen/balloon.llvm.bc'
source_filename = "drivers/xen/balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_balloon_init4:\09\09\09"
module asm ".long\09balloon_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.balloon_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.workqueue_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.41, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.46, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.46 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon, %union.anon.65, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.48, %struct.list_head, %struct.list_head, %union.anon.49 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.48 = type { %struct.list_head }
%union.anon.49 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i8, %struct.hd_struct*, i32, %struct.spinlock, %struct.gendisk*, %struct.backing_dev_info*, i32, %struct.mutex }
%struct.hd_struct = type { i64, i64, i64, %struct.disk_stats*, %struct.percpu_ref, %struct.device, %struct.kobject*, i32, i32, %struct.partition_meta_info*, %struct.rcu_work }
%struct.disk_stats = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.47, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.47 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.poll_table_struct = type opaque
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.26, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.26 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.kmem_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.66, %union.anon.67, %union.anon.68, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.71, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.66 = type { %struct.hlist_node }
%union.anon.67 = type { %struct.rb_node }
%union.anon.68 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.71 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.72, void (i8*)*, i8* }
%union.anon.72 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.73, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.73 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_integrity = type { %struct.blk_integrity_profile*, i8, i8, i8, i8 }
%struct.blk_integrity_profile = type { i8 (%struct.blk_integrity_iter*)*, i8 (%struct.blk_integrity_iter*)*, void (%struct.request*)*, void (%struct.request*, i32)*, i8* }
%struct.blk_integrity_iter = type { i8*, i8*, i64, i32, i16, i8* }
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.queue_limits = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.bsg_class_device = type { %struct.device*, i32, %struct.request_queue*, %struct.bsg_ops* }
%struct.bsg_ops = type { i32 (%struct.sg_io_v4*)*, i32 (%struct.request*, %struct.sg_io_v4*, i32)*, i32 (%struct.request*, %struct.sg_io_v4*)*, void (%struct.request*)* }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.50 }
%union.anon.50 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.51 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.51 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.78 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.65 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [48 x i8] }
%struct.anon.22 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.25 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.13, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.14, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.15, %union.anon.19, %struct.key_restriction* }
%union.anon.13 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.14 = type { i64 }
%union.anon.15 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.16, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.16 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.19 = type { %union.key_payload }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { i64 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.40, i32, [12 x i8] }
%union.anon.40 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.41 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.42, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.45 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { i64, i64 }
%union.anon.45 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.start_info = type { [32 x i8], i64, i64, i32, i64, i32, %union.anon.79, i64, i64, i64, i64, i64, [1024 x i8], i64, i64 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i64, i32 }
%struct.xen_memory_region = type { i64, i64 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.task_struct*, i64, %struct.spinlock, %struct.lruvec, i64, %struct.per_cpu_nodestat*, [37 x %struct.atomic64_t] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pageset*, i64, %struct.atomic64_t, i64, i64, i8*, i32, [11 x %struct.free_area], i64, %struct.spinlock, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [11 x %struct.atomic64_t], [0 x %struct.atomic64_t] }
%struct.per_cpu_pageset = type { %struct.per_cpu_pages }
%struct.per_cpu_pages = type { i32, i32, i32, [3 x %struct.list_head] }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.per_cpu_nodestat = type { i8, [37 x i8] }
%struct.nodemask_t = type { [1 x i64] }

@balloon_stats = dso_local global %struct.balloon_stats zeroinitializer, align 8, !dbg !0
@balloon_worker = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @balloon_worker to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @balloon_worker to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @balloon_process }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8, !dbg !4883
@balloon_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @balloon_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @balloon_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4894
@vmemmap_base = external dso_local global i64, align 8
@__UNIQUE_ID___addressable_balloon_init310 = internal global i8* bitcast (i32 ()* @balloon_init to i8*), section ".discard.addressable", align 8, !dbg !4881
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@totalreserve_pages = external dso_local global i64, align 8
@.str = private unnamed_addr constant [22 x i8] c"drivers/xen/balloon.c\00", align 1
@ballooned_pages = internal global %struct.list_head { %struct.list_head* @ballooned_pages, %struct.list_head* @ballooned_pages }, align 8, !dbg !4885
@frame_list = internal global [512 x i64] zeroinitializer, align 16, !dbg !4887
@xen_scrub_pages = external dso_local global i8, align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@page_offset_base = external dso_local global i64, align 8
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@xen_hotplug_unpopulated = internal global i32 0, align 4, !dbg !4896
@balloon_wq = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @balloon_wq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @balloon_wq to %struct.list_head*) } }, align 8, !dbg !4898
@xen_domain_type = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\016xen:balloon: Initialising balloon driver\0A\00", align 1
@xen_start_info = external dso_local global %struct.start_info*, align 8
@xen_released_pages = external dso_local global i64, align 8
@max_pfn = external dso_local global i64, align 8
@xen_extra_mem = external dso_local global [128 x %struct.xen_memory_region], section ".init.data", align 16
@contig_page_data = external dso_local global %struct.pglist_data, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_balloon_init310 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @balloon_set_new_target(i64 %target) #0 !dbg !4919 {
entry:
  %target.addr = alloca i64, align 8
  store i64 %target, i64* %target.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %target.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  %0 = load i64, i64* %target.addr, align 8, !dbg !4924
  store i64 %0, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 1), align 8, !dbg !4925
  %call = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* @balloon_worker, i64 0) #8, !dbg !4926
  ret void, !dbg !4927
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #0 !dbg !4928 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !4936
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !4937
  %2 = load i64, i64* %delay.addr, align 8, !dbg !4938
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !4939
  ret i1 %call, !dbg !4940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @alloc_xenballooned_pages(i32 %nr_pages, %struct.page** %pages) #0 !dbg !4941 {
entry:
  %retval = alloca i32, align 4
  %nr_pages.addr = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  %pgno = alloca i32, align 4
  %page = alloca %struct.page*, align 8
  %ret = alloca i32, align 4
  store i32 %nr_pages, i32* %nr_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_pages.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.declare(metadata i32* %pgno, metadata !4948, metadata !DIExpression()), !dbg !4949
  store i32 0, i32* %pgno, align 4, !dbg !4949
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !4950, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @mutex_lock(%struct.mutex* @balloon_mutex) #8, !dbg !4954
  %0 = load i32, i32* %nr_pages.addr, align 4, !dbg !4955
  %conv = sext i32 %0 to i64, !dbg !4955
  %1 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !4956
  %add = add i64 %1, %conv, !dbg !4956
  store i64 %add, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !4956
  br label %while.cond, !dbg !4957

while.cond:                                       ; preds = %if.end15, %entry
  %2 = load i32, i32* %pgno, align 4, !dbg !4958
  %3 = load i32, i32* %nr_pages.addr, align 4, !dbg !4959
  %cmp = icmp slt i32 %2, %3, !dbg !4960
  br i1 %cmp, label %while.body, label %while.end, !dbg !4957

while.body:                                       ; preds = %while.cond
  %call = call %struct.page* @balloon_retrieve(i1 zeroext true) #8, !dbg !4961
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !4963
  %4 = load %struct.page*, %struct.page** %page, align 8, !dbg !4964
  %tobool = icmp ne %struct.page* %4, null, !dbg !4964
  br i1 %tobool, label %if.then, label %if.else, !dbg !4966

if.then:                                          ; preds = %while.body
  %5 = load %struct.page*, %struct.page** %page, align 8, !dbg !4967
  %6 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !4969
  %7 = load i32, i32* %pgno, align 4, !dbg !4970
  %inc = add i32 %7, 1, !dbg !4970
  store i32 %inc, i32* %pgno, align 4, !dbg !4970
  %idxprom = sext i32 %7 to i64, !dbg !4969
  %arrayidx = getelementptr %struct.page*, %struct.page** %6, i64 %idxprom, !dbg !4969
  store %struct.page* %5, %struct.page** %arrayidx, align 8, !dbg !4971
  br label %do.body, !dbg !4972

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4973

do.end:                                           ; preds = %do.body
  %call2 = call i32 @xen_feature(i32 2) #8, !dbg !4975
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4975
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !4977

if.then4:                                         ; preds = %do.end
  %8 = load %struct.page*, %struct.page** %page, align 8, !dbg !4978
  %9 = load i64, i64* @vmemmap_base, align 8, !dbg !4978
  %10 = inttoptr i64 %9 to %struct.page*, !dbg !4978
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %8 to i64, !dbg !4978
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %10 to i64, !dbg !4978
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4978
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4978
  %call5 = call i32 @xen_alloc_p2m_entry(i64 %sub.ptr.div) #8, !dbg !4980
  store i32 %call5, i32* %ret, align 4, !dbg !4981
  %11 = load i32, i32* %ret, align 4, !dbg !4982
  %cmp6 = icmp slt i32 %11, 0, !dbg !4984
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !4985

if.then8:                                         ; preds = %if.then4
  br label %out_undo, !dbg !4986

if.end:                                           ; preds = %if.then4
  br label %if.end9, !dbg !4987

if.end9:                                          ; preds = %if.end, %do.end
  br label %if.end15, !dbg !4988

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %nr_pages.addr, align 4, !dbg !4989
  %13 = load i32, i32* %pgno, align 4, !dbg !4991
  %sub = sub i32 %12, %13, !dbg !4992
  %call10 = call i32 @add_ballooned_pages(i32 %sub) #8, !dbg !4993
  store i32 %call10, i32* %ret, align 4, !dbg !4994
  %14 = load i32, i32* %ret, align 4, !dbg !4995
  %cmp11 = icmp slt i32 %14, 0, !dbg !4997
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !4998

if.then13:                                        ; preds = %if.else
  br label %out_undo, !dbg !4999

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end9
  br label %while.cond, !dbg !4957, !llvm.loop !5000

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(%struct.mutex* @balloon_mutex) #8, !dbg !5002
  store i32 0, i32* %retval, align 4, !dbg !5003
  br label %return, !dbg !5003

out_undo:                                         ; preds = %if.then13, %if.then8
  call void @llvm.dbg.label(metadata !5004), !dbg !5005
  call void @mutex_unlock(%struct.mutex* @balloon_mutex) #8, !dbg !5006
  %15 = load i32, i32* %pgno, align 4, !dbg !5007
  %16 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !5008
  call void @free_xenballooned_pages(i32 %15, %struct.page** %16) #8, !dbg !5009
  %17 = load i32, i32* %nr_pages.addr, align 4, !dbg !5010
  %18 = load i32, i32* %pgno, align 4, !dbg !5011
  %sub16 = sub i32 %17, %18, !dbg !5012
  %conv17 = sext i32 %sub16 to i64, !dbg !5010
  %19 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !5013
  %sub18 = sub i64 %19, %conv17, !dbg !5013
  store i64 %sub18, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !5013
  %20 = load i32, i32* %ret, align 4, !dbg !5014
  store i32 %20, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

return:                                           ; preds = %out_undo, %while.end
  %21 = load i32, i32* %retval, align 4, !dbg !5016
  ret i32 %21, !dbg !5016
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @balloon_retrieve(i1 zeroext %require_lowmem) #0 !dbg !5017 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !5020, metadata !DIExpression()), !dbg !5022
  %retval = alloca %struct.page*, align 8
  %require_lowmem.addr = alloca i8, align 1
  %page = alloca %struct.page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.page*, align 8
  %frombool = zext i1 %require_lowmem to i8
  store i8 %frombool, i8* %require_lowmem.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %require_lowmem.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !5026, metadata !DIExpression()), !dbg !5027
  %call = call i32 @list_empty(%struct.list_head* @ballooned_pages) #8, !dbg !5028
  %tobool = icmp ne i32 %call, 0, !dbg !5028
  br i1 %tobool, label %if.then, label %if.end, !dbg !5030

if.then:                                          ; preds = %entry
  store %struct.page* null, %struct.page** %retval, align 8, !dbg !5031
  br label %return, !dbg !5031

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5032, metadata !DIExpression()), !dbg !5034
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ballooned_pages, i32 0, i32 0), align 8, !dbg !5034
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5034
  store i8* %1, i8** %__mptr, align 8, !dbg !5034
  br label %do.body, !dbg !5034

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5035

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5034
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5034
  %3 = bitcast i8* %add.ptr to %struct.page*, !dbg !5034
  store %struct.page* %3, %struct.page** %tmp, align 8, !dbg !5035
  %4 = load %struct.page*, %struct.page** %tmp, align 8, !dbg !5034
  store %struct.page* %4, %struct.page** %page, align 8, !dbg !5037
  %5 = load i8, i8* %require_lowmem.addr, align 1, !dbg !5038
  %tobool1 = trunc i8 %5 to i1, !dbg !5038
  br i1 %tobool1, label %land.lhs.true, label %if.end5, !dbg !5040

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.page*, %struct.page** %page, align 8, !dbg !5041
  %call2 = call i32 @PageHighMem(%struct.page* %6) #8, !dbg !5042
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5042
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5043

if.then4:                                         ; preds = %land.lhs.true
  store %struct.page* null, %struct.page** %retval, align 8, !dbg !5044
  br label %return, !dbg !5044

if.end5:                                          ; preds = %land.lhs.true, %do.end
  %7 = load %struct.page*, %struct.page** %page, align 8, !dbg !5045
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 1, !dbg !5046
  %9 = bitcast %union.anon* %8 to %struct.anon*, !dbg !5046
  %lru = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0, !dbg !5046
  call void @list_del(%struct.list_head* %lru) #8, !dbg !5047
  %10 = load %struct.page*, %struct.page** %page, align 8, !dbg !5048
  %call6 = call i32 @PageHighMem(%struct.page* %10) #8, !dbg !5050
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5050
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5051

if.then8:                                         ; preds = %if.end5
  %11 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5052
  %dec = add i64 %11, -1, !dbg !5052
  store i64 %dec, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5052
  br label %if.end10, !dbg !5053

if.else:                                          ; preds = %if.end5
  %12 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5054
  %dec9 = add i64 %12, -1, !dbg !5054
  store i64 %dec9, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5054
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %13 = load %struct.page*, %struct.page** %page, align 8, !dbg !5055
  store %struct.page* %13, %struct.page** %page.addr.i, align 8
  %14 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !5022
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 2, !dbg !5022
  %page_type.i = bitcast %union.anon.65* %15 to i32*, !dbg !5022
  %16 = load i32, i32* %page_type.i, align 16, !dbg !5022
  %or.i = or i32 %16, 256, !dbg !5022
  store i32 %or.i, i32* %page_type.i, align 16, !dbg !5022
  %17 = load %struct.page*, %struct.page** %page, align 8, !dbg !5056
  store %struct.page* %17, %struct.page** %retval, align 8, !dbg !5057
  br label %return, !dbg !5057

return:                                           ; preds = %if.end10, %if.then4, %if.then
  %18 = load %struct.page*, %struct.page** %retval, align 8, !dbg !5058
  ret %struct.page* %18, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !5059 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5063
  %idxprom = sext i32 %0 to i64, !dbg !5064
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !5064
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5064
  %conv = zext i8 %1 to i32, !dbg !5064
  ret i32 %conv, !dbg !5065
}

; Function Attrs: noredzone
declare dso_local i32 @xen_alloc_p2m_entry(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_ballooned_pages(i32 %nr_pages) #0 !dbg !5066 {
entry:
  %retval = alloca i32, align 4
  %nr_pages.addr = alloca i32, align 4
  %st = alloca i32, align 4
  %rc = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret7 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store i32 %nr_pages, i32* %nr_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_pages.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i32* %st, metadata !5069, metadata !DIExpression()), !dbg !5070
  %0 = load i32, i32* @xen_hotplug_unpopulated, align 4, !dbg !5071
  %tobool = icmp ne i32 %0, 0, !dbg !5071
  br i1 %tobool, label %if.then, label %if.end19, !dbg !5073

if.then:                                          ; preds = %entry
  %call = call i32 @reserve_additional_memory() #8, !dbg !5074
  store i32 %call, i32* %st, align 4, !dbg !5076
  %1 = load i32, i32* %st, align 4, !dbg !5077
  %cmp = icmp ne i32 %1, 3, !dbg !5079
  br i1 %cmp, label %if.then1, label %if.end18, !dbg !5080

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5081, metadata !DIExpression()), !dbg !5083
  call void @mutex_unlock(%struct.mutex* @balloon_mutex) #8, !dbg !5084
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5085, metadata !DIExpression()), !dbg !5087
  store i32 0, i32* %__ret, align 4, !dbg !5087
  br label %do.body, !dbg !5087

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5088

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5090

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !5088

do.end3:                                          ; preds = %do.end
  %call4 = call i32 @list_empty(%struct.list_head* @ballooned_pages) #8, !dbg !5092
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5092
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !5087

if.then6:                                         ; preds = %do.end3
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5094, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i64* %__ret7, metadata !5097, metadata !DIExpression()), !dbg !5096
  store i64 0, i64* %__ret7, align 8, !dbg !5096
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #8, !dbg !5096
  br label %for.cond, !dbg !5096

for.cond:                                         ; preds = %if.end14, %if.then6
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5098, metadata !DIExpression()), !dbg !5102
  %call8 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @balloon_wq, %struct.wait_queue_entry* %__wq_entry, i32 1) #8, !dbg !5102
  store i64 %call8, i64* %__int, align 8, !dbg !5102
  %call9 = call i32 @list_empty(%struct.list_head* @ballooned_pages) #8, !dbg !5103
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5103
  br i1 %tobool10, label %if.end, label %if.then11, !dbg !5102

if.then11:                                        ; preds = %for.cond
  br label %for.end, !dbg !5103

if.end:                                           ; preds = %for.cond
  %2 = load i64, i64* %__int, align 8, !dbg !5105
  %tobool12 = icmp ne i64 %2, 0, !dbg !5105
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5102

if.then13:                                        ; preds = %if.end
  %3 = load i64, i64* %__int, align 8, !dbg !5107
  store i64 %3, i64* %__ret7, align 8, !dbg !5107
  br label %__out, !dbg !5107

if.end14:                                         ; preds = %if.end
  call void @schedule() #8, !dbg !5102
  br label %for.cond, !dbg !5109, !llvm.loop !5110

for.end:                                          ; preds = %if.then11
  call void @finish_wait(%struct.wait_queue_head* @balloon_wq, %struct.wait_queue_entry* %__wq_entry) #8, !dbg !5096
  br label %__out, !dbg !5096

__out:                                            ; preds = %for.end, %if.then13
  call void @llvm.dbg.label(metadata !5112), !dbg !5096
  %4 = load i64, i64* %__ret7, align 8, !dbg !5096
  store i64 %4, i64* %tmp, align 8, !dbg !5096
  %5 = load i64, i64* %tmp, align 8, !dbg !5096
  %conv = trunc i64 %5 to i32, !dbg !5092
  store i32 %conv, i32* %__ret, align 4, !dbg !5092
  br label %if.end15, !dbg !5092

if.end15:                                         ; preds = %__out, %do.end3
  %6 = load i32, i32* %__ret, align 4, !dbg !5087
  store i32 %6, i32* %tmp16, align 4, !dbg !5092
  %7 = load i32, i32* %tmp16, align 4, !dbg !5087
  store i32 %7, i32* %rc, align 4, !dbg !5113
  call void @mutex_lock(%struct.mutex* @balloon_mutex) #8, !dbg !5114
  %8 = load i32, i32* %rc, align 4, !dbg !5115
  %tobool17 = icmp ne i32 %8, 0, !dbg !5115
  %9 = zext i1 %tobool17 to i64, !dbg !5115
  %cond = select i1 %tobool17, i32 -12, i32 0, !dbg !5115
  store i32 %cond, i32* %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end18:                                         ; preds = %if.then
  br label %if.end19, !dbg !5117

if.end19:                                         ; preds = %if.end18, %entry
  %call20 = call i64 @si_mem_available() #8, !dbg !5118
  %10 = load i32, i32* %nr_pages.addr, align 4, !dbg !5120
  %conv21 = sext i32 %10 to i64, !dbg !5120
  %cmp22 = icmp slt i64 %call20, %conv21, !dbg !5121
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5122

if.then24:                                        ; preds = %if.end19
  store i32 -12, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end25:                                         ; preds = %if.end19
  %11 = load i32, i32* %nr_pages.addr, align 4, !dbg !5124
  %conv26 = sext i32 %11 to i64, !dbg !5124
  %call27 = call i32 @decrease_reservation(i64 %conv26, i32 1051840) #8, !dbg !5125
  store i32 %call27, i32* %st, align 4, !dbg !5126
  %12 = load i32, i32* %st, align 4, !dbg !5127
  %cmp28 = icmp ne i32 %12, 0, !dbg !5129
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !5130

if.then30:                                        ; preds = %if.end25
  store i32 -12, i32* %retval, align 4, !dbg !5131
  br label %return, !dbg !5131

if.end31:                                         ; preds = %if.end25
  store i32 0, i32* %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

return:                                           ; preds = %if.end31, %if.then30, %if.then24, %if.end15
  %13 = load i32, i32* %retval, align 4, !dbg !5133
  ret i32 %13, !dbg !5133
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @free_xenballooned_pages(i32 %nr_pages, %struct.page** %pages) #0 !dbg !5134 {
entry:
  %nr_pages.addr = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  %i = alloca i32, align 4
  store i32 %nr_pages, i32* %nr_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_pages.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5141, metadata !DIExpression()), !dbg !5142
  call void @mutex_lock(%struct.mutex* @balloon_mutex) #8, !dbg !5143
  store i32 0, i32* %i, align 4, !dbg !5144
  br label %for.cond, !dbg !5146

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5147
  %1 = load i32, i32* %nr_pages.addr, align 4, !dbg !5149
  %cmp = icmp slt i32 %0, %1, !dbg !5150
  br i1 %cmp, label %for.body, label %for.end, !dbg !5151

for.body:                                         ; preds = %for.cond
  %2 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !5152
  %3 = load i32, i32* %i, align 4, !dbg !5155
  %idxprom = sext i32 %3 to i64, !dbg !5152
  %arrayidx = getelementptr %struct.page*, %struct.page** %2, i64 %idxprom, !dbg !5152
  %4 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !5152
  %tobool = icmp ne %struct.page* %4, null, !dbg !5152
  br i1 %tobool, label %if.then, label %if.end, !dbg !5156

if.then:                                          ; preds = %for.body
  %5 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !5157
  %6 = load i32, i32* %i, align 4, !dbg !5158
  %idxprom1 = sext i32 %6 to i64, !dbg !5157
  %arrayidx2 = getelementptr %struct.page*, %struct.page** %5, i64 %idxprom1, !dbg !5157
  %7 = load %struct.page*, %struct.page** %arrayidx2, align 8, !dbg !5157
  call void @balloon_append(%struct.page* %7) #8, !dbg !5159
  br label %if.end, !dbg !5159

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5160

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5161
  %inc = add i32 %8, 1, !dbg !5161
  store i32 %inc, i32* %i, align 4, !dbg !5161
  br label %for.cond, !dbg !5162, !llvm.loop !5163

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %nr_pages.addr, align 4, !dbg !5165
  %conv = sext i32 %9 to i64, !dbg !5165
  %10 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !5166
  %sub = sub i64 %10, %conv, !dbg !5166
  store i64 %sub, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !5166
  %call = call i64 @current_credit() #8, !dbg !5167
  %tobool3 = icmp ne i64 %call, 0, !dbg !5167
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5169

if.then4:                                         ; preds = %for.end
  %call5 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* @balloon_worker, i64 0) #8, !dbg !5170
  br label %if.end6, !dbg !5170

if.end6:                                          ; preds = %if.then4, %for.end
  call void @mutex_unlock(%struct.mutex* @balloon_mutex) #8, !dbg !5171
  ret void, !dbg !5172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @balloon_append(%struct.page* %page) #0 !dbg !5173 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !5174, metadata !DIExpression()), !dbg !5176
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5180
  store %struct.page* %0, %struct.page** %page.addr.i, align 8
  %1 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !5176
  %2 = getelementptr inbounds %struct.page, %struct.page* %1, i32 0, i32 2, !dbg !5176
  %page_type.i = bitcast %union.anon.65* %2 to i32*, !dbg !5176
  %3 = load i32, i32* %page_type.i, align 16, !dbg !5176
  %and.i = and i32 %3, -257, !dbg !5176
  store i32 %and.i, i32* %page_type.i, align 16, !dbg !5176
  %4 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5181
  %call = call i32 @PageHighMem(%struct.page* %4) #8, !dbg !5183
  %tobool = icmp ne i32 %call, 0, !dbg !5183
  br i1 %tobool, label %if.then, label %if.else, !dbg !5184

if.then:                                          ; preds = %entry
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5185
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 1, !dbg !5187
  %7 = bitcast %union.anon* %6 to %struct.anon*, !dbg !5187
  %lru = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0, !dbg !5187
  call void @list_add_tail(%struct.list_head* %lru, %struct.list_head* @ballooned_pages) #8, !dbg !5188
  %8 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5189
  %inc = add i64 %8, 1, !dbg !5189
  store i64 %inc, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5189
  br label %if.end, !dbg !5190

if.else:                                          ; preds = %entry
  %9 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5191
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1, !dbg !5193
  %11 = bitcast %union.anon* %10 to %struct.anon*, !dbg !5193
  %lru1 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0, !dbg !5193
  call void @list_add(%struct.list_head* %lru1, %struct.list_head* @ballooned_pages) #8, !dbg !5194
  %12 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5195
  %inc2 = add i64 %12, 1, !dbg !5195
  store i64 %inc2, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__wake_up(%struct.wait_queue_head* @balloon_wq, i32 3, i32 1, i8* null) #8, !dbg !5196
  ret void, !dbg !5197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @current_credit() #0 !dbg !5198 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 1), align 8, !dbg !5201
  %1 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5202
  %sub = sub i64 %0, %1, !dbg !5203
  ret i64 %sub, !dbg !5204
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @balloon_init() #3 section ".init.text" !dbg !5205 {
entry:
  %retval = alloca i32, align 4
  %__UNIQUE_ID___x308 = alloca i64, align 8
  %__UNIQUE_ID___y309 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %i = alloca i32, align 4
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5208
  %cmp = icmp ne i32 %0, 0, !dbg !5208
  br i1 %cmp, label %if.end, label %if.then, !dbg !5210

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5211
  br label %return, !dbg !5211

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5212
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5213
  %cmp1 = icmp eq i32 %1, 1, !dbg !5213
  br i1 %cmp1, label %cond.true, label %cond.false4, !dbg !5213

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x308, metadata !5214, metadata !DIExpression()), !dbg !5216
  %2 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5216
  %nr_pages = getelementptr inbounds %struct.start_info, %struct.start_info* %2, i32 0, i32 1, !dbg !5216
  %3 = load i64, i64* %nr_pages, align 8, !dbg !5216
  %4 = load i64, i64* @xen_released_pages, align 8, !dbg !5216
  %sub = sub i64 %3, %4, !dbg !5216
  store i64 %sub, i64* %__UNIQUE_ID___x308, align 8, !dbg !5216
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y309, metadata !5217, metadata !DIExpression()), !dbg !5216
  %5 = load i64, i64* @max_pfn, align 8, !dbg !5216
  store i64 %5, i64* %__UNIQUE_ID___y309, align 8, !dbg !5216
  %6 = load i64, i64* %__UNIQUE_ID___x308, align 8, !dbg !5216
  %7 = load i64, i64* %__UNIQUE_ID___y309, align 8, !dbg !5216
  %cmp2 = icmp ult i64 %6, %7, !dbg !5216
  br i1 %cmp2, label %cond.true3, label %cond.false, !dbg !5216

cond.true3:                                       ; preds = %cond.true
  %8 = load i64, i64* %__UNIQUE_ID___x308, align 8, !dbg !5216
  br label %cond.end, !dbg !5216

cond.false:                                       ; preds = %cond.true
  %9 = load i64, i64* %__UNIQUE_ID___y309, align 8, !dbg !5216
  br label %cond.end, !dbg !5216

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi i64 [ %8, %cond.true3 ], [ %9, %cond.false ], !dbg !5216
  store i64 %cond, i64* %tmp, align 8, !dbg !5216
  %10 = load i64, i64* %tmp, align 8, !dbg !5216
  br label %cond.end6, !dbg !5213

cond.false4:                                      ; preds = %if.end
  %call5 = call i64 @get_num_physpages() #8, !dbg !5218
  br label %cond.end6, !dbg !5213

cond.end6:                                        ; preds = %cond.false4, %cond.end
  %cond7 = phi i64 [ %10, %cond.end ], [ %call5, %cond.false4 ], !dbg !5213
  store i64 %cond7, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5219
  %11 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5220
  store i64 %11, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 1), align 8, !dbg !5221
  store i64 0, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5222
  store i64 0, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5223
  %12 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5224
  store i64 %12, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 5), align 8, !dbg !5225
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5226
  store i64 32, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 7), align 8, !dbg !5227
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5228
  store i64 4, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 9), align 8, !dbg !5229
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5230, metadata !DIExpression()), !dbg !5232
  store i32 0, i32* %i, align 4, !dbg !5233
  br label %for.cond, !dbg !5235

for.cond:                                         ; preds = %for.inc, %cond.end6
  %13 = load i32, i32* %i, align 4, !dbg !5236
  %cmp8 = icmp slt i32 %13, 128, !dbg !5238
  br i1 %cmp8, label %for.body, label %for.end, !dbg !5239

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !5240
  %idxprom = sext i32 %14 to i64, !dbg !5242
  %arrayidx = getelementptr [128 x %struct.xen_memory_region], [128 x %struct.xen_memory_region]* @xen_extra_mem, i64 0, i64 %idxprom, !dbg !5242
  %n_pfns = getelementptr inbounds %struct.xen_memory_region, %struct.xen_memory_region* %arrayidx, i32 0, i32 1, !dbg !5243
  %15 = load i64, i64* %n_pfns, align 8, !dbg !5243
  %tobool = icmp ne i64 %15, 0, !dbg !5242
  br i1 %tobool, label %if.then9, label %if.end15, !dbg !5244

if.then9:                                         ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !5245
  %idxprom10 = sext i32 %16 to i64, !dbg !5246
  %arrayidx11 = getelementptr [128 x %struct.xen_memory_region], [128 x %struct.xen_memory_region]* @xen_extra_mem, i64 0, i64 %idxprom10, !dbg !5246
  %start_pfn = getelementptr inbounds %struct.xen_memory_region, %struct.xen_memory_region* %arrayidx11, i32 0, i32 0, !dbg !5247
  %17 = load i64, i64* %start_pfn, align 16, !dbg !5247
  %18 = load i32, i32* %i, align 4, !dbg !5248
  %idxprom12 = sext i32 %18 to i64, !dbg !5249
  %arrayidx13 = getelementptr [128 x %struct.xen_memory_region], [128 x %struct.xen_memory_region]* @xen_extra_mem, i64 0, i64 %idxprom12, !dbg !5249
  %n_pfns14 = getelementptr inbounds %struct.xen_memory_region, %struct.xen_memory_region* %arrayidx13, i32 0, i32 1, !dbg !5250
  %19 = load i64, i64* %n_pfns14, align 8, !dbg !5250
  call void @balloon_add_region(i64 %17, i64 %19) #9, !dbg !5251
  br label %if.end15, !dbg !5251

if.end15:                                         ; preds = %if.then9, %for.body
  br label %for.inc, !dbg !5243

for.inc:                                          ; preds = %if.end15
  %20 = load i32, i32* %i, align 4, !dbg !5252
  %inc = add i32 %20, 1, !dbg !5252
  store i32 %inc, i32* %i, align 4, !dbg !5252
  br label %for.cond, !dbg !5253, !llvm.loop !5254

for.end:                                          ; preds = %for.cond
  call void @xen_balloon_init() #8, !dbg !5256
  store i32 0, i32* %retval, align 4, !dbg !5257
  br label %return, !dbg !5257

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5258
  ret i32 %21, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !5259 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5268
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5269
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5270
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !5271
  ret i1 %call, !dbg !5272
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @balloon_process(%struct.work_struct* %work) #0 !dbg !5273 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %state = alloca i32, align 4
  %credit = alloca i64, align 8
  %n_pages = alloca i64, align 8
  %__UNIQUE_ID___x303 = alloca i64, align 8
  %__UNIQUE_ID___y304 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i32 0, i32* %state, align 4, !dbg !5277
  call void @llvm.dbg.declare(metadata i64* %credit, metadata !5278, metadata !DIExpression()), !dbg !5279
  br label %do.body, !dbg !5280

do.body:                                          ; preds = %land.end, %entry
  call void @mutex_lock(%struct.mutex* @balloon_mutex) #8, !dbg !5281
  %call = call i64 @current_credit() #8, !dbg !5283
  store i64 %call, i64* %credit, align 8, !dbg !5284
  %0 = load i64, i64* %credit, align 8, !dbg !5285
  %cmp = icmp sgt i64 %0, 0, !dbg !5287
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5288

if.then:                                          ; preds = %do.body
  %call1 = call zeroext i1 @balloon_is_inflated() #8, !dbg !5289
  br i1 %call1, label %if.then2, label %if.else, !dbg !5292

if.then2:                                         ; preds = %if.then
  %1 = load i64, i64* %credit, align 8, !dbg !5293
  %call3 = call i32 @increase_reservation(i64 %1) #8, !dbg !5294
  store i32 %call3, i32* %state, align 4, !dbg !5295
  br label %if.end, !dbg !5296

if.else:                                          ; preds = %if.then
  %call4 = call i32 @reserve_additional_memory() #8, !dbg !5297
  store i32 %call4, i32* %state, align 4, !dbg !5298
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !5299

if.end5:                                          ; preds = %if.end, %do.body
  %2 = load i64, i64* %credit, align 8, !dbg !5300
  %cmp6 = icmp slt i64 %2, 0, !dbg !5302
  br i1 %cmp6, label %if.then7, label %if.end18, !dbg !5303

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i64* %n_pages, metadata !5304, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x303, metadata !5307, metadata !DIExpression()), !dbg !5309
  %3 = load i64, i64* %credit, align 8, !dbg !5309
  %sub = sub i64 0, %3, !dbg !5309
  store i64 %sub, i64* %__UNIQUE_ID___x303, align 8, !dbg !5309
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y304, metadata !5310, metadata !DIExpression()), !dbg !5309
  %call8 = call i64 @si_mem_available() #8, !dbg !5309
  store i64 %call8, i64* %__UNIQUE_ID___y304, align 8, !dbg !5309
  %4 = load i64, i64* %__UNIQUE_ID___x303, align 8, !dbg !5309
  %5 = load i64, i64* %__UNIQUE_ID___y304, align 8, !dbg !5309
  %cmp9 = icmp slt i64 %4, %5, !dbg !5309
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !5309

cond.true:                                        ; preds = %if.then7
  %6 = load i64, i64* %__UNIQUE_ID___x303, align 8, !dbg !5309
  br label %cond.end, !dbg !5309

cond.false:                                       ; preds = %if.then7
  %7 = load i64, i64* %__UNIQUE_ID___y304, align 8, !dbg !5309
  br label %cond.end, !dbg !5309

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5309
  store i64 %cond, i64* %tmp, align 8, !dbg !5309
  %8 = load i64, i64* %tmp, align 8, !dbg !5309
  store i64 %8, i64* %n_pages, align 8, !dbg !5311
  %9 = load i64, i64* %n_pages, align 8, !dbg !5312
  %call10 = call i32 @decrease_reservation(i64 %9, i32 1649858) #8, !dbg !5313
  store i32 %call10, i32* %state, align 4, !dbg !5314
  %10 = load i32, i32* %state, align 4, !dbg !5315
  %cmp11 = icmp eq i32 %10, 0, !dbg !5317
  br i1 %cmp11, label %land.lhs.true, label %if.end17, !dbg !5318

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i64, i64* %n_pages, align 8, !dbg !5319
  %12 = load i64, i64* %credit, align 8, !dbg !5320
  %sub12 = sub i64 0, %12, !dbg !5321
  %cmp13 = icmp ne i64 %11, %sub12, !dbg !5322
  br i1 %cmp13, label %land.lhs.true14, label %if.end17, !dbg !5323

land.lhs.true14:                                  ; preds = %land.lhs.true
  %13 = load i64, i64* %n_pages, align 8, !dbg !5324
  %14 = load i64, i64* @totalreserve_pages, align 8, !dbg !5325
  %cmp15 = icmp ult i64 %13, %14, !dbg !5326
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5327

if.then16:                                        ; preds = %land.lhs.true14
  store i32 2, i32* %state, align 4, !dbg !5328
  br label %if.end17, !dbg !5329

if.end17:                                         ; preds = %if.then16, %land.lhs.true14, %land.lhs.true, %cond.end
  br label %if.end18, !dbg !5330

if.end18:                                         ; preds = %if.end17, %if.end5
  %15 = load i32, i32* %state, align 4, !dbg !5331
  %call19 = call i32 @update_schedule(i32 %15) #8, !dbg !5332
  store i32 %call19, i32* %state, align 4, !dbg !5333
  call void @mutex_unlock(%struct.mutex* @balloon_mutex) #8, !dbg !5334
  call void @___might_sleep(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 531, i32 0) #8, !dbg !5335
  %call21 = call i32 @_cond_resched() #8, !dbg !5335
  store i32 %call21, i32* %tmp20, align 4, !dbg !5335
  %16 = load i32, i32* %tmp20, align 4, !dbg !5335
  br label %do.cond, !dbg !5337

do.cond:                                          ; preds = %if.end18
  %17 = load i64, i64* %credit, align 8, !dbg !5338
  %tobool = icmp ne i64 %17, 0, !dbg !5338
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5339

land.rhs:                                         ; preds = %do.cond
  %18 = load i32, i32* %state, align 4, !dbg !5340
  %cmp22 = icmp eq i32 %18, 0, !dbg !5341
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %19 = phi i1 [ false, %do.cond ], [ %cmp22, %land.rhs ], !dbg !5342
  br i1 %19, label %do.body, label %do.end, !dbg !5337, !llvm.loop !5343

do.end:                                           ; preds = %land.end
  %20 = load i32, i32* %state, align 4, !dbg !5345
  %cmp23 = icmp eq i32 %20, 2, !dbg !5347
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !5348

if.then24:                                        ; preds = %do.end
  %21 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5349
  %mul = mul i64 %21, 250, !dbg !5350
  %call25 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* @balloon_worker, i64 %mul) #8, !dbg !5351
  br label %if.end26, !dbg !5351

if.end26:                                         ; preds = %if.then24, %do.end
  ret void, !dbg !5352
}

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @balloon_is_inflated() #0 !dbg !5353 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 3), align 8, !dbg !5354
  %tobool = icmp ne i64 %0, 0, !dbg !5355
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5356

lor.rhs:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 4), align 8, !dbg !5357
  %tobool1 = icmp ne i64 %1, 0, !dbg !5356
  br label %lor.end, !dbg !5356

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %2, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @increase_reservation(i64 %nr_pages) #0 !dbg !5359 {
entry:
  %retval = alloca i32, align 4
  %nr_pages.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %i = alloca i64, align 8
  %page = alloca %struct.page*, align 8
  %head__ = alloca %struct.list_head*, align 8
  %pos__ = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  %tmp1 = alloca %struct.page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp5 = alloca %struct.page*, align 8
  store i64 %nr_pages, i64* %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr_pages.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5364, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata i64* %i, metadata !5366, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load i64, i64* %nr_pages.addr, align 8, !dbg !5370
  %cmp = icmp ugt i64 %0, 512, !dbg !5372
  br i1 %cmp, label %if.then, label %if.end, !dbg !5373

if.then:                                          ; preds = %entry
  store i64 512, i64* %nr_pages.addr, align 8, !dbg !5374
  br label %if.end, !dbg !5375

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata %struct.list_head** %head__, metadata !5376, metadata !DIExpression()), !dbg !5378
  store %struct.list_head* @ballooned_pages, %struct.list_head** %head__, align 8, !dbg !5378
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos__, metadata !5379, metadata !DIExpression()), !dbg !5378
  br label %do.body, !dbg !5380

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5382

do.end:                                           ; preds = %do.body
  %1 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !5380
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5380
  %2 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5380
  store %struct.list_head* %2, %struct.list_head** %tmp, align 8, !dbg !5382
  %3 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5380
  store %struct.list_head* %3, %struct.list_head** %pos__, align 8, !dbg !5378
  %4 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !5378
  %5 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !5378
  %cmp2 = icmp ne %struct.list_head* %4, %5, !dbg !5378
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5378

cond.true:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5384, metadata !DIExpression()), !dbg !5386
  %6 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !5386
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !5386
  store i8* %7, i8** %__mptr, align 8, !dbg !5386
  br label %do.body3, !dbg !5386

do.body3:                                         ; preds = %cond.true
  br label %do.end4, !dbg !5387

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr, align 8, !dbg !5386
  %add.ptr = getelementptr i8, i8* %8, i64 -8, !dbg !5386
  %9 = bitcast i8* %add.ptr to %struct.page*, !dbg !5386
  store %struct.page* %9, %struct.page** %tmp5, align 8, !dbg !5387
  %10 = load %struct.page*, %struct.page** %tmp5, align 8, !dbg !5386
  br label %cond.end, !dbg !5378

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5378

cond.end:                                         ; preds = %cond.false, %do.end4
  %cond = phi %struct.page* [ %10, %do.end4 ], [ null, %cond.false ], !dbg !5378
  store %struct.page* %cond, %struct.page** %tmp1, align 8, !dbg !5378
  %11 = load %struct.page*, %struct.page** %tmp1, align 8, !dbg !5378
  store %struct.page* %11, %struct.page** %page, align 8, !dbg !5389
  store i64 0, i64* %i, align 8, !dbg !5390
  br label %for.cond, !dbg !5392

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i64, i64* %i, align 8, !dbg !5393
  %13 = load i64, i64* %nr_pages.addr, align 8, !dbg !5395
  %cmp6 = icmp ult i64 %12, %13, !dbg !5396
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5397

for.body:                                         ; preds = %for.cond
  %14 = load %struct.page*, %struct.page** %page, align 8, !dbg !5398
  %tobool = icmp ne %struct.page* %14, null, !dbg !5398
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !5401

if.then7:                                         ; preds = %for.body
  %15 = load i64, i64* %i, align 8, !dbg !5402
  store i64 %15, i64* %nr_pages.addr, align 8, !dbg !5404
  br label %for.end, !dbg !5405

if.end8:                                          ; preds = %for.body
  %16 = load %struct.page*, %struct.page** %page, align 8, !dbg !5406
  %17 = load i64, i64* @vmemmap_base, align 8, !dbg !5406
  %18 = inttoptr i64 %17 to %struct.page*, !dbg !5406
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %16 to i64, !dbg !5406
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %18 to i64, !dbg !5406
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5406
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5406
  %shl = shl i64 %sub.ptr.div, 0, !dbg !5406
  %19 = load i64, i64* %i, align 8, !dbg !5407
  %arrayidx = getelementptr [512 x i64], [512 x i64]* @frame_list, i64 0, i64 %19, !dbg !5408
  store i64 %shl, i64* %arrayidx, align 8, !dbg !5409
  %20 = load %struct.page*, %struct.page** %page, align 8, !dbg !5410
  %call = call %struct.page* @balloon_next_page(%struct.page* %20) #8, !dbg !5411
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !5412
  br label %for.inc, !dbg !5413

for.inc:                                          ; preds = %if.end8
  %21 = load i64, i64* %i, align 8, !dbg !5414
  %inc = add i64 %21, 1, !dbg !5414
  store i64 %inc, i64* %i, align 8, !dbg !5414
  br label %for.cond, !dbg !5415, !llvm.loop !5416

for.end:                                          ; preds = %if.then7, %for.cond
  %22 = load i64, i64* %nr_pages.addr, align 8, !dbg !5418
  %conv = trunc i64 %22 to i32, !dbg !5418
  %call9 = call i32 @xenmem_reservation_increase(i32 %conv, i64* getelementptr inbounds ([512 x i64], [512 x i64]* @frame_list, i64 0, i64 0)) #8, !dbg !5419
  store i32 %call9, i32* %rc, align 4, !dbg !5420
  %23 = load i32, i32* %rc, align 4, !dbg !5421
  %cmp10 = icmp sle i32 %23, 0, !dbg !5423
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5424

if.then12:                                        ; preds = %for.end
  store i32 2, i32* %retval, align 4, !dbg !5425
  br label %return, !dbg !5425

if.end13:                                         ; preds = %for.end
  store i64 0, i64* %i, align 8, !dbg !5426
  br label %for.cond14, !dbg !5428

for.cond14:                                       ; preds = %for.inc38, %if.end13
  %24 = load i64, i64* %i, align 8, !dbg !5429
  %25 = load i32, i32* %rc, align 4, !dbg !5431
  %conv15 = sext i32 %25 to i64, !dbg !5431
  %cmp16 = icmp ult i64 %24, %conv15, !dbg !5432
  br i1 %cmp16, label %for.body18, label %for.end40, !dbg !5433

for.body18:                                       ; preds = %for.cond14
  %call19 = call %struct.page* @balloon_retrieve(i1 zeroext false) #8, !dbg !5434
  store %struct.page* %call19, %struct.page** %page, align 8, !dbg !5436
  br label %do.body20, !dbg !5437

do.body20:                                        ; preds = %for.body18
  %26 = load %struct.page*, %struct.page** %page, align 8, !dbg !5438
  %cmp21 = icmp eq %struct.page* %26, null, !dbg !5438
  %lnot = xor i1 %cmp21, true, !dbg !5438
  %lnot23 = xor i1 %lnot, true, !dbg !5438
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5438
  %conv24 = sext i32 %lnot.ext to i64, !dbg !5438
  %tobool25 = icmp ne i64 %conv24, 0, !dbg !5438
  br i1 %tobool25, label %if.then26, label %if.end35, !dbg !5441

if.then26:                                        ; preds = %do.body20
  br label %do.body27, !dbg !5438

do.body27:                                        ; preds = %if.then26
  br label %do.body28, !dbg !5442

do.body28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5444

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !5442

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 423, i32 0, i64 12) #6, !dbg !5446, !srcloc !5448
  br label %do.end31, !dbg !5446

do.end31:                                         ; preds = %do.body30
  br label %do.body32, !dbg !5442

do.body32:                                        ; preds = %do.end31
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 298) #6, !dbg !5449, !srcloc !5452
  unreachable, !dbg !5453

do.end33:                                         ; No predecessors!
  br label %do.end34, !dbg !5442

do.end34:                                         ; preds = %do.end33
  br label %if.end35, !dbg !5442

if.end35:                                         ; preds = %do.end34, %do.body20
  br label %do.end36, !dbg !5441

do.end36:                                         ; preds = %if.end35
  %27 = load i64, i64* %i, align 8, !dbg !5454
  %arrayidx37 = getelementptr [512 x i64], [512 x i64]* @frame_list, i64 0, i64 %27, !dbg !5455
  call void @xenmem_reservation_va_mapping_update(i64 1, %struct.page** %page, i64* %arrayidx37) #8, !dbg !5456
  %28 = load %struct.page*, %struct.page** %page, align 8, !dbg !5457
  call void @free_reserved_page(%struct.page* %28) #8, !dbg !5458
  br label %for.inc38, !dbg !5459

for.inc38:                                        ; preds = %do.end36
  %29 = load i64, i64* %i, align 8, !dbg !5460
  %inc39 = add i64 %29, 1, !dbg !5460
  store i64 %inc39, i64* %i, align 8, !dbg !5460
  br label %for.cond14, !dbg !5461, !llvm.loop !5462

for.end40:                                        ; preds = %for.cond14
  %30 = load i32, i32* %rc, align 4, !dbg !5464
  %conv41 = sext i32 %30 to i64, !dbg !5464
  %31 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5465
  %add = add i64 %31, %conv41, !dbg !5465
  store i64 %add, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5465
  store i32 0, i32* %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

return:                                           ; preds = %for.end40, %if.then12
  %32 = load i32, i32* %retval, align 4, !dbg !5467
  ret i32 %32, !dbg !5467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reserve_additional_memory() #0 !dbg !5468 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5471
  %1 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 2), align 8, !dbg !5472
  %add = add i64 %0, %1, !dbg !5473
  store i64 %add, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 1), align 8, !dbg !5474
  ret i32 3, !dbg !5475
}

; Function Attrs: noredzone
declare dso_local i64 @si_mem_available() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @decrease_reservation(i64 %nr_pages, i32 %gfp) #0 !dbg !5476 {
entry:
  %nr_pages.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %state = alloca i32, align 4
  %i = alloca i64, align 8
  %page = alloca %struct.page*, align 8
  %tmp = alloca %struct.page*, align 8
  %ret = alloca i32, align 4
  %pages = alloca %struct.list_head, align 8
  %__mptr = alloca i8*, align 8
  %tmp8 = alloca %struct.page*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.page*, align 8
  %__mptr24 = alloca i8*, align 8
  %tmp29 = alloca %struct.page*, align 8
  store i64 %nr_pages, i64* %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr_pages.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i32 0, i32* %state, align 4, !dbg !5484
  call void @llvm.dbg.declare(metadata i64* %i, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata %struct.page** %tmp, metadata !5489, metadata !DIExpression()), !dbg !5490
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata %struct.list_head* %pages, metadata !5493, metadata !DIExpression()), !dbg !5494
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i32 0, i32 0, !dbg !5494
  store %struct.list_head* %pages, %struct.list_head** %next, align 8, !dbg !5494
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i32 0, i32 1, !dbg !5494
  store %struct.list_head* %pages, %struct.list_head** %prev, align 8, !dbg !5494
  %0 = load i64, i64* %nr_pages.addr, align 8, !dbg !5495
  %cmp = icmp ugt i64 %0, 512, !dbg !5497
  br i1 %cmp, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %entry
  store i64 512, i64* %nr_pages.addr, align 8, !dbg !5499
  br label %if.end, !dbg !5500

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8, !dbg !5501
  br label %for.cond, !dbg !5503

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8, !dbg !5504
  %2 = load i64, i64* %nr_pages.addr, align 8, !dbg !5506
  %cmp1 = icmp ult i64 %1, %2, !dbg !5507
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5508

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !5509
  %call = call %struct.page* @alloc_pages(i32 %3, i32 0) #8, !dbg !5509
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !5511
  %4 = load %struct.page*, %struct.page** %page, align 8, !dbg !5512
  %cmp2 = icmp eq %struct.page* %4, null, !dbg !5514
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5515

if.then3:                                         ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !5516
  store i64 %5, i64* %nr_pages.addr, align 8, !dbg !5518
  store i32 2, i32* %state, align 4, !dbg !5519
  br label %for.end, !dbg !5520

if.end4:                                          ; preds = %for.body
  %6 = load %struct.page*, %struct.page** %page, align 8, !dbg !5521
  call void @adjust_managed_page_count(%struct.page* %6, i64 -1) #8, !dbg !5522
  %7 = load %struct.page*, %struct.page** %page, align 8, !dbg !5523
  call void @xenmem_reservation_scrub_page(%struct.page* %7) #8, !dbg !5524
  %8 = load %struct.page*, %struct.page** %page, align 8, !dbg !5525
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1, !dbg !5526
  %10 = bitcast %union.anon* %9 to %struct.anon*, !dbg !5526
  %lru = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !5526
  call void @list_add(%struct.list_head* %lru, %struct.list_head* %pages) #8, !dbg !5527
  br label %for.inc, !dbg !5528

for.inc:                                          ; preds = %if.end4
  %11 = load i64, i64* %i, align 8, !dbg !5529
  %inc = add i64 %11, 1, !dbg !5529
  store i64 %inc, i64* %i, align 8, !dbg !5529
  br label %for.cond, !dbg !5530, !llvm.loop !5531

for.end:                                          ; preds = %if.then3, %for.cond
  br label %do.body, !dbg !5533

do.body:                                          ; preds = %for.end
  br label %do.end, !dbg !5534

do.end:                                           ; preds = %do.body
  store i64 0, i64* %i, align 8, !dbg !5536
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5537, metadata !DIExpression()), !dbg !5540
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %pages, i32 0, i32 0, !dbg !5540
  %12 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !5540
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !5540
  store i8* %13, i8** %__mptr, align 8, !dbg !5540
  br label %do.body6, !dbg !5540

do.body6:                                         ; preds = %do.end
  br label %do.end7, !dbg !5541

do.end7:                                          ; preds = %do.body6
  %14 = load i8*, i8** %__mptr, align 8, !dbg !5540
  %add.ptr = getelementptr i8, i8* %14, i64 -8, !dbg !5540
  %15 = bitcast i8* %add.ptr to %struct.page*, !dbg !5540
  store %struct.page* %15, %struct.page** %tmp8, align 8, !dbg !5541
  %16 = load %struct.page*, %struct.page** %tmp8, align 8, !dbg !5540
  store %struct.page* %16, %struct.page** %page, align 8, !dbg !5543
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !5544, metadata !DIExpression()), !dbg !5546
  %17 = load %struct.page*, %struct.page** %page, align 8, !dbg !5546
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 1, !dbg !5546
  %19 = bitcast %union.anon* %18 to %struct.anon*, !dbg !5546
  %lru10 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0, !dbg !5546
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %lru10, i32 0, i32 0, !dbg !5546
  %20 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !5546
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !5546
  store i8* %21, i8** %__mptr9, align 8, !dbg !5546
  br label %do.body12, !dbg !5546

do.body12:                                        ; preds = %do.end7
  br label %do.end13, !dbg !5547

do.end13:                                         ; preds = %do.body12
  %22 = load i8*, i8** %__mptr9, align 8, !dbg !5546
  %add.ptr15 = getelementptr i8, i8* %22, i64 -8, !dbg !5546
  %23 = bitcast i8* %add.ptr15 to %struct.page*, !dbg !5546
  store %struct.page* %23, %struct.page** %tmp14, align 8, !dbg !5547
  %24 = load %struct.page*, %struct.page** %tmp14, align 8, !dbg !5546
  store %struct.page* %24, %struct.page** %tmp, align 8, !dbg !5543
  br label %for.cond16, !dbg !5543

for.cond16:                                       ; preds = %do.end28, %do.end13
  %25 = load %struct.page*, %struct.page** %page, align 8, !dbg !5549
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 1, !dbg !5549
  %27 = bitcast %union.anon* %26 to %struct.anon*, !dbg !5549
  %lru17 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0, !dbg !5549
  %cmp18 = icmp eq %struct.list_head* %lru17, %pages, !dbg !5549
  %lnot = xor i1 %cmp18, true, !dbg !5549
  br i1 %lnot, label %for.body19, label %for.end31, !dbg !5543

for.body19:                                       ; preds = %for.cond16
  %28 = load %struct.page*, %struct.page** %page, align 8, !dbg !5551
  %call20 = call i64 @xen_page_to_gfn(%struct.page* %28) #8, !dbg !5553
  %29 = load i64, i64* %i, align 8, !dbg !5554
  %inc21 = add i64 %29, 1, !dbg !5554
  store i64 %inc21, i64* %i, align 8, !dbg !5554
  %arrayidx = getelementptr [512 x i64], [512 x i64]* @frame_list, i64 0, i64 %29, !dbg !5555
  store i64 %call20, i64* %arrayidx, align 8, !dbg !5556
  call void @xenmem_reservation_va_mapping_reset(i64 1, %struct.page** %page) #8, !dbg !5557
  %30 = load %struct.page*, %struct.page** %page, align 8, !dbg !5558
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 1, !dbg !5559
  %32 = bitcast %union.anon* %31 to %struct.anon*, !dbg !5559
  %lru22 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0, !dbg !5559
  call void @list_del(%struct.list_head* %lru22) #8, !dbg !5560
  %33 = load %struct.page*, %struct.page** %page, align 8, !dbg !5561
  call void @balloon_append(%struct.page* %33) #8, !dbg !5562
  br label %for.inc23, !dbg !5563

for.inc23:                                        ; preds = %for.body19
  %34 = load %struct.page*, %struct.page** %tmp, align 8, !dbg !5549
  store %struct.page* %34, %struct.page** %page, align 8, !dbg !5549
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !5564, metadata !DIExpression()), !dbg !5566
  %35 = load %struct.page*, %struct.page** %tmp, align 8, !dbg !5566
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 1, !dbg !5566
  %37 = bitcast %union.anon* %36 to %struct.anon*, !dbg !5566
  %lru25 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0, !dbg !5566
  %next26 = getelementptr inbounds %struct.list_head, %struct.list_head* %lru25, i32 0, i32 0, !dbg !5566
  %38 = load %struct.list_head*, %struct.list_head** %next26, align 8, !dbg !5566
  %39 = bitcast %struct.list_head* %38 to i8*, !dbg !5566
  store i8* %39, i8** %__mptr24, align 8, !dbg !5566
  br label %do.body27, !dbg !5566

do.body27:                                        ; preds = %for.inc23
  br label %do.end28, !dbg !5567

do.end28:                                         ; preds = %do.body27
  %40 = load i8*, i8** %__mptr24, align 8, !dbg !5566
  %add.ptr30 = getelementptr i8, i8* %40, i64 -8, !dbg !5566
  %41 = bitcast i8* %add.ptr30 to %struct.page*, !dbg !5566
  store %struct.page* %41, %struct.page** %tmp29, align 8, !dbg !5567
  %42 = load %struct.page*, %struct.page** %tmp29, align 8, !dbg !5566
  store %struct.page* %42, %struct.page** %tmp, align 8, !dbg !5549
  br label %for.cond16, !dbg !5549, !llvm.loop !5569

for.end31:                                        ; preds = %for.cond16
  call void @flush_tlb_all() #8, !dbg !5571
  %43 = load i64, i64* %nr_pages.addr, align 8, !dbg !5572
  %conv = trunc i64 %43 to i32, !dbg !5572
  %call32 = call i32 @xenmem_reservation_decrease(i32 %conv, i64* getelementptr inbounds ([512 x i64], [512 x i64]* @frame_list, i64 0, i64 0)) #8, !dbg !5573
  store i32 %call32, i32* %ret, align 4, !dbg !5574
  br label %do.body33, !dbg !5575

do.body33:                                        ; preds = %for.end31
  %44 = load i32, i32* %ret, align 4, !dbg !5576
  %conv34 = sext i32 %44 to i64, !dbg !5576
  %45 = load i64, i64* %nr_pages.addr, align 8, !dbg !5576
  %cmp35 = icmp ne i64 %conv34, %45, !dbg !5576
  %lnot37 = xor i1 %cmp35, true, !dbg !5576
  %lnot38 = xor i1 %lnot37, true, !dbg !5576
  %lnot.ext = zext i1 %lnot38 to i32, !dbg !5576
  %conv39 = sext i32 %lnot.ext to i64, !dbg !5576
  %tobool = icmp ne i64 %conv39, 0, !dbg !5576
  br i1 %tobool, label %if.then40, label %if.end49, !dbg !5579

if.then40:                                        ; preds = %do.body33
  br label %do.body41, !dbg !5576

do.body41:                                        ; preds = %if.then40
  br label %do.body42, !dbg !5580

do.body42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5582

do.end43:                                         ; preds = %do.body42
  br label %do.body44, !dbg !5580

do.body44:                                        ; preds = %do.end43
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 486, i32 0, i64 12) #6, !dbg !5584, !srcloc !5586
  br label %do.end45, !dbg !5584

do.end45:                                         ; preds = %do.body44
  br label %do.body46, !dbg !5580

do.body46:                                        ; preds = %do.end45
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 302) #6, !dbg !5587, !srcloc !5590
  unreachable, !dbg !5591

do.end47:                                         ; No predecessors!
  br label %do.end48, !dbg !5580

do.end48:                                         ; preds = %do.end47
  br label %if.end49, !dbg !5580

if.end49:                                         ; preds = %do.end48, %do.body33
  br label %do.end50, !dbg !5579

do.end50:                                         ; preds = %if.end49
  %46 = load i64, i64* %nr_pages.addr, align 8, !dbg !5592
  %47 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5593
  %sub = sub i64 %47, %46, !dbg !5593
  store i64 %sub, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 0), align 8, !dbg !5593
  %48 = load i32, i32* %state, align 4, !dbg !5594
  ret i32 %48, !dbg !5595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @update_schedule(i32 %state) #0 !dbg !5596 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  %0 = load i32, i32* %state.addr, align 4, !dbg !5601
  %cmp = icmp eq i32 %0, 1, !dbg !5603
  br i1 %cmp, label %if.then, label %if.end, !dbg !5604

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5605
  br label %return, !dbg !5605

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !5606
  %cmp1 = icmp eq i32 %1, 3, !dbg !5608
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5609

if.then2:                                         ; preds = %if.end
  store i32 3, i32* %retval, align 4, !dbg !5610
  br label %return, !dbg !5610

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %state.addr, align 4, !dbg !5611
  %cmp4 = icmp eq i32 %2, 0, !dbg !5613
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5614

if.then5:                                         ; preds = %if.end3
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5615
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5617
  store i32 0, i32* %retval, align 4, !dbg !5618
  br label %return, !dbg !5618

if.end6:                                          ; preds = %if.end3
  %3 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5619
  %inc = add i64 %3, 1, !dbg !5619
  store i64 %inc, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5619
  %4 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 9), align 8, !dbg !5620
  %cmp7 = icmp ne i64 %4, 0, !dbg !5622
  br i1 %cmp7, label %land.lhs.true, label %if.end10, !dbg !5623

land.lhs.true:                                    ; preds = %if.end6
  %5 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5624
  %6 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 9), align 8, !dbg !5625
  %cmp8 = icmp ugt i64 %5, %6, !dbg !5626
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5627

if.then9:                                         ; preds = %land.lhs.true
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5628
  store i64 1, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 8), align 8, !dbg !5630
  store i32 3, i32* %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  %7 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5632
  %shl = shl i64 %7, 1, !dbg !5632
  store i64 %shl, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5632
  %8 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5633
  %9 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 7), align 8, !dbg !5635
  %cmp11 = icmp ugt i64 %8, %9, !dbg !5636
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5637

if.then12:                                        ; preds = %if.end10
  %10 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 7), align 8, !dbg !5638
  store i64 %10, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 6), align 8, !dbg !5639
  br label %if.end13, !dbg !5640

if.end13:                                         ; preds = %if.then12, %if.end10
  store i32 2, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

return:                                           ; preds = %if.end13, %if.then9, %if.then5, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5642
  ret i32 %11, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @___might_sleep(i8* %file, i32 %line, i32 %preempt_offset) #0 !dbg !5643 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %preempt_offset.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store i32 %preempt_offset, i32* %preempt_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preempt_offset.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: noredzone
declare dso_local i32 @_cond_resched() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @balloon_next_page(%struct.page* %page) #0 !dbg !5654 {
entry:
  %retval = alloca %struct.page*, align 8
  %page.addr = alloca %struct.page*, align 8
  %next = alloca %struct.list_head*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  call void @llvm.dbg.declare(metadata %struct.list_head** %next, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5661
  %1 = getelementptr inbounds %struct.page, %struct.page* %0, i32 0, i32 1, !dbg !5662
  %2 = bitcast %union.anon* %1 to %struct.anon*, !dbg !5662
  %lru = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0, !dbg !5662
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %lru, i32 0, i32 0, !dbg !5663
  %3 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !5663
  store %struct.list_head* %3, %struct.list_head** %next, align 8, !dbg !5660
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5664
  %cmp = icmp eq %struct.list_head* %4, @ballooned_pages, !dbg !5666
  br i1 %cmp, label %if.then, label %if.end, !dbg !5667

if.then:                                          ; preds = %entry
  store %struct.page* null, %struct.page** %retval, align 8, !dbg !5668
  br label %return, !dbg !5668

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5669, metadata !DIExpression()), !dbg !5671
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5671
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !5671
  store i8* %6, i8** %__mptr, align 8, !dbg !5671
  br label %do.body, !dbg !5671

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5672

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !5671
  %add.ptr = getelementptr i8, i8* %7, i64 -8, !dbg !5671
  %8 = bitcast i8* %add.ptr to %struct.page*, !dbg !5671
  store %struct.page* %8, %struct.page** %tmp, align 8, !dbg !5672
  %9 = load %struct.page*, %struct.page** %tmp, align 8, !dbg !5671
  store %struct.page* %9, %struct.page** %retval, align 8, !dbg !5674
  br label %return, !dbg !5674

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct.page*, %struct.page** %retval, align 8, !dbg !5675
  ret %struct.page* %10, !dbg !5675
}

; Function Attrs: noredzone
declare dso_local i32 @xenmem_reservation_increase(i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenmem_reservation_va_mapping_update(i64 %count, %struct.page** %pages, i64* %frames) #0 !dbg !5676 {
entry:
  %count.addr = alloca i64, align 8
  %pages.addr = alloca %struct.page**, align 8
  %frames.addr = alloca i64*, align 8
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  store i64* %frames, i64** %frames.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %frames.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %call = call i32 @xen_feature(i32 2) #8, !dbg !5687
  %tobool = icmp ne i32 %call, 0, !dbg !5687
  br i1 %tobool, label %if.end, label %if.then, !dbg !5689

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %count.addr, align 8, !dbg !5690
  %1 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !5691
  %2 = load i64*, i64** %frames.addr, align 8, !dbg !5692
  call void @__xenmem_reservation_va_mapping_update(i64 %0, %struct.page** %1, i64* %2) #8, !dbg !5693
  br label %if.end, !dbg !5693

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_reserved_page(%struct.page* %page) #0 !dbg !5695 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5698
  call void @__free_reserved_page(%struct.page* %0) #8, !dbg !5699
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5700
  call void @adjust_managed_page_count(%struct.page* %1, i64 1) #8, !dbg !5701
  ret void, !dbg !5702
}

; Function Attrs: noredzone
declare dso_local void @__xenmem_reservation_va_mapping_update(i64, %struct.page**, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__free_reserved_page(%struct.page* %page) #0 !dbg !5703 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !5704, metadata !DIExpression()), !dbg !5706
  %tmp.i = alloca %struct.page*, align 8
  %tmp1.i = alloca %struct.page*, align 8
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5708, metadata !DIExpression()), !dbg !5709
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5710
  store %struct.page* %0, %struct.page** %page.addr.i, align 8
  %1 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !5711
  store %struct.page* %1, %struct.page** %tmp1.i, align 8, !dbg !5711
  %2 = load %struct.page*, %struct.page** %tmp1.i, align 8, !dbg !5711
  store %struct.page* %2, %struct.page** %tmp.i, align 8, !dbg !5714
  %3 = load %struct.page*, %struct.page** %tmp.i, align 8, !dbg !5714
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i32 0, i32 0, !dbg !5706
  call void @clear_bit(i64 12, i64* %flags.i) #10, !dbg !5706
  %4 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5715
  call void @init_page_count(%struct.page* %4) #8, !dbg !5716
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5717
  call void @__free_pages(%struct.page* %5, i32 0) #8, !dbg !5717
  ret void, !dbg !5718
}

; Function Attrs: noredzone
declare dso_local void @adjust_managed_page_count(%struct.page*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_page_count(%struct.page* %page) #0 !dbg !5719 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5723
  call void @set_page_count(%struct.page* %0, i32 1) #8, !dbg !5724
  ret void, !dbg !5725
}

; Function Attrs: noredzone
declare dso_local void @__free_pages(%struct.page*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5726 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5732, metadata !DIExpression()), !dbg !5735
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5737, metadata !DIExpression()), !dbg !5738
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5739, metadata !DIExpression()), !dbg !5747
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5749, metadata !DIExpression()), !dbg !5750
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5755
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5756
  %div = sdiv i64 %1, 64, !dbg !5756
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5757
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5755
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5758
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5759
  %conv.i = trunc i64 %4 to i32, !dbg !5759
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #10, !dbg !5760
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5761
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5761
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #10, !dbg !5761
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5762
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5763
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5764
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !5766
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5767

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5768
  %12 = bitcast i64* %11 to i8*, !dbg !5768
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5768
  %shr.i = ashr i64 %13, 3, !dbg !5768
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5768
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5770
  %and.i = and i64 %14, 7, !dbg !5770
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5770
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5770
  %neg.i = xor i32 %shl.i, -1, !dbg !5771
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !5772, !srcloc !5773
  br label %arch_clear_bit.exit, !dbg !5774

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5775
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5777
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !5778, !srcloc !5779
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5781 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  ret i1 true, !dbg !5789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5790 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  ret void, !dbg !5800
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_page_count(%struct.page* %page, i32 %v) #0 !dbg !5801 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5804, metadata !DIExpression()), !dbg !5810
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5815, metadata !DIExpression()), !dbg !5816
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5739, metadata !DIExpression()), !dbg !5817
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5749, metadata !DIExpression()), !dbg !5819
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5820, metadata !DIExpression()), !dbg !5821
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5822, metadata !DIExpression()), !dbg !5823
  %page.addr = alloca %struct.page*, align 8
  %v.addr = alloca i32, align 4
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5828
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %0, i32 0, i32 3, !dbg !5829
  %1 = load i32, i32* %v.addr, align 4, !dbg !5830
  store %struct.atomic_t* %_refcount, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5831
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5831
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5832
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5833
  %conv.i.i = trunc i64 %5 to i32, !dbg !5833
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5834
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5835
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5835
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #10, !dbg !5835
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5836
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5837
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5838
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5838
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5838
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5838
  ret void, !dbg !5840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages(i32 %gfp_mask, i32 %order) #0 !dbg !5841 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  %call = call i32 @numa_node_id() #8, !dbg !5849
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5850
  %1 = load i32, i32* %order.addr, align 4, !dbg !5851
  %call1 = call %struct.page* @alloc_pages_node(i32 %call, i32 %0, i32 %1) #8, !dbg !5852
  ret %struct.page* %call1, !dbg !5853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenmem_reservation_scrub_page(%struct.page* %page) #0 !dbg !5854 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load i8, i8* @xen_scrub_pages, align 1, !dbg !5857
  %tobool = trunc i8 %0 to i1, !dbg !5857
  br i1 %tobool, label %if.then, label %if.end, !dbg !5859

if.then:                                          ; preds = %entry
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5860
  call void @clear_highpage(%struct.page* %1) #8, !dbg !5861
  br label %if.end, !dbg !5861

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5863 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5871
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5872
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5873
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5874
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5874
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !5875
  ret void, !dbg !5876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_page_to_gfn(%struct.page* %page) #0 !dbg !5877 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5883
  %1 = load i64, i64* @vmemmap_base, align 8, !dbg !5883
  %2 = inttoptr i64 %1 to %struct.page*, !dbg !5883
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %0 to i64, !dbg !5883
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %2 to i64, !dbg !5883
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5883
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5883
  %shl = shl i64 %sub.ptr.div, 0, !dbg !5883
  %call = call i64 @pfn_to_gfn(i64 %shl) #8, !dbg !5884
  ret i64 %call, !dbg !5885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenmem_reservation_va_mapping_reset(i64 %count, %struct.page** %pages) #0 !dbg !5886 {
entry:
  %count.addr = alloca i64, align 8
  %pages.addr = alloca %struct.page**, align 8
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  %call = call i32 @xen_feature(i32 2) #8, !dbg !5893
  %tobool = icmp ne i32 %call, 0, !dbg !5893
  br i1 %tobool, label %if.end, label %if.then, !dbg !5895

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %count.addr, align 8, !dbg !5896
  %1 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !5897
  call void @__xenmem_reservation_va_mapping_reset(i64 %0, %struct.page** %1) #8, !dbg !5898
  br label %if.end, !dbg !5898

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5900 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5903, metadata !DIExpression()), !dbg !5904
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5905
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5906
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5907
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5908
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5909
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5910
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5911
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: noredzone
declare dso_local void @flush_tlb_all() #2

; Function Attrs: noredzone
declare dso_local i32 @xenmem_reservation_decrease(i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5914 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load i32, i32* %nid.addr, align 4, !dbg !5923
  %cmp = icmp eq i32 %0, -1, !dbg !5925
  br i1 %cmp, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #8, !dbg !5927
  store i32 %call, i32* %nid.addr, align 4, !dbg !5928
  br label %if.end, !dbg !5929

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %nid.addr, align 4, !dbg !5930
  %2 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5931
  %3 = load i32, i32* %order.addr, align 4, !dbg !5932
  %call1 = call %struct.page* @__alloc_pages_node(i32 %1, i32 %2, i32 %3) #8, !dbg !5933
  ret %struct.page* %call1, !dbg !5934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_node_id() #0 !dbg !5935 {
entry:
  ret i32 0, !dbg !5937
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_mem_id() #0 !dbg !5938 {
entry:
  %call = call i32 @numa_node_id() #8, !dbg !5940
  ret i32 %call, !dbg !5941
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5942 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5943, metadata !DIExpression()), !dbg !5944
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5945, metadata !DIExpression()), !dbg !5946
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5947, metadata !DIExpression()), !dbg !5948
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5949
  %1 = load i32, i32* %order.addr, align 4, !dbg !5950
  %2 = load i32, i32* %nid.addr, align 4, !dbg !5951
  %call = call %struct.page* @__alloc_pages(i32 %0, i32 %1, i32 %2) #8, !dbg !5952
  ret %struct.page* %call, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages(i32 %gfp_mask, i32 %order, i32 %preferred_nid) #0 !dbg !5954 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %preferred_nid.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  store i32 %preferred_nid, i32* %preferred_nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preferred_nid.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5963
  %1 = load i32, i32* %order.addr, align 4, !dbg !5964
  %2 = load i32, i32* %preferred_nid.addr, align 4, !dbg !5965
  %call = call %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, %struct.nodemask_t* null) #8, !dbg !5966
  ret %struct.page* %call, !dbg !5967
}

; Function Attrs: noredzone
declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, %struct.nodemask_t*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_highpage(%struct.page* %page) #0 !dbg !5968 {
entry:
  %page.addr = alloca %struct.page*, align 8
  %kaddr = alloca i8*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata i8** %kaddr, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5974
  %call = call i8* @kmap_atomic(%struct.page* %0) #8, !dbg !5975
  store i8* %call, i8** %kaddr, align 8, !dbg !5973
  %1 = load i8*, i8** %kaddr, align 8, !dbg !5976
  call void @clear_page(i8* %1) #8, !dbg !5977
  br label %do.body, !dbg !5978

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5979

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5981

do.end:                                           ; preds = %do.body1
  %2 = load i8*, i8** %kaddr, align 8, !dbg !5979
  call void @kunmap_atomic_high(i8* %2) #8, !dbg !5979
  call void @pagefault_enable() #8, !dbg !5979
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5979, !srcloc !5983
  br label %do.end2, !dbg !5979

do.end2:                                          ; preds = %do.end
  ret void, !dbg !5984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmap_atomic(%struct.page* %page) #0 !dbg !5985 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !5988, metadata !DIExpression()), !dbg !5994
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5998, !srcloc !5999
  call void @pagefault_disable() #8, !dbg !6000
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6001
  store %struct.page* %0, %struct.page** %page.addr.i, align 8
  %1 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !6002
  %2 = load i64, i64* @vmemmap_base, align 8, !dbg !6002
  %3 = inttoptr i64 %2 to %struct.page*, !dbg !6002
  %sub.ptr.lhs.cast.i = ptrtoint %struct.page* %1 to i64, !dbg !6002
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %2, !dbg !6002
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 64, !dbg !6002
  %shl.i = shl i64 %sub.ptr.div.i, 12, !dbg !6002
  %4 = load i64, i64* @page_offset_base, align 8, !dbg !6002
  %add.i = add i64 %shl.i, %4, !dbg !6002
  %5 = inttoptr i64 %add.i to i8*, !dbg !6002
  ret i8* %5, !dbg !6003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_page(i8* %page) #0 !dbg !6004 {
entry:
  %page.addr = alloca i8*, align 8
  store i8* %page, i8** %page.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %page.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  %0 = call i64 @llvm.read_register.i64(metadata !4913), !dbg !6008
  %1 = load i8*, i8** %page.addr, align 8, !dbg !6008
  %2 = call { i8*, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09call ${2:P}\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 3*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A .long 661b - .\0A .long 6642f - .\0A .word ( 9*32+ 9)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call ${3:P}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09call ${4:P}\0A6652:\0A.popsection\0A", "={di},={rsp},i,i,i,0,1,~{cc},~{memory},~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(void (i8*)* @clear_page_orig, void (i8*)* @clear_page_rep, void (i8*)* @clear_page_erms, i8* %1, i64 %0) #6, !dbg !6008, !srcloc !6009
  %asmresult = extractvalue { i8*, i64 } %2, 0, !dbg !6008
  %asmresult1 = extractvalue { i8*, i64 } %2, 1, !dbg !6008
  store i8* %asmresult, i8** %page.addr, align 8, !dbg !6008
  call void @llvm.write_register.i64(metadata !4913, i64 %asmresult1), !dbg !6008
  ret void, !dbg !6010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kunmap_atomic_high(i8* %addr) #0 !dbg !6011 {
entry:
  %addr.addr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  ret void, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pagefault_enable() #0 !dbg !6015 {
entry:
  %pscr_ret__.i.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i.i, metadata !6017, metadata !DIExpression()), !dbg !6023
  %__vpp_verify.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i.i, metadata !6027, metadata !DIExpression()), !dbg !6029
  %pfo_val__.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i.i, metadata !6030, metadata !DIExpression()), !dbg !6032
  %tmp.i.i = alloca %struct.task_struct*, align 8
  %tmp1.i.i = alloca %struct.task_struct*, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6033, !srcloc !6034
  store i8* null, i8** %__vpp_verify.i.i, align 8, !dbg !6029
  %0 = load i8*, i8** %__vpp_verify.i.i, align 8, !dbg !6029
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !6032, !srcloc !6035
  store i64 %1, i64* %pfo_val__.i.i, align 8, !dbg !6032
  %2 = load i64, i64* %pfo_val__.i.i, align 8, !dbg !6032
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !6032
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i.i, align 8, !dbg !6032
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i.i, align 8, !dbg !6032
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !6023
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !6023
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i.i, align 8, !dbg !6023
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i.i, align 8, !dbg !6023
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 123, !dbg !6036
  %7 = load i32, i32* %pagefault_disabled.i, align 8, !dbg !6037
  %dec.i = add i32 %7, -1, !dbg !6037
  store i32 %dec.i, i32* %pagefault_disabled.i, align 8, !dbg !6037
  ret void, !dbg !6038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pagefault_disable() #0 !dbg !6039 {
entry:
  %pscr_ret__.i.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i.i, metadata !6017, metadata !DIExpression()), !dbg !6040
  %__vpp_verify.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i.i, metadata !6027, metadata !DIExpression()), !dbg !6044
  %pfo_val__.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i.i, metadata !6030, metadata !DIExpression()), !dbg !6045
  %tmp.i.i = alloca %struct.task_struct*, align 8
  %tmp1.i.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i.i, align 8, !dbg !6044
  %0 = load i8*, i8** %__vpp_verify.i.i, align 8, !dbg !6044
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !6045, !srcloc !6035
  store i64 %1, i64* %pfo_val__.i.i, align 8, !dbg !6045
  %2 = load i64, i64* %pfo_val__.i.i, align 8, !dbg !6045
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !6045
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i.i, align 8, !dbg !6045
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i.i, align 8, !dbg !6045
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !6040
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !6040
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i.i, align 8, !dbg !6040
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i.i, align 8, !dbg !6040
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 123, !dbg !6046
  %7 = load i32, i32* %pagefault_disabled.i, align 8, !dbg !6047
  %inc.i = add i32 %7, 1, !dbg !6047
  store i32 %inc.i, i32* %pagefault_disabled.i, align 8, !dbg !6047
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6048, !srcloc !6049
  ret void, !dbg !6050
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: noredzone
declare dso_local void @clear_page_orig(i8*) #2

; Function Attrs: noredzone
declare dso_local void @clear_page_rep(i8*) #2

; Function Attrs: noredzone
declare dso_local void @clear_page_erms(i8*) #2

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6051 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6060
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6062
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6063
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !6064
  br i1 %call, label %if.end, label %if.then, !dbg !6065

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6066

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6067
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6068
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6069
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6070
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6071
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6072
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6073
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6074
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6075
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6076
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6077
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6078
  br label %do.body, !dbg !6079

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6080

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6080

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6084
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6084
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6084
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6084
  br label %do.end7, !dbg !6084

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6080

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6087 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  ret i1 true, !dbg !6096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !6097 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  %call = call i32 @xen_feature(i32 2) #8, !dbg !6103
  %tobool = icmp ne i32 %call, 0, !dbg !6103
  br i1 %tobool, label %if.then, label %if.else, !dbg !6105

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6106
  store i64 %0, i64* %retval, align 8, !dbg !6107
  br label %return, !dbg !6107

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6108
  %call1 = call i64 @pfn_to_mfn(i64 %1) #8, !dbg !6109
  store i64 %call1, i64* %retval, align 8, !dbg !6110
  br label %return, !dbg !6110

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6111
  ret i64 %2, !dbg !6111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !6112 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6113, metadata !DIExpression()), !dbg !6114
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6115, metadata !DIExpression()), !dbg !6116
  %call = call i32 @xen_feature(i32 2) #8, !dbg !6117
  %tobool = icmp ne i32 %call, 0, !dbg !6117
  br i1 %tobool, label %if.then, label %if.end, !dbg !6119

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6120
  store i64 %0, i64* %retval, align 8, !dbg !6121
  br label %return, !dbg !6121

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6122
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #8, !dbg !6123
  store i64 %call1, i64* %mfn, align 8, !dbg !6124
  %2 = load i64, i64* %mfn, align 8, !dbg !6125
  %cmp = icmp ne i64 %2, -1, !dbg !6127
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6128

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !6129
  %and = and i64 %3, 4611686018427387903, !dbg !6129
  store i64 %and, i64* %mfn, align 8, !dbg !6129
  br label %if.end3, !dbg !6130

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !6131
  store i64 %4, i64* %retval, align 8, !dbg !6132
  br label %return, !dbg !6132

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !6133
  ret i64 %5, !dbg !6133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !6134 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6137, metadata !DIExpression()), !dbg !6138
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6139
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !6141
  %cmp = icmp ult i64 %0, %1, !dbg !6142
  br i1 %cmp, label %if.then, label %if.else, !dbg !6143

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !6144
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !6145
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6144
  %4 = load i64, i64* %arrayidx, align 8, !dbg !6144
  store i64 %4, i64* %mfn, align 8, !dbg !6146
  br label %if.end, !dbg !6147

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !6148
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !6148
  %cmp1 = icmp ult i64 %5, %6, !dbg !6148
  %lnot = xor i1 %cmp1, true, !dbg !6148
  %lnot2 = xor i1 %lnot, true, !dbg !6148
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6148
  %conv = sext i32 %lnot.ext to i64, !dbg !6148
  %tobool = icmp ne i64 %conv, 0, !dbg !6148
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !6150

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !6151
  %call = call i64 @get_phys_to_machine(i64 %7) #8, !dbg !6152
  store i64 %call, i64* %retval, align 8, !dbg !6153
  br label %return, !dbg !6153

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !6154
  %or = or i64 %8, 4611686018427387904, !dbg !6154
  store i64 %or, i64* %retval, align 8, !dbg !6155
  br label %return, !dbg !6155

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !6156
  %cmp5 = icmp eq i64 %9, -1, !dbg !6156
  %lnot7 = xor i1 %cmp5, true, !dbg !6156
  %lnot9 = xor i1 %lnot7, true, !dbg !6156
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6156
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6156
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !6156
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6158

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !6159
  %call14 = call i64 @get_phys_to_machine(i64 %10) #8, !dbg !6160
  store i64 %call14, i64* %retval, align 8, !dbg !6161
  br label %return, !dbg !6161

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !6162
  store i64 %11, i64* %retval, align 8, !dbg !6163
  br label %return, !dbg !6163

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !6164
  ret i64 %12, !dbg !6164
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: noredzone
declare dso_local void @__xenmem_reservation_va_mapping_reset(i64, %struct.page**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6165 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6168
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !6170
  br i1 %call, label %if.end, label %if.then, !dbg !6171

if.then:                                          ; preds = %entry
  br label %return, !dbg !6172

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6173
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6174
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6174
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6175
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6176
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6176
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !6177
  br label %return, !dbg !6178

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6179 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  ret i1 true, !dbg !6184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6185 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6186, metadata !DIExpression()), !dbg !6187
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6190
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6191
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6192
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6193
  br label %do.body, !dbg !6194

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6195

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6197

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6195

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6199
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6199
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6199
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6199
  br label %do.end5, !dbg !6199

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6195

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !6202 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  br label %do.body, !dbg !6209

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6211

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6209
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !6209
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6209
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !6211
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !6209
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6213
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !6214
  %conv = zext i1 %cmp to i32, !dbg !6214
  ret i32 %conv, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PageHighMem(%struct.page* %page) #0 !dbg !6216 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  ret i32 0, !dbg !6220
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6221 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6222, metadata !DIExpression()), !dbg !6223
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6224, metadata !DIExpression()), !dbg !6225
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6226
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6227
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6228
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6228
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6229
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !6230
  ret void, !dbg !6231
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_num_physpages() #0 !dbg !6232 {
entry:
  %nid = alloca i32, align 4
  %phys_pages = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %nid, metadata !6235, metadata !DIExpression()), !dbg !6236
  call void @llvm.dbg.declare(metadata i64* %phys_pages, metadata !6237, metadata !DIExpression()), !dbg !6238
  store i64 0, i64* %phys_pages, align 8, !dbg !6238
  store i32 0, i32* %nid, align 4, !dbg !6239
  br label %for.cond, !dbg !6239

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %nid, align 4, !dbg !6241
  %cmp = icmp eq i32 %0, 0, !dbg !6241
  br i1 %cmp, label %for.body, label %for.end, !dbg !6239

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i32 0, i32 4), align 8, !dbg !6243
  %2 = load i64, i64* %phys_pages, align 8, !dbg !6244
  %add = add i64 %2, %1, !dbg !6244
  store i64 %add, i64* %phys_pages, align 8, !dbg !6244
  br label %for.inc, !dbg !6245

for.inc:                                          ; preds = %for.body
  store i32 1, i32* %nid, align 4, !dbg !6241
  br label %for.cond, !dbg !6241, !llvm.loop !6246

for.end:                                          ; preds = %for.cond
  %3 = load i64, i64* %phys_pages, align 8, !dbg !6248
  ret i64 %3, !dbg !6249
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @balloon_add_region(i64 %start_pfn, i64 %pages) #3 section ".init.text" !dbg !6250 {
entry:
  %start_pfn.addr = alloca i64, align 8
  %pages.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %extra_pfn_end = alloca i64, align 8
  %__UNIQUE_ID___x306 = alloca i64, align 8
  %__UNIQUE_ID___y307 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %start_pfn, i64* %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_pfn.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  store i64 %pages, i64* %pages.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pages.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6257, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i64* %extra_pfn_end, metadata !6259, metadata !DIExpression()), !dbg !6260
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x306, metadata !6261, metadata !DIExpression()), !dbg !6263
  %0 = load i64, i64* @max_pfn, align 8, !dbg !6263
  store i64 %0, i64* %__UNIQUE_ID___x306, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y307, metadata !6264, metadata !DIExpression()), !dbg !6263
  %1 = load i64, i64* %start_pfn.addr, align 8, !dbg !6263
  %2 = load i64, i64* %pages.addr, align 8, !dbg !6263
  %add = add i64 %1, %2, !dbg !6263
  store i64 %add, i64* %__UNIQUE_ID___y307, align 8, !dbg !6263
  %3 = load i64, i64* %__UNIQUE_ID___x306, align 8, !dbg !6263
  %4 = load i64, i64* %__UNIQUE_ID___y307, align 8, !dbg !6263
  %cmp = icmp ult i64 %3, %4, !dbg !6263
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6263

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %__UNIQUE_ID___x306, align 8, !dbg !6263
  br label %cond.end, !dbg !6263

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %__UNIQUE_ID___y307, align 8, !dbg !6263
  br label %cond.end, !dbg !6263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6263
  store i64 %cond, i64* %tmp, align 8, !dbg !6263
  %7 = load i64, i64* %tmp, align 8, !dbg !6263
  store i64 %7, i64* %extra_pfn_end, align 8, !dbg !6265
  %8 = load i64, i64* %start_pfn.addr, align 8, !dbg !6266
  store i64 %8, i64* %pfn, align 8, !dbg !6268
  br label %for.cond, !dbg !6269

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i64, i64* %pfn, align 8, !dbg !6270
  %10 = load i64, i64* %extra_pfn_end, align 8, !dbg !6272
  %cmp1 = icmp ult i64 %9, %10, !dbg !6273
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6274

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* @vmemmap_base, align 8, !dbg !6275
  %12 = inttoptr i64 %11 to %struct.page*, !dbg !6275
  %13 = load i64, i64* %pfn, align 8, !dbg !6275
  %add.ptr = getelementptr %struct.page, %struct.page* %12, i64 %13, !dbg !6275
  call void @balloon_append(%struct.page* %add.ptr) #8, !dbg !6277
  br label %for.inc, !dbg !6278

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %pfn, align 8, !dbg !6279
  %inc = add i64 %14, 1, !dbg !6279
  store i64 %inc, i64* %pfn, align 8, !dbg !6279
  br label %for.cond, !dbg !6280, !llvm.loop !6281

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %extra_pfn_end, align 8, !dbg !6283
  %16 = load i64, i64* %start_pfn.addr, align 8, !dbg !6284
  %sub = sub i64 %15, %16, !dbg !6285
  %17 = load i64, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 5), align 8, !dbg !6286
  %add2 = add i64 %17, %sub, !dbg !6286
  store i64 %add2, i64* getelementptr inbounds (%struct.balloon_stats, %struct.balloon_stats* @balloon_stats, i32 0, i32 5), align 8, !dbg !6286
  ret void, !dbg !6287
}

; Function Attrs: noredzone
declare dso_local void @xen_balloon_init() #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4913}
!llvm.module.flags = !{!4914, !4915, !4916, !4917}
!llvm.ident = !{!4918}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "balloon_stats", scope: !2, file: !3, line: 136, type: !4900, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !217, globals: !4880, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/balloon.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !16, !22, !28, !34, !40, !47, !55, !61, !73, !79, !86, !91, !100, !108, !114, !121, !128, !133, !166, !172, !211}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !6, line: 41, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !23, line: 26, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !29, line: 546, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !35, line: 44, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !41, line: 343, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !48, line: 524, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !48, line: 502, baseType: !7, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !62, line: 49, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72}
!64 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!70 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!71 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!72 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !74, line: 118, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !80, line: 19, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !74, line: 315, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !92, line: 296, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !101, line: 9, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !109, line: 54, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !115, line: 15, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !122, line: 59, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 10, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 30, baseType: !135, size: 64, elements: !136)
!134 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!137 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!138 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!139 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!140 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!141 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!142 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!143 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!144 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!145 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!146 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!147 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!148 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!149 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!150 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!151 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!152 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!153 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!154 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!155 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!156 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!157 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!158 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!159 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!160 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!161 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!162 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!163 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!164 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!165 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bp_state", file: !3, line: 126, baseType: !7, size: 32, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "BP_DONE", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "BP_WAIT", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "BP_EAGAIN", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "BP_ECANCELED", value: 3, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !173, line: 104, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!175 = !DIEnumerator(name: "PG_locked", value: 0, isUnsigned: true)
!176 = !DIEnumerator(name: "PG_referenced", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "PG_uptodate", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "PG_dirty", value: 3, isUnsigned: true)
!179 = !DIEnumerator(name: "PG_lru", value: 4, isUnsigned: true)
!180 = !DIEnumerator(name: "PG_active", value: 5, isUnsigned: true)
!181 = !DIEnumerator(name: "PG_workingset", value: 6, isUnsigned: true)
!182 = !DIEnumerator(name: "PG_waiters", value: 7, isUnsigned: true)
!183 = !DIEnumerator(name: "PG_error", value: 8, isUnsigned: true)
!184 = !DIEnumerator(name: "PG_slab", value: 9, isUnsigned: true)
!185 = !DIEnumerator(name: "PG_owner_priv_1", value: 10, isUnsigned: true)
!186 = !DIEnumerator(name: "PG_arch_1", value: 11, isUnsigned: true)
!187 = !DIEnumerator(name: "PG_reserved", value: 12, isUnsigned: true)
!188 = !DIEnumerator(name: "PG_private", value: 13, isUnsigned: true)
!189 = !DIEnumerator(name: "PG_private_2", value: 14, isUnsigned: true)
!190 = !DIEnumerator(name: "PG_writeback", value: 15, isUnsigned: true)
!191 = !DIEnumerator(name: "PG_head", value: 16, isUnsigned: true)
!192 = !DIEnumerator(name: "PG_mappedtodisk", value: 17, isUnsigned: true)
!193 = !DIEnumerator(name: "PG_reclaim", value: 18, isUnsigned: true)
!194 = !DIEnumerator(name: "PG_swapbacked", value: 19, isUnsigned: true)
!195 = !DIEnumerator(name: "PG_unevictable", value: 20, isUnsigned: true)
!196 = !DIEnumerator(name: "PG_mlocked", value: 21, isUnsigned: true)
!197 = !DIEnumerator(name: "PG_uncached", value: 22, isUnsigned: true)
!198 = !DIEnumerator(name: "PG_arch_2", value: 23, isUnsigned: true)
!199 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 24, isUnsigned: true)
!200 = !DIEnumerator(name: "PG_checked", value: 10, isUnsigned: true)
!201 = !DIEnumerator(name: "PG_swapcache", value: 10, isUnsigned: true)
!202 = !DIEnumerator(name: "PG_fscache", value: 14, isUnsigned: true)
!203 = !DIEnumerator(name: "PG_pinned", value: 10, isUnsigned: true)
!204 = !DIEnumerator(name: "PG_savepinned", value: 3, isUnsigned: true)
!205 = !DIEnumerator(name: "PG_foreign", value: 10, isUnsigned: true)
!206 = !DIEnumerator(name: "PG_xen_remapped", value: 10, isUnsigned: true)
!207 = !DIEnumerator(name: "PG_slob_free", value: 13, isUnsigned: true)
!208 = !DIEnumerator(name: "PG_double_map", value: 6, isUnsigned: true)
!209 = !DIEnumerator(name: "PG_isolated", value: 18, isUnsigned: true)
!210 = !DIEnumerator(name: "PG_reported", value: 2, isUnsigned: true)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !212, line: 5, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!215 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!216 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!217 = !{!218, !219, !2042, !354, !4870, !464, !4873, !4875, !4876, !4878, !901, !3607, !4879}
!218 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !221, line: 68, size: 512, align: 128, elements: !222)
!221 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !224, !4862, !4869}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !221, line: 69, baseType: !218, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !221, line: 77, baseType: !225, size: 320, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !221, line: 77, size: 320, elements: !226)
!226 = !{!227, !4756, !4761, !4787, !4795, !4801, !4813, !4861}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 78, baseType: !228, size: 320)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 78, size: 320, elements: !229)
!229 = !{!230, !237, !4754, !4755}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !228, file: !221, line: 84, baseType: !231, size: 128)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !232, line: 178, size: 128, elements: !233)
!232 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !232, line: 179, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !231, file: !232, line: 179, baseType: !235, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !228, file: !221, line: 86, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !92, line: 451, size: 1216, align: 64, elements: !240)
!240 = !{!241, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4749, !4750, !4751, !4752, !4753}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !239, file: !92, line: 452, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !92, line: 610, size: 4224, elements: !244)
!244 = !{!245, !248, !249, !258, !265, !266, !4526, !4527, !4528, !4529, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4569, !4577, !4578, !4579, !4589, !4590, !4591, !4592}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !243, file: !92, line: 611, baseType: !246, size: 16)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !232, line: 19, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !243, file: !92, line: 612, baseType: !247, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !243, file: !92, line: 613, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !251, line: 23, baseType: !252)
!251 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 21, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !251, line: 22, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !232, line: 32, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !257, line: 49, baseType: !7)
!257 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !243, file: !92, line: 614, baseType: !259, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !251, line: 28, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 26, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !260, file: !251, line: 27, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !232, line: 33, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !257, line: 50, baseType: !7)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !243, file: !92, line: 615, baseType: !7, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !243, file: !92, line: 622, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !92, line: 1864, size: 1536, align: 512, elements: !270)
!270 = !{!271, !4403, !4413, !4417, !4423, !4427, !4431, !4435, !4439, !4443, !4447, !4448, !4452, !4456, !4476, !4502, !4506, !4512, !4517, !4521, !4522}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !269, file: !92, line: 1865, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !242, !275, !7}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !277, line: 89, size: 1536, elements: !278)
!277 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !280, !290, !298, !299, !322, !323, !327, !355, !429, !4387, !4388, !4389, !4395, !4396, !4397}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !276, file: !277, line: 91, baseType: !7, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !276, file: !277, line: 92, baseType: !281, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !282, line: 277, baseType: !283)
!282 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !282, line: 277, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !283, file: !282, line: 277, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !282, line: 70, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !282, line: 65, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !287, file: !282, line: 66, baseType: !7, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !276, file: !277, line: 93, baseType: !291, size: 128, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !292, line: 38, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !292, line: 39, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !291, file: !292, line: 39, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !276, file: !277, line: 94, baseType: !275, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !276, file: !277, line: 95, baseType: !300, size: 128, offset: 256)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !277, line: 47, size: 128, elements: !301)
!301 = !{!302, !318}
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !277, line: 48, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !277, line: 48, size: 64, elements: !304)
!304 = !{!305, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !277, line: 49, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !277, line: 49, size: 64, elements: !307)
!307 = !{!308, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !306, file: !277, line: 50, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !310, line: 21, baseType: !311)
!310 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !312, line: 27, baseType: !7)
!312 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !306, file: !277, line: 50, baseType: !309, size: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !303, file: !277, line: 52, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !310, line: 23, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !312, line: 31, baseType: !317)
!317 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !277, line: 54, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !276, file: !277, line: 96, baseType: !242, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !276, file: !277, line: 98, baseType: !324, size: 256, offset: 448)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !276, file: !277, line: 101, baseType: !328, size: 32, offset: 704)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !329, line: 25, size: 32, elements: !330)
!329 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 26, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 26, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !329, line: 30, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !329, line: 30, size: 32, elements: !336)
!336 = !{!337, !353}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !335, file: !329, line: 31, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !339, line: 83, baseType: !340)
!339 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !339, line: 71, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !339, line: 72, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !339, line: 72, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !343, file: !339, line: 73, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !339, line: 20, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !346, file: !339, line: 21, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !350, line: 25, baseType: !351)
!350 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 25, elements: !352)
!352 = !{}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !335, file: !329, line: 32, baseType: !354, size: 32)
!354 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !276, file: !277, line: 102, baseType: !356, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !277, line: 135, size: 1024, align: 512, elements: !359)
!359 = !{!360, !364, !365, !372, !381, !385, !389, !393, !394, !398, !403, !415, !423}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !358, file: !277, line: 136, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!354, !275, !7}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !358, file: !277, line: 137, baseType: !361, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !277, line: 138, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!354, !369, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !358, file: !277, line: 139, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!354, !369, !7, !376, !379}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !358, file: !277, line: 141, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!354, !369}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !358, file: !277, line: 142, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!354, !275}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !358, file: !277, line: 143, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !275}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !358, file: !277, line: 144, baseType: !390, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !358, file: !277, line: 145, baseType: !395, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !275, !242}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !358, file: !277, line: 146, baseType: !399, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !275, !402, !354}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !358, file: !277, line: 147, baseType: !404, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !277, line: 18, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !411, line: 8, size: 128, elements: !412)
!411 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !410, file: !411, line: 9, baseType: !407, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !410, file: !411, line: 10, baseType: !275, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !358, file: !277, line: 148, baseType: !416, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!354, !419, !421}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !232, line: 30, baseType: !422)
!422 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !358, file: !277, line: 149, baseType: !424, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!275, !275, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !276, file: !277, line: 103, baseType: !430, size: 64, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !92, line: 1416, size: 9472, elements: !432)
!432 = !{!433, !434, !437, !438, !439, !443, !496, !4058, !4140, !4223, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4239, !4243, !4244, !4245, !4246, !4249, !4250, !4251, !4292, !4319, !4320, !4321, !4322, !4323, !4324, !4327, !4328, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !431, file: !92, line: 1417, baseType: !231, size: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !431, file: !92, line: 1418, baseType: !435, size: 32, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !232, line: 16, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !232, line: 13, baseType: !309)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !431, file: !92, line: 1419, baseType: !321, size: 8, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !431, file: !92, line: 1420, baseType: !218, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !431, file: !92, line: 1421, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !232, line: 46, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !257, line: 88, baseType: !442)
!442 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !431, file: !92, line: 1422, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !92, line: 2228, size: 576, elements: !446)
!446 = !{!447, !448, !449, !456, !460, !465, !469, !473, !474, !484, !487, !488, !489, !493, !494, !495}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !92, line: 2229, baseType: !376, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !445, file: !92, line: 2230, baseType: !354, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !445, file: !92, line: 2238, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!354, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !455, line: 28, flags: DIFlagFwdDecl)
!455 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !445, file: !92, line: 2239, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !92, line: 70, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !445, file: !92, line: 2240, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!275, !444, !354, !376, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !445, file: !92, line: 2242, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !430}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !445, file: !92, line: 2243, baseType: !470, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !472, line: 76, flags: DIFlagFwdDecl)
!472 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !92, line: 2244, baseType: !444, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !445, file: !92, line: 2245, baseType: !475, size: 64, offset: 512)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !232, line: 182, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !475, file: !232, line: 183, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !232, line: 186, size: 128, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !232, line: 187, baseType: !478, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !479, file: !232, line: 187, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !445, file: !92, line: 2247, baseType: !485, offset: 576)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !486, line: 187, elements: !352)
!486 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !445, file: !92, line: 2248, baseType: !485, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !445, file: !92, line: 2249, baseType: !485, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !445, file: !92, line: 2250, baseType: !490, offset: 576)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 3)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !445, file: !92, line: 2252, baseType: !485, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !445, file: !92, line: 2253, baseType: !485, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !445, file: !92, line: 2254, baseType: !485, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !431, file: !92, line: 1423, baseType: !497, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !92, line: 1935, size: 1472, elements: !500)
!500 = !{!501, !505, !509, !510, !514, !534, !538, !539, !540, !544, !548, !549, !550, !551, !557, !562, !563, !4035, !4036, !4037, !4038, !4042, !4057}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !499, file: !92, line: 1936, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!242, !430}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !499, file: !92, line: 1937, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !242}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !499, file: !92, line: 1938, baseType: !506, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !499, file: !92, line: 1940, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !242, !354}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !499, file: !92, line: 1941, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!354, !242, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !519, file: !6, line: 52, baseType: !135, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !519, file: !6, line: 54, baseType: !135, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !519, file: !6, line: 61, baseType: !440, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !519, file: !6, line: 62, baseType: !440, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !519, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !519, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !519, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !519, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !519, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !519, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !519, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !519, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !519, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !499, file: !92, line: 1942, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!354, !242}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !499, file: !92, line: 1943, baseType: !506, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !499, file: !92, line: 1944, baseType: !466, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !499, file: !92, line: 1945, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!354, !430, !354}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !499, file: !92, line: 1946, baseType: !545, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!354, !430}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !499, file: !92, line: 1947, baseType: !545, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !499, file: !92, line: 1948, baseType: !545, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !499, file: !92, line: 1949, baseType: !545, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !499, file: !92, line: 1950, baseType: !552, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!354, !275, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !92, line: 57, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !499, file: !92, line: 1951, baseType: !558, size: 64, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!354, !430, !561, !402}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !499, file: !92, line: 1952, baseType: !466, size: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !499, file: !92, line: 1954, baseType: !564, size: 64, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!354, !567, !275}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !569, line: 16, size: 896, elements: !570)
!569 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571, !572, !576, !577, !578, !579, !580, !581, !596, !618, !619, !4034}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !568, file: !569, line: 17, baseType: !402, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !569, line: 18, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 55, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !257, line: 72, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !257, line: 16, baseType: !218)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !568, file: !569, line: 19, baseType: !573, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !568, file: !569, line: 20, baseType: !573, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !568, file: !569, line: 21, baseType: !573, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !568, file: !569, line: 22, baseType: !440, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !568, file: !569, line: 23, baseType: !440, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !568, file: !569, line: 24, baseType: !582, size: 192, offset: 448)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !583, line: 53, size: 192, elements: !584)
!583 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !594, !595}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !582, file: !583, line: 54, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !587, line: 13, baseType: !588)
!587 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !232, line: 175, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 173, size: 64, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !589, file: !232, line: 174, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !310, line: 22, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !312, line: 30, baseType: !442)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !582, file: !583, line: 55, baseType: !338, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !582, file: !583, line: 59, baseType: !231, size: 128, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !568, file: !569, line: 25, baseType: !597, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !569, line: 31, size: 256, elements: !600)
!600 = !{!601, !606, !610, !614}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !599, file: !569, line: 32, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!464, !567, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !599, file: !569, line: 33, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !567, !464}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !569, line: 34, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!464, !567, !464, !605}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !599, file: !569, line: 35, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!354, !567, !464}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !568, file: !569, line: 26, baseType: !354, size: 32, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !568, file: !569, line: 27, baseType: !620, size: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !92, line: 916, size: 1856, align: 32, elements: !623)
!623 = !{!624, !642, !643, !644, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4015, !4016, !4025, !4026, !4027, !4028, !4029, !4030, !4033}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !622, file: !92, line: 920, baseType: !625, size: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !92, line: 917, size: 128, elements: !626)
!626 = !{!627, !633}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !625, file: !92, line: 918, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !629, line: 58, size: 64, elements: !630)
!629 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !629, line: 59, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !625, file: !92, line: 919, baseType: !634, size: 128, align: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !232, line: 216, size: 128, align: 64, elements: !635)
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !232, line: 217, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !634, file: !232, line: 218, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !637}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !622, file: !92, line: 921, baseType: !410, size: 128, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !622, file: !92, line: 922, baseType: !242, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !622, file: !92, line: 923, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !92, line: 1822, size: 2048, elements: !648)
!648 = !{!649, !650, !655, !662, !666, !712, !713, !717, !730, !731, !739, !743, !744, !3832, !3833, !3837, !3842, !3843, !3847, !3851, !3959, !3963, !3964, !3968, !3969, !3973, !3977, !3982, !3986, !3990, !3994, !3998}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !92, line: 1823, baseType: !470, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !647, file: !92, line: 1824, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!440, !654, !440, !354}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !647, file: !92, line: 1825, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !654, !402, !573, !605}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !232, line: 60, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !257, line: 73, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !257, line: 15, baseType: !135)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !647, file: !92, line: 1826, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!659, !654, !376, !573, !605}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !647, file: !92, line: 1827, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!659, !670, !710}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !92, line: 320, size: 384, elements: !672)
!672 = !{!673, !674, !675, !679, !680, !681, !684, !685}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !671, file: !92, line: 321, baseType: !654, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !671, file: !92, line: 326, baseType: !440, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !671, file: !92, line: 327, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !670, !135, !135}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !671, file: !92, line: 328, baseType: !464, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !671, file: !92, line: 329, baseType: !354, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !671, file: !92, line: 330, baseType: !682, size: 16, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !310, line: 19, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !312, line: 24, baseType: !247)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !671, file: !92, line: 331, baseType: !682, size: 16, offset: 304)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !92, line: 332, baseType: !686, size: 64, offset: 320)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !92, line: 332, size: 64, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !686, file: !92, line: 333, baseType: !7, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !686, file: !92, line: 334, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !692, line: 569, size: 448, elements: !693)
!692 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !691, file: !692, line: 570, baseType: !219, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !691, file: !692, line: 571, baseType: !354, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !691, file: !692, line: 572, baseType: !697, size: 320, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !698, line: 14, baseType: !699)
!698 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !698, line: 29, size: 320, elements: !700)
!700 = !{!701, !702, !703, !709}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !698, line: 30, baseType: !7, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !699, file: !698, line: 31, baseType: !464, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !699, file: !698, line: 32, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !698, line: 16, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!354, !708, !7, !354, !464}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !699, file: !698, line: 33, baseType: !231, size: 128, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !92, line: 64, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !647, file: !92, line: 1828, baseType: !667, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !647, file: !92, line: 1829, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!354, !670, !421}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !647, file: !92, line: 1830, baseType: !718, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!354, !654, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !92, line: 1776, size: 128, elements: !723)
!723 = !{!724, !729}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !722, file: !92, line: 1777, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !92, line: 1773, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!354, !721, !376, !354, !440, !315, !7}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !722, file: !92, line: 1778, baseType: !440, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !647, file: !92, line: 1831, baseType: !718, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !647, file: !92, line: 1832, baseType: !732, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!735, !654, !737}
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !736, line: 52, baseType: !7)
!736 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !455, line: 27, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !647, file: !92, line: 1833, baseType: !740, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!135, !654, !7, !218}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !647, file: !92, line: 1834, baseType: !740, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !647, file: !92, line: 1835, baseType: !745, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!354, !654, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !221, line: 305, size: 1472, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !763, !764, !3809, !3815, !3816, !3821, !3822, !3825, !3826, !3827, !3828, !3829, !3830}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !749, file: !221, line: 308, baseType: !218, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !749, file: !221, line: 309, baseType: !218, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !749, file: !221, line: 313, baseType: !748, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !749, file: !221, line: 313, baseType: !748, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !749, file: !221, line: 315, baseType: !756, size: 192, align: 64, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !757, line: 24, size: 192, align: 64, elements: !758)
!757 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!758 = !{!759, !760, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !756, file: !757, line: 25, baseType: !218, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !756, file: !757, line: 26, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !756, file: !757, line: 27, baseType: !761, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !749, file: !221, line: 323, baseType: !218, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !749, file: !221, line: 327, baseType: !765, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !221, line: 388, size: 7296, elements: !767)
!767 = !{!768, !3807}
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !221, line: 389, baseType: !769, size: 7296)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !221, line: 389, size: 7296, elements: !770)
!770 = !{!771, !772, !776, !777, !781, !782, !783, !784, !785, !794, !799, !800, !801, !802, !803, !804, !805, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !840, !848, !851, !891, !892, !3791, !3792, !3795, !3796, !3797, !3800, !3801, !3802, !3805, !3806}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !769, file: !221, line: 390, baseType: !748, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !769, file: !221, line: 391, baseType: !773, size: 64, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !757, line: 31, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !773, file: !757, line: 32, baseType: !761, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !769, file: !221, line: 392, baseType: !315, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !769, file: !221, line: 394, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!218, !654, !218, !218, !218, !218}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !769, file: !221, line: 398, baseType: !218, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !769, file: !221, line: 399, baseType: !218, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !769, file: !221, line: 405, baseType: !218, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !769, file: !221, line: 406, baseType: !218, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !769, file: !221, line: 407, baseType: !786, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !788, line: 286, baseType: !789)
!788 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 286, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !789, file: !788, line: 286, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !793, line: 18, baseType: !218)
!793 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!794 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !769, file: !221, line: 416, baseType: !795, size: 32, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !232, line: 168, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 166, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !796, file: !232, line: 167, baseType: !354, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !769, file: !221, line: 428, baseType: !795, size: 32, offset: 608)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !769, file: !221, line: 437, baseType: !795, size: 32, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !769, file: !221, line: 447, baseType: !795, size: 32, offset: 672)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !769, file: !221, line: 450, baseType: !586, size: 64, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !769, file: !221, line: 452, baseType: !354, size: 32, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !769, file: !221, line: 454, baseType: !338, offset: 800)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !769, file: !221, line: 457, baseType: !806, size: 256, offset: 832)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !807, line: 35, size: 256, elements: !808)
!807 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!808 = !{!809, !810, !811, !813}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !806, file: !807, line: 36, baseType: !586, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !806, file: !807, line: 42, baseType: !586, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !806, file: !807, line: 46, baseType: !812, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !339, line: 29, baseType: !346)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !806, file: !807, line: 47, baseType: !231, size: 128, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !769, file: !221, line: 459, baseType: !231, size: 128, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !769, file: !221, line: 466, baseType: !218, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !769, file: !221, line: 467, baseType: !218, size: 64, offset: 1280)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !769, file: !221, line: 469, baseType: !218, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !769, file: !221, line: 470, baseType: !218, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !769, file: !221, line: 471, baseType: !588, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !769, file: !221, line: 472, baseType: !218, size: 64, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !769, file: !221, line: 473, baseType: !218, size: 64, offset: 1600)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !769, file: !221, line: 474, baseType: !218, size: 64, offset: 1664)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !769, file: !221, line: 475, baseType: !218, size: 64, offset: 1728)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !769, file: !221, line: 477, baseType: !338, offset: 1792)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !769, file: !221, line: 478, baseType: !218, size: 64, offset: 1792)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !769, file: !221, line: 478, baseType: !218, size: 64, offset: 1856)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !769, file: !221, line: 478, baseType: !218, size: 64, offset: 1920)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !769, file: !221, line: 478, baseType: !218, size: 64, offset: 1984)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !769, file: !221, line: 479, baseType: !218, size: 64, offset: 2048)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !769, file: !221, line: 479, baseType: !218, size: 64, offset: 2112)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !769, file: !221, line: 479, baseType: !218, size: 64, offset: 2176)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !769, file: !221, line: 480, baseType: !218, size: 64, offset: 2240)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !769, file: !221, line: 480, baseType: !218, size: 64, offset: 2304)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !769, file: !221, line: 480, baseType: !218, size: 64, offset: 2368)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !769, file: !221, line: 480, baseType: !218, size: 64, offset: 2432)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !769, file: !221, line: 482, baseType: !837, size: 2816, offset: 2496)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 2816, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 44)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !769, file: !221, line: 488, baseType: !841, size: 256, offset: 5312)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !842, line: 60, size: 256, elements: !843)
!842 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !841, file: !842, line: 61, baseType: !845, size: 256)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 256, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 4)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !769, file: !221, line: 490, baseType: !849, size: 64, offset: 5568)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !221, line: 490, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !769, file: !221, line: 493, baseType: !852, size: 896, offset: 5632)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !853, line: 53, baseType: !854)
!853 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !853, line: 13, size: 896, elements: !855)
!855 = !{!856, !857, !858, !859, !862, !863, !864, !865, !885, !886, !887}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !854, file: !853, line: 18, baseType: !315, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !854, file: !853, line: 28, baseType: !588, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !854, file: !853, line: 31, baseType: !806, size: 256, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !854, file: !853, line: 32, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !853, line: 32, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !854, file: !853, line: 37, baseType: !247, size: 16, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !854, file: !853, line: 40, baseType: !582, size: 192, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !854, file: !853, line: 41, baseType: !464, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !854, file: !853, line: 42, baseType: !866, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !869, line: 13, size: 896, elements: !870)
!869 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !868, file: !869, line: 14, baseType: !464, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !868, file: !869, line: 15, baseType: !218, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !868, file: !869, line: 17, baseType: !218, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !868, file: !869, line: 17, baseType: !218, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !868, file: !869, line: 19, baseType: !135, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !868, file: !869, line: 21, baseType: !135, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !868, file: !869, line: 22, baseType: !135, size: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !868, file: !869, line: 23, baseType: !135, size: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !868, file: !869, line: 24, baseType: !135, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !868, file: !869, line: 25, baseType: !135, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !868, file: !869, line: 26, baseType: !135, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !868, file: !869, line: 27, baseType: !135, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !868, file: !869, line: 28, baseType: !135, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !868, file: !869, line: 29, baseType: !135, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !854, file: !853, line: 44, baseType: !795, size: 32, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !854, file: !853, line: 50, baseType: !682, size: 16, offset: 864)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !854, file: !853, line: 51, baseType: !888, size: 16, offset: 880)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !310, line: 18, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !312, line: 23, baseType: !890)
!890 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !221, line: 495, baseType: !218, size: 64, offset: 6528)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !769, file: !221, line: 497, baseType: !893, size: 64, offset: 6592)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !221, line: 381, size: 384, elements: !895)
!895 = !{!896, !897, !3790}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !894, file: !221, line: 382, baseType: !795, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !894, file: !221, line: 383, baseType: !898, size: 128, offset: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !221, line: 376, size: 128, elements: !899)
!899 = !{!900, !3788}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !898, file: !221, line: 377, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !903, line: 640, size: 48640, elements: !904)
!903 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !911, !913, !914, !920, !921, !922, !923, !924, !925, !926, !927, !931, !949, !960, !1049, !1050, !1051, !1062, !1063, !1065, !1066, !1067, !1068, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1147, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1184, !1186, !1187, !1188, !1200, !1201, !1202, !1203, !1204, !1205, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1229, !1234, !1573, !1574, !1575, !1576, !1580, !1583, !1586, !1589, !1592, !1628, !1729, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1777, !1778, !1779, !1780, !1781, !1786, !1787, !1788, !1791, !1792, !3432, !3441, !3447, !3448, !3449, !3452, !3453, !3532, !3533, !3536, !3537, !3540, !3541, !3542, !3546, !3547, !3548, !3561, !3562, !3563, !3573, !3578, !3581, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !902, file: !903, line: 646, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !907, line: 56, size: 128, elements: !908)
!907 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !906, file: !907, line: 57, baseType: !218, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !906, file: !907, line: 58, baseType: !309, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !902, file: !903, line: 649, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !902, file: !903, line: 657, baseType: !464, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !902, file: !903, line: 658, baseType: !915, size: 32, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !916, line: 113, baseType: !917)
!916 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !916, line: 111, size: 32, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !917, file: !916, line: 112, baseType: !795, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !903, line: 660, baseType: !7, size: 32, offset: 288)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !902, file: !903, line: 661, baseType: !7, size: 32, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !902, file: !903, line: 684, baseType: !354, size: 32, offset: 352)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !902, file: !903, line: 686, baseType: !354, size: 32, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !902, file: !903, line: 687, baseType: !354, size: 32, offset: 416)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !902, file: !903, line: 688, baseType: !354, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !902, file: !903, line: 689, baseType: !7, size: 32, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !902, file: !903, line: 691, baseType: !928, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !903, line: 691, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !902, file: !903, line: 692, baseType: !932, size: 832, offset: 576)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !903, line: 451, size: 832, elements: !933)
!933 = !{!934, !939, !940, !941, !942, !943, !944, !945, !946, !947}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !932, file: !903, line: 453, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !903, line: 325, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !935, file: !903, line: 326, baseType: !218, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !935, file: !903, line: 327, baseType: !309, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !932, file: !903, line: 454, baseType: !756, size: 192, align: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !932, file: !903, line: 455, baseType: !231, size: 128, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !932, file: !903, line: 456, baseType: !7, size: 32, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !932, file: !903, line: 458, baseType: !315, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !932, file: !903, line: 459, baseType: !315, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !932, file: !903, line: 460, baseType: !315, size: 64, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !932, file: !903, line: 461, baseType: !315, size: 64, offset: 704)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !932, file: !903, line: 463, baseType: !315, size: 64, offset: 768)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !932, file: !903, line: 465, baseType: !948, offset: 832)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !903, line: 415, elements: !352)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !902, file: !903, line: 693, baseType: !950, size: 384, offset: 1408)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !903, line: 489, size: 384, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !950, file: !903, line: 490, baseType: !231, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !950, file: !903, line: 491, baseType: !218, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !950, file: !903, line: 492, baseType: !218, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !950, file: !903, line: 493, baseType: !7, size: 32, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !950, file: !903, line: 494, baseType: !247, size: 16, offset: 288)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !950, file: !903, line: 495, baseType: !247, size: 16, offset: 304)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !950, file: !903, line: 497, baseType: !959, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !902, file: !903, line: 697, baseType: !961, size: 1792, offset: 1792)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !903, line: 507, size: 1792, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !1046, !1047}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !961, file: !903, line: 508, baseType: !756, size: 192, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !961, file: !903, line: 515, baseType: !315, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !961, file: !903, line: 516, baseType: !315, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !961, file: !903, line: 517, baseType: !315, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !961, file: !903, line: 518, baseType: !315, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !961, file: !903, line: 519, baseType: !315, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !961, file: !903, line: 526, baseType: !592, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !961, file: !903, line: 527, baseType: !315, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !903, line: 528, baseType: !7, size: 32, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !961, file: !903, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !961, file: !903, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !961, file: !903, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !961, file: !903, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !961, file: !903, line: 563, baseType: !977, size: 512, offset: 704)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !978)
!978 = !{!979, !987, !988, !993, !1040, !1043, !1044, !1045}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !977, file: !12, line: 119, baseType: !980, size: 256)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !981, line: 9, size: 256, elements: !982)
!981 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !980, file: !981, line: 10, baseType: !756, size: 192, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !980, file: !981, line: 11, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !986, line: 29, baseType: !592)
!986 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !977, file: !12, line: 120, baseType: !985, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !977, file: !12, line: 121, baseType: !989, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!11, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !977, file: !12, line: 122, baseType: !994, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !996)
!996 = !{!997, !1017, !1018, !1021, !1026, !1027, !1035, !1039}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !995, file: !12, line: 160, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !999, file: !12, line: 215, baseType: !812)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !999, file: !12, line: 216, baseType: !7, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !999, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !999, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !999, file: !12, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !999, file: !12, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !999, file: !12, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !999, file: !12, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !999, file: !12, line: 233, baseType: !985, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !999, file: !12, line: 234, baseType: !992, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !999, file: !12, line: 235, baseType: !985, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !999, file: !12, line: 236, baseType: !992, size: 64, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !999, file: !12, line: 237, baseType: !1014, size: 4096, offset: 512)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, size: 4096, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 8)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !995, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !995, file: !12, line: 162, baseType: !1019, size: 32, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !232, line: 27, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !257, line: 96, baseType: !354)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !995, file: !12, line: 163, baseType: !1022, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !282, line: 276, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !282, line: 276, size: 32, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1023, file: !282, line: 276, baseType: !286, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !995, file: !12, line: 164, baseType: !992, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !995, file: !12, line: 165, baseType: !1028, size: 128, offset: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !981, line: 14, size: 128, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1028, file: !981, line: 15, baseType: !1031, size: 128)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !757, line: 125, size: 128, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1031, file: !757, line: 126, baseType: !773, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1031, file: !757, line: 127, baseType: !761, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !995, file: !12, line: 166, baseType: !1036, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!985}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !995, file: !12, line: 167, baseType: !985, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !977, file: !12, line: 123, baseType: !1041, size: 8, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !310, line: 17, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !312, line: 21, baseType: !321)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !977, file: !12, line: 124, baseType: !1041, size: 8, offset: 456)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !977, file: !12, line: 125, baseType: !1041, size: 8, offset: 464)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !977, file: !12, line: 126, baseType: !1041, size: 8, offset: 472)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !961, file: !903, line: 572, baseType: !977, size: 512, offset: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !961, file: !903, line: 580, baseType: !1048, size: 64, offset: 1728)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !902, file: !903, line: 721, baseType: !7, size: 32, offset: 3584)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !902, file: !903, line: 722, baseType: !354, size: 32, offset: 3616)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !902, file: !903, line: 723, baseType: !1052, size: 64, offset: 3648)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1055, line: 17, baseType: !1056)
!1055 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1055, line: 17, size: 64, elements: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1056, file: !1055, line: 17, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 1)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !902, file: !903, line: 724, baseType: !1054, size: 64, offset: 3712)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !902, file: !903, line: 749, baseType: !1064, offset: 3776)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !903, line: 290, elements: !352)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !902, file: !903, line: 751, baseType: !231, size: 128, offset: 3776)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !902, file: !903, line: 757, baseType: !765, size: 64, offset: 3904)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !902, file: !903, line: 758, baseType: !765, size: 64, offset: 3968)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !902, file: !903, line: 761, baseType: !1069, size: 320, offset: 4032)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !842, line: 34, size: 320, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1069, file: !842, line: 35, baseType: !315, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1069, file: !842, line: 36, baseType: !1073, size: 256, offset: 64)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 256, elements: !846)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !902, file: !903, line: 766, baseType: !354, size: 32, offset: 4352)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !902, file: !903, line: 767, baseType: !354, size: 32, offset: 4384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !902, file: !903, line: 768, baseType: !354, size: 32, offset: 4416)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !902, file: !903, line: 770, baseType: !354, size: 32, offset: 4448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !902, file: !903, line: 772, baseType: !218, size: 64, offset: 4480)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !902, file: !903, line: 775, baseType: !7, size: 32, offset: 4544)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !902, file: !903, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !902, file: !903, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !902, file: !903, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !902, file: !903, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !902, file: !903, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !902, file: !903, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !902, file: !903, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !902, file: !903, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !902, file: !903, line: 831, baseType: !218, size: 64, offset: 4672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !902, file: !903, line: 833, baseType: !1090, size: 384, offset: 4736)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !1091)
!1091 = !{!1092, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1090, file: !17, line: 26, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!135, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !17, line: 27, baseType: !1098, size: 320, offset: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !17, line: 27, size: 320, elements: !1099)
!1099 = !{!1100, !1110, !1137}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1098, file: !17, line: 36, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !17, line: 29, size: 320, elements: !1102)
!1102 = !{!1103, !1105, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1101, file: !17, line: 30, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1101, file: !17, line: 31, baseType: !309, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !17, line: 32, baseType: !309, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1101, file: !17, line: 33, baseType: !309, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1101, file: !17, line: 34, baseType: !315, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1101, file: !17, line: 35, baseType: !1104, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1098, file: !17, line: 46, baseType: !1111, size: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !17, line: 38, size: 192, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1136}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1111, file: !17, line: 39, baseType: !1019, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1111, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !17, line: 41, baseType: !1116, size: 64, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !17, line: 41, size: 64, elements: !1117)
!1117 = !{!1118, !1126}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1116, file: !17, line: 42, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1121, line: 7, size: 128, elements: !1122)
!1121 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1120, file: !1121, line: 8, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !257, line: 93, baseType: !442)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1120, file: !1121, line: 9, baseType: !442, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1116, file: !17, line: 43, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1129, line: 7, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1128, file: !1129, line: 8, baseType: !1132, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1129, line: 5, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !310, line: 20, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !312, line: 26, baseType: !354)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1128, file: !1129, line: 9, baseType: !1133, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1111, file: !17, line: 45, baseType: !315, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1098, file: !17, line: 54, baseType: !1138, size: 256)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !17, line: 48, size: 256, elements: !1139)
!1139 = !{!1140, !1143, !1144, !1145, !1146}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1138, file: !17, line: 49, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1138, file: !17, line: 50, baseType: !354, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1138, file: !17, line: 51, baseType: !354, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1138, file: !17, line: 52, baseType: !218, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1138, file: !17, line: 53, baseType: !218, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !902, file: !903, line: 835, baseType: !1148, size: 32, offset: 5120)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !232, line: 22, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !257, line: 28, baseType: !354)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !902, file: !903, line: 836, baseType: !1148, size: 32, offset: 5152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !902, file: !903, line: 840, baseType: !218, size: 64, offset: 5184)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !902, file: !903, line: 849, baseType: !901, size: 64, offset: 5248)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !902, file: !903, line: 852, baseType: !901, size: 64, offset: 5312)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !902, file: !903, line: 857, baseType: !231, size: 128, offset: 5376)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !902, file: !903, line: 858, baseType: !231, size: 128, offset: 5504)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !902, file: !903, line: 859, baseType: !901, size: 64, offset: 5632)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !902, file: !903, line: 867, baseType: !231, size: 128, offset: 5696)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !902, file: !903, line: 868, baseType: !231, size: 128, offset: 5824)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !902, file: !903, line: 871, baseType: !1160, size: 64, offset: 5952)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !101, line: 59, size: 768, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1168, !1169, !1175, !1176}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1161, file: !101, line: 61, baseType: !915, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1161, file: !101, line: 62, baseType: !7, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !101, line: 63, baseType: !338, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1161, file: !101, line: 65, baseType: !1167, size: 256, offset: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 256, elements: !846)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1161, file: !101, line: 66, baseType: !475, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1161, file: !101, line: 68, baseType: !1170, size: 128, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !698, line: 40, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !698, line: 36, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1171, file: !698, line: 37, baseType: !338)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1171, file: !698, line: 38, baseType: !231, size: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1161, file: !101, line: 69, baseType: !634, size: 128, align: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1161, file: !101, line: 70, baseType: !1177, size: 128, offset: 640)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 128, elements: !1060)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !101, line: 54, size: 128, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1178, file: !101, line: 55, baseType: !354, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1178, file: !101, line: 56, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !101, line: 56, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !902, file: !903, line: 872, baseType: !1185, size: 512, offset: 6016)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 512, elements: !846)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !902, file: !903, line: 873, baseType: !231, size: 128, offset: 6528)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !902, file: !903, line: 874, baseType: !231, size: 128, offset: 6656)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !902, file: !903, line: 876, baseType: !1189, size: 64, offset: 6784)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1191, line: 26, size: 192, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1190, file: !1191, line: 27, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1190, file: !1191, line: 28, baseType: !1195, size: 128, offset: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1196, line: 43, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1195, file: !1196, line: 44, baseType: !812)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1195, file: !1196, line: 45, baseType: !231, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !902, file: !903, line: 879, baseType: !561, size: 64, offset: 6848)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !902, file: !903, line: 882, baseType: !561, size: 64, offset: 6912)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !902, file: !903, line: 884, baseType: !315, size: 64, offset: 6976)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !902, file: !903, line: 885, baseType: !315, size: 64, offset: 7040)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !902, file: !903, line: 890, baseType: !315, size: 64, offset: 7104)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !902, file: !903, line: 891, baseType: !1206, size: 128, offset: 7168)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !903, line: 242, size: 128, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1206, file: !903, line: 244, baseType: !315, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1206, file: !903, line: 245, baseType: !315, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1206, file: !903, line: 246, baseType: !812, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !902, file: !903, line: 900, baseType: !218, size: 64, offset: 7296)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !902, file: !903, line: 901, baseType: !218, size: 64, offset: 7360)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !902, file: !903, line: 904, baseType: !315, size: 64, offset: 7424)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !902, file: !903, line: 907, baseType: !315, size: 64, offset: 7488)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !902, file: !903, line: 910, baseType: !218, size: 64, offset: 7552)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !902, file: !903, line: 911, baseType: !218, size: 64, offset: 7616)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !902, file: !903, line: 914, baseType: !1218, size: 640, offset: 7680)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1219, line: 123, size: 640, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1227, !1228}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1218, file: !1219, line: 124, baseType: !1222, size: 576)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 576, elements: !491)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1219, line: 108, size: 192, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1223, file: !1219, line: 109, baseType: !315, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1223, file: !1219, line: 110, baseType: !1028, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1218, file: !1219, line: 125, baseType: !7, size: 32, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1218, file: !1219, line: 126, baseType: !7, size: 32, offset: 608)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !902, file: !903, line: 917, baseType: !1230, size: 192, offset: 8320)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1219, line: 134, size: 192, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1230, file: !1219, line: 135, baseType: !634, size: 128, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1230, file: !1219, line: 136, baseType: !7, size: 32, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !902, file: !903, line: 923, baseType: !1235, size: 64, offset: 8512)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1238, line: 111, size: 1280, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1259, !1260, !1261, !1262, !1263, !1264, !1374, !1375, !1376, !1377, !1403, !1558, !1568}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1237, file: !1238, line: 112, baseType: !795, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1237, file: !1238, line: 120, baseType: !250, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1237, file: !1238, line: 121, baseType: !259, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1237, file: !1238, line: 122, baseType: !250, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1237, file: !1238, line: 123, baseType: !259, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1237, file: !1238, line: 124, baseType: !250, size: 32, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1237, file: !1238, line: 125, baseType: !259, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1237, file: !1238, line: 126, baseType: !250, size: 32, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1237, file: !1238, line: 127, baseType: !259, size: 32, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1237, file: !1238, line: 128, baseType: !7, size: 32, offset: 288)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1237, file: !1238, line: 129, baseType: !1251, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1252, line: 26, baseType: !1253)
!1252 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1252, line: 24, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1253, file: !1252, line: 25, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 2)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1237, file: !1238, line: 130, baseType: !1251, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1237, file: !1238, line: 131, baseType: !1251, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1237, file: !1238, line: 132, baseType: !1251, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1237, file: !1238, line: 133, baseType: !1251, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1237, file: !1238, line: 135, baseType: !321, size: 8, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1237, file: !1238, line: 137, baseType: !1265, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1267, line: 189, size: 1664, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1270, !1273, !1278, !1279, !1282, !1283, !1290, !1291, !1292, !1293, !1296, !1297, !1298, !1299, !1300, !1338, !1359}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1266, file: !1267, line: 190, baseType: !915, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1266, file: !1267, line: 191, baseType: !1271, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1267, line: 28, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !232, line: 98, baseType: !1133)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 192, baseType: !1274, size: 192, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 192, size: 192, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1274, file: !1267, line: 193, baseType: !231, size: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1274, file: !1267, line: 194, baseType: !756, size: 192, align: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1266, file: !1267, line: 199, baseType: !806, size: 256, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1266, file: !1267, line: 200, baseType: !1280, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1267, line: 200, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1266, file: !1267, line: 201, baseType: !464, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 202, baseType: !1284, size: 64, offset: 640)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 202, size: 64, elements: !1285)
!1285 = !{!1286, !1289}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1284, file: !1267, line: 203, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1288, line: 8, baseType: !593)
!1288 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1284, file: !1267, line: 204, baseType: !1287, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1266, file: !1267, line: 206, baseType: !1287, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1266, file: !1267, line: 207, baseType: !250, size: 32, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1266, file: !1267, line: 208, baseType: !259, size: 32, offset: 800)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1266, file: !1267, line: 209, baseType: !1294, size: 32, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1267, line: 31, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !232, line: 104, baseType: !309)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1266, file: !1267, line: 210, baseType: !247, size: 16, offset: 864)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1266, file: !1267, line: 211, baseType: !247, size: 16, offset: 880)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1266, file: !1267, line: 215, baseType: !890, size: 16, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 222, baseType: !218, size: 64, offset: 960)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 239, baseType: !1301, size: 320, offset: 1024)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 239, size: 320, elements: !1302)
!1302 = !{!1303, !1330}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1301, file: !1267, line: 240, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1267, line: 108, size: 320, elements: !1305)
!1305 = !{!1306, !1307, !1319, !1322, !1329}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1304, file: !1267, line: 110, baseType: !218, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1267, line: 111, baseType: !1308, size: 64, offset: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !1267, line: 111, size: 64, elements: !1309)
!1309 = !{!1310, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1267, line: 112, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1267, line: 112, size: 64, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1311, file: !1267, line: 114, baseType: !682, size: 16)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1311, file: !1267, line: 115, baseType: !1315, size: 48, offset: 16)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 48, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 6)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1308, file: !1267, line: 121, baseType: !218, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1304, file: !1267, line: 123, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1267, line: 96, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1304, file: !1267, line: 124, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1267, line: 102, size: 192, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1324, file: !1267, line: 103, baseType: !634, size: 128, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1324, file: !1267, line: 104, baseType: !915, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1324, file: !1267, line: 105, baseType: !421, size: 8, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1304, file: !1267, line: 125, baseType: !376, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1267, line: 241, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1267, line: 241, size: 320, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1331, file: !1267, line: 242, baseType: !218, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1331, file: !1267, line: 243, baseType: !218, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1267, line: 244, baseType: !1320, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1331, file: !1267, line: 245, baseType: !1323, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1331, file: !1267, line: 246, baseType: !402, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 254, baseType: !1339, size: 256, offset: 1344)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 254, size: 256, elements: !1340)
!1340 = !{!1341, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1339, file: !1267, line: 255, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1267, line: 128, size: 256, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1342, file: !1267, line: 129, baseType: !464, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1342, file: !1267, line: 130, baseType: !1346, size: 256)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 256, elements: !846)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1267, line: 256, baseType: !1348, size: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !1267, line: 256, size: 256, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1348, file: !1267, line: 258, baseType: !231, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1348, file: !1267, line: 259, baseType: !1352, size: 128, offset: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1353, line: 22, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !{!1355, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1352, file: !1353, line: 23, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1353, line: 23, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1352, file: !1353, line: 24, baseType: !218, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1266, file: !1267, line: 274, baseType: !1360, size: 64, offset: 1600)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1267, line: 170, size: 192, elements: !1362)
!1362 = !{!1363, !1372, !1373}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1361, file: !1267, line: 171, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1267, line: 165, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!354, !1265, !1368, !1370, !1265}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1361, file: !1267, line: 172, baseType: !1265, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1361, file: !1267, line: 173, baseType: !1320, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1237, file: !1238, line: 138, baseType: !1265, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1237, file: !1238, line: 139, baseType: !1265, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1237, file: !1238, line: 140, baseType: !1265, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1237, file: !1238, line: 145, baseType: !1378, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1380, line: 13, size: 896, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1379, file: !1380, line: 14, baseType: !915, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1379, file: !1380, line: 15, baseType: !795, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1379, file: !1380, line: 16, baseType: !795, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1379, file: !1380, line: 21, baseType: !586, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1379, file: !1380, line: 27, baseType: !218, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1379, file: !1380, line: 28, baseType: !218, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1379, file: !1380, line: 29, baseType: !586, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1379, file: !1380, line: 32, baseType: !479, size: 128, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1379, file: !1380, line: 33, baseType: !250, size: 32, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1379, file: !1380, line: 37, baseType: !586, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1379, file: !1380, line: 44, baseType: !1393, size: 256, offset: 640)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1394, line: 15, size: 256, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1393, file: !1394, line: 16, baseType: !812)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1393, file: !1394, line: 18, baseType: !354, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1393, file: !1394, line: 19, baseType: !354, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1393, file: !1394, line: 20, baseType: !354, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1393, file: !1394, line: 21, baseType: !354, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1393, file: !1394, line: 22, baseType: !218, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1393, file: !1394, line: 23, baseType: !218, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1237, file: !1238, line: 146, baseType: !1404, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1406, line: 56, size: 4160, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1447, !1448, !1449, !1450, !1451, !1462, !1543, !1544, !1556}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1405, file: !1406, line: 57, baseType: !1409, size: 576)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1406, line: 23, size: 576, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1409, file: !1406, line: 24, baseType: !309, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1406, line: 25, baseType: !1413, size: 512, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1406, line: 25, size: 512, elements: !1414)
!1414 = !{!1415, !1424}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1413, file: !1406, line: 26, baseType: !1416, size: 480)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 480, elements: !1422)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1406, line: 17, size: 96, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1417, file: !1406, line: 18, baseType: !309, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1417, file: !1406, line: 19, baseType: !309, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1417, file: !1406, line: 20, baseType: !309, size: 32, offset: 64)
!1422 = !{!1423}
!1423 = !DISubrange(count: 5)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1406, line: 27, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1406, line: 27, size: 128, elements: !1426)
!1426 = !{!1427, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1425, file: !1406, line: 28, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1425, file: !1406, line: 29, baseType: !1428, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1405, file: !1406, line: 58, baseType: !1409, size: 576, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1405, file: !1406, line: 59, baseType: !1409, size: 576, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1405, file: !1406, line: 60, baseType: !795, size: 32, offset: 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1405, file: !1406, line: 61, baseType: !1404, size: 64, offset: 1792)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1405, file: !1406, line: 62, baseType: !354, size: 32, offset: 1856)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1405, file: !1406, line: 63, baseType: !250, size: 32, offset: 1888)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1405, file: !1406, line: 64, baseType: !259, size: 32, offset: 1920)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1405, file: !1406, line: 65, baseType: !1438, size: 192, offset: 1984)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1439, line: 7, size: 192, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1446}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1438, file: !1439, line: 8, baseType: !586, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1438, file: !1439, line: 9, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1439, line: 5, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1438, file: !1439, line: 10, baseType: !7, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 66, baseType: !218, size: 64, offset: 2176)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1405, file: !1406, line: 74, baseType: !231, size: 128, offset: 2240)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1405, file: !1406, line: 75, baseType: !1265, size: 64, offset: 2368)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1405, file: !1406, line: 76, baseType: !806, size: 256, offset: 2432)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1405, file: !1406, line: 83, baseType: !1452, size: 256, offset: 2688)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !134, line: 102, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1452, file: !134, line: 103, baseType: !586, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1452, file: !134, line: 104, baseType: !231, size: 128, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1452, file: !134, line: 105, baseType: !1457, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !134, line: 21, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1405, file: !1406, line: 85, baseType: !1463, size: 768, offset: 2944)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !1464, line: 156, size: 768, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1463, file: !1464, line: 157, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!354, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1463, file: !1464, line: 158, baseType: !1472, size: 704, offset: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !1464, line: 150, size: 704, elements: !1473)
!1473 = !{!1474, !1542}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1472, file: !1464, line: 152, baseType: !1475, size: 640)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !1464, line: 131, size: 640, elements: !1476)
!1476 = !{!1477, !1510, !1511, !1512, !1532, !1533, !1535, !1541}
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1464, line: 132, baseType: !1478, size: 192)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1475, file: !1464, line: 132, size: 192, elements: !1479)
!1479 = !{!1480, !1509}
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1464, line: 133, baseType: !1481, size: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1464, line: 133, size: 192, elements: !1482)
!1482 = !{!1483, !1506, !1507, !1508}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1481, file: !1464, line: 134, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !1464, line: 112, size: 512, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1498, !1504, !1505}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !1485, file: !1464, line: 113, baseType: !376, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1485, file: !1464, line: 114, baseType: !464, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1485, file: !1464, line: 115, baseType: !354, size: 32, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1485, file: !1464, line: 116, baseType: !246, size: 16, offset: 160)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1485, file: !1464, line: 117, baseType: !1484, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !1485, file: !1464, line: 118, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !1464, line: 47, baseType: !1495)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!354, !1484, !354, !464, !1497, !605}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1485, file: !1464, line: 119, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !1464, line: 94, size: 192, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1500, file: !1464, line: 95, baseType: !795, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1500, file: !1464, line: 96, baseType: !1170, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !1485, file: !1464, line: 120, baseType: !464, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !1485, file: !1464, line: 121, baseType: !464, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1481, file: !1464, line: 135, baseType: !354, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1481, file: !1464, line: 136, baseType: !354, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1481, file: !1464, line: 137, baseType: !354, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1478, file: !1464, line: 139, baseType: !634, size: 128, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1475, file: !1464, line: 141, baseType: !1189, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1475, file: !1464, line: 142, baseType: !1484, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1475, file: !1464, line: 143, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !1464, line: 161, size: 960, elements: !1515)
!1515 = !{!1516, !1517, !1521, !1528}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1514, file: !1464, line: 162, baseType: !1463, size: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1514, file: !1464, line: 163, baseType: !1518, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1470, !1513}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1514, file: !1464, line: 164, baseType: !1522, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1525, !1484, !1526, !1527}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1514, file: !1464, line: 167, baseType: !1529, size: 64, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!354, !1525, !1484}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1475, file: !1464, line: 144, baseType: !1470, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1475, file: !1464, line: 145, baseType: !1534, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1475, file: !1464, line: 146, baseType: !1536, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !1464, line: 124, size: 256, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1537, file: !1464, line: 125, baseType: !756, size: 192, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1537, file: !1464, line: 126, baseType: !1525, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1475, file: !1464, line: 147, baseType: !475, size: 64, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1472, file: !1464, line: 153, baseType: !773, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1405, file: !1406, line: 86, baseType: !1525, size: 64, offset: 3712)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1405, file: !1406, line: 88, baseType: !1545, size: 64, offset: 3776)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1406, line: 92, size: 576, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1546, file: !1406, line: 93, baseType: !479, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1546, file: !1406, line: 94, baseType: !1404, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !1406, line: 95, baseType: !250, size: 32, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1546, file: !1406, line: 96, baseType: !354, size: 32, offset: 224)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1546, file: !1406, line: 97, baseType: !1553, size: 320, offset: 256)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 320, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 10)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1405, file: !1406, line: 89, baseType: !1557, size: 320, offset: 3840)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 320, elements: !1554)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1237, file: !1238, line: 147, baseType: !1559, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1238, line: 25, size: 64, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1560, file: !1238, line: 26, baseType: !795, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1560, file: !1238, line: 27, baseType: !354, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1560, file: !1238, line: 28, baseType: !1565, offset: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !1566)
!1566 = !{!1567}
!1567 = !DISubrange(count: 0)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1238, line: 149, baseType: !1569, size: 128, offset: 1152)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !1238, line: 149, size: 128, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1569, file: !1238, line: 150, baseType: !354, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1569, file: !1238, line: 151, baseType: !634, size: 128, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !902, file: !903, line: 926, baseType: !1235, size: 64, offset: 8576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !902, file: !903, line: 929, baseType: !1235, size: 64, offset: 8640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !902, file: !903, line: 933, baseType: !1265, size: 64, offset: 8704)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !902, file: !903, line: 943, baseType: !1577, size: 128, offset: 8768)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !1578)
!1578 = !{!1579}
!1579 = !DISubrange(count: 16)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !902, file: !903, line: 945, baseType: !1581, size: 64, offset: 8896)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !903, line: 49, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !902, file: !903, line: 956, baseType: !1584, size: 64, offset: 8960)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !903, line: 45, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !902, file: !903, line: 959, baseType: !1587, size: 64, offset: 9024)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !903, line: 959, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !902, file: !903, line: 962, baseType: !1590, size: 64, offset: 9088)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !903, line: 66, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !902, file: !903, line: 966, baseType: !1593, size: 64, offset: 9152)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1595, line: 31, size: 576, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1598, !1601, !1604, !1607, !1608, !1611, !1614, !1615}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1594, file: !1595, line: 32, baseType: !795, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1594, file: !1595, line: 33, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1595, line: 9, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1594, file: !1595, line: 34, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1595, line: 10, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1594, file: !1595, line: 35, baseType: !1605, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1595, line: 8, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1594, file: !1595, line: 36, baseType: !1182, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1594, file: !1595, line: 37, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1267, line: 34, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1594, file: !1595, line: 38, baseType: !1612, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1595, line: 38, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1594, file: !1595, line: 39, baseType: !1612, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1594, file: !1595, line: 40, baseType: !1616, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1618, line: 856, size: 448, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1617, file: !1618, line: 857, baseType: !915, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1617, file: !1618, line: 858, baseType: !1438, size: 192, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1617, file: !1618, line: 859, baseType: !1404, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1617, file: !1618, line: 860, baseType: !1545, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1617, file: !1618, line: 861, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1627, line: 16, flags: DIFlagFwdDecl)
!1627 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !902, file: !903, line: 969, baseType: !1629, size: 64, offset: 9216)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1631, line: 82, size: 7296, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1668, !1677, !1678, !1680, !1681, !1682, !1685, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1715, !1716, !1723, !1724, !1725, !1726, !1727, !1728}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1630, file: !1631, line: 83, baseType: !915, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1630, file: !1631, line: 84, baseType: !795, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1630, file: !1631, line: 85, baseType: !354, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1630, file: !1631, line: 86, baseType: !231, size: 128, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1630, file: !1631, line: 88, baseType: !1170, size: 128, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1630, file: !1631, line: 91, baseType: !901, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1630, file: !1631, line: 94, baseType: !1640, size: 192, offset: 448)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1641, line: 30, size: 192, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1640, file: !1641, line: 31, baseType: !231, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1640, file: !1641, line: 32, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1646, line: 25, baseType: !1647)
!1646 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1646, line: 23, size: 64, elements: !1648)
!1648 = !{!1649}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1647, file: !1646, line: 24, baseType: !1059, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1630, file: !1631, line: 97, baseType: !475, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1630, file: !1631, line: 100, baseType: !354, size: 32, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1630, file: !1631, line: 106, baseType: !354, size: 32, offset: 736)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1630, file: !1631, line: 107, baseType: !901, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1630, file: !1631, line: 110, baseType: !354, size: 32, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1631, line: 111, baseType: !7, size: 32, offset: 864)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1630, file: !1631, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1630, file: !1631, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1630, file: !1631, line: 128, baseType: !354, size: 32, offset: 928)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1630, file: !1631, line: 129, baseType: !231, size: 128, offset: 960)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1630, file: !1631, line: 132, baseType: !977, size: 512, offset: 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1630, file: !1631, line: 133, baseType: !985, size: 64, offset: 1600)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1630, file: !1631, line: 140, baseType: !1663, size: 256, offset: 1664)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1664, size: 256, elements: !1257)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1631, line: 38, size: 128, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1664, file: !1631, line: 39, baseType: !315, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1664, file: !1631, line: 40, baseType: !315, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1630, file: !1631, line: 146, baseType: !1669, size: 192, offset: 1920)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1631, line: 66, size: 192, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1669, file: !1631, line: 67, baseType: !1672, size: 192)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1631, line: 47, size: 192, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1672, file: !1631, line: 48, baseType: !588, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1672, file: !1631, line: 49, baseType: !588, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1672, file: !1631, line: 50, baseType: !588, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1630, file: !1631, line: 150, baseType: !1218, size: 640, offset: 2112)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1630, file: !1631, line: 153, baseType: !1679, size: 256, offset: 2752)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 256, elements: !846)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1630, file: !1631, line: 159, baseType: !1160, size: 64, offset: 3008)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1630, file: !1631, line: 162, baseType: !354, size: 32, offset: 3072)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1630, file: !1631, line: 164, baseType: !1683, size: 64, offset: 3136)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1631, line: 164, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1630, file: !1631, line: 175, baseType: !1686, size: 32, offset: 3200)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !282, line: 805, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 798, size: 32, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1687, file: !282, line: 803, baseType: !281, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1687, file: !282, line: 804, baseType: !338, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1630, file: !1631, line: 176, baseType: !315, size: 64, offset: 3264)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1630, file: !1631, line: 176, baseType: !315, size: 64, offset: 3328)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1630, file: !1631, line: 176, baseType: !315, size: 64, offset: 3392)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1630, file: !1631, line: 176, baseType: !315, size: 64, offset: 3456)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1630, file: !1631, line: 177, baseType: !315, size: 64, offset: 3520)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1630, file: !1631, line: 178, baseType: !315, size: 64, offset: 3584)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1630, file: !1631, line: 179, baseType: !1206, size: 128, offset: 3648)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1630, file: !1631, line: 180, baseType: !218, size: 64, offset: 3776)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1630, file: !1631, line: 180, baseType: !218, size: 64, offset: 3840)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1630, file: !1631, line: 180, baseType: !218, size: 64, offset: 3904)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1630, file: !1631, line: 180, baseType: !218, size: 64, offset: 3968)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1630, file: !1631, line: 181, baseType: !218, size: 64, offset: 4032)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1630, file: !1631, line: 181, baseType: !218, size: 64, offset: 4096)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1630, file: !1631, line: 181, baseType: !218, size: 64, offset: 4160)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1630, file: !1631, line: 181, baseType: !218, size: 64, offset: 4224)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1630, file: !1631, line: 182, baseType: !218, size: 64, offset: 4288)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1630, file: !1631, line: 182, baseType: !218, size: 64, offset: 4352)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1630, file: !1631, line: 182, baseType: !218, size: 64, offset: 4416)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1630, file: !1631, line: 182, baseType: !218, size: 64, offset: 4480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1630, file: !1631, line: 183, baseType: !218, size: 64, offset: 4544)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1630, file: !1631, line: 183, baseType: !218, size: 64, offset: 4608)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1630, file: !1631, line: 184, baseType: !1713, offset: 4672)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1714, line: 12, elements: !352)
!1714 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1630, file: !1631, line: 192, baseType: !317, size: 64, offset: 4672)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1630, file: !1631, line: 203, baseType: !1717, size: 2048, offset: 4736)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1718, size: 2048, elements: !1578)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1719, line: 43, size: 128, elements: !1720)
!1719 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1718, file: !1719, line: 44, baseType: !575, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1718, file: !1719, line: 45, baseType: !575, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1630, file: !1631, line: 220, baseType: !421, size: 8, offset: 6784)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1630, file: !1631, line: 221, baseType: !890, size: 16, offset: 6800)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1630, file: !1631, line: 222, baseType: !890, size: 16, offset: 6816)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1630, file: !1631, line: 224, baseType: !765, size: 64, offset: 6848)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1630, file: !1631, line: 227, baseType: !582, size: 192, offset: 6912)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1630, file: !1631, line: 233, baseType: !582, size: 192, offset: 7104)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !902, file: !903, line: 970, baseType: !1730, size: 64, offset: 9280)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1631, line: 20, size: 16576, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1731, file: !1631, line: 21, baseType: !338)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !1631, line: 22, baseType: !915, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1731, file: !1631, line: 23, baseType: !1170, size: 128, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1731, file: !1631, line: 24, baseType: !1737, size: 16384, offset: 192)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1738, size: 16384, elements: !1758)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1641, line: 49, size: 256, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1738, file: !1641, line: 50, baseType: !1741, size: 256)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1641, line: 35, size: 256, elements: !1742)
!1742 = !{!1743, !1750, !1751, !1757}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1741, file: !1641, line: 37, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1745, line: 19, baseType: !1746)
!1745 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1745, line: 18, baseType: !1748)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !354}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1741, file: !1641, line: 38, baseType: !218, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1741, file: !1641, line: 44, baseType: !1752, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1745, line: 22, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1745, line: 21, baseType: !1755)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1741, file: !1641, line: 46, baseType: !1645, size: 64, offset: 192)
!1758 = !{!1759}
!1759 = !DISubrange(count: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !902, file: !903, line: 971, baseType: !1645, size: 64, offset: 9344)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !902, file: !903, line: 972, baseType: !1645, size: 64, offset: 9408)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !902, file: !903, line: 974, baseType: !1645, size: 64, offset: 9472)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !902, file: !903, line: 975, baseType: !1640, size: 192, offset: 9536)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !902, file: !903, line: 976, baseType: !218, size: 64, offset: 9728)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !902, file: !903, line: 977, baseType: !573, size: 64, offset: 9792)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !902, file: !903, line: 978, baseType: !7, size: 32, offset: 9856)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !902, file: !903, line: 980, baseType: !637, size: 64, offset: 9920)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !902, file: !903, line: 989, baseType: !1769, size: 128, offset: 9984)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1770, line: 35, size: 128, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !{!1772, !1773, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1769, file: !1770, line: 36, baseType: !354, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1769, file: !1770, line: 37, baseType: !795, size: 32, offset: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1769, file: !1770, line: 38, baseType: !1775, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1770, line: 23, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !902, file: !903, line: 992, baseType: !315, size: 64, offset: 10112)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !902, file: !903, line: 993, baseType: !315, size: 64, offset: 10176)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !902, file: !903, line: 996, baseType: !338, offset: 10240)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !902, file: !903, line: 999, baseType: !812, offset: 10240)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !902, file: !903, line: 1001, baseType: !1782, size: 64, offset: 10240)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !903, line: 636, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1782, file: !903, line: 637, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !902, file: !903, line: 1005, baseType: !1031, size: 128, offset: 10304)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !902, file: !903, line: 1007, baseType: !901, size: 64, offset: 10432)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !902, file: !903, line: 1009, baseType: !1789, size: 64, offset: 10496)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !903, line: 1009, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !902, file: !903, line: 1043, baseType: !464, size: 64, offset: 10560)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !902, file: !903, line: 1046, baseType: !1793, size: 64, offset: 10624)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1795, line: 554, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !3431}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1794, file: !1795, line: 555, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1800, line: 203, size: 832, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3399, !3404, !3405, !3424, !3425, !3426, !3427, !3428, !3430}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1799, file: !1800, line: 204, baseType: !1798, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1799, file: !1800, line: 205, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1806, line: 167, size: 8512, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810, !1811, !1813, !1814, !1815, !2689, !2690, !2863, !3366, !3367, !3368, !3369, !3370, !3371, !3374, !3375, !3378, !3379, !3380, !3383}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1805, file: !1806, line: 171, baseType: !354, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1805, file: !1806, line: 172, baseType: !354, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1805, file: !1806, line: 173, baseType: !354, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1805, file: !1806, line: 176, baseType: !1812, size: 256, offset: 96)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !325)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1805, file: !1806, line: 178, baseType: !247, size: 16, offset: 352)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1805, file: !1806, line: 179, baseType: !247, size: 16, offset: 368)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1805, file: !1806, line: 186, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1806, line: 149, size: 256, elements: !1818)
!1818 = !{!1819, !1820, !1821, !2685}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1817, file: !1806, line: 150, baseType: !634, size: 128, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1817, file: !1806, line: 151, baseType: !354, size: 32, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1817, file: !1806, line: 152, baseType: !1822, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1806, line: 53, size: 6592, elements: !1824)
!1824 = !{!1825, !1827, !1828, !1829, !1832, !1853, !2664, !2665, !2666, !2667, !2677}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1823, file: !1806, line: 54, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !232, line: 125, baseType: !315)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1823, file: !1806, line: 60, baseType: !1826, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1823, file: !1806, line: 64, baseType: !218, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1823, file: !1806, line: 65, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1806, line: 65, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1823, file: !1806, line: 66, baseType: !1833, size: 128, offset: 256)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1834, line: 105, size: 128, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1833, file: !1834, line: 110, baseType: !218, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1833, file: !1834, line: 118, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1834, line: 95, size: 448, elements: !1840)
!1840 = !{!1841, !1842, !1848, !1849, !1850, !1851, !1852}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !1834, line: 96, baseType: !586, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1839, file: !1834, line: 97, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1834, line: 60, baseType: !1845)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1839, file: !1834, line: 98, baseType: !1843, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1839, file: !1834, line: 99, baseType: !421, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1839, file: !1834, line: 100, baseType: !421, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1839, file: !1834, line: 101, baseType: !634, size: 128, align: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1839, file: !1834, line: 102, baseType: !1847, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1823, file: !1806, line: 68, baseType: !1854, size: 5568, offset: 384)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !41, line: 461, size: 5568, elements: !1855)
!1855 = !{!1856, !2235, !2237, !2240, !2241, !2292, !2365, !2366, !2367, !2368, !2369, !2378, !2483, !2496, !2499, !2500, !2504, !2506, !2507, !2508, !2512, !2518, !2519, !2522, !2526, !2616, !2617, !2618, !2619, !2620, !2652, !2653, !2654, !2657, !2660, !2661, !2662, !2663}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1854, file: !41, line: 462, baseType: !1857, size: 512)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1858, line: 64, size: 512, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862, !1864, !1904, !2007, !2225, !2230, !2231, !2232, !2233, !2234}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 65, baseType: !376, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1857, file: !1858, line: 66, baseType: !231, size: 128, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1857, file: !1858, line: 67, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1857, file: !1858, line: 68, baseType: !1865, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1858, line: 192, size: 704, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1866, file: !1858, line: 193, baseType: !231, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1866, file: !1858, line: 194, baseType: !338, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1866, file: !1858, line: 195, baseType: !1857, size: 512, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1866, file: !1858, line: 196, baseType: !1872, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1858, line: 156, size: 192, elements: !1875)
!1875 = !{!1876, !1881, !1886}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1874, file: !1858, line: 157, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!354, !1865, !1863}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1874, file: !1858, line: 158, baseType: !1882, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!376, !1865, !1863}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1874, file: !1858, line: 159, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!354, !1865, !1863, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1858, line: 148, size: 20736, elements: !1893)
!1893 = !{!1894, !1896, !1898, !1899, !1903}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1892, file: !1858, line: 149, baseType: !1895, size: 192)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 192, elements: !491)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1892, file: !1858, line: 150, baseType: !1897, size: 4096, offset: 192)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 4096, elements: !1758)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1892, file: !1858, line: 151, baseType: !354, size: 32, offset: 4288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1892, file: !1858, line: 152, baseType: !1900, size: 16384, offset: 4320)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 16384, elements: !1901)
!1901 = !{!1902}
!1902 = !DISubrange(count: 2048)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1892, file: !1858, line: 153, baseType: !354, size: 32, offset: 20704)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1857, file: !1858, line: 69, baseType: !1905, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1858, line: 138, size: 448, elements: !1907)
!1907 = !{!1908, !1912, !1931, !1933, !1966, !1999, !2003}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1906, file: !1858, line: 139, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !1863}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1906, file: !1858, line: 140, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1916, line: 230, size: 128, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !{!1918, !1927}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1915, file: !1916, line: 231, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!659, !1863, !1922, !402}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1916, line: 30, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1923, file: !1916, line: 31, baseType: !376, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1923, file: !1916, line: 32, baseType: !246, size: 16, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1915, file: !1916, line: 232, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!659, !1863, !1922, !376, !573}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1906, file: !1858, line: 141, baseType: !1932, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1906, file: !1858, line: 142, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1916, line: 84, size: 320, elements: !1938)
!1938 = !{!1939, !1940, !1944, !1963, !1964}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !1916, line: 85, baseType: !376, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1937, file: !1916, line: 86, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!246, !1863, !1922, !354}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1937, file: !1916, line: 88, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!246, !1863, !1948, !354}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1916, line: 168, size: 448, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1958, !1959}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1949, file: !1916, line: 169, baseType: !1923, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1949, file: !1916, line: 170, baseType: !573, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1949, file: !1916, line: 171, baseType: !464, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1949, file: !1916, line: 172, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!659, !654, !1863, !1948, !402, !440, !573}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1949, file: !1916, line: 174, baseType: !1955, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1949, file: !1916, line: 176, baseType: !1960, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!354, !654, !1863, !1948, !748}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1937, file: !1916, line: 90, baseType: !1932, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1937, file: !1916, line: 91, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1906, file: !1858, line: 143, baseType: !1967, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1970, !1863}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !23, line: 39, size: 384, elements: !1973)
!1973 = !{!1974, !1975, !1979, !1983, !1991, !1995}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1972, file: !23, line: 40, baseType: !22, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1972, file: !23, line: 41, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!421}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1972, file: !23, line: 42, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!464}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1972, file: !23, line: 43, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1987, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !23, line: 19, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1972, file: !23, line: 44, baseType: !1992, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1987}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1972, file: !23, line: 45, baseType: !1996, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !464}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1906, file: !1858, line: 144, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!1987, !1863}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1906, file: !1858, line: 145, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1863, !1526, !1527}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1857, file: !1858, line: 70, baseType: !2008, size: 64, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !455, line: 123, size: 1024, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2218, !2219, !2220, !2221, !2222}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2009, file: !455, line: 124, baseType: !795, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2009, file: !455, line: 125, baseType: !795, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2009, file: !455, line: 135, baseType: !2008, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2009, file: !455, line: 136, baseType: !376, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2009, file: !455, line: 138, baseType: !756, size: 192, align: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2009, file: !455, line: 140, baseType: !1987, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2009, file: !455, line: 141, baseType: !7, size: 32, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !455, line: 142, baseType: !2019, size: 256, offset: 512)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !455, line: 142, size: 256, elements: !2020)
!2020 = !{!2021, !2074, !2078}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2019, file: !455, line: 143, baseType: !2022, size: 192)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !455, line: 91, size: 192, elements: !2023)
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2022, file: !455, line: 92, baseType: !218, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2022, file: !455, line: 94, baseType: !773, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2022, file: !455, line: 100, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !455, line: 180, size: 704, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2046, !2047, !2048, !2072, !2073}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2028, file: !455, line: 182, baseType: !2008, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !455, line: 183, baseType: !7, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2028, file: !455, line: 186, baseType: !2033, size: 192, offset: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2034, line: 19, size: 192, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2044, !2045}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2033, file: !2034, line: 20, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2038, line: 292, size: 128, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2037, file: !2038, line: 293, baseType: !338)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2037, file: !2038, line: 295, baseType: !2042, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !232, line: 148, baseType: !7)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2037, file: !2038, line: 296, baseType: !464, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2033, file: !2034, line: 21, baseType: !7, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2033, file: !2034, line: 22, baseType: !7, size: 32, offset: 160)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2028, file: !455, line: 187, baseType: !309, size: 32, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2028, file: !455, line: 188, baseType: !309, size: 32, offset: 352)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2028, file: !455, line: 189, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !455, line: 168, size: 320, elements: !2051)
!2051 = !{!2052, !2056, !2060, !2064, !2068}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2050, file: !455, line: 169, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!354, !567, !2027}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2050, file: !455, line: 171, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!354, !2008, !376, !246}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2050, file: !455, line: 173, baseType: !2061, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!354, !2008}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2050, file: !455, line: 174, baseType: !2065, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!354, !2008, !2008, !376}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2050, file: !455, line: 176, baseType: !2069, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!354, !567, !2008, !2027}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2028, file: !455, line: 192, baseType: !231, size: 128, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2028, file: !455, line: 194, baseType: !1170, size: 128, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2019, file: !455, line: 144, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !455, line: 103, size: 64, elements: !2076)
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2075, file: !455, line: 104, baseType: !2008, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2019, file: !455, line: 145, baseType: !2079, size: 256)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !455, line: 107, size: 256, elements: !2080)
!2080 = !{!2081, !2213, !2216, !2217}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2079, file: !455, line: 108, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !455, line: 217, size: 768, elements: !2085)
!2085 = !{!2086, !2190, !2194, !2195, !2196, !2197, !2198, !2202, !2203, !2204, !2205, !2209}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2084, file: !455, line: 222, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!354, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !455, line: 197, size: 1088, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2091, file: !455, line: 199, baseType: !2008, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2091, file: !455, line: 200, baseType: !654, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2091, file: !455, line: 201, baseType: !567, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2091, file: !455, line: 202, baseType: !464, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2091, file: !455, line: 205, baseType: !582, size: 192, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2091, file: !455, line: 206, baseType: !582, size: 192, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2091, file: !455, line: 207, baseType: !354, size: 32, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2091, file: !455, line: 208, baseType: !231, size: 128, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2091, file: !455, line: 209, baseType: !402, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2091, file: !455, line: 211, baseType: !573, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2091, file: !455, line: 212, baseType: !421, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2091, file: !455, line: 213, baseType: !421, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2091, file: !455, line: 214, baseType: !2106, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !29, line: 557, size: 832, elements: !2109)
!2109 = !{!2110, !2114, !2115, !2119, !2123, !2164, !2168, !2172, !2176, !2177, !2178, !2182, !2186}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2108, file: !29, line: 558, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !748}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2108, file: !29, line: 559, baseType: !2111, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2108, file: !29, line: 560, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!354, !748, !218}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2108, file: !29, line: 561, baseType: !2120, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!354, !748}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2108, file: !29, line: 562, baseType: !2124, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !221, line: 682, baseType: !7)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !29, line: 508, size: 768, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2143, !2150, !2156, !2157, !2158, !2160, !2162}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2129, file: !29, line: 509, baseType: !748, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !29, line: 510, baseType: !7, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2129, file: !29, line: 511, baseType: !2042, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2129, file: !29, line: 512, baseType: !218, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2129, file: !29, line: 513, baseType: !218, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2129, file: !29, line: 514, baseType: !2137, size: 64, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !788, line: 385, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 385, size: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2139, file: !788, line: 385, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !793, line: 15, baseType: !218)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2129, file: !29, line: 516, baseType: !2144, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !788, line: 359, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 359, size: 64, elements: !2147)
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2146, file: !788, line: 359, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !793, line: 16, baseType: !218)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2129, file: !29, line: 519, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !793, line: 21, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !793, line: 21, size: 64, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2152, file: !793, line: 21, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !793, line: 14, baseType: !218)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2129, file: !29, line: 521, baseType: !219, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2129, file: !29, line: 522, baseType: !219, size: 64, offset: 512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2129, file: !29, line: 528, baseType: !2159, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2129, file: !29, line: 532, baseType: !2161, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2129, file: !29, line: 536, baseType: !2163, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !788, line: 509, baseType: !219)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2108, file: !29, line: 563, baseType: !2165, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2127, !2128, !28}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2108, file: !29, line: 565, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2128, !218, !218}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2108, file: !29, line: 567, baseType: !2173, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!218, !748}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2108, file: !29, line: 571, baseType: !2124, size: 64, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2108, file: !29, line: 574, baseType: !2124, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2108, file: !29, line: 579, baseType: !2179, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!354, !748, !218, !464, !354, !354}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2108, file: !29, line: 585, baseType: !2183, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!376, !748}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2108, file: !29, line: 615, baseType: !2187, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!219, !748, !218}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2084, file: !455, line: 223, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !2090}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2084, file: !455, line: 236, baseType: !615, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2084, file: !455, line: 238, baseType: !602, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2084, file: !455, line: 239, baseType: !611, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2084, file: !455, line: 240, baseType: !607, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2084, file: !455, line: 242, baseType: !2199, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!659, !2090, !402, !573, !440}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2084, file: !455, line: 252, baseType: !573, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2084, file: !455, line: 259, baseType: !421, size: 8, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2084, file: !455, line: 260, baseType: !2199, size: 64, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2084, file: !455, line: 263, baseType: !2206, size: 64, offset: 640)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!735, !2090, !737}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2084, file: !455, line: 266, baseType: !2210, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!354, !2090, !748}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2079, file: !455, line: 109, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !455, line: 31, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2079, file: !455, line: 110, baseType: !440, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2079, file: !455, line: 111, baseType: !2008, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2009, file: !455, line: 148, baseType: !464, size: 64, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2009, file: !455, line: 154, baseType: !315, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !455, line: 156, baseType: !247, size: 16, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2009, file: !455, line: 157, baseType: !246, size: 16, offset: 912)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2009, file: !455, line: 158, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !455, line: 32, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1857, file: !1858, line: 71, baseType: !2226, size: 32, offset: 448)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2227, line: 19, size: 32, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2226, file: !2227, line: 20, baseType: !915, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1857, file: !1858, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1857, file: !1858, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1857, file: !1858, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1857, file: !1858, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1857, file: !1858, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1854, file: !41, line: 463, baseType: !2236, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1854, file: !41, line: 465, baseType: !2238, size: 64, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !41, line: 36, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1854, file: !41, line: 467, baseType: !376, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1854, file: !41, line: 468, baseType: !2242, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2244)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !41, line: 87, size: 384, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2252, !2257, !2261}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2244, file: !41, line: 88, baseType: !376, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2244, file: !41, line: 89, baseType: !1934, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2244, file: !41, line: 90, baseType: !2249, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!354, !2236, !1891}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2244, file: !41, line: 91, baseType: !2253, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!402, !2236, !2256, !1526, !1527}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2244, file: !41, line: 93, baseType: !2258, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2236}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2244, file: !41, line: 95, baseType: !2262, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !48, line: 278, size: 1472, elements: !2265)
!2265 = !{!2266, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2264, file: !48, line: 279, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!354, !2236}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2264, file: !48, line: 280, baseType: !2258, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2264, file: !48, line: 281, baseType: !2267, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2264, file: !48, line: 282, baseType: !2267, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2264, file: !48, line: 283, baseType: !2267, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2264, file: !48, line: 284, baseType: !2267, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2264, file: !48, line: 285, baseType: !2267, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2264, file: !48, line: 286, baseType: !2267, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2264, file: !48, line: 287, baseType: !2267, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2264, file: !48, line: 288, baseType: !2267, size: 64, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2264, file: !48, line: 289, baseType: !2267, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2264, file: !48, line: 290, baseType: !2267, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2264, file: !48, line: 291, baseType: !2267, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2264, file: !48, line: 292, baseType: !2267, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2264, file: !48, line: 293, baseType: !2267, size: 64, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2264, file: !48, line: 294, baseType: !2267, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2264, file: !48, line: 295, baseType: !2267, size: 64, offset: 1024)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2264, file: !48, line: 296, baseType: !2267, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2264, file: !48, line: 297, baseType: !2267, size: 64, offset: 1152)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2264, file: !48, line: 298, baseType: !2267, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2264, file: !48, line: 299, baseType: !2267, size: 64, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2264, file: !48, line: 300, baseType: !2267, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2264, file: !48, line: 301, baseType: !2267, size: 64, offset: 1408)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1854, file: !41, line: 470, baseType: !2293, size: 64, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2295, line: 82, size: 1408, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2360, !2363, !2364}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2294, file: !2295, line: 83, baseType: !376, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2294, file: !2295, line: 84, baseType: !376, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2294, file: !2295, line: 85, baseType: !2236, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2294, file: !2295, line: 86, baseType: !1934, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2294, file: !2295, line: 87, baseType: !1934, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2294, file: !2295, line: 88, baseType: !1934, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2294, file: !2295, line: 90, baseType: !2304, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!354, !2236, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !35, line: 95, size: 1152, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2320, !2324, !2325, !2326, !2327, !2328, !2336, !2337, !2338, !2339, !2340, !2341}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2308, file: !35, line: 96, baseType: !376, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2308, file: !35, line: 97, baseType: !2293, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2308, file: !35, line: 99, baseType: !470, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2308, file: !35, line: 100, baseType: !376, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2308, file: !35, line: 102, baseType: !421, size: 8, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2308, file: !35, line: 103, baseType: !34, size: 32, offset: 288)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2308, file: !35, line: 105, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !35, line: 105, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2308, file: !35, line: 106, baseType: !2321, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !35, line: 106, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2308, file: !35, line: 108, baseType: !2267, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2308, file: !35, line: 109, baseType: !2258, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2308, file: !35, line: 110, baseType: !2267, size: 64, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2308, file: !35, line: 111, baseType: !2258, size: 64, offset: 640)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2308, file: !35, line: 112, baseType: !2329, size: 64, offset: 704)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!354, !2236, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !48, line: 52, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !48, line: 50, size: 32, elements: !2334)
!2334 = !{!2335}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2333, file: !48, line: 51, baseType: !354, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2308, file: !35, line: 113, baseType: !2267, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2308, file: !35, line: 114, baseType: !1934, size: 64, offset: 832)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2308, file: !35, line: 115, baseType: !1934, size: 64, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2308, file: !35, line: 117, baseType: !2262, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2308, file: !35, line: 118, baseType: !2258, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2308, file: !35, line: 120, baseType: !2342, size: 64, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !35, line: 120, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2294, file: !2295, line: 91, baseType: !2249, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2294, file: !2295, line: 92, baseType: !2267, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2294, file: !2295, line: 93, baseType: !2258, size: 64, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2294, file: !2295, line: 94, baseType: !2267, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2294, file: !2295, line: 95, baseType: !2258, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2294, file: !2295, line: 97, baseType: !2267, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2294, file: !2295, line: 98, baseType: !2267, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2294, file: !2295, line: 100, baseType: !2329, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2294, file: !2295, line: 101, baseType: !2267, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2294, file: !2295, line: 103, baseType: !2267, size: 64, offset: 1024)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2294, file: !2295, line: 105, baseType: !2267, size: 64, offset: 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2294, file: !2295, line: 107, baseType: !2262, size: 64, offset: 1152)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2294, file: !2295, line: 109, baseType: !2357, size: 64, offset: 1216)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2295, line: 109, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2294, file: !2295, line: 111, baseType: !2361, size: 64, offset: 1280)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2295, line: 111, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2294, file: !2295, line: 112, baseType: !485, offset: 1344)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2294, file: !2295, line: 114, baseType: !421, size: 8, offset: 1344)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1854, file: !41, line: 471, baseType: !2307, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1854, file: !41, line: 473, baseType: !464, size: 64, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1854, file: !41, line: 475, baseType: !464, size: 64, offset: 960)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1854, file: !41, line: 480, baseType: !582, size: 192, offset: 1024)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1854, file: !41, line: 484, baseType: !2370, size: 576, offset: 1216)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !41, line: 361, size: 576, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2370, file: !41, line: 362, baseType: !231, size: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2370, file: !41, line: 363, baseType: !231, size: 128, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2370, file: !41, line: 364, baseType: !231, size: 128, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2370, file: !41, line: 365, baseType: !231, size: 128, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2370, file: !41, line: 366, baseType: !421, size: 8, offset: 512)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2370, file: !41, line: 367, baseType: !40, size: 32, offset: 544)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1854, file: !41, line: 485, baseType: !2379, size: 2304, offset: 1792)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !48, line: 565, size: 2304, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2476, !2480}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2379, file: !48, line: 566, baseType: !2332, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2379, file: !48, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2379, file: !48, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2379, file: !48, line: 569, baseType: !421, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2379, file: !48, line: 570, baseType: !421, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2379, file: !48, line: 571, baseType: !421, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2379, file: !48, line: 572, baseType: !421, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2379, file: !48, line: 573, baseType: !421, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2379, file: !48, line: 574, baseType: !421, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2379, file: !48, line: 575, baseType: !421, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2379, file: !48, line: 576, baseType: !421, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2379, file: !48, line: 577, baseType: !309, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2379, file: !48, line: 578, baseType: !338, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2379, file: !48, line: 580, baseType: !231, size: 128, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2379, file: !48, line: 581, baseType: !1190, size: 192, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2379, file: !48, line: 582, baseType: !2397, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2399, line: 43, size: 1472, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2408, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2398, file: !2399, line: 44, baseType: !376, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2398, file: !2399, line: 45, baseType: !354, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2398, file: !2399, line: 46, baseType: !231, size: 128, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2398, file: !2399, line: 47, baseType: !338, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2398, file: !2399, line: 48, baseType: !2406, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !48, line: 533, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2398, file: !2399, line: 49, baseType: !2409, size: 320, offset: 320)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2410, line: 11, size: 320, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !{!2412, !2413, !2414, !2419}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2409, file: !2410, line: 16, baseType: !479, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2409, file: !2410, line: 17, baseType: !218, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2409, file: !2410, line: 18, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !2410, line: 19, baseType: !309, size: 32, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2398, file: !2399, line: 50, baseType: !218, size: 64, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2398, file: !2399, line: 51, baseType: !985, size: 64, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2398, file: !2399, line: 52, baseType: !985, size: 64, offset: 768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2398, file: !2399, line: 53, baseType: !985, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2398, file: !2399, line: 54, baseType: !985, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2398, file: !2399, line: 55, baseType: !985, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2398, file: !2399, line: 56, baseType: !218, size: 64, offset: 1024)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2398, file: !2399, line: 57, baseType: !218, size: 64, offset: 1088)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2398, file: !2399, line: 58, baseType: !218, size: 64, offset: 1152)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2398, file: !2399, line: 59, baseType: !218, size: 64, offset: 1216)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2398, file: !2399, line: 60, baseType: !218, size: 64, offset: 1280)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2398, file: !2399, line: 61, baseType: !2236, size: 64, offset: 1344)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2398, file: !2399, line: 62, baseType: !421, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2398, file: !2399, line: 63, baseType: !421, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2379, file: !48, line: 583, baseType: !421, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2379, file: !48, line: 584, baseType: !421, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2379, file: !48, line: 585, baseType: !421, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2379, file: !48, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2379, file: !48, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2379, file: !48, line: 592, baseType: !977, size: 512, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2379, file: !48, line: 593, baseType: !315, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2379, file: !48, line: 594, baseType: !1452, size: 256, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2379, file: !48, line: 595, baseType: !1170, size: 128, offset: 1408)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2379, file: !48, line: 596, baseType: !2406, size: 64, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2379, file: !48, line: 597, baseType: !795, size: 32, offset: 1600)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2379, file: !48, line: 598, baseType: !795, size: 32, offset: 1632)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2379, file: !48, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2379, file: !48, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2379, file: !48, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2379, file: !48, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2379, file: !48, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2379, file: !48, line: 604, baseType: !421, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2379, file: !48, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2379, file: !48, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2379, file: !48, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2379, file: !48, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2379, file: !48, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2379, file: !48, line: 610, baseType: !7, size: 32, offset: 1696)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2379, file: !48, line: 611, baseType: !47, size: 32, offset: 1728)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2379, file: !48, line: 612, baseType: !55, size: 32, offset: 1760)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2379, file: !48, line: 613, baseType: !354, size: 32, offset: 1792)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2379, file: !48, line: 614, baseType: !354, size: 32, offset: 1824)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2379, file: !48, line: 615, baseType: !315, size: 64, offset: 1856)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2379, file: !48, line: 616, baseType: !315, size: 64, offset: 1920)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2379, file: !48, line: 617, baseType: !315, size: 64, offset: 1984)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2379, file: !48, line: 618, baseType: !315, size: 64, offset: 2048)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2379, file: !48, line: 620, baseType: !2467, size: 64, offset: 2112)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !48, line: 536, size: 256, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2468, file: !48, line: 537, baseType: !338)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2468, file: !48, line: 538, baseType: !7, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2468, file: !48, line: 540, baseType: !231, size: 128, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2468, file: !48, line: 543, baseType: !2474, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !48, line: 534, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2379, file: !48, line: 621, baseType: !2477, size: 64, offset: 2176)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2236, !1133}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2379, file: !48, line: 622, baseType: !2481, size: 64, offset: 2240)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !48, line: 622, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1854, file: !41, line: 486, baseType: !2484, size: 64, offset: 4096)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !48, line: 642, size: 1792, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2493, !2494, !2495}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2485, file: !48, line: 643, baseType: !2264, size: 1472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2485, file: !48, line: 644, baseType: !2267, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2485, file: !48, line: 645, baseType: !2490, size: 64, offset: 1536)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2236, !421}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2485, file: !48, line: 646, baseType: !2267, size: 64, offset: 1600)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2485, file: !48, line: 647, baseType: !2258, size: 64, offset: 1664)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2485, file: !48, line: 648, baseType: !2258, size: 64, offset: 1728)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1854, file: !41, line: 493, baseType: !2497, size: 64, offset: 4160)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !41, line: 493, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1854, file: !41, line: 499, baseType: !231, size: 128, offset: 4224)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1854, file: !41, line: 502, baseType: !2501, size: 64, offset: 4352)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !41, line: 502, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1854, file: !41, line: 504, baseType: !2505, size: 64, offset: 4416)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1854, file: !41, line: 505, baseType: !315, size: 64, offset: 4480)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1854, file: !41, line: 510, baseType: !315, size: 64, offset: 4544)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1854, file: !41, line: 511, baseType: !2509, size: 64, offset: 4608)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !41, line: 511, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1854, file: !41, line: 513, baseType: !2513, size: 64, offset: 4672)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !41, line: 288, size: 128, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2514, file: !41, line: 293, baseType: !7, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2514, file: !41, line: 294, baseType: !218, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1854, file: !41, line: 515, baseType: !231, size: 128, offset: 4736)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1854, file: !41, line: 526, baseType: !2520, offset: 4864)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2521, line: 5, elements: !352)
!2521 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1854, file: !41, line: 528, baseType: !2523, size: 64, offset: 4864)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2525, line: 14, flags: DIFlagFwdDecl)
!2525 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1854, file: !41, line: 529, baseType: !2527, size: 64, offset: 4928)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2529, line: 17, size: 192, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2530 = !{!2531, !2532, !2615}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2528, file: !2529, line: 18, baseType: !2527, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2528, file: !2529, line: 19, baseType: !2533, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2529, line: 110, size: 1152, elements: !2536)
!2536 = !{!2537, !2541, !2545, !2551, !2557, !2561, !2565, !2570, !2574, !2575, !2579, !2583, !2587, !2598, !2599, !2600, !2601, !2611}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2535, file: !2529, line: 111, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!2527, !2527}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2535, file: !2529, line: 112, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !2527}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2535, file: !2529, line: 113, baseType: !2546, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!421, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2535, file: !2529, line: 114, baseType: !2552, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!1987, !2549, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2535, file: !2529, line: 116, baseType: !2558, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!421, !2549, !376}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2535, file: !2529, line: 118, baseType: !2562, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!354, !2549, !376, !7, !464, !573}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2535, file: !2529, line: 123, baseType: !2566, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!354, !2549, !376, !2569, !573}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2535, file: !2529, line: 126, baseType: !2571, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!376, !2549}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2535, file: !2529, line: 127, baseType: !2571, size: 64, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2535, file: !2529, line: 128, baseType: !2576, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2527, !2549}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2535, file: !2529, line: 130, baseType: !2580, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!2527, !2549, !2527}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2535, file: !2529, line: 133, baseType: !2584, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!2527, !2549, !376}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2535, file: !2529, line: 135, baseType: !2588, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!354, !2549, !376, !376, !7, !7, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2529, line: 43, size: 640, elements: !2593)
!2593 = !{!2594, !2595, !2596}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2592, file: !2529, line: 44, baseType: !2527, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2592, file: !2529, line: 45, baseType: !7, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2592, file: !2529, line: 46, baseType: !2597, size: 512, offset: 128)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 512, elements: !1015)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2535, file: !2529, line: 140, baseType: !2580, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2535, file: !2529, line: 143, baseType: !2576, size: 64, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2535, file: !2529, line: 145, baseType: !2538, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2535, file: !2529, line: 146, baseType: !2602, size: 64, offset: 1024)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!354, !2549, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2529, line: 29, size: 128, elements: !2607)
!2607 = !{!2608, !2609, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2606, file: !2529, line: 30, baseType: !7, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2606, file: !2529, line: 31, baseType: !7, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2606, file: !2529, line: 32, baseType: !2549, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2535, file: !2529, line: 148, baseType: !2612, size: 64, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!354, !2549, !2236}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2528, file: !2529, line: 20, baseType: !2236, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1854, file: !41, line: 534, baseType: !435, size: 32, offset: 4992)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1854, file: !41, line: 535, baseType: !309, size: 32, offset: 5024)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1854, file: !41, line: 537, baseType: !338, offset: 5056)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1854, file: !41, line: 538, baseType: !231, size: 128, offset: 5056)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1854, file: !41, line: 540, baseType: !2621, size: 64, offset: 5184)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2623, line: 54, size: 960, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2635, !2639, !2640, !2641, !2642, !2646, !2650, !2651}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2622, file: !2623, line: 55, baseType: !376, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2622, file: !2623, line: 56, baseType: !470, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2622, file: !2623, line: 58, baseType: !1934, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2622, file: !2623, line: 59, baseType: !1934, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2622, file: !2623, line: 60, baseType: !1863, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2622, file: !2623, line: 62, baseType: !2249, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2622, file: !2623, line: 63, baseType: !2632, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!402, !2236, !2256}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2622, file: !2623, line: 65, baseType: !2636, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2621}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2622, file: !2623, line: 66, baseType: !2258, size: 64, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2622, file: !2623, line: 68, baseType: !2267, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2622, file: !2623, line: 70, baseType: !1970, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2622, file: !2623, line: 71, baseType: !2643, size: 64, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!1987, !2236}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2622, file: !2623, line: 73, baseType: !2647, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2236, !1526, !1527}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2622, file: !2623, line: 75, baseType: !2262, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2622, file: !2623, line: 77, baseType: !2361, size: 64, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1854, file: !41, line: 541, baseType: !1934, size: 64, offset: 5248)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1854, file: !41, line: 543, baseType: !2258, size: 64, offset: 5312)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1854, file: !41, line: 544, baseType: !2655, size: 64, offset: 5376)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !41, line: 45, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1854, file: !41, line: 545, baseType: !2658, size: 64, offset: 5440)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !41, line: 47, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1854, file: !41, line: 547, baseType: !421, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1854, file: !41, line: 548, baseType: !421, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1854, file: !41, line: 549, baseType: !421, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1854, file: !41, line: 550, baseType: !421, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1823, file: !1806, line: 69, baseType: !1863, size: 64, offset: 5952)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1823, file: !1806, line: 70, baseType: !354, size: 32, offset: 6016)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1823, file: !1806, line: 70, baseType: !354, size: 32, offset: 6048)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1823, file: !1806, line: 71, baseType: !2668, size: 64, offset: 6080)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1806, line: 48, size: 808, elements: !2670)
!2670 = !{!2671, !2675}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2669, file: !1806, line: 49, baseType: !2672, size: 296)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 296, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 37)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2669, file: !1806, line: 50, baseType: !2676, size: 512, offset: 296)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 512, elements: !1758)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1823, file: !1806, line: 75, baseType: !2678, size: 448, offset: 6144)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !134, line: 124, size: 448, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2678, file: !134, line: 125, baseType: !1452, size: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2678, file: !134, line: 126, baseType: !634, size: 128, align: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2678, file: !134, line: 129, baseType: !2683, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !134, line: 18, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1817, file: !1806, line: 153, baseType: !2686, offset: 256)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, elements: !2687)
!2687 = !{!2688}
!2688 = !DISubrange(count: -1)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1805, file: !1806, line: 187, baseType: !1823, size: 6592, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1805, file: !1806, line: 189, baseType: !2691, size: 64, offset: 7040)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !74, line: 1844, size: 960, elements: !2694)
!2694 = !{!2695, !2700, !2793, !2797, !2801, !2805, !2806, !2810, !2814, !2818, !2824, !2828, !2854, !2858, !2859}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2693, file: !74, line: 1845, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!2699, !1798}
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1800, line: 515, baseType: !7)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2693, file: !74, line: 1846, baseType: !2701, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!354, !2704, !2792}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1800, line: 22, size: 1344, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2790, !2791}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2705, file: !1800, line: 23, baseType: !435, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2705, file: !1800, line: 24, baseType: !354, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2705, file: !1800, line: 25, baseType: !242, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !2705, file: !1800, line: 26, baseType: !430, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !2705, file: !1800, line: 27, baseType: !582, size: 192, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2705, file: !1800, line: 28, baseType: !464, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2705, file: !1800, line: 29, baseType: !464, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2705, file: !1800, line: 30, baseType: !354, size: 32, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2705, file: !1800, line: 31, baseType: !421, size: 8, offset: 544)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !2705, file: !1800, line: 33, baseType: !231, size: 128, offset: 576)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !2705, file: !1800, line: 35, baseType: !2704, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2705, file: !1800, line: 36, baseType: !1041, size: 8, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !2705, file: !1800, line: 37, baseType: !1822, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !2705, file: !1800, line: 39, baseType: !7, size: 32, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2705, file: !1800, line: 41, baseType: !338, offset: 928)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2705, file: !1800, line: 42, baseType: !1804, size: 64, offset: 960)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !2705, file: !1800, line: 43, baseType: !2724, size: 64, offset: 1024)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !62, line: 165, size: 4672, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2783, !2784, !2785, !2786, !2788, !2789}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2725, file: !62, line: 166, baseType: !315, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2725, file: !62, line: 167, baseType: !756, size: 192, align: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2725, file: !62, line: 168, baseType: !231, size: 128, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2725, file: !62, line: 169, baseType: !218, size: 64, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2725, file: !62, line: 170, baseType: !218, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2725, file: !62, line: 172, baseType: !2226, size: 32, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2725, file: !62, line: 173, baseType: !7, size: 32, offset: 544)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2725, file: !62, line: 174, baseType: !7, size: 32, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2725, file: !62, line: 175, baseType: !7, size: 32, offset: 608)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2725, file: !62, line: 175, baseType: !7, size: 32, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2725, file: !62, line: 181, baseType: !586, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2725, file: !62, line: 183, baseType: !2739, size: 2688, offset: 768)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !62, line: 107, size: 2688, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2770, !2771, !2772, !2773, !2774, !2781, !2782}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2739, file: !62, line: 108, baseType: !2724, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2739, file: !62, line: 110, baseType: !218, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2739, file: !62, line: 111, baseType: !218, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2739, file: !62, line: 113, baseType: !231, size: 128, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2739, file: !62, line: 114, baseType: !231, size: 128, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2739, file: !62, line: 115, baseType: !231, size: 128, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2739, file: !62, line: 116, baseType: !231, size: 128, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2739, file: !62, line: 117, baseType: !338, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2739, file: !62, line: 119, baseType: !2750, size: 256, offset: 704)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2751, size: 256, elements: !846)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2752, line: 97, size: 64, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2751, file: !2752, line: 98, baseType: !592, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !2739, file: !62, line: 121, baseType: !218, size: 64, offset: 960)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2739, file: !62, line: 123, baseType: !218, size: 64, offset: 1024)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2739, file: !62, line: 124, baseType: !218, size: 64, offset: 1088)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2739, file: !62, line: 125, baseType: !218, size: 64, offset: 1152)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2739, file: !62, line: 126, baseType: !218, size: 64, offset: 1216)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2739, file: !62, line: 127, baseType: !218, size: 64, offset: 1280)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2739, file: !62, line: 135, baseType: !218, size: 64, offset: 1344)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2739, file: !62, line: 136, baseType: !218, size: 64, offset: 1408)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2739, file: !62, line: 138, baseType: !2764, size: 128, offset: 1472)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2765, line: 76, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2764, file: !2765, line: 78, baseType: !2751, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2764, file: !2765, line: 80, baseType: !7, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2764, file: !2765, line: 81, baseType: !812, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2739, file: !62, line: 139, baseType: !354, size: 32, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2739, file: !62, line: 140, baseType: !61, size: 32, offset: 1632)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2739, file: !62, line: 142, baseType: !338, offset: 1664)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2739, file: !62, line: 143, baseType: !231, size: 128, offset: 1664)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2739, file: !62, line: 144, baseType: !2775, size: 704, offset: 1792)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !134, line: 115, size: 704, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2775, file: !134, line: 116, baseType: !1452, size: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2775, file: !134, line: 117, baseType: !2409, size: 320, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2775, file: !134, line: 120, baseType: !2683, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2775, file: !134, line: 121, baseType: !354, size: 32, offset: 640)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !2739, file: !62, line: 146, baseType: !218, size: 64, offset: 2496)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2739, file: !62, line: 148, baseType: !231, size: 128, offset: 2560)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2725, file: !62, line: 184, baseType: !231, size: 128, offset: 3456)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2725, file: !62, line: 190, baseType: !1170, size: 128, offset: 3584)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2725, file: !62, line: 192, baseType: !2236, size: 64, offset: 3712)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2725, file: !62, line: 193, baseType: !2787, size: 512, offset: 3776)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 512, elements: !1758)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2725, file: !62, line: 194, baseType: !2236, size: 64, offset: 4288)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2725, file: !62, line: 196, baseType: !2409, size: 320, offset: 4352)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2705, file: !1800, line: 46, baseType: !354, size: 32, offset: 1088)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2705, file: !1800, line: 48, baseType: !582, size: 192, offset: 1152)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !232, line: 150, baseType: !7)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2693, file: !74, line: 1847, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !1804, !2792}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !2693, file: !74, line: 1848, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!354, !2704, !1826, !219, !7}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2693, file: !74, line: 1849, baseType: !2802, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!354, !2704, !2792, !7, !218}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2693, file: !74, line: 1850, baseType: !2802, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2693, file: !74, line: 1851, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!7, !1804, !7}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2693, file: !74, line: 1853, baseType: !2811, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !1804}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !2693, file: !74, line: 1854, baseType: !2815, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!354, !1804}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2693, file: !74, line: 1855, baseType: !2819, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!354, !2704, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !92, line: 51, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2693, file: !74, line: 1857, baseType: !2825, size: 64, offset: 640)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2704, !218}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2693, file: !74, line: 1858, baseType: !2829, size: 64, offset: 704)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!354, !1804, !1826, !7, !2832, !464}
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !74, line: 354, baseType: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!354, !2836, !7, !464}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2838, line: 106, size: 512, elements: !2839)
!2838 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2849, !2850}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2837, file: !2838, line: 107, baseType: !316, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2837, file: !2838, line: 108, baseType: !316, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2837, file: !2838, line: 109, baseType: !316, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2837, file: !2838, line: 110, baseType: !1042, size: 8, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2837, file: !2838, line: 111, baseType: !1042, size: 8, offset: 200)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2837, file: !2838, line: 112, baseType: !1042, size: 8, offset: 208)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2837, file: !2838, line: 113, baseType: !1042, size: 8, offset: 216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2837, file: !2838, line: 114, baseType: !2848, size: 32, offset: 224)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 32, elements: !846)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2837, file: !2838, line: 115, baseType: !316, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2837, file: !2838, line: 116, baseType: !2851, size: 192, offset: 320)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 192, elements: !2852)
!2852 = !{!2853}
!2853 = !DISubrange(count: 24)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2693, file: !74, line: 1860, baseType: !2855, size: 64, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!402, !1804, !2256}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2693, file: !74, line: 1861, baseType: !470, size: 64, offset: 832)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2693, file: !74, line: 1862, baseType: !2860, size: 64, offset: 896)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !74, line: 41, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1805, file: !1806, line: 190, baseType: !2864, size: 64, offset: 7104)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !74, line: 399, size: 14464, elements: !2866)
!2866 = !{!2867, !3005, !3127, !3128, !3131, !3134, !3138, !3139, !3140, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3199, !3208, !3209, !3210, !3211, !3212, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3320, !3321, !3322, !3323, !3326, !3327, !3361, !3362, !3363, !3364}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2865, file: !74, line: 400, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !74, line: 130, size: 2176, elements: !2870)
!2870 = !{!2871, !2872, !2875, !2878, !2879, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2893, !2906, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !3003, !3004}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2869, file: !74, line: 131, baseType: !2864, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2869, file: !74, line: 132, baseType: !2873, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !74, line: 132, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2869, file: !74, line: 133, baseType: !2876, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !74, line: 133, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2869, file: !74, line: 135, baseType: !7, size: 32, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2869, file: !74, line: 136, baseType: !2880, size: 32, offset: 224)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !74, line: 66, baseType: !311)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2869, file: !74, line: 138, baseType: !354, size: 32, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2869, file: !74, line: 139, baseType: !354, size: 32, offset: 288)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2869, file: !74, line: 142, baseType: !7, size: 32, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2869, file: !74, line: 143, baseType: !1826, size: 64, offset: 384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2869, file: !74, line: 145, baseType: !1798, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2869, file: !74, line: 146, baseType: !1798, size: 64, offset: 512)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2869, file: !74, line: 148, baseType: !231, size: 128, offset: 576)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !74, line: 157, baseType: !2889, size: 128, offset: 704)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !74, line: 157, size: 128, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2889, file: !74, line: 158, baseType: !479, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2889, file: !74, line: 159, baseType: !231, size: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !74, line: 167, baseType: !2894, size: 192, offset: 832)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !74, line: 167, size: 192, elements: !2895)
!2895 = !{!2896, !2897, !2904, !2905}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2894, file: !74, line: 168, baseType: !756, size: 192, align: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2894, file: !74, line: 169, baseType: !2898, size: 128)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2899, line: 31, size: 128, elements: !2900)
!2899 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!2900 = !{!2901, !2902, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2898, file: !2899, line: 32, baseType: !219, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2898, file: !2899, line: 33, baseType: !7, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2898, file: !2899, line: 34, baseType: !7, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !2894, file: !74, line: 170, baseType: !464, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !2894, file: !74, line: 171, baseType: !354, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !74, line: 180, baseType: !2907, size: 256, offset: 1024)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !74, line: 180, size: 256, elements: !2908)
!2908 = !{!2909, !2946}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2907, file: !74, line: 184, baseType: !2910, size: 192)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !74, line: 181, size: 192, elements: !2911)
!2911 = !{!2912, !2944}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2910, file: !74, line: 182, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2915, line: 73, size: 448, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2916 = !{!2917, !2918, !2931, !2938, !2943}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2914, file: !2915, line: 74, baseType: !2864, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2914, file: !2915, line: 75, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2915, line: 99, size: 704, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2920, file: !2915, line: 100, baseType: !586, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2920, file: !2915, line: 101, baseType: !795, size: 32, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2920, file: !2915, line: 102, baseType: !795, size: 32, offset: 96)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2920, file: !2915, line: 105, baseType: !338, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2920, file: !2915, line: 107, baseType: !247, size: 16, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2920, file: !2915, line: 109, baseType: !2037, size: 128, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2920, file: !2915, line: 110, baseType: !2913, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2920, file: !2915, line: 111, baseType: !475, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2920, file: !2915, line: 113, baseType: !1452, size: 256, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !2915, line: 83, baseType: !2932, size: 128, offset: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !2915, line: 83, size: 128, elements: !2933)
!2933 = !{!2934, !2935}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2932, file: !2915, line: 84, baseType: !231, size: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2932, file: !2915, line: 85, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !221, line: 117, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !2915, line: 87, baseType: !2939, size: 128, offset: 256)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !2915, line: 87, size: 128, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2939, file: !2915, line: 88, baseType: !479, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2939, file: !2915, line: 89, baseType: !634, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2914, file: !2915, line: 92, baseType: !7, size: 32, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2910, file: !74, line: 183, baseType: !2945, size: 128, offset: 64)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 128, elements: !1257)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2907, file: !74, line: 190, baseType: !2947, size: 256)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !74, line: 186, size: 256, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2947, file: !74, line: 187, baseType: !7, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2947, file: !74, line: 188, baseType: !231, size: 128, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2947, file: !74, line: 189, baseType: !2952, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !74, line: 62, baseType: !2954)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2868, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1800, line: 58, baseType: !1041)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !2869, file: !74, line: 193, baseType: !1804, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2869, file: !74, line: 194, baseType: !1822, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2869, file: !74, line: 200, baseType: !315, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2869, file: !74, line: 202, baseType: !315, size: 64, offset: 1472)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2869, file: !74, line: 212, baseType: !247, size: 16, offset: 1536)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2869, file: !74, line: 218, baseType: !247, size: 16, offset: 1552)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !2869, file: !74, line: 221, baseType: !247, size: 16, offset: 1568)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !2869, file: !74, line: 229, baseType: !247, size: 16, offset: 1584)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2869, file: !74, line: 230, baseType: !247, size: 16, offset: 1600)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2869, file: !74, line: 232, baseType: !73, size: 32, offset: 1632)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2869, file: !74, line: 233, baseType: !915, size: 32, offset: 1664)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2869, file: !74, line: 235, baseType: !7, size: 32, offset: 1696)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2869, file: !74, line: 236, baseType: !218, size: 64, offset: 1728)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !74, line: 238, baseType: !2971, size: 256, offset: 1792)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !74, line: 238, size: 256, elements: !2972)
!2972 = !{!2973, !3002}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !2971, file: !74, line: 239, baseType: !2974, size: 256)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !2975, line: 23, size: 256, elements: !2976)
!2975 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!2976 = !{!2977, !2999, !3001}
!2977 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !2975, line: 24, baseType: !2978, size: 128)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !2975, line: 24, size: 128, elements: !2979)
!2979 = !{!2980, !2992}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2978, file: !2975, line: 25, baseType: !2981, size: 128)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2982, line: 58, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !{!2984, !2985, !2990, !2991}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2981, file: !2982, line: 59, baseType: !628, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2982, line: 60, baseType: !2986, size: 32, offset: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2982, line: 60, size: 32, elements: !2987)
!2987 = !{!2988, !2989}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2986, file: !2982, line: 61, baseType: !7, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2986, file: !2982, line: 62, baseType: !795, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2981, file: !2982, line: 65, baseType: !682, size: 16, offset: 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2981, file: !2982, line: 65, baseType: !682, size: 16, offset: 112)
!2992 = !DIDerivedType(tag: DW_TAG_member, scope: !2978, file: !2975, line: 26, baseType: !2993, size: 128)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2978, file: !2975, line: 26, size: 128, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2993, file: !2975, line: 27, baseType: !628, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2993, file: !2975, line: 28, baseType: !7, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2993, file: !2975, line: 30, baseType: !682, size: 16, offset: 96)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2993, file: !2975, line: 30, baseType: !682, size: 16, offset: 112)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2974, file: !2975, line: 34, baseType: !3000, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !2975, line: 17, baseType: !1996)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2974, file: !2975, line: 35, baseType: !464, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2971, file: !74, line: 240, baseType: !315, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2869, file: !74, line: 246, baseType: !2952, size: 64, offset: 2048)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2869, file: !74, line: 247, baseType: !464, size: 64, offset: 2112)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2865, file: !74, line: 401, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !80, line: 101, size: 4992, elements: !3008)
!3008 = !{!3009, !3121, !3122, !3123, !3124, !3125}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3007, file: !80, line: 103, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !80, line: 66, size: 2240, elements: !3012)
!3012 = !{!3013, !3014, !3096, !3097, !3098, !3111, !3112, !3113, !3115, !3116, !3120}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !3011, file: !80, line: 69, baseType: !2936, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3011, file: !80, line: 72, baseType: !3015, size: 1408, offset: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !80, line: 29, size: 1408, elements: !3016)
!3016 = !{!3017, !3021, !3025, !3029, !3033, !3037, !3041, !3045, !3050, !3054, !3058, !3064, !3068, !3069, !3073, !3077, !3081, !3085, !3086, !3090, !3091, !3095}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !3015, file: !80, line: 30, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!354, !2864, !3010}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !3015, file: !80, line: 31, baseType: !3022, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !3006}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !3015, file: !80, line: 32, baseType: !3026, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!354, !2876, !7}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !3015, file: !80, line: 33, baseType: !3030, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2876, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !3015, file: !80, line: 34, baseType: !3034, size: 64, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2876}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !3015, file: !80, line: 36, baseType: !3038, size: 64, offset: 320)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!421, !2864, !2868, !1798}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !3015, file: !80, line: 37, baseType: !3042, size: 64, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!421, !2876, !1798, !7}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !3015, file: !80, line: 38, baseType: !3046, size: 64, offset: 448)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!354, !2864, !3049, !1798}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !3015, file: !80, line: 39, baseType: !3051, size: 64, offset: 512)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2864, !2868, !79}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !3015, file: !80, line: 40, baseType: !3055, size: 64, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2864, !2868, !2868}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !3015, file: !80, line: 41, baseType: !3059, size: 64, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !7, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !80, line: 26, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !3015, file: !80, line: 42, baseType: !3065, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !2868}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !3015, file: !80, line: 43, baseType: !3065, size: 64, offset: 768)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !3015, file: !80, line: 44, baseType: !3070, size: 64, offset: 832)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !2876, !235, !421}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !3015, file: !80, line: 45, baseType: !3074, size: 64, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!2868, !2876}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !3015, file: !80, line: 46, baseType: !3078, size: 64, offset: 960)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!421, !2876}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !3015, file: !80, line: 47, baseType: !3082, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2868, !315}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !3015, file: !80, line: 48, baseType: !3065, size: 64, offset: 1088)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !3015, file: !80, line: 49, baseType: !3087, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!2868, !2864, !2868}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !3015, file: !80, line: 50, baseType: !3087, size: 64, offset: 1216)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !3015, file: !80, line: 51, baseType: !3092, size: 64, offset: 1280)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !2913}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !3015, file: !80, line: 52, baseType: !3092, size: 64, offset: 1344)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !3011, file: !80, line: 74, baseType: !573, size: 64, offset: 1472)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !3011, file: !80, line: 75, baseType: !573, size: 64, offset: 1536)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !3011, file: !80, line: 76, baseType: !3099, size: 64, offset: 1600)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !80, line: 57, size: 256, elements: !3101)
!3101 = !{!3102, !3103, !3107}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3100, file: !80, line: 58, baseType: !1923, size: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3100, file: !80, line: 59, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!659, !3006, !402}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3100, file: !80, line: 60, baseType: !3108, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!659, !3006, !376, !573}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !3011, file: !80, line: 77, baseType: !376, size: 64, offset: 1664)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !3011, file: !80, line: 78, baseType: !376, size: 64, offset: 1728)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !3011, file: !80, line: 79, baseType: !3114, size: 32, offset: 1792)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !3011, file: !80, line: 80, baseType: !470, size: 64, offset: 1856)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !3011, file: !80, line: 87, baseType: !3117, size: 176, offset: 1920)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 176, elements: !3118)
!3118 = !{!3119}
!3119 = !DISubrange(count: 22)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3011, file: !80, line: 88, baseType: !231, size: 128, offset: 2112)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !3007, file: !80, line: 104, baseType: !464, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3007, file: !80, line: 105, baseType: !1857, size: 512, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !3007, file: !80, line: 106, baseType: !582, size: 192, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !3007, file: !80, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3007, file: !80, line: 108, baseType: !3126, size: 4096, offset: 896)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 4096, elements: !1758)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2865, file: !74, line: 403, baseType: !1833, size: 128, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2865, file: !74, line: 405, baseType: !3129, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !74, line: 43, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2865, file: !74, line: 406, baseType: !3132, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !74, line: 42, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2865, file: !74, line: 408, baseType: !3135, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3137)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !74, line: 408, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2865, file: !74, line: 411, baseType: !2873, size: 64, offset: 448)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2865, file: !74, line: 413, baseType: !7, size: 32, offset: 512)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !2865, file: !74, line: 416, baseType: !3141, size: 64, offset: 576)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2865, file: !74, line: 417, baseType: !7, size: 32, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2865, file: !74, line: 419, baseType: !2724, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2865, file: !74, line: 425, baseType: !464, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2865, file: !74, line: 430, baseType: !218, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2865, file: !74, line: 436, baseType: !795, size: 32, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2865, file: !74, line: 442, baseType: !354, size: 32, offset: 928)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !2865, file: !74, line: 447, baseType: !2042, size: 32, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2865, file: !74, line: 449, baseType: !338, offset: 992)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2865, file: !74, line: 454, baseType: !1857, size: 512, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2865, file: !74, line: 459, baseType: !1863, size: 64, offset: 1536)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !2865, file: !74, line: 462, baseType: !3153, size: 128, offset: 1600)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1806, line: 159, size: 128, elements: !3154)
!3154 = !{!3155, !3184, !3185, !3186, !3187}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !3153, file: !1806, line: 160, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !74, line: 1664, size: 320, elements: !3159)
!3159 = !{!3160, !3174, !3175, !3178, !3183}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !3158, file: !74, line: 1665, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !74, line: 1660, baseType: !3163)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!2956, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !74, line: 1651, size: 320, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !3166, file: !74, line: 1652, baseType: !464, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !3166, file: !74, line: 1653, baseType: !464, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !3166, file: !74, line: 1654, baseType: !1826, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !3166, file: !74, line: 1655, baseType: !7, size: 32, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3166, file: !74, line: 1656, baseType: !247, size: 16, offset: 224)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !3166, file: !74, line: 1657, baseType: !376, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !3158, file: !74, line: 1666, baseType: !3161, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !3158, file: !74, line: 1667, baseType: !3176, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !74, line: 1661, baseType: !3066)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !3158, file: !74, line: 1668, baseType: !3179, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !74, line: 1662, baseType: !3181)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !2868, !7}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3158, file: !74, line: 1669, baseType: !376, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !1806, line: 161, baseType: !321, size: 8, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !3153, file: !1806, line: 162, baseType: !321, size: 8, offset: 72)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !3153, file: !1806, line: 163, baseType: !321, size: 8, offset: 80)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !3153, file: !1806, line: 164, baseType: !321, size: 8, offset: 88)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2865, file: !74, line: 466, baseType: !2236, size: 64, offset: 1728)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2865, file: !74, line: 467, baseType: !55, size: 32, offset: 1792)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2865, file: !74, line: 468, baseType: !7, size: 32, offset: 1824)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2865, file: !74, line: 474, baseType: !218, size: 64, offset: 1856)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2865, file: !74, line: 476, baseType: !7, size: 32, offset: 1920)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2865, file: !74, line: 477, baseType: !7, size: 32, offset: 1952)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2865, file: !74, line: 484, baseType: !7, size: 32, offset: 1984)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !2865, file: !74, line: 485, baseType: !354, size: 32, offset: 2016)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !2865, file: !74, line: 487, baseType: !3197, size: 64, offset: 2048)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !74, line: 44, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !2865, file: !74, line: 488, baseType: !3200, size: 5120, offset: 2112)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3201, size: 5120, elements: !1578)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1800, line: 540, size: 320, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !3201, file: !1800, line: 541, baseType: !315, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3201, file: !1800, line: 542, baseType: !315, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3201, file: !1800, line: 543, baseType: !315, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !3201, file: !1800, line: 544, baseType: !309, size: 32, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3201, file: !1800, line: 545, baseType: !315, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2865, file: !74, line: 490, baseType: !2409, size: 320, offset: 7232)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2865, file: !74, line: 491, baseType: !1452, size: 256, offset: 7552)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !2865, file: !74, line: 493, baseType: !795, size: 32, offset: 7808)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2865, file: !74, line: 495, baseType: !231, size: 128, offset: 7872)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2865, file: !74, line: 502, baseType: !3213, size: 896, offset: 8000)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !74, line: 321, size: 896, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !3213, file: !74, line: 322, baseType: !218, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3213, file: !74, line: 323, baseType: !218, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3213, file: !74, line: 324, baseType: !218, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3213, file: !74, line: 326, baseType: !7, size: 32, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3213, file: !74, line: 327, baseType: !7, size: 32, offset: 224)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3213, file: !74, line: 328, baseType: !7, size: 32, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3213, file: !74, line: 329, baseType: !7, size: 32, offset: 288)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3213, file: !74, line: 330, baseType: !7, size: 32, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3213, file: !74, line: 331, baseType: !7, size: 32, offset: 352)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3213, file: !74, line: 332, baseType: !7, size: 32, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3213, file: !74, line: 333, baseType: !7, size: 32, offset: 416)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3213, file: !74, line: 334, baseType: !7, size: 32, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3213, file: !74, line: 335, baseType: !7, size: 32, offset: 480)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3213, file: !74, line: 336, baseType: !7, size: 32, offset: 512)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3213, file: !74, line: 337, baseType: !7, size: 32, offset: 544)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !3213, file: !74, line: 338, baseType: !7, size: 32, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3213, file: !74, line: 339, baseType: !7, size: 32, offset: 608)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3213, file: !74, line: 340, baseType: !7, size: 32, offset: 640)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3213, file: !74, line: 341, baseType: !7, size: 32, offset: 672)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3213, file: !74, line: 342, baseType: !7, size: 32, offset: 704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3213, file: !74, line: 344, baseType: !247, size: 16, offset: 736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3213, file: !74, line: 345, baseType: !247, size: 16, offset: 752)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3213, file: !74, line: 346, baseType: !247, size: 16, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3213, file: !74, line: 348, baseType: !321, size: 8, offset: 784)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3213, file: !74, line: 349, baseType: !321, size: 8, offset: 792)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3213, file: !74, line: 350, baseType: !321, size: 8, offset: 800)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3213, file: !74, line: 351, baseType: !86, size: 32, offset: 832)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2865, file: !74, line: 504, baseType: !7, size: 32, offset: 8896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !2865, file: !74, line: 534, baseType: !7, size: 32, offset: 8928)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !2865, file: !74, line: 535, baseType: !7, size: 32, offset: 8960)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2865, file: !74, line: 536, baseType: !354, size: 32, offset: 8992)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2865, file: !74, line: 537, baseType: !582, size: 192, offset: 9024)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2865, file: !74, line: 544, baseType: !3248, size: 64, offset: 9216)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !74, line: 40, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2865, file: !74, line: 546, baseType: !231, size: 128, offset: 9280)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2865, file: !74, line: 547, baseType: !338, offset: 9408)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2865, file: !74, line: 548, baseType: !2775, size: 704, offset: 9408)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2865, file: !74, line: 550, baseType: !582, size: 192, offset: 10112)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2865, file: !74, line: 551, baseType: !582, size: 192, offset: 10304)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2865, file: !74, line: 557, baseType: !231, size: 128, offset: 10496)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2865, file: !74, line: 558, baseType: !338, offset: 10624)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2865, file: !74, line: 560, baseType: !354, size: 32, offset: 10624)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !2865, file: !74, line: 563, baseType: !3259, size: 256, offset: 10688)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !3260, line: 18, size: 256, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3259, file: !3260, line: 19, baseType: !2236, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3259, file: !3260, line: 20, baseType: !354, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3259, file: !3260, line: 21, baseType: !2864, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3259, file: !3260, line: 22, baseType: !3266, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !3260, line: 10, size: 256, elements: !3269)
!3269 = !{!3270, !3311, !3315, !3319}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !3268, file: !3260, line: 11, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!354, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !3276, line: 22, size: 1280, elements: !3277)
!3276 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !3275, file: !3276, line: 23, baseType: !1134, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3275, file: !3276, line: 24, baseType: !311, size: 32, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !3275, file: !3276, line: 25, baseType: !311, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !3275, file: !3276, line: 28, baseType: !311, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3275, file: !3276, line: 29, baseType: !316, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !3275, file: !3276, line: 30, baseType: !316, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !3275, file: !3276, line: 31, baseType: !311, size: 32, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !3275, file: !3276, line: 32, baseType: !311, size: 32, offset: 288)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !3275, file: !3276, line: 33, baseType: !311, size: 32, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !3275, file: !3276, line: 34, baseType: !311, size: 32, offset: 352)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3275, file: !3276, line: 35, baseType: !316, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !3275, file: !3276, line: 38, baseType: !311, size: 32, offset: 448)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !3275, file: !3276, line: 40, baseType: !311, size: 32, offset: 480)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !3275, file: !3276, line: 41, baseType: !311, size: 32, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !3275, file: !3276, line: 42, baseType: !311, size: 32, offset: 544)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !3275, file: !3276, line: 43, baseType: !316, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !3275, file: !3276, line: 44, baseType: !316, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3275, file: !3276, line: 46, baseType: !311, size: 32, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3275, file: !3276, line: 47, baseType: !311, size: 32, offset: 736)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !3275, file: !3276, line: 48, baseType: !316, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !3275, file: !3276, line: 49, baseType: !311, size: 32, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !3275, file: !3276, line: 51, baseType: !311, size: 32, offset: 864)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !3275, file: !3276, line: 52, baseType: !311, size: 32, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !3275, file: !3276, line: 53, baseType: !311, size: 32, offset: 928)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !3275, file: !3276, line: 54, baseType: !311, size: 32, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3275, file: !3276, line: 55, baseType: !311, size: 32, offset: 992)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !3275, file: !3276, line: 56, baseType: !311, size: 32, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !3275, file: !3276, line: 57, baseType: !311, size: 32, offset: 1056)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !3275, file: !3276, line: 58, baseType: !1134, size: 32, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !3275, file: !3276, line: 59, baseType: !1134, size: 32, offset: 1120)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !3275, file: !3276, line: 60, baseType: !316, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !3275, file: !3276, line: 61, baseType: !311, size: 32, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3275, file: !3276, line: 63, baseType: !311, size: 32, offset: 1248)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !3268, file: !3260, line: 12, baseType: !3312, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!354, !2868, !3274, !2792}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !3268, file: !3260, line: 14, baseType: !3316, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!354, !2868, !3274}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !3268, file: !3260, line: 15, baseType: !3065, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2865, file: !74, line: 570, baseType: !634, size: 128, align: 64, offset: 10944)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2865, file: !74, line: 571, baseType: !1170, size: 128, offset: 11072)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2865, file: !74, line: 576, baseType: !582, size: 192, offset: 11200)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2865, file: !74, line: 578, baseType: !3324, size: 64, offset: 11392)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !74, line: 578, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2865, file: !74, line: 579, baseType: !231, size: 128, offset: 11456)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2865, file: !74, line: 580, baseType: !3328, size: 2368, offset: 11584)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1795, line: 682, size: 2368, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3328, file: !1795, line: 683, baseType: !2936, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3328, file: !1795, line: 684, baseType: !7, size: 32, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3328, file: !1795, line: 686, baseType: !3333, size: 448, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3334, line: 26, baseType: !3335)
!3334 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3334, line: 16, size: 448, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3342, !3343, !3348, !3353}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !3334, line: 17, baseType: !338)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3335, file: !3334, line: 18, baseType: !354, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3335, file: !3334, line: 19, baseType: !354, size: 32, offset: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3335, file: !3334, line: 20, baseType: !3341, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3335, file: !3334, line: 22, baseType: !464, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3335, file: !3334, line: 23, baseType: !3344, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3334, line: 13, baseType: !3346)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!464, !2042, !464}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3335, file: !3334, line: 24, baseType: !3349, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3334, line: 14, baseType: !3351)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !464, !464}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3335, file: !3334, line: 25, baseType: !1170, size: 128, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3328, file: !1795, line: 687, baseType: !3333, size: 448, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !3328, file: !1795, line: 689, baseType: !3333, size: 448, offset: 1024)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !3328, file: !1795, line: 690, baseType: !3333, size: 448, offset: 1472)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3328, file: !1795, line: 697, baseType: !338, offset: 1920)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3328, file: !1795, line: 698, baseType: !1794, size: 128, offset: 1920)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3328, file: !1795, line: 699, baseType: !1452, size: 256, offset: 2048)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3328, file: !1795, line: 700, baseType: !2683, size: 64, offset: 2304)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2865, file: !74, line: 582, baseType: !275, size: 64, offset: 13952)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2865, file: !74, line: 589, baseType: !421, size: 8, offset: 14016)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !2865, file: !74, line: 591, baseType: !573, size: 64, offset: 14080)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !2865, file: !74, line: 594, baseType: !3365, size: 320, offset: 14144)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 320, elements: !1422)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1805, file: !1806, line: 191, baseType: !464, size: 64, offset: 7168)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1805, file: !1806, line: 193, baseType: !354, size: 32, offset: 7232)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1805, file: !1806, line: 194, baseType: !218, size: 64, offset: 7296)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1805, file: !1806, line: 196, baseType: !806, size: 256, offset: 7360)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1805, file: !1806, line: 197, baseType: !1863, size: 64, offset: 7616)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1805, file: !1806, line: 199, baseType: !3372, size: 64, offset: 7680)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1806, line: 199, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1805, file: !1806, line: 200, baseType: !795, size: 32, offset: 7744)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1805, file: !1806, line: 201, baseType: !3376, size: 64, offset: 7808)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1806, line: 156, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1805, file: !1806, line: 203, baseType: !1857, size: 512, offset: 7872)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1805, file: !1806, line: 208, baseType: !354, size: 32, offset: 8384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1805, file: !1806, line: 209, baseType: !3381, size: 64, offset: 8448)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1806, line: 157, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1805, file: !1806, line: 210, baseType: !3384, offset: 8512)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !486, line: 192, elements: !352)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1799, file: !1800, line: 206, baseType: !7, size: 32, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1799, file: !1800, line: 210, baseType: !247, size: 16, offset: 160)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1799, file: !1800, line: 211, baseType: !247, size: 16, offset: 176)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1799, file: !1800, line: 212, baseType: !247, size: 16, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1799, file: !1800, line: 213, baseType: !2956, size: 8, offset: 208)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1799, file: !1800, line: 214, baseType: !1041, size: 8, offset: 216)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1799, file: !1800, line: 215, baseType: !795, size: 32, offset: 224)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1799, file: !1800, line: 217, baseType: !3393, size: 192, offset: 256)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2899, line: 37, size: 192, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !3393, file: !2899, line: 38, baseType: !1826, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !3393, file: !2899, line: 40, baseType: !7, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !3393, file: !2899, line: 42, baseType: !7, size: 32, offset: 96)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !3393, file: !2899, line: 44, baseType: !7, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1799, file: !1800, line: 219, baseType: !3400, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1800, line: 19, baseType: !3402)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !1798}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1799, file: !1800, line: 221, baseType: !464, size: 64, offset: 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 240, baseType: !3406, size: 64, offset: 576)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 240, size: 64, elements: !3407)
!3407 = !{!3408}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !3406, file: !1800, line: 242, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1795, line: 313, size: 832, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3422}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !3410, file: !1795, line: 314, baseType: !1798, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !3410, file: !1795, line: 316, baseType: !3393, size: 192, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !3410, file: !1795, line: 318, baseType: !247, size: 16, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !3410, file: !1795, line: 319, baseType: !247, size: 16, offset: 272)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !3410, file: !1795, line: 320, baseType: !247, size: 16, offset: 288)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !3410, file: !1795, line: 321, baseType: !247, size: 16, offset: 304)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !3410, file: !1795, line: 323, baseType: !3393, size: 192, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !3410, file: !1795, line: 325, baseType: !1452, size: 256, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !3410, file: !1795, line: 327, baseType: !3421, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !3410, file: !1795, line: 328, baseType: !3423, offset: 832)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2898, elements: !2687)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1799, file: !1800, line: 246, baseType: !247, size: 16, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1799, file: !1800, line: 252, baseType: !247, size: 16, offset: 656)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1799, file: !1800, line: 254, baseType: !795, size: 32, offset: 672)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1799, file: !1800, line: 256, baseType: !3421, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1799, file: !1800, line: 258, baseType: !3429, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1799, file: !1800, line: 265, baseType: !3423, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1794, file: !1795, line: 556, baseType: !1798, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !902, file: !903, line: 1050, baseType: !3433, size: 64, offset: 10688)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !74, line: 1236, size: 320, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3434, file: !74, line: 1237, baseType: !231, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3434, file: !74, line: 1238, baseType: !231, size: 128, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3434, file: !74, line: 1239, baseType: !247, size: 16, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3434, file: !74, line: 1240, baseType: !421, size: 8, offset: 272)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3434, file: !74, line: 1241, baseType: !421, size: 8, offset: 280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !902, file: !903, line: 1054, baseType: !3442, size: 64, offset: 10752)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3444, line: 131, size: 64, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3443, file: !3444, line: 132, baseType: !218, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !902, file: !903, line: 1056, baseType: !2724, size: 64, offset: 10816)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !902, file: !903, line: 1058, baseType: !2919, size: 64, offset: 10880)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !902, file: !903, line: 1061, baseType: !3450, size: 64, offset: 10944)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !903, line: 43, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !902, file: !903, line: 1064, baseType: !218, size: 64, offset: 11008)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !902, file: !903, line: 1065, baseType: !3454, size: 64, offset: 11072)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1641, line: 14, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1641, line: 12, size: 384, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !1641, line: 13, baseType: !3459, size: 384)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !1641, line: 13, size: 384, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3459, file: !1641, line: 13, baseType: !354, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3459, file: !1641, line: 13, baseType: !354, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3459, file: !1641, line: 13, baseType: !354, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3459, file: !1641, line: 13, baseType: !3465, size: 256, offset: 128)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3466, line: 32, size: 256, elements: !3467)
!3466 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468, !3473, !3486, !3492, !3501, !3521, !3526}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3465, file: !3466, line: 37, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 34, size: 64, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3469, file: !3466, line: 35, baseType: !1149, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3469, file: !3466, line: 36, baseType: !256, size: 32, offset: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3465, file: !3466, line: 45, baseType: !3474, size: 192)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 40, size: 192, elements: !3475)
!3475 = !{!3476, !3478, !3479, !3485}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3474, file: !3466, line: 41, baseType: !3477, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !257, line: 95, baseType: !354)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3474, file: !3466, line: 42, baseType: !354, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3474, file: !3466, line: 43, baseType: !3480, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3466, line: 11, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3466, line: 8, size: 64, elements: !3482)
!3482 = !{!3483, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3481, file: !3466, line: 9, baseType: !354, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3481, file: !3466, line: 10, baseType: !464, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3474, file: !3466, line: 44, baseType: !354, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3465, file: !3466, line: 52, baseType: !3487, size: 128)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 48, size: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3487, file: !3466, line: 49, baseType: !1149, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3487, file: !3466, line: 50, baseType: !256, size: 32, offset: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3487, file: !3466, line: 51, baseType: !3480, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3465, file: !3466, line: 61, baseType: !3493, size: 256)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 55, size: 256, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3500}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3493, file: !3466, line: 56, baseType: !1149, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3493, file: !3466, line: 57, baseType: !256, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3493, file: !3466, line: 58, baseType: !354, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3493, file: !3466, line: 59, baseType: !3499, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !257, line: 94, baseType: !661)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3493, file: !3466, line: 60, baseType: !3499, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3465, file: !3466, line: 95, baseType: !3502, size: 256)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 64, size: 256, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3502, file: !3466, line: 65, baseType: !464, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3466, line: 77, baseType: !3506, size: 192, offset: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3466, line: 77, size: 192, elements: !3507)
!3507 = !{!3508, !3509, !3516}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3506, file: !3466, line: 82, baseType: !890, size: 16)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3506, file: !3466, line: 88, baseType: !3510, size: 192)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !3466, line: 84, size: 192, elements: !3511)
!3511 = !{!3512, !3514, !3515}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3510, file: !3466, line: 85, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 64, elements: !1015)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3510, file: !3466, line: 86, baseType: !464, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3510, file: !3466, line: 87, baseType: !464, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3506, file: !3466, line: 93, baseType: !3517, size: 96)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !3466, line: 90, size: 96, elements: !3518)
!3518 = !{!3519, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3517, file: !3466, line: 91, baseType: !3513, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3517, file: !3466, line: 92, baseType: !311, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3465, file: !3466, line: 101, baseType: !3522, size: 128)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 98, size: 128, elements: !3523)
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3522, file: !3466, line: 99, baseType: !135, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3522, file: !3466, line: 100, baseType: !354, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3465, file: !3466, line: 108, baseType: !3527, size: 128)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !3466, line: 104, size: 128, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3527, file: !3466, line: 105, baseType: !464, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3527, file: !3466, line: 106, baseType: !354, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3527, file: !3466, line: 107, baseType: !7, size: 32, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !902, file: !903, line: 1067, baseType: !1713, offset: 11136)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !902, file: !903, line: 1099, baseType: !3534, size: 64, offset: 11136)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !903, line: 56, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !902, file: !903, line: 1103, baseType: !231, size: 128, offset: 11200)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !902, file: !903, line: 1104, baseType: !3538, size: 64, offset: 11328)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !903, line: 46, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !902, file: !903, line: 1105, baseType: !582, size: 192, offset: 11392)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !902, file: !903, line: 1106, baseType: !7, size: 32, offset: 11584)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !902, file: !903, line: 1109, baseType: !3543, size: 128, offset: 11648)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3544, size: 128, elements: !1257)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !903, line: 51, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !902, file: !903, line: 1110, baseType: !582, size: 192, offset: 11776)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !902, file: !903, line: 1111, baseType: !231, size: 128, offset: 11968)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !902, file: !903, line: 1173, baseType: !3549, size: 64, offset: 12096)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3551, line: 62, size: 256, align: 256, elements: !3552)
!3551 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3552 = !{!3553, !3554, !3555, !3560}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3550, file: !3551, line: 75, baseType: !311, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3550, file: !3551, line: 90, baseType: !311, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3550, file: !3551, line: 124, baseType: !3556, size: 64, offset: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3550, file: !3551, line: 109, size: 64, elements: !3557)
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3556, file: !3551, line: 110, baseType: !316, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3556, file: !3551, line: 112, baseType: !316, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3551, line: 144, baseType: !311, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !902, file: !903, line: 1174, baseType: !309, size: 32, offset: 12160)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !902, file: !903, line: 1179, baseType: !218, size: 64, offset: 12224)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !902, file: !903, line: 1182, baseType: !3564, size: 128, offset: 12288)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !842, line: 76, size: 128, elements: !3565)
!3565 = !{!3566, !3571, !3572}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3564, file: !842, line: 85, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3568, line: 7, size: 64, elements: !3569)
!3568 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3567, file: !3568, line: 12, baseType: !1056, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3564, file: !842, line: 88, baseType: !421, size: 8, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3564, file: !842, line: 95, baseType: !421, size: 8, offset: 72)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !903, line: 1184, baseType: !3574, size: 128, offset: 12416)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !903, line: 1184, size: 128, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3574, file: !903, line: 1185, baseType: !915, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3574, file: !903, line: 1186, baseType: !634, size: 128, align: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !902, file: !903, line: 1190, baseType: !3579, size: 64, offset: 12544)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !903, line: 53, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !902, file: !903, line: 1192, baseType: !3582, size: 128, offset: 12608)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !842, line: 64, size: 128, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3582, file: !842, line: 65, baseType: !219, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3582, file: !842, line: 67, baseType: !311, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3582, file: !842, line: 68, baseType: !311, size: 32, offset: 96)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !902, file: !903, line: 1206, baseType: !354, size: 32, offset: 12736)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !902, file: !903, line: 1207, baseType: !354, size: 32, offset: 12768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !902, file: !903, line: 1209, baseType: !218, size: 64, offset: 12800)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !902, file: !903, line: 1219, baseType: !315, size: 64, offset: 12864)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !902, file: !903, line: 1220, baseType: !315, size: 64, offset: 12928)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !902, file: !903, line: 1317, baseType: !354, size: 32, offset: 12992)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !902, file: !903, line: 1319, baseType: !901, size: 64, offset: 13056)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !902, file: !903, line: 1322, baseType: !3595, size: 64, offset: 13120)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3597, line: 56, size: 512, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3605, !3606, !3608}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3596, file: !3597, line: 57, baseType: !3595, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3596, file: !3597, line: 58, baseType: !464, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3596, file: !3597, line: 59, baseType: !218, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3596, file: !3597, line: 60, baseType: !218, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3596, file: !3597, line: 61, baseType: !3604, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3596, file: !3597, line: 62, baseType: !7, size: 32, offset: 320)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3596, file: !3597, line: 63, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !232, line: 153, baseType: !315)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3596, file: !3597, line: 64, baseType: !1987, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !902, file: !903, line: 1326, baseType: !915, size: 32, offset: 13184)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !902, file: !903, line: 1342, baseType: !464, size: 64, offset: 13248)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !902, file: !903, line: 1343, baseType: !316, size: 64, offset: 13312)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !902, file: !903, line: 1344, baseType: !315, size: 64, offset: 13376)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !902, file: !903, line: 1345, baseType: !316, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !902, file: !903, line: 1346, baseType: !316, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !902, file: !903, line: 1347, baseType: !316, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !902, file: !903, line: 1348, baseType: !634, size: 128, align: 64, offset: 13504)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !902, file: !903, line: 1358, baseType: !3618, size: 34816, offset: 13824)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3619, line: 485, size: 34816, elements: !3620)
!3619 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3620 = !{!3621, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3650, !3651, !3652, !3653, !3654, !3655, !3658, !3659, !3660}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3618, file: !3619, line: 487, baseType: !3622, size: 192)
!3622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3623, size: 192, elements: !491)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3624, line: 16, size: 64, elements: !3625)
!3624 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3623, file: !3624, line: 17, baseType: !682, size: 16)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3623, file: !3624, line: 18, baseType: !682, size: 16, offset: 16)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3623, file: !3624, line: 19, baseType: !682, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3623, file: !3624, line: 19, baseType: !682, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3623, file: !3624, line: 19, baseType: !682, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3623, file: !3624, line: 19, baseType: !682, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3623, file: !3624, line: 19, baseType: !682, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3623, file: !3624, line: 20, baseType: !682, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3623, file: !3624, line: 20, baseType: !682, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3623, file: !3624, line: 20, baseType: !682, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3623, file: !3624, line: 20, baseType: !682, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3623, file: !3624, line: 20, baseType: !682, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3623, file: !3624, line: 20, baseType: !682, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3618, file: !3619, line: 491, baseType: !218, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3618, file: !3619, line: 495, baseType: !247, size: 16, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3618, file: !3619, line: 496, baseType: !247, size: 16, offset: 272)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3618, file: !3619, line: 497, baseType: !247, size: 16, offset: 288)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3618, file: !3619, line: 498, baseType: !247, size: 16, offset: 304)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3618, file: !3619, line: 502, baseType: !218, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3618, file: !3619, line: 503, baseType: !218, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3618, file: !3619, line: 514, baseType: !3647, size: 256, offset: 448)
!3647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3648, size: 256, elements: !846)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3619, line: 483, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3618, file: !3619, line: 516, baseType: !218, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3618, file: !3619, line: 518, baseType: !218, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3618, file: !3619, line: 520, baseType: !218, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3618, file: !3619, line: 521, baseType: !218, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3618, file: !3619, line: 522, baseType: !218, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3618, file: !3619, line: 528, baseType: !3656, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3619, line: 10, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3618, file: !3619, line: 535, baseType: !218, size: 64, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3618, file: !3619, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3618, file: !3619, line: 540, baseType: !3661, size: 33280, offset: 1536)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3662, line: 317, size: 33280, elements: !3663)
!3662 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3661, file: !3662, line: 330, baseType: !7, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3661, file: !3662, line: 337, baseType: !218, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3661, file: !3662, line: 348, baseType: !3667, size: 32768, offset: 512)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3662, line: 304, size: 32768, elements: !3668)
!3668 = !{!3669, !3684, !3721, !3771, !3784}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3667, file: !3662, line: 305, baseType: !3670, size: 896)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3662, line: 12, size: 896, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3683}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3670, file: !3662, line: 13, baseType: !309, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3670, file: !3662, line: 14, baseType: !309, size: 32, offset: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3670, file: !3662, line: 15, baseType: !309, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3670, file: !3662, line: 16, baseType: !309, size: 32, offset: 96)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3670, file: !3662, line: 17, baseType: !309, size: 32, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3670, file: !3662, line: 18, baseType: !309, size: 32, offset: 160)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3670, file: !3662, line: 19, baseType: !309, size: 32, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3670, file: !3662, line: 22, baseType: !3680, size: 640, offset: 224)
!3680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 640, elements: !3681)
!3681 = !{!3682}
!3682 = !DISubrange(count: 20)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3670, file: !3662, line: 25, baseType: !309, size: 32, offset: 864)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3667, file: !3662, line: 306, baseType: !3685, size: 4096, align: 128)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3662, line: 34, size: 4096, align: 128, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3706, !3707, !3708, !3710, !3712, !3716}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3685, file: !3662, line: 35, baseType: !682, size: 16)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3685, file: !3662, line: 36, baseType: !682, size: 16, offset: 16)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3685, file: !3662, line: 37, baseType: !682, size: 16, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3685, file: !3662, line: 38, baseType: !682, size: 16, offset: 48)
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !3662, line: 39, baseType: !3692, size: 128, offset: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3685, file: !3662, line: 39, size: 128, elements: !3693)
!3693 = !{!3694, !3699}
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !3662, line: 40, baseType: !3695, size: 128)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3662, line: 40, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3695, file: !3662, line: 41, baseType: !315, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3695, file: !3662, line: 42, baseType: !315, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !3662, line: 44, baseType: !3700, size: 128)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3662, line: 44, size: 128, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3705}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3700, file: !3662, line: 45, baseType: !309, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3700, file: !3662, line: 46, baseType: !309, size: 32, offset: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3700, file: !3662, line: 47, baseType: !309, size: 32, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3700, file: !3662, line: 48, baseType: !309, size: 32, offset: 96)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3685, file: !3662, line: 51, baseType: !309, size: 32, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3685, file: !3662, line: 52, baseType: !309, size: 32, offset: 224)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3685, file: !3662, line: 55, baseType: !3709, size: 1024, offset: 256)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 1024, elements: !325)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3685, file: !3662, line: 58, baseType: !3711, size: 2048, offset: 1280)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 2048, elements: !1758)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3685, file: !3662, line: 60, baseType: !3713, size: 384, offset: 3328)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 384, elements: !3714)
!3714 = !{!3715}
!3715 = !DISubrange(count: 12)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3685, file: !3662, line: 62, baseType: !3717, size: 384, offset: 3712)
!3717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3685, file: !3662, line: 62, size: 384, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3717, file: !3662, line: 63, baseType: !3713, size: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3717, file: !3662, line: 64, baseType: !3713, size: 384)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3667, file: !3662, line: 307, baseType: !3722, size: 1088)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3662, line: 79, size: 1088, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3770}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3722, file: !3662, line: 80, baseType: !309, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3722, file: !3662, line: 81, baseType: !309, size: 32, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3722, file: !3662, line: 82, baseType: !309, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3722, file: !3662, line: 83, baseType: !309, size: 32, offset: 96)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3722, file: !3662, line: 84, baseType: !309, size: 32, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3722, file: !3662, line: 85, baseType: !309, size: 32, offset: 160)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3722, file: !3662, line: 86, baseType: !309, size: 32, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3722, file: !3662, line: 88, baseType: !3680, size: 640, offset: 224)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3722, file: !3662, line: 89, baseType: !1041, size: 8, offset: 864)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3722, file: !3662, line: 90, baseType: !1041, size: 8, offset: 872)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3722, file: !3662, line: 91, baseType: !1041, size: 8, offset: 880)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3722, file: !3662, line: 92, baseType: !1041, size: 8, offset: 888)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3722, file: !3662, line: 93, baseType: !1041, size: 8, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3722, file: !3662, line: 94, baseType: !1041, size: 8, offset: 904)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3722, file: !3662, line: 95, baseType: !3739, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3741, line: 11, size: 128, elements: !3742)
!3741 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3740, file: !3741, line: 12, baseType: !135, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3740, file: !3741, line: 13, baseType: !3745, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3747, line: 56, size: 1344, elements: !3748)
!3747 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3746, file: !3747, line: 61, baseType: !218, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3746, file: !3747, line: 62, baseType: !218, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3746, file: !3747, line: 63, baseType: !218, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3746, file: !3747, line: 64, baseType: !218, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3746, file: !3747, line: 65, baseType: !218, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3746, file: !3747, line: 66, baseType: !218, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3746, file: !3747, line: 68, baseType: !218, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3746, file: !3747, line: 69, baseType: !218, size: 64, offset: 448)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3746, file: !3747, line: 70, baseType: !218, size: 64, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3746, file: !3747, line: 71, baseType: !218, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3746, file: !3747, line: 72, baseType: !218, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3746, file: !3747, line: 73, baseType: !218, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3746, file: !3747, line: 74, baseType: !218, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3746, file: !3747, line: 75, baseType: !218, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3746, file: !3747, line: 76, baseType: !218, size: 64, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3746, file: !3747, line: 81, baseType: !218, size: 64, offset: 960)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3746, file: !3747, line: 83, baseType: !218, size: 64, offset: 1024)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3746, file: !3747, line: 84, baseType: !218, size: 64, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3746, file: !3747, line: 85, baseType: !218, size: 64, offset: 1152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3746, file: !3747, line: 86, baseType: !218, size: 64, offset: 1216)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3746, file: !3747, line: 87, baseType: !218, size: 64, offset: 1280)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3722, file: !3662, line: 96, baseType: !309, size: 32, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3667, file: !3662, line: 308, baseType: !3772, size: 4608, align: 512)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3662, line: 289, size: 4608, align: 512, elements: !3773)
!3773 = !{!3774, !3775, !3782}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3772, file: !3662, line: 290, baseType: !3685, size: 4096, align: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3772, file: !3662, line: 291, baseType: !3776, size: 512, offset: 4096)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3662, line: 268, size: 512, elements: !3777)
!3777 = !{!3778, !3779, !3780}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3776, file: !3662, line: 269, baseType: !315, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3776, file: !3662, line: 270, baseType: !315, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3776, file: !3662, line: 271, baseType: !3781, size: 384, offset: 128)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !1316)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3772, file: !3662, line: 292, baseType: !3783, offset: 4608)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, elements: !1566)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3667, file: !3662, line: 309, baseType: !3785, size: 32768)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 32768, elements: !3786)
!3786 = !{!3787}
!3787 = !DISubrange(count: 4096)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !221, line: 378, baseType: !3789, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !894, file: !221, line: 384, baseType: !1190, size: 192, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !769, file: !221, line: 500, baseType: !338, offset: 6656)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !769, file: !221, line: 501, baseType: !3793, size: 64, offset: 6656)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !221, line: 387, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !769, file: !221, line: 516, baseType: !1404, size: 64, offset: 6720)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !769, file: !221, line: 519, baseType: !654, size: 64, offset: 6784)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !769, file: !221, line: 521, baseType: !3798, size: 64, offset: 6848)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !221, line: 521, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !769, file: !221, line: 545, baseType: !795, size: 32, offset: 6912)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !769, file: !221, line: 548, baseType: !421, size: 8, offset: 6944)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !769, file: !221, line: 550, baseType: !3803, offset: 6952)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3804, line: 142, elements: !352)
!3804 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !769, file: !221, line: 554, baseType: !1452, size: 256, offset: 6976)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !769, file: !221, line: 557, baseType: !309, size: 32, offset: 7232)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !766, file: !221, line: 565, baseType: !3808, offset: 7296)
!3808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, elements: !2687)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !749, file: !221, line: 333, baseType: !3810, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !788, line: 284, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !788, line: 284, size: 64, elements: !3812)
!3812 = !{!3813}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3811, file: !788, line: 284, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !793, line: 19, baseType: !218)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !749, file: !221, line: 334, baseType: !218, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !749, file: !221, line: 343, baseType: !3817, size: 256, offset: 704)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !749, file: !221, line: 340, size: 256, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3817, file: !221, line: 341, baseType: !756, size: 192, align: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3817, file: !221, line: 342, baseType: !218, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !749, file: !221, line: 351, baseType: !231, size: 128, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !749, file: !221, line: 353, baseType: !3823, size: 64, offset: 1088)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !221, line: 353, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !749, file: !221, line: 356, baseType: !2106, size: 64, offset: 1152)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !749, file: !221, line: 359, baseType: !218, size: 64, offset: 1216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !749, file: !221, line: 361, baseType: !654, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !749, file: !221, line: 362, baseType: !464, size: 64, offset: 1344)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !749, file: !221, line: 365, baseType: !586, size: 64, offset: 1408)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !749, file: !221, line: 373, baseType: !3831, offset: 1472)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !221, line: 296, elements: !352)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !647, file: !92, line: 1836, baseType: !218, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !647, file: !92, line: 1837, baseType: !3834, size: 64, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!354, !242, !654}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !647, file: !92, line: 1838, baseType: !3838, size: 64, offset: 960)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!354, !654, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !92, line: 1007, baseType: !464)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !647, file: !92, line: 1839, baseType: !3834, size: 64, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !647, file: !92, line: 1840, baseType: !3844, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!354, !654, !440, !440, !354}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !647, file: !92, line: 1841, baseType: !3848, size: 64, offset: 1152)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!354, !354, !654, !354}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !92, line: 1842, baseType: !3852, size: 64, offset: 1216)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!354, !654, !354, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !92, line: 1062, size: 1664, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3889, !3890, !3891, !3904, !3935}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3856, file: !92, line: 1063, baseType: !3855, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3856, file: !92, line: 1064, baseType: !231, size: 128, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3856, file: !92, line: 1065, baseType: !479, size: 128, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3856, file: !92, line: 1066, baseType: !231, size: 128, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3856, file: !92, line: 1069, baseType: !231, size: 128, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3856, file: !92, line: 1072, baseType: !3841, size: 64, offset: 576)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3856, file: !92, line: 1073, baseType: !7, size: 32, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3856, file: !92, line: 1074, baseType: !321, size: 8, offset: 672)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3856, file: !92, line: 1075, baseType: !7, size: 32, offset: 704)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3856, file: !92, line: 1076, baseType: !354, size: 32, offset: 736)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3856, file: !92, line: 1077, baseType: !1170, size: 128, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3856, file: !92, line: 1078, baseType: !654, size: 64, offset: 896)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3856, file: !92, line: 1079, baseType: !440, size: 64, offset: 960)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3856, file: !92, line: 1080, baseType: !440, size: 64, offset: 1024)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3856, file: !92, line: 1082, baseType: !3873, size: 64, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !92, line: 1314, size: 320, elements: !3875)
!3875 = !{!3876, !3884, !3885, !3886, !3887, !3888}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3874, file: !92, line: 1315, baseType: !3877)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3878, line: 20, baseType: !3879)
!3878 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3878, line: 11, elements: !3880)
!3880 = !{!3881}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3879, file: !3878, line: 12, baseType: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !350, line: 33, baseType: !3883)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 31, elements: !352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3874, file: !92, line: 1316, baseType: !354, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3874, file: !92, line: 1317, baseType: !354, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3874, file: !92, line: 1318, baseType: !3873, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3874, file: !92, line: 1319, baseType: !654, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3874, file: !92, line: 1320, baseType: !634, size: 128, align: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3856, file: !92, line: 1084, baseType: !218, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3856, file: !92, line: 1085, baseType: !218, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3856, file: !92, line: 1087, baseType: !3892, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !92, line: 1011, size: 128, elements: !3895)
!3895 = !{!3896, !3900}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3894, file: !92, line: 1012, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3855, !3855}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3894, file: !92, line: 1013, baseType: !3901, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !3855}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3856, file: !92, line: 1088, baseType: !3905, size: 64, offset: 1344)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !92, line: 1016, size: 512, elements: !3908)
!3908 = !{!3909, !3913, !3917, !3918, !3922, !3926, !3930, !3934}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3907, file: !92, line: 1017, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!3841, !3841}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3907, file: !92, line: 1018, baseType: !3914, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3841}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3907, file: !92, line: 1019, baseType: !3901, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3907, file: !92, line: 1020, baseType: !3919, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!354, !3855, !354}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3907, file: !92, line: 1021, baseType: !3923, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!421, !3855}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3907, file: !92, line: 1022, baseType: !3927, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!354, !3855, !354, !235}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3907, file: !92, line: 1023, baseType: !3931, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !3855, !3341}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3907, file: !92, line: 1024, baseType: !3923, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3856, file: !92, line: 1097, baseType: !3936, size: 256, offset: 1408)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3856, file: !92, line: 1089, size: 256, elements: !3937)
!3937 = !{!3938, !3947, !3953}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3936, file: !92, line: 1090, baseType: !3939, size: 256)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3940, line: 10, size: 256, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3941 = !{!3942, !3943, !3946}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3939, file: !3940, line: 11, baseType: !309, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3939, file: !3940, line: 12, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3940, line: 5, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3939, file: !3940, line: 13, baseType: !231, size: 128, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3936, file: !92, line: 1091, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3940, line: 17, size: 64, elements: !3949)
!3949 = !{!3950}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3948, file: !3940, line: 18, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3940, line: 16, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3936, file: !92, line: 1096, baseType: !3954, size: 192)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3936, file: !92, line: 1092, size: 192, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3954, file: !92, line: 1093, baseType: !231, size: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3954, file: !92, line: 1094, baseType: !354, size: 32, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3954, file: !92, line: 1095, baseType: !7, size: 32, offset: 160)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !647, file: !92, line: 1843, baseType: !3960, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!659, !654, !219, !354, !573, !605, !354}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !647, file: !92, line: 1844, baseType: !778, size: 64, offset: 1344)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !647, file: !92, line: 1845, baseType: !3965, size: 64, offset: 1408)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!354, !354}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !647, file: !92, line: 1846, baseType: !3852, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !647, file: !92, line: 1847, baseType: !3970, size: 64, offset: 1536)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!659, !3579, !654, !605, !573, !7}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !647, file: !92, line: 1848, baseType: !3974, size: 64, offset: 1600)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!659, !654, !605, !3579, !573, !7}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !647, file: !92, line: 1849, baseType: !3978, size: 64, offset: 1664)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!354, !654, !135, !3981, !3341}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !647, file: !92, line: 1850, baseType: !3983, size: 64, offset: 1728)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!135, !654, !354, !440, !440}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !647, file: !92, line: 1852, baseType: !3987, size: 64, offset: 1792)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !567, !654}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !647, file: !92, line: 1856, baseType: !3991, size: 64, offset: 1856)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!659, !654, !440, !654, !440, !573, !7}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !647, file: !92, line: 1858, baseType: !3995, size: 64, offset: 1920)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!440, !654, !440, !654, !440, !440, !7}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !647, file: !92, line: 1861, baseType: !3844, size: 64, offset: 1984)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !622, file: !92, line: 929, baseType: !338, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !622, file: !92, line: 930, baseType: !91, size: 32, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !622, file: !92, line: 931, baseType: !586, size: 64, offset: 448)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !622, file: !92, line: 932, baseType: !7, size: 32, offset: 512)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !622, file: !92, line: 933, baseType: !2792, size: 32, offset: 544)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !622, file: !92, line: 934, baseType: !582, size: 192, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !622, file: !92, line: 935, baseType: !440, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !622, file: !92, line: 936, baseType: !4007, size: 192, offset: 832)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !92, line: 885, size: 192, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4007, file: !92, line: 886, baseType: !3877)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4007, file: !92, line: 887, baseType: !1160, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4007, file: !92, line: 888, baseType: !100, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4007, file: !92, line: 889, baseType: !250, size: 32, offset: 96)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4007, file: !92, line: 889, baseType: !250, size: 32, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4007, file: !92, line: 890, baseType: !354, size: 32, offset: 160)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !622, file: !92, line: 937, baseType: !1235, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !622, file: !92, line: 938, baseType: !4017, size: 256, offset: 1088)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !92, line: 896, size: 256, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4017, file: !92, line: 897, baseType: !218, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4017, file: !92, line: 898, baseType: !7, size: 32, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4017, file: !92, line: 899, baseType: !7, size: 32, offset: 96)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4017, file: !92, line: 902, baseType: !7, size: 32, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4017, file: !92, line: 903, baseType: !7, size: 32, offset: 160)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4017, file: !92, line: 904, baseType: !440, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !622, file: !92, line: 940, baseType: !315, size: 64, offset: 1344)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !622, file: !92, line: 945, baseType: !464, size: 64, offset: 1408)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !622, file: !92, line: 949, baseType: !231, size: 128, offset: 1472)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !622, file: !92, line: 950, baseType: !231, size: 128, offset: 1600)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !622, file: !92, line: 952, baseType: !238, size: 64, offset: 1728)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !622, file: !92, line: 953, baseType: !4031, size: 32, offset: 1792)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4032, line: 8, baseType: !309)
!4032 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !622, file: !92, line: 954, baseType: !4031, size: 32, offset: 1824)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !568, file: !569, line: 28, baseType: !464, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !499, file: !92, line: 1955, baseType: !564, size: 64, offset: 1088)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !499, file: !92, line: 1956, baseType: !564, size: 64, offset: 1152)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !499, file: !92, line: 1957, baseType: !564, size: 64, offset: 1216)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !499, file: !92, line: 1963, baseType: !4039, size: 64, offset: 1280)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!354, !430, !219, !2042}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !499, file: !92, line: 1964, baseType: !4043, size: 64, offset: 1344)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!135, !430, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4048, line: 12, size: 256, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !{!4050, !4051, !4052, !4053, !4054}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4047, file: !4048, line: 13, baseType: !2042, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4047, file: !4048, line: 16, baseType: !354, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4047, file: !4048, line: 23, baseType: !218, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4047, file: !4048, line: 30, baseType: !218, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4047, file: !4048, line: 33, baseType: !4055, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !221, line: 27, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !499, file: !92, line: 1966, baseType: !4043, size: 64, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !431, file: !92, line: 1424, baseType: !4059, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !109, line: 322, size: 704, elements: !4062)
!4062 = !{!4063, !4109, !4113, !4117, !4118, !4119, !4120, !4121, !4126, !4131, !4135}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4061, file: !109, line: 323, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!354, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !109, line: 294, size: 1600, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4094, !4095, !4096}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4068, file: !109, line: 295, baseType: !479, size: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4068, file: !109, line: 296, baseType: !231, size: 128, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4068, file: !109, line: 297, baseType: !231, size: 128, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4068, file: !109, line: 298, baseType: !231, size: 128, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4068, file: !109, line: 299, baseType: !582, size: 192, offset: 512)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4068, file: !109, line: 300, baseType: !338, offset: 704)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4068, file: !109, line: 301, baseType: !795, size: 32, offset: 704)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4068, file: !109, line: 302, baseType: !430, size: 64, offset: 768)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4068, file: !109, line: 303, baseType: !4079, size: 64, offset: 832)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !109, line: 68, size: 64, elements: !4080)
!4080 = !{!4081, !4093}
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4079, file: !109, line: 69, baseType: !4082, size: 32)
!4082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4079, file: !109, line: 69, size: 32, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4082, file: !109, line: 70, baseType: !250, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4082, file: !109, line: 71, baseType: !259, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4082, file: !109, line: 72, baseType: !4087, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4088, line: 24, baseType: !4089)
!4088 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4088, line: 22, size: 32, elements: !4090)
!4090 = !{!4091}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4089, file: !4088, line: 23, baseType: !4092, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4088, line: 20, baseType: !256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4079, file: !109, line: 74, baseType: !108, size: 32, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4068, file: !109, line: 304, baseType: !440, size: 64, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4068, file: !109, line: 305, baseType: !218, size: 64, offset: 960)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4068, file: !109, line: 306, baseType: !4097, size: 576, offset: 1024)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !109, line: 205, size: 576, elements: !4098)
!4098 = !{!4099, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4097, file: !109, line: 206, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !109, line: 66, baseType: !442)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4097, file: !109, line: 207, baseType: !4100, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4097, file: !109, line: 208, baseType: !4100, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4097, file: !109, line: 209, baseType: !4100, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4097, file: !109, line: 210, baseType: !4100, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4097, file: !109, line: 211, baseType: !4100, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4097, file: !109, line: 212, baseType: !4100, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4097, file: !109, line: 213, baseType: !1287, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4097, file: !109, line: 214, baseType: !1287, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4061, file: !109, line: 324, baseType: !4110, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!4067, !430, !354}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4061, file: !109, line: 325, baseType: !4114, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4067}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4061, file: !109, line: 326, baseType: !4064, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4061, file: !109, line: 327, baseType: !4064, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4061, file: !109, line: 328, baseType: !4064, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4061, file: !109, line: 329, baseType: !541, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4061, file: !109, line: 332, baseType: !4122, size: 64, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!4125, !242}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4061, file: !109, line: 333, baseType: !4127, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!354, !242, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4061, file: !109, line: 335, baseType: !4132, size: 64, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!354, !242, !4125}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4061, file: !109, line: 337, baseType: !4136, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!354, !430, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !431, file: !92, line: 1425, baseType: !4141, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !109, line: 428, size: 704, elements: !4144)
!4144 = !{!4145, !4149, !4150, !4154, !4155, !4156, !4171, !4194, !4198, !4199, !4222}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4143, file: !109, line: 429, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!354, !430, !354, !354, !419}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4143, file: !109, line: 430, baseType: !541, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4143, file: !109, line: 431, baseType: !4151, size: 64, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!354, !430, !7}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4143, file: !109, line: 432, baseType: !4151, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4143, file: !109, line: 433, baseType: !541, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4143, file: !109, line: 434, baseType: !4157, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!354, !430, !354, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !109, line: 415, size: 256, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4161, file: !109, line: 416, baseType: !354, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4161, file: !109, line: 417, baseType: !7, size: 32, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4161, file: !109, line: 418, baseType: !7, size: 32, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4161, file: !109, line: 420, baseType: !7, size: 32, offset: 96)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4161, file: !109, line: 421, baseType: !7, size: 32, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4161, file: !109, line: 422, baseType: !7, size: 32, offset: 160)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4161, file: !109, line: 423, baseType: !7, size: 32, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4161, file: !109, line: 424, baseType: !7, size: 32, offset: 224)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4143, file: !109, line: 435, baseType: !4172, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!354, !430, !4079, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !109, line: 343, size: 960, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4176, file: !109, line: 344, baseType: !354, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4176, file: !109, line: 345, baseType: !315, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4176, file: !109, line: 346, baseType: !315, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4176, file: !109, line: 347, baseType: !315, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4176, file: !109, line: 348, baseType: !315, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4176, file: !109, line: 349, baseType: !315, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4176, file: !109, line: 350, baseType: !315, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4176, file: !109, line: 351, baseType: !592, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4176, file: !109, line: 353, baseType: !592, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4176, file: !109, line: 354, baseType: !354, size: 32, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4176, file: !109, line: 355, baseType: !354, size: 32, offset: 608)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4176, file: !109, line: 356, baseType: !315, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4176, file: !109, line: 357, baseType: !315, size: 64, offset: 704)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4176, file: !109, line: 358, baseType: !315, size: 64, offset: 768)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4176, file: !109, line: 359, baseType: !592, size: 64, offset: 832)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4176, file: !109, line: 360, baseType: !354, size: 32, offset: 896)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4143, file: !109, line: 436, baseType: !4195, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!354, !430, !4139, !4175}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4143, file: !109, line: 438, baseType: !4172, size: 64, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4143, file: !109, line: 439, baseType: !4200, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!354, !430, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !109, line: 409, size: 1408, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4204, file: !109, line: 410, baseType: !7, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4204, file: !109, line: 411, baseType: !4208, size: 1344, offset: 64)
!4208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4209, size: 1344, elements: !491)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !109, line: 395, size: 448, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4221}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4209, file: !109, line: 396, baseType: !7, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4209, file: !109, line: 397, baseType: !7, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4209, file: !109, line: 399, baseType: !7, size: 32, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4209, file: !109, line: 400, baseType: !7, size: 32, offset: 96)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4209, file: !109, line: 401, baseType: !7, size: 32, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4209, file: !109, line: 402, baseType: !7, size: 32, offset: 160)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4209, file: !109, line: 403, baseType: !7, size: 32, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4209, file: !109, line: 404, baseType: !317, size: 64, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4209, file: !109, line: 405, baseType: !4220, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !232, line: 126, baseType: !315)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4209, file: !109, line: 406, baseType: !4220, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4143, file: !109, line: 440, baseType: !4151, size: 64, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !431, file: !92, line: 1426, baseType: !4224, size: 64, offset: 576)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !92, line: 49, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !431, file: !92, line: 1427, baseType: !218, size: 64, offset: 640)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !431, file: !92, line: 1428, baseType: !218, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !431, file: !92, line: 1429, baseType: !218, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !431, file: !92, line: 1430, baseType: !275, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !431, file: !92, line: 1431, baseType: !806, size: 256, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !431, file: !92, line: 1432, baseType: !354, size: 32, offset: 1152)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !431, file: !92, line: 1433, baseType: !795, size: 32, offset: 1184)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !431, file: !92, line: 1437, baseType: !4235, size: 64, offset: 1216)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !92, line: 1437, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !431, file: !92, line: 1449, baseType: !4240, size: 64, offset: 1280)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !292, line: 34, size: 64, elements: !4241)
!4241 = !{!4242}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4240, file: !292, line: 35, baseType: !295, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !431, file: !92, line: 1450, baseType: !231, size: 128, offset: 1344)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !431, file: !92, line: 1451, baseType: !2704, size: 64, offset: 1472)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !431, file: !92, line: 1452, baseType: !2724, size: 64, offset: 1536)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !431, file: !92, line: 1453, baseType: !4247, size: 64, offset: 1600)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !92, line: 1453, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !431, file: !92, line: 1454, baseType: !479, size: 128, offset: 1664)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !431, file: !92, line: 1455, baseType: !7, size: 32, offset: 1792)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !431, file: !92, line: 1456, baseType: !4252, size: 2432, offset: 1856)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !109, line: 518, size: 2432, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4258, !4290}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4252, file: !109, line: 519, baseType: !7, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4252, file: !109, line: 520, baseType: !806, size: 256, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4252, file: !109, line: 521, baseType: !4257, size: 192, offset: 320)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !491)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4252, file: !109, line: 522, baseType: !4259, size: 1728, offset: 512)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4260, size: 1728, elements: !491)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !109, line: 222, size: 576, elements: !4261)
!4261 = !{!4262, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4260, file: !109, line: 223, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !109, line: 443, size: 256, elements: !4265)
!4265 = !{!4266, !4267, !4280, !4281}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4264, file: !109, line: 444, baseType: !354, size: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4264, file: !109, line: 445, baseType: !4268, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !109, line: 310, size: 512, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4270, file: !109, line: 311, baseType: !541, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4270, file: !109, line: 312, baseType: !541, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4270, file: !109, line: 313, baseType: !541, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4270, file: !109, line: 314, baseType: !541, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4270, file: !109, line: 315, baseType: !4064, size: 64, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4270, file: !109, line: 316, baseType: !4064, size: 64, offset: 320)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4270, file: !109, line: 317, baseType: !4064, size: 64, offset: 384)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4270, file: !109, line: 318, baseType: !4136, size: 64, offset: 448)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4264, file: !109, line: 446, baseType: !470, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4264, file: !109, line: 447, baseType: !4263, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4260, file: !109, line: 224, baseType: !354, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4260, file: !109, line: 226, baseType: !231, size: 128, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4260, file: !109, line: 227, baseType: !218, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4260, file: !109, line: 228, baseType: !7, size: 32, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4260, file: !109, line: 229, baseType: !7, size: 32, offset: 352)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4260, file: !109, line: 230, baseType: !4100, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4260, file: !109, line: 231, baseType: !4100, size: 64, offset: 448)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4260, file: !109, line: 232, baseType: !464, size: 64, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4252, file: !109, line: 523, baseType: !4291, size: 192, offset: 2240)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 192, elements: !491)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !431, file: !92, line: 1458, baseType: !4293, size: 2112, offset: 4288)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !92, line: 1410, size: 2112, elements: !4294)
!4294 = !{!4295, !4296, !4297}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4293, file: !92, line: 1411, baseType: !354, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !4293, file: !92, line: 1412, baseType: !1170, size: 128, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4293, file: !92, line: 1413, baseType: !4298, size: 1920, offset: 192)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4299, size: 1920, elements: !491)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4300, line: 12, size: 640, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!4301 = !{!4302, !4310, !4312, !4317, !4318}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4299, file: !4300, line: 13, baseType: !4303, size: 320)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4304, line: 17, size: 320, elements: !4305)
!4304 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!4305 = !{!4306, !4307, !4308, !4309}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4303, file: !4304, line: 18, baseType: !354, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4303, file: !4304, line: 19, baseType: !354, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4303, file: !4304, line: 20, baseType: !1170, size: 128, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4303, file: !4304, line: 22, baseType: !634, size: 128, align: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4299, file: !4300, line: 14, baseType: !4311, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4299, file: !4300, line: 15, baseType: !4313, size: 64, offset: 384)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4314, line: 16, size: 64, elements: !4315)
!4314 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!4315 = !{!4316}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4313, file: !4314, line: 17, baseType: !901, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4299, file: !4300, line: 16, baseType: !1170, size: 128, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4299, file: !4300, line: 17, baseType: !795, size: 32, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !431, file: !92, line: 1465, baseType: !464, size: 64, offset: 6400)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !431, file: !92, line: 1468, baseType: !309, size: 32, offset: 6464)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !431, file: !92, line: 1470, baseType: !1287, size: 64, offset: 6528)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !431, file: !92, line: 1471, baseType: !1287, size: 64, offset: 6592)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !431, file: !92, line: 1473, baseType: !311, size: 32, offset: 6656)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !431, file: !92, line: 1474, baseType: !4325, size: 64, offset: 6720)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !92, line: 603, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !431, file: !92, line: 1477, baseType: !1812, size: 256, offset: 6784)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !431, file: !92, line: 1478, baseType: !4329, size: 128, offset: 7040)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4330, line: 18, baseType: !4331)
!4330 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4330, line: 16, size: 128, elements: !4332)
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4331, file: !4330, line: 17, baseType: !4334, size: 128)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 128, elements: !1578)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !431, file: !92, line: 1480, baseType: !7, size: 32, offset: 7168)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !431, file: !92, line: 1481, baseType: !2792, size: 32, offset: 7200)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !431, file: !92, line: 1487, baseType: !582, size: 192, offset: 7232)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !431, file: !92, line: 1493, baseType: !376, size: 64, offset: 7424)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !431, file: !92, line: 1495, baseType: !356, size: 64, offset: 7488)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !431, file: !92, line: 1500, baseType: !354, size: 32, offset: 7552)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !431, file: !92, line: 1502, baseType: !4342, size: 448, offset: 7616)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4048, line: 60, size: 448, elements: !4343)
!4343 = !{!4344, !4349, !4350, !4351, !4352, !4353, !4354}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4342, file: !4048, line: 61, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!218, !4348, !4046}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4342, file: !4048, line: 63, baseType: !4345, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4342, file: !4048, line: 66, baseType: !135, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4342, file: !4048, line: 67, baseType: !354, size: 32, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4342, file: !4048, line: 68, baseType: !7, size: 32, offset: 224)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4342, file: !4048, line: 71, baseType: !231, size: 128, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4342, file: !4048, line: 77, baseType: !4355, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !431, file: !92, line: 1505, baseType: !586, size: 64, offset: 8064)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !431, file: !92, line: 1508, baseType: !586, size: 64, offset: 8128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !431, file: !92, line: 1511, baseType: !354, size: 32, offset: 8192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !431, file: !92, line: 1514, baseType: !4031, size: 32, offset: 8224)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !431, file: !92, line: 1517, baseType: !2683, size: 64, offset: 8256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !431, file: !92, line: 1518, baseType: !475, size: 64, offset: 8320)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !431, file: !92, line: 1525, baseType: !1404, size: 64, offset: 8384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !431, file: !92, line: 1532, baseType: !4364, size: 64, offset: 8448)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4365, line: 52, size: 64, elements: !4366)
!4365 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4366 = !{!4367}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4364, file: !4365, line: 53, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4365, line: 40, size: 256, elements: !4370)
!4370 = !{!4371, !4372, !4377}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4369, file: !4365, line: 42, baseType: !338)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4369, file: !4365, line: 44, baseType: !4373, size: 192)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4365, line: 28, size: 192, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4373, file: !4365, line: 29, baseType: !231, size: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4373, file: !4365, line: 31, baseType: !135, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4369, file: !4365, line: 49, baseType: !135, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !431, file: !92, line: 1533, baseType: !4364, size: 64, offset: 8512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !431, file: !92, line: 1534, baseType: !634, size: 128, align: 64, offset: 8576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !431, file: !92, line: 1535, baseType: !1452, size: 256, offset: 8704)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !431, file: !92, line: 1537, baseType: !582, size: 192, offset: 8960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !431, file: !92, line: 1542, baseType: !354, size: 32, offset: 9152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !431, file: !92, line: 1545, baseType: !338, offset: 9184)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !431, file: !92, line: 1546, baseType: !231, size: 128, offset: 9216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !431, file: !92, line: 1548, baseType: !338, offset: 9344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !431, file: !92, line: 1549, baseType: !231, size: 128, offset: 9344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !276, file: !277, line: 104, baseType: !218, size: 64, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !276, file: !277, line: 105, baseType: !464, size: 64, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !277, line: 107, baseType: !4390, size: 128, offset: 1024)
!4390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !277, line: 107, size: 128, elements: !4391)
!4391 = !{!4392, !4393}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4390, file: !277, line: 108, baseType: !231, size: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4390, file: !277, line: 109, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !276, file: !277, line: 111, baseType: !231, size: 128, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !276, file: !277, line: 112, baseType: !231, size: 128, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !276, file: !277, line: 120, baseType: !4398, size: 128, offset: 1408)
!4398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !277, line: 116, size: 128, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4398, file: !277, line: 117, baseType: !479, size: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4398, file: !277, line: 118, baseType: !291, size: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4398, file: !277, line: 119, baseType: !634, size: 128, align: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !269, file: !92, line: 1866, baseType: !4404, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!376, !275, !242, !4407}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4409, line: 10, size: 128, elements: !4410)
!4409 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!4410 = !{!4411, !4412}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4408, file: !4409, line: 11, baseType: !1996, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4408, file: !4409, line: 12, baseType: !464, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !269, file: !92, line: 1867, baseType: !4414, size: 64, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!354, !242, !354}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !269, file: !92, line: 1868, baseType: !4418, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!4421, !242, !354}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !92, line: 581, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !269, file: !92, line: 1870, baseType: !4424, size: 64, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!354, !275, !402, !354}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !269, file: !92, line: 1872, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!354, !242, !275, !246, !421}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !269, file: !92, line: 1873, baseType: !4432, size: 64, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!354, !275, !242, !275}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !269, file: !92, line: 1874, baseType: !4436, size: 64, offset: 448)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!354, !242, !275}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !269, file: !92, line: 1875, baseType: !4440, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!354, !242, !275, !376}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !269, file: !92, line: 1876, baseType: !4444, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!354, !242, !275, !246}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !269, file: !92, line: 1877, baseType: !4436, size: 64, offset: 640)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !269, file: !92, line: 1878, baseType: !4449, size: 64, offset: 704)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!354, !242, !275, !246, !435}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !269, file: !92, line: 1879, baseType: !4453, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!354, !242, !275, !242, !275, !7}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !269, file: !92, line: 1881, baseType: !4457, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!354, !275, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !92, line: 219, size: 640, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466, !4467, !4468, !4473, !4474, !4475}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4461, file: !92, line: 220, baseType: !7, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4461, file: !92, line: 221, baseType: !246, size: 16, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4461, file: !92, line: 222, baseType: !250, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4461, file: !92, line: 223, baseType: !259, size: 32, offset: 96)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4461, file: !92, line: 224, baseType: !440, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4461, file: !92, line: 225, baseType: !4469, size: 128, offset: 192)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1288, line: 13, size: 128, elements: !4470)
!4470 = !{!4471, !4472}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4469, file: !1288, line: 14, baseType: !1287, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4469, file: !1288, line: 15, baseType: !135, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4461, file: !92, line: 226, baseType: !4469, size: 128, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4461, file: !92, line: 227, baseType: !4469, size: 128, offset: 448)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4461, file: !92, line: 234, baseType: !654, size: 64, offset: 576)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !269, file: !92, line: 1882, baseType: !4477, size: 64, offset: 896)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!354, !419, !4480, !309, !7}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4482, line: 22, size: 1152, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4481, file: !4482, line: 23, baseType: !309, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4481, file: !4482, line: 24, baseType: !246, size: 16, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4481, file: !4482, line: 25, baseType: !7, size: 32, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4481, file: !4482, line: 26, baseType: !1295, size: 32, offset: 96)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4481, file: !4482, line: 27, baseType: !315, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4481, file: !4482, line: 28, baseType: !315, size: 64, offset: 192)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4481, file: !4482, line: 37, baseType: !315, size: 64, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4481, file: !4482, line: 38, baseType: !435, size: 32, offset: 320)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4481, file: !4482, line: 39, baseType: !435, size: 32, offset: 352)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4481, file: !4482, line: 40, baseType: !250, size: 32, offset: 384)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4481, file: !4482, line: 41, baseType: !259, size: 32, offset: 416)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4481, file: !4482, line: 42, baseType: !440, size: 64, offset: 448)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4481, file: !4482, line: 43, baseType: !4469, size: 128, offset: 512)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4481, file: !4482, line: 44, baseType: !4469, size: 128, offset: 640)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4481, file: !4482, line: 45, baseType: !4469, size: 128, offset: 768)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4481, file: !4482, line: 46, baseType: !4469, size: 128, offset: 896)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4481, file: !4482, line: 47, baseType: !315, size: 64, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4481, file: !4482, line: 48, baseType: !315, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !269, file: !92, line: 1883, baseType: !4503, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!659, !275, !402, !573}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !269, file: !92, line: 1884, baseType: !4507, size: 64, offset: 1024)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!354, !242, !4510, !315, !315}
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !92, line: 50, flags: DIFlagFwdDecl)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !269, file: !92, line: 1886, baseType: !4513, size: 64, offset: 1088)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!354, !242, !4516, !354}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !269, file: !92, line: 1887, baseType: !4518, size: 64, offset: 1152)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!354, !242, !275, !654, !7, !246}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !269, file: !92, line: 1890, baseType: !4444, size: 64, offset: 1216)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !269, file: !92, line: 1891, baseType: !4523, size: 64, offset: 1280)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!354, !242, !4421, !354}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !243, file: !92, line: 623, baseType: !430, size: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !243, file: !92, line: 624, baseType: !238, size: 64, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !243, file: !92, line: 631, baseType: !218, size: 64, offset: 320)
!4529 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !92, line: 639, baseType: !4530, size: 32, offset: 384)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !92, line: 639, size: 32, elements: !4531)
!4531 = !{!4532, !4533}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4530, file: !92, line: 640, baseType: !3114, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4530, file: !92, line: 641, baseType: !7, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !243, file: !92, line: 643, baseType: !435, size: 32, offset: 416)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !243, file: !92, line: 644, baseType: !440, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !243, file: !92, line: 645, baseType: !4469, size: 128, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !243, file: !92, line: 646, baseType: !4469, size: 128, offset: 640)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !243, file: !92, line: 647, baseType: !4469, size: 128, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !243, file: !92, line: 648, baseType: !338, offset: 896)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !243, file: !92, line: 649, baseType: !247, size: 16, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !243, file: !92, line: 650, baseType: !1041, size: 8, offset: 912)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !243, file: !92, line: 651, baseType: !1041, size: 8, offset: 920)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !243, file: !92, line: 652, baseType: !4220, size: 64, offset: 960)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !243, file: !92, line: 659, baseType: !218, size: 64, offset: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !243, file: !92, line: 660, baseType: !806, size: 256, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !243, file: !92, line: 662, baseType: !218, size: 64, offset: 1344)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !243, file: !92, line: 663, baseType: !218, size: 64, offset: 1408)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !243, file: !92, line: 665, baseType: !479, size: 128, offset: 1472)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !243, file: !92, line: 666, baseType: !231, size: 128, offset: 1600)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !243, file: !92, line: 675, baseType: !231, size: 128, offset: 1728)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !243, file: !92, line: 676, baseType: !231, size: 128, offset: 1856)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !243, file: !92, line: 677, baseType: !231, size: 128, offset: 1984)
!4553 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !92, line: 678, baseType: !4554, size: 128, offset: 2112)
!4554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !92, line: 678, size: 128, elements: !4555)
!4555 = !{!4556, !4557}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4554, file: !92, line: 679, baseType: !475, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4554, file: !92, line: 680, baseType: !634, size: 128, align: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !243, file: !92, line: 682, baseType: !588, size: 64, offset: 2240)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !243, file: !92, line: 683, baseType: !588, size: 64, offset: 2304)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !243, file: !92, line: 684, baseType: !795, size: 32, offset: 2368)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !243, file: !92, line: 685, baseType: !795, size: 32, offset: 2400)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !243, file: !92, line: 686, baseType: !795, size: 32, offset: 2432)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !243, file: !92, line: 688, baseType: !795, size: 32, offset: 2464)
!4564 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !92, line: 690, baseType: !4565, size: 64, offset: 2496)
!4565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !92, line: 690, size: 64, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4565, file: !92, line: 691, baseType: !645, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4565, file: !92, line: 692, baseType: !506, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !243, file: !92, line: 694, baseType: !4570, size: 64, offset: 2560)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !92, line: 1100, size: 384, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4571, file: !92, line: 1101, baseType: !338)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4571, file: !92, line: 1102, baseType: !231, size: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4571, file: !92, line: 1103, baseType: !231, size: 128, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4571, file: !92, line: 1104, baseType: !231, size: 128, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !243, file: !92, line: 695, baseType: !239, size: 1216, align: 64, offset: 2624)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !243, file: !92, line: 696, baseType: !231, size: 128, offset: 3840)
!4579 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !92, line: 697, baseType: !4580, size: 64, offset: 3968)
!4580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !92, line: 697, size: 64, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4587, !4588}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4580, file: !92, line: 698, baseType: !3579, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4580, file: !92, line: 699, baseType: !2704, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4580, file: !92, line: 700, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !92, line: 700, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4580, file: !92, line: 701, baseType: !402, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4580, file: !92, line: 702, baseType: !7, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !243, file: !92, line: 705, baseType: !311, size: 32, offset: 4032)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !243, file: !92, line: 708, baseType: !311, size: 32, offset: 4064)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !243, file: !92, line: 709, baseType: !4325, size: 64, offset: 4096)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !243, file: !92, line: 720, baseType: !464, size: 64, offset: 4160)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !239, file: !92, line: 453, baseType: !2037, size: 128, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !239, file: !92, line: 454, baseType: !2042, size: 32, offset: 192)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !239, file: !92, line: 455, baseType: !795, size: 32, offset: 224)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !239, file: !92, line: 460, baseType: !1031, size: 128, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !239, file: !92, line: 461, baseType: !806, size: 256, offset: 384)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !239, file: !92, line: 462, baseType: !218, size: 64, offset: 640)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !239, file: !92, line: 463, baseType: !218, size: 64, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !239, file: !92, line: 464, baseType: !218, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !239, file: !92, line: 465, baseType: !4602, size: 64, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4604)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !92, line: 367, size: 1408, elements: !4605)
!4605 = !{!4606, !4610, !4614, !4618, !4622, !4626, !4638, !4642, !4646, !4650, !4654, !4658, !4662, !4663, !4667, !4673, !4674, !4675, !4679, !4684, !4688, !4745}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4604, file: !92, line: 368, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!354, !219, !518}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !4604, file: !92, line: 369, baseType: !4611, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!354, !654, !219}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4604, file: !92, line: 372, baseType: !4615, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!354, !238, !518}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !4604, file: !92, line: 375, baseType: !4619, size: 64, offset: 192)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!354, !219}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !4604, file: !92, line: 381, baseType: !4623, size: 64, offset: 256)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!354, !654, !238, !235, !7}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4604, file: !92, line: 383, baseType: !4627, size: 64, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !692, line: 795, size: 256, elements: !4632)
!4632 = !{!4633, !4634, !4635, !4636, !4637}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4631, file: !692, line: 796, baseType: !654, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4631, file: !692, line: 797, baseType: !238, size: 64, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4631, file: !692, line: 799, baseType: !218, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4631, file: !692, line: 800, baseType: !7, size: 32, offset: 192)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4631, file: !692, line: 801, baseType: !7, size: 32, offset: 224)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4604, file: !92, line: 385, baseType: !4639, size: 64, offset: 384)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!354, !654, !238, !440, !7, !7, !3604, !3341}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4604, file: !92, line: 388, baseType: !4643, size: 64, offset: 448)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!354, !654, !238, !440, !7, !7, !219, !464}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4604, file: !92, line: 393, baseType: !4647, size: 64, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!1826, !238, !1826}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !4604, file: !92, line: 394, baseType: !4651, size: 64, offset: 576)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !219, !7, !7}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !4604, file: !92, line: 395, baseType: !4655, size: 64, offset: 640)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!354, !219, !2042}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !4604, file: !92, line: 396, baseType: !4659, size: 64, offset: 704)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !219}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4604, file: !92, line: 397, baseType: !667, size: 64, offset: 768)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !4604, file: !92, line: 402, baseType: !4664, size: 64, offset: 832)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!354, !238, !219, !219, !114}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !4604, file: !92, line: 404, baseType: !4668, size: 64, offset: 896)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!421, !219, !4671}
!4671 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !4672, line: 305, baseType: !7)
!4672 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !4604, file: !92, line: 405, baseType: !4659, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !4604, file: !92, line: 406, baseType: !4619, size: 64, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4604, file: !92, line: 407, baseType: !4676, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!354, !219, !218, !218}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4604, file: !92, line: 409, baseType: !4680, size: 64, offset: 1152)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !219, !4683, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4604, file: !92, line: 410, baseType: !4685, size: 64, offset: 1216)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!354, !238, !219}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4604, file: !92, line: 413, baseType: !4689, size: 64, offset: 1280)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!354, !4692, !654, !4744}
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !3444, line: 240, size: 1600, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4704, !4706, !4707, !4709, !4716, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4693, file: !3444, line: 241, baseType: !218, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4693, file: !3444, line: 242, baseType: !890, size: 16, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4693, file: !3444, line: 243, baseType: !4698, size: 320, offset: 128)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !4699, line: 83, size: 320, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!4700 = !{!4701, !4702, !4703}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4698, file: !4699, line: 84, baseType: !354, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !4698, file: !4699, line: 85, baseType: !231, size: 128, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4698, file: !4699, line: 86, baseType: !231, size: 128, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4693, file: !3444, line: 244, baseType: !4705, size: 8, offset: 448)
!4705 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4693, file: !3444, line: 245, baseType: !7, size: 32, offset: 480)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4693, file: !3444, line: 246, baseType: !4708, size: 64, offset: 512)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4693, file: !3444, line: 247, baseType: !4710, size: 64, offset: 576)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !3444, line: 208, size: 32, elements: !4712)
!4712 = !{!4713, !4714, !4715}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4711, file: !3444, line: 209, baseType: !338)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4711, file: !3444, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4711, file: !3444, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4693, file: !3444, line: 248, baseType: !4717, size: 64, offset: 640)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !3444, line: 232, size: 64, elements: !4718)
!4718 = !{!4719, !4720}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4717, file: !3444, line: 233, baseType: !4711, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4717, file: !3444, line: 234, baseType: !4711, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4693, file: !3444, line: 249, baseType: !7, size: 32, offset: 704)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4693, file: !3444, line: 250, baseType: !7, size: 32, offset: 736)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4693, file: !3444, line: 251, baseType: !7, size: 32, offset: 768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4693, file: !3444, line: 252, baseType: !7, size: 32, offset: 800)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4693, file: !3444, line: 253, baseType: !7, size: 32, offset: 832)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4693, file: !3444, line: 254, baseType: !7, size: 32, offset: 864)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4693, file: !3444, line: 255, baseType: !4311, size: 64, offset: 896)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4693, file: !3444, line: 256, baseType: !4729, size: 64, offset: 960)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !3444, line: 227, size: 64, elements: !4731)
!4731 = !{!4732, !4733}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4730, file: !3444, line: 228, baseType: !4711, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4730, file: !3444, line: 229, baseType: !7, size: 32, offset: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4693, file: !3444, line: 257, baseType: !773, size: 64, offset: 1024)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4693, file: !3444, line: 258, baseType: !2704, size: 64, offset: 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4693, file: !3444, line: 259, baseType: !654, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4693, file: !3444, line: 260, baseType: !7, size: 32, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4693, file: !3444, line: 265, baseType: !338, offset: 1248)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4693, file: !3444, line: 278, baseType: !338, offset: 1248)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4693, file: !3444, line: 282, baseType: !1452, size: 256, offset: 1280)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4693, file: !3444, line: 283, baseType: !4717, size: 64, offset: 1536)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4693, file: !3444, line: 284, baseType: !4743, offset: 1600)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4698, elements: !2687)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4604, file: !92, line: 415, baseType: !4746, size: 64, offset: 1344)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !654}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !92, line: 466, baseType: !218, size: 64, offset: 896)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !239, file: !92, line: 467, baseType: !4031, size: 32, offset: 960)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !239, file: !92, line: 468, baseType: !338, offset: 992)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !239, file: !92, line: 469, baseType: !231, size: 128, offset: 1024)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !239, file: !92, line: 470, baseType: !464, size: 64, offset: 1152)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !228, file: !221, line: 87, baseType: !218, size: 64, offset: 192)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !228, file: !221, line: 94, baseType: !218, size: 64, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 96, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 96, size: 64, elements: !4758)
!4758 = !{!4759}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4757, file: !221, line: 101, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !232, line: 143, baseType: !315)
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 103, baseType: !4762, size: 320)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 103, size: 320, elements: !4763)
!4763 = !{!4764, !4774, !4775, !4776}
!4764 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !221, line: 104, baseType: !4765, size: 128)
!4765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4762, file: !221, line: 104, size: 128, elements: !4766)
!4766 = !{!4767, !4768}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !4765, file: !221, line: 105, baseType: !231, size: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, scope: !4765, file: !221, line: 106, baseType: !4769, size: 128)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4765, file: !221, line: 106, size: 128, elements: !4770)
!4770 = !{!4771, !4772, !4773}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4769, file: !221, line: 107, baseType: !219, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4769, file: !221, line: 109, baseType: !354, size: 32, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !4769, file: !221, line: 110, baseType: !354, size: 32, offset: 96)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !4762, file: !221, line: 117, baseType: !2936, size: 64, offset: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !4762, file: !221, line: 119, baseType: !464, size: 64, offset: 192)
!4776 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !221, line: 120, baseType: !4777, size: 64, offset: 256)
!4777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4762, file: !221, line: 120, size: 64, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !4777, file: !221, line: 121, baseType: !464, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !4777, file: !221, line: 122, baseType: !218, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !221, line: 123, baseType: !4782, size: 32)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4777, file: !221, line: 123, size: 32, elements: !4783)
!4783 = !{!4784, !4785, !4786}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !4782, file: !221, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !4782, file: !221, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4782, file: !221, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!4787 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 130, baseType: !4788, size: 192)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 130, size: 192, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4788, file: !221, line: 131, baseType: !218, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !4788, file: !221, line: 134, baseType: !321, size: 8, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !4788, file: !221, line: 135, baseType: !321, size: 8, offset: 72)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !4788, file: !221, line: 136, baseType: !795, size: 32, offset: 96)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !4788, file: !221, line: 137, baseType: !7, size: 32, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 139, baseType: !4796, size: 256)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 139, size: 256, elements: !4797)
!4797 = !{!4798, !4799, !4800}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !4796, file: !221, line: 140, baseType: !218, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !4796, file: !221, line: 141, baseType: !795, size: 32, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !4796, file: !221, line: 143, baseType: !231, size: 128, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 145, baseType: !4802, size: 256)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 145, size: 256, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4812}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !4802, file: !221, line: 146, baseType: !218, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !4802, file: !221, line: 147, baseType: !2163, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !4802, file: !221, line: 148, baseType: !218, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, scope: !4802, file: !221, line: 149, baseType: !4808, size: 64, offset: 192)
!4808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4802, file: !221, line: 149, size: 64, elements: !4809)
!4809 = !{!4810, !4811}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !4808, file: !221, line: 150, baseType: !765, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !4808, file: !221, line: 151, baseType: !795, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !4802, file: !221, line: 156, baseType: !338, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !221, line: 159, baseType: !4814, size: 128)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !221, line: 159, size: 128, elements: !4815)
!4815 = !{!4816, !4860}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4814, file: !221, line: 161, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !122, line: 110, size: 1152, elements: !4819)
!4819 = !{!4820, !4830, !4831, !4832, !4833, !4834, !4835, !4847, !4848, !4849}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4818, file: !122, line: 111, baseType: !4821, size: 384)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !122, line: 19, size: 384, elements: !4822)
!4822 = !{!4823, !4825, !4826, !4827, !4828, !4829}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4821, file: !122, line: 20, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4821, file: !122, line: 21, baseType: !4824, size: 64, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4821, file: !122, line: 22, baseType: !4824, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4821, file: !122, line: 23, baseType: !218, size: 64, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4821, file: !122, line: 24, baseType: !218, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4821, file: !122, line: 25, baseType: !218, size: 64, offset: 320)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4818, file: !122, line: 112, baseType: !1847, size: 64, offset: 384)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !4818, file: !122, line: 113, baseType: !1833, size: 128, offset: 448)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4818, file: !122, line: 114, baseType: !1190, size: 192, offset: 576)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4818, file: !122, line: 115, baseType: !121, size: 32, offset: 768)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4818, file: !122, line: 116, baseType: !7, size: 32, offset: 800)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4818, file: !122, line: 117, baseType: !4836, size: 64, offset: 832)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4838)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !122, line: 67, size: 256, elements: !4839)
!4839 = !{!4840, !4841, !4845, !4846}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4838, file: !122, line: 73, baseType: !4659, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !4838, file: !122, line: 78, baseType: !4842, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4817}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4838, file: !122, line: 83, baseType: !4842, size: 64, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4838, file: !122, line: 89, baseType: !2124, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4818, file: !122, line: 118, baseType: !464, size: 64, offset: 896)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4818, file: !122, line: 119, baseType: !354, size: 32, offset: 960)
!4849 = !DIDerivedType(tag: DW_TAG_member, scope: !4818, file: !122, line: 120, baseType: !4850, size: 128, offset: 1024)
!4850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4818, file: !122, line: 120, size: 128, elements: !4851)
!4851 = !{!4852, !4858}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4850, file: !122, line: 121, baseType: !4853, size: 128)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4854, line: 6, size: 128, elements: !4855)
!4854 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!4855 = !{!4856, !4857}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4853, file: !4854, line: 7, baseType: !315, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4853, file: !4854, line: 8, baseType: !315, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4850, file: !122, line: 122, baseType: !4859)
!4859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4853, elements: !1566)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4814, file: !221, line: 162, baseType: !464, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !225, file: !221, line: 176, baseType: !634, size: 128, align: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !221, line: 179, baseType: !4863, size: 32, offset: 384)
!4863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !221, line: 179, size: 32, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4868}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4863, file: !221, line: 184, baseType: !795, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4863, file: !221, line: 192, baseType: !7, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4863, file: !221, line: 194, baseType: !7, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4863, file: !221, line: 195, baseType: !354, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !220, file: !221, line: 199, baseType: !795, size: 32, offset: 416)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4872)
!4872 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !378)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !354)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4880 = !{!4881, !0, !4883, !4885, !4887, !4894, !4896, !4898}
!4881 = !DIGlobalVariableExpression(var: !4882, expr: !DIExpression())
!4882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_balloon_init310", scope: !2, file: !3, line: 730, type: !464, isLocal: true, isDefinition: true)
!4883 = !DIGlobalVariableExpression(var: !4884, expr: !DIExpression())
!4884 = distinct !DIGlobalVariable(name: "balloon_worker", scope: !2, file: !3, line: 149, type: !2775, isLocal: true, isDefinition: true)
!4885 = !DIGlobalVariableExpression(var: !4886, expr: !DIExpression())
!4886 = distinct !DIGlobalVariable(name: "ballooned_pages", scope: !2, file: !3, line: 144, type: !231, isLocal: true, isDefinition: true)
!4887 = !DIGlobalVariableExpression(var: !4888, expr: !DIExpression())
!4888 = distinct !DIGlobalVariable(name: "frame_list", scope: !2, file: !3, line: 140, type: !4889, isLocal: true, isDefinition: true)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4890, size: 32768, elements: !4892)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_pfn_t", file: !4891, line: 79, baseType: !218)
!4891 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!4892 = !{!4893}
!4893 = !DISubrange(count: 512)
!4894 = !DIGlobalVariableExpression(var: !4895, expr: !DIExpression())
!4895 = distinct !DIGlobalVariable(name: "balloon_mutex", scope: !2, file: !3, line: 134, type: !582, isLocal: true, isDefinition: true)
!4896 = !DIGlobalVariableExpression(var: !4897, expr: !DIExpression())
!4897 = distinct !DIGlobalVariable(name: "xen_hotplug_unpopulated", scope: !2, file: !3, line: 74, type: !354, isLocal: true, isDefinition: true)
!4898 = !DIGlobalVariableExpression(var: !4899, expr: !DIExpression())
!4899 = distinct !DIGlobalVariable(name: "balloon_wq", scope: !2, file: !3, line: 145, type: !1171, isLocal: true, isDefinition: true)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "balloon_stats", file: !4901, line: 10, size: 640, elements: !4902)
!4901 = !DIFile(filename: "./include/xen/balloon.h", directory: "/home/lizy2001/genbc/linux")
!4902 = !{!4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "current_pages", scope: !4900, file: !4901, line: 12, baseType: !218, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "target_pages", scope: !4900, file: !4901, line: 13, baseType: !218, size: 64, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "target_unpopulated", scope: !4900, file: !4901, line: 14, baseType: !218, size: 64, offset: 128)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "balloon_low", scope: !4900, file: !4901, line: 16, baseType: !218, size: 64, offset: 192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "balloon_high", scope: !4900, file: !4901, line: 17, baseType: !218, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "total_pages", scope: !4900, file: !4901, line: 18, baseType: !218, size: 64, offset: 320)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_delay", scope: !4900, file: !4901, line: 19, baseType: !218, size: 64, offset: 384)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "max_schedule_delay", scope: !4900, file: !4901, line: 20, baseType: !218, size: 64, offset: 448)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !4900, file: !4901, line: 21, baseType: !218, size: 64, offset: 512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "max_retry_count", scope: !4900, file: !4901, line: 22, baseType: !218, size: 64, offset: 576)
!4913 = !{!"rsp"}
!4914 = !{i32 7, !"Dwarf Version", i32 4}
!4915 = !{i32 2, !"Debug Info Version", i32 3}
!4916 = !{i32 1, !"wchar_size", i32 2}
!4917 = !{i32 1, !"Code Model", i32 2}
!4918 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4919 = distinct !DISubprogram(name: "balloon_set_new_target", scope: !3, file: !3, line: 541, type: !4920, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !352)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !218}
!4922 = !DILocalVariable(name: "target", arg: 1, scope: !4919, file: !3, line: 541, type: !218)
!4923 = !DILocation(line: 541, column: 43, scope: !4919)
!4924 = !DILocation(line: 544, column: 31, scope: !4919)
!4925 = !DILocation(line: 544, column: 29, scope: !4919)
!4926 = !DILocation(line: 545, column: 2, scope: !4919)
!4927 = !DILocation(line: 546, column: 1, scope: !4919)
!4928 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !134, file: !134, line: 623, type: !4929, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!421, !4931, !218}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!4932 = !DILocalVariable(name: "dwork", arg: 1, scope: !4928, file: !134, line: 623, type: !4931)
!4933 = !DILocation(line: 623, column: 63, scope: !4928)
!4934 = !DILocalVariable(name: "delay", arg: 2, scope: !4928, file: !134, line: 624, type: !218)
!4935 = !DILocation(line: 624, column: 21, scope: !4928)
!4936 = !DILocation(line: 626, column: 28, scope: !4928)
!4937 = !DILocation(line: 626, column: 39, scope: !4928)
!4938 = !DILocation(line: 626, column: 46, scope: !4928)
!4939 = !DILocation(line: 626, column: 9, scope: !4928)
!4940 = !DILocation(line: 626, column: 2, scope: !4928)
!4941 = distinct !DISubprogram(name: "alloc_xenballooned_pages", scope: !3, file: !3, line: 582, type: !4942, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !352)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!354, !354, !3604}
!4944 = !DILocalVariable(name: "nr_pages", arg: 1, scope: !4941, file: !3, line: 582, type: !354)
!4945 = !DILocation(line: 582, column: 34, scope: !4941)
!4946 = !DILocalVariable(name: "pages", arg: 2, scope: !4941, file: !3, line: 582, type: !3604)
!4947 = !DILocation(line: 582, column: 58, scope: !4941)
!4948 = !DILocalVariable(name: "pgno", scope: !4941, file: !3, line: 584, type: !354)
!4949 = !DILocation(line: 584, column: 6, scope: !4941)
!4950 = !DILocalVariable(name: "page", scope: !4941, file: !3, line: 585, type: !219)
!4951 = !DILocation(line: 585, column: 15, scope: !4941)
!4952 = !DILocalVariable(name: "ret", scope: !4941, file: !3, line: 586, type: !354)
!4953 = !DILocation(line: 586, column: 6, scope: !4941)
!4954 = !DILocation(line: 588, column: 2, scope: !4941)
!4955 = !DILocation(line: 590, column: 38, scope: !4941)
!4956 = !DILocation(line: 590, column: 35, scope: !4941)
!4957 = !DILocation(line: 592, column: 2, scope: !4941)
!4958 = !DILocation(line: 592, column: 9, scope: !4941)
!4959 = !DILocation(line: 592, column: 16, scope: !4941)
!4960 = !DILocation(line: 592, column: 14, scope: !4941)
!4961 = !DILocation(line: 593, column: 10, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 592, column: 26)
!4963 = !DILocation(line: 593, column: 8, scope: !4962)
!4964 = !DILocation(line: 594, column: 7, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 594, column: 7)
!4966 = !DILocation(line: 594, column: 7, scope: !4962)
!4967 = !DILocation(line: 595, column: 20, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 594, column: 13)
!4969 = !DILocation(line: 595, column: 4, scope: !4968)
!4970 = !DILocation(line: 595, column: 14, scope: !4968)
!4971 = !DILocation(line: 595, column: 18, scope: !4968)
!4972 = !DILocation(line: 601, column: 4, scope: !4968)
!4973 = !DILocation(line: 601, column: 4, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 601, column: 4)
!4975 = !DILocation(line: 603, column: 9, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 603, column: 8)
!4977 = !DILocation(line: 603, column: 8, scope: !4968)
!4978 = !DILocation(line: 604, column: 31, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 603, column: 55)
!4980 = !DILocation(line: 604, column: 11, scope: !4979)
!4981 = !DILocation(line: 604, column: 9, scope: !4979)
!4982 = !DILocation(line: 605, column: 9, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 605, column: 9)
!4984 = !DILocation(line: 605, column: 13, scope: !4983)
!4985 = !DILocation(line: 605, column: 9, scope: !4979)
!4986 = !DILocation(line: 606, column: 6, scope: !4983)
!4987 = !DILocation(line: 607, column: 4, scope: !4979)
!4988 = !DILocation(line: 609, column: 3, scope: !4968)
!4989 = !DILocation(line: 610, column: 30, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 609, column: 10)
!4991 = !DILocation(line: 610, column: 41, scope: !4990)
!4992 = !DILocation(line: 610, column: 39, scope: !4990)
!4993 = !DILocation(line: 610, column: 10, scope: !4990)
!4994 = !DILocation(line: 610, column: 8, scope: !4990)
!4995 = !DILocation(line: 611, column: 8, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 611, column: 8)
!4997 = !DILocation(line: 611, column: 12, scope: !4996)
!4998 = !DILocation(line: 611, column: 8, scope: !4990)
!4999 = !DILocation(line: 612, column: 5, scope: !4996)
!5000 = distinct !{!5000, !4957, !5001}
!5001 = !DILocation(line: 614, column: 2, scope: !4941)
!5002 = !DILocation(line: 615, column: 2, scope: !4941)
!5003 = !DILocation(line: 616, column: 2, scope: !4941)
!5004 = !DILabel(scope: !4941, name: "out_undo", file: !3, line: 617)
!5005 = !DILocation(line: 617, column: 2, scope: !4941)
!5006 = !DILocation(line: 618, column: 2, scope: !4941)
!5007 = !DILocation(line: 619, column: 26, scope: !4941)
!5008 = !DILocation(line: 619, column: 32, scope: !4941)
!5009 = !DILocation(line: 619, column: 2, scope: !4941)
!5010 = !DILocation(line: 625, column: 38, scope: !4941)
!5011 = !DILocation(line: 625, column: 49, scope: !4941)
!5012 = !DILocation(line: 625, column: 47, scope: !4941)
!5013 = !DILocation(line: 625, column: 35, scope: !4941)
!5014 = !DILocation(line: 626, column: 9, scope: !4941)
!5015 = !DILocation(line: 626, column: 2, scope: !4941)
!5016 = !DILocation(line: 627, column: 1, scope: !4941)
!5017 = distinct !DISubprogram(name: "balloon_retrieve", scope: !3, file: !3, line: 173, type: !5018, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!219, !421}
!5020 = !DILocalVariable(name: "page", arg: 1, scope: !5021, file: !173, line: 769, type: !219)
!5021 = distinct !DISubprogram(name: "__ClearPageOffline", scope: !173, file: !173, line: 769, type: !4660, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5022 = !DILocation(line: 769, column: 1, scope: !5021, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 190, column: 2, scope: !5017)
!5024 = !DILocalVariable(name: "require_lowmem", arg: 1, scope: !5017, file: !3, line: 173, type: !421)
!5025 = !DILocation(line: 173, column: 43, scope: !5017)
!5026 = !DILocalVariable(name: "page", scope: !5017, file: !3, line: 175, type: !219)
!5027 = !DILocation(line: 175, column: 15, scope: !5017)
!5028 = !DILocation(line: 177, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 177, column: 6)
!5030 = !DILocation(line: 177, column: 6, scope: !5017)
!5031 = !DILocation(line: 178, column: 3, scope: !5029)
!5032 = !DILocalVariable(name: "__mptr", scope: !5033, file: !3, line: 180, type: !464)
!5033 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 180, column: 9)
!5034 = !DILocation(line: 180, column: 9, scope: !5033)
!5035 = !DILocation(line: 180, column: 9, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 180, column: 9)
!5037 = !DILocation(line: 180, column: 7, scope: !5017)
!5038 = !DILocation(line: 181, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 181, column: 6)
!5040 = !DILocation(line: 181, column: 21, scope: !5039)
!5041 = !DILocation(line: 181, column: 36, scope: !5039)
!5042 = !DILocation(line: 181, column: 24, scope: !5039)
!5043 = !DILocation(line: 181, column: 6, scope: !5017)
!5044 = !DILocation(line: 182, column: 3, scope: !5039)
!5045 = !DILocation(line: 183, column: 12, scope: !5017)
!5046 = !DILocation(line: 183, column: 18, scope: !5017)
!5047 = !DILocation(line: 183, column: 2, scope: !5017)
!5048 = !DILocation(line: 185, column: 18, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 185, column: 6)
!5050 = !DILocation(line: 185, column: 6, scope: !5049)
!5051 = !DILocation(line: 185, column: 6, scope: !5017)
!5052 = !DILocation(line: 186, column: 29, scope: !5049)
!5053 = !DILocation(line: 186, column: 3, scope: !5049)
!5054 = !DILocation(line: 188, column: 28, scope: !5049)
!5055 = !DILocation(line: 190, column: 21, scope: !5017)
!5056 = !DILocation(line: 191, column: 9, scope: !5017)
!5057 = !DILocation(line: 191, column: 2, scope: !5017)
!5058 = !DILocation(line: 192, column: 1, scope: !5017)
!5059 = distinct !DISubprogram(name: "xen_feature", scope: !5060, file: !5060, line: 19, type: !3966, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5060 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!5061 = !DILocalVariable(name: "flag", arg: 1, scope: !5059, file: !5060, line: 19, type: !354)
!5062 = !DILocation(line: 19, column: 35, scope: !5059)
!5063 = !DILocation(line: 21, column: 22, scope: !5059)
!5064 = !DILocation(line: 21, column: 9, scope: !5059)
!5065 = !DILocation(line: 21, column: 2, scope: !5059)
!5066 = distinct !DISubprogram(name: "add_ballooned_pages", scope: !3, file: !3, line: 549, type: !3966, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5067 = !DILocalVariable(name: "nr_pages", arg: 1, scope: !5066, file: !3, line: 549, type: !354)
!5068 = !DILocation(line: 549, column: 36, scope: !5066)
!5069 = !DILocalVariable(name: "st", scope: !5066, file: !3, line: 551, type: !166)
!5070 = !DILocation(line: 551, column: 16, scope: !5066)
!5071 = !DILocation(line: 553, column: 6, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 553, column: 6)
!5073 = !DILocation(line: 553, column: 6, scope: !5066)
!5074 = !DILocation(line: 554, column: 8, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 553, column: 31)
!5076 = !DILocation(line: 554, column: 6, scope: !5075)
!5077 = !DILocation(line: 555, column: 7, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 555, column: 7)
!5079 = !DILocation(line: 555, column: 10, scope: !5078)
!5080 = !DILocation(line: 555, column: 7, scope: !5075)
!5081 = !DILocalVariable(name: "rc", scope: !5082, file: !3, line: 556, type: !354)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 555, column: 27)
!5083 = !DILocation(line: 556, column: 8, scope: !5082)
!5084 = !DILocation(line: 558, column: 4, scope: !5082)
!5085 = !DILocalVariable(name: "__ret", scope: !5086, file: !3, line: 559, type: !354)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 559, column: 9)
!5087 = !DILocation(line: 559, column: 9, scope: !5086)
!5088 = !DILocation(line: 559, column: 9, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 559, column: 9)
!5090 = !DILocation(line: 559, column: 9, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 559, column: 9)
!5092 = !DILocation(line: 559, column: 9, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 559, column: 9)
!5094 = !DILocalVariable(name: "__wq_entry", scope: !5095, file: !3, line: 559, type: !699)
!5095 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 559, column: 9)
!5096 = !DILocation(line: 559, column: 9, scope: !5095)
!5097 = !DILocalVariable(name: "__ret", scope: !5095, file: !3, line: 559, type: !135)
!5098 = !DILocalVariable(name: "__int", scope: !5099, file: !3, line: 559, type: !135)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 559, column: 9)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 559, column: 9)
!5101 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 559, column: 9)
!5102 = !DILocation(line: 559, column: 9, scope: !5099)
!5103 = !DILocation(line: 559, column: 9, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 559, column: 9)
!5105 = !DILocation(line: 559, column: 9, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 559, column: 9)
!5107 = !DILocation(line: 559, column: 9, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 559, column: 9)
!5109 = !DILocation(line: 559, column: 9, scope: !5100)
!5110 = distinct !{!5110, !5111, !5111}
!5111 = !DILocation(line: 559, column: 9, scope: !5101)
!5112 = !DILabel(scope: !5095, name: "__out", file: !3, line: 559)
!5113 = !DILocation(line: 559, column: 7, scope: !5082)
!5114 = !DILocation(line: 561, column: 4, scope: !5082)
!5115 = !DILocation(line: 562, column: 11, scope: !5082)
!5116 = !DILocation(line: 562, column: 4, scope: !5082)
!5117 = !DILocation(line: 564, column: 2, scope: !5075)
!5118 = !DILocation(line: 566, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 566, column: 6)
!5120 = !DILocation(line: 566, column: 27, scope: !5119)
!5121 = !DILocation(line: 566, column: 25, scope: !5119)
!5122 = !DILocation(line: 566, column: 6, scope: !5066)
!5123 = !DILocation(line: 567, column: 3, scope: !5119)
!5124 = !DILocation(line: 569, column: 28, scope: !5066)
!5125 = !DILocation(line: 569, column: 7, scope: !5066)
!5126 = !DILocation(line: 569, column: 5, scope: !5066)
!5127 = !DILocation(line: 570, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 570, column: 6)
!5129 = !DILocation(line: 570, column: 9, scope: !5128)
!5130 = !DILocation(line: 570, column: 6, scope: !5066)
!5131 = !DILocation(line: 571, column: 3, scope: !5128)
!5132 = !DILocation(line: 573, column: 2, scope: !5066)
!5133 = !DILocation(line: 574, column: 1, scope: !5066)
!5134 = distinct !DISubprogram(name: "free_xenballooned_pages", scope: !3, file: !3, line: 635, type: !5135, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{null, !354, !3604}
!5137 = !DILocalVariable(name: "nr_pages", arg: 1, scope: !5134, file: !3, line: 635, type: !354)
!5138 = !DILocation(line: 635, column: 34, scope: !5134)
!5139 = !DILocalVariable(name: "pages", arg: 2, scope: !5134, file: !3, line: 635, type: !3604)
!5140 = !DILocation(line: 635, column: 58, scope: !5134)
!5141 = !DILocalVariable(name: "i", scope: !5134, file: !3, line: 637, type: !354)
!5142 = !DILocation(line: 637, column: 6, scope: !5134)
!5143 = !DILocation(line: 639, column: 2, scope: !5134)
!5144 = !DILocation(line: 641, column: 9, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 641, column: 2)
!5146 = !DILocation(line: 641, column: 7, scope: !5145)
!5147 = !DILocation(line: 641, column: 14, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 641, column: 2)
!5149 = !DILocation(line: 641, column: 18, scope: !5148)
!5150 = !DILocation(line: 641, column: 16, scope: !5148)
!5151 = !DILocation(line: 641, column: 2, scope: !5145)
!5152 = !DILocation(line: 642, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 642, column: 7)
!5154 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 641, column: 33)
!5155 = !DILocation(line: 642, column: 13, scope: !5153)
!5156 = !DILocation(line: 642, column: 7, scope: !5154)
!5157 = !DILocation(line: 643, column: 19, scope: !5153)
!5158 = !DILocation(line: 643, column: 25, scope: !5153)
!5159 = !DILocation(line: 643, column: 4, scope: !5153)
!5160 = !DILocation(line: 644, column: 2, scope: !5154)
!5161 = !DILocation(line: 641, column: 29, scope: !5148)
!5162 = !DILocation(line: 641, column: 2, scope: !5148)
!5163 = distinct !{!5163, !5151, !5164}
!5164 = !DILocation(line: 644, column: 2, scope: !5145)
!5165 = !DILocation(line: 646, column: 38, scope: !5134)
!5166 = !DILocation(line: 646, column: 35, scope: !5134)
!5167 = !DILocation(line: 649, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 649, column: 6)
!5169 = !DILocation(line: 649, column: 6, scope: !5134)
!5170 = !DILocation(line: 650, column: 3, scope: !5168)
!5171 = !DILocation(line: 652, column: 2, scope: !5134)
!5172 = !DILocation(line: 653, column: 1, scope: !5134)
!5173 = distinct !DISubprogram(name: "balloon_append", scope: !3, file: !3, line: 157, type: !4660, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5174 = !DILocalVariable(name: "page", arg: 1, scope: !5175, file: !173, line: 769, type: !219)
!5175 = distinct !DISubprogram(name: "__SetPageOffline", scope: !173, file: !173, line: 769, type: !4660, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5176 = !DILocation(line: 769, column: 1, scope: !5175, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 159, column: 2, scope: !5173)
!5178 = !DILocalVariable(name: "page", arg: 1, scope: !5173, file: !3, line: 157, type: !219)
!5179 = !DILocation(line: 157, column: 41, scope: !5173)
!5180 = !DILocation(line: 159, column: 19, scope: !5173)
!5181 = !DILocation(line: 162, column: 18, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 162, column: 6)
!5183 = !DILocation(line: 162, column: 6, scope: !5182)
!5184 = !DILocation(line: 162, column: 6, scope: !5173)
!5185 = !DILocation(line: 163, column: 18, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 162, column: 25)
!5187 = !DILocation(line: 163, column: 24, scope: !5186)
!5188 = !DILocation(line: 163, column: 3, scope: !5186)
!5189 = !DILocation(line: 164, column: 29, scope: !5186)
!5190 = !DILocation(line: 165, column: 2, scope: !5186)
!5191 = !DILocation(line: 166, column: 13, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 165, column: 9)
!5193 = !DILocation(line: 166, column: 19, scope: !5192)
!5194 = !DILocation(line: 166, column: 3, scope: !5192)
!5195 = !DILocation(line: 167, column: 28, scope: !5192)
!5196 = !DILocation(line: 169, column: 2, scope: !5173)
!5197 = !DILocation(line: 170, column: 1, scope: !5173)
!5198 = distinct !DISubprogram(name: "current_credit", scope: !3, file: !3, line: 387, type: !5199, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!135}
!5201 = !DILocation(line: 389, column: 23, scope: !5198)
!5202 = !DILocation(line: 389, column: 52, scope: !5198)
!5203 = !DILocation(line: 389, column: 36, scope: !5198)
!5204 = !DILocation(line: 389, column: 2, scope: !5198)
!5205 = distinct !DISubprogram(name: "balloon_init", scope: !3, file: !3, line: 680, type: !5206, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!354}
!5208 = !DILocation(line: 682, column: 7, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 682, column: 6)
!5210 = !DILocation(line: 682, column: 6, scope: !5205)
!5211 = !DILocation(line: 683, column: 3, scope: !5209)
!5212 = !DILocation(line: 685, column: 2, scope: !5205)
!5213 = !DILocation(line: 688, column: 32, scope: !5205)
!5214 = !DILocalVariable(name: "__UNIQUE_ID___x308", scope: !5215, file: !3, line: 689, type: !218)
!5215 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 689, column: 5)
!5216 = !DILocation(line: 689, column: 5, scope: !5215)
!5217 = !DILocalVariable(name: "__UNIQUE_ID___y309", scope: !5215, file: !3, line: 689, type: !218)
!5218 = !DILocation(line: 690, column: 5, scope: !5205)
!5219 = !DILocation(line: 688, column: 30, scope: !5205)
!5220 = !DILocation(line: 694, column: 46, scope: !5205)
!5221 = !DILocation(line: 694, column: 30, scope: !5205)
!5222 = !DILocation(line: 695, column: 30, scope: !5205)
!5223 = !DILocation(line: 696, column: 30, scope: !5205)
!5224 = !DILocation(line: 697, column: 46, scope: !5205)
!5225 = !DILocation(line: 697, column: 30, scope: !5205)
!5226 = !DILocation(line: 699, column: 31, scope: !5205)
!5227 = !DILocation(line: 700, column: 35, scope: !5205)
!5228 = !DILocation(line: 701, column: 28, scope: !5205)
!5229 = !DILocation(line: 702, column: 32, scope: !5205)
!5230 = !DILocalVariable(name: "i", scope: !5231, file: !3, line: 712, type: !354)
!5231 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 711, column: 2)
!5232 = !DILocation(line: 712, column: 7, scope: !5231)
!5233 = !DILocation(line: 718, column: 10, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 718, column: 3)
!5235 = !DILocation(line: 718, column: 8, scope: !5234)
!5236 = !DILocation(line: 718, column: 15, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 718, column: 3)
!5238 = !DILocation(line: 718, column: 17, scope: !5237)
!5239 = !DILocation(line: 718, column: 3, scope: !5234)
!5240 = !DILocation(line: 719, column: 22, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 719, column: 8)
!5242 = !DILocation(line: 719, column: 8, scope: !5241)
!5243 = !DILocation(line: 719, column: 25, scope: !5241)
!5244 = !DILocation(line: 719, column: 8, scope: !5237)
!5245 = !DILocation(line: 720, column: 38, scope: !5241)
!5246 = !DILocation(line: 720, column: 24, scope: !5241)
!5247 = !DILocation(line: 720, column: 41, scope: !5241)
!5248 = !DILocation(line: 721, column: 24, scope: !5241)
!5249 = !DILocation(line: 721, column: 10, scope: !5241)
!5250 = !DILocation(line: 721, column: 27, scope: !5241)
!5251 = !DILocation(line: 720, column: 5, scope: !5241)
!5252 = !DILocation(line: 718, column: 47, scope: !5237)
!5253 = !DILocation(line: 718, column: 3, scope: !5237)
!5254 = distinct !{!5254, !5239, !5255}
!5255 = !DILocation(line: 721, column: 33, scope: !5234)
!5256 = !DILocation(line: 726, column: 2, scope: !5205)
!5257 = !DILocation(line: 728, column: 2, scope: !5205)
!5258 = !DILocation(line: 729, column: 1, scope: !5205)
!5259 = distinct !DISubprogram(name: "queue_delayed_work", scope: !134, file: !134, line: 518, type: !5260, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!421, !2683, !4931, !218}
!5262 = !DILocalVariable(name: "wq", arg: 1, scope: !5259, file: !134, line: 518, type: !2683)
!5263 = !DILocation(line: 518, column: 64, scope: !5259)
!5264 = !DILocalVariable(name: "dwork", arg: 2, scope: !5259, file: !134, line: 519, type: !4931)
!5265 = !DILocation(line: 519, column: 32, scope: !5259)
!5266 = !DILocalVariable(name: "delay", arg: 3, scope: !5259, file: !134, line: 520, type: !218)
!5267 = !DILocation(line: 520, column: 25, scope: !5259)
!5268 = !DILocation(line: 522, column: 49, scope: !5259)
!5269 = !DILocation(line: 522, column: 53, scope: !5259)
!5270 = !DILocation(line: 522, column: 60, scope: !5259)
!5271 = !DILocation(line: 522, column: 9, scope: !5259)
!5272 = !DILocation(line: 522, column: 2, scope: !5259)
!5273 = distinct !DISubprogram(name: "balloon_process", scope: !3, file: !3, line: 499, type: !1459, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5274 = !DILocalVariable(name: "work", arg: 1, scope: !5273, file: !3, line: 499, type: !1461)
!5275 = !DILocation(line: 499, column: 49, scope: !5273)
!5276 = !DILocalVariable(name: "state", scope: !5273, file: !3, line: 501, type: !166)
!5277 = !DILocation(line: 501, column: 16, scope: !5273)
!5278 = !DILocalVariable(name: "credit", scope: !5273, file: !3, line: 502, type: !135)
!5279 = !DILocation(line: 502, column: 7, scope: !5273)
!5280 = !DILocation(line: 505, column: 2, scope: !5273)
!5281 = !DILocation(line: 506, column: 3, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 505, column: 5)
!5283 = !DILocation(line: 508, column: 12, scope: !5282)
!5284 = !DILocation(line: 508, column: 10, scope: !5282)
!5285 = !DILocation(line: 510, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 510, column: 7)
!5287 = !DILocation(line: 510, column: 14, scope: !5286)
!5288 = !DILocation(line: 510, column: 7, scope: !5282)
!5289 = !DILocation(line: 511, column: 8, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 511, column: 8)
!5291 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 510, column: 19)
!5292 = !DILocation(line: 511, column: 8, scope: !5291)
!5293 = !DILocation(line: 512, column: 34, scope: !5290)
!5294 = !DILocation(line: 512, column: 13, scope: !5290)
!5295 = !DILocation(line: 512, column: 11, scope: !5290)
!5296 = !DILocation(line: 512, column: 5, scope: !5290)
!5297 = !DILocation(line: 514, column: 13, scope: !5290)
!5298 = !DILocation(line: 514, column: 11, scope: !5290)
!5299 = !DILocation(line: 515, column: 3, scope: !5291)
!5300 = !DILocation(line: 517, column: 7, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 517, column: 7)
!5302 = !DILocation(line: 517, column: 14, scope: !5301)
!5303 = !DILocation(line: 517, column: 7, scope: !5282)
!5304 = !DILocalVariable(name: "n_pages", scope: !5305, file: !3, line: 518, type: !135)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 517, column: 19)
!5306 = !DILocation(line: 518, column: 9, scope: !5305)
!5307 = !DILocalVariable(name: "__UNIQUE_ID___x303", scope: !5308, file: !3, line: 520, type: !135)
!5308 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 520, column: 14)
!5309 = !DILocation(line: 520, column: 14, scope: !5308)
!5310 = !DILocalVariable(name: "__UNIQUE_ID___y304", scope: !5308, file: !3, line: 520, type: !135)
!5311 = !DILocation(line: 520, column: 12, scope: !5305)
!5312 = !DILocation(line: 521, column: 33, scope: !5305)
!5313 = !DILocation(line: 521, column: 12, scope: !5305)
!5314 = !DILocation(line: 521, column: 10, scope: !5305)
!5315 = !DILocation(line: 522, column: 8, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 522, column: 8)
!5317 = !DILocation(line: 522, column: 14, scope: !5316)
!5318 = !DILocation(line: 522, column: 25, scope: !5316)
!5319 = !DILocation(line: 522, column: 28, scope: !5316)
!5320 = !DILocation(line: 522, column: 40, scope: !5316)
!5321 = !DILocation(line: 522, column: 39, scope: !5316)
!5322 = !DILocation(line: 522, column: 36, scope: !5316)
!5323 = !DILocation(line: 522, column: 47, scope: !5316)
!5324 = !DILocation(line: 523, column: 8, scope: !5316)
!5325 = !DILocation(line: 523, column: 18, scope: !5316)
!5326 = !DILocation(line: 523, column: 16, scope: !5316)
!5327 = !DILocation(line: 522, column: 8, scope: !5305)
!5328 = !DILocation(line: 524, column: 11, scope: !5316)
!5329 = !DILocation(line: 524, column: 5, scope: !5316)
!5330 = !DILocation(line: 525, column: 3, scope: !5305)
!5331 = !DILocation(line: 527, column: 27, scope: !5282)
!5332 = !DILocation(line: 527, column: 11, scope: !5282)
!5333 = !DILocation(line: 527, column: 9, scope: !5282)
!5334 = !DILocation(line: 529, column: 3, scope: !5282)
!5335 = !DILocation(line: 531, column: 3, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 531, column: 3)
!5337 = !DILocation(line: 533, column: 2, scope: !5282)
!5338 = !DILocation(line: 533, column: 11, scope: !5273)
!5339 = !DILocation(line: 533, column: 18, scope: !5273)
!5340 = !DILocation(line: 533, column: 21, scope: !5273)
!5341 = !DILocation(line: 533, column: 27, scope: !5273)
!5342 = !DILocation(line: 0, scope: !5273)
!5343 = distinct !{!5343, !5280, !5344}
!5344 = !DILocation(line: 533, column: 37, scope: !5273)
!5345 = !DILocation(line: 536, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 536, column: 6)
!5347 = !DILocation(line: 536, column: 12, scope: !5346)
!5348 = !DILocation(line: 536, column: 6, scope: !5273)
!5349 = !DILocation(line: 537, column: 56, scope: !5346)
!5350 = !DILocation(line: 537, column: 71, scope: !5346)
!5351 = !DILocation(line: 537, column: 3, scope: !5346)
!5352 = !DILocation(line: 538, column: 1, scope: !5273)
!5353 = distinct !DISubprogram(name: "balloon_is_inflated", scope: !3, file: !3, line: 392, type: !1977, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5354 = !DILocation(line: 394, column: 23, scope: !5353)
!5355 = !DILocation(line: 394, column: 9, scope: !5353)
!5356 = !DILocation(line: 394, column: 35, scope: !5353)
!5357 = !DILocation(line: 394, column: 52, scope: !5353)
!5358 = !DILocation(line: 394, column: 2, scope: !5353)
!5359 = distinct !DISubprogram(name: "increase_reservation", scope: !3, file: !3, line: 397, type: !5360, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!166, !218}
!5362 = !DILocalVariable(name: "nr_pages", arg: 1, scope: !5359, file: !3, line: 397, type: !218)
!5363 = !DILocation(line: 397, column: 57, scope: !5359)
!5364 = !DILocalVariable(name: "rc", scope: !5359, file: !3, line: 399, type: !354)
!5365 = !DILocation(line: 399, column: 6, scope: !5359)
!5366 = !DILocalVariable(name: "i", scope: !5359, file: !3, line: 400, type: !218)
!5367 = !DILocation(line: 400, column: 16, scope: !5359)
!5368 = !DILocalVariable(name: "page", scope: !5359, file: !3, line: 401, type: !219)
!5369 = !DILocation(line: 401, column: 17, scope: !5359)
!5370 = !DILocation(line: 403, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 403, column: 6)
!5372 = !DILocation(line: 403, column: 15, scope: !5371)
!5373 = !DILocation(line: 403, column: 6, scope: !5359)
!5374 = !DILocation(line: 404, column: 12, scope: !5371)
!5375 = !DILocation(line: 404, column: 3, scope: !5371)
!5376 = !DILocalVariable(name: "head__", scope: !5377, file: !3, line: 406, type: !235)
!5377 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 406, column: 9)
!5378 = !DILocation(line: 406, column: 9, scope: !5377)
!5379 = !DILocalVariable(name: "pos__", scope: !5377, file: !3, line: 406, type: !235)
!5380 = !DILocation(line: 406, column: 9, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 406, column: 9)
!5382 = !DILocation(line: 406, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 406, column: 9)
!5384 = !DILocalVariable(name: "__mptr", scope: !5385, file: !3, line: 406, type: !464)
!5385 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 406, column: 9)
!5386 = !DILocation(line: 406, column: 9, scope: !5385)
!5387 = !DILocation(line: 406, column: 9, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 406, column: 9)
!5389 = !DILocation(line: 406, column: 7, scope: !5359)
!5390 = !DILocation(line: 407, column: 9, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 407, column: 2)
!5392 = !DILocation(line: 407, column: 7, scope: !5391)
!5393 = !DILocation(line: 407, column: 14, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 407, column: 2)
!5395 = !DILocation(line: 407, column: 18, scope: !5394)
!5396 = !DILocation(line: 407, column: 16, scope: !5394)
!5397 = !DILocation(line: 407, column: 2, scope: !5391)
!5398 = !DILocation(line: 408, column: 8, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 408, column: 7)
!5400 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 407, column: 33)
!5401 = !DILocation(line: 408, column: 7, scope: !5400)
!5402 = !DILocation(line: 409, column: 15, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 408, column: 14)
!5404 = !DILocation(line: 409, column: 13, scope: !5403)
!5405 = !DILocation(line: 410, column: 4, scope: !5403)
!5406 = !DILocation(line: 413, column: 19, scope: !5400)
!5407 = !DILocation(line: 413, column: 14, scope: !5400)
!5408 = !DILocation(line: 413, column: 3, scope: !5400)
!5409 = !DILocation(line: 413, column: 17, scope: !5400)
!5410 = !DILocation(line: 414, column: 28, scope: !5400)
!5411 = !DILocation(line: 414, column: 10, scope: !5400)
!5412 = !DILocation(line: 414, column: 8, scope: !5400)
!5413 = !DILocation(line: 415, column: 2, scope: !5400)
!5414 = !DILocation(line: 407, column: 29, scope: !5394)
!5415 = !DILocation(line: 407, column: 2, scope: !5394)
!5416 = distinct !{!5416, !5397, !5417}
!5417 = !DILocation(line: 415, column: 2, scope: !5391)
!5418 = !DILocation(line: 417, column: 35, scope: !5359)
!5419 = !DILocation(line: 417, column: 7, scope: !5359)
!5420 = !DILocation(line: 417, column: 5, scope: !5359)
!5421 = !DILocation(line: 418, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 418, column: 6)
!5423 = !DILocation(line: 418, column: 9, scope: !5422)
!5424 = !DILocation(line: 418, column: 6, scope: !5359)
!5425 = !DILocation(line: 419, column: 3, scope: !5422)
!5426 = !DILocation(line: 421, column: 9, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 421, column: 2)
!5428 = !DILocation(line: 421, column: 7, scope: !5427)
!5429 = !DILocation(line: 421, column: 14, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 421, column: 2)
!5431 = !DILocation(line: 421, column: 18, scope: !5430)
!5432 = !DILocation(line: 421, column: 16, scope: !5430)
!5433 = !DILocation(line: 421, column: 2, scope: !5427)
!5434 = !DILocation(line: 422, column: 10, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 421, column: 27)
!5436 = !DILocation(line: 422, column: 8, scope: !5435)
!5437 = !DILocation(line: 423, column: 3, scope: !5435)
!5438 = !DILocation(line: 423, column: 3, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 423, column: 3)
!5440 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 423, column: 3)
!5441 = !DILocation(line: 423, column: 3, scope: !5440)
!5442 = !DILocation(line: 423, column: 3, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 423, column: 3)
!5444 = !DILocation(line: 423, column: 3, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 423, column: 3)
!5446 = !DILocation(line: 423, column: 3, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 423, column: 3)
!5448 = !{i32 -2140437262, i32 -2140437233, i32 -2140437187, i32 -2140437129, i32 -2140437075, i32 -2140437021, i32 -2140436966, i32 -2140436935}
!5449 = !DILocation(line: 423, column: 3, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 423, column: 3)
!5451 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 423, column: 3)
!5452 = !{i32 -2140436491, i32 -2140436484, i32 -2140436430, i32 -2140436399, i32 -2140436369}
!5453 = !DILocation(line: 423, column: 3, scope: !5451)
!5454 = !DILocation(line: 425, column: 62, scope: !5435)
!5455 = !DILocation(line: 425, column: 51, scope: !5435)
!5456 = !DILocation(line: 425, column: 3, scope: !5435)
!5457 = !DILocation(line: 428, column: 22, scope: !5435)
!5458 = !DILocation(line: 428, column: 3, scope: !5435)
!5459 = !DILocation(line: 429, column: 2, scope: !5435)
!5460 = !DILocation(line: 421, column: 23, scope: !5430)
!5461 = !DILocation(line: 421, column: 2, scope: !5430)
!5462 = distinct !{!5462, !5433, !5463}
!5463 = !DILocation(line: 429, column: 2, scope: !5427)
!5464 = !DILocation(line: 431, column: 33, scope: !5359)
!5465 = !DILocation(line: 431, column: 30, scope: !5359)
!5466 = !DILocation(line: 433, column: 2, scope: !5359)
!5467 = !DILocation(line: 434, column: 1, scope: !5359)
!5468 = distinct !DISubprogram(name: "reserve_additional_memory", scope: !3, file: !3, line: 379, type: !5469, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!166}
!5471 = !DILocation(line: 381, column: 45, scope: !5468)
!5472 = !DILocation(line: 382, column: 24, scope: !5468)
!5473 = !DILocation(line: 381, column: 59, scope: !5468)
!5474 = !DILocation(line: 381, column: 29, scope: !5468)
!5475 = !DILocation(line: 383, column: 2, scope: !5468)
!5476 = distinct !DISubprogram(name: "decrease_reservation", scope: !3, file: !3, line: 436, type: !5477, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!166, !218, !2042}
!5479 = !DILocalVariable(name: "nr_pages", arg: 1, scope: !5476, file: !3, line: 436, type: !218)
!5480 = !DILocation(line: 436, column: 57, scope: !5476)
!5481 = !DILocalVariable(name: "gfp", arg: 2, scope: !5476, file: !3, line: 436, type: !2042)
!5482 = !DILocation(line: 436, column: 73, scope: !5476)
!5483 = !DILocalVariable(name: "state", scope: !5476, file: !3, line: 438, type: !166)
!5484 = !DILocation(line: 438, column: 16, scope: !5476)
!5485 = !DILocalVariable(name: "i", scope: !5476, file: !3, line: 439, type: !218)
!5486 = !DILocation(line: 439, column: 16, scope: !5476)
!5487 = !DILocalVariable(name: "page", scope: !5476, file: !3, line: 440, type: !219)
!5488 = !DILocation(line: 440, column: 15, scope: !5476)
!5489 = !DILocalVariable(name: "tmp", scope: !5476, file: !3, line: 440, type: !219)
!5490 = !DILocation(line: 440, column: 22, scope: !5476)
!5491 = !DILocalVariable(name: "ret", scope: !5476, file: !3, line: 441, type: !354)
!5492 = !DILocation(line: 441, column: 6, scope: !5476)
!5493 = !DILocalVariable(name: "pages", scope: !5476, file: !3, line: 442, type: !231)
!5494 = !DILocation(line: 442, column: 2, scope: !5476)
!5495 = !DILocation(line: 444, column: 6, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 444, column: 6)
!5497 = !DILocation(line: 444, column: 15, scope: !5496)
!5498 = !DILocation(line: 444, column: 6, scope: !5476)
!5499 = !DILocation(line: 445, column: 12, scope: !5496)
!5500 = !DILocation(line: 445, column: 3, scope: !5496)
!5501 = !DILocation(line: 447, column: 9, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 447, column: 2)
!5503 = !DILocation(line: 447, column: 7, scope: !5502)
!5504 = !DILocation(line: 447, column: 14, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 447, column: 2)
!5506 = !DILocation(line: 447, column: 18, scope: !5505)
!5507 = !DILocation(line: 447, column: 16, scope: !5505)
!5508 = !DILocation(line: 447, column: 2, scope: !5502)
!5509 = !DILocation(line: 448, column: 10, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 447, column: 33)
!5511 = !DILocation(line: 448, column: 8, scope: !5510)
!5512 = !DILocation(line: 449, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 449, column: 7)
!5514 = !DILocation(line: 449, column: 12, scope: !5513)
!5515 = !DILocation(line: 449, column: 7, scope: !5510)
!5516 = !DILocation(line: 450, column: 15, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 449, column: 21)
!5518 = !DILocation(line: 450, column: 13, scope: !5517)
!5519 = !DILocation(line: 451, column: 10, scope: !5517)
!5520 = !DILocation(line: 452, column: 4, scope: !5517)
!5521 = !DILocation(line: 454, column: 29, scope: !5510)
!5522 = !DILocation(line: 454, column: 3, scope: !5510)
!5523 = !DILocation(line: 455, column: 33, scope: !5510)
!5524 = !DILocation(line: 455, column: 3, scope: !5510)
!5525 = !DILocation(line: 456, column: 13, scope: !5510)
!5526 = !DILocation(line: 456, column: 19, scope: !5510)
!5527 = !DILocation(line: 456, column: 3, scope: !5510)
!5528 = !DILocation(line: 457, column: 2, scope: !5510)
!5529 = !DILocation(line: 447, column: 29, scope: !5505)
!5530 = !DILocation(line: 447, column: 2, scope: !5505)
!5531 = distinct !{!5531, !5508, !5532}
!5532 = !DILocation(line: 457, column: 2, scope: !5502)
!5533 = !DILocation(line: 466, column: 2, scope: !5476)
!5534 = !DILocation(line: 466, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 466, column: 2)
!5536 = !DILocation(line: 472, column: 4, scope: !5476)
!5537 = !DILocalVariable(name: "__mptr", scope: !5538, file: !3, line: 473, type: !464)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 473, column: 2)
!5539 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 473, column: 2)
!5540 = !DILocation(line: 473, column: 2, scope: !5538)
!5541 = !DILocation(line: 473, column: 2, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 473, column: 2)
!5543 = !DILocation(line: 473, column: 2, scope: !5539)
!5544 = !DILocalVariable(name: "__mptr", scope: !5545, file: !3, line: 473, type: !464)
!5545 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 473, column: 2)
!5546 = !DILocation(line: 473, column: 2, scope: !5545)
!5547 = !DILocation(line: 473, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 473, column: 2)
!5549 = !DILocation(line: 473, column: 2, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 473, column: 2)
!5551 = !DILocation(line: 474, column: 37, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 473, column: 51)
!5553 = !DILocation(line: 474, column: 21, scope: !5552)
!5554 = !DILocation(line: 474, column: 15, scope: !5552)
!5555 = !DILocation(line: 474, column: 3, scope: !5552)
!5556 = !DILocation(line: 474, column: 19, scope: !5552)
!5557 = !DILocation(line: 476, column: 3, scope: !5552)
!5558 = !DILocation(line: 478, column: 13, scope: !5552)
!5559 = !DILocation(line: 478, column: 19, scope: !5552)
!5560 = !DILocation(line: 478, column: 3, scope: !5552)
!5561 = !DILocation(line: 480, column: 18, scope: !5552)
!5562 = !DILocation(line: 480, column: 3, scope: !5552)
!5563 = !DILocation(line: 481, column: 2, scope: !5552)
!5564 = !DILocalVariable(name: "__mptr", scope: !5565, file: !3, line: 473, type: !464)
!5565 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 473, column: 2)
!5566 = !DILocation(line: 473, column: 2, scope: !5565)
!5567 = !DILocation(line: 473, column: 2, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 473, column: 2)
!5569 = distinct !{!5569, !5543, !5570}
!5570 = !DILocation(line: 481, column: 2, scope: !5539)
!5571 = !DILocation(line: 483, column: 2, scope: !5476)
!5572 = !DILocation(line: 485, column: 36, scope: !5476)
!5573 = !DILocation(line: 485, column: 8, scope: !5476)
!5574 = !DILocation(line: 485, column: 6, scope: !5476)
!5575 = !DILocation(line: 486, column: 2, scope: !5476)
!5576 = !DILocation(line: 486, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 486, column: 2)
!5578 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 486, column: 2)
!5579 = !DILocation(line: 486, column: 2, scope: !5578)
!5580 = !DILocation(line: 486, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 486, column: 2)
!5582 = !DILocation(line: 486, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 486, column: 2)
!5584 = !DILocation(line: 486, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 486, column: 2)
!5586 = !{i32 -2140429670, i32 -2140429641, i32 -2140429595, i32 -2140429537, i32 -2140429483, i32 -2140429429, i32 -2140429374, i32 -2140429343}
!5587 = !DILocation(line: 486, column: 2, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 486, column: 2)
!5589 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 486, column: 2)
!5590 = !{i32 -2140428899, i32 -2140428892, i32 -2140428838, i32 -2140428807, i32 -2140428777}
!5591 = !DILocation(line: 486, column: 2, scope: !5589)
!5592 = !DILocation(line: 488, column: 33, scope: !5476)
!5593 = !DILocation(line: 488, column: 30, scope: !5476)
!5594 = !DILocation(line: 490, column: 9, scope: !5476)
!5595 = !DILocation(line: 490, column: 2, scope: !5476)
!5596 = distinct !DISubprogram(name: "update_schedule", scope: !3, file: !3, line: 202, type: !5597, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!166, !166}
!5599 = !DILocalVariable(name: "state", arg: 1, scope: !5596, file: !3, line: 202, type: !166)
!5600 = !DILocation(line: 202, column: 52, scope: !5596)
!5601 = !DILocation(line: 204, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 204, column: 6)
!5603 = !DILocation(line: 204, column: 12, scope: !5602)
!5604 = !DILocation(line: 204, column: 6, scope: !5596)
!5605 = !DILocation(line: 205, column: 3, scope: !5602)
!5606 = !DILocation(line: 207, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 207, column: 6)
!5608 = !DILocation(line: 207, column: 12, scope: !5607)
!5609 = !DILocation(line: 207, column: 6, scope: !5596)
!5610 = !DILocation(line: 208, column: 3, scope: !5607)
!5611 = !DILocation(line: 210, column: 6, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 210, column: 6)
!5613 = !DILocation(line: 210, column: 12, scope: !5612)
!5614 = !DILocation(line: 210, column: 6, scope: !5596)
!5615 = !DILocation(line: 211, column: 32, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 210, column: 24)
!5617 = !DILocation(line: 212, column: 29, scope: !5616)
!5618 = !DILocation(line: 213, column: 3, scope: !5616)
!5619 = !DILocation(line: 216, column: 2, scope: !5596)
!5620 = !DILocation(line: 218, column: 20, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 218, column: 6)
!5622 = !DILocation(line: 218, column: 36, scope: !5621)
!5623 = !DILocation(line: 218, column: 55, scope: !5621)
!5624 = !DILocation(line: 219, column: 18, scope: !5621)
!5625 = !DILocation(line: 219, column: 46, scope: !5621)
!5626 = !DILocation(line: 219, column: 30, scope: !5621)
!5627 = !DILocation(line: 218, column: 6, scope: !5596)
!5628 = !DILocation(line: 220, column: 32, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 219, column: 63)
!5630 = !DILocation(line: 221, column: 29, scope: !5629)
!5631 = !DILocation(line: 222, column: 3, scope: !5629)
!5632 = !DILocation(line: 225, column: 31, scope: !5596)
!5633 = !DILocation(line: 227, column: 20, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 227, column: 6)
!5635 = !DILocation(line: 227, column: 51, scope: !5634)
!5636 = !DILocation(line: 227, column: 35, scope: !5634)
!5637 = !DILocation(line: 227, column: 6, scope: !5596)
!5638 = !DILocation(line: 228, column: 48, scope: !5634)
!5639 = !DILocation(line: 228, column: 32, scope: !5634)
!5640 = !DILocation(line: 228, column: 3, scope: !5634)
!5641 = !DILocation(line: 230, column: 2, scope: !5596)
!5642 = !DILocation(line: 231, column: 1, scope: !5596)
!5643 = distinct !DISubprogram(name: "___might_sleep", scope: !5644, file: !5644, line: 248, type: !5645, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5644 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5645 = !DISubroutineType(types: !5646)
!5646 = !{null, !376, !354, !354}
!5647 = !DILocalVariable(name: "file", arg: 1, scope: !5643, file: !5644, line: 248, type: !376)
!5648 = !DILocation(line: 248, column: 49, scope: !5643)
!5649 = !DILocalVariable(name: "line", arg: 2, scope: !5643, file: !5644, line: 248, type: !354)
!5650 = !DILocation(line: 248, column: 59, scope: !5643)
!5651 = !DILocalVariable(name: "preempt_offset", arg: 3, scope: !5643, file: !5644, line: 249, type: !354)
!5652 = !DILocation(line: 249, column: 12, scope: !5643)
!5653 = !DILocation(line: 249, column: 30, scope: !5643)
!5654 = distinct !DISubprogram(name: "balloon_next_page", scope: !3, file: !3, line: 194, type: !5655, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!219, !219}
!5657 = !DILocalVariable(name: "page", arg: 1, scope: !5654, file: !3, line: 194, type: !219)
!5658 = !DILocation(line: 194, column: 52, scope: !5654)
!5659 = !DILocalVariable(name: "next", scope: !5654, file: !3, line: 196, type: !235)
!5660 = !DILocation(line: 196, column: 20, scope: !5654)
!5661 = !DILocation(line: 196, column: 27, scope: !5654)
!5662 = !DILocation(line: 196, column: 33, scope: !5654)
!5663 = !DILocation(line: 196, column: 37, scope: !5654)
!5664 = !DILocation(line: 197, column: 6, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 197, column: 6)
!5666 = !DILocation(line: 197, column: 11, scope: !5665)
!5667 = !DILocation(line: 197, column: 6, scope: !5654)
!5668 = !DILocation(line: 198, column: 3, scope: !5665)
!5669 = !DILocalVariable(name: "__mptr", scope: !5670, file: !3, line: 199, type: !464)
!5670 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 199, column: 9)
!5671 = !DILocation(line: 199, column: 9, scope: !5670)
!5672 = !DILocation(line: 199, column: 9, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 199, column: 9)
!5674 = !DILocation(line: 199, column: 2, scope: !5654)
!5675 = !DILocation(line: 200, column: 1, scope: !5654)
!5676 = distinct !DISubprogram(name: "xenmem_reservation_va_mapping_update", scope: !5677, file: !5677, line: 37, type: !5678, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5677 = !DIFile(filename: "./include/xen/mem-reservation.h", directory: "/home/lizy2001/genbc/linux")
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !218, !3604, !5680}
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!5681 = !DILocalVariable(name: "count", arg: 1, scope: !5676, file: !5677, line: 37, type: !218)
!5682 = !DILocation(line: 37, column: 71, scope: !5676)
!5683 = !DILocalVariable(name: "pages", arg: 2, scope: !5676, file: !5677, line: 38, type: !3604)
!5684 = !DILocation(line: 38, column: 22, scope: !5676)
!5685 = !DILocalVariable(name: "frames", arg: 3, scope: !5676, file: !5677, line: 39, type: !5680)
!5686 = !DILocation(line: 39, column: 19, scope: !5676)
!5687 = !DILocation(line: 42, column: 7, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5676, file: !5677, line: 42, column: 6)
!5689 = !DILocation(line: 42, column: 6, scope: !5676)
!5690 = !DILocation(line: 43, column: 42, scope: !5688)
!5691 = !DILocation(line: 43, column: 49, scope: !5688)
!5692 = !DILocation(line: 43, column: 56, scope: !5688)
!5693 = !DILocation(line: 43, column: 3, scope: !5688)
!5694 = !DILocation(line: 45, column: 1, scope: !5676)
!5695 = distinct !DISubprogram(name: "free_reserved_page", scope: !29, file: !29, line: 2365, type: !4660, scopeLine: 2366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5696 = !DILocalVariable(name: "page", arg: 1, scope: !5695, file: !29, line: 2365, type: !219)
!5697 = !DILocation(line: 2365, column: 52, scope: !5695)
!5698 = !DILocation(line: 2367, column: 23, scope: !5695)
!5699 = !DILocation(line: 2367, column: 2, scope: !5695)
!5700 = !DILocation(line: 2368, column: 28, scope: !5695)
!5701 = !DILocation(line: 2368, column: 2, scope: !5695)
!5702 = !DILocation(line: 2369, column: 1, scope: !5695)
!5703 = distinct !DISubprogram(name: "__free_reserved_page", scope: !29, file: !29, line: 2358, type: !4660, scopeLine: 2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5704 = !DILocalVariable(name: "page", arg: 1, scope: !5705, file: !173, line: 354, type: !219)
!5705 = distinct !DISubprogram(name: "ClearPageReserved", scope: !173, file: !173, line: 354, type: !4660, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5706 = !DILocation(line: 354, column: 1, scope: !5705, inlinedAt: !5707)
!5707 = distinct !DILocation(line: 2360, column: 2, scope: !5703)
!5708 = !DILocalVariable(name: "page", arg: 1, scope: !5703, file: !29, line: 2358, type: !219)
!5709 = !DILocation(line: 2358, column: 54, scope: !5703)
!5710 = !DILocation(line: 2360, column: 20, scope: !5703)
!5711 = !DILocation(line: 354, column: 1, scope: !5712, inlinedAt: !5707)
!5712 = distinct !DILexicalBlock(scope: !5713, file: !173, line: 354, column: 1)
!5713 = distinct !DILexicalBlock(scope: !5705, file: !173, line: 354, column: 1)
!5714 = !DILocation(line: 354, column: 1, scope: !5713, inlinedAt: !5707)
!5715 = !DILocation(line: 2361, column: 18, scope: !5703)
!5716 = !DILocation(line: 2361, column: 2, scope: !5703)
!5717 = !DILocation(line: 2362, column: 2, scope: !5703)
!5718 = !DILocation(line: 2363, column: 1, scope: !5703)
!5719 = distinct !DISubprogram(name: "init_page_count", scope: !5720, file: !5720, line: 86, type: !4660, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5720 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/lizy2001/genbc/linux")
!5721 = !DILocalVariable(name: "page", arg: 1, scope: !5719, file: !5720, line: 86, type: !219)
!5722 = !DILocation(line: 86, column: 49, scope: !5719)
!5723 = !DILocation(line: 88, column: 17, scope: !5719)
!5724 = !DILocation(line: 88, column: 2, scope: !5719)
!5725 = !DILocation(line: 89, column: 1, scope: !5719)
!5726 = distinct !DISubprogram(name: "clear_bit", scope: !5727, file: !5727, line: 39, type: !5728, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5727 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !135, !5730}
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !218)
!5732 = !DILocalVariable(name: "nr", arg: 1, scope: !5733, file: !5734, line: 72, type: !135)
!5733 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5734, file: !5734, line: 72, type: !5728, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5734 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5735 = !DILocation(line: 72, column: 21, scope: !5733, inlinedAt: !5736)
!5736 = distinct !DILocation(line: 42, column: 2, scope: !5726)
!5737 = !DILocalVariable(name: "addr", arg: 2, scope: !5733, file: !5734, line: 72, type: !5730)
!5738 = !DILocation(line: 72, column: 49, scope: !5733, inlinedAt: !5736)
!5739 = !DILocalVariable(name: "v", arg: 1, scope: !5740, file: !5741, line: 84, type: !5744)
!5740 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5741, file: !5741, line: 84, type: !5742, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5741 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5742 = !DISubroutineType(types: !5743)
!5743 = !{null, !5744, !573}
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5745, size: 64)
!5745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5746)
!5746 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5747 = !DILocation(line: 84, column: 74, scope: !5740, inlinedAt: !5748)
!5748 = distinct !DILocation(line: 41, column: 2, scope: !5726)
!5749 = !DILocalVariable(name: "size", arg: 2, scope: !5740, file: !5741, line: 84, type: !573)
!5750 = !DILocation(line: 84, column: 84, scope: !5740, inlinedAt: !5748)
!5751 = !DILocalVariable(name: "nr", arg: 1, scope: !5726, file: !5727, line: 39, type: !135)
!5752 = !DILocation(line: 39, column: 35, scope: !5726)
!5753 = !DILocalVariable(name: "addr", arg: 2, scope: !5726, file: !5727, line: 39, type: !5730)
!5754 = !DILocation(line: 39, column: 63, scope: !5726)
!5755 = !DILocation(line: 41, column: 26, scope: !5726)
!5756 = !DILocation(line: 41, column: 33, scope: !5726)
!5757 = !DILocation(line: 41, column: 31, scope: !5726)
!5758 = !DILocation(line: 86, column: 20, scope: !5740, inlinedAt: !5748)
!5759 = !DILocation(line: 86, column: 23, scope: !5740, inlinedAt: !5748)
!5760 = !DILocation(line: 86, column: 2, scope: !5740, inlinedAt: !5748)
!5761 = !DILocation(line: 87, column: 2, scope: !5740, inlinedAt: !5748)
!5762 = !DILocation(line: 42, column: 17, scope: !5726)
!5763 = !DILocation(line: 42, column: 21, scope: !5726)
!5764 = !DILocation(line: 74, column: 27, scope: !5765, inlinedAt: !5736)
!5765 = distinct !DILexicalBlock(scope: !5733, file: !5734, line: 74, column: 6)
!5766 = !DILocation(line: 74, column: 6, scope: !5765, inlinedAt: !5736)
!5767 = !DILocation(line: 74, column: 6, scope: !5733, inlinedAt: !5736)
!5768 = !DILocation(line: 76, column: 6, scope: !5769, inlinedAt: !5736)
!5769 = distinct !DILexicalBlock(scope: !5765, file: !5734, line: 74, column: 32)
!5770 = !DILocation(line: 77, column: 13, scope: !5769, inlinedAt: !5736)
!5771 = !DILocation(line: 77, column: 12, scope: !5769, inlinedAt: !5736)
!5772 = !DILocation(line: 75, column: 3, scope: !5769, inlinedAt: !5736)
!5773 = !{i32 -2147045217}
!5774 = !DILocation(line: 78, column: 2, scope: !5769, inlinedAt: !5736)
!5775 = !DILocation(line: 80, column: 8, scope: !5776, inlinedAt: !5736)
!5776 = distinct !DILexicalBlock(scope: !5765, file: !5734, line: 78, column: 9)
!5777 = !DILocation(line: 80, column: 32, scope: !5776, inlinedAt: !5736)
!5778 = !DILocation(line: 79, column: 3, scope: !5776, inlinedAt: !5736)
!5779 = !{i32 -2147045085}
!5780 = !DILocation(line: 43, column: 1, scope: !5726)
!5781 = distinct !DISubprogram(name: "kasan_check_write", scope: !5782, file: !5782, line: 38, type: !5783, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5782 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!421, !5744, !7}
!5785 = !DILocalVariable(name: "p", arg: 1, scope: !5781, file: !5782, line: 38, type: !5744)
!5786 = !DILocation(line: 38, column: 59, scope: !5781)
!5787 = !DILocalVariable(name: "size", arg: 2, scope: !5781, file: !5782, line: 38, type: !7)
!5788 = !DILocation(line: 38, column: 75, scope: !5781)
!5789 = !DILocation(line: 40, column: 2, scope: !5781)
!5790 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5791, file: !5791, line: 178, type: !5792, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5791 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5792 = !DISubroutineType(types: !5793)
!5793 = !{null, !5744, !573, !354}
!5794 = !DILocalVariable(name: "ptr", arg: 1, scope: !5790, file: !5791, line: 178, type: !5744)
!5795 = !DILocation(line: 178, column: 60, scope: !5790)
!5796 = !DILocalVariable(name: "size", arg: 2, scope: !5790, file: !5791, line: 178, type: !573)
!5797 = !DILocation(line: 178, column: 72, scope: !5790)
!5798 = !DILocalVariable(name: "type", arg: 3, scope: !5790, file: !5791, line: 179, type: !354)
!5799 = !DILocation(line: 179, column: 15, scope: !5790)
!5800 = !DILocation(line: 179, column: 23, scope: !5790)
!5801 = distinct !DISubprogram(name: "set_page_count", scope: !5720, file: !5720, line: 75, type: !5802, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{null, !219, !354}
!5804 = !DILocalVariable(name: "v", arg: 1, scope: !5805, file: !5806, line: 39, type: !5809)
!5805 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5806, file: !5806, line: 39, type: !5807, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5806 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5807 = !DISubroutineType(types: !5808)
!5808 = !{null, !5809, !354}
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!5810 = !DILocation(line: 39, column: 55, scope: !5805, inlinedAt: !5811)
!5811 = distinct !DILocation(line: 46, column: 2, scope: !5812, inlinedAt: !5814)
!5812 = distinct !DISubprogram(name: "atomic_set", scope: !5813, file: !5813, line: 43, type: !5807, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5813 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5814 = distinct !DILocation(line: 77, column: 2, scope: !5801)
!5815 = !DILocalVariable(name: "i", arg: 2, scope: !5805, file: !5806, line: 39, type: !354)
!5816 = !DILocation(line: 39, column: 62, scope: !5805, inlinedAt: !5811)
!5817 = !DILocation(line: 84, column: 74, scope: !5740, inlinedAt: !5818)
!5818 = distinct !DILocation(line: 45, column: 2, scope: !5812, inlinedAt: !5814)
!5819 = !DILocation(line: 84, column: 84, scope: !5740, inlinedAt: !5818)
!5820 = !DILocalVariable(name: "v", arg: 1, scope: !5812, file: !5813, line: 43, type: !5809)
!5821 = !DILocation(line: 43, column: 22, scope: !5812, inlinedAt: !5814)
!5822 = !DILocalVariable(name: "i", arg: 2, scope: !5812, file: !5813, line: 43, type: !354)
!5823 = !DILocation(line: 43, column: 29, scope: !5812, inlinedAt: !5814)
!5824 = !DILocalVariable(name: "page", arg: 1, scope: !5801, file: !5720, line: 75, type: !219)
!5825 = !DILocation(line: 75, column: 48, scope: !5801)
!5826 = !DILocalVariable(name: "v", arg: 2, scope: !5801, file: !5720, line: 75, type: !354)
!5827 = !DILocation(line: 75, column: 58, scope: !5801)
!5828 = !DILocation(line: 77, column: 14, scope: !5801)
!5829 = !DILocation(line: 77, column: 20, scope: !5801)
!5830 = !DILocation(line: 77, column: 31, scope: !5801)
!5831 = !DILocation(line: 45, column: 26, scope: !5812, inlinedAt: !5814)
!5832 = !DILocation(line: 86, column: 20, scope: !5740, inlinedAt: !5818)
!5833 = !DILocation(line: 86, column: 23, scope: !5740, inlinedAt: !5818)
!5834 = !DILocation(line: 86, column: 2, scope: !5740, inlinedAt: !5818)
!5835 = !DILocation(line: 87, column: 2, scope: !5740, inlinedAt: !5818)
!5836 = !DILocation(line: 46, column: 18, scope: !5812, inlinedAt: !5814)
!5837 = !DILocation(line: 46, column: 21, scope: !5812, inlinedAt: !5814)
!5838 = !DILocation(line: 41, column: 2, scope: !5839, inlinedAt: !5811)
!5839 = distinct !DILexicalBlock(scope: !5805, file: !5806, line: 41, column: 2)
!5840 = !DILocation(line: 80, column: 1, scope: !5801)
!5841 = distinct !DISubprogram(name: "alloc_pages", scope: !5842, file: !5842, line: 555, type: !5843, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5842 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/lizy2001/genbc/linux")
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!219, !2042, !7}
!5845 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5841, file: !5842, line: 555, type: !2042)
!5846 = !DILocation(line: 555, column: 46, scope: !5841)
!5847 = !DILocalVariable(name: "order", arg: 2, scope: !5841, file: !5842, line: 555, type: !7)
!5848 = !DILocation(line: 555, column: 69, scope: !5841)
!5849 = !DILocation(line: 557, column: 26, scope: !5841)
!5850 = !DILocation(line: 557, column: 42, scope: !5841)
!5851 = !DILocation(line: 557, column: 52, scope: !5841)
!5852 = !DILocation(line: 557, column: 9, scope: !5841)
!5853 = !DILocation(line: 557, column: 2, scope: !5841)
!5854 = distinct !DISubprogram(name: "xenmem_reservation_scrub_page", scope: !5677, file: !5677, line: 22, type: !4660, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5855 = !DILocalVariable(name: "page", arg: 1, scope: !5854, file: !5677, line: 22, type: !219)
!5856 = !DILocation(line: 22, column: 63, scope: !5854)
!5857 = !DILocation(line: 24, column: 6, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5854, file: !5677, line: 24, column: 6)
!5859 = !DILocation(line: 24, column: 6, scope: !5854)
!5860 = !DILocation(line: 25, column: 18, scope: !5858)
!5861 = !DILocation(line: 25, column: 3, scope: !5858)
!5862 = !DILocation(line: 26, column: 1, scope: !5854)
!5863 = distinct !DISubprogram(name: "list_add", scope: !5864, file: !5864, line: 84, type: !5865, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5864 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5865 = !DISubroutineType(types: !5866)
!5866 = !{null, !235, !235}
!5867 = !DILocalVariable(name: "new", arg: 1, scope: !5863, file: !5864, line: 84, type: !235)
!5868 = !DILocation(line: 84, column: 47, scope: !5863)
!5869 = !DILocalVariable(name: "head", arg: 2, scope: !5863, file: !5864, line: 84, type: !235)
!5870 = !DILocation(line: 84, column: 70, scope: !5863)
!5871 = !DILocation(line: 86, column: 13, scope: !5863)
!5872 = !DILocation(line: 86, column: 18, scope: !5863)
!5873 = !DILocation(line: 86, column: 24, scope: !5863)
!5874 = !DILocation(line: 86, column: 30, scope: !5863)
!5875 = !DILocation(line: 86, column: 2, scope: !5863)
!5876 = !DILocation(line: 87, column: 1, scope: !5863)
!5877 = distinct !DISubprogram(name: "xen_page_to_gfn", scope: !5878, file: !5878, line: 31, type: !5879, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5878 = !DIFile(filename: "./include/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!218, !219}
!5881 = !DILocalVariable(name: "page", arg: 1, scope: !5877, file: !5878, line: 31, type: !219)
!5882 = !DILocation(line: 31, column: 58, scope: !5877)
!5883 = !DILocation(line: 33, column: 20, scope: !5877)
!5884 = !DILocation(line: 33, column: 9, scope: !5877)
!5885 = !DILocation(line: 33, column: 2, scope: !5877)
!5886 = distinct !DISubprogram(name: "xenmem_reservation_va_mapping_reset", scope: !5677, file: !5677, line: 47, type: !5887, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{null, !218, !3604}
!5889 = !DILocalVariable(name: "count", arg: 1, scope: !5886, file: !5677, line: 47, type: !218)
!5890 = !DILocation(line: 47, column: 70, scope: !5886)
!5891 = !DILocalVariable(name: "pages", arg: 2, scope: !5886, file: !5677, line: 48, type: !3604)
!5892 = !DILocation(line: 48, column: 28, scope: !5886)
!5893 = !DILocation(line: 51, column: 7, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5886, file: !5677, line: 51, column: 6)
!5895 = !DILocation(line: 51, column: 6, scope: !5886)
!5896 = !DILocation(line: 52, column: 41, scope: !5894)
!5897 = !DILocation(line: 52, column: 48, scope: !5894)
!5898 = !DILocation(line: 52, column: 3, scope: !5894)
!5899 = !DILocation(line: 54, column: 1, scope: !5886)
!5900 = distinct !DISubprogram(name: "list_del", scope: !5864, file: !5864, line: 144, type: !5901, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{null, !235}
!5903 = !DILocalVariable(name: "entry", arg: 1, scope: !5900, file: !5864, line: 144, type: !235)
!5904 = !DILocation(line: 144, column: 47, scope: !5900)
!5905 = !DILocation(line: 146, column: 19, scope: !5900)
!5906 = !DILocation(line: 146, column: 2, scope: !5900)
!5907 = !DILocation(line: 147, column: 2, scope: !5900)
!5908 = !DILocation(line: 147, column: 9, scope: !5900)
!5909 = !DILocation(line: 147, column: 14, scope: !5900)
!5910 = !DILocation(line: 148, column: 2, scope: !5900)
!5911 = !DILocation(line: 148, column: 9, scope: !5900)
!5912 = !DILocation(line: 148, column: 14, scope: !5900)
!5913 = !DILocation(line: 149, column: 1, scope: !5900)
!5914 = distinct !DISubprogram(name: "alloc_pages_node", scope: !5842, file: !5842, line: 532, type: !5915, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!219, !354, !2042, !7}
!5917 = !DILocalVariable(name: "nid", arg: 1, scope: !5914, file: !5842, line: 532, type: !354)
!5918 = !DILocation(line: 532, column: 49, scope: !5914)
!5919 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5914, file: !5842, line: 532, type: !2042)
!5920 = !DILocation(line: 532, column: 60, scope: !5914)
!5921 = !DILocalVariable(name: "order", arg: 3, scope: !5914, file: !5842, line: 533, type: !7)
!5922 = !DILocation(line: 533, column: 20, scope: !5914)
!5923 = !DILocation(line: 535, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5914, file: !5842, line: 535, column: 6)
!5925 = !DILocation(line: 535, column: 10, scope: !5924)
!5926 = !DILocation(line: 535, column: 6, scope: !5914)
!5927 = !DILocation(line: 536, column: 9, scope: !5924)
!5928 = !DILocation(line: 536, column: 7, scope: !5924)
!5929 = !DILocation(line: 536, column: 3, scope: !5924)
!5930 = !DILocation(line: 538, column: 28, scope: !5914)
!5931 = !DILocation(line: 538, column: 33, scope: !5914)
!5932 = !DILocation(line: 538, column: 43, scope: !5914)
!5933 = !DILocation(line: 538, column: 9, scope: !5914)
!5934 = !DILocation(line: 538, column: 2, scope: !5914)
!5935 = distinct !DISubprogram(name: "numa_node_id", scope: !5936, file: !5936, line: 85, type: !5206, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5936 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!5937 = !DILocation(line: 87, column: 2, scope: !5935)
!5938 = distinct !DISubprogram(name: "numa_mem_id", scope: !5939, file: !5939, line: 167, type: !5206, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5939 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/lizy2001/genbc/linux")
!5940 = !DILocation(line: 169, column: 9, scope: !5938)
!5941 = !DILocation(line: 169, column: 2, scope: !5938)
!5942 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !5842, file: !5842, line: 519, type: !5915, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5943 = !DILocalVariable(name: "nid", arg: 1, scope: !5942, file: !5842, line: 519, type: !354)
!5944 = !DILocation(line: 519, column: 24, scope: !5942)
!5945 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5942, file: !5842, line: 519, type: !2042)
!5946 = !DILocation(line: 519, column: 35, scope: !5942)
!5947 = !DILocalVariable(name: "order", arg: 3, scope: !5942, file: !5842, line: 519, type: !7)
!5948 = !DILocation(line: 519, column: 58, scope: !5942)
!5949 = !DILocation(line: 524, column: 23, scope: !5942)
!5950 = !DILocation(line: 524, column: 33, scope: !5942)
!5951 = !DILocation(line: 524, column: 40, scope: !5942)
!5952 = !DILocation(line: 524, column: 9, scope: !5942)
!5953 = !DILocation(line: 524, column: 2, scope: !5942)
!5954 = distinct !DISubprogram(name: "__alloc_pages", scope: !5842, file: !5842, line: 509, type: !5955, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!219, !2042, !7, !354}
!5957 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5954, file: !5842, line: 509, type: !2042)
!5958 = !DILocation(line: 509, column: 21, scope: !5954)
!5959 = !DILocalVariable(name: "order", arg: 2, scope: !5954, file: !5842, line: 509, type: !7)
!5960 = !DILocation(line: 509, column: 44, scope: !5954)
!5961 = !DILocalVariable(name: "preferred_nid", arg: 3, scope: !5954, file: !5842, line: 509, type: !354)
!5962 = !DILocation(line: 509, column: 55, scope: !5954)
!5963 = !DILocation(line: 511, column: 32, scope: !5954)
!5964 = !DILocation(line: 511, column: 42, scope: !5954)
!5965 = !DILocation(line: 511, column: 49, scope: !5954)
!5966 = !DILocation(line: 511, column: 9, scope: !5954)
!5967 = !DILocation(line: 511, column: 2, scope: !5954)
!5968 = distinct !DISubprogram(name: "clear_highpage", scope: !5969, file: !5969, line: 280, type: !4660, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5969 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/lizy2001/genbc/linux")
!5970 = !DILocalVariable(name: "page", arg: 1, scope: !5968, file: !5969, line: 280, type: !219)
!5971 = !DILocation(line: 280, column: 48, scope: !5968)
!5972 = !DILocalVariable(name: "kaddr", scope: !5968, file: !5969, line: 282, type: !464)
!5973 = !DILocation(line: 282, column: 8, scope: !5968)
!5974 = !DILocation(line: 282, column: 28, scope: !5968)
!5975 = !DILocation(line: 282, column: 16, scope: !5968)
!5976 = !DILocation(line: 283, column: 13, scope: !5968)
!5977 = !DILocation(line: 283, column: 2, scope: !5968)
!5978 = !DILocation(line: 284, column: 2, scope: !5968)
!5979 = !DILocation(line: 284, column: 2, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5968, file: !5969, line: 284, column: 2)
!5981 = !DILocation(line: 284, column: 2, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5980, file: !5969, line: 284, column: 2)
!5983 = !{i32 -2142216325}
!5984 = !DILocation(line: 285, column: 1, scope: !5968)
!5985 = distinct !DISubprogram(name: "kmap_atomic", scope: !5969, file: !5969, line: 154, type: !5986, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!464, !219}
!5988 = !DILocalVariable(name: "page", arg: 1, scope: !5989, file: !29, line: 1514, type: !5992)
!5989 = distinct !DISubprogram(name: "lowmem_page_address", scope: !29, file: !29, line: 1514, type: !5990, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!464, !5992}
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!5994 = !DILocation(line: 1514, column: 69, scope: !5989, inlinedAt: !5995)
!5995 = distinct !DILocation(line: 158, column: 9, scope: !5985)
!5996 = !DILocalVariable(name: "page", arg: 1, scope: !5985, file: !5969, line: 154, type: !219)
!5997 = !DILocation(line: 154, column: 46, scope: !5985)
!5998 = !DILocation(line: 156, column: 2, scope: !5985)
!5999 = !{i32 -2142220531}
!6000 = !DILocation(line: 157, column: 2, scope: !5985)
!6001 = !DILocation(line: 158, column: 9, scope: !5985)
!6002 = !DILocation(line: 1516, column: 9, scope: !5989, inlinedAt: !5995)
!6003 = !DILocation(line: 158, column: 2, scope: !5985)
!6004 = distinct !DISubprogram(name: "clear_page", scope: !6005, file: !6005, line: 47, type: !1997, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6005 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!6006 = !DILocalVariable(name: "page", arg: 1, scope: !6004, file: !6005, line: 47, type: !464)
!6007 = !DILocation(line: 47, column: 37, scope: !6004)
!6008 = !DILocation(line: 49, column: 2, scope: !6004)
!6009 = !{i32 -2145679715, i32 -2145679682, i32 -2145679676, i32 -2145679660, i32 -2145679641, i32 -2145679610, i32 -2145678651, i32 -2145680114, i32 -2145678645, i32 -2145678597, i32 -2145678533, i32 -2145678471, i32 -2145678414, i32 -2145678358, i32 -2145678124, i32 -2145678076, i32 -2145678012, i32 -2145677950, i32 -2145677893, i32 -2145677837, i32 -2145679998, i32 -2145679973, i32 -2145677603, i32 -2145677474, i32 -2145677542, i32 -2145677460, i32 -2145677446, i32 -2145677317, i32 -2145677385, i32 -2145677303, i32 -2145679821}
!6010 = !DILocation(line: 55, column: 1, scope: !6004)
!6011 = distinct !DISubprogram(name: "kunmap_atomic_high", scope: !5969, file: !5969, line: 162, type: !1997, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6012 = !DILocalVariable(name: "addr", arg: 1, scope: !6011, file: !5969, line: 162, type: !464)
!6013 = !DILocation(line: 162, column: 45, scope: !6011)
!6014 = !DILocation(line: 171, column: 1, scope: !6011)
!6015 = distinct !DISubprogram(name: "pagefault_enable", scope: !6016, file: !6016, line: 254, type: !1755, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6016 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!6017 = !DILocalVariable(name: "pscr_ret__", scope: !6018, file: !6019, line: 15, type: !901)
!6018 = distinct !DILexicalBlock(scope: !6020, file: !6019, line: 15, column: 9)
!6019 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!6020 = distinct !DISubprogram(name: "get_current", scope: !6019, file: !6019, line: 13, type: !6021, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!901}
!6023 = !DILocation(line: 15, column: 9, scope: !6018, inlinedAt: !6024)
!6024 = distinct !DILocation(line: 234, column: 2, scope: !6025, inlinedAt: !6026)
!6025 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !6016, file: !6016, line: 232, type: !1755, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6026 = distinct !DILocation(line: 261, column: 2, scope: !6015)
!6027 = !DILocalVariable(name: "__vpp_verify", scope: !6028, file: !6019, line: 15, type: !1987)
!6028 = distinct !DILexicalBlock(scope: !6018, file: !6019, line: 15, column: 9)
!6029 = !DILocation(line: 15, column: 9, scope: !6028, inlinedAt: !6024)
!6030 = !DILocalVariable(name: "pfo_val__", scope: !6031, file: !6019, line: 15, type: !315)
!6031 = distinct !DILexicalBlock(scope: !6018, file: !6019, line: 15, column: 9)
!6032 = !DILocation(line: 15, column: 9, scope: !6031, inlinedAt: !6024)
!6033 = !DILocation(line: 260, column: 2, scope: !6015)
!6034 = !{i32 -2143302428}
!6035 = !{i32 -2146796598}
!6036 = !DILocation(line: 234, column: 11, scope: !6025, inlinedAt: !6026)
!6037 = !DILocation(line: 234, column: 29, scope: !6025, inlinedAt: !6026)
!6038 = !DILocation(line: 262, column: 1, scope: !6015)
!6039 = distinct !DISubprogram(name: "pagefault_disable", scope: !6016, file: !6016, line: 244, type: !1755, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6040 = !DILocation(line: 15, column: 9, scope: !6018, inlinedAt: !6041)
!6041 = distinct !DILocation(line: 229, column: 2, scope: !6042, inlinedAt: !6043)
!6042 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !6016, file: !6016, line: 227, type: !1755, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6043 = distinct !DILocation(line: 246, column: 2, scope: !6039)
!6044 = !DILocation(line: 15, column: 9, scope: !6028, inlinedAt: !6041)
!6045 = !DILocation(line: 15, column: 9, scope: !6031, inlinedAt: !6041)
!6046 = !DILocation(line: 229, column: 11, scope: !6042, inlinedAt: !6043)
!6047 = !DILocation(line: 229, column: 29, scope: !6042, inlinedAt: !6043)
!6048 = !DILocation(line: 251, column: 2, scope: !6039)
!6049 = !{i32 -2143302631}
!6050 = !DILocation(line: 252, column: 1, scope: !6039)
!6051 = distinct !DISubprogram(name: "__list_add", scope: !5864, file: !5864, line: 63, type: !6052, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !235, !235, !235}
!6054 = !DILocalVariable(name: "new", arg: 1, scope: !6051, file: !5864, line: 63, type: !235)
!6055 = !DILocation(line: 63, column: 49, scope: !6051)
!6056 = !DILocalVariable(name: "prev", arg: 2, scope: !6051, file: !5864, line: 64, type: !235)
!6057 = !DILocation(line: 64, column: 28, scope: !6051)
!6058 = !DILocalVariable(name: "next", arg: 3, scope: !6051, file: !5864, line: 65, type: !235)
!6059 = !DILocation(line: 65, column: 28, scope: !6051)
!6060 = !DILocation(line: 67, column: 24, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6051, file: !5864, line: 67, column: 6)
!6062 = !DILocation(line: 67, column: 29, scope: !6061)
!6063 = !DILocation(line: 67, column: 35, scope: !6061)
!6064 = !DILocation(line: 67, column: 7, scope: !6061)
!6065 = !DILocation(line: 67, column: 6, scope: !6051)
!6066 = !DILocation(line: 68, column: 3, scope: !6061)
!6067 = !DILocation(line: 70, column: 15, scope: !6051)
!6068 = !DILocation(line: 70, column: 2, scope: !6051)
!6069 = !DILocation(line: 70, column: 8, scope: !6051)
!6070 = !DILocation(line: 70, column: 13, scope: !6051)
!6071 = !DILocation(line: 71, column: 14, scope: !6051)
!6072 = !DILocation(line: 71, column: 2, scope: !6051)
!6073 = !DILocation(line: 71, column: 7, scope: !6051)
!6074 = !DILocation(line: 71, column: 12, scope: !6051)
!6075 = !DILocation(line: 72, column: 14, scope: !6051)
!6076 = !DILocation(line: 72, column: 2, scope: !6051)
!6077 = !DILocation(line: 72, column: 7, scope: !6051)
!6078 = !DILocation(line: 72, column: 12, scope: !6051)
!6079 = !DILocation(line: 73, column: 2, scope: !6051)
!6080 = !DILocation(line: 73, column: 2, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6051, file: !5864, line: 73, column: 2)
!6082 = !DILocation(line: 73, column: 2, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6081, file: !5864, line: 73, column: 2)
!6084 = !DILocation(line: 73, column: 2, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6081, file: !5864, line: 73, column: 2)
!6086 = !DILocation(line: 74, column: 1, scope: !6051)
!6087 = distinct !DISubprogram(name: "__list_add_valid", scope: !5864, file: !5864, line: 45, type: !6088, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!421, !235, !235, !235}
!6090 = !DILocalVariable(name: "new", arg: 1, scope: !6087, file: !5864, line: 45, type: !235)
!6091 = !DILocation(line: 45, column: 55, scope: !6087)
!6092 = !DILocalVariable(name: "prev", arg: 2, scope: !6087, file: !5864, line: 46, type: !235)
!6093 = !DILocation(line: 46, column: 23, scope: !6087)
!6094 = !DILocalVariable(name: "next", arg: 3, scope: !6087, file: !5864, line: 47, type: !235)
!6095 = !DILocation(line: 47, column: 23, scope: !6087)
!6096 = !DILocation(line: 49, column: 2, scope: !6087)
!6097 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !6098, file: !6098, line: 251, type: !6099, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6098 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!218, !218}
!6101 = !DILocalVariable(name: "pfn", arg: 1, scope: !6097, file: !6098, line: 251, type: !218)
!6102 = !DILocation(line: 251, column: 54, scope: !6097)
!6103 = !DILocation(line: 253, column: 6, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6097, file: !6098, line: 253, column: 6)
!6105 = !DILocation(line: 253, column: 6, scope: !6097)
!6106 = !DILocation(line: 254, column: 10, scope: !6104)
!6107 = !DILocation(line: 254, column: 3, scope: !6104)
!6108 = !DILocation(line: 256, column: 21, scope: !6104)
!6109 = !DILocation(line: 256, column: 10, scope: !6104)
!6110 = !DILocation(line: 256, column: 3, scope: !6104)
!6111 = !DILocation(line: 257, column: 1, scope: !6097)
!6112 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !6098, file: !6098, line: 164, type: !6099, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6113 = !DILocalVariable(name: "pfn", arg: 1, scope: !6112, file: !6098, line: 164, type: !218)
!6114 = !DILocation(line: 164, column: 54, scope: !6112)
!6115 = !DILocalVariable(name: "mfn", scope: !6112, file: !6098, line: 166, type: !218)
!6116 = !DILocation(line: 166, column: 16, scope: !6112)
!6117 = !DILocation(line: 173, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6112, file: !6098, line: 173, column: 6)
!6119 = !DILocation(line: 173, column: 6, scope: !6112)
!6120 = !DILocation(line: 174, column: 10, scope: !6118)
!6121 = !DILocation(line: 174, column: 3, scope: !6118)
!6122 = !DILocation(line: 176, column: 21, scope: !6112)
!6123 = !DILocation(line: 176, column: 8, scope: !6112)
!6124 = !DILocation(line: 176, column: 6, scope: !6112)
!6125 = !DILocation(line: 178, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6112, file: !6098, line: 178, column: 6)
!6127 = !DILocation(line: 178, column: 10, scope: !6126)
!6128 = !DILocation(line: 178, column: 6, scope: !6112)
!6129 = !DILocation(line: 179, column: 7, scope: !6126)
!6130 = !DILocation(line: 179, column: 3, scope: !6126)
!6131 = !DILocation(line: 181, column: 9, scope: !6112)
!6132 = !DILocation(line: 181, column: 2, scope: !6112)
!6133 = !DILocation(line: 182, column: 1, scope: !6112)
!6134 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !6098, file: !6098, line: 141, type: !6099, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6135 = !DILocalVariable(name: "pfn", arg: 1, scope: !6134, file: !6098, line: 141, type: !218)
!6136 = !DILocation(line: 141, column: 56, scope: !6134)
!6137 = !DILocalVariable(name: "mfn", scope: !6134, file: !6098, line: 143, type: !218)
!6138 = !DILocation(line: 143, column: 16, scope: !6134)
!6139 = !DILocation(line: 145, column: 6, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6134, file: !6098, line: 145, column: 6)
!6141 = !DILocation(line: 145, column: 12, scope: !6140)
!6142 = !DILocation(line: 145, column: 10, scope: !6140)
!6143 = !DILocation(line: 145, column: 6, scope: !6134)
!6144 = !DILocation(line: 146, column: 9, scope: !6140)
!6145 = !DILocation(line: 146, column: 22, scope: !6140)
!6146 = !DILocation(line: 146, column: 7, scope: !6140)
!6147 = !DILocation(line: 146, column: 3, scope: !6140)
!6148 = !DILocation(line: 147, column: 11, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6140, file: !6098, line: 147, column: 11)
!6150 = !DILocation(line: 147, column: 11, scope: !6140)
!6151 = !DILocation(line: 148, column: 30, scope: !6149)
!6152 = !DILocation(line: 148, column: 10, scope: !6149)
!6153 = !DILocation(line: 148, column: 3, scope: !6149)
!6154 = !DILocation(line: 150, column: 10, scope: !6149)
!6155 = !DILocation(line: 150, column: 3, scope: !6149)
!6156 = !DILocation(line: 152, column: 6, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6134, file: !6098, line: 152, column: 6)
!6158 = !DILocation(line: 152, column: 6, scope: !6134)
!6159 = !DILocation(line: 153, column: 30, scope: !6157)
!6160 = !DILocation(line: 153, column: 10, scope: !6157)
!6161 = !DILocation(line: 153, column: 3, scope: !6157)
!6162 = !DILocation(line: 155, column: 9, scope: !6134)
!6163 = !DILocation(line: 155, column: 2, scope: !6134)
!6164 = !DILocation(line: 156, column: 1, scope: !6134)
!6165 = distinct !DISubprogram(name: "__list_del_entry", scope: !5864, file: !5864, line: 130, type: !5901, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6166 = !DILocalVariable(name: "entry", arg: 1, scope: !6165, file: !5864, line: 130, type: !235)
!6167 = !DILocation(line: 130, column: 55, scope: !6165)
!6168 = !DILocation(line: 132, column: 30, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6165, file: !5864, line: 132, column: 6)
!6170 = !DILocation(line: 132, column: 7, scope: !6169)
!6171 = !DILocation(line: 132, column: 6, scope: !6165)
!6172 = !DILocation(line: 133, column: 3, scope: !6169)
!6173 = !DILocation(line: 135, column: 13, scope: !6165)
!6174 = !DILocation(line: 135, column: 20, scope: !6165)
!6175 = !DILocation(line: 135, column: 26, scope: !6165)
!6176 = !DILocation(line: 135, column: 33, scope: !6165)
!6177 = !DILocation(line: 135, column: 2, scope: !6165)
!6178 = !DILocation(line: 136, column: 1, scope: !6165)
!6179 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5864, file: !5864, line: 51, type: !6180, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6180 = !DISubroutineType(types: !6181)
!6181 = !{!421, !235}
!6182 = !DILocalVariable(name: "entry", arg: 1, scope: !6179, file: !5864, line: 51, type: !235)
!6183 = !DILocation(line: 51, column: 61, scope: !6179)
!6184 = !DILocation(line: 53, column: 2, scope: !6179)
!6185 = distinct !DISubprogram(name: "__list_del", scope: !5864, file: !5864, line: 110, type: !5865, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6186 = !DILocalVariable(name: "prev", arg: 1, scope: !6185, file: !5864, line: 110, type: !235)
!6187 = !DILocation(line: 110, column: 50, scope: !6185)
!6188 = !DILocalVariable(name: "next", arg: 2, scope: !6185, file: !5864, line: 110, type: !235)
!6189 = !DILocation(line: 110, column: 75, scope: !6185)
!6190 = !DILocation(line: 112, column: 15, scope: !6185)
!6191 = !DILocation(line: 112, column: 2, scope: !6185)
!6192 = !DILocation(line: 112, column: 8, scope: !6185)
!6193 = !DILocation(line: 112, column: 13, scope: !6185)
!6194 = !DILocation(line: 113, column: 2, scope: !6185)
!6195 = !DILocation(line: 113, column: 2, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6185, file: !5864, line: 113, column: 2)
!6197 = !DILocation(line: 113, column: 2, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6196, file: !5864, line: 113, column: 2)
!6199 = !DILocation(line: 113, column: 2, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6196, file: !5864, line: 113, column: 2)
!6201 = !DILocation(line: 114, column: 1, scope: !6185)
!6202 = distinct !DISubprogram(name: "list_empty", scope: !5864, file: !5864, line: 280, type: !6203, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!354, !6205}
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6206, size: 64)
!6206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!6207 = !DILocalVariable(name: "head", arg: 1, scope: !6202, file: !5864, line: 280, type: !6205)
!6208 = !DILocation(line: 280, column: 54, scope: !6202)
!6209 = !DILocation(line: 282, column: 9, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6202, file: !5864, line: 282, column: 9)
!6211 = !DILocation(line: 282, column: 9, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6210, file: !5864, line: 282, column: 9)
!6213 = !DILocation(line: 282, column: 34, scope: !6202)
!6214 = !DILocation(line: 282, column: 31, scope: !6202)
!6215 = !DILocation(line: 282, column: 2, scope: !6202)
!6216 = distinct !DISubprogram(name: "PageHighMem", scope: !173, file: !173, line: 393, type: !6217, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!354, !5992}
!6219 = !DILocalVariable(name: "page", arg: 1, scope: !6216, file: !173, line: 393, type: !5992)
!6220 = !DILocation(line: 393, column: 1, scope: !6216)
!6221 = distinct !DISubprogram(name: "list_add_tail", scope: !5864, file: !5864, line: 98, type: !5865, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6222 = !DILocalVariable(name: "new", arg: 1, scope: !6221, file: !5864, line: 98, type: !235)
!6223 = !DILocation(line: 98, column: 52, scope: !6221)
!6224 = !DILocalVariable(name: "head", arg: 2, scope: !6221, file: !5864, line: 98, type: !235)
!6225 = !DILocation(line: 98, column: 75, scope: !6221)
!6226 = !DILocation(line: 100, column: 13, scope: !6221)
!6227 = !DILocation(line: 100, column: 18, scope: !6221)
!6228 = !DILocation(line: 100, column: 24, scope: !6221)
!6229 = !DILocation(line: 100, column: 30, scope: !6221)
!6230 = !DILocation(line: 100, column: 2, scope: !6221)
!6231 = !DILocation(line: 101, column: 1, scope: !6221)
!6232 = distinct !DISubprogram(name: "get_num_physpages", scope: !29, file: !29, line: 2391, type: !6233, scopeLine: 2392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6233 = !DISubroutineType(types: !6234)
!6234 = !{!218}
!6235 = !DILocalVariable(name: "nid", scope: !6232, file: !29, line: 2393, type: !354)
!6236 = !DILocation(line: 2393, column: 6, scope: !6232)
!6237 = !DILocalVariable(name: "phys_pages", scope: !6232, file: !29, line: 2394, type: !218)
!6238 = !DILocation(line: 2394, column: 16, scope: !6232)
!6239 = !DILocation(line: 2396, column: 2, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6232, file: !29, line: 2396, column: 2)
!6241 = !DILocation(line: 2396, column: 2, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6240, file: !29, line: 2396, column: 2)
!6243 = !DILocation(line: 2397, column: 17, scope: !6242)
!6244 = !DILocation(line: 2397, column: 14, scope: !6242)
!6245 = !DILocation(line: 2397, column: 3, scope: !6242)
!6246 = distinct !{!6246, !6239, !6247}
!6247 = !DILocation(line: 2397, column: 17, scope: !6240)
!6248 = !DILocation(line: 2399, column: 9, scope: !6232)
!6249 = !DILocation(line: 2399, column: 2, scope: !6232)
!6250 = distinct !DISubprogram(name: "balloon_add_region", scope: !3, file: !3, line: 657, type: !6251, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{null, !218, !218}
!6253 = !DILocalVariable(name: "start_pfn", arg: 1, scope: !6250, file: !3, line: 657, type: !218)
!6254 = !DILocation(line: 657, column: 53, scope: !6250)
!6255 = !DILocalVariable(name: "pages", arg: 2, scope: !6250, file: !3, line: 658, type: !218)
!6256 = !DILocation(line: 658, column: 25, scope: !6250)
!6257 = !DILocalVariable(name: "pfn", scope: !6250, file: !3, line: 660, type: !218)
!6258 = !DILocation(line: 660, column: 16, scope: !6250)
!6259 = !DILocalVariable(name: "extra_pfn_end", scope: !6250, file: !3, line: 660, type: !218)
!6260 = !DILocation(line: 660, column: 21, scope: !6250)
!6261 = !DILocalVariable(name: "__UNIQUE_ID___x306", scope: !6262, file: !3, line: 667, type: !218)
!6262 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 667, column: 18)
!6263 = !DILocation(line: 667, column: 18, scope: !6262)
!6264 = !DILocalVariable(name: "__UNIQUE_ID___y307", scope: !6262, file: !3, line: 667, type: !218)
!6265 = !DILocation(line: 667, column: 16, scope: !6250)
!6266 = !DILocation(line: 669, column: 13, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 669, column: 2)
!6268 = !DILocation(line: 669, column: 11, scope: !6267)
!6269 = !DILocation(line: 669, column: 7, scope: !6267)
!6270 = !DILocation(line: 669, column: 24, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 669, column: 2)
!6272 = !DILocation(line: 669, column: 30, scope: !6271)
!6273 = !DILocation(line: 669, column: 28, scope: !6271)
!6274 = !DILocation(line: 669, column: 2, scope: !6267)
!6275 = !DILocation(line: 673, column: 18, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 669, column: 52)
!6277 = !DILocation(line: 673, column: 3, scope: !6276)
!6278 = !DILocation(line: 674, column: 2, scope: !6276)
!6279 = !DILocation(line: 669, column: 48, scope: !6271)
!6280 = !DILocation(line: 669, column: 2, scope: !6271)
!6281 = distinct !{!6281, !6274, !6282}
!6282 = !DILocation(line: 674, column: 2, scope: !6267)
!6283 = !DILocation(line: 676, column: 31, scope: !6250)
!6284 = !DILocation(line: 676, column: 47, scope: !6250)
!6285 = !DILocation(line: 676, column: 45, scope: !6250)
!6286 = !DILocation(line: 676, column: 28, scope: !6250)
!6287 = !DILocation(line: 677, column: 1, scope: !6250)
