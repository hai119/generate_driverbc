; ModuleID = '../bcout/drivers/usb/storage/scsiglue.llvm.bc'
source_filename = "drivers/usb/storage/scsiglue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.scsi_host_template = type { %struct.module*, i8*, i8* (%struct.Scsi_Host*)*, i32 (%struct.scsi_device*, i32, i8*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, void (%struct.Scsi_Host*, i16)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)*, void (%struct.scsi_device*)*, i32 (%struct.scsi_target*)*, void (%struct.scsi_target*)*, i32 (%struct.Scsi_Host*, i64)*, void (%struct.Scsi_Host*)*, i32 (%struct.scsi_device*, i32)*, i32 (%struct.Scsi_Host*)*, i1 (%struct.request*)*, i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)*, void (%struct.scsi_device*)*, i32 (%struct.seq_file*, %struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*, i8*, i32)*, i32 (%struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, i32)*, i8*, %struct.proc_dir_entry*, i32, i32, i16, i16, i32, i32, i64, i64, i16, i8, i32, i8, i32, %struct.device_attribute**, %struct.device_attribute**, %struct.attribute_group**, i64, i32, %struct.scsi_host_cmd_pool*, i32 }
%struct.module = type opaque
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock*, %struct.mutex, %struct.list_head, %struct.task_struct*, %struct.completion*, %struct.wait_queue_head, %struct.scsi_host_template*, %struct.scsi_transport_template*, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i64, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i64, i64, i32, i16, [20 x i8], %struct.workqueue_struct*, %struct.workqueue_struct*, i32, i32, i8, i64, i64, i8, i8, i32, i32, %struct.device, %struct.device, i8*, %struct.device*, [0 x i64] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.seqcount = type { i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
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
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i8, %struct.hd_struct*, i32, %struct.spinlock, %struct.gendisk*, %struct.backing_dev_info*, i32, %struct.mutex }
%struct.hd_struct = type { i64, i64, i64, %struct.disk_stats*, %struct.percpu_ref, %struct.device, %struct.kobject*, i32, i32, %struct.partition_meta_info*, %struct.rcu_work }
%struct.disk_stats = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.31, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.31 = type { %struct.bio_integrity_payload* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.67, %union.anon.68, %union.anon.69, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.72, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.66, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct] }
%struct.anon.66 = type { %struct.spinlock, %struct.list_head, i64 }
%struct.sbitmap = type { i32, i32, i32, %struct.sbitmap_word* }
%struct.sbitmap_word = type { i64, i64, i64, %struct.spinlock }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type opaque
%struct.srcu_struct = type { [2 x i16], i16, i8, i8, %struct.swait_queue_head, %struct.callback_head*, %struct.callback_head**, %struct.work_struct }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%union.anon.68 = type { %struct.rb_node }
%union.anon.69 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.72 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.73, void (i8*)*, i8* }
%union.anon.73 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.74, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.74 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*)*, void (%struct.request_queue*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type opaque
%struct.blk_integrity = type { %struct.blk_integrity_profile*, i8, i8, i8, i8 }
%struct.blk_integrity_profile = type { i8 (%struct.blk_integrity_iter*)*, i8 (%struct.blk_integrity_iter*)*, void (%struct.request*)*, void (%struct.request*, i32)*, i8* }
%struct.blk_integrity_iter = type { i8*, i8*, i64, i32, i16, i8* }
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.queue_limits = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.bsg_class_device = type { %struct.device*, i32, %struct.request_queue*, %struct.bsg_ops* }
%struct.bsg_ops = type { i32 (%struct.sg_io_v4*)*, i32 (%struct.request*, %struct.sg_io_v4*, i32)*, i32 (%struct.request*, %struct.sg_io_v4*)*, void (%struct.request*)* }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
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
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.53 = type { %struct.atomic_t }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
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
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { i64 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.scsi_transport_template = type opaque
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32*, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i8, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.workqueue_struct = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.scsi_device = type { %struct.Scsi_Host*, %struct.request_queue*, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i32, i32, i64, i32, i32, i8*, i8, i8, i8, %struct.mutex, i8, i8*, i8*, i8*, i8*, %struct.scsi_vpd*, %struct.scsi_vpd*, %struct.scsi_vpd*, %struct.scsi_vpd*, i8, %struct.scsi_target*, i64, i32, [6 x i8], i8, %struct.atomic_t, [1 x i64], [1 x i64], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, %struct.scsi_device_handler*, i8*, i64, i8*, i8, %struct.mutex, i32, %struct.task_struct*, [0 x i64] }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_target = type { %struct.scsi_device*, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, i8*, [0 x i64] }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_device_handler = type opaque
%struct.scsi_cmnd = type { %struct.scsi_request, %struct.scsi_device*, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i64, i32, i32, i8, i8, i8, i16, i32, i8*, %struct.scsi_data_buffer, %struct.scsi_data_buffer*, i32, i32, %struct.request*, i8*, void (%struct.scsi_cmnd*)*, %struct.scsi_pointer, i8*, i32, i32, i64, i8, i32 }
%struct.scsi_request = type { [16 x i8], i8*, i16, i32, i32, i32, i32, i8* }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.scsi_pointer = type { i8*, i32, %struct.scatterlist*, i32, i64, i32, i32, i32, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.scsi_host_cmd_pool = type opaque
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
%struct.us_data = type { %struct.mutex, %struct.usb_device*, %struct.usb_interface*, %struct.us_unusual_dev*, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i8, i8, i8, i8, i8, i32 (%struct.scsi_cmnd*, %struct.us_data*)*, i32 (%struct.us_data*)*, void (%struct.scsi_cmnd*, %struct.us_data*)*, %struct.scsi_cmnd*, i32, [32 x i8], %struct.urb*, %struct.usb_ctrlrequest*, %struct.usb_sg_request, i8*, i64, %struct.task_struct*, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, i8*, void (i8*)*, void (%struct.us_data*, i32)*, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.us_unusual_dev = type { i8*, i8*, i8, i8, i32 (%struct.us_data*)* }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_sg_request = type { i32, i64, %struct.spinlock, %struct.usb_device*, i32, i32, %struct.urb**, i32, %struct.completion }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.76, i64 }
%union.anon.76 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque

@usb_stor_host_template = internal constant %struct.scsi_host_template { %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* (%struct.Scsi_Host*)* @host_info, i32 (%struct.scsi_device*, i32, i8*)* null, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* null, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* null, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @queuecommand, void (%struct.Scsi_Host*, i16)* null, i32 (%struct.scsi_cmnd*)* @command_abort, i32 (%struct.scsi_cmnd*)* @device_reset, i32 (%struct.scsi_cmnd*)* null, i32 (%struct.scsi_cmnd*)* @bus_reset, i32 (%struct.scsi_cmnd*)* null, i32 (%struct.scsi_device*)* @slave_alloc, i32 (%struct.scsi_device*)* @slave_configure, void (%struct.scsi_device*)* null, i32 (%struct.scsi_target*)* @target_alloc, void (%struct.scsi_target*)* null, i32 (%struct.Scsi_Host*, i64)* null, void (%struct.Scsi_Host*)* null, i32 (%struct.scsi_device*, i32)* null, i32 (%struct.Scsi_Host*)* null, i1 (%struct.request*)* null, i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)* null, void (%struct.scsi_device*)* null, i32 (%struct.seq_file*, %struct.Scsi_Host*)* @show_info, i32 (%struct.Scsi_Host*, i8*, i32)* @write_info, i32 (%struct.scsi_cmnd*)* null, i32 (%struct.Scsi_Host*, i32)* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.proc_dir_entry* null, i32 1, i32 -1, i16 2048, i16 0, i32 240, i32 0, i64 0, i64 0, i16 0, i8 0, i32 0, i8 48, i32 0, %struct.device_attribute** null, %struct.device_attribute** getelementptr inbounds ([2 x %struct.device_attribute*], [2 x %struct.device_attribute*]* @sysfs_device_attr_list, i32 0, i32 0), %struct.attribute_group** null, i64 0, i32 0, %struct.scsi_host_cmd_pool* null, i32 0 }, align 8, !dbg !0
@usb_stor_sense_invalidCDB = dso_local global [18 x i8] c"p\00\05\00\00\00\00\0A\00\00\00\00$\00\00\00\00\00", align 16, !dbg !5948
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str = private unnamed_addr constant [12 x i8] c"usb-storage\00", align 1
@sysfs_device_attr_list = internal global [2 x %struct.device_attribute*] [%struct.device_attribute* @dev_attr_max_sectors, %struct.device_attribute* null], align 16, !dbg !5953
@.str.1 = private unnamed_addr constant [27 x i8] c"Error in %s: us->srb = %p\0A\00", align 1
@__func__.queuecommand_lck = private unnamed_addr constant [17 x i8] c"queuecommand_lck\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"   Host scsi%d: usb-storage\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"       Vendor: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"      Product: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Serial Number: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"     Protocol: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    Transport: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"       Quirks:\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" SINGLE_LUN\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" NEED_OVERRIDE\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" SCM_MULT_TARG\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" FIX_INQUIRY\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c" FIX_CAPACITY\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c" IGNORE_RESIDUE\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" BULK32\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c" NOT_LOCKABLE\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" GO_SLOW\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c" NO_WP_DETECT\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c" MAX_SECTORS_64\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c" IGNORE_DEVICE\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" CAPACITY_HEURISTICS\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" MAX_SECTORS_MIN\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c" BULK_IGNORE_TAG\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" SANE_SENSE\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c" CAPACITY_OK\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c" BAD_SENSE\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c" NO_READ_DISC_INFO\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c" NO_READ_CAPACITY_16\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c" INITIAL_READ10\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c" WRITE_CACHE\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" NEEDS_CAP16\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" IGNORE_UAS\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" BROKEN_FUA\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c" NO_ATA_1X\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c" NO_REPORT_OPCODES\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c" MAX_SECTORS_240\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c" NO_REPORT_LUNS\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c" ALWAYS_SYNC\00", align 1
@dev_attr_max_sectors = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_sectors_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_sectors_store }, align 8, !dbg !5956
@.str.41 = private unnamed_addr constant [12 x i8] c"max_sectors\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_stor_report_device_reset(%struct.us_data* %us) #0 !dbg !5965 {
entry:
  %us.addr = alloca %struct.us_data*, align 8
  %i = alloca i32, align 4
  %host = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5974
  %call = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %0) #8, !dbg !5975
  store %struct.Scsi_Host* %call, %struct.Scsi_Host** %host, align 8, !dbg !5973
  %1 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !5976
  call void @scsi_report_device_reset(%struct.Scsi_Host* %1, i32 0, i32 0) #8, !dbg !5977
  %2 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !5978
  %fflags = getelementptr inbounds %struct.us_data, %struct.us_data* %2, i32 0, i32 4, !dbg !5980
  %3 = load i64, i64* %fflags, align 8, !dbg !5980
  %and = and i64 %3, 4, !dbg !5981
  %tobool = icmp ne i64 %and, 0, !dbg !5981
  br i1 %tobool, label %if.then, label %if.end, !dbg !5982

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4, !dbg !5983
  br label %for.cond, !dbg !5986

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !5987
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !5989
  %max_id = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 20, !dbg !5990
  %6 = load i32, i32* %max_id, align 4, !dbg !5990
  %cmp = icmp ult i32 %4, %6, !dbg !5991
  br i1 %cmp, label %for.body, label %for.end, !dbg !5992

for.body:                                         ; preds = %for.cond
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !5993
  %8 = load i32, i32* %i, align 4, !dbg !5994
  call void @scsi_report_device_reset(%struct.Scsi_Host* %7, i32 0, i32 %8) #8, !dbg !5995
  br label %for.inc, !dbg !5995

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5996
  %inc = add i32 %9, 1, !dbg !5996
  store i32 %inc, i32* %i, align 4, !dbg !5996
  br label %for.cond, !dbg !5997, !llvm.loop !5998

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !6000

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !6001
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.Scsi_Host* @us_to_host(%struct.us_data* %us) #0 !dbg !6002 {
entry:
  %us.addr = alloca %struct.us_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6007, metadata !DIExpression()), !dbg !6009
  %0 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6009
  %1 = bitcast %struct.us_data* %0 to i8*, !dbg !6009
  store i8* %1, i8** %__mptr, align 8, !dbg !6009
  br label %do.body, !dbg !6009

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6010

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6009
  %add.ptr = getelementptr i8, i8* %2, i64 -2032, !dbg !6009
  %3 = bitcast i8* %add.ptr to %struct.Scsi_Host*, !dbg !6009
  store %struct.Scsi_Host* %3, %struct.Scsi_Host** %tmp, align 8, !dbg !6010
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %tmp, align 8, !dbg !6009
  ret %struct.Scsi_Host* %4, !dbg !6012
}

; Function Attrs: noredzone
declare dso_local void @scsi_report_device_reset(%struct.Scsi_Host*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_stor_report_bus_reset(%struct.us_data* %us) #0 !dbg !6013 {
entry:
  %lock.addr.i2 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i2, metadata !6014, metadata !DIExpression()), !dbg !6019
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6021, metadata !DIExpression()), !dbg !6023
  %us.addr = alloca %struct.us_data*, align 8
  %host = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %us, %struct.us_data** %us.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.us_data** %us.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host, metadata !6027, metadata !DIExpression()), !dbg !6028
  %0 = load %struct.us_data*, %struct.us_data** %us.addr, align 8, !dbg !6029
  %call = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %0) #8, !dbg !6030
  store %struct.Scsi_Host* %call, %struct.Scsi_Host** %host, align 8, !dbg !6028
  %1 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6031
  %host_lock = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %1, i32 0, i32 4, !dbg !6031
  %2 = load %struct.spinlock*, %struct.spinlock** %host_lock, align 8, !dbg !6031
  store %struct.spinlock* %2, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #9, !dbg !6032
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6035, !srcloc !6037
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6038
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !6038
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !6038
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6040
  call void @scsi_report_bus_reset(%struct.Scsi_Host* %5, i32 0) #8, !dbg !6041
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6042
  %host_lock1 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 4, !dbg !6042
  %7 = load %struct.spinlock*, %struct.spinlock** %host_lock1, align 8, !dbg !6042
  store %struct.spinlock* %7, %struct.spinlock** %lock.addr.i2, align 8
  call void @arch_local_irq_enable() #9, !dbg !6043
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6046, !srcloc !6048
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i2, align 8, !dbg !6049
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !6049
  %rlock.i3 = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !6049
  ret void, !dbg !6051
}

; Function Attrs: noredzone
declare dso_local void @scsi_report_bus_reset(%struct.Scsi_Host*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_stor_host_template_init(%struct.scsi_host_template* %sht, i8* %name, %struct.module* %owner) #0 !dbg !6052 {
entry:
  %sht.addr = alloca %struct.scsi_host_template*, align 8
  %name.addr = alloca i8*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.scsi_host_template* %sht, %struct.scsi_host_template** %sht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_host_template** %sht.addr, metadata !6055, metadata !DIExpression()), !dbg !6056
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  %0 = load %struct.scsi_host_template*, %struct.scsi_host_template** %sht.addr, align 8, !dbg !6061
  %1 = bitcast %struct.scsi_host_template* %0 to i8*, !dbg !6062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.scsi_host_template* @usb_stor_host_template to i8*), i64 360, i1 false), !dbg !6062
  %2 = load i8*, i8** %name.addr, align 8, !dbg !6063
  %3 = load %struct.scsi_host_template*, %struct.scsi_host_template** %sht.addr, align 8, !dbg !6064
  %name1 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %3, i32 0, i32 1, !dbg !6065
  store i8* %2, i8** %name1, align 8, !dbg !6066
  %4 = load i8*, i8** %name.addr, align 8, !dbg !6067
  %5 = load %struct.scsi_host_template*, %struct.scsi_host_template** %sht.addr, align 8, !dbg !6068
  %proc_name = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %5, i32 0, i32 29, !dbg !6069
  store i8* %4, i8** %proc_name, align 8, !dbg !6070
  %6 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !6071
  %7 = load %struct.scsi_host_template*, %struct.scsi_host_template** %sht.addr, align 8, !dbg !6072
  %module = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %7, i32 0, i32 0, !dbg !6073
  store %struct.module* %6, %struct.module** %module, align 8, !dbg !6074
  ret void, !dbg !6075
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6076 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6078, metadata !DIExpression()), !dbg !6080
  %0 = load i64, i64* %__edi, align 8, !dbg !6080
  store i64 %0, i64* %__edi, align 8, !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6081, metadata !DIExpression()), !dbg !6080
  %1 = load i64, i64* %__esi, align 8, !dbg !6080
  store i64 %1, i64* %__esi, align 8, !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6082, metadata !DIExpression()), !dbg !6080
  %2 = load i64, i64* %__edx, align 8, !dbg !6080
  store i64 %2, i64* %__edx, align 8, !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6083, metadata !DIExpression()), !dbg !6080
  %3 = load i64, i64* %__ecx, align 8, !dbg !6080
  store i64 %3, i64* %__ecx, align 8, !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6084, metadata !DIExpression()), !dbg !6080
  %4 = load i64, i64* %__eax, align 8, !dbg !6080
  store i64 %4, i64* %__eax, align 8, !dbg !6080
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6080
  %6 = call i64 @llvm.read_register.i64(metadata !5959), !dbg !6080
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !6080, !srcloc !6085
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6080
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6080
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6080
  call void @llvm.write_register.i64(metadata !5959, i64 %asmresult1), !dbg !6080
  ret void, !dbg !6086
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !6087 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6088, metadata !DIExpression()), !dbg !6090
  %0 = load i64, i64* %__edi, align 8, !dbg !6090
  store i64 %0, i64* %__edi, align 8, !dbg !6090
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6091, metadata !DIExpression()), !dbg !6090
  %1 = load i64, i64* %__esi, align 8, !dbg !6090
  store i64 %1, i64* %__esi, align 8, !dbg !6090
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6092, metadata !DIExpression()), !dbg !6090
  %2 = load i64, i64* %__edx, align 8, !dbg !6090
  store i64 %2, i64* %__edx, align 8, !dbg !6090
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6093, metadata !DIExpression()), !dbg !6090
  %3 = load i64, i64* %__ecx, align 8, !dbg !6090
  store i64 %3, i64* %__ecx, align 8, !dbg !6090
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6094, metadata !DIExpression()), !dbg !6090
  %4 = load i64, i64* %__eax, align 8, !dbg !6090
  store i64 %4, i64* %__eax, align 8, !dbg !6090
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !6090
  %6 = call i64 @llvm.read_register.i64(metadata !5959), !dbg !6090
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !6090, !srcloc !6095
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6090
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6090
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6090
  call void @llvm.write_register.i64(metadata !5959, i64 %asmresult1), !dbg !6090
  ret void, !dbg !6096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @host_info(%struct.Scsi_Host* %host) #0 !dbg !6097 {
entry:
  %host.addr = alloca %struct.Scsi_Host*, align 8
  %us = alloca %struct.us_data*, align 8
  store %struct.Scsi_Host* %host, %struct.Scsi_Host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6100, metadata !DIExpression()), !dbg !6101
  %0 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host.addr, align 8, !dbg !6102
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %0) #8, !dbg !6103
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6101
  %1 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6104
  %scsi_name = getelementptr inbounds %struct.us_data, %struct.us_data* %1, i32 0, i32 24, !dbg !6105
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %scsi_name, i64 0, i64 0, !dbg !6104
  ret i8* %arraydecay, !dbg !6106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queuecommand(%struct.Scsi_Host* %shost, %struct.scsi_cmnd* %cmd) #0 !dbg !6107 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !6108, metadata !DIExpression()), !dbg !6112
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6114, metadata !DIExpression()), !dbg !6115
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6116, metadata !DIExpression()), !dbg !6121
  %shost.addr = alloca %struct.Scsi_Host*, align 8
  %cmd.addr = alloca %struct.scsi_cmnd*, align 8
  %irq_flags = alloca i64, align 8
  %rc = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.Scsi_Host* %shost, %struct.Scsi_Host** %shost.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %shost.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  store %struct.scsi_cmnd* %cmd, %struct.scsi_cmnd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %cmd.addr, metadata !6130, metadata !DIExpression()), !dbg !6129
  call void @llvm.dbg.declare(metadata i64* %irq_flags, metadata !6131, metadata !DIExpression()), !dbg !6129
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6132, metadata !DIExpression()), !dbg !6129
  br label %do.body, !dbg !6129

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6133

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6134, metadata !DIExpression()), !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6137, metadata !DIExpression()), !dbg !6136
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6136
  %conv = zext i1 %cmp to i32, !dbg !6136
  store i32 1, i32* %tmp, align 4, !dbg !6136
  %0 = load i32, i32* %tmp, align 4, !dbg !6136
  br label %do.body2, !dbg !6138

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6139

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6140

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6142, metadata !DIExpression()), !dbg !6145
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6146, metadata !DIExpression()), !dbg !6145
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6145
  %conv8 = zext i1 %cmp7 to i32, !dbg !6145
  store i32 1, i32* %tmp9, align 4, !dbg !6145
  %1 = load i32, i32* %tmp9, align 4, !dbg !6145
  %call = call i64 @arch_local_irq_save() #8, !dbg !6147
  store i64 %call, i64* %irq_flags, align 8, !dbg !6147
  br label %do.end, !dbg !6147

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6140

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6139

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6148, !srcloc !6149
  br label %do.body12, !dbg !6148

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %shost.addr, align 8, !dbg !6150
  %host_lock = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %2, i32 0, i32 4, !dbg !6150
  %3 = load %struct.spinlock*, %struct.spinlock** %host_lock, align 8, !dbg !6150
  store %struct.spinlock* %3, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6151
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !6152
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !6152
  br label %do.end14, !dbg !6150

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6148

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6139

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6138

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6133

do.end18:                                         ; preds = %do.end17
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %cmd.addr, align 8, !dbg !6129
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %cmd.addr, align 8, !dbg !6129
  %scsi_done = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 21, !dbg !6129
  %8 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %scsi_done, align 8, !dbg !6129
  %call19 = call i32 @queuecommand_lck(%struct.scsi_cmnd* %6, void (%struct.scsi_cmnd*)* %8) #8, !dbg !6129
  store i32 %call19, i32* %rc, align 4, !dbg !6129
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %shost.addr, align 8, !dbg !6129
  %host_lock20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 4, !dbg !6129
  %10 = load %struct.spinlock*, %struct.spinlock** %host_lock20, align 8, !dbg !6129
  %11 = load i64, i64* %irq_flags, align 8, !dbg !6129
  store %struct.spinlock* %10, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !281, metadata !6153, metadata !DIExpression()) #5, !dbg !6156
  call void @llvm.dbg.declare(metadata !281, metadata !6157, metadata !DIExpression()) #5, !dbg !6156
  store i32 1, i32* %tmp.i, align 4, !dbg !6156
  %12 = load i32, i32* %tmp.i, align 4, !dbg !6156
  call void @llvm.dbg.declare(metadata !281, metadata !6158, metadata !DIExpression()) #5, !dbg !6163
  call void @llvm.dbg.declare(metadata !281, metadata !6164, metadata !DIExpression()) #5, !dbg !6163
  store i32 1, i32* %tmp8.i, align 4, !dbg !6163
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !6163
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !6165
  call void @arch_local_irq_restore(i64 %14) #9, !dbg !6165
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6166, !srcloc !6168
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !6169
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !6169
  %rlock.i22 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !6169
  %17 = load i32, i32* %rc, align 4, !dbg !6129
  ret i32 %17, !dbg !6129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @command_abort(%struct.scsi_cmnd* %srb) #0 !dbg !6171 {
entry:
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !6014, metadata !DIExpression()), !dbg !6172
  %lock.addr.i14 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i14, metadata !6014, metadata !DIExpression()), !dbg !6174
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6021, metadata !DIExpression()), !dbg !6178
  %retval = alloca i32, align 4
  %srb.addr = alloca %struct.scsi_cmnd*, align 8
  %us = alloca %struct.us_data*, align 8
  store %struct.scsi_cmnd* %srb, %struct.scsi_cmnd** %srb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %srb.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6184
  %device = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %0, i32 0, i32 1, !dbg !6185
  %1 = load %struct.scsi_device*, %struct.scsi_device** %device, align 8, !dbg !6185
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %1, i32 0, i32 0, !dbg !6186
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6186
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %2) #8, !dbg !6187
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6183
  br label %do.body, !dbg !6188

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6189

do.end:                                           ; preds = %do.body
  %3 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6191
  %call1 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %3) #8, !dbg !6191
  %host_lock = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %call1, i32 0, i32 4, !dbg !6191
  %4 = load %struct.spinlock*, %struct.spinlock** %host_lock, align 8, !dbg !6191
  store %struct.spinlock* %4, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #9, !dbg !6192
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6193, !srcloc !6037
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6194
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !6194
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !6194
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6195
  %srb2 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 22, !dbg !6196
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb2, align 8, !dbg !6196
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6197
  %cmp = icmp ne %struct.scsi_cmnd* %8, %9, !dbg !6198
  br i1 %cmp, label %if.then, label %if.end, !dbg !6199

if.then:                                          ; preds = %do.end
  %10 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6200
  %call3 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %10) #8, !dbg !6200
  %host_lock4 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %call3, i32 0, i32 4, !dbg !6200
  %11 = load %struct.spinlock*, %struct.spinlock** %host_lock4, align 8, !dbg !6200
  store %struct.spinlock* %11, %struct.spinlock** %lock.addr.i14, align 8
  call void @arch_local_irq_enable() #9, !dbg !6201
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6202, !srcloc !6048
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i14, align 8, !dbg !6203
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !6203
  %rlock.i15 = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !6203
  br label %do.body5, !dbg !6204

do.body5:                                         ; preds = %if.then
  br label %do.end6, !dbg !6205

do.end6:                                          ; preds = %do.body5
  store i32 8195, i32* %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end:                                           ; preds = %do.end
  %14 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6208
  %dflags = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 5, !dbg !6209
  call void @set_bit(i64 5, i64* %dflags) #8, !dbg !6210
  %15 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6211
  %dflags7 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 5, !dbg !6213
  %call8 = call zeroext i1 @test_bit(i64 4, i64* %dflags7) #8, !dbg !6214
  br i1 %call8, label %if.end11, label %if.then9, !dbg !6215

if.then9:                                         ; preds = %if.end
  %16 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6216
  %dflags10 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 5, !dbg !6218
  call void @set_bit(i64 2, i64* %dflags10) #8, !dbg !6219
  %17 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6220
  call void @usb_stor_stop_transport(%struct.us_data* %17) #8, !dbg !6221
  br label %if.end11, !dbg !6222

if.end11:                                         ; preds = %if.then9, %if.end
  %18 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6223
  %call12 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %18) #8, !dbg !6223
  %host_lock13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %call12, i32 0, i32 4, !dbg !6223
  %19 = load %struct.spinlock*, %struct.spinlock** %host_lock13, align 8, !dbg !6223
  store %struct.spinlock* %19, %struct.spinlock** %lock.addr.i16, align 8
  call void @arch_local_irq_enable() #9, !dbg !6224
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6225, !srcloc !6048
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !6226
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !6226
  %rlock.i17 = bitcast %union.anon* %21 to %struct.raw_spinlock*, !dbg !6226
  %22 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6227
  %notify = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 32, !dbg !6228
  call void @wait_for_completion(%struct.completion* %notify) #8, !dbg !6229
  store i32 8194, i32* %retval, align 4, !dbg !6230
  br label %return, !dbg !6230

return:                                           ; preds = %if.end11, %do.end6
  %23 = load i32, i32* %retval, align 4, !dbg !6231
  ret i32 %23, !dbg !6231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_reset(%struct.scsi_cmnd* %srb) #0 !dbg !6232 {
entry:
  %srb.addr = alloca %struct.scsi_cmnd*, align 8
  %us = alloca %struct.us_data*, align 8
  %result = alloca i32, align 4
  store %struct.scsi_cmnd* %srb, %struct.scsi_cmnd** %srb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %srb.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6235, metadata !DIExpression()), !dbg !6236
  %0 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6237
  %device = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %0, i32 0, i32 1, !dbg !6238
  %1 = load %struct.scsi_device*, %struct.scsi_device** %device, align 8, !dbg !6238
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %1, i32 0, i32 0, !dbg !6239
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6239
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %2) #8, !dbg !6240
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6236
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6241, metadata !DIExpression()), !dbg !6242
  br label %do.body, !dbg !6243

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6244

do.end:                                           ; preds = %do.body
  %3 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6246
  %dev_mutex = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 0, !dbg !6247
  call void @mutex_lock(%struct.mutex* %dev_mutex) #8, !dbg !6248
  %4 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6249
  %transport_reset = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 20, !dbg !6250
  %5 = load i32 (%struct.us_data*)*, i32 (%struct.us_data*)** %transport_reset, align 8, !dbg !6250
  %6 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6251
  %call1 = call i32 %5(%struct.us_data* %6) #8, !dbg !6249
  store i32 %call1, i32* %result, align 4, !dbg !6252
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6253
  %dev_mutex2 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0, !dbg !6254
  call void @mutex_unlock(%struct.mutex* %dev_mutex2) #8, !dbg !6255
  %8 = load i32, i32* %result, align 4, !dbg !6256
  %cmp = icmp slt i32 %8, 0, !dbg !6257
  %9 = zext i1 %cmp to i64, !dbg !6256
  %cond = select i1 %cmp, i32 8195, i32 8194, !dbg !6256
  ret i32 %cond, !dbg !6258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bus_reset(%struct.scsi_cmnd* %srb) #0 !dbg !6259 {
entry:
  %srb.addr = alloca %struct.scsi_cmnd*, align 8
  %us = alloca %struct.us_data*, align 8
  %result = alloca i32, align 4
  store %struct.scsi_cmnd* %srb, %struct.scsi_cmnd** %srb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %srb.addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6264
  %device = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %0, i32 0, i32 1, !dbg !6265
  %1 = load %struct.scsi_device*, %struct.scsi_device** %device, align 8, !dbg !6265
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %1, i32 0, i32 0, !dbg !6266
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6266
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %2) #8, !dbg !6267
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6268, metadata !DIExpression()), !dbg !6269
  br label %do.body, !dbg !6270

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6271

do.end:                                           ; preds = %do.body
  %3 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6273
  %call1 = call i32 @usb_stor_port_reset(%struct.us_data* %3) #8, !dbg !6274
  store i32 %call1, i32* %result, align 4, !dbg !6275
  %4 = load i32, i32* %result, align 4, !dbg !6276
  %cmp = icmp slt i32 %4, 0, !dbg !6277
  %5 = zext i1 %cmp to i64, !dbg !6276
  %cond = select i1 %cmp, i32 8195, i32 8194, !dbg !6276
  ret i32 %cond, !dbg !6278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @slave_alloc(%struct.scsi_device* %sdev) #0 !dbg !6279 {
entry:
  %sdev.addr = alloca %struct.scsi_device*, align 8
  %us = alloca %struct.us_data*, align 8
  store %struct.scsi_device* %sdev, %struct.scsi_device** %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_device** %sdev.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6284
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %0, i32 0, i32 0, !dbg !6285
  %1 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6285
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %1) #8, !dbg !6286
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6283
  %2 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6287
  %inquiry_len = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %2, i32 0, i32 26, !dbg !6288
  store i8 36, i8* %inquiry_len, align 8, !dbg !6289
  %3 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6290
  %request_queue = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %3, i32 0, i32 1, !dbg !6291
  %4 = load %struct.request_queue*, %struct.request_queue** %request_queue, align 8, !dbg !6291
  call void @blk_queue_update_dma_alignment(%struct.request_queue* %4, i32 511) #8, !dbg !6292
  %5 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6293
  %protocol = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 15, !dbg !6295
  %6 = load i8, i8* %protocol, align 1, !dbg !6295
  %conv = zext i8 %6 to i32, !dbg !6293
  %cmp = icmp eq i32 %conv, 80, !dbg !6296
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6297

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6298
  %max_lun = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 16, !dbg !6299
  %8 = load i8, i8* %max_lun, align 2, !dbg !6299
  %conv2 = zext i8 %8 to i32, !dbg !6298
  %cmp3 = icmp sgt i32 %conv2, 0, !dbg !6300
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6301

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6302
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 37, !dbg !6303
  %10 = load i64, i64* %sdev_bflags, align 8, !dbg !6304
  %or = or i64 %10, 2, !dbg !6304
  store i64 %or, i64* %sdev_bflags, align 8, !dbg !6304
  br label %if.end, !dbg !6302

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !6305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @slave_configure(%struct.scsi_device* %sdev) #0 !dbg !6306 {
entry:
  %sdev.addr = alloca %struct.scsi_device*, align 8
  %us = alloca %struct.us_data*, align 8
  %dev = alloca %struct.device*, align 8
  %max_sectors = alloca i32, align 4
  %__UNIQUE_ID___x303 = alloca i64, align 8
  %__UNIQUE_ID___y304 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.scsi_device* %sdev, %struct.scsi_device** %sdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_device** %sdev.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6309, metadata !DIExpression()), !dbg !6310
  %0 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6311
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %0, i32 0, i32 0, !dbg !6312
  %1 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6312
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %1) #8, !dbg !6313
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6310
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !6314, metadata !DIExpression()), !dbg !6315
  %2 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6316
  %pusb_dev = getelementptr inbounds %struct.us_data, %struct.us_data* %2, i32 0, i32 1, !dbg !6317
  %3 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !6317
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 12, !dbg !6318
  %4 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !6318
  %sysdev = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %4, i32 0, i32 1, !dbg !6319
  %5 = load %struct.device*, %struct.device** %sysdev, align 8, !dbg !6319
  store %struct.device* %5, %struct.device** %dev, align 8, !dbg !6315
  %6 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6320
  %fflags = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 4, !dbg !6322
  %7 = load i64, i64* %fflags, align 8, !dbg !6322
  %and = and i64 %7, 9216, !dbg !6323
  %tobool = icmp ne i64 %and, 0, !dbg !6323
  br i1 %tobool, label %if.then, label %if.else, !dbg !6324

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %max_sectors, metadata !6325, metadata !DIExpression()), !dbg !6327
  store i32 64, i32* %max_sectors, align 4, !dbg !6327
  %8 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6328
  %fflags1 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 4, !dbg !6330
  %9 = load i64, i64* %fflags1, align 8, !dbg !6330
  %and2 = and i64 %9, 8192, !dbg !6331
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6331
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6332

if.then4:                                         ; preds = %if.then
  store i32 8, i32* %max_sectors, align 4, !dbg !6333
  br label %if.end, !dbg !6334

if.end:                                           ; preds = %if.then4, %if.then
  %10 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6335
  %request_queue = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 1, !dbg !6337
  %11 = load %struct.request_queue*, %struct.request_queue** %request_queue, align 8, !dbg !6337
  %call5 = call i32 @queue_max_hw_sectors(%struct.request_queue* %11) #8, !dbg !6338
  %12 = load i32, i32* %max_sectors, align 4, !dbg !6339
  %cmp = icmp ugt i32 %call5, %12, !dbg !6340
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !6341

if.then6:                                         ; preds = %if.end
  %13 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6342
  %request_queue7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1, !dbg !6343
  %14 = load %struct.request_queue*, %struct.request_queue** %request_queue7, align 8, !dbg !6343
  %15 = load i32, i32* %max_sectors, align 4, !dbg !6344
  call void @blk_queue_max_hw_sectors(%struct.request_queue* %14, i32 %15) #8, !dbg !6345
  br label %if.end8, !dbg !6345

if.end8:                                          ; preds = %if.then6, %if.end
  br label %if.end21, !dbg !6346

if.else:                                          ; preds = %entry
  %16 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6347
  %type = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 22, !dbg !6349
  %17 = load i8, i8* %type, align 8, !dbg !6349
  %conv = zext i8 %17 to i32, !dbg !6347
  %cmp9 = icmp eq i32 %conv, 1, !dbg !6350
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !6351

if.then11:                                        ; preds = %if.else
  %18 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6352
  %request_queue12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 1, !dbg !6354
  %19 = load %struct.request_queue*, %struct.request_queue** %request_queue12, align 8, !dbg !6354
  call void @blk_queue_max_hw_sectors(%struct.request_queue* %19, i32 8388607) #8, !dbg !6355
  br label %if.end20, !dbg !6356

if.else13:                                        ; preds = %if.else
  %20 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6357
  %pusb_dev14 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1, !dbg !6359
  %21 = load %struct.usb_device*, %struct.usb_device** %pusb_dev14, align 8, !dbg !6359
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 4, !dbg !6360
  %22 = load i32, i32* %speed, align 4, !dbg !6360
  %cmp15 = icmp uge i32 %22, 5, !dbg !6361
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !6362

if.then17:                                        ; preds = %if.else13
  %23 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6363
  %request_queue18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 1, !dbg !6365
  %24 = load %struct.request_queue*, %struct.request_queue** %request_queue18, align 8, !dbg !6365
  call void @blk_queue_max_hw_sectors(%struct.request_queue* %24, i32 2048) #8, !dbg !6366
  br label %if.end19, !dbg !6367

if.end19:                                         ; preds = %if.then17, %if.else13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then11
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6368
  %request_queue22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 1, !dbg !6369
  %26 = load %struct.request_queue*, %struct.request_queue** %request_queue22, align 8, !dbg !6369
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x303, metadata !6370, metadata !DIExpression()), !dbg !6372
  %27 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6372
  %request_queue23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 1, !dbg !6372
  %28 = load %struct.request_queue*, %struct.request_queue** %request_queue23, align 8, !dbg !6372
  %call24 = call i32 @queue_max_hw_sectors(%struct.request_queue* %28) #8, !dbg !6372
  %conv25 = zext i32 %call24 to i64, !dbg !6372
  store i64 %conv25, i64* %__UNIQUE_ID___x303, align 8, !dbg !6372
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y304, metadata !6373, metadata !DIExpression()), !dbg !6372
  %29 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6372
  %call26 = call i64 @dma_max_mapping_size(%struct.device* %29) #8, !dbg !6372
  %shr = lshr i64 %call26, 9, !dbg !6372
  store i64 %shr, i64* %__UNIQUE_ID___y304, align 8, !dbg !6372
  %30 = load i64, i64* %__UNIQUE_ID___x303, align 8, !dbg !6372
  %31 = load i64, i64* %__UNIQUE_ID___y304, align 8, !dbg !6372
  %cmp27 = icmp ult i64 %30, %31, !dbg !6372
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !6372

cond.true:                                        ; preds = %if.end21
  %32 = load i64, i64* %__UNIQUE_ID___x303, align 8, !dbg !6372
  br label %cond.end, !dbg !6372

cond.false:                                       ; preds = %if.end21
  %33 = load i64, i64* %__UNIQUE_ID___y304, align 8, !dbg !6372
  br label %cond.end, !dbg !6372

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %32, %cond.true ], [ %33, %cond.false ], !dbg !6372
  store i64 %cond, i64* %tmp, align 8, !dbg !6372
  %34 = load i64, i64* %tmp, align 8, !dbg !6372
  %conv29 = trunc i64 %34 to i32, !dbg !6374
  call void @blk_queue_max_hw_sectors(%struct.request_queue* %26, i32 %conv29) #8, !dbg !6375
  %35 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6376
  %pusb_dev30 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 1, !dbg !6378
  %36 = load %struct.usb_device*, %struct.usb_device** %pusb_dev30, align 8, !dbg !6378
  %bus31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 12, !dbg !6379
  %37 = load %struct.usb_bus*, %struct.usb_bus** %bus31, align 8, !dbg !6379
  %call32 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %37) #8, !dbg !6380
  %call33 = call zeroext i1 @hcd_uses_dma(%struct.usb_hcd* %call32) #8, !dbg !6381
  br i1 %call33, label %lor.lhs.false, label %if.then39, !dbg !6382

lor.lhs.false:                                    ; preds = %cond.end
  %38 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6383
  %pusb_dev34 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 1, !dbg !6384
  %39 = load %struct.usb_device*, %struct.usb_device** %pusb_dev34, align 8, !dbg !6384
  %bus35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 12, !dbg !6385
  %40 = load %struct.usb_bus*, %struct.usb_bus** %bus35, align 8, !dbg !6385
  %call36 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %40) #8, !dbg !6386
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %call36, i32 0, i32 28, !dbg !6387
  %41 = load %struct.gen_pool*, %struct.gen_pool** %localmem_pool, align 8, !dbg !6387
  %cmp37 = icmp ne %struct.gen_pool* %41, null, !dbg !6388
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !6389

if.then39:                                        ; preds = %lor.lhs.false, %cond.end
  %42 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6390
  %request_queue40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 1, !dbg !6391
  %43 = load %struct.request_queue*, %struct.request_queue** %request_queue40, align 8, !dbg !6391
  call void @blk_queue_bounce_limit(%struct.request_queue* %43, i64 -1) #8, !dbg !6392
  br label %if.end41, !dbg !6392

if.end41:                                         ; preds = %if.then39, %lor.lhs.false
  %44 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6393
  %type42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 22, !dbg !6395
  %45 = load i8, i8* %type42, align 8, !dbg !6395
  %conv43 = zext i8 %45 to i32, !dbg !6393
  %cmp44 = icmp eq i32 %conv43, 0, !dbg !6396
  br i1 %cmp44, label %if.then46, label %if.else184, !dbg !6397

if.then46:                                        ; preds = %if.end41
  %46 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6398
  %pusb_dev47 = getelementptr inbounds %struct.us_data, %struct.us_data* %46, i32 0, i32 1, !dbg !6398
  %47 = load %struct.usb_device*, %struct.usb_device** %pusb_dev47, align 8, !dbg !6398
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 15, !dbg !6398
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !6398
  %48 = load i16, i16* %idVendor, align 8, !dbg !6398
  %conv48 = zext i16 %48 to i32, !dbg !6398
  switch i32 %conv48, label %sw.epilog [
    i32 1057, label %sw.bb
    i32 1200, label %sw.bb
    i32 2583, label %sw.bb
    i32 8888, label %sw.bb
  ], !dbg !6400

sw.bb:                                            ; preds = %if.then46, %if.then46, %if.then46, %if.then46
  %49 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6401
  %fflags49 = getelementptr inbounds %struct.us_data, %struct.us_data* %49, i32 0, i32 4, !dbg !6404
  %50 = load i64, i64* %fflags49, align 8, !dbg !6404
  %and50 = and i64 %50, 65552, !dbg !6405
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6405
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !6406

if.then52:                                        ; preds = %sw.bb
  %51 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6407
  %fflags53 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 4, !dbg !6408
  %52 = load i64, i64* %fflags53, align 8, !dbg !6409
  %or = or i64 %52, 4096, !dbg !6409
  store i64 %or, i64* %fflags53, align 8, !dbg !6409
  br label %if.end54, !dbg !6407

if.end54:                                         ; preds = %if.then52, %sw.bb
  br label %sw.epilog, !dbg !6410

sw.epilog:                                        ; preds = %if.then46, %if.end54
  %53 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6411
  %subclass = getelementptr inbounds %struct.us_data, %struct.us_data* %53, i32 0, i32 14, !dbg !6413
  %54 = load i8, i8* %subclass, align 4, !dbg !6413
  %conv55 = zext i8 %54 to i32, !dbg !6411
  %cmp56 = icmp ne i32 %conv55, 6, !dbg !6414
  br i1 %cmp56, label %land.lhs.true, label %if.end63, !dbg !6415

land.lhs.true:                                    ; preds = %sw.epilog
  %55 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6416
  %subclass58 = getelementptr inbounds %struct.us_data, %struct.us_data* %55, i32 0, i32 14, !dbg !6417
  %56 = load i8, i8* %subclass58, align 4, !dbg !6417
  %conv59 = zext i8 %56 to i32, !dbg !6416
  %cmp60 = icmp ne i32 %conv59, 241, !dbg !6418
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !6419

if.then62:                                        ; preds = %land.lhs.true
  %57 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6420
  %use_10_for_ms = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 39, !dbg !6421
  %58 = bitcast [6 x i8]* %use_10_for_ms to i48*, !dbg !6421
  %bf.load = load i48, i48* %58, align 4, !dbg !6422
  %bf.clear = and i48 %bf.load, -65537, !dbg !6422
  %bf.set = or i48 %bf.clear, 65536, !dbg !6422
  store i48 %bf.set, i48* %58, align 4, !dbg !6422
  br label %if.end63, !dbg !6420

if.end63:                                         ; preds = %if.then62, %land.lhs.true, %sw.epilog
  %59 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6423
  %use_192_bytes_for_3f = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 39, !dbg !6424
  %60 = bitcast [6 x i8]* %use_192_bytes_for_3f to i48*, !dbg !6424
  %bf.load64 = load i48, i48* %60, align 4, !dbg !6425
  %bf.clear65 = and i48 %bf.load64, -33554433, !dbg !6425
  %bf.set66 = or i48 %bf.clear65, 33554432, !dbg !6425
  store i48 %bf.set66, i48* %60, align 4, !dbg !6425
  %61 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6426
  %fflags67 = getelementptr inbounds %struct.us_data, %struct.us_data* %61, i32 0, i32 4, !dbg !6428
  %62 = load i64, i64* %fflags67, align 8, !dbg !6428
  %and68 = and i64 %62, 512, !dbg !6429
  %tobool69 = icmp ne i64 %and68, 0, !dbg !6429
  br i1 %tobool69, label %if.then70, label %if.end74, !dbg !6430

if.then70:                                        ; preds = %if.end63
  %63 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6431
  %skip_ms_page_3f = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 39, !dbg !6432
  %64 = bitcast [6 x i8]* %skip_ms_page_3f to i48*, !dbg !6432
  %bf.load71 = load i48, i48* %64, align 4, !dbg !6433
  %bf.clear72 = and i48 %bf.load71, -4194305, !dbg !6433
  %bf.set73 = or i48 %bf.clear72, 4194304, !dbg !6433
  store i48 %bf.set73, i48* %64, align 4, !dbg !6433
  br label %if.end74, !dbg !6431

if.end74:                                         ; preds = %if.then70, %if.end63
  %65 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6434
  %skip_ms_page_8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 39, !dbg !6435
  %66 = bitcast [6 x i8]* %skip_ms_page_8 to i48*, !dbg !6435
  %bf.load75 = load i48, i48* %66, align 4, !dbg !6436
  %bf.clear76 = and i48 %bf.load75, -2097153, !dbg !6436
  %bf.set77 = or i48 %bf.clear76, 2097152, !dbg !6436
  store i48 %bf.set77, i48* %66, align 4, !dbg !6436
  %67 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6437
  %try_vpd_pages = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 39, !dbg !6438
  %68 = bitcast [6 x i8]* %try_vpd_pages to i48*, !dbg !6438
  %bf.load78 = load i48, i48* %68, align 4, !dbg !6438
  %bf.lshr = lshr i48 %bf.load78, 24, !dbg !6438
  %bf.clear79 = and i48 %bf.lshr, 1, !dbg !6438
  %bf.cast = trunc i48 %bf.clear79 to i32, !dbg !6438
  %tobool80 = icmp ne i32 %bf.cast, 0, !dbg !6439
  %lnot = xor i1 %tobool80, true, !dbg !6439
  %lnot.ext = zext i1 %lnot to i32, !dbg !6439
  %69 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6440
  %skip_vpd_pages = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 39, !dbg !6441
  %70 = bitcast [6 x i8]* %skip_vpd_pages to i48*, !dbg !6441
  %71 = zext i32 %lnot.ext to i48, !dbg !6442
  %bf.load81 = load i48, i48* %70, align 4, !dbg !6442
  %bf.value = and i48 %71, 1, !dbg !6442
  %bf.shl = shl i48 %bf.value, 23, !dbg !6442
  %bf.clear82 = and i48 %bf.load81, -8388609, !dbg !6442
  %bf.set83 = or i48 %bf.clear82, %bf.shl, !dbg !6442
  store i48 %bf.set83, i48* %70, align 4, !dbg !6442
  %bf.result.cast = trunc i48 %bf.value to i32, !dbg !6442
  %72 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6443
  %no_report_opcodes = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 39, !dbg !6444
  %73 = bitcast [6 x i8]* %no_report_opcodes to i48*, !dbg !6444
  %bf.load84 = load i48, i48* %73, align 4, !dbg !6445
  %bf.clear85 = and i48 %bf.load84, -262145, !dbg !6445
  %bf.set86 = or i48 %bf.clear85, 262144, !dbg !6445
  store i48 %bf.set86, i48* %73, align 4, !dbg !6445
  %74 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6446
  %no_write_same = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %74, i32 0, i32 39, !dbg !6447
  %75 = bitcast [6 x i8]* %no_write_same to i48*, !dbg !6447
  %bf.load87 = load i48, i48* %75, align 4, !dbg !6448
  %bf.clear88 = and i48 %bf.load87, -524289, !dbg !6448
  %bf.set89 = or i48 %bf.clear88, 524288, !dbg !6448
  store i48 %bf.set89, i48* %75, align 4, !dbg !6448
  %76 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6449
  %fflags90 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 4, !dbg !6451
  %77 = load i64, i64* %fflags90, align 8, !dbg !6451
  %and91 = and i64 %77, 16, !dbg !6452
  %tobool92 = icmp ne i64 %and91, 0, !dbg !6452
  br i1 %tobool92, label %if.then93, label %if.end97, !dbg !6453

if.then93:                                        ; preds = %if.end74
  %78 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6454
  %fix_capacity = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %78, i32 0, i32 39, !dbg !6455
  %79 = bitcast [6 x i8]* %fix_capacity to i48*, !dbg !6455
  %bf.load94 = load i48, i48* %79, align 4, !dbg !6456
  %bf.clear95 = and i48 %bf.load94, -4294967297, !dbg !6456
  %bf.set96 = or i48 %bf.clear95, 4294967296, !dbg !6456
  store i48 %bf.set96, i48* %79, align 4, !dbg !6456
  br label %if.end97, !dbg !6454

if.end97:                                         ; preds = %if.then93, %if.end74
  %80 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6457
  %fflags98 = getelementptr inbounds %struct.us_data, %struct.us_data* %80, i32 0, i32 4, !dbg !6459
  %81 = load i64, i64* %fflags98, align 8, !dbg !6459
  %and99 = and i64 %81, 4096, !dbg !6460
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6460
  br i1 %tobool100, label %if.then101, label %if.end105, !dbg !6461

if.then101:                                       ; preds = %if.end97
  %82 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6462
  %guess_capacity = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 39, !dbg !6463
  %83 = bitcast [6 x i8]* %guess_capacity to i48*, !dbg !6463
  %bf.load102 = load i48, i48* %83, align 4, !dbg !6464
  %bf.clear103 = and i48 %bf.load102, -8589934593, !dbg !6464
  %bf.set104 = or i48 %bf.clear103, 8589934592, !dbg !6464
  store i48 %bf.set104, i48* %83, align 4, !dbg !6464
  br label %if.end105, !dbg !6462

if.end105:                                        ; preds = %if.then101, %if.end97
  %84 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6465
  %fflags106 = getelementptr inbounds %struct.us_data, %struct.us_data* %84, i32 0, i32 4, !dbg !6467
  %85 = load i64, i64* %fflags106, align 8, !dbg !6467
  %and107 = and i64 %85, 524288, !dbg !6468
  %tobool108 = icmp ne i64 %and107, 0, !dbg !6468
  br i1 %tobool108, label %if.then109, label %if.end113, !dbg !6469

if.then109:                                       ; preds = %if.end105
  %86 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6470
  %no_read_capacity_16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %86, i32 0, i32 39, !dbg !6471
  %87 = bitcast [6 x i8]* %no_read_capacity_16 to i48*, !dbg !6471
  %bf.load110 = load i48, i48* %87, align 4, !dbg !6472
  %bf.clear111 = and i48 %bf.load110, -137438953473, !dbg !6472
  %bf.set112 = or i48 %bf.clear111, 137438953472, !dbg !6472
  store i48 %bf.set112, i48* %87, align 4, !dbg !6472
  br label %if.end113, !dbg !6470

if.end113:                                        ; preds = %if.then109, %if.end105
  %88 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6473
  %fflags114 = getelementptr inbounds %struct.us_data, %struct.us_data* %88, i32 0, i32 4, !dbg !6475
  %89 = load i64, i64* %fflags114, align 8, !dbg !6475
  %and115 = and i64 %89, 4194304, !dbg !6476
  %tobool116 = icmp ne i64 %and115, 0, !dbg !6476
  br i1 %tobool116, label %if.end121, label %if.then117, !dbg !6477

if.then117:                                       ; preds = %if.end113
  %90 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6478
  %try_rc_10_first = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %90, i32 0, i32 39, !dbg !6479
  %91 = bitcast [6 x i8]* %try_rc_10_first to i48*, !dbg !6479
  %bf.load118 = load i48, i48* %91, align 4, !dbg !6480
  %bf.clear119 = and i48 %bf.load118, -274877906945, !dbg !6480
  %bf.set120 = or i48 %bf.clear119, 274877906944, !dbg !6480
  store i48 %bf.set120, i48* %91, align 4, !dbg !6480
  br label %if.end121, !dbg !6478

if.end121:                                        ; preds = %if.then117, %if.end113
  %92 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6481
  %scsi_level = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %92, i32 0, i32 23, !dbg !6483
  %93 = load i8, i8* %scsi_level, align 1, !dbg !6483
  %conv122 = sext i8 %93 to i32, !dbg !6481
  %cmp123 = icmp sgt i32 %conv122, 5, !dbg !6484
  br i1 %cmp123, label %land.lhs.true125, label %if.end132, !dbg !6485

land.lhs.true125:                                 ; preds = %if.end121
  %94 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6486
  %fflags126 = getelementptr inbounds %struct.us_data, %struct.us_data* %94, i32 0, i32 4, !dbg !6487
  %95 = load i64, i64* %fflags126, align 8, !dbg !6487
  %and127 = and i64 %95, 131072, !dbg !6488
  %tobool128 = icmp ne i64 %and127, 0, !dbg !6488
  br i1 %tobool128, label %if.end132, label %if.then129, !dbg !6489

if.then129:                                       ; preds = %land.lhs.true125
  %96 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6490
  %fflags130 = getelementptr inbounds %struct.us_data, %struct.us_data* %96, i32 0, i32 4, !dbg !6491
  %97 = load i64, i64* %fflags130, align 8, !dbg !6492
  %or131 = or i64 %97, 32768, !dbg !6492
  store i64 %or131, i64* %fflags130, align 8, !dbg !6492
  br label %if.end132, !dbg !6490

if.end132:                                        ; preds = %if.then129, %land.lhs.true125, %if.end121
  %98 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6493
  %retry_hwerror = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %98, i32 0, i32 39, !dbg !6494
  %99 = bitcast [6 x i8]* %retry_hwerror to i48*, !dbg !6494
  %bf.load133 = load i48, i48* %99, align 4, !dbg !6495
  %bf.clear134 = and i48 %bf.load133, -17179869185, !dbg !6495
  %bf.set135 = or i48 %bf.clear134, 17179869184, !dbg !6495
  store i48 %bf.set135, i48* %99, align 4, !dbg !6495
  %100 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6496
  %allow_restart = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %100, i32 0, i32 39, !dbg !6497
  %101 = bitcast [6 x i8]* %allow_restart to i48*, !dbg !6497
  %bf.load136 = load i48, i48* %101, align 4, !dbg !6498
  %bf.clear137 = and i48 %bf.load136, -134217729, !dbg !6498
  %bf.set138 = or i48 %bf.clear137, 134217728, !dbg !6498
  store i48 %bf.set138, i48* %101, align 4, !dbg !6498
  %102 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6499
  %last_sector_bug = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %102, i32 0, i32 39, !dbg !6500
  %103 = bitcast [6 x i8]* %last_sector_bug to i48*, !dbg !6500
  %bf.load139 = load i48, i48* %103, align 4, !dbg !6501
  %bf.clear140 = and i48 %bf.load139, -34359738369, !dbg !6501
  %bf.set141 = or i48 %bf.clear140, 34359738368, !dbg !6501
  store i48 %bf.set141, i48* %103, align 4, !dbg !6501
  %104 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6502
  %fflags142 = getelementptr inbounds %struct.us_data, %struct.us_data* %104, i32 0, i32 4, !dbg !6504
  %105 = load i64, i64* %fflags142, align 8, !dbg !6504
  %and143 = and i64 %105, 65556, !dbg !6505
  %tobool144 = icmp ne i64 %and143, 0, !dbg !6505
  br i1 %tobool144, label %if.end150, label %land.lhs.true145, !dbg !6506

land.lhs.true145:                                 ; preds = %if.end132
  %106 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6507
  %protocol = getelementptr inbounds %struct.us_data, %struct.us_data* %106, i32 0, i32 15, !dbg !6508
  %107 = load i8, i8* %protocol, align 1, !dbg !6508
  %conv146 = zext i8 %107 to i32, !dbg !6507
  %cmp147 = icmp eq i32 %conv146, 80, !dbg !6509
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !6510

if.then149:                                       ; preds = %land.lhs.true145
  %108 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6511
  %use_last_sector_hacks = getelementptr inbounds %struct.us_data, %struct.us_data* %108, i32 0, i32 38, !dbg !6512
  store i32 1, i32* %use_last_sector_hacks, align 8, !dbg !6513
  br label %if.end150, !dbg !6511

if.end150:                                        ; preds = %if.then149, %land.lhs.true145, %if.end132
  %109 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6514
  %fflags151 = getelementptr inbounds %struct.us_data, %struct.us_data* %109, i32 0, i32 4, !dbg !6516
  %110 = load i64, i64* %fflags151, align 8, !dbg !6516
  %and152 = and i64 %110, 2097152, !dbg !6517
  %tobool153 = icmp ne i64 %and152, 0, !dbg !6517
  br i1 %tobool153, label %if.then154, label %if.end158, !dbg !6518

if.then154:                                       ; preds = %if.end150
  %111 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6519
  %wce_default_on = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %111, i32 0, i32 39, !dbg !6520
  %112 = bitcast [6 x i8]* %wce_default_on to i48*, !dbg !6520
  %bf.load155 = load i48, i48* %112, align 4, !dbg !6521
  %bf.clear156 = and i48 %bf.load155, -2199023255553, !dbg !6521
  %bf.set157 = or i48 %bf.clear156, 2199023255552, !dbg !6521
  store i48 %bf.set157, i48* %112, align 4, !dbg !6521
  br label %if.end158, !dbg !6519

if.end158:                                        ; preds = %if.then154, %if.end150
  %113 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6522
  %fflags159 = getelementptr inbounds %struct.us_data, %struct.us_data* %113, i32 0, i32 4, !dbg !6524
  %114 = load i64, i64* %fflags159, align 8, !dbg !6524
  %and160 = and i64 %114, 16777216, !dbg !6525
  %tobool161 = icmp ne i64 %and160, 0, !dbg !6525
  br i1 %tobool161, label %if.then162, label %if.end166, !dbg !6526

if.then162:                                       ; preds = %if.end158
  %115 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6527
  %broken_fua = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %115, i32 0, i32 39, !dbg !6528
  %116 = bitcast [6 x i8]* %broken_fua to i48*, !dbg !6528
  %bf.load163 = load i48, i48* %116, align 4, !dbg !6529
  %bf.clear164 = and i48 %bf.load163, -8796093022209, !dbg !6529
  %bf.set165 = or i48 %bf.clear164, 8796093022208, !dbg !6529
  store i48 %bf.set165, i48* %116, align 4, !dbg !6529
  br label %if.end166, !dbg !6527

if.end166:                                        ; preds = %if.then162, %if.end158
  %117 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6530
  %fflags167 = getelementptr inbounds %struct.us_data, %struct.us_data* %117, i32 0, i32 4, !dbg !6532
  %118 = load i64, i64* %fflags167, align 8, !dbg !6532
  %and168 = and i64 %118, 536870912, !dbg !6533
  %tobool169 = icmp ne i64 %and168, 0, !dbg !6533
  br i1 %tobool169, label %if.then170, label %if.end183, !dbg !6534

if.then170:                                       ; preds = %if.end166
  %119 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6535
  %skip_ms_page_8171 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %119, i32 0, i32 39, !dbg !6537
  %120 = bitcast [6 x i8]* %skip_ms_page_8171 to i48*, !dbg !6537
  %bf.load172 = load i48, i48* %120, align 4, !dbg !6538
  %bf.clear173 = and i48 %bf.load172, -2097153, !dbg !6538
  %bf.set174 = or i48 %bf.clear173, 2097152, !dbg !6538
  store i48 %bf.set174, i48* %120, align 4, !dbg !6538
  %121 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6539
  %skip_ms_page_3f175 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %121, i32 0, i32 39, !dbg !6540
  %122 = bitcast [6 x i8]* %skip_ms_page_3f175 to i48*, !dbg !6540
  %bf.load176 = load i48, i48* %122, align 4, !dbg !6541
  %bf.clear177 = and i48 %bf.load176, -4194305, !dbg !6541
  %bf.set178 = or i48 %bf.clear177, 4194304, !dbg !6541
  store i48 %bf.set178, i48* %122, align 4, !dbg !6541
  %123 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6542
  %wce_default_on179 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 39, !dbg !6543
  %124 = bitcast [6 x i8]* %wce_default_on179 to i48*, !dbg !6543
  %bf.load180 = load i48, i48* %124, align 4, !dbg !6544
  %bf.clear181 = and i48 %bf.load180, -2199023255553, !dbg !6544
  %bf.set182 = or i48 %bf.clear181, 2199023255552, !dbg !6544
  store i48 %bf.set182, i48* %124, align 4, !dbg !6544
  br label %if.end183, !dbg !6545

if.end183:                                        ; preds = %if.then170, %if.end166
  br label %if.end197, !dbg !6546

if.else184:                                       ; preds = %if.end41
  %125 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6547
  %use_10_for_ms185 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %125, i32 0, i32 39, !dbg !6549
  %126 = bitcast [6 x i8]* %use_10_for_ms185 to i48*, !dbg !6549
  %bf.load186 = load i48, i48* %126, align 4, !dbg !6550
  %bf.clear187 = and i48 %bf.load186, -65537, !dbg !6550
  %bf.set188 = or i48 %bf.clear187, 65536, !dbg !6550
  store i48 %bf.set188, i48* %126, align 4, !dbg !6550
  %127 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6551
  %fflags189 = getelementptr inbounds %struct.us_data, %struct.us_data* %127, i32 0, i32 4, !dbg !6553
  %128 = load i64, i64* %fflags189, align 8, !dbg !6553
  %and190 = and i64 %128, 262144, !dbg !6554
  %tobool191 = icmp ne i64 %and190, 0, !dbg !6554
  br i1 %tobool191, label %if.then192, label %if.end196, !dbg !6555

if.then192:                                       ; preds = %if.else184
  %129 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6556
  %no_read_disc_info = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %129, i32 0, i32 39, !dbg !6557
  %130 = bitcast [6 x i8]* %no_read_disc_info to i48*, !dbg !6557
  %bf.load193 = load i48, i48* %130, align 4, !dbg !6558
  %bf.clear194 = and i48 %bf.load193, -68719476737, !dbg !6558
  %bf.set195 = or i48 %bf.clear194, 68719476736, !dbg !6558
  store i48 %bf.set195, i48* %130, align 4, !dbg !6558
  br label %if.end196, !dbg !6556

if.end196:                                        ; preds = %if.then192, %if.else184
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.end183
  %131 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6559
  %protocol198 = getelementptr inbounds %struct.us_data, %struct.us_data* %131, i32 0, i32 15, !dbg !6561
  %132 = load i8, i8* %protocol198, align 1, !dbg !6561
  %conv199 = zext i8 %132 to i32, !dbg !6559
  %cmp200 = icmp eq i32 %conv199, 1, !dbg !6562
  br i1 %cmp200, label %land.lhs.true207, label %lor.lhs.false202, !dbg !6563

lor.lhs.false202:                                 ; preds = %if.end197
  %133 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6564
  %protocol203 = getelementptr inbounds %struct.us_data, %struct.us_data* %133, i32 0, i32 15, !dbg !6565
  %134 = load i8, i8* %protocol203, align 1, !dbg !6565
  %conv204 = zext i8 %134 to i32, !dbg !6564
  %cmp205 = icmp eq i32 %conv204, 0, !dbg !6566
  br i1 %cmp205, label %land.lhs.true207, label %if.end213, !dbg !6567

land.lhs.true207:                                 ; preds = %lor.lhs.false202, %if.end197
  %135 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6568
  %scsi_level208 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %135, i32 0, i32 23, !dbg !6569
  %136 = load i8, i8* %scsi_level208, align 1, !dbg !6569
  %conv209 = sext i8 %136 to i32, !dbg !6568
  %cmp210 = icmp eq i32 %conv209, 0, !dbg !6570
  br i1 %cmp210, label %if.then212, label %if.end213, !dbg !6571

if.then212:                                       ; preds = %land.lhs.true207
  %137 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6572
  %max_lun = getelementptr inbounds %struct.us_data, %struct.us_data* %137, i32 0, i32 16, !dbg !6573
  store i8 0, i8* %max_lun, align 2, !dbg !6574
  br label %if.end213, !dbg !6572

if.end213:                                        ; preds = %if.then212, %land.lhs.true207, %lor.lhs.false202
  %138 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6575
  %fflags214 = getelementptr inbounds %struct.us_data, %struct.us_data* %138, i32 0, i32 4, !dbg !6577
  %139 = load i64, i64* %fflags214, align 8, !dbg !6577
  %and215 = and i64 %139, 128, !dbg !6578
  %tobool216 = icmp ne i64 %and215, 0, !dbg !6578
  br i1 %tobool216, label %if.then217, label %if.end220, !dbg !6579

if.then217:                                       ; preds = %if.end213
  %140 = load %struct.scsi_device*, %struct.scsi_device** %sdev.addr, align 8, !dbg !6580
  %lockable = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %140, i32 0, i32 39, !dbg !6581
  %141 = bitcast [6 x i8]* %lockable to i48*, !dbg !6581
  %bf.load218 = load i48, i48* %141, align 4, !dbg !6582
  %bf.clear219 = and i48 %bf.load218, -9, !dbg !6582
  store i48 %bf.clear219, i48* %141, align 4, !dbg !6582
  br label %if.end220, !dbg !6580

if.end220:                                        ; preds = %if.then217, %if.end213
  ret i32 0, !dbg !6583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @target_alloc(%struct.scsi_target* %starget) #0 !dbg !6584 {
entry:
  %starget.addr = alloca %struct.scsi_target*, align 8
  %us = alloca %struct.us_data*, align 8
  store %struct.scsi_target* %starget, %struct.scsi_target** %starget.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_target** %starget.addr, metadata !6585, metadata !DIExpression()), !dbg !6586
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6587, metadata !DIExpression()), !dbg !6588
  %0 = load %struct.scsi_target*, %struct.scsi_target** %starget.addr, align 8, !dbg !6589
  %dev = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %0, i32 0, i32 3, !dbg !6590
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !6591
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !6591
  %call = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %1) #8, !dbg !6592
  %call1 = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %call) #8, !dbg !6593
  store %struct.us_data* %call1, %struct.us_data** %us, align 8, !dbg !6588
  %2 = load %struct.scsi_target*, %struct.scsi_target** %starget.addr, align 8, !dbg !6594
  %no_report_luns = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %2, i32 0, i32 7, !dbg !6595
  %bf.load = load i8, i8* %no_report_luns, align 4, !dbg !6596
  %bf.clear = and i8 %bf.load, -9, !dbg !6596
  %bf.set = or i8 %bf.clear, 8, !dbg !6596
  store i8 %bf.set, i8* %no_report_luns, align 4, !dbg !6596
  %3 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6597
  %subclass = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 14, !dbg !6599
  %4 = load i8, i8* %subclass, align 4, !dbg !6599
  %conv = zext i8 %4 to i32, !dbg !6597
  %cmp = icmp eq i32 %conv, 4, !dbg !6600
  br i1 %cmp, label %if.then, label %if.end, !dbg !6601

if.then:                                          ; preds = %entry
  %5 = load %struct.scsi_target*, %struct.scsi_target** %starget.addr, align 8, !dbg !6602
  %pdt_1f_for_no_lun = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %5, i32 0, i32 7, !dbg !6603
  %bf.load3 = load i8, i8* %pdt_1f_for_no_lun, align 4, !dbg !6604
  %bf.clear4 = and i8 %bf.load3, -5, !dbg !6604
  %bf.set5 = or i8 %bf.clear4, 4, !dbg !6604
  store i8 %bf.set5, i8* %pdt_1f_for_no_lun, align 4, !dbg !6604
  br label %if.end, !dbg !6602

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @show_info(%struct.seq_file* %m, %struct.Scsi_Host* %host) #0 !dbg !6606 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %host.addr = alloca %struct.Scsi_Host*, align 8
  %us = alloca %struct.us_data*, align 8
  %string = alloca i8*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !6607, metadata !DIExpression()), !dbg !6608
  store %struct.Scsi_Host* %host, %struct.Scsi_Host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host.addr, metadata !6609, metadata !DIExpression()), !dbg !6610
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6611, metadata !DIExpression()), !dbg !6612
  %0 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host.addr, align 8, !dbg !6613
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %0) #8, !dbg !6614
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6612
  call void @llvm.dbg.declare(metadata i8** %string, metadata !6615, metadata !DIExpression()), !dbg !6616
  %1 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6617
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host.addr, align 8, !dbg !6618
  %host_no = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %2, i32 0, i32 16, !dbg !6619
  %3 = load i32, i32* %host_no, align 4, !dbg !6619
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %3) #8, !dbg !6620
  %4 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6621
  %pusb_dev = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 1, !dbg !6623
  %5 = load %struct.usb_device*, %struct.usb_device** %pusb_dev, align 8, !dbg !6623
  %manufacturer = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 32, !dbg !6624
  %6 = load i8*, i8** %manufacturer, align 8, !dbg !6624
  %tobool = icmp ne i8* %6, null, !dbg !6621
  br i1 %tobool, label %if.then, label %if.else, !dbg !6625

if.then:                                          ; preds = %entry
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6626
  %pusb_dev1 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 1, !dbg !6627
  %8 = load %struct.usb_device*, %struct.usb_device** %pusb_dev1, align 8, !dbg !6627
  %manufacturer2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 32, !dbg !6628
  %9 = load i8*, i8** %manufacturer2, align 8, !dbg !6628
  store i8* %9, i8** %string, align 8, !dbg !6629
  br label %if.end8, !dbg !6630

if.else:                                          ; preds = %entry
  %10 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6631
  %unusual_dev = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 3, !dbg !6633
  %11 = load %struct.us_unusual_dev*, %struct.us_unusual_dev** %unusual_dev, align 8, !dbg !6633
  %vendorName = getelementptr inbounds %struct.us_unusual_dev, %struct.us_unusual_dev* %11, i32 0, i32 0, !dbg !6634
  %12 = load i8*, i8** %vendorName, align 8, !dbg !6634
  %tobool3 = icmp ne i8* %12, null, !dbg !6631
  br i1 %tobool3, label %if.then4, label %if.else7, !dbg !6635

if.then4:                                         ; preds = %if.else
  %13 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6636
  %unusual_dev5 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 3, !dbg !6637
  %14 = load %struct.us_unusual_dev*, %struct.us_unusual_dev** %unusual_dev5, align 8, !dbg !6637
  %vendorName6 = getelementptr inbounds %struct.us_unusual_dev, %struct.us_unusual_dev* %14, i32 0, i32 0, !dbg !6638
  %15 = load i8*, i8** %vendorName6, align 8, !dbg !6638
  store i8* %15, i8** %string, align 8, !dbg !6639
  br label %if.end, !dbg !6640

if.else7:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %string, align 8, !dbg !6641
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %16 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6642
  %17 = load i8*, i8** %string, align 8, !dbg !6643
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %17) #8, !dbg !6644
  %18 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6645
  %pusb_dev9 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1, !dbg !6647
  %19 = load %struct.usb_device*, %struct.usb_device** %pusb_dev9, align 8, !dbg !6647
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 31, !dbg !6648
  %20 = load i8*, i8** %product, align 8, !dbg !6648
  %tobool10 = icmp ne i8* %20, null, !dbg !6645
  br i1 %tobool10, label %if.then11, label %if.else14, !dbg !6649

if.then11:                                        ; preds = %if.end8
  %21 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6650
  %pusb_dev12 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1, !dbg !6651
  %22 = load %struct.usb_device*, %struct.usb_device** %pusb_dev12, align 8, !dbg !6651
  %product13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 31, !dbg !6652
  %23 = load i8*, i8** %product13, align 8, !dbg !6652
  store i8* %23, i8** %string, align 8, !dbg !6653
  br label %if.end22, !dbg !6654

if.else14:                                        ; preds = %if.end8
  %24 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6655
  %unusual_dev15 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 3, !dbg !6657
  %25 = load %struct.us_unusual_dev*, %struct.us_unusual_dev** %unusual_dev15, align 8, !dbg !6657
  %productName = getelementptr inbounds %struct.us_unusual_dev, %struct.us_unusual_dev* %25, i32 0, i32 1, !dbg !6658
  %26 = load i8*, i8** %productName, align 8, !dbg !6658
  %tobool16 = icmp ne i8* %26, null, !dbg !6655
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !6659

if.then17:                                        ; preds = %if.else14
  %27 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6660
  %unusual_dev18 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 3, !dbg !6661
  %28 = load %struct.us_unusual_dev*, %struct.us_unusual_dev** %unusual_dev18, align 8, !dbg !6661
  %productName19 = getelementptr inbounds %struct.us_unusual_dev, %struct.us_unusual_dev* %28, i32 0, i32 1, !dbg !6662
  %29 = load i8*, i8** %productName19, align 8, !dbg !6662
  store i8* %29, i8** %string, align 8, !dbg !6663
  br label %if.end21, !dbg !6664

if.else20:                                        ; preds = %if.else14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %string, align 8, !dbg !6665
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  %30 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6666
  %31 = load i8*, i8** %string, align 8, !dbg !6667
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %31) #8, !dbg !6668
  %32 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6669
  %pusb_dev23 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 1, !dbg !6671
  %33 = load %struct.usb_device*, %struct.usb_device** %pusb_dev23, align 8, !dbg !6671
  %serial = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 33, !dbg !6672
  %34 = load i8*, i8** %serial, align 8, !dbg !6672
  %tobool24 = icmp ne i8* %34, null, !dbg !6669
  br i1 %tobool24, label %if.then25, label %if.else28, !dbg !6673

if.then25:                                        ; preds = %if.end22
  %35 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6674
  %pusb_dev26 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 1, !dbg !6675
  %36 = load %struct.usb_device*, %struct.usb_device** %pusb_dev26, align 8, !dbg !6675
  %serial27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 33, !dbg !6676
  %37 = load i8*, i8** %serial27, align 8, !dbg !6676
  store i8* %37, i8** %string, align 8, !dbg !6677
  br label %if.end29, !dbg !6678

if.else28:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %string, align 8, !dbg !6679
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then25
  %38 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6680
  %39 = load i8*, i8** %string, align 8, !dbg !6681
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %39) #8, !dbg !6682
  %40 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6683
  %41 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6684
  %protocol_name = getelementptr inbounds %struct.us_data, %struct.us_data* %41, i32 0, i32 12, !dbg !6685
  %42 = load i8*, i8** %protocol_name, align 8, !dbg !6685
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %42) #8, !dbg !6686
  %43 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6687
  %44 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6688
  %transport_name = getelementptr inbounds %struct.us_data, %struct.us_data* %44, i32 0, i32 11, !dbg !6689
  %45 = load i8*, i8** %transport_name, align 8, !dbg !6689
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %45) #8, !dbg !6690
  %46 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6691
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !6692
  %47 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6693
  %fflags = getelementptr inbounds %struct.us_data, %struct.us_data* %47, i32 0, i32 4, !dbg !6693
  %48 = load i64, i64* %fflags, align 8, !dbg !6693
  %and = and i64 %48, 1, !dbg !6693
  %tobool30 = icmp ne i64 %and, 0, !dbg !6693
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6695

if.then31:                                        ; preds = %if.end29
  %49 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6693
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !6693
  br label %if.end32, !dbg !6693

if.end32:                                         ; preds = %if.then31, %if.end29
  %50 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6696
  %fflags33 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 4, !dbg !6696
  %51 = load i64, i64* %fflags33, align 8, !dbg !6696
  %and34 = and i64 %51, 2, !dbg !6696
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6696
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6695

if.then36:                                        ; preds = %if.end32
  %52 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6696
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6696
  br label %if.end37, !dbg !6696

if.end37:                                         ; preds = %if.then36, %if.end32
  %53 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6698
  %fflags38 = getelementptr inbounds %struct.us_data, %struct.us_data* %53, i32 0, i32 4, !dbg !6698
  %54 = load i64, i64* %fflags38, align 8, !dbg !6698
  %and39 = and i64 %54, 4, !dbg !6698
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6698
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6695

if.then41:                                        ; preds = %if.end37
  %55 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6698
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !6698
  br label %if.end42, !dbg !6698

if.end42:                                         ; preds = %if.then41, %if.end37
  %56 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6700
  %fflags43 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 4, !dbg !6700
  %57 = load i64, i64* %fflags43, align 8, !dbg !6700
  %and44 = and i64 %57, 8, !dbg !6700
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6700
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6695

if.then46:                                        ; preds = %if.end42
  %58 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6700
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !6700
  br label %if.end47, !dbg !6700

if.end47:                                         ; preds = %if.then46, %if.end42
  %59 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6702
  %fflags48 = getelementptr inbounds %struct.us_data, %struct.us_data* %59, i32 0, i32 4, !dbg !6702
  %60 = load i64, i64* %fflags48, align 8, !dbg !6702
  %and49 = and i64 %60, 16, !dbg !6702
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6702
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !6695

if.then51:                                        ; preds = %if.end47
  %61 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6702
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !6702
  br label %if.end52, !dbg !6702

if.end52:                                         ; preds = %if.then51, %if.end47
  %62 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6704
  %fflags53 = getelementptr inbounds %struct.us_data, %struct.us_data* %62, i32 0, i32 4, !dbg !6704
  %63 = load i64, i64* %fflags53, align 8, !dbg !6704
  %and54 = and i64 %63, 32, !dbg !6704
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6704
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !6695

if.then56:                                        ; preds = %if.end52
  %64 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6704
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !6704
  br label %if.end57, !dbg !6704

if.end57:                                         ; preds = %if.then56, %if.end52
  %65 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6706
  %fflags58 = getelementptr inbounds %struct.us_data, %struct.us_data* %65, i32 0, i32 4, !dbg !6706
  %66 = load i64, i64* %fflags58, align 8, !dbg !6706
  %and59 = and i64 %66, 64, !dbg !6706
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6706
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !6695

if.then61:                                        ; preds = %if.end57
  %67 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6706
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !6706
  br label %if.end62, !dbg !6706

if.end62:                                         ; preds = %if.then61, %if.end57
  %68 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6708
  %fflags63 = getelementptr inbounds %struct.us_data, %struct.us_data* %68, i32 0, i32 4, !dbg !6708
  %69 = load i64, i64* %fflags63, align 8, !dbg !6708
  %and64 = and i64 %69, 128, !dbg !6708
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6708
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !6695

if.then66:                                        ; preds = %if.end62
  %70 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6708
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !6708
  br label %if.end67, !dbg !6708

if.end67:                                         ; preds = %if.then66, %if.end62
  %71 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6710
  %fflags68 = getelementptr inbounds %struct.us_data, %struct.us_data* %71, i32 0, i32 4, !dbg !6710
  %72 = load i64, i64* %fflags68, align 8, !dbg !6710
  %and69 = and i64 %72, 256, !dbg !6710
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6710
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !6695

if.then71:                                        ; preds = %if.end67
  %73 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6710
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !6710
  br label %if.end72, !dbg !6710

if.end72:                                         ; preds = %if.then71, %if.end67
  %74 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6712
  %fflags73 = getelementptr inbounds %struct.us_data, %struct.us_data* %74, i32 0, i32 4, !dbg !6712
  %75 = load i64, i64* %fflags73, align 8, !dbg !6712
  %and74 = and i64 %75, 512, !dbg !6712
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6712
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !6695

if.then76:                                        ; preds = %if.end72
  %76 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6712
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !6712
  br label %if.end77, !dbg !6712

if.end77:                                         ; preds = %if.then76, %if.end72
  %77 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6714
  %fflags78 = getelementptr inbounds %struct.us_data, %struct.us_data* %77, i32 0, i32 4, !dbg !6714
  %78 = load i64, i64* %fflags78, align 8, !dbg !6714
  %and79 = and i64 %78, 1024, !dbg !6714
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6714
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !6695

if.then81:                                        ; preds = %if.end77
  %79 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6714
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !6714
  br label %if.end82, !dbg !6714

if.end82:                                         ; preds = %if.then81, %if.end77
  %80 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6716
  %fflags83 = getelementptr inbounds %struct.us_data, %struct.us_data* %80, i32 0, i32 4, !dbg !6716
  %81 = load i64, i64* %fflags83, align 8, !dbg !6716
  %and84 = and i64 %81, 2048, !dbg !6716
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6716
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !6695

if.then86:                                        ; preds = %if.end82
  %82 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6716
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !6716
  br label %if.end87, !dbg !6716

if.end87:                                         ; preds = %if.then86, %if.end82
  %83 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6718
  %fflags88 = getelementptr inbounds %struct.us_data, %struct.us_data* %83, i32 0, i32 4, !dbg !6718
  %84 = load i64, i64* %fflags88, align 8, !dbg !6718
  %and89 = and i64 %84, 4096, !dbg !6718
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6718
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !6695

if.then91:                                        ; preds = %if.end87
  %85 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6718
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !6718
  br label %if.end92, !dbg !6718

if.end92:                                         ; preds = %if.then91, %if.end87
  %86 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6720
  %fflags93 = getelementptr inbounds %struct.us_data, %struct.us_data* %86, i32 0, i32 4, !dbg !6720
  %87 = load i64, i64* %fflags93, align 8, !dbg !6720
  %and94 = and i64 %87, 8192, !dbg !6720
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6720
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !6695

if.then96:                                        ; preds = %if.end92
  %88 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6720
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !6720
  br label %if.end97, !dbg !6720

if.end97:                                         ; preds = %if.then96, %if.end92
  %89 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6722
  %fflags98 = getelementptr inbounds %struct.us_data, %struct.us_data* %89, i32 0, i32 4, !dbg !6722
  %90 = load i64, i64* %fflags98, align 8, !dbg !6722
  %and99 = and i64 %90, 16384, !dbg !6722
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6722
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !6695

if.then101:                                       ; preds = %if.end97
  %91 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6722
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !6722
  br label %if.end102, !dbg !6722

if.end102:                                        ; preds = %if.then101, %if.end97
  %92 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6724
  %fflags103 = getelementptr inbounds %struct.us_data, %struct.us_data* %92, i32 0, i32 4, !dbg !6724
  %93 = load i64, i64* %fflags103, align 8, !dbg !6724
  %and104 = and i64 %93, 32768, !dbg !6724
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6724
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !6695

if.then106:                                       ; preds = %if.end102
  %94 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6724
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !6724
  br label %if.end107, !dbg !6724

if.end107:                                        ; preds = %if.then106, %if.end102
  %95 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6726
  %fflags108 = getelementptr inbounds %struct.us_data, %struct.us_data* %95, i32 0, i32 4, !dbg !6726
  %96 = load i64, i64* %fflags108, align 8, !dbg !6726
  %and109 = and i64 %96, 65536, !dbg !6726
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6726
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !6695

if.then111:                                       ; preds = %if.end107
  %97 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6726
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !6726
  br label %if.end112, !dbg !6726

if.end112:                                        ; preds = %if.then111, %if.end107
  %98 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6728
  %fflags113 = getelementptr inbounds %struct.us_data, %struct.us_data* %98, i32 0, i32 4, !dbg !6728
  %99 = load i64, i64* %fflags113, align 8, !dbg !6728
  %and114 = and i64 %99, 131072, !dbg !6728
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6728
  br i1 %tobool115, label %if.then116, label %if.end117, !dbg !6695

if.then116:                                       ; preds = %if.end112
  %100 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6728
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !6728
  br label %if.end117, !dbg !6728

if.end117:                                        ; preds = %if.then116, %if.end112
  %101 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6730
  %fflags118 = getelementptr inbounds %struct.us_data, %struct.us_data* %101, i32 0, i32 4, !dbg !6730
  %102 = load i64, i64* %fflags118, align 8, !dbg !6730
  %and119 = and i64 %102, 262144, !dbg !6730
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6730
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !6695

if.then121:                                       ; preds = %if.end117
  %103 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6730
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !6730
  br label %if.end122, !dbg !6730

if.end122:                                        ; preds = %if.then121, %if.end117
  %104 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6732
  %fflags123 = getelementptr inbounds %struct.us_data, %struct.us_data* %104, i32 0, i32 4, !dbg !6732
  %105 = load i64, i64* %fflags123, align 8, !dbg !6732
  %and124 = and i64 %105, 524288, !dbg !6732
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6732
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !6695

if.then126:                                       ; preds = %if.end122
  %106 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6732
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !6732
  br label %if.end127, !dbg !6732

if.end127:                                        ; preds = %if.then126, %if.end122
  %107 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6734
  %fflags128 = getelementptr inbounds %struct.us_data, %struct.us_data* %107, i32 0, i32 4, !dbg !6734
  %108 = load i64, i64* %fflags128, align 8, !dbg !6734
  %and129 = and i64 %108, 1048576, !dbg !6734
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6734
  br i1 %tobool130, label %if.then131, label %if.end132, !dbg !6695

if.then131:                                       ; preds = %if.end127
  %109 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6734
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !6734
  br label %if.end132, !dbg !6734

if.end132:                                        ; preds = %if.then131, %if.end127
  %110 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6736
  %fflags133 = getelementptr inbounds %struct.us_data, %struct.us_data* %110, i32 0, i32 4, !dbg !6736
  %111 = load i64, i64* %fflags133, align 8, !dbg !6736
  %and134 = and i64 %111, 2097152, !dbg !6736
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6736
  br i1 %tobool135, label %if.then136, label %if.end137, !dbg !6695

if.then136:                                       ; preds = %if.end132
  %112 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6736
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !6736
  br label %if.end137, !dbg !6736

if.end137:                                        ; preds = %if.then136, %if.end132
  %113 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6738
  %fflags138 = getelementptr inbounds %struct.us_data, %struct.us_data* %113, i32 0, i32 4, !dbg !6738
  %114 = load i64, i64* %fflags138, align 8, !dbg !6738
  %and139 = and i64 %114, 4194304, !dbg !6738
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6738
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !6695

if.then141:                                       ; preds = %if.end137
  %115 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6738
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !6738
  br label %if.end142, !dbg !6738

if.end142:                                        ; preds = %if.then141, %if.end137
  %116 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6740
  %fflags143 = getelementptr inbounds %struct.us_data, %struct.us_data* %116, i32 0, i32 4, !dbg !6740
  %117 = load i64, i64* %fflags143, align 8, !dbg !6740
  %and144 = and i64 %117, 8388608, !dbg !6740
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6740
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !6695

if.then146:                                       ; preds = %if.end142
  %118 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6740
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !6740
  br label %if.end147, !dbg !6740

if.end147:                                        ; preds = %if.then146, %if.end142
  %119 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6742
  %fflags148 = getelementptr inbounds %struct.us_data, %struct.us_data* %119, i32 0, i32 4, !dbg !6742
  %120 = load i64, i64* %fflags148, align 8, !dbg !6742
  %and149 = and i64 %120, 16777216, !dbg !6742
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6742
  br i1 %tobool150, label %if.then151, label %if.end152, !dbg !6695

if.then151:                                       ; preds = %if.end147
  %121 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6742
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !6742
  br label %if.end152, !dbg !6742

if.end152:                                        ; preds = %if.then151, %if.end147
  %122 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6744
  %fflags153 = getelementptr inbounds %struct.us_data, %struct.us_data* %122, i32 0, i32 4, !dbg !6744
  %123 = load i64, i64* %fflags153, align 8, !dbg !6744
  %and154 = and i64 %123, 33554432, !dbg !6744
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6744
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !6695

if.then156:                                       ; preds = %if.end152
  %124 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6744
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !6744
  br label %if.end157, !dbg !6744

if.end157:                                        ; preds = %if.then156, %if.end152
  %125 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6746
  %fflags158 = getelementptr inbounds %struct.us_data, %struct.us_data* %125, i32 0, i32 4, !dbg !6746
  %126 = load i64, i64* %fflags158, align 8, !dbg !6746
  %and159 = and i64 %126, 67108864, !dbg !6746
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6746
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !6695

if.then161:                                       ; preds = %if.end157
  %127 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6746
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !6746
  br label %if.end162, !dbg !6746

if.end162:                                        ; preds = %if.then161, %if.end157
  %128 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6748
  %fflags163 = getelementptr inbounds %struct.us_data, %struct.us_data* %128, i32 0, i32 4, !dbg !6748
  %129 = load i64, i64* %fflags163, align 8, !dbg !6748
  %and164 = and i64 %129, 134217728, !dbg !6748
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6748
  br i1 %tobool165, label %if.then166, label %if.end167, !dbg !6695

if.then166:                                       ; preds = %if.end162
  %130 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6748
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !6748
  br label %if.end167, !dbg !6748

if.end167:                                        ; preds = %if.then166, %if.end162
  %131 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6750
  %fflags168 = getelementptr inbounds %struct.us_data, %struct.us_data* %131, i32 0, i32 4, !dbg !6750
  %132 = load i64, i64* %fflags168, align 8, !dbg !6750
  %and169 = and i64 %132, 268435456, !dbg !6750
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6750
  br i1 %tobool170, label %if.then171, label %if.end172, !dbg !6695

if.then171:                                       ; preds = %if.end167
  %133 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6750
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !6750
  br label %if.end172, !dbg !6750

if.end172:                                        ; preds = %if.then171, %if.end167
  %134 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6752
  %fflags173 = getelementptr inbounds %struct.us_data, %struct.us_data* %134, i32 0, i32 4, !dbg !6752
  %135 = load i64, i64* %fflags173, align 8, !dbg !6752
  %and174 = and i64 %135, 536870912, !dbg !6752
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6752
  br i1 %tobool175, label %if.then176, label %if.end177, !dbg !6695

if.then176:                                       ; preds = %if.end172
  %136 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6752
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !6752
  br label %if.end177, !dbg !6752

if.end177:                                        ; preds = %if.then176, %if.end172
  %137 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !6754
  call void @seq_putc(%struct.seq_file* %137, i8 signext 10) #8, !dbg !6755
  ret i32 0, !dbg !6756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @write_info(%struct.Scsi_Host* %host, i8* %buffer, i32 %length) #0 !dbg !6757 {
entry:
  %host.addr = alloca %struct.Scsi_Host*, align 8
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  store %struct.Scsi_Host* %host, %struct.Scsi_Host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !6760, metadata !DIExpression()), !dbg !6761
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !6762, metadata !DIExpression()), !dbg !6763
  %0 = load i32, i32* %length.addr, align 4, !dbg !6764
  ret i32 %0, !dbg !6765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.us_data* @host_to_us(%struct.Scsi_Host* %host) #0 !dbg !6766 {
entry:
  %host.addr = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %host, %struct.Scsi_Host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Scsi_Host** %host.addr, metadata !6769, metadata !DIExpression()), !dbg !6770
  %0 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host.addr, align 8, !dbg !6771
  %hostdata = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %0, i32 0, i32 51, !dbg !6772
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %hostdata, i64 0, i64 0, !dbg !6771
  %1 = bitcast i64* %arraydecay to %struct.us_data*, !dbg !6773
  ret %struct.us_data* %1, !dbg !6774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6775 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6778, metadata !DIExpression()), !dbg !6779
  %call = call i64 @arch_local_save_flags() #8, !dbg !6780
  store i64 %call, i64* %f, align 8, !dbg !6781
  call void @arch_local_irq_disable() #8, !dbg !6782
  %0 = load i64, i64* %f, align 8, !dbg !6783
  ret i64 %0, !dbg !6784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queuecommand_lck(%struct.scsi_cmnd* %srb, void (%struct.scsi_cmnd*)* %done) #0 !dbg !6785 {
entry:
  %retval = alloca i32, align 4
  %srb.addr = alloca %struct.scsi_cmnd*, align 8
  %done.addr = alloca void (%struct.scsi_cmnd*)*, align 8
  %us = alloca %struct.us_data*, align 8
  store %struct.scsi_cmnd* %srb, %struct.scsi_cmnd** %srb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_cmnd** %srb.addr, metadata !6788, metadata !DIExpression()), !dbg !6789
  store void (%struct.scsi_cmnd*)* %done, void (%struct.scsi_cmnd*)** %done.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.scsi_cmnd*)** %done.addr, metadata !6790, metadata !DIExpression()), !dbg !6791
  call void @llvm.dbg.declare(metadata %struct.us_data** %us, metadata !6792, metadata !DIExpression()), !dbg !6793
  %0 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6794
  %device = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %0, i32 0, i32 1, !dbg !6795
  %1 = load %struct.scsi_device*, %struct.scsi_device** %device, align 8, !dbg !6795
  %host = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %1, i32 0, i32 0, !dbg !6796
  %2 = load %struct.Scsi_Host*, %struct.Scsi_Host** %host, align 8, !dbg !6796
  %call = call %struct.us_data* @host_to_us(%struct.Scsi_Host* %2) #8, !dbg !6797
  store %struct.us_data* %call, %struct.us_data** %us, align 8, !dbg !6793
  %3 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6798
  %srb1 = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 22, !dbg !6800
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb1, align 8, !dbg !6800
  %cmp = icmp ne %struct.scsi_cmnd* %4, null, !dbg !6801
  br i1 %cmp, label %if.then, label %if.end, !dbg !6802

if.then:                                          ; preds = %entry
  %5 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6803
  %pusb_intf = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 2, !dbg !6803
  %6 = load %struct.usb_interface*, %struct.usb_interface** %pusb_intf, align 8, !dbg !6803
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 7, !dbg !6803
  %7 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6803
  %srb2 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 22, !dbg !6803
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb2, align 8, !dbg !6803
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.queuecommand_lck, i64 0, i64 0), %struct.scsi_cmnd* %8) #10, !dbg !6803
  store i32 4181, i32* %retval, align 4, !dbg !6805
  br label %return, !dbg !6805

if.end:                                           ; preds = %entry
  %9 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6806
  %dflags = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 5, !dbg !6808
  %call3 = call zeroext i1 @test_bit(i64 3, i64* %dflags) #8, !dbg !6809
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6810

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !6811

do.body:                                          ; preds = %if.then4
  br label %do.end, !dbg !6813

do.end:                                           ; preds = %do.body
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6815
  %result = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 24, !dbg !6816
  store i32 65536, i32* %result, align 8, !dbg !6817
  %11 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %done.addr, align 8, !dbg !6818
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6819
  call void %11(%struct.scsi_cmnd* %12) #8, !dbg !6818
  store i32 0, i32* %retval, align 4, !dbg !6820
  br label %return, !dbg !6820

if.end5:                                          ; preds = %if.end
  %13 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6821
  %fflags = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 4, !dbg !6823
  %14 = load i64, i64* %fflags, align 8, !dbg !6823
  %and = and i64 %14, 33554432, !dbg !6824
  %tobool = icmp ne i64 %and, 0, !dbg !6824
  br i1 %tobool, label %land.lhs.true, label %if.end15, !dbg !6825

land.lhs.true:                                    ; preds = %if.end5
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6826
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 14, !dbg !6827
  %16 = load i8*, i8** %cmnd, align 8, !dbg !6827
  %arrayidx = getelementptr i8, i8* %16, i64 0, !dbg !6826
  %17 = load i8, i8* %arrayidx, align 1, !dbg !6826
  %conv = zext i8 %17 to i32, !dbg !6826
  %cmp6 = icmp eq i32 %conv, 161, !dbg !6828
  br i1 %cmp6, label %if.then13, label %lor.lhs.false, !dbg !6829

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6830
  %cmnd8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 14, !dbg !6831
  %19 = load i8*, i8** %cmnd8, align 8, !dbg !6831
  %arrayidx9 = getelementptr i8, i8* %19, i64 0, !dbg !6830
  %20 = load i8, i8* %arrayidx9, align 1, !dbg !6830
  %conv10 = zext i8 %20 to i32, !dbg !6830
  %cmp11 = icmp eq i32 %conv10, 133, !dbg !6832
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !6833

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6834
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 20, !dbg !6836
  %22 = load i8*, i8** %sense_buffer, align 8, !dbg !6836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @usb_stor_sense_invalidCDB, i64 0, i64 0), i64 18, i1 false), !dbg !6837
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6838
  %result14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 24, !dbg !6839
  store i32 2, i32* %result14, align 8, !dbg !6840
  %24 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %done.addr, align 8, !dbg !6841
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6842
  call void %24(%struct.scsi_cmnd* %25) #8, !dbg !6841
  store i32 0, i32* %retval, align 4, !dbg !6843
  br label %return, !dbg !6843

if.end15:                                         ; preds = %lor.lhs.false, %if.end5
  %26 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %done.addr, align 8, !dbg !6844
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6845
  %scsi_done = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 21, !dbg !6846
  store void (%struct.scsi_cmnd*)* %26, void (%struct.scsi_cmnd*)** %scsi_done, align 8, !dbg !6847
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %srb.addr, align 8, !dbg !6848
  %29 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6849
  %srb16 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 22, !dbg !6850
  store %struct.scsi_cmnd* %28, %struct.scsi_cmnd** %srb16, align 8, !dbg !6851
  %30 = load %struct.us_data*, %struct.us_data** %us, align 8, !dbg !6852
  %cmnd_ready = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 31, !dbg !6853
  call void @complete(%struct.completion* %cmnd_ready) #8, !dbg !6854
  store i32 0, i32* %retval, align 4, !dbg !6855
  br label %return, !dbg !6855

return:                                           ; preds = %if.end15, %if.then13, %do.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !6856
  ret i32 %31, !dbg !6856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6857 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6858, metadata !DIExpression()), !dbg !6860
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6861, metadata !DIExpression()), !dbg !6860
  %0 = load i64, i64* %__edi, align 8, !dbg !6860
  store i64 %0, i64* %__edi, align 8, !dbg !6860
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6862, metadata !DIExpression()), !dbg !6860
  %1 = load i64, i64* %__esi, align 8, !dbg !6860
  store i64 %1, i64* %__esi, align 8, !dbg !6860
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6863, metadata !DIExpression()), !dbg !6860
  %2 = load i64, i64* %__edx, align 8, !dbg !6860
  store i64 %2, i64* %__edx, align 8, !dbg !6860
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6864, metadata !DIExpression()), !dbg !6860
  %3 = load i64, i64* %__ecx, align 8, !dbg !6860
  store i64 %3, i64* %__ecx, align 8, !dbg !6860
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6865, metadata !DIExpression()), !dbg !6860
  %4 = load i64, i64* %__eax, align 8, !dbg !6860
  store i64 %4, i64* %__eax, align 8, !dbg !6860
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6860
  %6 = call i64 @llvm.read_register.i64(metadata !5959), !dbg !6866
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !6866, !srcloc !6869
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6866
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6866
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6866
  call void @llvm.write_register.i64(metadata !5959, i64 %asmresult1), !dbg !6866
  %8 = load i64, i64* %__eax, align 8, !dbg !6866
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6870, metadata !DIExpression()), !dbg !6872
  store i64 -1, i64* %__mask, align 8, !dbg !6872
  %9 = load i64, i64* %__mask, align 8, !dbg !6872
  store i64 %9, i64* %tmp, align 8, !dbg !6872
  %10 = load i64, i64* %tmp, align 8, !dbg !6872
  %and = and i64 %8, %10, !dbg !6866
  store i64 %and, i64* %__ret, align 8, !dbg !6866
  %11 = load i64, i64* %__ret, align 8, !dbg !6860
  store i64 %11, i64* %tmp2, align 8, !dbg !6873
  %12 = load i64, i64* %tmp2, align 8, !dbg !6860
  ret i64 %12, !dbg !6874
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !6875 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6882, metadata !DIExpression()), !dbg !6885
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6887, metadata !DIExpression()), !dbg !6888
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6889, metadata !DIExpression()), !dbg !6890
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6891, metadata !DIExpression()), !dbg !6893
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6895, metadata !DIExpression()), !dbg !6896
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6897, metadata !DIExpression()), !dbg !6905
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6907, metadata !DIExpression()), !dbg !6908
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6909, metadata !DIExpression()), !dbg !6910
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6911, metadata !DIExpression()), !dbg !6912
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6913
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6914
  %div = sdiv i64 %1, 64, !dbg !6914
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6915
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6913
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6916
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6917
  %conv.i = trunc i64 %4 to i32, !dbg !6917
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !6918
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6919
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6919
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !6919
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6920
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6920
  br i1 %8, label %cond.true, label %cond.false, !dbg !6920

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6920
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6920
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6921
  %and.i = and i64 %11, 63, !dbg !6922
  %shl.i = shl i64 1, %and.i, !dbg !6923
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6924
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6925
  %shr.i = ashr i64 %13, 6, !dbg !6926
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6924
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6924
  %and1.i = and i64 %shl.i, %14, !dbg !6927
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6928
  %conv = zext i1 %cmp.i to i32, !dbg !6920
  br label %cond.end, !dbg !6920

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6920
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6920
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6929
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6930
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #5, !dbg !6931, !srcloc !6932
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6931
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6933
  %tobool.i = trunc i8 %20 to i1, !dbg !6933
  %conv2 = zext i1 %tobool.i to i32, !dbg !6920
  br label %cond.end, !dbg !6920

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6920
  %tobool = icmp ne i32 %cond, 0, !dbg !6920
  ret i1 %tobool, !dbg !6934
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6935 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6939, metadata !DIExpression()), !dbg !6940
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6941, metadata !DIExpression()), !dbg !6942
  ret i1 true, !dbg !6943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6944 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6948, metadata !DIExpression()), !dbg !6949
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6952, metadata !DIExpression()), !dbg !6953
  ret void, !dbg !6954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6955 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6958, metadata !DIExpression()), !dbg !6960
  %0 = load i64, i64* %__edi, align 8, !dbg !6960
  store i64 %0, i64* %__edi, align 8, !dbg !6960
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6961, metadata !DIExpression()), !dbg !6960
  %1 = load i64, i64* %__esi, align 8, !dbg !6960
  store i64 %1, i64* %__esi, align 8, !dbg !6960
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6962, metadata !DIExpression()), !dbg !6960
  %2 = load i64, i64* %__edx, align 8, !dbg !6960
  store i64 %2, i64* %__edx, align 8, !dbg !6960
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6963, metadata !DIExpression()), !dbg !6960
  %3 = load i64, i64* %__ecx, align 8, !dbg !6960
  store i64 %3, i64* %__ecx, align 8, !dbg !6960
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6964, metadata !DIExpression()), !dbg !6960
  %4 = load i64, i64* %__eax, align 8, !dbg !6960
  store i64 %4, i64* %__eax, align 8, !dbg !6960
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6960
  %6 = call i64 @llvm.read_register.i64(metadata !5959), !dbg !6960
  %7 = load i64, i64* %f.addr, align 8, !dbg !6960
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !6960, !srcloc !6965
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6960
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6960
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6960
  call void @llvm.write_register.i64(metadata !5959, i64 %asmresult1), !dbg !6960
  ret void, !dbg !6966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !6967 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6972, metadata !DIExpression()), !dbg !6974
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6976, metadata !DIExpression()), !dbg !6977
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6978, metadata !DIExpression()), !dbg !6980
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6982, metadata !DIExpression()), !dbg !6983
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6984, metadata !DIExpression()), !dbg !6985
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6986, metadata !DIExpression()), !dbg !6987
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6988
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6989
  %div = sdiv i64 %1, 64, !dbg !6989
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6990
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6988
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6991
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6992
  %conv.i = trunc i64 %4 to i32, !dbg !6992
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !6993
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6994
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6994
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !6994
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6995
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6996
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6997
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !6999
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !7000

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !7001
  %12 = bitcast i64* %11 to i8*, !dbg !7001
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !7001
  %shr.i = ashr i64 %13, 3, !dbg !7001
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !7001
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !7003
  %and.i = and i64 %14, 7, !dbg !7003
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !7003
  %shl.i = shl i32 1, %sh_prom.i, !dbg !7003
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #5, !dbg !7004, !srcloc !7005
  br label %arch_set_bit.exit, !dbg !7006

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !7007
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !7009
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #5, !dbg !7010, !srcloc !7011
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !7012
}

; Function Attrs: noredzone
declare dso_local void @usb_stor_stop_transport(%struct.us_data*) #2

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !7013 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7014, metadata !DIExpression()), !dbg !7015
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7016, metadata !DIExpression()), !dbg !7017
  ret i1 true, !dbg !7018
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_stor_port_reset(%struct.us_data*) #2

; Function Attrs: noredzone
declare dso_local void @blk_queue_update_dma_alignment(%struct.request_queue*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queue_max_hw_sectors(%struct.request_queue* %q) #0 !dbg !7019 {
entry:
  %q.addr = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %q, %struct.request_queue** %q.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.request_queue** %q.addr, metadata !7024, metadata !DIExpression()), !dbg !7025
  %0 = load %struct.request_queue*, %struct.request_queue** %q.addr, align 8, !dbg !7026
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i32 0, i32 34, !dbg !7027
  %max_hw_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %limits, i32 0, i32 3, !dbg !7028
  %1 = load i32, i32* %max_hw_sectors, align 8, !dbg !7028
  ret i32 %1, !dbg !7029
}

; Function Attrs: noredzone
declare dso_local void @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @dma_max_mapping_size(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @hcd_uses_dma(%struct.usb_hcd* %hcd) #0 !dbg !7030 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !7033, metadata !DIExpression()), !dbg !7034
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !7035
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %0, i32 0, i32 9, !dbg !7036
  %1 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !7036
  %flags = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %1, i32 0, i32 4, !dbg !7037
  %2 = load i32, i32* %flags, align 8, !dbg !7037
  %and = and i32 %2, 2, !dbg !7038
  %tobool = icmp ne i32 %and, 0, !dbg !7039
  ret i1 %tobool, !dbg !7040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %bus) #0 !dbg !7041 {
entry:
  %bus.addr = alloca %struct.usb_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_hcd*, align 8
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !7044, metadata !DIExpression()), !dbg !7045
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7046, metadata !DIExpression()), !dbg !7048
  %0 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !7048
  %1 = bitcast %struct.usb_bus* %0 to i8*, !dbg !7048
  store i8* %1, i8** %__mptr, align 8, !dbg !7048
  br label %do.body, !dbg !7048

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7049

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !7048
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !7048
  %3 = bitcast i8* %add.ptr to %struct.usb_hcd*, !dbg !7048
  store %struct.usb_hcd* %3, %struct.usb_hcd** %tmp, align 8, !dbg !7049
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %tmp, align 8, !dbg !7048
  ret %struct.usb_hcd* %4, !dbg !7051
}

; Function Attrs: noredzone
declare dso_local void @blk_queue_bounce_limit(%struct.request_queue*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.Scsi_Host* @dev_to_shost(%struct.device* %dev) #0 !dbg !7052 {
entry:
  %retval = alloca %struct.Scsi_Host*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.Scsi_Host*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7055, metadata !DIExpression()), !dbg !7056
  br label %while.cond, !dbg !7057

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7058
  %call = call i32 @scsi_is_host_device(%struct.device* %0) #8, !dbg !7059
  %tobool = icmp ne i32 %call, 0, !dbg !7060
  %lnot = xor i1 %tobool, true, !dbg !7060
  br i1 %lnot, label %while.body, label %while.end, !dbg !7057

while.body:                                       ; preds = %while.cond
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7061
  %parent = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 1, !dbg !7064
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !7064
  %tobool1 = icmp ne %struct.device* %2, null, !dbg !7061
  br i1 %tobool1, label %if.end, label %if.then, !dbg !7065

if.then:                                          ; preds = %while.body
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %retval, align 8, !dbg !7066
  br label %return, !dbg !7066

if.end:                                           ; preds = %while.body
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7067
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 1, !dbg !7068
  %4 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !7068
  store %struct.device* %4, %struct.device** %dev.addr, align 8, !dbg !7069
  br label %while.cond, !dbg !7057, !llvm.loop !7070

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7072, metadata !DIExpression()), !dbg !7074
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7074
  %6 = bitcast %struct.device* %5 to i8*, !dbg !7074
  store i8* %6, i8** %__mptr, align 8, !dbg !7074
  br label %do.body, !dbg !7074

do.body:                                          ; preds = %while.end
  br label %do.end, !dbg !7075

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !7074
  %add.ptr = getelementptr i8, i8* %7, i64 -624, !dbg !7074
  %8 = bitcast i8* %add.ptr to %struct.Scsi_Host*, !dbg !7074
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %tmp, align 8, !dbg !7075
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %tmp, align 8, !dbg !7074
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %retval, align 8, !dbg !7077
  br label %return, !dbg !7077

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %retval, align 8, !dbg !7078
  ret %struct.Scsi_Host* %10, !dbg !7078
}

; Function Attrs: noredzone
declare dso_local i32 @scsi_is_host_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @seq_printf(%struct.seq_file*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @seq_putc(%struct.seq_file*, i8 signext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_sectors_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !7079 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sdev = alloca %struct.scsi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.scsi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7080, metadata !DIExpression()), !dbg !7081
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !7082, metadata !DIExpression()), !dbg !7083
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !7084, metadata !DIExpression()), !dbg !7085
  call void @llvm.dbg.declare(metadata %struct.scsi_device** %sdev, metadata !7086, metadata !DIExpression()), !dbg !7087
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7088, metadata !DIExpression()), !dbg !7090
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7090
  %1 = bitcast %struct.device* %0 to i8*, !dbg !7090
  store i8* %1, i8** %__mptr, align 8, !dbg !7090
  br label %do.body, !dbg !7090

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7091

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !7090
  %add.ptr = getelementptr i8, i8* %2, i64 -368, !dbg !7090
  %3 = bitcast i8* %add.ptr to %struct.scsi_device*, !dbg !7090
  store %struct.scsi_device* %3, %struct.scsi_device** %tmp, align 8, !dbg !7091
  %4 = load %struct.scsi_device*, %struct.scsi_device** %tmp, align 8, !dbg !7090
  store %struct.scsi_device* %4, %struct.scsi_device** %sdev, align 8, !dbg !7087
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !7093
  %6 = load %struct.scsi_device*, %struct.scsi_device** %sdev, align 8, !dbg !7094
  %request_queue = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1, !dbg !7095
  %7 = load %struct.request_queue*, %struct.request_queue** %request_queue, align 8, !dbg !7095
  %call = call i32 @queue_max_hw_sectors(%struct.request_queue* %7) #8, !dbg !7096
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %call) #8, !dbg !7097
  %conv = sext i32 %call1 to i64, !dbg !7097
  ret i64 %conv, !dbg !7098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_sectors_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !7099 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sdev = alloca %struct.scsi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.scsi_device*, align 8
  %ms = alloca i16, align 2
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7100, metadata !DIExpression()), !dbg !7101
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !7102, metadata !DIExpression()), !dbg !7103
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !7104, metadata !DIExpression()), !dbg !7105
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !7106, metadata !DIExpression()), !dbg !7107
  call void @llvm.dbg.declare(metadata %struct.scsi_device** %sdev, metadata !7108, metadata !DIExpression()), !dbg !7109
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7110, metadata !DIExpression()), !dbg !7112
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7112
  %1 = bitcast %struct.device* %0 to i8*, !dbg !7112
  store i8* %1, i8** %__mptr, align 8, !dbg !7112
  br label %do.body, !dbg !7112

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7113

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !7112
  %add.ptr = getelementptr i8, i8* %2, i64 -368, !dbg !7112
  %3 = bitcast i8* %add.ptr to %struct.scsi_device*, !dbg !7112
  store %struct.scsi_device* %3, %struct.scsi_device** %tmp, align 8, !dbg !7113
  %4 = load %struct.scsi_device*, %struct.scsi_device** %tmp, align 8, !dbg !7112
  store %struct.scsi_device* %4, %struct.scsi_device** %sdev, align 8, !dbg !7109
  call void @llvm.dbg.declare(metadata i16* %ms, metadata !7115, metadata !DIExpression()), !dbg !7116
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !7117
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i16* %ms) #8, !dbg !7119
  %cmp = icmp sgt i32 %call, 0, !dbg !7120
  br i1 %cmp, label %if.then, label %if.end, !dbg !7121

if.then:                                          ; preds = %do.end
  %6 = load %struct.scsi_device*, %struct.scsi_device** %sdev, align 8, !dbg !7122
  %request_queue = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1, !dbg !7124
  %7 = load %struct.request_queue*, %struct.request_queue** %request_queue, align 8, !dbg !7124
  %8 = load i16, i16* %ms, align 2, !dbg !7125
  %conv = zext i16 %8 to i32, !dbg !7125
  call void @blk_queue_max_hw_sectors(%struct.request_queue* %7, i32 %conv) #8, !dbg !7126
  %9 = load i64, i64* %count.addr, align 8, !dbg !7127
  store i64 %9, i64* %retval, align 8, !dbg !7128
  br label %return, !dbg !7128

if.end:                                           ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !7129
  br label %return, !dbg !7129

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !7130
  ret i64 %10, !dbg !7130
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5959}
!llvm.module.flags = !{!5960, !5961, !5962, !5963}
!llvm.ident = !{!5964}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usb_stor_host_template", scope: !2, file: !3, line: 600, type: !5958, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !252, globals: !5947, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/storage/scsiglue.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !18, !27, !34, !40, !45, !51, !63, !69, !76, !80, !87, !92, !99, !105, !114, !122, !128, !134, !141, !148, !155, !160, !168, !178, !189, !196, !229, !234, !240, !246}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !6, line: 1156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !6, line: 1146, baseType: !7, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !28, line: 15, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !35, line: 546, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !41, line: 65, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !46, line: 16, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !52, line: 49, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62}
!54 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!58 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!59 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!60 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!61 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!62 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !64, line: 118, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !70, line: 19, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !64, line: 293, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "BLK_EH_DONE", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !81, line: 502, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !64, line: 315, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !93, line: 59, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !100, line: 54, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !106, line: 296, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113}
!108 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !115, line: 9, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!121 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !123, line: 26, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !129, line: 44, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !135, line: 343, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !81, line: 524, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!147 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !149, line: 96, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !149, line: 476, baseType: !7, size: 32, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!159 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_target_state", file: !161, line: 276, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/scsi/scsi_device.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIEnumerator(name: "STARGET_CREATED", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "STARGET_RUNNING", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "STARGET_REMOVE", value: 3, isUnsigned: true)
!166 = !DIEnumerator(name: "STARGET_CREATED_REMOVE", value: 4, isUnsigned: true)
!167 = !DIEnumerator(name: "STARGET_DEL", value: 5, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_host_state", file: !169, line: 514, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/scsi/scsi_host.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172, !173, !174, !175, !176, !177}
!171 = !DIEnumerator(name: "SHOST_CREATED", value: 1, isUnsigned: true)
!172 = !DIEnumerator(name: "SHOST_RUNNING", value: 2, isUnsigned: true)
!173 = !DIEnumerator(name: "SHOST_CANCEL", value: 3, isUnsigned: true)
!174 = !DIEnumerator(name: "SHOST_DEL", value: 4, isUnsigned: true)
!175 = !DIEnumerator(name: "SHOST_RECOVERY", value: 5, isUnsigned: true)
!176 = !DIEnumerator(name: "SHOST_CANCEL_RECOVERY", value: 6, isUnsigned: true)
!177 = !DIEnumerator(name: "SHOST_DEL_RECOVERY", value: 7, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_device_state", file: !161, line: 36, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188}
!180 = !DIEnumerator(name: "SDEV_CREATED", value: 1, isUnsigned: true)
!181 = !DIEnumerator(name: "SDEV_RUNNING", value: 2, isUnsigned: true)
!182 = !DIEnumerator(name: "SDEV_CANCEL", value: 3, isUnsigned: true)
!183 = !DIEnumerator(name: "SDEV_DEL", value: 4, isUnsigned: true)
!184 = !DIEnumerator(name: "SDEV_QUIESCE", value: 5, isUnsigned: true)
!185 = !DIEnumerator(name: "SDEV_OFFLINE", value: 6, isUnsigned: true)
!186 = !DIEnumerator(name: "SDEV_TRANSPORT_OFFLINE", value: 7, isUnsigned: true)
!187 = !DIEnumerator(name: "SDEV_BLOCK", value: 8, isUnsigned: true)
!188 = !DIEnumerator(name: "SDEV_CREATED_BLOCK", value: 9, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !190, line: 5, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 89, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/usb_usual.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!199 = !DIEnumerator(name: "US_FL_SINGLE_LUN", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "US_FL_NEED_OVERRIDE", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "US_FL_SCM_MULT_TARG", value: 4, isUnsigned: true)
!202 = !DIEnumerator(name: "US_FL_FIX_INQUIRY", value: 8, isUnsigned: true)
!203 = !DIEnumerator(name: "US_FL_FIX_CAPACITY", value: 16, isUnsigned: true)
!204 = !DIEnumerator(name: "US_FL_IGNORE_RESIDUE", value: 32, isUnsigned: true)
!205 = !DIEnumerator(name: "US_FL_BULK32", value: 64, isUnsigned: true)
!206 = !DIEnumerator(name: "US_FL_NOT_LOCKABLE", value: 128, isUnsigned: true)
!207 = !DIEnumerator(name: "US_FL_GO_SLOW", value: 256, isUnsigned: true)
!208 = !DIEnumerator(name: "US_FL_NO_WP_DETECT", value: 512, isUnsigned: true)
!209 = !DIEnumerator(name: "US_FL_MAX_SECTORS_64", value: 1024, isUnsigned: true)
!210 = !DIEnumerator(name: "US_FL_IGNORE_DEVICE", value: 2048, isUnsigned: true)
!211 = !DIEnumerator(name: "US_FL_CAPACITY_HEURISTICS", value: 4096, isUnsigned: true)
!212 = !DIEnumerator(name: "US_FL_MAX_SECTORS_MIN", value: 8192, isUnsigned: true)
!213 = !DIEnumerator(name: "US_FL_BULK_IGNORE_TAG", value: 16384, isUnsigned: true)
!214 = !DIEnumerator(name: "US_FL_SANE_SENSE", value: 32768, isUnsigned: true)
!215 = !DIEnumerator(name: "US_FL_CAPACITY_OK", value: 65536, isUnsigned: true)
!216 = !DIEnumerator(name: "US_FL_BAD_SENSE", value: 131072, isUnsigned: true)
!217 = !DIEnumerator(name: "US_FL_NO_READ_DISC_INFO", value: 262144, isUnsigned: true)
!218 = !DIEnumerator(name: "US_FL_NO_READ_CAPACITY_16", value: 524288, isUnsigned: true)
!219 = !DIEnumerator(name: "US_FL_INITIAL_READ10", value: 1048576, isUnsigned: true)
!220 = !DIEnumerator(name: "US_FL_WRITE_CACHE", value: 2097152, isUnsigned: true)
!221 = !DIEnumerator(name: "US_FL_NEEDS_CAP16", value: 4194304, isUnsigned: true)
!222 = !DIEnumerator(name: "US_FL_IGNORE_UAS", value: 8388608, isUnsigned: true)
!223 = !DIEnumerator(name: "US_FL_BROKEN_FUA", value: 16777216, isUnsigned: true)
!224 = !DIEnumerator(name: "US_FL_NO_ATA_1X", value: 33554432, isUnsigned: true)
!225 = !DIEnumerator(name: "US_FL_NO_REPORT_OPCODES", value: 67108864, isUnsigned: true)
!226 = !DIEnumerator(name: "US_FL_MAX_SECTORS_240", value: 134217728, isUnsigned: true)
!227 = !DIEnumerator(name: "US_FL_NO_REPORT_LUNS", value: 268435456, isUnsigned: true)
!228 = !DIEnumerator(name: "US_FL_ALWAYS_SYNC", value: 536870912, isUnsigned: true)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 10, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233}
!232 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !235, line: 11, baseType: !7, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !6, line: 1181, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !247, line: 75, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!250 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!251 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!252 = !{!253, !254, !5288, !313, !5741, !5742, !5744, !4955, !889, !985, !5358, !5745, !4883}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Scsi_Host", file: !169, line: 524, size: 16256, elements: !256)
!256 = !{!257, !264, !265, !266, !282, !284, !302, !303, !4867, !4868, !4869, !5234, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__devices", scope: !255, file: !169, line: 533, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !259, line: 178, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !259, line: 179, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !259, line: 179, baseType: !262, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__targets", scope: !255, file: !169, line: 534, baseType: !258, size: 128, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "starved_list", scope: !255, file: !169, line: 536, baseType: !258, size: 128, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "default_lock", scope: !255, file: !169, line: 538, baseType: !267, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !268, line: 83, baseType: !269)
!268 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !268, line: 71, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 72, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 72, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !272, file: !268, line: 73, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !268, line: 20, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !275, file: !268, line: 21, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !279, line: 25, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 25, elements: !281)
!281 = !{}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "host_lock", scope: !255, file: !169, line: 539, baseType: !283, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mutex", scope: !255, file: !169, line: 541, baseType: !285, size: 192, offset: 448)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !286, line: 53, size: 192, elements: !287)
!286 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !300, !301}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !285, file: !286, line: 54, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !290, line: 13, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !259, line: 175, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 173, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !259, line: 174, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !296, line: 22, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !298, line: 30, baseType: !299)
!298 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !285, file: !286, line: 55, baseType: !267, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !285, file: !286, line: 59, baseType: !258, size: 128, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "eh_cmd_q", scope: !255, file: !169, line: 543, baseType: !258, size: 128, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ehandler", scope: !255, file: !169, line: 544, baseType: !304, size: 64, offset: 768)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !306, line: 640, size: 48640, elements: !307)
!306 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308, !317, !320, !321, !332, !333, !334, !335, !336, !337, !338, !339, !343, !371, !383, !483, !484, !485, !496, !497, !499, !500, !4201, !4202, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4279, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4294, !4295, !4296, !4298, !4299, !4300, !4301, !4302, !4303, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4327, !4332, !4333, !4334, !4335, !4336, !4338, !4341, !4344, !4347, !4350, !4353, !4454, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4500, !4501, !4502, !4503, !4504, !4509, !4510, !4511, !4514, !4515, !4517, !4526, !4529, !4530, !4531, !4534, !4535, !4614, !4615, !4618, !4619, !4622, !4623, !4624, !4628, !4629, !4630, !4643, !4644, !4645, !4655, !4660, !4661, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !305, file: !306, line: 646, baseType: !309, size: 128)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !310, line: 56, size: 128, elements: !311)
!310 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !310, line: 57, baseType: !313, size: 64)
!313 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !309, file: !310, line: 58, baseType: !315, size: 32, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !296, line: 21, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !298, line: 27, baseType: !7)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !306, line: 649, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !319)
!319 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !305, file: !306, line: 657, baseType: !253, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !305, file: !306, line: 658, baseType: !322, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !323, line: 113, baseType: !324)
!323 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !323, line: 111, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !324, file: !323, line: 112, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !259, line: 168, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 166, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !328, file: !259, line: 167, baseType: !331, size: 32)
!331 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 660, baseType: !7, size: 32, offset: 288)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !305, file: !306, line: 661, baseType: !7, size: 32, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !305, file: !306, line: 684, baseType: !331, size: 32, offset: 352)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !305, file: !306, line: 686, baseType: !331, size: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !305, file: !306, line: 687, baseType: !331, size: 32, offset: 416)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !305, file: !306, line: 688, baseType: !331, size: 32, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !305, file: !306, line: 689, baseType: !7, size: 32, offset: 480)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !305, file: !306, line: 691, baseType: !340, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !306, line: 691, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !305, file: !306, line: 692, baseType: !344, size: 832, offset: 576)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !306, line: 451, size: 832, elements: !345)
!345 = !{!346, !351, !359, !360, !361, !365, !366, !367, !368, !369}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !344, file: !306, line: 453, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !306, line: 325, size: 128, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !347, file: !306, line: 326, baseType: !313, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !347, file: !306, line: 327, baseType: !315, size: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !344, file: !306, line: 454, baseType: !352, size: 192, align: 64, offset: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !353, line: 24, size: 192, align: 64, elements: !354)
!353 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !356, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !352, file: !353, line: 25, baseType: !313, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !352, file: !353, line: 26, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !352, file: !353, line: 27, baseType: !357, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !344, file: !306, line: 455, baseType: !258, size: 128, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !344, file: !306, line: 456, baseType: !7, size: 32, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !344, file: !306, line: 458, baseType: !362, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !296, line: 23, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !298, line: 31, baseType: !364)
!364 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !344, file: !306, line: 459, baseType: !362, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !344, file: !306, line: 460, baseType: !362, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !344, file: !306, line: 461, baseType: !362, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !344, file: !306, line: 463, baseType: !362, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !344, file: !306, line: 465, baseType: !370, offset: 832)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !306, line: 415, elements: !281)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !305, file: !306, line: 693, baseType: !372, size: 384, offset: 1408)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !306, line: 489, size: 384, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !380, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !372, file: !306, line: 490, baseType: !258, size: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !372, file: !306, line: 491, baseType: !313, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !372, file: !306, line: 492, baseType: !313, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !372, file: !306, line: 493, baseType: !7, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !372, file: !306, line: 494, baseType: !379, size: 16, offset: 288)
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !372, file: !306, line: 495, baseType: !379, size: 16, offset: 304)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !372, file: !306, line: 497, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !305, file: !306, line: 697, baseType: !384, size: 1792, offset: 1792)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !306, line: 507, size: 1792, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !480, !481}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !384, file: !306, line: 508, baseType: !352, size: 192, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !384, file: !306, line: 515, baseType: !362, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !384, file: !306, line: 516, baseType: !362, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !384, file: !306, line: 517, baseType: !362, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !384, file: !306, line: 518, baseType: !362, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !384, file: !306, line: 519, baseType: !362, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !384, file: !306, line: 526, baseType: !295, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !384, file: !306, line: 527, baseType: !362, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !306, line: 528, baseType: !7, size: 32, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !384, file: !306, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !384, file: !306, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !384, file: !306, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !384, file: !306, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !384, file: !306, line: 563, baseType: !400, size: 512, offset: 704)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !41, line: 118, size: 512, elements: !401)
!401 = !{!402, !410, !411, !416, !473, !477, !478, !479}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !400, file: !41, line: 119, baseType: !403, size: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !404, line: 9, size: 256, elements: !405)
!404 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !403, file: !404, line: 10, baseType: !352, size: 192, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !403, file: !404, line: 11, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !409, line: 29, baseType: !295)
!409 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !400, file: !41, line: 120, baseType: !408, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !400, file: !41, line: 121, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!40, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !400, file: !41, line: 122, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !41, line: 159, size: 512, align: 512, elements: !419)
!419 = !{!420, !441, !442, !446, !456, !457, !468, !472}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !418, file: !41, line: 160, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !41, line: 214, size: 4608, align: 512, elements: !423)
!423 = !{!424, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !422, file: !41, line: 215, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !268, line: 29, baseType: !275)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !422, file: !41, line: 216, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !422, file: !41, line: 217, baseType: !7, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !422, file: !41, line: 218, baseType: !7, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !422, file: !41, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !422, file: !41, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !422, file: !41, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !422, file: !41, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !422, file: !41, line: 233, baseType: !408, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !422, file: !41, line: 234, baseType: !415, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !422, file: !41, line: 235, baseType: !408, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !422, file: !41, line: 236, baseType: !415, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !422, file: !41, line: 237, baseType: !438, size: 4096, offset: 512)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4096, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !418, file: !41, line: 161, baseType: !7, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !418, file: !41, line: 162, baseType: !443, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !259, line: 27, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !445, line: 96, baseType: !331)
!445 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !418, file: !41, line: 163, baseType: !447, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 276, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 276, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !449, file: !448, line: 276, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 70, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 65, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !453, file: !448, line: 66, baseType: !7, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !418, file: !41, line: 164, baseType: !415, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !418, file: !41, line: 165, baseType: !458, size: 128, offset: 256)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !404, line: 14, size: 128, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !458, file: !404, line: 15, baseType: !461, size: 128)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !353, line: 125, size: 128, elements: !462)
!462 = !{!463, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !461, file: !353, line: 126, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !353, line: 31, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !464, file: !353, line: 32, baseType: !357, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !461, file: !353, line: 127, baseType: !357, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !418, file: !41, line: 166, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!408}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !418, file: !41, line: 167, baseType: !408, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !41, line: 123, baseType: !474, size: 8, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !296, line: 17, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !298, line: 21, baseType: !476)
!476 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !400, file: !41, line: 124, baseType: !474, size: 8, offset: 456)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !400, file: !41, line: 125, baseType: !474, size: 8, offset: 464)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !400, file: !41, line: 126, baseType: !474, size: 8, offset: 472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !384, file: !306, line: 572, baseType: !400, size: 512, offset: 1216)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !384, file: !306, line: 580, baseType: !482, size: 64, offset: 1728)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !305, file: !306, line: 721, baseType: !7, size: 32, offset: 3584)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !305, file: !306, line: 722, baseType: !331, size: 32, offset: 3616)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !305, file: !306, line: 723, baseType: !486, size: 64, offset: 3648)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !489, line: 17, baseType: !490)
!489 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !489, line: 17, size: 64, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !490, file: !489, line: 17, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 1)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !305, file: !306, line: 724, baseType: !488, size: 64, offset: 3712)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !305, file: !306, line: 749, baseType: !498, offset: 3776)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !306, line: 290, elements: !281)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !305, file: !306, line: 751, baseType: !258, size: 128, offset: 3776)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !305, file: !306, line: 757, baseType: !501, size: 64, offset: 3904)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !503, line: 388, size: 7296, elements: !504)
!503 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !4199}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !503, line: 389, baseType: !506, size: 7296)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !503, line: 389, size: 7296, elements: !507)
!507 = !{!508, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4122, !4128, !4131, !4170, !4171, !4183, !4184, !4187, !4188, !4189, !4192, !4193, !4194, !4197, !4198}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !506, file: !503, line: 390, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !503, line: 305, size: 1472, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !527, !528, !533, !534, !537, !4068, !4069, !4070, !4071, !4072}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !510, file: !503, line: 308, baseType: !313, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !510, file: !503, line: 309, baseType: !313, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !510, file: !503, line: 313, baseType: !509, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !510, file: !503, line: 313, baseType: !509, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !510, file: !503, line: 315, baseType: !352, size: 192, align: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !510, file: !503, line: 323, baseType: !313, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !510, file: !503, line: 327, baseType: !501, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !510, file: !503, line: 333, baseType: !520, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !521, line: 284, baseType: !522)
!521 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !521, line: 284, size: 64, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !522, file: !521, line: 284, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !526, line: 19, baseType: !313)
!526 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !510, file: !503, line: 334, baseType: !313, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !510, file: !503, line: 343, baseType: !529, size: 256, offset: 704)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !503, line: 340, size: 256, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !529, file: !503, line: 341, baseType: !352, size: 192, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !529, file: !503, line: 342, baseType: !313, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !510, file: !503, line: 351, baseType: !258, size: 128, offset: 960)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !510, file: !503, line: 353, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !503, line: 353, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !510, file: !503, line: 356, baseType: !538, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !35, line: 557, size: 832, elements: !541)
!541 = !{!542, !546, !547, !551, !555, !4042, !4046, !4050, !4054, !4055, !4056, !4060, !4064}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !540, file: !35, line: 558, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !509}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !540, file: !35, line: 559, baseType: !543, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !540, file: !35, line: 560, baseType: !548, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!331, !509, !313}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !540, file: !35, line: 561, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!331, !509}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !540, file: !35, line: 562, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !503, line: 682, baseType: !7)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !35, line: 508, size: 768, elements: !562)
!562 = !{!563, !564, !565, !567, !568, !569, !576, !583, !589, !4037, !4038, !4040, !4041}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !561, file: !35, line: 509, baseType: !509, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !35, line: 510, baseType: !7, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !561, file: !35, line: 511, baseType: !566, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !259, line: 148, baseType: !7)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !561, file: !35, line: 512, baseType: !313, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !561, file: !35, line: 513, baseType: !313, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !561, file: !35, line: 514, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !521, line: 385, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 385, size: 64, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !572, file: !521, line: 385, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !526, line: 15, baseType: !313)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !561, file: !35, line: 516, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !521, line: 359, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 359, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !579, file: !521, line: 359, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !526, line: 16, baseType: !313)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !561, file: !35, line: 519, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !526, line: 21, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 21, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !585, file: !526, line: 21, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !526, line: 14, baseType: !313)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !561, file: !35, line: 521, baseType: !590, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !503, line: 68, size: 512, align: 128, elements: !592)
!592 = !{!593, !594, !4029, !4036}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !503, line: 69, baseType: !313, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !503, line: 77, baseType: !595, size: 320, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !503, line: 77, size: 320, elements: !596)
!596 = !{!597, !3922, !3927, !3953, !3961, !3967, !3980, !4028}
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 78, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 78, size: 320, elements: !599)
!599 = !{!600, !601, !3920, !3921}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !598, file: !503, line: 84, baseType: !258, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !598, file: !503, line: 86, baseType: !602, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !106, line: 451, size: 1216, align: 64, elements: !604)
!604 = !{!605, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3915, !3916, !3917, !3918, !3919}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !603, file: !106, line: 452, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !106, line: 610, size: 4224, elements: !608)
!608 = !{!609, !611, !612, !620, !627, !628, !3741, !3742, !3743, !3744, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3784, !3792, !3793, !3794, !3804, !3805, !3806, !3807}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !607, file: !106, line: 611, baseType: !610, size: 16)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !259, line: 19, baseType: !379)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !607, file: !106, line: 612, baseType: !379, size: 16, offset: 16)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !607, file: !106, line: 613, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !614, line: 23, baseType: !615)
!614 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 21, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !614, line: 22, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !259, line: 32, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !445, line: 49, baseType: !7)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !607, file: !106, line: 614, baseType: !621, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !614, line: 28, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 26, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !614, line: 27, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !259, line: 33, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !445, line: 50, baseType: !7)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !607, file: !106, line: 615, baseType: !7, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !607, file: !106, line: 622, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !106, line: 1864, size: 1536, align: 512, elements: !632)
!632 = !{!633, !3618, !3628, !3632, !3638, !3642, !3646, !3650, !3654, !3658, !3662, !3663, !3667, !3671, !3691, !3717, !3721, !3727, !3732, !3736, !3737}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !631, file: !106, line: 1865, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !606, !637, !7}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !639, line: 89, size: 1536, elements: !640)
!639 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !642, !647, !655, !656, !671, !672, !676, !688, !762, !3602, !3603, !3604, !3610, !3611, !3612}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !638, file: !639, line: 91, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !638, file: !639, line: 92, baseType: !643, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 277, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 277, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !644, file: !448, line: 277, baseType: !452, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !638, file: !639, line: 93, baseType: !648, size: 128, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !649, line: 38, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !649, line: 39, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !648, file: !649, line: 39, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !638, file: !639, line: 94, baseType: !637, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !638, file: !639, line: 95, baseType: !657, size: 128, offset: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !639, line: 47, size: 128, elements: !658)
!658 = !{!659, !668}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !639, line: 48, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !639, line: 48, size: 64, elements: !661)
!661 = !{!662, !667}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !639, line: 49, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !639, line: 49, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !663, file: !639, line: 50, baseType: !315, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !663, file: !639, line: 50, baseType: !315, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !660, file: !639, line: 52, baseType: !362, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !639, line: 54, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !638, file: !639, line: 96, baseType: !606, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !638, file: !639, line: 98, baseType: !673, size: 256, offset: 448)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 256, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !638, file: !639, line: 101, baseType: !677, size: 32, offset: 704)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !678, line: 25, size: 32, elements: !679)
!678 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 26, baseType: !681, size: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 26, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !678, line: 30, baseType: !684, size: 32)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !678, line: 30, size: 32, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !678, line: 31, baseType: !267)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !684, file: !678, line: 32, baseType: !331, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !638, file: !639, line: 102, baseType: !689, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !639, line: 135, size: 1024, align: 512, elements: !692)
!692 = !{!693, !697, !698, !705, !714, !718, !722, !726, !727, !731, !736, !748, !756}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !691, file: !639, line: 136, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!331, !637, !7}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !691, file: !639, line: 137, baseType: !694, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !691, file: !639, line: 138, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!331, !702, !704}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !691, file: !639, line: 139, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!331, !702, !7, !709, !712}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !691, file: !639, line: 141, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!331, !702}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !691, file: !639, line: 142, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!331, !637}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !691, file: !639, line: 143, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !637}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !691, file: !639, line: 144, baseType: !723, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !691, file: !639, line: 145, baseType: !728, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !637, !606}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !691, file: !639, line: 146, baseType: !732, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!735, !637, !735, !331}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !691, file: !639, line: 147, baseType: !737, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!740, !742}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !639, line: 18, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !744, line: 8, size: 128, elements: !745)
!744 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !743, file: !744, line: 9, baseType: !740, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !743, file: !744, line: 10, baseType: !637, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !691, file: !639, line: 148, baseType: !749, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!331, !752, !754}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !259, line: 30, baseType: !755)
!755 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !691, file: !639, line: 149, baseType: !757, size: 64, offset: 768)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!637, !637, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !638, file: !639, line: 103, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !106, line: 1416, size: 9472, elements: !765)
!765 = !{!766, !767, !770, !771, !772, !775, !826, !1505, !1587, !1670, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1686, !1690, !1691, !3461, !3462, !3465, !3466, !3467, !3508, !3534, !3535, !3536, !3537, !3538, !3539, !3542, !3543, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !764, file: !106, line: 1417, baseType: !258, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !764, file: !106, line: 1418, baseType: !768, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !259, line: 16, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !259, line: 13, baseType: !315)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !764, file: !106, line: 1419, baseType: !476, size: 8, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !764, file: !106, line: 1420, baseType: !313, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !764, file: !106, line: 1421, baseType: !773, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !259, line: 46, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !445, line: 88, baseType: !299)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !764, file: !106, line: 1422, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !106, line: 2228, size: 576, elements: !778)
!778 = !{!779, !780, !781, !787, !791, !795, !799, !803, !804, !814, !817, !818, !819, !823, !824, !825}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !777, file: !106, line: 2229, baseType: !709, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !777, file: !106, line: 2230, baseType: !331, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !777, file: !106, line: 2238, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!331, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !106, line: 69, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !777, file: !106, line: 2239, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !106, line: 70, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !777, file: !106, line: 2240, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!637, !776, !331, !709, !253}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !777, file: !106, line: 2242, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !763}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !777, file: !106, line: 2243, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !802, line: 76, flags: DIFlagFwdDecl)
!802 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !106, line: 2244, baseType: !776, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !777, file: !106, line: 2245, baseType: !805, size: 64, offset: 512)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !259, line: 182, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !805, file: !259, line: 183, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !259, line: 186, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !259, line: 187, baseType: !808, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !809, file: !259, line: 187, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !777, file: !106, line: 2247, baseType: !815, offset: 576)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !816, line: 187, elements: !281)
!816 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !777, file: !106, line: 2248, baseType: !815, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !777, file: !106, line: 2249, baseType: !815, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !777, file: !106, line: 2250, baseType: !820, offset: 576)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 3)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !777, file: !106, line: 2252, baseType: !815, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !777, file: !106, line: 2253, baseType: !815, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !777, file: !106, line: 2254, baseType: !815, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !764, file: !106, line: 1423, baseType: !827, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !106, line: 1935, size: 1472, elements: !830)
!830 = !{!831, !835, !839, !840, !844, !850, !854, !855, !856, !860, !864, !865, !866, !867, !873, !878, !879, !1482, !1483, !1484, !1485, !1489, !1504}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !829, file: !106, line: 1936, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!606, !763}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !829, file: !106, line: 1937, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !606}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !829, file: !106, line: 1938, baseType: !836, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !829, file: !106, line: 1940, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !606, !331}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !829, file: !106, line: 1941, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!331, !606, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 40, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !829, file: !106, line: 1942, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!331, !606}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !829, file: !106, line: 1943, baseType: !836, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !829, file: !106, line: 1944, baseType: !796, size: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !829, file: !106, line: 1945, baseType: !857, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!331, !763, !331}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !829, file: !106, line: 1946, baseType: !861, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!331, !763}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !829, file: !106, line: 1947, baseType: !861, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !829, file: !106, line: 1948, baseType: !861, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !829, file: !106, line: 1949, baseType: !861, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !829, file: !106, line: 1950, baseType: !868, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!331, !637, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !106, line: 57, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !829, file: !106, line: 1951, baseType: !874, size: 64, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!331, !763, !877, !735}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !829, file: !106, line: 1952, baseType: !796, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !829, file: !106, line: 1954, baseType: !880, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!331, !883, !637}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !885, line: 16, size: 896, elements: !886)
!885 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888, !892, !893, !894, !895, !896, !897, !898, !920, !921, !1481}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !884, file: !885, line: 17, baseType: !735, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !884, file: !885, line: 18, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !259, line: 55, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !445, line: 72, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !445, line: 16, baseType: !313)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !884, file: !885, line: 19, baseType: !889, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !884, file: !885, line: 20, baseType: !889, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !884, file: !885, line: 21, baseType: !889, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !884, file: !885, line: 22, baseType: !773, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !884, file: !885, line: 23, baseType: !773, size: 64, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !884, file: !885, line: 24, baseType: !285, size: 192, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !884, file: !885, line: 25, baseType: !899, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !885, line: 31, size: 256, elements: !902)
!902 = !{!903, !908, !912, !916}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !901, file: !885, line: 32, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!253, !883, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !901, file: !885, line: 33, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !883, !253}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !901, file: !885, line: 34, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!253, !883, !253, !907}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !901, file: !885, line: 35, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!331, !883, !253}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !884, file: !885, line: 26, baseType: !331, size: 32, offset: 704)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !884, file: !885, line: 27, baseType: !922, size: 64, offset: 768)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !106, line: 916, size: 1856, align: 32, elements: !925)
!925 = !{!926, !944, !945, !946, !1228, !1229, !1230, !1231, !1232, !1234, !1235, !1236, !1266, !1463, !1472, !1473, !1474, !1475, !1476, !1477, !1480}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !924, file: !106, line: 920, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !106, line: 917, size: 128, elements: !928)
!928 = !{!929, !935}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !927, file: !106, line: 918, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !931, line: 58, size: 64, elements: !932)
!931 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !930, file: !931, line: 59, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !927, file: !106, line: 919, baseType: !936, size: 128, align: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !259, line: 216, size: 128, align: 64, elements: !937)
!937 = !{!938, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !259, line: 217, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !936, file: !259, line: 218, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !939}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !924, file: !106, line: 921, baseType: !743, size: 128, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !924, file: !106, line: 922, baseType: !606, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !924, file: !106, line: 923, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !106, line: 1822, size: 2048, elements: !950)
!950 = !{!951, !952, !957, !964, !968, !1014, !1015, !1019, !1032, !1033, !1041, !1045, !1046, !1050, !1051, !1055, !1060, !1061, !1065, !1069, !1183, !1187, !1191, !1195, !1196, !1202, !1206, !1211, !1215, !1219, !1223, !1227}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !949, file: !106, line: 1823, baseType: !800, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !949, file: !106, line: 1824, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!773, !956, !773, !331}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !949, file: !106, line: 1825, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!961, !956, !735, !889, !907}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !259, line: 60, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !445, line: 73, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !445, line: 15, baseType: !319)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !949, file: !106, line: 1826, baseType: !965, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!961, !956, !709, !889, !907}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !949, file: !106, line: 1827, baseType: !969, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!961, !972, !1012}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !106, line: 320, size: 384, elements: !974)
!974 = !{!975, !976, !977, !981, !982, !983, !986, !987}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !973, file: !106, line: 321, baseType: !956, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !973, file: !106, line: 326, baseType: !773, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !973, file: !106, line: 327, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !972, !319, !319}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !973, file: !106, line: 328, baseType: !253, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !973, file: !106, line: 329, baseType: !331, size: 32, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !973, file: !106, line: 330, baseType: !984, size: 16, offset: 288)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !296, line: 19, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !298, line: 24, baseType: !379)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !973, file: !106, line: 331, baseType: !984, size: 16, offset: 304)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !106, line: 332, baseType: !988, size: 64, offset: 320)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !106, line: 332, size: 64, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !988, file: !106, line: 333, baseType: !7, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !988, file: !106, line: 334, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !994, line: 569, size: 448, elements: !995)
!994 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !993, file: !994, line: 570, baseType: !590, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !993, file: !994, line: 571, baseType: !331, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !993, file: !994, line: 572, baseType: !999, size: 320, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1000, line: 14, baseType: !1001)
!1000 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1000, line: 29, size: 320, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1011}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !1000, line: 30, baseType: !7, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1001, file: !1000, line: 31, baseType: !253, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1001, file: !1000, line: 32, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1000, line: 16, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!331, !1010, !7, !331, !253}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1001, file: !1000, line: 33, baseType: !258, size: 128, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !106, line: 64, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !949, file: !106, line: 1828, baseType: !969, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !949, file: !106, line: 1829, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!331, !972, !754}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !949, file: !106, line: 1830, baseType: !1020, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!331, !956, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !106, line: 1776, size: 128, elements: !1025)
!1025 = !{!1026, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1024, file: !106, line: 1777, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !106, line: 1773, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!331, !1023, !709, !331, !773, !362, !7}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1024, file: !106, line: 1778, baseType: !773, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !949, file: !106, line: 1831, baseType: !1020, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !949, file: !106, line: 1832, baseType: !1034, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!1037, !956, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1038, line: 52, baseType: !7)
!1038 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !106, line: 56, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !949, file: !106, line: 1833, baseType: !1042, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!319, !956, !7, !313}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !949, file: !106, line: 1834, baseType: !1042, size: 64, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !949, file: !106, line: 1835, baseType: !1047, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!331, !956, !509}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !949, file: !106, line: 1836, baseType: !313, size: 64, offset: 832)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !949, file: !106, line: 1837, baseType: !1052, size: 64, offset: 896)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!331, !606, !956}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !949, file: !106, line: 1838, baseType: !1056, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!331, !956, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !106, line: 1007, baseType: !253)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !949, file: !106, line: 1839, baseType: !1052, size: 64, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !949, file: !106, line: 1840, baseType: !1062, size: 64, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!331, !956, !773, !773, !331}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !949, file: !106, line: 1841, baseType: !1066, size: 64, offset: 1152)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!331, !331, !956, !331}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !106, line: 1842, baseType: !1070, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!331, !956, !331, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !106, line: 1062, size: 1664, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1092, !1093, !1094, !1095, !1112, !1113, !1114, !1127, !1159}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1074, file: !106, line: 1063, baseType: !1073, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1074, file: !106, line: 1064, baseType: !258, size: 128, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1074, file: !106, line: 1065, baseType: !809, size: 128, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1074, file: !106, line: 1066, baseType: !258, size: 128, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1074, file: !106, line: 1069, baseType: !258, size: 128, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1074, file: !106, line: 1072, baseType: !1059, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1074, file: !106, line: 1073, baseType: !7, size: 32, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1074, file: !106, line: 1074, baseType: !476, size: 8, offset: 672)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1074, file: !106, line: 1075, baseType: !7, size: 32, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1074, file: !106, line: 1076, baseType: !331, size: 32, offset: 736)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1074, file: !106, line: 1077, baseType: !1087, size: 128, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1000, line: 40, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1000, line: 36, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !1000, line: 37, baseType: !267)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1088, file: !1000, line: 38, baseType: !258, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1074, file: !106, line: 1078, baseType: !956, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1074, file: !106, line: 1079, baseType: !773, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1074, file: !106, line: 1080, baseType: !773, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1074, file: !106, line: 1082, baseType: !1096, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !106, line: 1314, size: 320, elements: !1098)
!1098 = !{!1099, !1107, !1108, !1109, !1110, !1111}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1097, file: !106, line: 1315, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1101, line: 20, baseType: !1102)
!1101 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 11, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1102, file: !1101, line: 12, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !279, line: 33, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 31, elements: !281)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1097, file: !106, line: 1316, baseType: !331, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1097, file: !106, line: 1317, baseType: !331, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1097, file: !106, line: 1318, baseType: !1096, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1097, file: !106, line: 1319, baseType: !956, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1097, file: !106, line: 1320, baseType: !936, size: 128, align: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1074, file: !106, line: 1084, baseType: !313, size: 64, offset: 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1074, file: !106, line: 1085, baseType: !313, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1074, file: !106, line: 1087, baseType: !1115, size: 64, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !106, line: 1011, size: 128, elements: !1118)
!1118 = !{!1119, !1123}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1117, file: !106, line: 1012, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1073, !1073}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1117, file: !106, line: 1013, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1073}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1074, file: !106, line: 1088, baseType: !1128, size: 64, offset: 1344)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !106, line: 1016, size: 512, elements: !1131)
!1131 = !{!1132, !1136, !1140, !1141, !1145, !1149, !1153, !1158}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1130, file: !106, line: 1017, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1059, !1059}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1130, file: !106, line: 1018, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1059}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1130, file: !106, line: 1019, baseType: !1124, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1130, file: !106, line: 1020, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!331, !1073, !331}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1130, file: !106, line: 1021, baseType: !1146, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!754, !1073}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1130, file: !106, line: 1022, baseType: !1150, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!331, !1073, !331, !262}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1130, file: !106, line: 1023, baseType: !1154, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1073, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1130, file: !106, line: 1024, baseType: !1146, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1074, file: !106, line: 1097, baseType: !1160, size: 256, offset: 1408)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !106, line: 1089, size: 256, elements: !1161)
!1161 = !{!1162, !1171, !1177}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1160, file: !106, line: 1090, baseType: !1163, size: 256)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1164, line: 10, size: 256, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1167, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1163, file: !1164, line: 11, baseType: !315, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1163, file: !1164, line: 12, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1164, line: 5, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1163, file: !1164, line: 13, baseType: !258, size: 128, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1160, file: !106, line: 1091, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1164, line: 17, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1172, file: !1164, line: 18, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1164, line: 16, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1160, file: !106, line: 1096, baseType: !1178, size: 192)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !106, line: 1092, size: 192, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1178, file: !106, line: 1093, baseType: !258, size: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1178, file: !106, line: 1094, baseType: !331, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1178, file: !106, line: 1095, baseType: !7, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !949, file: !106, line: 1843, baseType: !1184, size: 64, offset: 1280)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!961, !956, !590, !331, !889, !907, !331}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !949, file: !106, line: 1844, baseType: !1188, size: 64, offset: 1344)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!313, !956, !313, !313, !313, !313}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !949, file: !106, line: 1845, baseType: !1192, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!331, !331}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !949, file: !106, line: 1846, baseType: !1070, size: 64, offset: 1472)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !949, file: !106, line: 1847, baseType: !1197, size: 64, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!961, !1200, !956, !907, !889, !7}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !306, line: 53, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !949, file: !106, line: 1848, baseType: !1203, size: 64, offset: 1600)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!961, !956, !907, !1200, !889, !7}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !949, file: !106, line: 1849, baseType: !1207, size: 64, offset: 1664)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!331, !956, !319, !1210, !1157}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !949, file: !106, line: 1850, baseType: !1212, size: 64, offset: 1728)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!319, !956, !331, !773, !773}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !949, file: !106, line: 1852, baseType: !1216, size: 64, offset: 1792)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !883, !956}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !949, file: !106, line: 1856, baseType: !1220, size: 64, offset: 1856)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!961, !956, !773, !956, !773, !889, !7}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !949, file: !106, line: 1858, baseType: !1224, size: 64, offset: 1920)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!773, !956, !773, !956, !773, !773, !7}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !949, file: !106, line: 1861, baseType: !1062, size: 64, offset: 1984)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !924, file: !106, line: 929, baseType: !267, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !924, file: !106, line: 930, baseType: !105, size: 32, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !924, file: !106, line: 931, baseType: !289, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !924, file: !106, line: 932, baseType: !7, size: 32, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !924, file: !106, line: 933, baseType: !1233, size: 32, offset: 544)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !259, line: 150, baseType: !7)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !924, file: !106, line: 934, baseType: !285, size: 192, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !924, file: !106, line: 935, baseType: !773, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !924, file: !106, line: 936, baseType: !1237, size: 192, offset: 832)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !106, line: 885, size: 192, elements: !1238)
!1238 = !{!1239, !1240, !1262, !1263, !1264, !1265}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !106, line: 886, baseType: !1100)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1237, file: !106, line: 887, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !115, line: 59, size: 768, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1251, !1252, !1253, !1254}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1242, file: !115, line: 61, baseType: !322, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1242, file: !115, line: 62, baseType: !7, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1242, file: !115, line: 63, baseType: !267, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1242, file: !115, line: 65, baseType: !1248, size: 256, offset: 64)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 256, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 4)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1242, file: !115, line: 66, baseType: !805, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1242, file: !115, line: 68, baseType: !1087, size: 128, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1242, file: !115, line: 69, baseType: !936, size: 128, align: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1242, file: !115, line: 70, baseType: !1255, size: 128, offset: 640)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1256, size: 128, elements: !494)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !115, line: 54, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1256, file: !115, line: 55, baseType: !331, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1256, file: !115, line: 56, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !115, line: 56, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1237, file: !106, line: 888, baseType: !114, size: 32, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1237, file: !106, line: 889, baseType: !613, size: 32, offset: 96)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1237, file: !106, line: 889, baseType: !613, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1237, file: !106, line: 890, baseType: !331, size: 32, offset: 160)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !924, file: !106, line: 937, baseType: !1267, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1270, line: 111, size: 1280, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1291, !1292, !1293, !1294, !1295, !1296, !1416, !1417, !1418, !1419, !1445, !1448, !1458}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1269, file: !1270, line: 112, baseType: !327, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1269, file: !1270, line: 120, baseType: !613, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1269, file: !1270, line: 121, baseType: !621, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1269, file: !1270, line: 122, baseType: !613, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1269, file: !1270, line: 123, baseType: !621, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1269, file: !1270, line: 124, baseType: !613, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1269, file: !1270, line: 125, baseType: !621, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1269, file: !1270, line: 126, baseType: !613, size: 32, offset: 224)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1269, file: !1270, line: 127, baseType: !621, size: 32, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1269, file: !1270, line: 128, baseType: !7, size: 32, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1269, file: !1270, line: 129, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1284, line: 26, baseType: !1285)
!1284 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1284, line: 24, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1285, file: !1284, line: 25, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 2)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1269, file: !1270, line: 130, baseType: !1283, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1269, file: !1270, line: 131, baseType: !1283, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1269, file: !1270, line: 132, baseType: !1283, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1269, file: !1270, line: 133, baseType: !1283, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1269, file: !1270, line: 135, baseType: !476, size: 8, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1269, file: !1270, line: 137, baseType: !1297, size: 64, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1299, line: 189, size: 1664, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302, !1307, !1312, !1320, !1323, !1324, !1331, !1332, !1333, !1334, !1337, !1338, !1339, !1341, !1342, !1380, !1401}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1298, file: !1299, line: 190, baseType: !322, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1298, file: !1299, line: 191, baseType: !1303, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1299, line: 28, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !259, line: 98, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !296, line: 20, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !298, line: 26, baseType: !331)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1299, line: 192, baseType: !1308, size: 192, offset: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1299, line: 192, size: 192, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1308, file: !1299, line: 193, baseType: !258, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1308, file: !1299, line: 194, baseType: !352, size: 192, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1298, file: !1299, line: 199, baseType: !1313, size: 256, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1314, line: 35, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1313, file: !1314, line: 36, baseType: !289, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1313, file: !1314, line: 42, baseType: !289, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1313, file: !1314, line: 46, baseType: !425, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1313, file: !1314, line: 47, baseType: !258, size: 128, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1298, file: !1299, line: 200, baseType: !1321, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1299, line: 200, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1298, file: !1299, line: 201, baseType: !253, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1299, line: 202, baseType: !1325, size: 64, offset: 640)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1299, line: 202, size: 64, elements: !1326)
!1326 = !{!1327, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1325, file: !1299, line: 203, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1329, line: 8, baseType: !297)
!1329 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1325, file: !1299, line: 204, baseType: !1328, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1298, file: !1299, line: 206, baseType: !1328, size: 64, offset: 704)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1298, file: !1299, line: 207, baseType: !613, size: 32, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1298, file: !1299, line: 208, baseType: !621, size: 32, offset: 800)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1298, file: !1299, line: 209, baseType: !1335, size: 32, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1299, line: 31, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !259, line: 104, baseType: !315)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1298, file: !1299, line: 210, baseType: !379, size: 16, offset: 864)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1298, file: !1299, line: 211, baseType: !379, size: 16, offset: 880)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1298, file: !1299, line: 215, baseType: !1340, size: 16, offset: 896)
!1340 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1298, file: !1299, line: 222, baseType: !313, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1299, line: 239, baseType: !1343, size: 320, offset: 1024)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1299, line: 239, size: 320, elements: !1344)
!1344 = !{!1345, !1372}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1343, file: !1299, line: 240, baseType: !1346, size: 320)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1299, line: 108, size: 320, elements: !1347)
!1347 = !{!1348, !1349, !1361, !1364, !1371}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1346, file: !1299, line: 110, baseType: !313, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1299, line: 111, baseType: !1350, size: 64, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1299, line: 111, size: 64, elements: !1351)
!1351 = !{!1352, !1360}
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !1299, line: 112, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1299, line: 112, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1353, file: !1299, line: 114, baseType: !984, size: 16)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1353, file: !1299, line: 115, baseType: !1357, size: 48, offset: 16)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 48, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 6)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1350, file: !1299, line: 121, baseType: !313, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1346, file: !1299, line: 123, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1299, line: 96, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1346, file: !1299, line: 124, baseType: !1365, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1299, line: 102, size: 192, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1366, file: !1299, line: 103, baseType: !936, size: 128, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1366, file: !1299, line: 104, baseType: !322, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1366, file: !1299, line: 105, baseType: !754, size: 8, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1346, file: !1299, line: 125, baseType: !709, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1299, line: 241, baseType: !1373, size: 320)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !1299, line: 241, size: 320, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1373, file: !1299, line: 242, baseType: !313, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1373, file: !1299, line: 243, baseType: !313, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1373, file: !1299, line: 244, baseType: !1362, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1373, file: !1299, line: 245, baseType: !1365, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1373, file: !1299, line: 246, baseType: !735, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1299, line: 254, baseType: !1381, size: 256, offset: 1344)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1299, line: 254, size: 256, elements: !1382)
!1382 = !{!1383, !1389}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1381, file: !1299, line: 255, baseType: !1384, size: 256)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1299, line: 128, size: 256, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1384, file: !1299, line: 129, baseType: !253, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1384, file: !1299, line: 130, baseType: !1388, size: 256)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !1249)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1299, line: 256, baseType: !1390, size: 256)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1299, line: 256, size: 256, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1390, file: !1299, line: 258, baseType: !258, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1390, file: !1299, line: 259, baseType: !1394, size: 128, offset: 128)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1395, line: 22, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1394, file: !1395, line: 23, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1395, line: 23, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1394, file: !1395, line: 24, baseType: !313, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1298, file: !1299, line: 274, baseType: !1402, size: 64, offset: 1600)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1299, line: 170, size: 192, elements: !1404)
!1404 = !{!1405, !1414, !1415}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1403, file: !1299, line: 171, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1299, line: 165, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!331, !1297, !1410, !1412, !1297}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1403, file: !1299, line: 172, baseType: !1297, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1403, file: !1299, line: 173, baseType: !1362, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1269, file: !1270, line: 138, baseType: !1297, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1269, file: !1270, line: 139, baseType: !1297, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1269, file: !1270, line: 140, baseType: !1297, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1269, file: !1270, line: 145, baseType: !1420, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1422, line: 13, size: 896, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1421, file: !1422, line: 14, baseType: !322, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1421, file: !1422, line: 15, baseType: !327, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1421, file: !1422, line: 16, baseType: !327, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1421, file: !1422, line: 21, baseType: !289, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1421, file: !1422, line: 27, baseType: !313, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1421, file: !1422, line: 28, baseType: !313, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1421, file: !1422, line: 29, baseType: !289, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1421, file: !1422, line: 32, baseType: !809, size: 128, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1421, file: !1422, line: 33, baseType: !613, size: 32, offset: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1421, file: !1422, line: 37, baseType: !289, size: 64, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1421, file: !1422, line: 44, baseType: !1435, size: 256, offset: 640)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1436, line: 15, size: 256, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1436, line: 16, baseType: !425)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1435, file: !1436, line: 18, baseType: !331, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1435, file: !1436, line: 19, baseType: !331, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1435, file: !1436, line: 20, baseType: !331, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1435, file: !1436, line: 21, baseType: !331, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1435, file: !1436, line: 22, baseType: !313, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 23, baseType: !313, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1269, file: !1270, line: 146, baseType: !1446, size: 64, offset: 1024)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !614, line: 18, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1269, file: !1270, line: 147, baseType: !1449, size: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1270, line: 25, size: 64, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1450, file: !1270, line: 26, baseType: !327, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1450, file: !1270, line: 27, baseType: !331, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1450, file: !1270, line: 28, baseType: !1455, offset: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 0)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1270, line: 149, baseType: !1459, size: 128, offset: 1152)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !1270, line: 149, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1459, file: !1270, line: 150, baseType: !331, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1459, file: !1270, line: 151, baseType: !936, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !924, file: !106, line: 938, baseType: !1464, size: 256, offset: 1088)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !106, line: 896, size: 256, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1464, file: !106, line: 897, baseType: !313, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1464, file: !106, line: 898, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1464, file: !106, line: 899, baseType: !7, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1464, file: !106, line: 902, baseType: !7, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1464, file: !106, line: 903, baseType: !7, size: 32, offset: 160)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1464, file: !106, line: 904, baseType: !773, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !924, file: !106, line: 940, baseType: !362, size: 64, offset: 1344)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !924, file: !106, line: 945, baseType: !253, size: 64, offset: 1408)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !924, file: !106, line: 949, baseType: !258, size: 128, offset: 1472)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !924, file: !106, line: 950, baseType: !258, size: 128, offset: 1600)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !924, file: !106, line: 952, baseType: !602, size: 64, offset: 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !924, file: !106, line: 953, baseType: !1478, size: 32, offset: 1792)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1479, line: 8, baseType: !315)
!1479 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !924, file: !106, line: 954, baseType: !1478, size: 32, offset: 1824)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !884, file: !885, line: 28, baseType: !253, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !829, file: !106, line: 1955, baseType: !880, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !829, file: !106, line: 1956, baseType: !880, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !829, file: !106, line: 1957, baseType: !880, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !829, file: !106, line: 1963, baseType: !1486, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!331, !763, !590, !566}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !829, file: !106, line: 1964, baseType: !1490, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!319, !763, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1495, line: 12, size: 256, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1498, !1499, !1500, !1501}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1494, file: !1495, line: 13, baseType: !566, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1494, file: !1495, line: 16, baseType: !331, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1494, file: !1495, line: 23, baseType: !313, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1494, file: !1495, line: 30, baseType: !313, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1494, file: !1495, line: 33, baseType: !1502, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !503, line: 27, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !829, file: !106, line: 1966, baseType: !1490, size: 64, offset: 1408)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !764, file: !106, line: 1424, baseType: !1506, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !100, line: 322, size: 704, elements: !1509)
!1509 = !{!1510, !1556, !1560, !1564, !1565, !1566, !1567, !1568, !1573, !1578, !1582}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1508, file: !100, line: 323, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!331, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !100, line: 294, size: 1600, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1541, !1542, !1543}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1515, file: !100, line: 295, baseType: !809, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1515, file: !100, line: 296, baseType: !258, size: 128, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1515, file: !100, line: 297, baseType: !258, size: 128, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1515, file: !100, line: 298, baseType: !258, size: 128, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1515, file: !100, line: 299, baseType: !285, size: 192, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1515, file: !100, line: 300, baseType: !267, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1515, file: !100, line: 301, baseType: !327, size: 32, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1515, file: !100, line: 302, baseType: !763, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1515, file: !100, line: 303, baseType: !1526, size: 64, offset: 832)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !100, line: 68, size: 64, elements: !1527)
!1527 = !{!1528, !1540}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !100, line: 69, baseType: !1529, size: 32)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !100, line: 69, size: 32, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1529, file: !100, line: 70, baseType: !613, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1529, file: !100, line: 71, baseType: !621, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1529, file: !100, line: 72, baseType: !1534, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1535, line: 24, baseType: !1536)
!1535 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1535, line: 22, size: 32, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1536, file: !1535, line: 23, baseType: !1539, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1535, line: 20, baseType: !619)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1526, file: !100, line: 74, baseType: !99, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1515, file: !100, line: 304, baseType: !773, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1515, file: !100, line: 305, baseType: !313, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1515, file: !100, line: 306, baseType: !1544, size: 576, offset: 1024)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !100, line: 205, size: 576, elements: !1545)
!1545 = !{!1546, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1544, file: !100, line: 206, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !100, line: 66, baseType: !299)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1544, file: !100, line: 207, baseType: !1547, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1544, file: !100, line: 208, baseType: !1547, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1544, file: !100, line: 209, baseType: !1547, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1544, file: !100, line: 210, baseType: !1547, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1544, file: !100, line: 211, baseType: !1547, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1544, file: !100, line: 212, baseType: !1547, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1544, file: !100, line: 213, baseType: !1328, size: 64, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1544, file: !100, line: 214, baseType: !1328, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1508, file: !100, line: 324, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1514, !763, !331}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1508, file: !100, line: 325, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1514}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1508, file: !100, line: 326, baseType: !1511, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1508, file: !100, line: 327, baseType: !1511, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1508, file: !100, line: 328, baseType: !1511, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1508, file: !100, line: 329, baseType: !857, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1508, file: !100, line: 332, baseType: !1569, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572, !606}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1508, file: !100, line: 333, baseType: !1574, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!331, !606, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1508, file: !100, line: 335, baseType: !1579, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!331, !606, !1572}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1508, file: !100, line: 337, baseType: !1583, size: 64, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!331, !763, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !764, file: !106, line: 1425, baseType: !1588, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !100, line: 428, size: 704, elements: !1591)
!1591 = !{!1592, !1596, !1597, !1601, !1602, !1603, !1618, !1641, !1645, !1646, !1669}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1590, file: !100, line: 429, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!331, !763, !331, !331, !752}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1590, file: !100, line: 430, baseType: !857, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1590, file: !100, line: 431, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!331, !763, !7}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1590, file: !100, line: 432, baseType: !1598, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1590, file: !100, line: 433, baseType: !857, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1590, file: !100, line: 434, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!331, !763, !331, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !100, line: 415, size: 256, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1608, file: !100, line: 416, baseType: !331, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1608, file: !100, line: 417, baseType: !7, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1608, file: !100, line: 418, baseType: !7, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1608, file: !100, line: 420, baseType: !7, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1608, file: !100, line: 421, baseType: !7, size: 32, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1608, file: !100, line: 422, baseType: !7, size: 32, offset: 160)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1608, file: !100, line: 423, baseType: !7, size: 32, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1608, file: !100, line: 424, baseType: !7, size: 32, offset: 224)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1590, file: !100, line: 435, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!331, !763, !1526, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !100, line: 343, size: 960, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1623, file: !100, line: 344, baseType: !331, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1623, file: !100, line: 345, baseType: !362, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1623, file: !100, line: 346, baseType: !362, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1623, file: !100, line: 347, baseType: !362, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1623, file: !100, line: 348, baseType: !362, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1623, file: !100, line: 349, baseType: !362, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1623, file: !100, line: 350, baseType: !362, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1623, file: !100, line: 351, baseType: !295, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1623, file: !100, line: 353, baseType: !295, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1623, file: !100, line: 354, baseType: !331, size: 32, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1623, file: !100, line: 355, baseType: !331, size: 32, offset: 608)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1623, file: !100, line: 356, baseType: !362, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1623, file: !100, line: 357, baseType: !362, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1623, file: !100, line: 358, baseType: !362, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1623, file: !100, line: 359, baseType: !295, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1623, file: !100, line: 360, baseType: !331, size: 32, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1590, file: !100, line: 436, baseType: !1642, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!331, !763, !1586, !1622}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1590, file: !100, line: 438, baseType: !1619, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1590, file: !100, line: 439, baseType: !1647, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!331, !763, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !100, line: 409, size: 1408, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1651, file: !100, line: 410, baseType: !7, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1651, file: !100, line: 411, baseType: !1655, size: 1344, offset: 64)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1656, size: 1344, elements: !821)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !100, line: 395, size: 448, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1668}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !100, line: 396, baseType: !7, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1656, file: !100, line: 397, baseType: !7, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1656, file: !100, line: 399, baseType: !7, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1656, file: !100, line: 400, baseType: !7, size: 32, offset: 96)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1656, file: !100, line: 401, baseType: !7, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1656, file: !100, line: 402, baseType: !7, size: 32, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1656, file: !100, line: 403, baseType: !7, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1656, file: !100, line: 404, baseType: !364, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1656, file: !100, line: 405, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !259, line: 126, baseType: !362)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1656, file: !100, line: 406, baseType: !1667, size: 64, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1590, file: !100, line: 440, baseType: !1598, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !764, file: !106, line: 1426, baseType: !1671, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !106, line: 49, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !764, file: !106, line: 1427, baseType: !313, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !764, file: !106, line: 1428, baseType: !313, size: 64, offset: 704)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !764, file: !106, line: 1429, baseType: !313, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !764, file: !106, line: 1430, baseType: !637, size: 64, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !764, file: !106, line: 1431, baseType: !1313, size: 256, offset: 896)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !764, file: !106, line: 1432, baseType: !331, size: 32, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !764, file: !106, line: 1433, baseType: !327, size: 32, offset: 1184)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !764, file: !106, line: 1437, baseType: !1682, size: 64, offset: 1216)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !106, line: 1437, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !764, file: !106, line: 1449, baseType: !1687, size: 64, offset: 1280)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !649, line: 34, size: 64, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1687, file: !649, line: 35, baseType: !652, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !764, file: !106, line: 1450, baseType: !258, size: 128, offset: 1344)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !764, file: !106, line: 1451, baseType: !1692, size: 64, offset: 1472)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1694, line: 22, size: 1344, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !2534, !2535, !2536, !3458, !3459, !3460}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1693, file: !1694, line: 23, baseType: !768, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1693, file: !1694, line: 24, baseType: !331, size: 32, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1693, file: !1694, line: 25, baseType: !606, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1693, file: !1694, line: 26, baseType: !763, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1693, file: !1694, line: 27, baseType: !285, size: 192, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1693, file: !1694, line: 28, baseType: !253, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1693, file: !1694, line: 29, baseType: !253, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1693, file: !1694, line: 30, baseType: !331, size: 32, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1693, file: !1694, line: 31, baseType: !754, size: 8, offset: 544)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1693, file: !1694, line: 33, baseType: !258, size: 128, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1693, file: !1694, line: 35, baseType: !1692, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1693, file: !1694, line: 36, baseType: !474, size: 8, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1693, file: !1694, line: 37, baseType: !1709, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1711, line: 53, size: 6592, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1715, !1716, !1717, !1720, !1741, !2513, !2514, !2515, !2516, !2526}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1710, file: !1711, line: 54, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !259, line: 125, baseType: !362)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1710, file: !1711, line: 60, baseType: !1714, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1710, file: !1711, line: 64, baseType: !313, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1710, file: !1711, line: 65, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1711, line: 65, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1710, file: !1711, line: 66, baseType: !1721, size: 128, offset: 256)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1722, line: 105, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1721, file: !1722, line: 110, baseType: !313, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1721, file: !1722, line: 118, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1722, line: 95, size: 448, elements: !1728)
!1728 = !{!1729, !1730, !1736, !1737, !1738, !1739, !1740}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1727, file: !1722, line: 96, baseType: !289, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1727, file: !1722, line: 97, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1722, line: 60, baseType: !1733)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1727, file: !1722, line: 98, baseType: !1731, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1727, file: !1722, line: 99, baseType: !754, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1727, file: !1722, line: 100, baseType: !754, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1727, file: !1722, line: 101, baseType: !936, size: 128, align: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1727, file: !1722, line: 102, baseType: !1735, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1710, file: !1711, line: 68, baseType: !1742, size: 5568, offset: 384)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !135, line: 461, size: 5568, elements: !1743)
!1743 = !{!1744, !2043, !2045, !2048, !2049, !2100, !2192, !2193, !2194, !2195, !2196, !2205, !2331, !2344, !2348, !2349, !2353, !2355, !2356, !2357, !2361, !2367, !2368, !2371, !2375, !2465, !2466, !2467, !2468, !2469, !2501, !2502, !2503, !2506, !2509, !2510, !2511, !2512}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1742, file: !135, line: 462, baseType: !1745, size: 512)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1746, line: 64, size: 512, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1749, !1750, !1752, !1794, !1899, !2033, !2038, !2039, !2040, !2041, !2042}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1745, file: !1746, line: 65, baseType: !709, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1745, file: !1746, line: 66, baseType: !258, size: 128, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1745, file: !1746, line: 67, baseType: !1751, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1745, file: !1746, line: 68, baseType: !1753, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1746, line: 192, size: 704, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1754, file: !1746, line: 193, baseType: !258, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1754, file: !1746, line: 194, baseType: !267, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1754, file: !1746, line: 195, baseType: !1745, size: 512, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1754, file: !1746, line: 196, baseType: !1760, size: 64, offset: 640)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1746, line: 156, size: 192, elements: !1763)
!1763 = !{!1764, !1769, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1762, file: !1746, line: 157, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!331, !1753, !1751}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1762, file: !1746, line: 158, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!709, !1753, !1751}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1762, file: !1746, line: 159, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!331, !1753, !1751, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1746, line: 148, size: 20736, elements: !1781)
!1781 = !{!1782, !1784, !1788, !1789, !1793}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1780, file: !1746, line: 149, baseType: !1783, size: 192)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 192, elements: !821)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1780, file: !1746, line: 150, baseType: !1785, size: 4096, offset: 192)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 4096, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1780, file: !1746, line: 151, baseType: !331, size: 32, offset: 4288)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1780, file: !1746, line: 152, baseType: !1790, size: 16384, offset: 4320)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 16384, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: 2048)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1780, file: !1746, line: 153, baseType: !331, size: 32, offset: 20704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1745, file: !1746, line: 69, baseType: !1795, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1746, line: 138, size: 448, elements: !1797)
!1797 = !{!1798, !1802, !1821, !1823, !1856, !1889, !1893}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1796, file: !1746, line: 139, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1751}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1796, file: !1746, line: 140, baseType: !1803, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1806, line: 230, size: 128, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1817}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1805, file: !1806, line: 231, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!961, !1751, !1812, !735}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1806, line: 30, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1813, file: !1806, line: 31, baseType: !709, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1813, file: !1806, line: 32, baseType: !610, size: 16, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1805, file: !1806, line: 232, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!961, !1751, !1812, !709, !889}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1796, file: !1746, line: 141, baseType: !1822, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1796, file: !1746, line: 142, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1806, line: 84, size: 320, elements: !1828)
!1828 = !{!1829, !1830, !1834, !1853, !1854}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1827, file: !1806, line: 85, baseType: !709, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1827, file: !1806, line: 86, baseType: !1831, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!610, !1751, !1812, !331}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1827, file: !1806, line: 88, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!610, !1751, !1838, !331}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1806, line: 168, size: 448, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1848, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1839, file: !1806, line: 169, baseType: !1813, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1839, file: !1806, line: 170, baseType: !889, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1839, file: !1806, line: 171, baseType: !253, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1839, file: !1806, line: 172, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!961, !956, !1751, !1838, !735, !773, !889}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1839, file: !1806, line: 174, baseType: !1845, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1839, file: !1806, line: 176, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!331, !956, !1751, !1838, !509}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1827, file: !1806, line: 90, baseType: !1822, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1827, file: !1806, line: 91, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1796, file: !1746, line: 143, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !1751}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !123, line: 39, size: 384, elements: !1863)
!1863 = !{!1864, !1865, !1869, !1873, !1881, !1885}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !123, line: 40, baseType: !122, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1862, file: !123, line: 41, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!754}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1862, file: !123, line: 42, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!253}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1862, file: !123, line: 43, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1877, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !123, line: 19, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1862, file: !123, line: 44, baseType: !1882, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1877}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1862, file: !123, line: 45, baseType: !1886, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !253}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1796, file: !1746, line: 144, baseType: !1890, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1877, !1751}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1796, file: !1746, line: 145, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1751, !1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1745, file: !1746, line: 70, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1902, line: 123, size: 1024, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !2026, !2027, !2028, !2029, !2030}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1901, file: !1902, line: 124, baseType: !327, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1901, file: !1902, line: 125, baseType: !327, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1901, file: !1902, line: 135, baseType: !1900, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1901, file: !1902, line: 136, baseType: !709, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1901, file: !1902, line: 138, baseType: !352, size: 192, align: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1901, file: !1902, line: 140, baseType: !1877, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1901, file: !1902, line: 141, baseType: !7, size: 32, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 142, baseType: !1912, size: 256, offset: 512)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 142, size: 256, elements: !1913)
!1913 = !{!1914, !1966, !1970}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1912, file: !1902, line: 143, baseType: !1915, size: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1902, line: 91, size: 192, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1915, file: !1902, line: 92, baseType: !313, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1915, file: !1902, line: 94, baseType: !464, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1915, file: !1902, line: 100, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1902, line: 180, size: 704, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1938, !1939, !1940, !1964, !1965}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1921, file: !1902, line: 182, baseType: !1900, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1902, line: 183, baseType: !7, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1921, file: !1902, line: 186, baseType: !1926, size: 192, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1927, line: 19, size: 192, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1936, !1937}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1926, file: !1927, line: 20, baseType: !1930, size: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1931, line: 292, size: 128, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1930, file: !1931, line: 293, baseType: !267)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1930, file: !1931, line: 295, baseType: !566, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1930, file: !1931, line: 296, baseType: !253, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1926, file: !1927, line: 21, baseType: !7, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1926, file: !1927, line: 22, baseType: !7, size: 32, offset: 160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1921, file: !1902, line: 187, baseType: !315, size: 32, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1921, file: !1902, line: 188, baseType: !315, size: 32, offset: 352)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1921, file: !1902, line: 189, baseType: !1941, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1902, line: 168, size: 320, elements: !1943)
!1943 = !{!1944, !1948, !1952, !1956, !1960}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1942, file: !1902, line: 169, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!331, !883, !1920}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1942, file: !1902, line: 171, baseType: !1949, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!331, !1900, !709, !610}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1942, file: !1902, line: 173, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!331, !1900}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1942, file: !1902, line: 174, baseType: !1957, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!331, !1900, !1900, !709}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1942, file: !1902, line: 176, baseType: !1961, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!331, !883, !1900, !1920}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1921, file: !1902, line: 192, baseType: !258, size: 128, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1921, file: !1902, line: 194, baseType: !1087, size: 128, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1912, file: !1902, line: 144, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1902, line: 103, size: 64, elements: !1968)
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1967, file: !1902, line: 104, baseType: !1900, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1912, file: !1902, line: 145, baseType: !1971, size: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1902, line: 107, size: 256, elements: !1972)
!1972 = !{!1973, !2021, !2024, !2025}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1971, file: !1902, line: 108, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1902, line: 217, size: 768, elements: !1977)
!1977 = !{!1978, !1998, !2002, !2003, !2004, !2005, !2006, !2010, !2011, !2012, !2013, !2017}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1976, file: !1902, line: 222, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!331, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1902, line: 197, size: 1088, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1983, file: !1902, line: 199, baseType: !1900, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1983, file: !1902, line: 200, baseType: !956, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1983, file: !1902, line: 201, baseType: !883, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1983, file: !1902, line: 202, baseType: !253, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1983, file: !1902, line: 205, baseType: !285, size: 192, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1983, file: !1902, line: 206, baseType: !285, size: 192, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1983, file: !1902, line: 207, baseType: !331, size: 32, offset: 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1983, file: !1902, line: 208, baseType: !258, size: 128, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1983, file: !1902, line: 209, baseType: !735, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1983, file: !1902, line: 211, baseType: !889, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1983, file: !1902, line: 212, baseType: !754, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1983, file: !1902, line: 213, baseType: !754, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1983, file: !1902, line: 214, baseType: !538, size: 64, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1976, file: !1902, line: 223, baseType: !1999, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1982}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1976, file: !1902, line: 236, baseType: !917, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1976, file: !1902, line: 238, baseType: !904, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1976, file: !1902, line: 239, baseType: !913, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1976, file: !1902, line: 240, baseType: !909, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1976, file: !1902, line: 242, baseType: !2007, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!961, !1982, !735, !889, !773}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1976, file: !1902, line: 252, baseType: !889, size: 64, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1976, file: !1902, line: 259, baseType: !754, size: 8, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1976, file: !1902, line: 260, baseType: !2007, size: 64, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1976, file: !1902, line: 263, baseType: !2014, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!1037, !1982, !1039}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1976, file: !1902, line: 266, baseType: !2018, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!331, !1982, !509}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1971, file: !1902, line: 109, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1902, line: 31, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1971, file: !1902, line: 110, baseType: !773, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1971, file: !1902, line: 111, baseType: !1900, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1901, file: !1902, line: 148, baseType: !253, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1901, file: !1902, line: 154, baseType: !362, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1902, line: 156, baseType: !379, size: 16, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1901, file: !1902, line: 157, baseType: !610, size: 16, offset: 912)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1901, file: !1902, line: 158, baseType: !2031, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1902, line: 32, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1745, file: !1746, line: 71, baseType: !2034, size: 32, offset: 448)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2035, line: 19, size: 32, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2034, file: !2035, line: 20, baseType: !322, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1745, file: !1746, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1745, file: !1746, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1745, file: !1746, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1745, file: !1746, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1745, file: !1746, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1742, file: !135, line: 463, baseType: !2044, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1742, file: !135, line: 465, baseType: !2046, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !135, line: 36, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1742, file: !135, line: 467, baseType: !709, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1742, file: !135, line: 468, baseType: !2050, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !135, line: 87, size: 384, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2060, !2065, !2069}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2052, file: !135, line: 88, baseType: !709, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2052, file: !135, line: 89, baseType: !1824, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2052, file: !135, line: 90, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!331, !2044, !1779}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2052, file: !135, line: 91, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!735, !2044, !2064, !1897, !1898}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2052, file: !135, line: 93, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2044}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2052, file: !135, line: 95, baseType: !2070, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !81, line: 278, size: 1472, elements: !2073)
!2073 = !{!2074, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2072, file: !81, line: 279, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!331, !2044}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2072, file: !81, line: 280, baseType: !2066, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2072, file: !81, line: 281, baseType: !2075, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2072, file: !81, line: 282, baseType: !2075, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2072, file: !81, line: 283, baseType: !2075, size: 64, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2072, file: !81, line: 284, baseType: !2075, size: 64, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2072, file: !81, line: 285, baseType: !2075, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2072, file: !81, line: 286, baseType: !2075, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2072, file: !81, line: 287, baseType: !2075, size: 64, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2072, file: !81, line: 288, baseType: !2075, size: 64, offset: 576)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2072, file: !81, line: 289, baseType: !2075, size: 64, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2072, file: !81, line: 290, baseType: !2075, size: 64, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2072, file: !81, line: 291, baseType: !2075, size: 64, offset: 768)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2072, file: !81, line: 292, baseType: !2075, size: 64, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2072, file: !81, line: 293, baseType: !2075, size: 64, offset: 896)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2072, file: !81, line: 294, baseType: !2075, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2072, file: !81, line: 295, baseType: !2075, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2072, file: !81, line: 296, baseType: !2075, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2072, file: !81, line: 297, baseType: !2075, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2072, file: !81, line: 298, baseType: !2075, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2072, file: !81, line: 299, baseType: !2075, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2072, file: !81, line: 300, baseType: !2075, size: 64, offset: 1344)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2072, file: !81, line: 301, baseType: !2075, size: 64, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1742, file: !135, line: 470, baseType: !2101, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2103, line: 82, size: 1408, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2187, !2190, !2191}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2102, file: !2103, line: 83, baseType: !709, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2102, file: !2103, line: 84, baseType: !709, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2102, file: !2103, line: 85, baseType: !2044, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2102, file: !2103, line: 86, baseType: !1824, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2102, file: !2103, line: 87, baseType: !1824, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2102, file: !2103, line: 88, baseType: !1824, size: 64, offset: 320)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2102, file: !2103, line: 90, baseType: !2112, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!331, !2044, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !129, line: 95, size: 1152, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2138, !2151, !2152, !2153, !2154, !2155, !2163, !2164, !2165, !2166, !2167, !2168}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !129, line: 96, baseType: !709, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2116, file: !129, line: 97, baseType: !2101, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2116, file: !129, line: 99, baseType: !800, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2116, file: !129, line: 100, baseType: !709, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2116, file: !129, line: 102, baseType: !754, size: 8, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2116, file: !129, line: 103, baseType: !128, size: 32, offset: 288)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2116, file: !129, line: 105, baseType: !2125, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2128, line: 262, size: 1600, elements: !2129)
!2128 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2132, !2133, !2137}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2127, file: !2128, line: 263, baseType: !2131, size: 256)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 256, elements: !674)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2127, file: !2128, line: 264, baseType: !2131, size: 256, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2127, file: !2128, line: 265, baseType: !2134, size: 1024, offset: 512)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 1024, elements: !2135)
!2135 = !{!2136}
!2136 = !DISubrange(count: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2127, file: !2128, line: 266, baseType: !1877, size: 64, offset: 1536)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2116, file: !129, line: 106, baseType: !2139, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2128, line: 210, size: 256, elements: !2142)
!2142 = !{!2143, !2147, !2149, !2150}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2141, file: !2128, line: 211, baseType: !2144, size: 72)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 72, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 9)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2141, file: !2128, line: 212, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2128, line: 14, baseType: !313)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2141, file: !2128, line: 213, baseType: !316, size: 32, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2141, file: !2128, line: 214, baseType: !316, size: 32, offset: 224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2116, file: !129, line: 108, baseType: !2075, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2116, file: !129, line: 109, baseType: !2066, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2116, file: !129, line: 110, baseType: !2075, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2116, file: !129, line: 111, baseType: !2066, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2116, file: !129, line: 112, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!331, !2044, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !81, line: 52, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !81, line: 50, size: 32, elements: !2161)
!2161 = !{!2162}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2160, file: !81, line: 51, baseType: !331, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2116, file: !129, line: 113, baseType: !2075, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2116, file: !129, line: 114, baseType: !1824, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2116, file: !129, line: 115, baseType: !1824, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2116, file: !129, line: 117, baseType: !2070, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2116, file: !129, line: 118, baseType: !2066, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2116, file: !129, line: 120, baseType: !2169, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !129, line: 120, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2102, file: !2103, line: 91, baseType: !2057, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2102, file: !2103, line: 92, baseType: !2075, size: 64, offset: 512)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2102, file: !2103, line: 93, baseType: !2066, size: 64, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2102, file: !2103, line: 94, baseType: !2075, size: 64, offset: 640)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2102, file: !2103, line: 95, baseType: !2066, size: 64, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2102, file: !2103, line: 97, baseType: !2075, size: 64, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2102, file: !2103, line: 98, baseType: !2075, size: 64, offset: 832)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2102, file: !2103, line: 100, baseType: !2156, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2102, file: !2103, line: 101, baseType: !2075, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2102, file: !2103, line: 103, baseType: !2075, size: 64, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2102, file: !2103, line: 105, baseType: !2075, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2102, file: !2103, line: 107, baseType: !2070, size: 64, offset: 1152)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2102, file: !2103, line: 109, baseType: !2184, size: 64, offset: 1216)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2103, line: 109, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2102, file: !2103, line: 111, baseType: !2188, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2103, line: 111, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2102, file: !2103, line: 112, baseType: !815, offset: 1344)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2102, file: !2103, line: 114, baseType: !754, size: 8, offset: 1344)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1742, file: !135, line: 471, baseType: !2115, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1742, file: !135, line: 473, baseType: !253, size: 64, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1742, file: !135, line: 475, baseType: !253, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1742, file: !135, line: 480, baseType: !285, size: 192, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1742, file: !135, line: 484, baseType: !2197, size: 576, offset: 1216)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !135, line: 361, size: 576, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2197, file: !135, line: 362, baseType: !258, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2197, file: !135, line: 363, baseType: !258, size: 128, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2197, file: !135, line: 364, baseType: !258, size: 128, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2197, file: !135, line: 365, baseType: !258, size: 128, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2197, file: !135, line: 366, baseType: !754, size: 8, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2197, file: !135, line: 367, baseType: !134, size: 32, offset: 544)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1742, file: !135, line: 485, baseType: !2206, size: 2304, offset: 1792)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !81, line: 565, size: 2304, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2233, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2324, !2328}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2206, file: !81, line: 566, baseType: !2159, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2206, file: !81, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2206, file: !81, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2206, file: !81, line: 569, baseType: !754, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2206, file: !81, line: 570, baseType: !754, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2206, file: !81, line: 571, baseType: !754, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2206, file: !81, line: 572, baseType: !754, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2206, file: !81, line: 573, baseType: !754, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2206, file: !81, line: 574, baseType: !754, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2206, file: !81, line: 575, baseType: !754, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2206, file: !81, line: 576, baseType: !754, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2206, file: !81, line: 577, baseType: !315, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !81, line: 578, baseType: !267, offset: 96)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2206, file: !81, line: 580, baseType: !258, size: 128, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2206, file: !81, line: 581, baseType: !2223, size: 192, offset: 256)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2224, line: 26, size: 192, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2223, file: !2224, line: 27, baseType: !7, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2223, file: !2224, line: 28, baseType: !2228, size: 128, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2229, line: 43, size: 128, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2228, file: !2229, line: 44, baseType: !425)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2228, file: !2229, line: 45, baseType: !258, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2206, file: !81, line: 582, baseType: !2234, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2236, line: 43, size: 1472, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2245, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2235, file: !2236, line: 44, baseType: !709, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2235, file: !2236, line: 45, baseType: !331, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2235, file: !2236, line: 46, baseType: !258, size: 128, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2235, file: !2236, line: 47, baseType: !267, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2235, file: !2236, line: 48, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !81, line: 533, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2235, file: !2236, line: 49, baseType: !2246, size: 320, offset: 320)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2247, line: 11, size: 320, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2250, !2251, !2256}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2246, file: !2247, line: 16, baseType: !809, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2246, file: !2247, line: 17, baseType: !313, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2246, file: !2247, line: 18, baseType: !2252, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2246, file: !2247, line: 19, baseType: !315, size: 32, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2235, file: !2236, line: 50, baseType: !313, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2235, file: !2236, line: 51, baseType: !408, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2235, file: !2236, line: 52, baseType: !408, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2235, file: !2236, line: 53, baseType: !408, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2235, file: !2236, line: 54, baseType: !408, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2235, file: !2236, line: 55, baseType: !408, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2235, file: !2236, line: 56, baseType: !313, size: 64, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2235, file: !2236, line: 57, baseType: !313, size: 64, offset: 1088)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2235, file: !2236, line: 58, baseType: !313, size: 64, offset: 1152)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2235, file: !2236, line: 59, baseType: !313, size: 64, offset: 1216)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2235, file: !2236, line: 60, baseType: !313, size: 64, offset: 1280)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2235, file: !2236, line: 61, baseType: !2044, size: 64, offset: 1344)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2235, file: !2236, line: 62, baseType: !754, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2235, file: !2236, line: 63, baseType: !754, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2206, file: !81, line: 583, baseType: !754, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2206, file: !81, line: 584, baseType: !754, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2206, file: !81, line: 585, baseType: !754, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2206, file: !81, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2206, file: !81, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2206, file: !81, line: 592, baseType: !400, size: 512, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2206, file: !81, line: 593, baseType: !362, size: 64, offset: 1088)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2206, file: !81, line: 594, baseType: !2279, size: 256, offset: 1152)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2280, line: 102, size: 256, elements: !2281)
!2280 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !{!2282, !2283, !2284}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2279, file: !2280, line: 103, baseType: !289, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2279, file: !2280, line: 104, baseType: !258, size: 128, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2279, file: !2280, line: 105, baseType: !2285, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2280, line: 21, baseType: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2206, file: !81, line: 595, baseType: !1087, size: 128, offset: 1408)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2206, file: !81, line: 596, baseType: !2243, size: 64, offset: 1536)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2206, file: !81, line: 597, baseType: !327, size: 32, offset: 1600)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2206, file: !81, line: 598, baseType: !327, size: 32, offset: 1632)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2206, file: !81, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2206, file: !81, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2206, file: !81, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2206, file: !81, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2206, file: !81, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2206, file: !81, line: 604, baseType: !754, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2206, file: !81, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2206, file: !81, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2206, file: !81, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2206, file: !81, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2206, file: !81, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2206, file: !81, line: 610, baseType: !7, size: 32, offset: 1696)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2206, file: !81, line: 611, baseType: !141, size: 32, offset: 1728)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2206, file: !81, line: 612, baseType: !80, size: 32, offset: 1760)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2206, file: !81, line: 613, baseType: !331, size: 32, offset: 1792)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2206, file: !81, line: 614, baseType: !331, size: 32, offset: 1824)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2206, file: !81, line: 615, baseType: !362, size: 64, offset: 1856)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2206, file: !81, line: 616, baseType: !362, size: 64, offset: 1920)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2206, file: !81, line: 617, baseType: !362, size: 64, offset: 1984)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2206, file: !81, line: 618, baseType: !362, size: 64, offset: 2048)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2206, file: !81, line: 620, baseType: !2315, size: 64, offset: 2112)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !81, line: 536, size: 256, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2316, file: !81, line: 537, baseType: !267)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2316, file: !81, line: 538, baseType: !7, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2316, file: !81, line: 540, baseType: !258, size: 128, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2316, file: !81, line: 543, baseType: !2322, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !81, line: 534, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2206, file: !81, line: 621, baseType: !2325, size: 64, offset: 2176)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !2044, !1305}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2206, file: !81, line: 622, baseType: !2329, size: 64, offset: 2240)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !81, line: 622, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1742, file: !135, line: 486, baseType: !2332, size: 64, offset: 4096)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !81, line: 642, size: 1792, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2341, !2342, !2343}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2333, file: !81, line: 643, baseType: !2072, size: 1472)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2333, file: !81, line: 644, baseType: !2075, size: 64, offset: 1472)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2333, file: !81, line: 645, baseType: !2338, size: 64, offset: 1536)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2044, !754}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2333, file: !81, line: 646, baseType: !2075, size: 64, offset: 1600)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2333, file: !81, line: 647, baseType: !2066, size: 64, offset: 1664)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2333, file: !81, line: 648, baseType: !2066, size: 64, offset: 1728)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1742, file: !135, line: 493, baseType: !2345, size: 64, offset: 4160)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2347, line: 13, flags: DIFlagFwdDecl)
!2347 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1742, file: !135, line: 499, baseType: !258, size: 128, offset: 4224)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1742, file: !135, line: 502, baseType: !2350, size: 64, offset: 4352)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !135, line: 502, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1742, file: !135, line: 504, baseType: !2354, size: 64, offset: 4416)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1742, file: !135, line: 505, baseType: !362, size: 64, offset: 4480)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1742, file: !135, line: 510, baseType: !362, size: 64, offset: 4544)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1742, file: !135, line: 511, baseType: !2358, size: 64, offset: 4608)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !135, line: 511, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1742, file: !135, line: 513, baseType: !2362, size: 64, offset: 4672)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !135, line: 288, size: 128, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2363, file: !135, line: 293, baseType: !7, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2363, file: !135, line: 294, baseType: !313, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1742, file: !135, line: 515, baseType: !258, size: 128, offset: 4736)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1742, file: !135, line: 526, baseType: !2369, offset: 4864)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2370, line: 5, elements: !281)
!2370 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1742, file: !135, line: 528, baseType: !2372, size: 64, offset: 4864)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2374, line: 14, flags: DIFlagFwdDecl)
!2374 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1742, file: !135, line: 529, baseType: !2376, size: 64, offset: 4928)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2378, line: 17, size: 192, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2379 = !{!2380, !2381, !2464}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2377, file: !2378, line: 18, baseType: !2376, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2377, file: !2378, line: 19, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2378, line: 110, size: 1152, elements: !2385)
!2385 = !{!2386, !2390, !2394, !2400, !2406, !2410, !2414, !2419, !2423, !2424, !2428, !2432, !2436, !2447, !2448, !2449, !2450, !2460}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2384, file: !2378, line: 111, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2376, !2376}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2384, file: !2378, line: 112, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2376}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2384, file: !2378, line: 113, baseType: !2395, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!754, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2384, file: !2378, line: 114, baseType: !2401, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!1877, !2398, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2384, file: !2378, line: 116, baseType: !2407, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!754, !2398, !709}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2384, file: !2378, line: 118, baseType: !2411, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!331, !2398, !709, !7, !253, !889}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2384, file: !2378, line: 123, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!331, !2398, !709, !2418, !889}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2384, file: !2378, line: 126, baseType: !2420, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!709, !2398}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2384, file: !2378, line: 127, baseType: !2420, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2384, file: !2378, line: 128, baseType: !2425, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!2376, !2398}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2384, file: !2378, line: 130, baseType: !2429, size: 64, offset: 640)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!2376, !2398, !2376}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2384, file: !2378, line: 133, baseType: !2433, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!2376, !2398, !709}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2384, file: !2378, line: 135, baseType: !2437, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!331, !2398, !709, !709, !7, !7, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2378, line: 43, size: 640, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2441, file: !2378, line: 44, baseType: !2376, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2441, file: !2378, line: 45, baseType: !7, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2441, file: !2378, line: 46, baseType: !2446, size: 512, offset: 128)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 512, elements: !439)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2384, file: !2378, line: 140, baseType: !2429, size: 64, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2384, file: !2378, line: 143, baseType: !2425, size: 64, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2384, file: !2378, line: 145, baseType: !2387, size: 64, offset: 960)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2384, file: !2378, line: 146, baseType: !2451, size: 64, offset: 1024)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!331, !2398, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2378, line: 29, size: 128, elements: !2456)
!2456 = !{!2457, !2458, !2459}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2455, file: !2378, line: 30, baseType: !7, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2455, file: !2378, line: 31, baseType: !7, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2455, file: !2378, line: 32, baseType: !2398, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2384, file: !2378, line: 148, baseType: !2461, size: 64, offset: 1088)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!331, !2398, !2044}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2377, file: !2378, line: 20, baseType: !2044, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1742, file: !135, line: 534, baseType: !768, size: 32, offset: 4992)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1742, file: !135, line: 535, baseType: !315, size: 32, offset: 5024)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1742, file: !135, line: 537, baseType: !267, offset: 5056)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1742, file: !135, line: 538, baseType: !258, size: 128, offset: 5056)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1742, file: !135, line: 540, baseType: !2470, size: 64, offset: 5184)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2472, line: 54, size: 960, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2484, !2488, !2489, !2490, !2491, !2495, !2499, !2500}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2471, file: !2472, line: 55, baseType: !709, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2471, file: !2472, line: 56, baseType: !800, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2471, file: !2472, line: 58, baseType: !1824, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2471, file: !2472, line: 59, baseType: !1824, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2471, file: !2472, line: 60, baseType: !1751, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2471, file: !2472, line: 62, baseType: !2057, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2471, file: !2472, line: 63, baseType: !2481, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!735, !2044, !2064}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2471, file: !2472, line: 65, baseType: !2485, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2470}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2471, file: !2472, line: 66, baseType: !2066, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2471, file: !2472, line: 68, baseType: !2075, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2471, file: !2472, line: 70, baseType: !1860, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2471, file: !2472, line: 71, baseType: !2492, size: 64, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!1877, !2044}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2471, file: !2472, line: 73, baseType: !2496, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2044, !1897, !1898}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2471, file: !2472, line: 75, baseType: !2070, size: 64, offset: 832)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2471, file: !2472, line: 77, baseType: !2188, size: 64, offset: 896)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1742, file: !135, line: 541, baseType: !1824, size: 64, offset: 5248)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1742, file: !135, line: 543, baseType: !2066, size: 64, offset: 5312)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1742, file: !135, line: 544, baseType: !2504, size: 64, offset: 5376)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !135, line: 45, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1742, file: !135, line: 545, baseType: !2507, size: 64, offset: 5440)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !135, line: 47, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1742, file: !135, line: 547, baseType: !754, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1742, file: !135, line: 548, baseType: !754, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1742, file: !135, line: 549, baseType: !754, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1742, file: !135, line: 550, baseType: !754, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1710, file: !1711, line: 69, baseType: !1751, size: 64, offset: 5952)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1710, file: !1711, line: 70, baseType: !331, size: 32, offset: 6016)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1710, file: !1711, line: 70, baseType: !331, size: 32, offset: 6048)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1710, file: !1711, line: 71, baseType: !2517, size: 64, offset: 6080)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1711, line: 48, size: 808, elements: !2519)
!2519 = !{!2520, !2524}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2518, file: !1711, line: 49, baseType: !2521, size: 296)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 296, elements: !2522)
!2522 = !{!2523}
!2523 = !DISubrange(count: 37)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2518, file: !1711, line: 50, baseType: !2525, size: 512, offset: 296)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 512, elements: !1786)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1710, file: !1711, line: 75, baseType: !2527, size: 448, offset: 6144)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !2280, line: 124, size: 448, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2527, file: !2280, line: 125, baseType: !2279, size: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2527, file: !2280, line: 126, baseType: !936, size: 128, align: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2527, file: !2280, line: 129, baseType: !2532, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2280, line: 18, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1693, file: !1694, line: 39, baseType: !7, size: 32, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1693, file: !1694, line: 41, baseType: !267, offset: 928)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1693, file: !1694, line: 42, baseType: !2537, size: 64, offset: 960)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1711, line: 167, size: 8512, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2557, !2558, !2739, !3439, !3440, !3441, !3442, !3443, !3444, !3447, !3448, !3451, !3452, !3453, !3456}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2538, file: !1711, line: 171, baseType: !331, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2538, file: !1711, line: 172, baseType: !331, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2538, file: !1711, line: 173, baseType: !331, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2538, file: !1711, line: 176, baseType: !2131, size: 256, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2538, file: !1711, line: 178, baseType: !379, size: 16, offset: 352)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2538, file: !1711, line: 179, baseType: !379, size: 16, offset: 368)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2538, file: !1711, line: 186, baseType: !2547, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1711, line: 149, size: 256, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2548, file: !1711, line: 150, baseType: !936, size: 128, align: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2548, file: !1711, line: 151, baseType: !331, size: 32, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !2548, file: !1711, line: 152, baseType: !1709, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2548, file: !1711, line: 153, baseType: !2554, offset: 256)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1709, elements: !2555)
!2555 = !{!2556}
!2556 = !DISubrange(count: -1)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2538, file: !1711, line: 187, baseType: !1710, size: 6592, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2538, file: !1711, line: 189, baseType: !2559, size: 64, offset: 7040)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !64, line: 1844, size: 960, elements: !2562)
!2562 = !{!2563, !2665, !2669, !2673, !2677, !2681, !2682, !2686, !2690, !2694, !2700, !2704, !2730, !2734, !2735}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2561, file: !64, line: 1845, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1694, line: 515, baseType: !7)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1694, line: 203, size: 832, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2579, !2580, !2581, !2589, !2594, !2595, !2620, !2621, !2622, !2623, !2624, !2664}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2569, file: !1694, line: 204, baseType: !2568, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !2569, file: !1694, line: 205, baseType: !2537, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2569, file: !1694, line: 206, baseType: !7, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2569, file: !1694, line: 210, baseType: !379, size: 16, offset: 160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2569, file: !1694, line: 211, baseType: !379, size: 16, offset: 176)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !2569, file: !1694, line: 212, baseType: !379, size: 16, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2569, file: !1694, line: 213, baseType: !2578, size: 8, offset: 208)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1694, line: 58, baseType: !474)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !2569, file: !1694, line: 214, baseType: !474, size: 8, offset: 216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2569, file: !1694, line: 215, baseType: !327, size: 32, offset: 224)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2569, file: !1694, line: 217, baseType: !2582, size: 192, offset: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2583, line: 37, size: 192, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2582, file: !2583, line: 38, baseType: !1714, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2582, file: !2583, line: 40, baseType: !7, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2582, file: !2583, line: 42, baseType: !7, size: 32, offset: 96)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2582, file: !2583, line: 44, baseType: !7, size: 32, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2569, file: !1694, line: 219, baseType: !2590, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1694, line: 19, baseType: !2592)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2568}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2569, file: !1694, line: 221, baseType: !253, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2569, file: !1694, line: 240, baseType: !2596, size: 64, offset: 576)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2569, file: !1694, line: 240, size: 64, elements: !2597)
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !2596, file: !1694, line: 242, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !2601, line: 313, size: 832, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2618}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !2600, file: !2601, line: 314, baseType: !2568, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !2600, file: !2601, line: 316, baseType: !2582, size: 192, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !2600, file: !2601, line: 318, baseType: !379, size: 16, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !2600, file: !2601, line: 319, baseType: !379, size: 16, offset: 272)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !2600, file: !2601, line: 320, baseType: !379, size: 16, offset: 288)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !2600, file: !2601, line: 321, baseType: !379, size: 16, offset: 304)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !2600, file: !2601, line: 323, baseType: !2582, size: 192, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !2600, file: !2601, line: 325, baseType: !2279, size: 256, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !2600, file: !2601, line: 327, baseType: !2612, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2583, line: 31, size: 128, elements: !2614)
!2614 = !{!2615, !2616, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2613, file: !2583, line: 32, baseType: !590, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2613, file: !2583, line: 33, baseType: !7, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2613, file: !2583, line: 34, baseType: !7, size: 32, offset: 96)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !2600, file: !2601, line: 328, baseType: !2619, offset: 832)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2613, elements: !2555)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2569, file: !1694, line: 246, baseType: !379, size: 16, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2569, file: !1694, line: 252, baseType: !379, size: 16, offset: 656)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2569, file: !1694, line: 254, baseType: !327, size: 32, offset: 672)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2569, file: !1694, line: 256, baseType: !2612, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2569, file: !1694, line: 258, baseType: !2625, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2601, line: 682, size: 2368, elements: !2627)
!2627 = !{!2628, !2631, !2632, !2653, !2654, !2655, !2656, !2657, !2662, !2663}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2626, file: !2601, line: 683, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !503, line: 117, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2626, file: !2601, line: 684, baseType: !7, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2626, file: !2601, line: 686, baseType: !2633, size: 448, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2634, line: 26, baseType: !2635)
!2634 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2634, line: 16, size: 448, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2647, !2652}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2635, file: !2634, line: 17, baseType: !267)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2635, file: !2634, line: 18, baseType: !331, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2635, file: !2634, line: 19, baseType: !331, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2635, file: !2634, line: 20, baseType: !1157, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2635, file: !2634, line: 22, baseType: !253, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2635, file: !2634, line: 23, baseType: !2643, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2634, line: 13, baseType: !2645)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!253, !566, !253}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2635, file: !2634, line: 24, baseType: !2648, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2634, line: 14, baseType: !2650)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !253, !253}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2635, file: !2634, line: 25, baseType: !1087, size: 128, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2626, file: !2601, line: 687, baseType: !2633, size: 448, offset: 576)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !2626, file: !2601, line: 689, baseType: !2633, size: 448, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !2626, file: !2601, line: 690, baseType: !2633, size: 448, offset: 1472)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2626, file: !2601, line: 697, baseType: !267, offset: 1920)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2626, file: !2601, line: 698, baseType: !2658, size: 128, offset: 1920)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2601, line: 554, size: 128, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2658, file: !2601, line: 555, baseType: !2568, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2658, file: !2601, line: 556, baseType: !2568, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2626, file: !2601, line: 699, baseType: !2279, size: 256, offset: 2048)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2626, file: !2601, line: 700, baseType: !2532, size: 64, offset: 2304)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2569, file: !1694, line: 265, baseType: !2619, offset: 832)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2561, file: !64, line: 1846, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!331, !1692, !1233}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2561, file: !64, line: 1847, baseType: !2670, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2537, !1233}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !2561, file: !64, line: 1848, baseType: !2674, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!331, !1692, !1714, !590, !7}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2561, file: !64, line: 1849, baseType: !2678, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!331, !1692, !1233, !7, !313}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2561, file: !64, line: 1850, baseType: !2678, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2561, file: !64, line: 1851, baseType: !2683, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!7, !2537, !7}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2561, file: !64, line: 1853, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2537}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !2561, file: !64, line: 1854, baseType: !2691, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!331, !2537}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2561, file: !64, line: 1855, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!331, !1692, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !106, line: 51, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2561, file: !64, line: 1857, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !1692, !313}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2561, file: !64, line: 1858, baseType: !2705, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!331, !2537, !1714, !7, !2708, !253}
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !64, line: 354, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!331, !2712, !7, !253}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2714, line: 106, size: 512, elements: !2715)
!2714 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2725, !2726}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2713, file: !2714, line: 107, baseType: !363, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2713, file: !2714, line: 108, baseType: !363, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2713, file: !2714, line: 109, baseType: !363, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2713, file: !2714, line: 110, baseType: !475, size: 8, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2713, file: !2714, line: 111, baseType: !475, size: 8, offset: 200)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2713, file: !2714, line: 112, baseType: !475, size: 8, offset: 208)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2713, file: !2714, line: 113, baseType: !475, size: 8, offset: 216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2713, file: !2714, line: 114, baseType: !2724, size: 32, offset: 224)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 32, elements: !1249)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2713, file: !2714, line: 115, baseType: !363, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2713, file: !2714, line: 116, baseType: !2727, size: 192, offset: 320)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 192, elements: !2728)
!2728 = !{!2729}
!2729 = !DISubrange(count: 24)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2561, file: !64, line: 1860, baseType: !2731, size: 64, offset: 768)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!735, !2537, !2064}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2561, file: !64, line: 1861, baseType: !800, size: 64, offset: 832)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2561, file: !64, line: 1862, baseType: !2736, size: 64, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !64, line: 41, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2538, file: !1711, line: 190, baseType: !2740, size: 64, offset: 7104)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !64, line: 399, size: 14464, elements: !2742)
!2742 = !{!2743, !2959, !3081, !3082, !3085, !3088, !3184, !3185, !3186, !3188, !3189, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3305, !3316, !3317, !3318, !3319, !3320, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2741, file: !64, line: 400, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !64, line: 130, size: 2176, elements: !2746)
!2746 = !{!2747, !2748, !2751, !2841, !2842, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2856, !2863, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2957, !2958}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2745, file: !64, line: 131, baseType: !2740, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2745, file: !64, line: 132, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !64, line: 132, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2745, file: !64, line: 133, baseType: !2752, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !2754, line: 16, size: 4032, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !{!2756, !2762, !2769, !2772, !2773, !2774, !2775, !2776, !2777, !2780, !2781, !2796, !2797, !2798, !2799, !2800, !2802, !2803, !2804, !2805, !2808, !2809, !2810, !2811, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826}
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2753, file: !2754, line: 17, baseType: !2757, size: 192)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2753, file: !2754, line: 17, size: 192, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2757, file: !2754, line: 19, baseType: !267)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2757, file: !2754, line: 27, baseType: !258, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2757, file: !2754, line: 32, baseType: !313, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2753, file: !2754, line: 38, baseType: !2763, size: 704, offset: 192)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2280, line: 115, size: 704, elements: !2764)
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2763, file: !2280, line: 116, baseType: !2279, size: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2763, file: !2280, line: 117, baseType: !2246, size: 320, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2763, file: !2280, line: 120, baseType: !2532, size: 64, offset: 576)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2763, file: !2280, line: 121, baseType: !331, size: 32, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2753, file: !2754, line: 40, baseType: !2770, size: 64, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !489, line: 756, baseType: !2771)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !494)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !2753, file: !2754, line: 45, baseType: !331, size: 32, offset: 960)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !2753, file: !2754, line: 50, baseType: !331, size: 32, offset: 992)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2753, file: !2754, line: 53, baseType: !313, size: 64, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !2753, file: !2754, line: 59, baseType: !253, size: 64, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2753, file: !2754, line: 63, baseType: !2740, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2753, file: !2754, line: 65, baseType: !2778, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !64, line: 40, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2753, file: !2754, line: 71, baseType: !253, size: 64, offset: 1280)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !2753, file: !2754, line: 77, baseType: !2782, size: 192, offset: 1344)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2783, line: 48, size: 192, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2782, file: !2783, line: 52, baseType: !7, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2782, file: !2783, line: 57, baseType: !7, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2782, file: !2783, line: 62, baseType: !7, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2782, file: !2783, line: 67, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2783, line: 20, size: 192, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2790, file: !2783, line: 24, baseType: !313, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2790, file: !2783, line: 29, baseType: !313, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2790, file: !2783, line: 34, baseType: !313, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2790, file: !2783, line: 39, baseType: !267, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !2753, file: !2754, line: 83, baseType: !2749, size: 64, offset: 1536)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !2753, file: !2754, line: 89, baseType: !7, size: 32, offset: 1600)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2753, file: !2754, line: 92, baseType: !379, size: 16, offset: 1632)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !2753, file: !2754, line: 94, baseType: !379, size: 16, offset: 1648)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2753, file: !2754, line: 96, baseType: !2801, size: 64, offset: 1664)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !2753, file: !2754, line: 99, baseType: !267, offset: 1728)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !2753, file: !2754, line: 104, baseType: !999, size: 320, offset: 1728)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2753, file: !2754, line: 110, baseType: !327, size: 32, offset: 2048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2753, file: !2754, line: 116, baseType: !2806, size: 64, offset: 2112)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !2754, line: 9, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !2753, file: !2754, line: 122, baseType: !2806, size: 64, offset: 2176)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !2753, file: !2754, line: 125, baseType: !313, size: 64, offset: 2240)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2753, file: !2754, line: 127, baseType: !313, size: 64, offset: 2304)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dispatched", scope: !2753, file: !2754, line: 130, baseType: !2812, size: 448, offset: 2368)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 448, elements: !2813)
!2813 = !{!2814}
!2814 = !DISubrange(count: 7)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2753, file: !2754, line: 133, baseType: !7, size: 32, offset: 2816)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !2753, file: !2754, line: 135, baseType: !7, size: 32, offset: 2848)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2753, file: !2754, line: 141, baseType: !327, size: 32, offset: 2880)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_queued", scope: !2753, file: !2754, line: 145, baseType: !327, size: 32, offset: 2912)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !2753, file: !2754, line: 148, baseType: !809, size: 128, offset: 2944)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2753, file: !2754, line: 150, baseType: !809, size: 128, offset: 3072)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2753, file: !2754, line: 152, baseType: !1745, size: 512, offset: 3200)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "poll_considered", scope: !2753, file: !2754, line: 155, baseType: !313, size: 64, offset: 3712)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "poll_invoked", scope: !2753, file: !2754, line: 157, baseType: !313, size: 64, offset: 3776)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "poll_success", scope: !2753, file: !2754, line: 159, baseType: !313, size: 64, offset: 3840)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !2753, file: !2754, line: 175, baseType: !258, size: 128, offset: 3904)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !2753, file: !2754, line: 182, baseType: !2827, offset: 4032)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2828, elements: !2555)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2829, line: 16, size: 576, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/srcutiny.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !{!2831, !2833, !2834, !2835, !2836, !2837, !2838, !2840}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_nesting", scope: !2828, file: !2829, line: 17, baseType: !2832, size: 32)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 32, elements: !1289)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2828, file: !2829, line: 18, baseType: !1340, size: 16, offset: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_running", scope: !2828, file: !2829, line: 19, baseType: !474, size: 8, offset: 48)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_waiting", scope: !2828, file: !2829, line: 20, baseType: !474, size: 8, offset: 56)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_wq", scope: !2828, file: !2829, line: 21, baseType: !2228, size: 128, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_head", scope: !2828, file: !2829, line: 23, baseType: !939, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_tail", scope: !2828, file: !2829, line: 24, baseType: !2839, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_work", scope: !2828, file: !2829, line: 25, baseType: !2279, size: 256, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2745, file: !64, line: 135, baseType: !7, size: 32, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2745, file: !64, line: 136, baseType: !2843, size: 32, offset: 224)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !64, line: 66, baseType: !316)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2745, file: !64, line: 138, baseType: !331, size: 32, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2745, file: !64, line: 139, baseType: !331, size: 32, offset: 288)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2745, file: !64, line: 142, baseType: !7, size: 32, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2745, file: !64, line: 143, baseType: !1714, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2745, file: !64, line: 145, baseType: !2568, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2745, file: !64, line: 146, baseType: !2568, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2745, file: !64, line: 148, baseType: !258, size: 128, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !64, line: 157, baseType: !2852, size: 128, offset: 704)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2745, file: !64, line: 157, size: 128, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2852, file: !64, line: 158, baseType: !809, size: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2852, file: !64, line: 159, baseType: !258, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !64, line: 167, baseType: !2857, size: 192, offset: 832)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2745, file: !64, line: 167, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2857, file: !64, line: 168, baseType: !352, size: 192, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2857, file: !64, line: 169, baseType: !2613, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !2857, file: !64, line: 170, baseType: !253, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !2857, file: !64, line: 171, baseType: !331, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !64, line: 180, baseType: !2864, size: 256, offset: 1024)
!2864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2745, file: !64, line: 180, size: 256, elements: !2865)
!2865 = !{!2866, !2901}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2864, file: !64, line: 184, baseType: !2867, size: 192)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !64, line: 181, size: 192, elements: !2868)
!2868 = !{!2869, !2899}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2867, file: !64, line: 182, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2872, line: 73, size: 448, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !{!2874, !2875, !2888, !2893, !2898}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2871, file: !2872, line: 74, baseType: !2740, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2871, file: !2872, line: 75, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2872, line: 99, size: 704, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2877, file: !2872, line: 100, baseType: !289, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2877, file: !2872, line: 101, baseType: !327, size: 32, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2877, file: !2872, line: 102, baseType: !327, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2877, file: !2872, line: 105, baseType: !267, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2877, file: !2872, line: 107, baseType: !379, size: 16, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2877, file: !2872, line: 109, baseType: !1930, size: 128, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2877, file: !2872, line: 110, baseType: !2870, size: 64, offset: 320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2877, file: !2872, line: 111, baseType: !805, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2877, file: !2872, line: 113, baseType: !2279, size: 256, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !2872, line: 83, baseType: !2889, size: 128, offset: 128)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2871, file: !2872, line: 83, size: 128, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2889, file: !2872, line: 84, baseType: !258, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2889, file: !2872, line: 85, baseType: !2629, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !2872, line: 87, baseType: !2894, size: 128, offset: 256)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2871, file: !2872, line: 87, size: 128, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2894, file: !2872, line: 88, baseType: !809, size: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2894, file: !2872, line: 89, baseType: !936, size: 128, align: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 92, baseType: !7, size: 32, offset: 384)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2867, file: !64, line: 183, baseType: !2900, size: 128, offset: 64)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !1289)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2864, file: !64, line: 190, baseType: !2902, size: 256)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !64, line: 186, size: 256, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2902, file: !64, line: 187, baseType: !7, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2902, file: !64, line: 188, baseType: !258, size: 128, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2902, file: !64, line: 189, baseType: !2907, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !64, line: 62, baseType: !2909)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2744, !2578}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !2745, file: !64, line: 193, baseType: !2537, size: 64, offset: 1280)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2745, file: !64, line: 194, baseType: !1709, size: 64, offset: 1344)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2745, file: !64, line: 200, baseType: !362, size: 64, offset: 1408)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2745, file: !64, line: 202, baseType: !362, size: 64, offset: 1472)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2745, file: !64, line: 212, baseType: !379, size: 16, offset: 1536)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2745, file: !64, line: 218, baseType: !379, size: 16, offset: 1552)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !2745, file: !64, line: 221, baseType: !379, size: 16, offset: 1568)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !2745, file: !64, line: 229, baseType: !379, size: 16, offset: 1584)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2745, file: !64, line: 230, baseType: !379, size: 16, offset: 1600)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2745, file: !64, line: 232, baseType: !63, size: 32, offset: 1632)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2745, file: !64, line: 233, baseType: !322, size: 32, offset: 1664)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2745, file: !64, line: 235, baseType: !7, size: 32, offset: 1696)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2745, file: !64, line: 236, baseType: !313, size: 64, offset: 1728)
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !64, line: 238, baseType: !2925, size: 256, offset: 1792)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2745, file: !64, line: 238, size: 256, elements: !2926)
!2926 = !{!2927, !2956}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !2925, file: !64, line: 239, baseType: !2928, size: 256)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !2929, line: 23, size: 256, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!2930 = !{!2931, !2953, !2955}
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !2929, line: 24, baseType: !2932, size: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !2929, line: 24, size: 128, elements: !2933)
!2933 = !{!2934, !2946}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2932, file: !2929, line: 25, baseType: !2935, size: 128)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2936, line: 58, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!2937 = !{!2938, !2939, !2944, !2945}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2935, file: !2936, line: 59, baseType: !930, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2936, line: 60, baseType: !2940, size: 32, offset: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !2936, line: 60, size: 32, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2940, file: !2936, line: 61, baseType: !7, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2940, file: !2936, line: 62, baseType: !327, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2935, file: !2936, line: 65, baseType: !984, size: 16, offset: 96)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2935, file: !2936, line: 65, baseType: !984, size: 16, offset: 112)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !2929, line: 26, baseType: !2947, size: 128)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2932, file: !2929, line: 26, size: 128, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2947, file: !2929, line: 27, baseType: !930, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2947, file: !2929, line: 28, baseType: !7, size: 32, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2947, file: !2929, line: 30, baseType: !984, size: 16, offset: 96)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2947, file: !2929, line: 30, baseType: !984, size: 16, offset: 112)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2928, file: !2929, line: 34, baseType: !2954, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !2929, line: 17, baseType: !1886)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2928, file: !2929, line: 35, baseType: !253, size: 64, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2925, file: !64, line: 240, baseType: !362, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2745, file: !64, line: 246, baseType: !2907, size: 64, offset: 2048)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2745, file: !64, line: 247, baseType: !253, size: 64, offset: 2112)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2741, file: !64, line: 401, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !70, line: 101, size: 4992, elements: !2962)
!2962 = !{!2963, !3075, !3076, !3077, !3078, !3079}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2961, file: !70, line: 103, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !70, line: 66, size: 2240, elements: !2966)
!2966 = !{!2967, !2968, !3050, !3051, !3052, !3065, !3066, !3067, !3069, !3070, !3074}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !2965, file: !70, line: 69, baseType: !2629, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2965, file: !70, line: 72, baseType: !2969, size: 1408, offset: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !70, line: 29, size: 1408, elements: !2970)
!2970 = !{!2971, !2975, !2979, !2983, !2987, !2991, !2995, !2999, !3004, !3008, !3012, !3018, !3022, !3023, !3027, !3031, !3035, !3039, !3040, !3044, !3045, !3049}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !2969, file: !70, line: 30, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!331, !2740, !2964}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !2969, file: !70, line: 31, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2960}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2969, file: !70, line: 32, baseType: !2980, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!331, !2752, !7}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2969, file: !70, line: 33, baseType: !2984, size: 64, offset: 192)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2752, !7}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !2969, file: !70, line: 34, baseType: !2988, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2752}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !2969, file: !70, line: 36, baseType: !2992, size: 64, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!754, !2740, !2744, !2568}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !2969, file: !70, line: 37, baseType: !2996, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!754, !2752, !2568, !7}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !2969, file: !70, line: 38, baseType: !3000, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!331, !2740, !3003, !2568}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !2969, file: !70, line: 39, baseType: !3005, size: 64, offset: 512)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !2740, !2744, !69}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !2969, file: !70, line: 40, baseType: !3009, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2740, !2744, !2744}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !2969, file: !70, line: 41, baseType: !3013, size: 64, offset: 640)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !7, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !70, line: 26, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !2969, file: !70, line: 42, baseType: !3019, size: 64, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2744}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !2969, file: !70, line: 43, baseType: !3019, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !2969, file: !70, line: 44, baseType: !3024, size: 64, offset: 832)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2752, !262, !754}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !2969, file: !70, line: 45, baseType: !3028, size: 64, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!2744, !2752}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !2969, file: !70, line: 46, baseType: !3032, size: 64, offset: 960)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!754, !2752}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !2969, file: !70, line: 47, baseType: !3036, size: 64, offset: 1024)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !2744, !362}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !2969, file: !70, line: 48, baseType: !3019, size: 64, offset: 1088)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !2969, file: !70, line: 49, baseType: !3041, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!2744, !2740, !2744}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !2969, file: !70, line: 50, baseType: !3041, size: 64, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !2969, file: !70, line: 51, baseType: !3046, size: 64, offset: 1280)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !2870}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !2969, file: !70, line: 52, baseType: !3046, size: 64, offset: 1344)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !2965, file: !70, line: 74, baseType: !889, size: 64, offset: 1472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !2965, file: !70, line: 75, baseType: !889, size: 64, offset: 1536)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !2965, file: !70, line: 76, baseType: !3053, size: 64, offset: 1600)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !70, line: 57, size: 256, elements: !3055)
!3055 = !{!3056, !3057, !3061}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3054, file: !70, line: 58, baseType: !1813, size: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3054, file: !70, line: 59, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!961, !2960, !735}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3054, file: !70, line: 60, baseType: !3062, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!961, !2960, !709, !889}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !2965, file: !70, line: 77, baseType: !709, size: 64, offset: 1664)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !2965, file: !70, line: 78, baseType: !709, size: 64, offset: 1728)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !2965, file: !70, line: 79, baseType: !3068, size: 32, offset: 1792)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !2965, file: !70, line: 80, baseType: !800, size: 64, offset: 1856)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !2965, file: !70, line: 87, baseType: !3071, size: 176, offset: 1920)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 176, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 22)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2965, file: !70, line: 88, baseType: !258, size: 128, offset: 2112)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !2961, file: !70, line: 104, baseType: !253, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2961, file: !70, line: 105, baseType: !1745, size: 512, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2961, file: !70, line: 106, baseType: !285, size: 192, offset: 640)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !2961, file: !70, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2961, file: !70, line: 108, baseType: !3080, size: 4096, offset: 896)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 4096, elements: !1786)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2741, file: !64, line: 403, baseType: !1721, size: 128, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2741, file: !64, line: 405, baseType: !3083, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !64, line: 43, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2741, file: !64, line: 406, baseType: !3086, size: 64, offset: 320)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !64, line: 42, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2741, file: !64, line: 408, baseType: !3089, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !2754, line: 290, size: 960, elements: !3092)
!3092 = !{!3093, !3103, !3104, !3108, !3112, !3116, !3120, !3121, !3125, !3126, !3173, !3177, !3178, !3179, !3180}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !3091, file: !2754, line: 294, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!2578, !2752, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !2754, line: 277, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !3099, file: !2754, line: 278, baseType: !2744, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3099, file: !2754, line: 279, baseType: !754, size: 8, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !3091, file: !2754, line: 304, baseType: !2988, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !3091, file: !2754, line: 312, baseType: !3105, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!754, !2740}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !3091, file: !2754, line: 317, baseType: !3109, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2740}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3091, file: !2754, line: 322, baseType: !3113, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!76, !2744, !754}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3091, file: !2754, line: 327, baseType: !3117, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!331, !2752}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3091, file: !2754, line: 332, baseType: !3019, size: 64, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !3091, file: !2754, line: 339, baseType: !3122, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!331, !2752, !253, !7}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !3091, file: !2754, line: 343, baseType: !2984, size: 64, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !3091, file: !2754, line: 352, baseType: !3127, size: 64, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!331, !3130, !2744, !7, !7}
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !2754, line: 249, size: 2304, elements: !3132)
!3132 = !{!3133, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3168, !3169, !3171, !3172}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3131, file: !2754, line: 250, baseType: !3134, size: 384)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3135, size: 384, elements: !821)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !2754, line: 195, size: 128, elements: !3136)
!3136 = !{!3137, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !3135, file: !2754, line: 196, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !3135, file: !2754, line: 197, baseType: !7, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !3135, file: !2754, line: 198, baseType: !7, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !3131, file: !2754, line: 251, baseType: !7, size: 32, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3131, file: !2754, line: 252, baseType: !3089, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3131, file: !2754, line: 253, baseType: !7, size: 32, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3131, file: !2754, line: 254, baseType: !7, size: 32, offset: 544)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !3131, file: !2754, line: 255, baseType: !7, size: 32, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !3131, file: !2754, line: 256, baseType: !7, size: 32, offset: 608)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3131, file: !2754, line: 257, baseType: !331, size: 32, offset: 640)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3131, file: !2754, line: 258, baseType: !7, size: 32, offset: 672)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3131, file: !2754, line: 259, baseType: !7, size: 32, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3131, file: !2754, line: 260, baseType: !253, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues_shared_sbitmap", scope: !3131, file: !2754, line: 261, baseType: !327, size: 32, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "__bitmap_tags", scope: !3131, file: !2754, line: 263, baseType: !3153, size: 512, offset: 896)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2783, line: 97, size: 512, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3165, !3166, !3167}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3153, file: !2783, line: 101, baseType: !2782, size: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !3153, file: !2783, line: 109, baseType: !3138, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !3153, file: !2783, line: 115, baseType: !7, size: 32, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !3153, file: !2783, line: 120, baseType: !327, size: 32, offset: 288)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3153, file: !2783, line: 125, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2783, line: 76, size: 192, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cnt", scope: !3161, file: !2783, line: 80, baseType: !327, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3161, file: !2783, line: 85, baseType: !1087, size: 128, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !3153, file: !2783, line: 130, baseType: !327, size: 32, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !3153, file: !2783, line: 135, baseType: !754, size: 8, offset: 416)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !3153, file: !2783, line: 141, baseType: !7, size: 32, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__breserved_tags", scope: !3131, file: !2754, line: 264, baseType: !3153, size: 512, offset: 1408)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !3131, file: !2754, line: 265, baseType: !3170, size: 64, offset: 1920)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !3131, file: !2754, line: 267, baseType: !285, size: 192, offset: 1984)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !3131, file: !2754, line: 268, baseType: !258, size: 128, offset: 2176)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !3091, file: !2754, line: 357, baseType: !3174, size: 64, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !3130, !2744, !7}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_rq_fn", scope: !3091, file: !2754, line: 363, baseType: !3019, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !3091, file: !2754, line: 369, baseType: !3019, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3091, file: !2754, line: 374, baseType: !3105, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !3091, file: !2754, line: 380, baseType: !3181, size: 64, offset: 896)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!331, !3130}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2741, file: !64, line: 411, baseType: !2749, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2741, file: !64, line: 413, baseType: !7, size: 32, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !2741, file: !64, line: 416, baseType: !3187, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2741, file: !64, line: 417, baseType: !7, size: 32, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2741, file: !64, line: 419, baseType: !3190, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !52, line: 165, size: 4672, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3243, !3244, !3245, !3246, !3248, !3249}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3191, file: !52, line: 166, baseType: !362, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3191, file: !52, line: 167, baseType: !352, size: 192, align: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3191, file: !52, line: 168, baseType: !258, size: 128, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3191, file: !52, line: 169, baseType: !313, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3191, file: !52, line: 170, baseType: !313, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3191, file: !52, line: 172, baseType: !2034, size: 32, offset: 512)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3191, file: !52, line: 173, baseType: !7, size: 32, offset: 544)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3191, file: !52, line: 174, baseType: !7, size: 32, offset: 576)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3191, file: !52, line: 175, baseType: !7, size: 32, offset: 608)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3191, file: !52, line: 175, baseType: !7, size: 32, offset: 640)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3191, file: !52, line: 181, baseType: !289, size: 64, offset: 704)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3191, file: !52, line: 183, baseType: !3205, size: 2688, offset: 768)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !52, line: 107, size: 2688, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3205, file: !52, line: 108, baseType: !3190, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3205, file: !52, line: 110, baseType: !313, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3205, file: !52, line: 111, baseType: !313, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3205, file: !52, line: 113, baseType: !258, size: 128, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3205, file: !52, line: 114, baseType: !258, size: 128, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3205, file: !52, line: 115, baseType: !258, size: 128, offset: 448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3205, file: !52, line: 116, baseType: !258, size: 128, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3205, file: !52, line: 117, baseType: !267, offset: 704)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3205, file: !52, line: 119, baseType: !3216, size: 256, offset: 704)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3217, size: 256, elements: !1249)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !3218, line: 97, size: 64, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !{!3220}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3217, file: !3218, line: 98, baseType: !295, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !3205, file: !52, line: 121, baseType: !313, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3205, file: !52, line: 123, baseType: !313, size: 64, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3205, file: !52, line: 124, baseType: !313, size: 64, offset: 1088)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3205, file: !52, line: 125, baseType: !313, size: 64, offset: 1152)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3205, file: !52, line: 126, baseType: !313, size: 64, offset: 1216)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3205, file: !52, line: 127, baseType: !313, size: 64, offset: 1280)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3205, file: !52, line: 135, baseType: !313, size: 64, offset: 1344)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3205, file: !52, line: 136, baseType: !313, size: 64, offset: 1408)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3205, file: !52, line: 138, baseType: !3230, size: 128, offset: 1472)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3231, line: 76, size: 128, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3230, file: !3231, line: 78, baseType: !3217, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3230, file: !3231, line: 80, baseType: !7, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3230, file: !3231, line: 81, baseType: !425, offset: 96)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3205, file: !52, line: 139, baseType: !331, size: 32, offset: 1600)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3205, file: !52, line: 140, baseType: !51, size: 32, offset: 1632)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3205, file: !52, line: 142, baseType: !267, offset: 1664)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3205, file: !52, line: 143, baseType: !258, size: 128, offset: 1664)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3205, file: !52, line: 144, baseType: !2763, size: 704, offset: 1792)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !3205, file: !52, line: 146, baseType: !313, size: 64, offset: 2496)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3205, file: !52, line: 148, baseType: !258, size: 128, offset: 2560)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3191, file: !52, line: 184, baseType: !258, size: 128, offset: 3456)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3191, file: !52, line: 190, baseType: !1087, size: 128, offset: 3584)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3191, file: !52, line: 192, baseType: !2044, size: 64, offset: 3712)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3191, file: !52, line: 193, baseType: !3247, size: 512, offset: 3776)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 512, elements: !1786)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3191, file: !52, line: 194, baseType: !2044, size: 64, offset: 4288)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3191, file: !52, line: 196, baseType: !2246, size: 320, offset: 4352)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2741, file: !64, line: 425, baseType: !253, size: 64, offset: 768)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2741, file: !64, line: 430, baseType: !313, size: 64, offset: 832)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2741, file: !64, line: 436, baseType: !327, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2741, file: !64, line: 442, baseType: !331, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !2741, file: !64, line: 447, baseType: !566, size: 32, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2741, file: !64, line: 449, baseType: !267, offset: 992)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2741, file: !64, line: 454, baseType: !1745, size: 512, offset: 1024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2741, file: !64, line: 459, baseType: !1751, size: 64, offset: 1536)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !2741, file: !64, line: 462, baseType: !3259, size: 128, offset: 1600)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1711, line: 159, size: 128, elements: !3260)
!3260 = !{!3261, !3290, !3291, !3292, !3293}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !3259, file: !1711, line: 160, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !64, line: 1664, size: 320, elements: !3265)
!3265 = !{!3266, !3280, !3281, !3284, !3289}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !3264, file: !64, line: 1665, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !64, line: 1660, baseType: !3269)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!2578, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !64, line: 1651, size: 320, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !3272, file: !64, line: 1652, baseType: !253, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !3272, file: !64, line: 1653, baseType: !253, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !3272, file: !64, line: 1654, baseType: !1714, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !3272, file: !64, line: 1655, baseType: !7, size: 32, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3272, file: !64, line: 1656, baseType: !379, size: 16, offset: 224)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !3272, file: !64, line: 1657, baseType: !709, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !3264, file: !64, line: 1666, baseType: !3267, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !3264, file: !64, line: 1667, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !64, line: 1661, baseType: !3020)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !3264, file: !64, line: 1668, baseType: !3285, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !64, line: 1662, baseType: !3287)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !2744, !7}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3264, file: !64, line: 1669, baseType: !709, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3259, file: !1711, line: 161, baseType: !476, size: 8, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !3259, file: !1711, line: 162, baseType: !476, size: 8, offset: 72)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !3259, file: !1711, line: 163, baseType: !476, size: 8, offset: 80)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !3259, file: !1711, line: 164, baseType: !476, size: 8, offset: 88)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2741, file: !64, line: 466, baseType: !2044, size: 64, offset: 1728)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2741, file: !64, line: 467, baseType: !80, size: 32, offset: 1792)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2741, file: !64, line: 468, baseType: !7, size: 32, offset: 1824)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2741, file: !64, line: 474, baseType: !313, size: 64, offset: 1856)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2741, file: !64, line: 476, baseType: !7, size: 32, offset: 1920)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2741, file: !64, line: 477, baseType: !7, size: 32, offset: 1952)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2741, file: !64, line: 484, baseType: !7, size: 32, offset: 1984)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !2741, file: !64, line: 485, baseType: !331, size: 32, offset: 2016)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !2741, file: !64, line: 487, baseType: !3303, size: 64, offset: 2048)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !64, line: 44, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !2741, file: !64, line: 488, baseType: !3306, size: 5120, offset: 2112)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 5120, elements: !3314)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1694, line: 540, size: 320, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !3307, file: !1694, line: 541, baseType: !362, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3307, file: !1694, line: 542, baseType: !362, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3307, file: !1694, line: 543, baseType: !362, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !3307, file: !1694, line: 544, baseType: !315, size: 32, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3307, file: !1694, line: 545, baseType: !362, size: 64, offset: 256)
!3314 = !{!3315}
!3315 = !DISubrange(count: 16)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2741, file: !64, line: 490, baseType: !2246, size: 320, offset: 7232)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2741, file: !64, line: 491, baseType: !2279, size: 256, offset: 7552)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !2741, file: !64, line: 493, baseType: !327, size: 32, offset: 7808)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2741, file: !64, line: 495, baseType: !258, size: 128, offset: 7872)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2741, file: !64, line: 502, baseType: !3321, size: 896, offset: 8000)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !64, line: 321, size: 896, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !3321, file: !64, line: 322, baseType: !313, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3321, file: !64, line: 323, baseType: !313, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3321, file: !64, line: 324, baseType: !313, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3321, file: !64, line: 326, baseType: !7, size: 32, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3321, file: !64, line: 327, baseType: !7, size: 32, offset: 224)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3321, file: !64, line: 328, baseType: !7, size: 32, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3321, file: !64, line: 329, baseType: !7, size: 32, offset: 288)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3321, file: !64, line: 330, baseType: !7, size: 32, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3321, file: !64, line: 331, baseType: !7, size: 32, offset: 352)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3321, file: !64, line: 332, baseType: !7, size: 32, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3321, file: !64, line: 333, baseType: !7, size: 32, offset: 416)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3321, file: !64, line: 334, baseType: !7, size: 32, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3321, file: !64, line: 335, baseType: !7, size: 32, offset: 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3321, file: !64, line: 336, baseType: !7, size: 32, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3321, file: !64, line: 337, baseType: !7, size: 32, offset: 544)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !3321, file: !64, line: 338, baseType: !7, size: 32, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3321, file: !64, line: 339, baseType: !7, size: 32, offset: 608)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3321, file: !64, line: 340, baseType: !7, size: 32, offset: 640)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3321, file: !64, line: 341, baseType: !7, size: 32, offset: 672)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3321, file: !64, line: 342, baseType: !7, size: 32, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3321, file: !64, line: 344, baseType: !379, size: 16, offset: 736)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3321, file: !64, line: 345, baseType: !379, size: 16, offset: 752)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3321, file: !64, line: 346, baseType: !379, size: 16, offset: 768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3321, file: !64, line: 348, baseType: !476, size: 8, offset: 784)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3321, file: !64, line: 349, baseType: !476, size: 8, offset: 792)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3321, file: !64, line: 350, baseType: !476, size: 8, offset: 800)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3321, file: !64, line: 351, baseType: !87, size: 32, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2741, file: !64, line: 504, baseType: !7, size: 32, offset: 8896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !2741, file: !64, line: 534, baseType: !7, size: 32, offset: 8928)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !2741, file: !64, line: 535, baseType: !7, size: 32, offset: 8960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2741, file: !64, line: 536, baseType: !331, size: 32, offset: 8992)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2741, file: !64, line: 537, baseType: !285, size: 192, offset: 9024)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2741, file: !64, line: 544, baseType: !2778, size: 64, offset: 9216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2741, file: !64, line: 546, baseType: !258, size: 128, offset: 9280)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2741, file: !64, line: 547, baseType: !267, offset: 9408)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2741, file: !64, line: 548, baseType: !2763, size: 704, offset: 9408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2741, file: !64, line: 550, baseType: !285, size: 192, offset: 10112)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2741, file: !64, line: 551, baseType: !285, size: 192, offset: 10304)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2741, file: !64, line: 557, baseType: !258, size: 128, offset: 10496)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2741, file: !64, line: 558, baseType: !267, offset: 10624)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2741, file: !64, line: 560, baseType: !331, size: 32, offset: 10624)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !2741, file: !64, line: 563, baseType: !3365, size: 256, offset: 10688)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !3366, line: 18, size: 256, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3369, !3370, !3371}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3365, file: !3366, line: 19, baseType: !2044, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3365, file: !3366, line: 20, baseType: !331, size: 32, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3365, file: !3366, line: 21, baseType: !2740, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3365, file: !3366, line: 22, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !3366, line: 10, size: 256, elements: !3375)
!3375 = !{!3376, !3417, !3421, !3425}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !3374, file: !3366, line: 11, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!331, !3380}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !3382, line: 22, size: 1280, elements: !3383)
!3382 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !3381, file: !3382, line: 23, baseType: !1306, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3381, file: !3382, line: 24, baseType: !316, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !3381, file: !3382, line: 25, baseType: !316, size: 32, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !3381, file: !3382, line: 28, baseType: !316, size: 32, offset: 96)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3381, file: !3382, line: 29, baseType: !363, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !3381, file: !3382, line: 30, baseType: !363, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !3381, file: !3382, line: 31, baseType: !316, size: 32, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !3381, file: !3382, line: 32, baseType: !316, size: 32, offset: 288)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !3381, file: !3382, line: 33, baseType: !316, size: 32, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !3381, file: !3382, line: 34, baseType: !316, size: 32, offset: 352)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3381, file: !3382, line: 35, baseType: !363, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !3381, file: !3382, line: 38, baseType: !316, size: 32, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !3381, file: !3382, line: 40, baseType: !316, size: 32, offset: 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !3381, file: !3382, line: 41, baseType: !316, size: 32, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !3381, file: !3382, line: 42, baseType: !316, size: 32, offset: 544)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !3381, file: !3382, line: 43, baseType: !363, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !3381, file: !3382, line: 44, baseType: !363, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3381, file: !3382, line: 46, baseType: !316, size: 32, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3381, file: !3382, line: 47, baseType: !316, size: 32, offset: 736)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !3381, file: !3382, line: 48, baseType: !363, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !3381, file: !3382, line: 49, baseType: !316, size: 32, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !3381, file: !3382, line: 51, baseType: !316, size: 32, offset: 864)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !3381, file: !3382, line: 52, baseType: !316, size: 32, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !3381, file: !3382, line: 53, baseType: !316, size: 32, offset: 928)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !3381, file: !3382, line: 54, baseType: !316, size: 32, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3381, file: !3382, line: 55, baseType: !316, size: 32, offset: 992)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !3381, file: !3382, line: 56, baseType: !316, size: 32, offset: 1024)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !3381, file: !3382, line: 57, baseType: !316, size: 32, offset: 1056)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !3381, file: !3382, line: 58, baseType: !1306, size: 32, offset: 1088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !3381, file: !3382, line: 59, baseType: !1306, size: 32, offset: 1120)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !3381, file: !3382, line: 60, baseType: !363, size: 64, offset: 1152)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !3381, file: !3382, line: 61, baseType: !316, size: 32, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3381, file: !3382, line: 63, baseType: !316, size: 32, offset: 1248)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !3374, file: !3366, line: 12, baseType: !3418, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!331, !2744, !3380, !1233}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !3374, file: !3366, line: 14, baseType: !3422, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!331, !2744, !3380}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !3374, file: !3366, line: 15, baseType: !3019, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2741, file: !64, line: 570, baseType: !936, size: 128, align: 64, offset: 10944)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2741, file: !64, line: 571, baseType: !1087, size: 128, offset: 11072)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2741, file: !64, line: 576, baseType: !285, size: 192, offset: 11200)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2741, file: !64, line: 578, baseType: !3130, size: 64, offset: 11392)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2741, file: !64, line: 579, baseType: !258, size: 128, offset: 11456)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2741, file: !64, line: 580, baseType: !2626, size: 2368, offset: 11584)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2741, file: !64, line: 582, baseType: !637, size: 64, offset: 13952)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2741, file: !64, line: 589, baseType: !754, size: 8, offset: 14016)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !2741, file: !64, line: 591, baseType: !889, size: 64, offset: 14080)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !2741, file: !64, line: 594, baseType: !3436, size: 320, offset: 14144)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 320, elements: !3437)
!3437 = !{!3438}
!3438 = !DISubrange(count: 5)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2538, file: !1711, line: 191, baseType: !253, size: 64, offset: 7168)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2538, file: !1711, line: 193, baseType: !331, size: 32, offset: 7232)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2538, file: !1711, line: 194, baseType: !313, size: 64, offset: 7296)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !2538, file: !1711, line: 196, baseType: !1313, size: 256, offset: 7360)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2538, file: !1711, line: 197, baseType: !1751, size: 64, offset: 7616)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2538, file: !1711, line: 199, baseType: !3445, size: 64, offset: 7680)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1711, line: 199, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2538, file: !1711, line: 200, baseType: !327, size: 32, offset: 7744)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2538, file: !1711, line: 201, baseType: !3449, size: 64, offset: 7808)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1711, line: 156, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !2538, file: !1711, line: 203, baseType: !1745, size: 512, offset: 7872)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2538, file: !1711, line: 208, baseType: !331, size: 32, offset: 8384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2538, file: !1711, line: 209, baseType: !3454, size: 64, offset: 8448)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1711, line: 157, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2538, file: !1711, line: 210, baseType: !3457, offset: 8512)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !816, line: 192, elements: !281)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1693, file: !1694, line: 43, baseType: !3190, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1693, file: !1694, line: 46, baseType: !331, size: 32, offset: 1088)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1693, file: !1694, line: 48, baseType: !285, size: 192, offset: 1152)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !764, file: !106, line: 1452, baseType: !3190, size: 64, offset: 1536)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !764, file: !106, line: 1453, baseType: !3463, size: 64, offset: 1600)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !106, line: 1453, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !764, file: !106, line: 1454, baseType: !809, size: 128, offset: 1664)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !764, file: !106, line: 1455, baseType: !7, size: 32, offset: 1792)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !764, file: !106, line: 1456, baseType: !3468, size: 2432, offset: 1856)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !100, line: 518, size: 2432, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3474, !3506}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3468, file: !100, line: 519, baseType: !7, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3468, file: !100, line: 520, baseType: !1313, size: 256, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3468, file: !100, line: 521, baseType: !3473, size: 192, offset: 320)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 192, elements: !821)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3468, file: !100, line: 522, baseType: !3475, size: 1728, offset: 512)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3476, size: 1728, elements: !821)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !100, line: 222, size: 576, elements: !3477)
!3477 = !{!3478, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3476, file: !100, line: 223, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !100, line: 443, size: 256, elements: !3481)
!3481 = !{!3482, !3483, !3496, !3497}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3480, file: !100, line: 444, baseType: !331, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3480, file: !100, line: 445, baseType: !3484, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !100, line: 310, size: 512, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3486, file: !100, line: 311, baseType: !857, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3486, file: !100, line: 312, baseType: !857, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3486, file: !100, line: 313, baseType: !857, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3486, file: !100, line: 314, baseType: !857, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3486, file: !100, line: 315, baseType: !1511, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3486, file: !100, line: 316, baseType: !1511, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3486, file: !100, line: 317, baseType: !1511, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3486, file: !100, line: 318, baseType: !1583, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3480, file: !100, line: 446, baseType: !800, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3480, file: !100, line: 447, baseType: !3479, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3476, file: !100, line: 224, baseType: !331, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3476, file: !100, line: 226, baseType: !258, size: 128, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3476, file: !100, line: 227, baseType: !313, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3476, file: !100, line: 228, baseType: !7, size: 32, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3476, file: !100, line: 229, baseType: !7, size: 32, offset: 352)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3476, file: !100, line: 230, baseType: !1547, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3476, file: !100, line: 231, baseType: !1547, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3476, file: !100, line: 232, baseType: !253, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3468, file: !100, line: 523, baseType: !3507, size: 192, offset: 2240)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3484, size: 192, elements: !821)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !764, file: !106, line: 1458, baseType: !3509, size: 2112, offset: 4288)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !106, line: 1410, size: 2112, elements: !3510)
!3510 = !{!3511, !3512, !3513}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3509, file: !106, line: 1411, baseType: !331, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3509, file: !106, line: 1412, baseType: !1087, size: 128, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3509, file: !106, line: 1413, baseType: !3514, size: 1920, offset: 192)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3515, size: 1920, elements: !821)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3516, line: 12, size: 640, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3517 = !{!3518, !3526, !3527, !3532, !3533}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3515, file: !3516, line: 13, baseType: !3519, size: 320)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3520, line: 17, size: 320, elements: !3521)
!3520 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3521 = !{!3522, !3523, !3524, !3525}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3519, file: !3520, line: 18, baseType: !331, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3519, file: !3520, line: 19, baseType: !331, size: 32, offset: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3519, file: !3520, line: 20, baseType: !1087, size: 128, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3519, file: !3520, line: 22, baseType: !936, size: 128, align: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3515, file: !3516, line: 14, baseType: !3138, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3515, file: !3516, line: 15, baseType: !3528, size: 64, offset: 384)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3529, line: 16, size: 64, elements: !3530)
!3529 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3528, file: !3529, line: 17, baseType: !304, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3515, file: !3516, line: 16, baseType: !1087, size: 128, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3515, file: !3516, line: 17, baseType: !327, size: 32, offset: 576)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !764, file: !106, line: 1465, baseType: !253, size: 64, offset: 6400)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !764, file: !106, line: 1468, baseType: !315, size: 32, offset: 6464)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !764, file: !106, line: 1470, baseType: !1328, size: 64, offset: 6528)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !764, file: !106, line: 1471, baseType: !1328, size: 64, offset: 6592)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !764, file: !106, line: 1473, baseType: !316, size: 32, offset: 6656)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !764, file: !106, line: 1474, baseType: !3540, size: 64, offset: 6720)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !106, line: 603, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !764, file: !106, line: 1477, baseType: !2131, size: 256, offset: 6784)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !764, file: !106, line: 1478, baseType: !3544, size: 128, offset: 7040)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3545, line: 18, baseType: !3546)
!3545 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3545, line: 16, size: 128, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3546, file: !3545, line: 17, baseType: !3549, size: 128)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 128, elements: !3314)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !764, file: !106, line: 1480, baseType: !7, size: 32, offset: 7168)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !764, file: !106, line: 1481, baseType: !1233, size: 32, offset: 7200)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !764, file: !106, line: 1487, baseType: !285, size: 192, offset: 7232)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !764, file: !106, line: 1493, baseType: !709, size: 64, offset: 7424)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !764, file: !106, line: 1495, baseType: !689, size: 64, offset: 7488)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !764, file: !106, line: 1500, baseType: !331, size: 32, offset: 7552)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !764, file: !106, line: 1502, baseType: !3557, size: 448, offset: 7616)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1495, line: 60, size: 448, elements: !3558)
!3558 = !{!3559, !3564, !3565, !3566, !3567, !3568, !3569}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3557, file: !1495, line: 61, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!313, !3563, !1493}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3557, file: !1495, line: 63, baseType: !3560, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3557, file: !1495, line: 66, baseType: !319, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3557, file: !1495, line: 67, baseType: !331, size: 32, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3557, file: !1495, line: 68, baseType: !7, size: 32, offset: 224)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3557, file: !1495, line: 71, baseType: !258, size: 128, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3557, file: !1495, line: 77, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !764, file: !106, line: 1505, baseType: !289, size: 64, offset: 8064)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !764, file: !106, line: 1508, baseType: !289, size: 64, offset: 8128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !764, file: !106, line: 1511, baseType: !331, size: 32, offset: 8192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !764, file: !106, line: 1514, baseType: !1478, size: 32, offset: 8224)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !764, file: !106, line: 1517, baseType: !2532, size: 64, offset: 8256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !764, file: !106, line: 1518, baseType: !805, size: 64, offset: 8320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !764, file: !106, line: 1525, baseType: !1446, size: 64, offset: 8384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !764, file: !106, line: 1532, baseType: !3579, size: 64, offset: 8448)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3580, line: 52, size: 64, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3579, file: !3580, line: 53, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3580, line: 40, size: 256, elements: !3585)
!3585 = !{!3586, !3587, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !3580, line: 42, baseType: !267)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3584, file: !3580, line: 44, baseType: !3588, size: 192)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3580, line: 28, size: 192, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3588, file: !3580, line: 29, baseType: !258, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3588, file: !3580, line: 31, baseType: !319, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3584, file: !3580, line: 49, baseType: !319, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !764, file: !106, line: 1533, baseType: !3579, size: 64, offset: 8512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !106, line: 1534, baseType: !936, size: 128, align: 64, offset: 8576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !764, file: !106, line: 1535, baseType: !2279, size: 256, offset: 8704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !764, file: !106, line: 1537, baseType: !285, size: 192, offset: 8960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !764, file: !106, line: 1542, baseType: !331, size: 32, offset: 9152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !764, file: !106, line: 1545, baseType: !267, offset: 9184)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !764, file: !106, line: 1546, baseType: !258, size: 128, offset: 9216)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !764, file: !106, line: 1548, baseType: !267, offset: 9344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !764, file: !106, line: 1549, baseType: !258, size: 128, offset: 9344)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !638, file: !639, line: 104, baseType: !313, size: 64, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !638, file: !639, line: 105, baseType: !253, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !639, line: 107, baseType: !3605, size: 128, offset: 1024)
!3605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 107, size: 128, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3605, file: !639, line: 108, baseType: !258, size: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3605, file: !639, line: 109, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !638, file: !639, line: 111, baseType: !258, size: 128, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !638, file: !639, line: 112, baseType: !258, size: 128, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !638, file: !639, line: 120, baseType: !3613, size: 128, offset: 1408)
!3613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !639, line: 116, size: 128, elements: !3614)
!3614 = !{!3615, !3616, !3617}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3613, file: !639, line: 117, baseType: !809, size: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3613, file: !639, line: 118, baseType: !648, size: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3613, file: !639, line: 119, baseType: !936, size: 128, align: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !631, file: !106, line: 1866, baseType: !3619, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!709, !637, !606, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3624, line: 10, size: 128, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3623, file: !3624, line: 11, baseType: !1886, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3623, file: !3624, line: 12, baseType: !253, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !631, file: !106, line: 1867, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!331, !606, !331}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !631, file: !106, line: 1868, baseType: !3633, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!3636, !606, !331}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !106, line: 581, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !631, file: !106, line: 1870, baseType: !3639, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!331, !637, !735, !331}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !631, file: !106, line: 1872, baseType: !3643, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!331, !606, !637, !610, !754}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !631, file: !106, line: 1873, baseType: !3647, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!331, !637, !606, !637}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !631, file: !106, line: 1874, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!331, !606, !637}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !631, file: !106, line: 1875, baseType: !3655, size: 64, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!331, !606, !637, !709}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !631, file: !106, line: 1876, baseType: !3659, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!331, !606, !637, !610}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !631, file: !106, line: 1877, baseType: !3651, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !631, file: !106, line: 1878, baseType: !3664, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!331, !606, !637, !610, !768}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !631, file: !106, line: 1879, baseType: !3668, size: 64, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!331, !606, !637, !606, !637, !7}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !631, file: !106, line: 1881, baseType: !3672, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!331, !637, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !106, line: 219, size: 640, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683, !3688, !3689, !3690}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3676, file: !106, line: 220, baseType: !7, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3676, file: !106, line: 221, baseType: !610, size: 16, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3676, file: !106, line: 222, baseType: !613, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3676, file: !106, line: 223, baseType: !621, size: 32, offset: 96)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3676, file: !106, line: 224, baseType: !773, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3676, file: !106, line: 225, baseType: !3684, size: 128, offset: 192)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1329, line: 13, size: 128, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3684, file: !1329, line: 14, baseType: !1328, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3684, file: !1329, line: 15, baseType: !319, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3676, file: !106, line: 226, baseType: !3684, size: 128, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3676, file: !106, line: 227, baseType: !3684, size: 128, offset: 448)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3676, file: !106, line: 234, baseType: !956, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !631, file: !106, line: 1882, baseType: !3692, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!331, !752, !3695, !315, !7}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3697, line: 22, size: 1152, elements: !3698)
!3697 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3696, file: !3697, line: 23, baseType: !315, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3696, file: !3697, line: 24, baseType: !610, size: 16, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3696, file: !3697, line: 25, baseType: !7, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3696, file: !3697, line: 26, baseType: !1336, size: 32, offset: 96)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3696, file: !3697, line: 27, baseType: !362, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3696, file: !3697, line: 28, baseType: !362, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3696, file: !3697, line: 37, baseType: !362, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3696, file: !3697, line: 38, baseType: !768, size: 32, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3696, file: !3697, line: 39, baseType: !768, size: 32, offset: 352)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3696, file: !3697, line: 40, baseType: !613, size: 32, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3696, file: !3697, line: 41, baseType: !621, size: 32, offset: 416)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3696, file: !3697, line: 42, baseType: !773, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3696, file: !3697, line: 43, baseType: !3684, size: 128, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3696, file: !3697, line: 44, baseType: !3684, size: 128, offset: 640)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3696, file: !3697, line: 45, baseType: !3684, size: 128, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3696, file: !3697, line: 46, baseType: !3684, size: 128, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3696, file: !3697, line: 47, baseType: !362, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3696, file: !3697, line: 48, baseType: !362, size: 64, offset: 1088)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !631, file: !106, line: 1883, baseType: !3718, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!961, !637, !735, !889}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !631, file: !106, line: 1884, baseType: !3722, size: 64, offset: 1024)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!331, !606, !3725, !362, !362}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !106, line: 50, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !631, file: !106, line: 1886, baseType: !3728, size: 64, offset: 1088)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!331, !606, !3731, !331}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !631, file: !106, line: 1887, baseType: !3733, size: 64, offset: 1152)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!331, !606, !637, !956, !7, !610}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !631, file: !106, line: 1890, baseType: !3659, size: 64, offset: 1216)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !631, file: !106, line: 1891, baseType: !3738, size: 64, offset: 1280)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!331, !606, !3636, !331}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !607, file: !106, line: 623, baseType: !763, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !607, file: !106, line: 624, baseType: !602, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !607, file: !106, line: 631, baseType: !313, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !106, line: 639, baseType: !3745, size: 32, offset: 384)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !106, line: 639, size: 32, elements: !3746)
!3746 = !{!3747, !3748}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3745, file: !106, line: 640, baseType: !3068, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3745, file: !106, line: 641, baseType: !7, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !607, file: !106, line: 643, baseType: !768, size: 32, offset: 416)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !607, file: !106, line: 644, baseType: !773, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !607, file: !106, line: 645, baseType: !3684, size: 128, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !607, file: !106, line: 646, baseType: !3684, size: 128, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !607, file: !106, line: 647, baseType: !3684, size: 128, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !607, file: !106, line: 648, baseType: !267, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !607, file: !106, line: 649, baseType: !379, size: 16, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !607, file: !106, line: 650, baseType: !474, size: 8, offset: 912)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !607, file: !106, line: 651, baseType: !474, size: 8, offset: 920)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !607, file: !106, line: 652, baseType: !1667, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !607, file: !106, line: 659, baseType: !313, size: 64, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !607, file: !106, line: 660, baseType: !1313, size: 256, offset: 1088)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !607, file: !106, line: 662, baseType: !313, size: 64, offset: 1344)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !607, file: !106, line: 663, baseType: !313, size: 64, offset: 1408)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !607, file: !106, line: 665, baseType: !809, size: 128, offset: 1472)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !607, file: !106, line: 666, baseType: !258, size: 128, offset: 1600)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !607, file: !106, line: 675, baseType: !258, size: 128, offset: 1728)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !607, file: !106, line: 676, baseType: !258, size: 128, offset: 1856)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !607, file: !106, line: 677, baseType: !258, size: 128, offset: 1984)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !106, line: 678, baseType: !3769, size: 128, offset: 2112)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !106, line: 678, size: 128, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3769, file: !106, line: 679, baseType: !805, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3769, file: !106, line: 680, baseType: !936, size: 128, align: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !607, file: !106, line: 682, baseType: !291, size: 64, offset: 2240)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !607, file: !106, line: 683, baseType: !291, size: 64, offset: 2304)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !607, file: !106, line: 684, baseType: !327, size: 32, offset: 2368)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !607, file: !106, line: 685, baseType: !327, size: 32, offset: 2400)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !607, file: !106, line: 686, baseType: !327, size: 32, offset: 2432)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !607, file: !106, line: 688, baseType: !327, size: 32, offset: 2464)
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !106, line: 690, baseType: !3780, size: 64, offset: 2496)
!3780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !106, line: 690, size: 64, elements: !3781)
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3780, file: !106, line: 691, baseType: !947, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3780, file: !106, line: 692, baseType: !836, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !607, file: !106, line: 694, baseType: !3785, size: 64, offset: 2560)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !106, line: 1100, size: 384, elements: !3787)
!3787 = !{!3788, !3789, !3790, !3791}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3786, file: !106, line: 1101, baseType: !267)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3786, file: !106, line: 1102, baseType: !258, size: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3786, file: !106, line: 1103, baseType: !258, size: 128, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3786, file: !106, line: 1104, baseType: !258, size: 128, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !607, file: !106, line: 695, baseType: !603, size: 1216, align: 64, offset: 2624)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !607, file: !106, line: 696, baseType: !258, size: 128, offset: 3840)
!3794 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !106, line: 697, baseType: !3795, size: 64, offset: 3968)
!3795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !106, line: 697, size: 64, elements: !3796)
!3796 = !{!3797, !3798, !3799, !3802, !3803}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3795, file: !106, line: 698, baseType: !1200, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3795, file: !106, line: 699, baseType: !1692, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3795, file: !106, line: 700, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !106, line: 700, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3795, file: !106, line: 701, baseType: !735, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3795, file: !106, line: 702, baseType: !7, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !607, file: !106, line: 705, baseType: !316, size: 32, offset: 4032)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !607, file: !106, line: 708, baseType: !316, size: 32, offset: 4064)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !607, file: !106, line: 709, baseType: !3540, size: 64, offset: 4096)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !607, file: !106, line: 720, baseType: !253, size: 64, offset: 4160)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !603, file: !106, line: 453, baseType: !1930, size: 128, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !603, file: !106, line: 454, baseType: !566, size: 32, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !603, file: !106, line: 455, baseType: !327, size: 32, offset: 224)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !603, file: !106, line: 460, baseType: !461, size: 128, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !603, file: !106, line: 461, baseType: !1313, size: 256, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !603, file: !106, line: 462, baseType: !313, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !603, file: !106, line: 463, baseType: !313, size: 64, offset: 704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !603, file: !106, line: 464, baseType: !313, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !603, file: !106, line: 465, baseType: !3817, size: 64, offset: 832)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !106, line: 367, size: 1408, elements: !3820)
!3820 = !{!3821, !3825, !3829, !3833, !3837, !3841, !3853, !3858, !3862, !3866, !3870, !3874, !3878, !3879, !3883, !3889, !3890, !3891, !3895, !3900, !3904, !3911}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3819, file: !106, line: 368, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!331, !590, !848}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3819, file: !106, line: 369, baseType: !3826, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!331, !956, !590}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3819, file: !106, line: 372, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!331, !602, !848}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3819, file: !106, line: 375, baseType: !3834, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!331, !590}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3819, file: !106, line: 381, baseType: !3838, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!331, !956, !602, !262, !7}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3819, file: !106, line: 383, baseType: !3842, size: 64, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !994, line: 795, size: 256, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3846, file: !994, line: 796, baseType: !956, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3846, file: !994, line: 797, baseType: !602, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3846, file: !994, line: 799, baseType: !313, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3846, file: !994, line: 800, baseType: !7, size: 32, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3846, file: !994, line: 801, baseType: !7, size: 32, offset: 224)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3819, file: !106, line: 385, baseType: !3854, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!331, !956, !602, !773, !7, !7, !3857, !1157}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3819, file: !106, line: 388, baseType: !3859, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!331, !956, !602, !773, !7, !7, !590, !253}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3819, file: !106, line: 393, baseType: !3863, size: 64, offset: 512)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!1714, !602, !1714}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3819, file: !106, line: 394, baseType: !3867, size: 64, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !590, !7, !7}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3819, file: !106, line: 395, baseType: !3871, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!331, !590, !566}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3819, file: !106, line: 396, baseType: !3875, size: 64, offset: 704)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !590}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3819, file: !106, line: 397, baseType: !969, size: 64, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3819, file: !106, line: 402, baseType: !3880, size: 64, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!331, !602, !590, !590, !27}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3819, file: !106, line: 404, baseType: !3884, size: 64, offset: 896)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!754, !590, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3888, line: 305, baseType: !7)
!3888 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3819, file: !106, line: 405, baseType: !3875, size: 64, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3819, file: !106, line: 406, baseType: !3834, size: 64, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3819, file: !106, line: 407, baseType: !3892, size: 64, offset: 1088)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!331, !590, !313, !313}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3819, file: !106, line: 409, baseType: !3896, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !590, !3899, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3819, file: !106, line: 410, baseType: !3901, size: 64, offset: 1216)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!331, !602, !590}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3819, file: !106, line: 413, baseType: !3905, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!331, !3908, !956, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !106, line: 61, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3819, file: !106, line: 415, baseType: !3912, size: 64, offset: 1344)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !956}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !106, line: 466, baseType: !313, size: 64, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !603, file: !106, line: 467, baseType: !1478, size: 32, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !603, file: !106, line: 468, baseType: !267, offset: 992)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !603, file: !106, line: 469, baseType: !258, size: 128, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !603, file: !106, line: 470, baseType: !253, size: 64, offset: 1152)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !598, file: !503, line: 87, baseType: !313, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !598, file: !503, line: 94, baseType: !313, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 96, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 96, size: 64, elements: !3924)
!3924 = !{!3925}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3923, file: !503, line: 101, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !259, line: 143, baseType: !362)
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 103, baseType: !3928, size: 320)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 103, size: 320, elements: !3929)
!3929 = !{!3930, !3940, !3941, !3942}
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !503, line: 104, baseType: !3931, size: 128)
!3931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !503, line: 104, size: 128, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3931, file: !503, line: 105, baseType: !258, size: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !503, line: 106, baseType: !3935, size: 128)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3931, file: !503, line: 106, size: 128, elements: !3936)
!3936 = !{!3937, !3938, !3939}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3935, file: !503, line: 107, baseType: !590, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3935, file: !503, line: 109, baseType: !331, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3935, file: !503, line: 110, baseType: !331, size: 32, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3928, file: !503, line: 117, baseType: !2629, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3928, file: !503, line: 119, baseType: !253, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !503, line: 120, baseType: !3943, size: 64, offset: 256)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !503, line: 120, size: 64, elements: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3943, file: !503, line: 121, baseType: !253, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3943, file: !503, line: 122, baseType: !313, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !503, line: 123, baseType: !3948, size: 32)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3943, file: !503, line: 123, size: 32, elements: !3949)
!3949 = !{!3950, !3951, !3952}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3948, file: !503, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3948, file: !503, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3948, file: !503, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3953 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 130, baseType: !3954, size: 192)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 130, size: 192, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3954, file: !503, line: 131, baseType: !313, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3954, file: !503, line: 134, baseType: !476, size: 8, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3954, file: !503, line: 135, baseType: !476, size: 8, offset: 72)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3954, file: !503, line: 136, baseType: !327, size: 32, offset: 96)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3954, file: !503, line: 137, baseType: !7, size: 32, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 139, baseType: !3962, size: 256)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 139, size: 256, elements: !3963)
!3963 = !{!3964, !3965, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3962, file: !503, line: 140, baseType: !313, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3962, file: !503, line: 141, baseType: !327, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3962, file: !503, line: 143, baseType: !258, size: 128, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 145, baseType: !3968, size: 256)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 145, size: 256, elements: !3969)
!3969 = !{!3970, !3971, !3973, !3974, !3979}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3968, file: !503, line: 146, baseType: !313, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3968, file: !503, line: 147, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !521, line: 509, baseType: !590)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3968, file: !503, line: 148, baseType: !313, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !503, line: 149, baseType: !3975, size: 64, offset: 192)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !503, line: 149, size: 64, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3975, file: !503, line: 150, baseType: !501, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3975, file: !503, line: 151, baseType: !327, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3968, file: !503, line: 156, baseType: !267, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !503, line: 159, baseType: !3981, size: 128)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !503, line: 159, size: 128, elements: !3982)
!3982 = !{!3983, !4027}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3981, file: !503, line: 161, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !93, line: 110, size: 1152, elements: !3986)
!3986 = !{!3987, !3997, !3998, !3999, !4000, !4001, !4002, !4014, !4015, !4016}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3985, file: !93, line: 111, baseType: !3988, size: 384)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !93, line: 19, size: 384, elements: !3989)
!3989 = !{!3990, !3992, !3993, !3994, !3995, !3996}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3988, file: !93, line: 20, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3988, file: !93, line: 21, baseType: !3991, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3988, file: !93, line: 22, baseType: !3991, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3988, file: !93, line: 23, baseType: !313, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3988, file: !93, line: 24, baseType: !313, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3988, file: !93, line: 25, baseType: !313, size: 64, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3985, file: !93, line: 112, baseType: !1735, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3985, file: !93, line: 113, baseType: !1721, size: 128, offset: 448)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3985, file: !93, line: 114, baseType: !2223, size: 192, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3985, file: !93, line: 115, baseType: !92, size: 32, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3985, file: !93, line: 116, baseType: !7, size: 32, offset: 800)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3985, file: !93, line: 117, baseType: !4003, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !93, line: 67, size: 256, elements: !4006)
!4006 = !{!4007, !4008, !4012, !4013}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4005, file: !93, line: 73, baseType: !3875, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !4005, file: !93, line: 78, baseType: !4009, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !3984}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4005, file: !93, line: 83, baseType: !4009, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4005, file: !93, line: 89, baseType: !556, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3985, file: !93, line: 118, baseType: !253, size: 64, offset: 896)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3985, file: !93, line: 119, baseType: !331, size: 32, offset: 960)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !3985, file: !93, line: 120, baseType: !4017, size: 128, offset: 1024)
!4017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3985, file: !93, line: 120, size: 128, elements: !4018)
!4018 = !{!4019, !4025}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4017, file: !93, line: 121, baseType: !4020, size: 128)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4021, line: 6, size: 128, elements: !4022)
!4021 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4020, file: !4021, line: 7, baseType: !362, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4020, file: !4021, line: 8, baseType: !362, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4017, file: !93, line: 122, baseType: !4026)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4020, elements: !1456)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3981, file: !503, line: 162, baseType: !253, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !595, file: !503, line: 176, baseType: !936, size: 128, align: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !503, line: 179, baseType: !4030, size: 32, offset: 384)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !503, line: 179, size: 32, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4030, file: !503, line: 184, baseType: !327, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4030, file: !503, line: 192, baseType: !7, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4030, file: !503, line: 194, baseType: !7, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4030, file: !503, line: 195, baseType: !331, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !591, file: !503, line: 199, baseType: !327, size: 32, offset: 416)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !561, file: !35, line: 522, baseType: !590, size: 64, offset: 512)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !561, file: !35, line: 528, baseType: !4039, size: 64, offset: 576)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !561, file: !35, line: 532, baseType: !283, size: 64, offset: 640)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !561, file: !35, line: 536, baseType: !3972, size: 64, offset: 704)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !540, file: !35, line: 563, baseType: !4043, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!559, !560, !34}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !540, file: !35, line: 565, baseType: !4047, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !560, !313, !313}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !540, file: !35, line: 567, baseType: !4051, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!313, !509}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !540, file: !35, line: 571, baseType: !556, size: 64, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !540, file: !35, line: 574, baseType: !556, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !540, file: !35, line: 579, baseType: !4057, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!331, !509, !313, !253, !331, !331}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !35, line: 585, baseType: !4061, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!709, !509}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !540, file: !35, line: 615, baseType: !4065, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!590, !509, !313}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !510, file: !503, line: 359, baseType: !313, size: 64, offset: 1216)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !510, file: !503, line: 361, baseType: !956, size: 64, offset: 1280)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !510, file: !503, line: 362, baseType: !253, size: 64, offset: 1344)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !510, file: !503, line: 365, baseType: !289, size: 64, offset: 1408)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !510, file: !503, line: 373, baseType: !4073, offset: 1472)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !503, line: 296, elements: !281)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !506, file: !503, line: 391, baseType: !464, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !506, file: !503, line: 392, baseType: !362, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !506, file: !503, line: 394, baseType: !1188, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !506, file: !503, line: 398, baseType: !313, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !506, file: !503, line: 399, baseType: !313, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !506, file: !503, line: 405, baseType: !313, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !506, file: !503, line: 406, baseType: !313, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !506, file: !503, line: 407, baseType: !4082, size: 64, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !521, line: 286, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 286, size: 64, elements: !4085)
!4085 = !{!4086}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4084, file: !521, line: 286, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !526, line: 18, baseType: !313)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !506, file: !503, line: 416, baseType: !327, size: 32, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !506, file: !503, line: 428, baseType: !327, size: 32, offset: 608)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !506, file: !503, line: 437, baseType: !327, size: 32, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !506, file: !503, line: 447, baseType: !327, size: 32, offset: 672)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !506, file: !503, line: 450, baseType: !289, size: 64, offset: 704)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !506, file: !503, line: 452, baseType: !331, size: 32, offset: 768)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !506, file: !503, line: 454, baseType: !267, offset: 800)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !506, file: !503, line: 457, baseType: !1313, size: 256, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !506, file: !503, line: 459, baseType: !258, size: 128, offset: 1088)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !506, file: !503, line: 466, baseType: !313, size: 64, offset: 1216)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !506, file: !503, line: 467, baseType: !313, size: 64, offset: 1280)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !506, file: !503, line: 469, baseType: !313, size: 64, offset: 1344)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !506, file: !503, line: 470, baseType: !313, size: 64, offset: 1408)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !506, file: !503, line: 471, baseType: !291, size: 64, offset: 1472)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !506, file: !503, line: 472, baseType: !313, size: 64, offset: 1536)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !506, file: !503, line: 473, baseType: !313, size: 64, offset: 1600)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !506, file: !503, line: 474, baseType: !313, size: 64, offset: 1664)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !506, file: !503, line: 475, baseType: !313, size: 64, offset: 1728)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !506, file: !503, line: 477, baseType: !267, offset: 1792)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !506, file: !503, line: 478, baseType: !313, size: 64, offset: 1792)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !506, file: !503, line: 478, baseType: !313, size: 64, offset: 1856)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !506, file: !503, line: 478, baseType: !313, size: 64, offset: 1920)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !506, file: !503, line: 478, baseType: !313, size: 64, offset: 1984)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !506, file: !503, line: 479, baseType: !313, size: 64, offset: 2048)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !506, file: !503, line: 479, baseType: !313, size: 64, offset: 2112)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !506, file: !503, line: 479, baseType: !313, size: 64, offset: 2176)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !506, file: !503, line: 480, baseType: !313, size: 64, offset: 2240)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !506, file: !503, line: 480, baseType: !313, size: 64, offset: 2304)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !506, file: !503, line: 480, baseType: !313, size: 64, offset: 2368)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !506, file: !503, line: 480, baseType: !313, size: 64, offset: 2432)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !506, file: !503, line: 482, baseType: !4119, size: 2816, offset: 2496)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 2816, elements: !4120)
!4120 = !{!4121}
!4121 = !DISubrange(count: 44)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !506, file: !503, line: 488, baseType: !4123, size: 256, offset: 5312)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !4124, line: 60, size: 256, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4123, file: !4124, line: 61, baseType: !4127, size: 256)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !1249)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !506, file: !503, line: 490, baseType: !4129, size: 64, offset: 5568)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !503, line: 490, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !506, file: !503, line: 493, baseType: !4132, size: 896, offset: 5632)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4133, line: 53, baseType: !4134)
!4133 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4133, line: 13, size: 896, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139, !4142, !4143, !4144, !4145, !4165, !4166, !4167}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4134, file: !4133, line: 18, baseType: !362, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4134, file: !4133, line: 28, baseType: !291, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4134, file: !4133, line: 31, baseType: !1313, size: 256, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4134, file: !4133, line: 32, baseType: !4140, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4133, line: 32, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !4134, file: !4133, line: 37, baseType: !379, size: 16, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4134, file: !4133, line: 40, baseType: !285, size: 192, offset: 512)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4134, file: !4133, line: 41, baseType: !253, size: 64, offset: 704)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4134, file: !4133, line: 42, baseType: !4146, size: 64, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4149, line: 13, size: 896, elements: !4150)
!4149 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4148, file: !4149, line: 14, baseType: !253, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4148, file: !4149, line: 15, baseType: !313, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4148, file: !4149, line: 17, baseType: !313, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4148, file: !4149, line: 17, baseType: !313, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4148, file: !4149, line: 19, baseType: !319, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4148, file: !4149, line: 21, baseType: !319, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4148, file: !4149, line: 22, baseType: !319, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4148, file: !4149, line: 23, baseType: !319, size: 64, offset: 448)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4148, file: !4149, line: 24, baseType: !319, size: 64, offset: 512)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4148, file: !4149, line: 25, baseType: !319, size: 64, offset: 576)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4148, file: !4149, line: 26, baseType: !319, size: 64, offset: 640)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4148, file: !4149, line: 27, baseType: !319, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4148, file: !4149, line: 28, baseType: !319, size: 64, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4148, file: !4149, line: 29, baseType: !319, size: 64, offset: 832)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4134, file: !4133, line: 44, baseType: !327, size: 32, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4134, file: !4133, line: 50, baseType: !984, size: 16, offset: 864)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4134, file: !4133, line: 51, baseType: !4168, size: 16, offset: 880)
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !296, line: 18, baseType: !4169)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !298, line: 23, baseType: !1340)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !503, line: 495, baseType: !313, size: 64, offset: 6528)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !506, file: !503, line: 497, baseType: !4172, size: 64, offset: 6592)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !503, line: 381, size: 384, elements: !4174)
!4174 = !{!4175, !4176, !4182}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4173, file: !503, line: 382, baseType: !327, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4173, file: !503, line: 383, baseType: !4177, size: 128, offset: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !503, line: 376, size: 128, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4177, file: !503, line: 377, baseType: !304, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4177, file: !503, line: 378, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4173, file: !503, line: 384, baseType: !2223, size: 192, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !506, file: !503, line: 500, baseType: !267, offset: 6656)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !506, file: !503, line: 501, baseType: !4185, size: 64, offset: 6656)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !503, line: 387, flags: DIFlagFwdDecl)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !506, file: !503, line: 516, baseType: !1446, size: 64, offset: 6720)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !506, file: !503, line: 519, baseType: !956, size: 64, offset: 6784)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !506, file: !503, line: 521, baseType: !4190, size: 64, offset: 6848)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !503, line: 521, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !506, file: !503, line: 545, baseType: !327, size: 32, offset: 6912)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !506, file: !503, line: 548, baseType: !754, size: 8, offset: 6944)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !506, file: !503, line: 550, baseType: !4195, offset: 6952)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4196, line: 142, elements: !281)
!4196 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !506, file: !503, line: 554, baseType: !2279, size: 256, offset: 6976)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !506, file: !503, line: 557, baseType: !315, size: 32, offset: 7232)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !502, file: !503, line: 565, baseType: !4200, offset: 7296)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !2555)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !305, file: !306, line: 758, baseType: !501, size: 64, offset: 3968)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !305, file: !306, line: 761, baseType: !4203, size: 320, offset: 4032)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !4124, line: 34, size: 320, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !4203, file: !4124, line: 35, baseType: !362, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !4203, file: !4124, line: 36, baseType: !4207, size: 256, offset: 64)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 256, elements: !1249)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !305, file: !306, line: 766, baseType: !331, size: 32, offset: 4352)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !305, file: !306, line: 767, baseType: !331, size: 32, offset: 4384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !305, file: !306, line: 768, baseType: !331, size: 32, offset: 4416)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !305, file: !306, line: 770, baseType: !331, size: 32, offset: 4448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !305, file: !306, line: 772, baseType: !313, size: 64, offset: 4480)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !305, file: !306, line: 775, baseType: !7, size: 32, offset: 4544)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !305, file: !306, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !305, file: !306, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !305, file: !306, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !305, file: !306, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !305, file: !306, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !305, file: !306, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !305, file: !306, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !305, file: !306, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !305, file: !306, line: 831, baseType: !313, size: 64, offset: 4672)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !305, file: !306, line: 833, baseType: !4224, size: 384, offset: 4736)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !46, line: 25, size: 384, elements: !4225)
!4225 = !{!4226, !4231}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4224, file: !46, line: 26, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!319, !4230}
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, scope: !4224, file: !46, line: 27, baseType: !4232, size: 320, offset: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4224, file: !46, line: 27, size: 320, elements: !4233)
!4233 = !{!4234, !4244, !4269}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4232, file: !46, line: 36, baseType: !4235, size: 320)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4232, file: !46, line: 29, size: 320, elements: !4236)
!4236 = !{!4237, !4239, !4240, !4241, !4242, !4243}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4235, file: !46, line: 30, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4235, file: !46, line: 31, baseType: !315, size: 32, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4235, file: !46, line: 32, baseType: !315, size: 32, offset: 96)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4235, file: !46, line: 33, baseType: !315, size: 32, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4235, file: !46, line: 34, baseType: !362, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4235, file: !46, line: 35, baseType: !4238, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4232, file: !46, line: 46, baseType: !4245, size: 192)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4232, file: !46, line: 38, size: 192, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4268}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4245, file: !46, line: 39, baseType: !443, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4245, file: !46, line: 40, baseType: !45, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, scope: !4245, file: !46, line: 41, baseType: !4250, size: 64, offset: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4245, file: !46, line: 41, size: 64, elements: !4251)
!4251 = !{!4252, !4260}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4250, file: !46, line: 42, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4255, line: 7, size: 128, elements: !4256)
!4255 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!4256 = !{!4257, !4259}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4254, file: !4255, line: 8, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !445, line: 93, baseType: !299)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4254, file: !4255, line: 9, baseType: !299, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4250, file: !46, line: 43, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4263, line: 7, size: 64, elements: !4264)
!4263 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!4264 = !{!4265, !4267}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4262, file: !4263, line: 8, baseType: !4266, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4263, line: 5, baseType: !1305)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4262, file: !4263, line: 9, baseType: !1305, size: 32, offset: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4245, file: !46, line: 45, baseType: !362, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4232, file: !46, line: 54, baseType: !4270, size: 256)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4232, file: !46, line: 48, size: 256, elements: !4271)
!4271 = !{!4272, !4275, !4276, !4277, !4278}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4270, file: !46, line: 49, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !46, line: 14, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4270, file: !46, line: 50, baseType: !331, size: 32, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4270, file: !46, line: 51, baseType: !331, size: 32, offset: 96)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4270, file: !46, line: 52, baseType: !313, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4270, file: !46, line: 53, baseType: !313, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !305, file: !306, line: 835, baseType: !4280, size: 32, offset: 5120)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !259, line: 22, baseType: !4281)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !445, line: 28, baseType: !331)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !305, file: !306, line: 836, baseType: !4280, size: 32, offset: 5152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !305, file: !306, line: 840, baseType: !313, size: 64, offset: 5184)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !305, file: !306, line: 849, baseType: !304, size: 64, offset: 5248)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !305, file: !306, line: 852, baseType: !304, size: 64, offset: 5312)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !305, file: !306, line: 857, baseType: !258, size: 128, offset: 5376)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !305, file: !306, line: 858, baseType: !258, size: 128, offset: 5504)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !305, file: !306, line: 859, baseType: !304, size: 64, offset: 5632)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !305, file: !306, line: 867, baseType: !258, size: 128, offset: 5696)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !305, file: !306, line: 868, baseType: !258, size: 128, offset: 5824)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !305, file: !306, line: 871, baseType: !1241, size: 64, offset: 5952)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !305, file: !306, line: 872, baseType: !4293, size: 512, offset: 6016)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 512, elements: !1249)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !305, file: !306, line: 873, baseType: !258, size: 128, offset: 6528)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !305, file: !306, line: 874, baseType: !258, size: 128, offset: 6656)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !305, file: !306, line: 876, baseType: !4297, size: 64, offset: 6784)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !305, file: !306, line: 879, baseType: !877, size: 64, offset: 6848)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !305, file: !306, line: 882, baseType: !877, size: 64, offset: 6912)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !305, file: !306, line: 884, baseType: !362, size: 64, offset: 6976)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !305, file: !306, line: 885, baseType: !362, size: 64, offset: 7040)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !305, file: !306, line: 890, baseType: !362, size: 64, offset: 7104)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !305, file: !306, line: 891, baseType: !4304, size: 128, offset: 7168)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !306, line: 242, size: 128, elements: !4305)
!4305 = !{!4306, !4307, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4304, file: !306, line: 244, baseType: !362, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4304, file: !306, line: 245, baseType: !362, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4304, file: !306, line: 246, baseType: !425, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !305, file: !306, line: 900, baseType: !313, size: 64, offset: 7296)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !305, file: !306, line: 901, baseType: !313, size: 64, offset: 7360)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !305, file: !306, line: 904, baseType: !362, size: 64, offset: 7424)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !305, file: !306, line: 907, baseType: !362, size: 64, offset: 7488)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !305, file: !306, line: 910, baseType: !313, size: 64, offset: 7552)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !305, file: !306, line: 911, baseType: !313, size: 64, offset: 7616)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !305, file: !306, line: 914, baseType: !4316, size: 640, offset: 7680)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4317, line: 123, size: 640, elements: !4318)
!4317 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!4318 = !{!4319, !4325, !4326}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4316, file: !4317, line: 124, baseType: !4320, size: 576)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4321, size: 576, elements: !821)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4317, line: 108, size: 192, elements: !4322)
!4322 = !{!4323, !4324}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4321, file: !4317, line: 109, baseType: !362, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4321, file: !4317, line: 110, baseType: !458, size: 128, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4316, file: !4317, line: 125, baseType: !7, size: 32, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4316, file: !4317, line: 126, baseType: !7, size: 32, offset: 608)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !305, file: !306, line: 917, baseType: !4328, size: 192, offset: 8320)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4317, line: 134, size: 192, elements: !4329)
!4329 = !{!4330, !4331}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4328, file: !4317, line: 135, baseType: !936, size: 128, align: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4328, file: !4317, line: 136, baseType: !7, size: 32, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !305, file: !306, line: 923, baseType: !1267, size: 64, offset: 8512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !305, file: !306, line: 926, baseType: !1267, size: 64, offset: 8576)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !305, file: !306, line: 929, baseType: !1267, size: 64, offset: 8640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !305, file: !306, line: 933, baseType: !1297, size: 64, offset: 8704)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !305, file: !306, line: 943, baseType: !4337, size: 128, offset: 8768)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 128, elements: !3314)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !305, file: !306, line: 945, baseType: !4339, size: 64, offset: 8896)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !306, line: 49, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !305, file: !306, line: 956, baseType: !4342, size: 64, offset: 8960)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !306, line: 45, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !305, file: !306, line: 959, baseType: !4345, size: 64, offset: 9024)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !306, line: 959, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !305, file: !306, line: 962, baseType: !4348, size: 64, offset: 9088)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !306, line: 66, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !305, file: !306, line: 966, baseType: !4351, size: 64, offset: 9152)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !306, line: 50, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !305, file: !306, line: 969, baseType: !4354, size: 64, offset: 9216)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4356, line: 82, size: 7296, elements: !4357)
!4356 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4393, !4402, !4403, !4405, !4406, !4407, !4410, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4440, !4441, !4448, !4449, !4450, !4451, !4452, !4453}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4355, file: !4356, line: 83, baseType: !322, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4355, file: !4356, line: 84, baseType: !327, size: 32, offset: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4355, file: !4356, line: 85, baseType: !331, size: 32, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4355, file: !4356, line: 86, baseType: !258, size: 128, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4355, file: !4356, line: 88, baseType: !1087, size: 128, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4355, file: !4356, line: 91, baseType: !304, size: 64, offset: 384)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4355, file: !4356, line: 94, baseType: !4365, size: 192, offset: 448)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4366, line: 30, size: 192, elements: !4367)
!4366 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!4367 = !{!4368, !4369}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4365, file: !4366, line: 31, baseType: !258, size: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4365, file: !4366, line: 32, baseType: !4370, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4371, line: 25, baseType: !4372)
!4371 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4371, line: 23, size: 64, elements: !4373)
!4373 = !{!4374}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4372, file: !4371, line: 24, baseType: !493, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4355, file: !4356, line: 97, baseType: !805, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4355, file: !4356, line: 100, baseType: !331, size: 32, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4355, file: !4356, line: 106, baseType: !331, size: 32, offset: 736)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !4355, file: !4356, line: 107, baseType: !304, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4355, file: !4356, line: 110, baseType: !331, size: 32, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4355, file: !4356, line: 111, baseType: !7, size: 32, offset: 864)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4355, file: !4356, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4355, file: !4356, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !4355, file: !4356, line: 128, baseType: !331, size: 32, offset: 928)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4355, file: !4356, line: 129, baseType: !258, size: 128, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4355, file: !4356, line: 132, baseType: !400, size: 512, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4355, file: !4356, line: 133, baseType: !408, size: 64, offset: 1600)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4355, file: !4356, line: 140, baseType: !4388, size: 256, offset: 1664)
!4388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4389, size: 256, elements: !1289)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4356, line: 38, size: 128, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4389, file: !4356, line: 39, baseType: !362, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4389, file: !4356, line: 40, baseType: !362, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4355, file: !4356, line: 146, baseType: !4394, size: 192, offset: 1920)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4356, line: 66, size: 192, elements: !4395)
!4395 = !{!4396}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4394, file: !4356, line: 67, baseType: !4397, size: 192)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4356, line: 47, size: 192, elements: !4398)
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4397, file: !4356, line: 48, baseType: !291, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4397, file: !4356, line: 49, baseType: !291, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4397, file: !4356, line: 50, baseType: !291, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4355, file: !4356, line: 150, baseType: !4316, size: 640, offset: 2112)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4355, file: !4356, line: 153, baseType: !4404, size: 256, offset: 2752)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 256, elements: !1249)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4355, file: !4356, line: 159, baseType: !1241, size: 64, offset: 3008)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4355, file: !4356, line: 162, baseType: !331, size: 32, offset: 3072)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4355, file: !4356, line: 164, baseType: !4408, size: 64, offset: 3136)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4356, line: 164, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4355, file: !4356, line: 175, baseType: !4411, size: 32, offset: 3200)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !448, line: 805, baseType: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 798, size: 32, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4412, file: !448, line: 803, baseType: !643, size: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4412, file: !448, line: 804, baseType: !267, offset: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4355, file: !4356, line: 176, baseType: !362, size: 64, offset: 3264)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4355, file: !4356, line: 176, baseType: !362, size: 64, offset: 3328)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4355, file: !4356, line: 176, baseType: !362, size: 64, offset: 3392)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4355, file: !4356, line: 176, baseType: !362, size: 64, offset: 3456)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4355, file: !4356, line: 177, baseType: !362, size: 64, offset: 3520)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4355, file: !4356, line: 178, baseType: !362, size: 64, offset: 3584)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4355, file: !4356, line: 179, baseType: !4304, size: 128, offset: 3648)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4355, file: !4356, line: 180, baseType: !313, size: 64, offset: 3776)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4355, file: !4356, line: 180, baseType: !313, size: 64, offset: 3840)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4355, file: !4356, line: 180, baseType: !313, size: 64, offset: 3904)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4355, file: !4356, line: 180, baseType: !313, size: 64, offset: 3968)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4355, file: !4356, line: 181, baseType: !313, size: 64, offset: 4032)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4355, file: !4356, line: 181, baseType: !313, size: 64, offset: 4096)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4355, file: !4356, line: 181, baseType: !313, size: 64, offset: 4160)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4355, file: !4356, line: 181, baseType: !313, size: 64, offset: 4224)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4355, file: !4356, line: 182, baseType: !313, size: 64, offset: 4288)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4355, file: !4356, line: 182, baseType: !313, size: 64, offset: 4352)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4355, file: !4356, line: 182, baseType: !313, size: 64, offset: 4416)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4355, file: !4356, line: 182, baseType: !313, size: 64, offset: 4480)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4355, file: !4356, line: 183, baseType: !313, size: 64, offset: 4544)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4355, file: !4356, line: 183, baseType: !313, size: 64, offset: 4608)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4355, file: !4356, line: 184, baseType: !4438, offset: 4672)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4439, line: 12, elements: !281)
!4439 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4355, file: !4356, line: 192, baseType: !364, size: 64, offset: 4672)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4355, file: !4356, line: 203, baseType: !4442, size: 2048, offset: 4736)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4443, size: 2048, elements: !3314)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4444, line: 43, size: 128, elements: !4445)
!4444 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4443, file: !4444, line: 44, baseType: !891, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4443, file: !4444, line: 45, baseType: !891, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4355, file: !4356, line: 220, baseType: !754, size: 8, offset: 6784)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4355, file: !4356, line: 221, baseType: !1340, size: 16, offset: 6800)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4355, file: !4356, line: 222, baseType: !1340, size: 16, offset: 6816)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4355, file: !4356, line: 224, baseType: !501, size: 64, offset: 6848)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4355, file: !4356, line: 227, baseType: !285, size: 192, offset: 6912)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !4355, file: !4356, line: 233, baseType: !285, size: 192, offset: 7104)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !305, file: !306, line: 970, baseType: !4455, size: 64, offset: 9280)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4356, line: 20, size: 16576, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4456, file: !4356, line: 21, baseType: !267)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4456, file: !4356, line: 22, baseType: !322, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4456, file: !4356, line: 23, baseType: !1087, size: 128, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4456, file: !4356, line: 24, baseType: !4462, size: 16384, offset: 192)
!4462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4463, size: 16384, elements: !1786)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4366, line: 49, size: 256, elements: !4464)
!4464 = !{!4465}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4463, file: !4366, line: 50, baseType: !4466, size: 256)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4366, line: 35, size: 256, elements: !4467)
!4467 = !{!4468, !4475, !4476, !4482}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4466, file: !4366, line: 37, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4470, line: 19, baseType: !4471)
!4470 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4470, line: 18, baseType: !4473)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !331}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4466, file: !4366, line: 38, baseType: !313, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4466, file: !4366, line: 44, baseType: !4477, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4470, line: 22, baseType: !4478)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4470, line: 21, baseType: !4480)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4466, file: !4366, line: 46, baseType: !4370, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !305, file: !306, line: 971, baseType: !4370, size: 64, offset: 9344)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !305, file: !306, line: 972, baseType: !4370, size: 64, offset: 9408)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !305, file: !306, line: 974, baseType: !4370, size: 64, offset: 9472)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !305, file: !306, line: 975, baseType: !4365, size: 192, offset: 9536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !305, file: !306, line: 976, baseType: !313, size: 64, offset: 9728)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !305, file: !306, line: 977, baseType: !889, size: 64, offset: 9792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !305, file: !306, line: 978, baseType: !7, size: 32, offset: 9856)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !305, file: !306, line: 980, baseType: !939, size: 64, offset: 9920)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !305, file: !306, line: 989, baseType: !4492, size: 128, offset: 9984)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4493, line: 35, size: 128, elements: !4494)
!4493 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!4494 = !{!4495, !4496, !4497}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4492, file: !4493, line: 36, baseType: !331, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4492, file: !4493, line: 37, baseType: !327, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4492, file: !4493, line: 38, baseType: !4498, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4493, line: 23, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !305, file: !306, line: 992, baseType: !362, size: 64, offset: 10112)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !305, file: !306, line: 993, baseType: !362, size: 64, offset: 10176)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !305, file: !306, line: 996, baseType: !267, offset: 10240)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !305, file: !306, line: 999, baseType: !425, offset: 10240)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !305, file: !306, line: 1001, baseType: !4505, size: 64, offset: 10240)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !306, line: 636, size: 64, elements: !4506)
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4505, file: !306, line: 637, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !305, file: !306, line: 1005, baseType: !461, size: 128, offset: 10304)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !305, file: !306, line: 1007, baseType: !304, size: 64, offset: 10432)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !305, file: !306, line: 1009, baseType: !4512, size: 64, offset: 10496)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !306, line: 1009, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !305, file: !306, line: 1043, baseType: !253, size: 64, offset: 10560)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !305, file: !306, line: 1046, baseType: !4516, size: 64, offset: 10624)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !305, file: !306, line: 1050, baseType: !4518, size: 64, offset: 10688)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !64, line: 1236, size: 320, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4519, file: !64, line: 1237, baseType: !258, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4519, file: !64, line: 1238, baseType: !258, size: 128, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4519, file: !64, line: 1239, baseType: !379, size: 16, offset: 256)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4519, file: !64, line: 1240, baseType: !754, size: 8, offset: 272)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !4519, file: !64, line: 1241, baseType: !754, size: 8, offset: 280)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !305, file: !306, line: 1054, baseType: !4527, size: 64, offset: 10752)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !306, line: 55, flags: DIFlagFwdDecl)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !305, file: !306, line: 1056, baseType: !3190, size: 64, offset: 10816)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !305, file: !306, line: 1058, baseType: !2876, size: 64, offset: 10880)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !305, file: !306, line: 1061, baseType: !4532, size: 64, offset: 10944)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !306, line: 43, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !305, file: !306, line: 1064, baseType: !313, size: 64, offset: 11008)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !305, file: !306, line: 1065, baseType: !4536, size: 64, offset: 11072)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4366, line: 14, baseType: !4538)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4366, line: 12, size: 384, elements: !4539)
!4539 = !{!4540}
!4540 = !DIDerivedType(tag: DW_TAG_member, scope: !4538, file: !4366, line: 13, baseType: !4541, size: 384)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4366, line: 13, size: 384, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4546}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4541, file: !4366, line: 13, baseType: !331, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4541, file: !4366, line: 13, baseType: !331, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4541, file: !4366, line: 13, baseType: !331, size: 32, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4541, file: !4366, line: 13, baseType: !4547, size: 256, offset: 128)
!4547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4548, line: 32, size: 256, elements: !4549)
!4548 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!4549 = !{!4550, !4555, !4568, !4574, !4583, !4603, !4608}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4547, file: !4548, line: 37, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 34, size: 64, elements: !4552)
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4551, file: !4548, line: 35, baseType: !4281, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4551, file: !4548, line: 36, baseType: !619, size: 32, offset: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4547, file: !4548, line: 45, baseType: !4556, size: 192)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 40, size: 192, elements: !4557)
!4557 = !{!4558, !4560, !4561, !4567}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4556, file: !4548, line: 41, baseType: !4559, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !445, line: 95, baseType: !331)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4556, file: !4548, line: 42, baseType: !331, size: 32, offset: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4556, file: !4548, line: 43, baseType: !4562, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4548, line: 11, baseType: !4563)
!4563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4548, line: 8, size: 64, elements: !4564)
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4563, file: !4548, line: 9, baseType: !331, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4563, file: !4548, line: 10, baseType: !253, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4556, file: !4548, line: 44, baseType: !331, size: 32, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4547, file: !4548, line: 52, baseType: !4569, size: 128)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 48, size: 128, elements: !4570)
!4570 = !{!4571, !4572, !4573}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4569, file: !4548, line: 49, baseType: !4281, size: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4569, file: !4548, line: 50, baseType: !619, size: 32, offset: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4569, file: !4548, line: 51, baseType: !4562, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4547, file: !4548, line: 61, baseType: !4575, size: 256)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 55, size: 256, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4582}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4575, file: !4548, line: 56, baseType: !4281, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4575, file: !4548, line: 57, baseType: !619, size: 32, offset: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4575, file: !4548, line: 58, baseType: !331, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4575, file: !4548, line: 59, baseType: !4581, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !445, line: 94, baseType: !963)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4575, file: !4548, line: 60, baseType: !4581, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4547, file: !4548, line: 95, baseType: !4584, size: 256)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 64, size: 256, elements: !4585)
!4585 = !{!4586, !4587}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4584, file: !4548, line: 65, baseType: !253, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, scope: !4584, file: !4548, line: 77, baseType: !4588, size: 192, offset: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4584, file: !4548, line: 77, size: 192, elements: !4589)
!4589 = !{!4590, !4591, !4598}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4588, file: !4548, line: 82, baseType: !1340, size: 16)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4588, file: !4548, line: 88, baseType: !4592, size: 192)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4548, line: 84, size: 192, elements: !4593)
!4593 = !{!4594, !4596, !4597}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4592, file: !4548, line: 85, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !439)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4592, file: !4548, line: 86, baseType: !253, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4592, file: !4548, line: 87, baseType: !253, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4588, file: !4548, line: 93, baseType: !4599, size: 96)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !4548, line: 90, size: 96, elements: !4600)
!4600 = !{!4601, !4602}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4599, file: !4548, line: 91, baseType: !4595, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4599, file: !4548, line: 92, baseType: !316, size: 32, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4547, file: !4548, line: 101, baseType: !4604, size: 128)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 98, size: 128, elements: !4605)
!4605 = !{!4606, !4607}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4604, file: !4548, line: 99, baseType: !319, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4604, file: !4548, line: 100, baseType: !331, size: 32, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4547, file: !4548, line: 108, baseType: !4609, size: 128)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4547, file: !4548, line: 104, size: 128, elements: !4610)
!4610 = !{!4611, !4612, !4613}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4609, file: !4548, line: 105, baseType: !253, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4609, file: !4548, line: 106, baseType: !331, size: 32, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4609, file: !4548, line: 107, baseType: !7, size: 32, offset: 96)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !305, file: !306, line: 1067, baseType: !4438, offset: 11136)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !305, file: !306, line: 1099, baseType: !4616, size: 64, offset: 11136)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !306, line: 56, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !305, file: !306, line: 1103, baseType: !258, size: 128, offset: 11200)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !305, file: !306, line: 1104, baseType: !4620, size: 64, offset: 11328)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !306, line: 46, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !305, file: !306, line: 1105, baseType: !285, size: 192, offset: 11392)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !305, file: !306, line: 1106, baseType: !7, size: 32, offset: 11584)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !305, file: !306, line: 1109, baseType: !4625, size: 128, offset: 11648)
!4625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4626, size: 128, elements: !1289)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !306, line: 51, flags: DIFlagFwdDecl)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !305, file: !306, line: 1110, baseType: !285, size: 192, offset: 11776)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !305, file: !306, line: 1111, baseType: !258, size: 128, offset: 11968)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !305, file: !306, line: 1173, baseType: !4631, size: 64, offset: 12096)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4633, line: 62, size: 256, align: 256, elements: !4634)
!4633 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!4634 = !{!4635, !4636, !4637, !4642}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4632, file: !4633, line: 75, baseType: !316, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4632, file: !4633, line: 90, baseType: !316, size: 32, offset: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4632, file: !4633, line: 124, baseType: !4638, size: 64, offset: 64)
!4638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4632, file: !4633, line: 109, size: 64, elements: !4639)
!4639 = !{!4640, !4641}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !4638, file: !4633, line: 110, baseType: !363, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4638, file: !4633, line: 112, baseType: !363, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4632, file: !4633, line: 144, baseType: !316, size: 32, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !305, file: !306, line: 1174, baseType: !315, size: 32, offset: 12160)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !305, file: !306, line: 1179, baseType: !313, size: 64, offset: 12224)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !305, file: !306, line: 1182, baseType: !4646, size: 128, offset: 12288)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4124, line: 76, size: 128, elements: !4647)
!4647 = !{!4648, !4653, !4654}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4646, file: !4124, line: 85, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4650, line: 7, size: 64, elements: !4651)
!4650 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!4651 = !{!4652}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4649, file: !4650, line: 12, baseType: !490, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4646, file: !4124, line: 88, baseType: !754, size: 8, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4646, file: !4124, line: 95, baseType: !754, size: 8, offset: 72)
!4655 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 1184, baseType: !4656, size: 128, offset: 12416)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 1184, size: 128, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !4656, file: !306, line: 1185, baseType: !322, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4656, file: !306, line: 1186, baseType: !936, size: 128, align: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !305, file: !306, line: 1190, baseType: !1200, size: 64, offset: 12544)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !305, file: !306, line: 1192, baseType: !4662, size: 128, offset: 12608)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4124, line: 64, size: 128, elements: !4663)
!4663 = !{!4664, !4665, !4666}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4662, file: !4124, line: 65, baseType: !590, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4662, file: !4124, line: 67, baseType: !316, size: 32, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4662, file: !4124, line: 68, baseType: !316, size: 32, offset: 96)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !305, file: !306, line: 1206, baseType: !331, size: 32, offset: 12736)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !305, file: !306, line: 1207, baseType: !331, size: 32, offset: 12768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !305, file: !306, line: 1209, baseType: !313, size: 64, offset: 12800)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !305, file: !306, line: 1219, baseType: !362, size: 64, offset: 12864)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !305, file: !306, line: 1220, baseType: !362, size: 64, offset: 12928)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !305, file: !306, line: 1317, baseType: !331, size: 32, offset: 12992)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !305, file: !306, line: 1319, baseType: !304, size: 64, offset: 13056)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !305, file: !306, line: 1322, baseType: !4675, size: 64, offset: 13120)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4677, line: 56, size: 512, elements: !4678)
!4677 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!4678 = !{!4679, !4680, !4681, !4682, !4683, !4684, !4685, !4687}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4676, file: !4677, line: 57, baseType: !4675, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4676, file: !4677, line: 58, baseType: !253, size: 64, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4676, file: !4677, line: 59, baseType: !313, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4676, file: !4677, line: 60, baseType: !313, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4676, file: !4677, line: 61, baseType: !3857, size: 64, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4676, file: !4677, line: 62, baseType: !7, size: 32, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4676, file: !4677, line: 63, baseType: !4686, size: 64, offset: 384)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !259, line: 153, baseType: !362)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4676, file: !4677, line: 64, baseType: !1877, size: 64, offset: 448)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !305, file: !306, line: 1326, baseType: !322, size: 32, offset: 13184)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !305, file: !306, line: 1342, baseType: !253, size: 64, offset: 13248)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !305, file: !306, line: 1343, baseType: !363, size: 64, offset: 13312)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !305, file: !306, line: 1344, baseType: !362, size: 64, offset: 13376)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !305, file: !306, line: 1345, baseType: !363, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !305, file: !306, line: 1346, baseType: !363, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !305, file: !306, line: 1347, baseType: !363, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !305, file: !306, line: 1348, baseType: !936, size: 128, align: 64, offset: 13504)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !305, file: !306, line: 1358, baseType: !4697, size: 34816, offset: 13824)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4698, line: 485, size: 34816, elements: !4699)
!4698 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!4699 = !{!4700, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4729, !4730, !4731, !4732, !4733, !4734, !4737, !4738, !4739}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4697, file: !4698, line: 487, baseType: !4701, size: 192)
!4701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4702, size: 192, elements: !821)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4703, line: 16, size: 64, elements: !4704)
!4703 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!4704 = !{!4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4702, file: !4703, line: 17, baseType: !984, size: 16)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4702, file: !4703, line: 18, baseType: !984, size: 16, offset: 16)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4702, file: !4703, line: 19, baseType: !984, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4702, file: !4703, line: 19, baseType: !984, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4702, file: !4703, line: 19, baseType: !984, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4702, file: !4703, line: 19, baseType: !984, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4702, file: !4703, line: 19, baseType: !984, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4702, file: !4703, line: 20, baseType: !984, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4702, file: !4703, line: 20, baseType: !984, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4702, file: !4703, line: 20, baseType: !984, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4702, file: !4703, line: 20, baseType: !984, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4702, file: !4703, line: 20, baseType: !984, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4702, file: !4703, line: 20, baseType: !984, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4697, file: !4698, line: 491, baseType: !313, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4697, file: !4698, line: 495, baseType: !379, size: 16, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4697, file: !4698, line: 496, baseType: !379, size: 16, offset: 272)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4697, file: !4698, line: 497, baseType: !379, size: 16, offset: 288)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4697, file: !4698, line: 498, baseType: !379, size: 16, offset: 304)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4697, file: !4698, line: 502, baseType: !313, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4697, file: !4698, line: 503, baseType: !313, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4697, file: !4698, line: 514, baseType: !4726, size: 256, offset: 448)
!4726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4727, size: 256, elements: !1249)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4698, line: 483, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4697, file: !4698, line: 516, baseType: !313, size: 64, offset: 704)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4697, file: !4698, line: 518, baseType: !313, size: 64, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4697, file: !4698, line: 520, baseType: !313, size: 64, offset: 832)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4697, file: !4698, line: 521, baseType: !313, size: 64, offset: 896)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4697, file: !4698, line: 522, baseType: !313, size: 64, offset: 960)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4697, file: !4698, line: 528, baseType: !4735, size: 64, offset: 1024)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4698, line: 10, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4697, file: !4698, line: 535, baseType: !313, size: 64, offset: 1088)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !4697, file: !4698, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4697, file: !4698, line: 540, baseType: !4740, size: 33280, offset: 1536)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4741, line: 317, size: 33280, elements: !4742)
!4741 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!4742 = !{!4743, !4744, !4745}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4740, file: !4741, line: 330, baseType: !7, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4740, file: !4741, line: 337, baseType: !313, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4740, file: !4741, line: 348, baseType: !4746, size: 32768, offset: 512)
!4746 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4741, line: 304, size: 32768, elements: !4747)
!4747 = !{!4748, !4763, !4800, !4850, !4863}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4746, file: !4741, line: 305, baseType: !4749, size: 896)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4741, line: 12, size: 896, elements: !4750)
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4762}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4749, file: !4741, line: 13, baseType: !315, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4749, file: !4741, line: 14, baseType: !315, size: 32, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4749, file: !4741, line: 15, baseType: !315, size: 32, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4749, file: !4741, line: 16, baseType: !315, size: 32, offset: 96)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4749, file: !4741, line: 17, baseType: !315, size: 32, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4749, file: !4741, line: 18, baseType: !315, size: 32, offset: 160)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4749, file: !4741, line: 19, baseType: !315, size: 32, offset: 192)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4749, file: !4741, line: 22, baseType: !4759, size: 640, offset: 224)
!4759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 640, elements: !4760)
!4760 = !{!4761}
!4761 = !DISubrange(count: 20)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4749, file: !4741, line: 25, baseType: !315, size: 32, offset: 864)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4746, file: !4741, line: 306, baseType: !4764, size: 4096, align: 128)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4741, line: 34, size: 4096, align: 128, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4785, !4786, !4787, !4789, !4791, !4795}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4764, file: !4741, line: 35, baseType: !984, size: 16)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4764, file: !4741, line: 36, baseType: !984, size: 16, offset: 16)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4764, file: !4741, line: 37, baseType: !984, size: 16, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4764, file: !4741, line: 38, baseType: !984, size: 16, offset: 48)
!4770 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !4741, line: 39, baseType: !4771, size: 128, offset: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4764, file: !4741, line: 39, size: 128, elements: !4772)
!4772 = !{!4773, !4778}
!4773 = !DIDerivedType(tag: DW_TAG_member, scope: !4771, file: !4741, line: 40, baseType: !4774, size: 128)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4771, file: !4741, line: 40, size: 128, elements: !4775)
!4775 = !{!4776, !4777}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4774, file: !4741, line: 41, baseType: !362, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4774, file: !4741, line: 42, baseType: !362, size: 64, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, scope: !4771, file: !4741, line: 44, baseType: !4779, size: 128)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4771, file: !4741, line: 44, size: 128, elements: !4780)
!4780 = !{!4781, !4782, !4783, !4784}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4779, file: !4741, line: 45, baseType: !315, size: 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4779, file: !4741, line: 46, baseType: !315, size: 32, offset: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4779, file: !4741, line: 47, baseType: !315, size: 32, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4779, file: !4741, line: 48, baseType: !315, size: 32, offset: 96)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4764, file: !4741, line: 51, baseType: !315, size: 32, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4764, file: !4741, line: 52, baseType: !315, size: 32, offset: 224)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4764, file: !4741, line: 55, baseType: !4788, size: 1024, offset: 256)
!4788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 1024, elements: !674)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4764, file: !4741, line: 58, baseType: !4790, size: 2048, offset: 1280)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 2048, elements: !1786)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4764, file: !4741, line: 60, baseType: !4792, size: 384, offset: 3328)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !4793)
!4793 = !{!4794}
!4794 = !DISubrange(count: 12)
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !4741, line: 62, baseType: !4796, size: 384, offset: 3712)
!4796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4764, file: !4741, line: 62, size: 384, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4796, file: !4741, line: 63, baseType: !4792, size: 384)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4796, file: !4741, line: 64, baseType: !4792, size: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4746, file: !4741, line: 307, baseType: !4801, size: 1088)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4741, line: 79, size: 1088, elements: !4802)
!4802 = !{!4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4849}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4801, file: !4741, line: 80, baseType: !315, size: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4801, file: !4741, line: 81, baseType: !315, size: 32, offset: 32)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4801, file: !4741, line: 82, baseType: !315, size: 32, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4801, file: !4741, line: 83, baseType: !315, size: 32, offset: 96)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4801, file: !4741, line: 84, baseType: !315, size: 32, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4801, file: !4741, line: 85, baseType: !315, size: 32, offset: 160)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4801, file: !4741, line: 86, baseType: !315, size: 32, offset: 192)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4801, file: !4741, line: 88, baseType: !4759, size: 640, offset: 224)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4801, file: !4741, line: 89, baseType: !474, size: 8, offset: 864)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4801, file: !4741, line: 90, baseType: !474, size: 8, offset: 872)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4801, file: !4741, line: 91, baseType: !474, size: 8, offset: 880)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4801, file: !4741, line: 92, baseType: !474, size: 8, offset: 888)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4801, file: !4741, line: 93, baseType: !474, size: 8, offset: 896)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4801, file: !4741, line: 94, baseType: !474, size: 8, offset: 904)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4801, file: !4741, line: 95, baseType: !4818, size: 64, offset: 960)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4820, line: 11, size: 128, elements: !4821)
!4820 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !{!4822, !4823}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4819, file: !4820, line: 12, baseType: !319, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4819, file: !4820, line: 13, baseType: !4824, size: 64, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4826, line: 56, size: 1344, elements: !4827)
!4826 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!4827 = !{!4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4825, file: !4826, line: 61, baseType: !313, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4825, file: !4826, line: 62, baseType: !313, size: 64, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4825, file: !4826, line: 63, baseType: !313, size: 64, offset: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4825, file: !4826, line: 64, baseType: !313, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4825, file: !4826, line: 65, baseType: !313, size: 64, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4825, file: !4826, line: 66, baseType: !313, size: 64, offset: 320)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4825, file: !4826, line: 68, baseType: !313, size: 64, offset: 384)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4825, file: !4826, line: 69, baseType: !313, size: 64, offset: 448)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4825, file: !4826, line: 70, baseType: !313, size: 64, offset: 512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4825, file: !4826, line: 71, baseType: !313, size: 64, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4825, file: !4826, line: 72, baseType: !313, size: 64, offset: 640)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4825, file: !4826, line: 73, baseType: !313, size: 64, offset: 704)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4825, file: !4826, line: 74, baseType: !313, size: 64, offset: 768)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4825, file: !4826, line: 75, baseType: !313, size: 64, offset: 832)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4825, file: !4826, line: 76, baseType: !313, size: 64, offset: 896)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4825, file: !4826, line: 81, baseType: !313, size: 64, offset: 960)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4825, file: !4826, line: 83, baseType: !313, size: 64, offset: 1024)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4825, file: !4826, line: 84, baseType: !313, size: 64, offset: 1088)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4825, file: !4826, line: 85, baseType: !313, size: 64, offset: 1152)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4825, file: !4826, line: 86, baseType: !313, size: 64, offset: 1216)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4825, file: !4826, line: 87, baseType: !313, size: 64, offset: 1280)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4801, file: !4741, line: 96, baseType: !315, size: 32, offset: 1024)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4746, file: !4741, line: 308, baseType: !4851, size: 4608, align: 512)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4741, line: 289, size: 4608, align: 512, elements: !4852)
!4852 = !{!4853, !4854, !4861}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4851, file: !4741, line: 290, baseType: !4764, size: 4096, align: 128)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4851, file: !4741, line: 291, baseType: !4855, size: 512, offset: 4096)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4741, line: 268, size: 512, elements: !4856)
!4856 = !{!4857, !4858, !4859}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4855, file: !4741, line: 269, baseType: !362, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4855, file: !4741, line: 270, baseType: !362, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4855, file: !4741, line: 271, baseType: !4860, size: 384, offset: 128)
!4860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 384, elements: !1358)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4851, file: !4741, line: 292, baseType: !4862, offset: 4608)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, elements: !1456)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4746, file: !4741, line: 309, baseType: !4864, size: 32768)
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 32768, elements: !4865)
!4865 = !{!4866}
!4866 = !DISubrange(count: 4096)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "eh_action", scope: !255, file: !169, line: 545, baseType: !4297, size: 64, offset: 832)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "host_wait", scope: !255, file: !169, line: 547, baseType: !1087, size: 128, offset: 896)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "hostt", scope: !255, file: !169, line: 548, baseType: !4870, size: 64, offset: 1024)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_template", file: !169, line: 32, size: 2880, elements: !4872)
!4872 = !{!4873, !4874, !4875, !4879, !5032, !5116, !5117, !5118, !5122, !5126, !5127, !5128, !5129, !5130, !5134, !5135, !5139, !5143, !5147, !5151, !5155, !5159, !5163, !5167, !5171, !5172, !5176, !5180, !5184, !5188, !5189, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5226, !5227, !5228, !5229, !5230, !5233}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4871, file: !169, line: 33, baseType: !800, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4871, file: !169, line: 34, baseType: !709, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4871, file: !169, line: 43, baseType: !4876, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!709, !254}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4871, file: !169, line: 50, baseType: !4880, size: 64, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!331, !4883, !7, !253}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device", file: !161, line: 101, size: 15232, align: 64, elements: !4885)
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4915, !4916, !4917, !4918, !4926, !4927, !4928, !4929, !4930, !4954, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5020, !5021, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4884, file: !161, line: 102, baseType: !254, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "request_queue", scope: !4884, file: !161, line: 103, baseType: !2740, size: 64, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !4884, file: !161, line: 106, baseType: !258, size: 128, offset: 128)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "same_target_siblings", scope: !4884, file: !161, line: 107, baseType: !258, size: 128, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "device_busy", scope: !4884, file: !161, line: 109, baseType: !327, size: 32, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "device_blocked", scope: !4884, file: !161, line: 110, baseType: !327, size: 32, offset: 416)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "restarts", scope: !4884, file: !161, line: 112, baseType: !327, size: 32, offset: 448)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4884, file: !161, line: 113, baseType: !267, offset: 480)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "starved_entry", scope: !4884, file: !161, line: 114, baseType: !258, size: 128, offset: 512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4884, file: !161, line: 115, baseType: !379, size: 16, offset: 640)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue_depth", scope: !4884, file: !161, line: 116, baseType: !379, size: 16, offset: 656)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_depth", scope: !4884, file: !161, line: 117, baseType: !379, size: 16, offset: 672)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_count", scope: !4884, file: !161, line: 118, baseType: !379, size: 16, offset: 688)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_time", scope: !4884, file: !161, line: 119, baseType: !313, size: 64, offset: 704)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ramp_up_period", scope: !4884, file: !161, line: 120, baseType: !313, size: 64, offset: 768)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_ramp_up", scope: !4884, file: !161, line: 123, baseType: !313, size: 64, offset: 832)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4884, file: !161, line: 125, baseType: !7, size: 32, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4884, file: !161, line: 125, baseType: !7, size: 32, offset: 928)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !4884, file: !161, line: 126, baseType: !362, size: 64, offset: 960)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4884, file: !161, line: 127, baseType: !7, size: 32, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !4884, file: !161, line: 129, baseType: !7, size: 32, offset: 1056)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !4884, file: !161, line: 131, baseType: !253, size: 64, offset: 1088)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4884, file: !161, line: 132, baseType: !476, size: 8, offset: 1152)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !4884, file: !161, line: 133, baseType: !711, size: 8, offset: 1160)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "inq_periph_qual", scope: !4884, file: !161, line: 134, baseType: !711, size: 8, offset: 1168)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_mutex", scope: !4884, file: !161, line: 135, baseType: !285, size: 192, offset: 1216)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_len", scope: !4884, file: !161, line: 136, baseType: !476, size: 8, offset: 1408)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry", scope: !4884, file: !161, line: 137, baseType: !4914, size: 64, offset: 1472)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4884, file: !161, line: 138, baseType: !709, size: 64, offset: 1536)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4884, file: !161, line: 139, baseType: !709, size: 64, offset: 1600)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4884, file: !161, line: 140, baseType: !709, size: 64, offset: 1664)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg0", scope: !4884, file: !161, line: 143, baseType: !4919, size: 64, offset: 1728)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_vpd", file: !161, line: 95, size: 192, elements: !4921)
!4921 = !{!4922, !4923, !4924}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4920, file: !161, line: 96, baseType: !936, size: 128, align: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4920, file: !161, line: 97, baseType: !331, size: 32, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4920, file: !161, line: 98, baseType: !4925, offset: 160)
!4925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, elements: !2555)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg83", scope: !4884, file: !161, line: 144, baseType: !4919, size: 64, offset: 1792)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg80", scope: !4884, file: !161, line: 145, baseType: !4919, size: 64, offset: 1856)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg89", scope: !4884, file: !161, line: 146, baseType: !4919, size: 64, offset: 1920)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "current_tag", scope: !4884, file: !161, line: 147, baseType: !476, size: 8, offset: 1984)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_target", scope: !4884, file: !161, line: 148, baseType: !4931, size: 64, offset: 2048)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_target", file: !161, line: 289, size: 6272, align: 64, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "starget_sdev_user", scope: !4932, file: !161, line: 290, baseType: !4883, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !4932, file: !161, line: 291, baseType: !258, size: 128, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4932, file: !161, line: 292, baseType: !258, size: 128, offset: 192)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4932, file: !161, line: 293, baseType: !1742, size: 5568, offset: 320)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "reap_ref", scope: !4932, file: !161, line: 294, baseType: !2034, size: 32, offset: 5888)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4932, file: !161, line: 295, baseType: !7, size: 32, offset: 5920)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4932, file: !161, line: 296, baseType: !7, size: 32, offset: 5952)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4932, file: !161, line: 298, baseType: !7, size: 1, offset: 5984, flags: DIFlagBitField, extraData: i64 5984)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "single_lun", scope: !4932, file: !161, line: 299, baseType: !7, size: 1, offset: 5985, flags: DIFlagBitField, extraData: i64 5984)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pdt_1f_for_no_lun", scope: !4932, file: !161, line: 302, baseType: !7, size: 1, offset: 5986, flags: DIFlagBitField, extraData: i64 5984)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_luns", scope: !4932, file: !161, line: 304, baseType: !7, size: 1, offset: 5987, flags: DIFlagBitField, extraData: i64 5984)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_lun_change", scope: !4932, file: !161, line: 306, baseType: !7, size: 1, offset: 5988, flags: DIFlagBitField, extraData: i64 5984)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "target_busy", scope: !4932, file: !161, line: 310, baseType: !327, size: 32, offset: 6016)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "target_blocked", scope: !4932, file: !161, line: 311, baseType: !327, size: 32, offset: 6048)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !4932, file: !161, line: 317, baseType: !7, size: 32, offset: 6080)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "max_target_blocked", scope: !4932, file: !161, line: 318, baseType: !7, size: 32, offset: 6112)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !4932, file: !161, line: 321, baseType: !711, size: 8, offset: 6144)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4932, file: !161, line: 322, baseType: !160, size: 32, offset: 6176)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !4932, file: !161, line: 323, baseType: !253, size: 64, offset: 6208)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "starget_data", scope: !4932, file: !161, line: 324, baseType: !4200, offset: 6272)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_bflags", scope: !4884, file: !161, line: 150, baseType: !4955, size: 64, offset: 2112)
!4955 = !DIDerivedType(tag: DW_TAG_typedef, name: "blist_flags_t", file: !161, line: 18, baseType: !363)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timeout", scope: !4884, file: !161, line: 154, baseType: !7, size: 32, offset: 2176)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4884, file: !161, line: 155, baseType: !7, size: 1, offset: 2208, flags: DIFlagBitField, extraData: i64 2208)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4884, file: !161, line: 156, baseType: !7, size: 1, offset: 2209, flags: DIFlagBitField, extraData: i64 2208)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !4884, file: !161, line: 157, baseType: !7, size: 1, offset: 2210, flags: DIFlagBitField, extraData: i64 2208)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "lockable", scope: !4884, file: !161, line: 158, baseType: !7, size: 1, offset: 2211, flags: DIFlagBitField, extraData: i64 2208)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4884, file: !161, line: 159, baseType: !7, size: 1, offset: 2212, flags: DIFlagBitField, extraData: i64 2208)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "borken", scope: !4884, file: !161, line: 160, baseType: !7, size: 1, offset: 2213, flags: DIFlagBitField, extraData: i64 2208)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4884, file: !161, line: 162, baseType: !7, size: 1, offset: 2214, flags: DIFlagBitField, extraData: i64 2208)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !4884, file: !161, line: 163, baseType: !7, size: 1, offset: 2215, flags: DIFlagBitField, extraData: i64 2208)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "sdtr", scope: !4884, file: !161, line: 164, baseType: !7, size: 1, offset: 2216, flags: DIFlagBitField, extraData: i64 2208)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "wdtr", scope: !4884, file: !161, line: 165, baseType: !7, size: 1, offset: 2217, flags: DIFlagBitField, extraData: i64 2208)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ppr", scope: !4884, file: !161, line: 166, baseType: !7, size: 1, offset: 2218, flags: DIFlagBitField, extraData: i64 2208)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_supported", scope: !4884, file: !161, line: 167, baseType: !7, size: 1, offset: 2219, flags: DIFlagBitField, extraData: i64 2208)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "simple_tags", scope: !4884, file: !161, line: 168, baseType: !7, size: 1, offset: 2220, flags: DIFlagBitField, extraData: i64 2208)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "was_reset", scope: !4884, file: !161, line: 169, baseType: !7, size: 1, offset: 2221, flags: DIFlagBitField, extraData: i64 2208)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_cc_ua", scope: !4884, file: !161, line: 171, baseType: !7, size: 1, offset: 2222, flags: DIFlagBitField, extraData: i64 2208)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_rw", scope: !4884, file: !161, line: 173, baseType: !7, size: 1, offset: 2223, flags: DIFlagBitField, extraData: i64 2208)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_ms", scope: !4884, file: !161, line: 174, baseType: !7, size: 1, offset: 2224, flags: DIFlagBitField, extraData: i64 2208)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "set_dbd_for_ms", scope: !4884, file: !161, line: 175, baseType: !7, size: 1, offset: 2225, flags: DIFlagBitField, extraData: i64 2208)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_opcodes", scope: !4884, file: !161, line: 176, baseType: !7, size: 1, offset: 2226, flags: DIFlagBitField, extraData: i64 2208)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !4884, file: !161, line: 177, baseType: !7, size: 1, offset: 2227, flags: DIFlagBitField, extraData: i64 2208)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_rw", scope: !4884, file: !161, line: 178, baseType: !7, size: 1, offset: 2228, flags: DIFlagBitField, extraData: i64 2208)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_8", scope: !4884, file: !161, line: 179, baseType: !7, size: 1, offset: 2229, flags: DIFlagBitField, extraData: i64 2208)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_3f", scope: !4884, file: !161, line: 180, baseType: !7, size: 1, offset: 2230, flags: DIFlagBitField, extraData: i64 2208)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vpd_pages", scope: !4884, file: !161, line: 181, baseType: !7, size: 1, offset: 2231, flags: DIFlagBitField, extraData: i64 2208)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "try_vpd_pages", scope: !4884, file: !161, line: 182, baseType: !7, size: 1, offset: 2232, flags: DIFlagBitField, extraData: i64 2208)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "use_192_bytes_for_3f", scope: !4884, file: !161, line: 183, baseType: !7, size: 1, offset: 2233, flags: DIFlagBitField, extraData: i64 2208)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "no_start_on_add", scope: !4884, file: !161, line: 184, baseType: !7, size: 1, offset: 2234, flags: DIFlagBitField, extraData: i64 2208)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "allow_restart", scope: !4884, file: !161, line: 185, baseType: !7, size: 1, offset: 2235, flags: DIFlagBitField, extraData: i64 2208)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "manage_start_stop", scope: !4884, file: !161, line: 186, baseType: !7, size: 1, offset: 2236, flags: DIFlagBitField, extraData: i64 2208)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "start_stop_pwr_cond", scope: !4884, file: !161, line: 187, baseType: !7, size: 1, offset: 2237, flags: DIFlagBitField, extraData: i64 2208)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "no_uld_attach", scope: !4884, file: !161, line: 188, baseType: !7, size: 1, offset: 2238, flags: DIFlagBitField, extraData: i64 2208)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "select_no_atn", scope: !4884, file: !161, line: 189, baseType: !7, size: 1, offset: 2239, flags: DIFlagBitField, extraData: i64 2208)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "fix_capacity", scope: !4884, file: !161, line: 190, baseType: !7, size: 1, offset: 2240, flags: DIFlagBitField, extraData: i64 2208)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "guess_capacity", scope: !4884, file: !161, line: 191, baseType: !7, size: 1, offset: 2241, flags: DIFlagBitField, extraData: i64 2208)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "retry_hwerror", scope: !4884, file: !161, line: 192, baseType: !7, size: 1, offset: 2242, flags: DIFlagBitField, extraData: i64 2208)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_bug", scope: !4884, file: !161, line: 193, baseType: !7, size: 1, offset: 2243, flags: DIFlagBitField, extraData: i64 2208)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_disc_info", scope: !4884, file: !161, line: 195, baseType: !7, size: 1, offset: 2244, flags: DIFlagBitField, extraData: i64 2208)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_capacity_16", scope: !4884, file: !161, line: 196, baseType: !7, size: 1, offset: 2245, flags: DIFlagBitField, extraData: i64 2208)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "try_rc_10_first", scope: !4884, file: !161, line: 197, baseType: !7, size: 1, offset: 2246, flags: DIFlagBitField, extraData: i64 2208)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "security_supported", scope: !4884, file: !161, line: 198, baseType: !7, size: 1, offset: 2247, flags: DIFlagBitField, extraData: i64 2208)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !4884, file: !161, line: 199, baseType: !7, size: 1, offset: 2248, flags: DIFlagBitField, extraData: i64 2208)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "wce_default_on", scope: !4884, file: !161, line: 200, baseType: !7, size: 1, offset: 2249, flags: DIFlagBitField, extraData: i64 2208)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "no_dif", scope: !4884, file: !161, line: 201, baseType: !7, size: 1, offset: 2250, flags: DIFlagBitField, extraData: i64 2208)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "broken_fua", scope: !4884, file: !161, line: 202, baseType: !7, size: 1, offset: 2251, flags: DIFlagBitField, extraData: i64 2208)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "lun_in_cdb", scope: !4884, file: !161, line: 203, baseType: !7, size: 1, offset: 2252, flags: DIFlagBitField, extraData: i64 2208)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_limit_for_ws", scope: !4884, file: !161, line: 204, baseType: !7, size: 1, offset: 2253, flags: DIFlagBitField, extraData: i64 2208)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend", scope: !4884, file: !161, line: 205, baseType: !7, size: 1, offset: 2254, flags: DIFlagBitField, extraData: i64 2208)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "offline_already", scope: !4884, file: !161, line: 208, baseType: !754, size: 8, offset: 2256)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "disk_events_disable_depth", scope: !4884, file: !161, line: 210, baseType: !327, size: 32, offset: 2272)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !4884, file: !161, line: 212, baseType: !493, size: 64, offset: 2304)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !4884, file: !161, line: 213, baseType: !493, size: 64, offset: 2368)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4884, file: !161, line: 214, baseType: !258, size: 128, offset: 2432)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "event_work", scope: !4884, file: !161, line: 215, baseType: !2279, size: 256, offset: 2560)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "max_device_blocked", scope: !4884, file: !161, line: 217, baseType: !7, size: 32, offset: 2816)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "iorequest_cnt", scope: !4884, file: !161, line: 220, baseType: !327, size: 32, offset: 2848)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "iodone_cnt", scope: !4884, file: !161, line: 221, baseType: !327, size: 32, offset: 2880)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ioerr_cnt", scope: !4884, file: !161, line: 222, baseType: !327, size: 32, offset: 2912)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_gendev", scope: !4884, file: !161, line: 224, baseType: !1742, size: 5568, offset: 2944)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_dev", scope: !4884, file: !161, line: 225, baseType: !1742, size: 5568, offset: 8512)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ew", scope: !4884, file: !161, line: 227, baseType: !5017, size: 256, offset: 14080)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "execute_work", file: !2280, line: 168, size: 256, elements: !5018)
!5018 = !{!5019}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5017, file: !2280, line: 169, baseType: !2279, size: 256)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !4884, file: !161, line: 228, baseType: !2279, size: 256, offset: 14336)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4884, file: !161, line: 230, baseType: !5022, size: 64, offset: 14592)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device_handler", file: !161, line: 230, flags: DIFlagFwdDecl)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4884, file: !161, line: 231, baseType: !253, size: 64, offset: 14656)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_len", scope: !4884, file: !161, line: 233, baseType: !889, size: 64, offset: 14720)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_buf", scope: !4884, file: !161, line: 234, baseType: !253, size: 64, offset: 14784)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "access_state", scope: !4884, file: !161, line: 236, baseType: !476, size: 8, offset: 14848)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "state_mutex", scope: !4884, file: !161, line: 237, baseType: !285, size: 192, offset: 14912)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_state", scope: !4884, file: !161, line: 238, baseType: !178, size: 32, offset: 15104)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "quiesced_by", scope: !4884, file: !161, line: 239, baseType: !304, size: 64, offset: 15168)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_data", scope: !4884, file: !161, line: 240, baseType: !4200, offset: 15232)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_priv", scope: !4871, file: !169, line: 65, baseType: !5033, size: 64, offset: 256)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!331, !254, !5036}
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cmnd", file: !5038, line: 68, size: 3136, elements: !5039)
!5038 = !DIFile(filename: "./include/scsi/scsi_cmnd.h", directory: "/home/lizy2001/genbc/linux")
!5039 = !{!5040, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5086, !5088, !5089, !5090, !5091, !5092, !5096, !5110, !5111, !5112, !5113, !5114, !5115}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !5037, file: !5038, line: 69, baseType: !5041, size: 448)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_request", file: !5042, line: 9, size: 448, elements: !5043)
!5042 = !DIFile(filename: "./include/scsi/scsi_request.h", directory: "/home/lizy2001/genbc/linux")
!5043 = !{!5044, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "__cmd", scope: !5041, file: !5042, line: 10, baseType: !5045, size: 128)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 128, elements: !3314)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5041, file: !5042, line: 11, baseType: !4914, size: 64, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !5041, file: !5042, line: 12, baseType: !379, size: 16, offset: 192)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5041, file: !5042, line: 13, baseType: !331, size: 32, offset: 224)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "sense_len", scope: !5041, file: !5042, line: 14, baseType: !7, size: 32, offset: 256)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "resid_len", scope: !5041, file: !5042, line: 15, baseType: !7, size: 32, offset: 288)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5041, file: !5042, line: 16, baseType: !331, size: 32, offset: 320)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !5041, file: !5042, line: 17, baseType: !253, size: 64, offset: 384)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5037, file: !5038, line: 70, baseType: !4883, size: 64, offset: 448)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "eh_entry", scope: !5037, file: !5038, line: 71, baseType: !258, size: 128, offset: 512)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "abort_work", scope: !5037, file: !5038, line: 72, baseType: !2763, size: 704, offset: 640)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5037, file: !5038, line: 74, baseType: !936, size: 128, align: 64, offset: 1344)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "eh_eflags", scope: !5037, file: !5038, line: 76, baseType: !331, size: 32, offset: 1472)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "jiffies_at_alloc", scope: !5037, file: !5038, line: 83, baseType: !313, size: 64, offset: 1536)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5037, file: !5038, line: 85, baseType: !331, size: 32, offset: 1600)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !5037, file: !5038, line: 86, baseType: !331, size: 32, offset: 1632)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "prot_op", scope: !5037, file: !5038, line: 88, baseType: !476, size: 8, offset: 1664)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "prot_type", scope: !5037, file: !5038, line: 89, baseType: !476, size: 8, offset: 1672)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "prot_flags", scope: !5037, file: !5038, line: 90, baseType: !476, size: 8, offset: 1680)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !5037, file: !5038, line: 92, baseType: !379, size: 16, offset: 1696)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "sc_data_direction", scope: !5037, file: !5038, line: 93, baseType: !189, size: 32, offset: 1728)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !5037, file: !5038, line: 96, baseType: !4914, size: 64, offset: 1792)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "sdb", scope: !5037, file: !5038, line: 100, baseType: !5068, size: 192, offset: 1856)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_data_buffer", file: !5038, line: 35, size: 192, elements: !5069)
!5069 = !{!5070, !5085}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5068, file: !5038, line: 36, baseType: !5071, size: 128)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5072, line: 42, size: 128, elements: !5073)
!5072 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!5073 = !{!5074, !5083, !5084}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5071, file: !5072, line: 43, baseType: !5075, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5072, line: 11, size: 256, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5082}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5076, file: !5072, line: 12, baseType: !313, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5076, file: !5072, line: 13, baseType: !7, size: 32, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5076, file: !5072, line: 14, baseType: !7, size: 32, offset: 96)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5076, file: !5072, line: 15, baseType: !3926, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5076, file: !5072, line: 17, baseType: !7, size: 32, offset: 192)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5071, file: !5072, line: 44, baseType: !7, size: 32, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5071, file: !5072, line: 45, baseType: !7, size: 32, offset: 96)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5068, file: !5038, line: 37, baseType: !7, size: 32, offset: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "prot_sdb", scope: !5037, file: !5038, line: 101, baseType: !5087, size: 64, offset: 2048)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "underflow", scope: !5037, file: !5038, line: 103, baseType: !7, size: 32, offset: 2112)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "transfersize", scope: !5037, file: !5038, line: 106, baseType: !7, size: 32, offset: 2144)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5037, file: !5038, line: 112, baseType: !2744, size: 64, offset: 2176)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "sense_buffer", scope: !5037, file: !5038, line: 115, baseType: !4914, size: 64, offset: 2240)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_done", scope: !5037, file: !5038, line: 123, baseType: !5093, size: 64, offset: 2304)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{null, !5036}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "SCp", scope: !5037, file: !5038, line: 129, baseType: !5097, size: 512, offset: 2368)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_pointer", file: !5038, line: 41, size: 512, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5106, !5107, !5108, !5109}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5097, file: !5038, line: 42, baseType: !735, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "this_residual", scope: !5097, file: !5038, line: 43, baseType: !331, size: 32, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5097, file: !5038, line: 44, baseType: !5075, size: 64, offset: 128)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "buffers_residual", scope: !5097, file: !5038, line: 45, baseType: !331, size: 32, offset: 192)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_handle", scope: !5097, file: !5038, line: 47, baseType: !3926, size: 64, offset: 256)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !5097, file: !5038, line: 49, baseType: !5105, size: 32, offset: 320)
!5105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !331)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "Message", scope: !5097, file: !5038, line: 50, baseType: !5105, size: 32, offset: 352)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "have_data_in", scope: !5097, file: !5038, line: 51, baseType: !5105, size: 32, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "sent_command", scope: !5097, file: !5038, line: 52, baseType: !5105, size: 32, offset: 416)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5097, file: !5038, line: 53, baseType: !5105, size: 32, offset: 448)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "host_scribble", scope: !5037, file: !5038, line: 131, baseType: !4914, size: 64, offset: 2880)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5037, file: !5038, line: 139, baseType: !331, size: 32, offset: 2944)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5037, file: !5038, line: 140, baseType: !331, size: 32, offset: 2976)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5037, file: !5038, line: 141, baseType: !313, size: 64, offset: 3008)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5037, file: !5038, line: 143, baseType: !476, size: 8, offset: 3072)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !5037, file: !5038, line: 144, baseType: !7, size: 32, offset: 3104)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "exit_cmd_priv", scope: !4871, file: !169, line: 66, baseType: !5033, size: 64, offset: 320)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand", scope: !4871, file: !169, line: 102, baseType: !5033, size: 64, offset: 384)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !4871, file: !169, line: 112, baseType: !5119, size: 64, offset: 448)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !254, !984}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_handler", scope: !4871, file: !169, line: 132, baseType: !5123, size: 64, offset: 512)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!331, !5036}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "eh_device_reset_handler", scope: !4871, file: !169, line: 133, baseType: !5123, size: 64, offset: 576)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "eh_target_reset_handler", scope: !4871, file: !169, line: 134, baseType: !5123, size: 64, offset: 640)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "eh_bus_reset_handler", scope: !4871, file: !169, line: 135, baseType: !5123, size: 64, offset: 704)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "eh_host_reset_handler", scope: !4871, file: !169, line: 136, baseType: !5123, size: 64, offset: 768)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "slave_alloc", scope: !4871, file: !169, line: 164, baseType: !5131, size: 64, offset: 832)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!331, !4883}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "slave_configure", scope: !4871, file: !169, line: 195, baseType: !5131, size: 64, offset: 896)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "slave_destroy", scope: !4871, file: !169, line: 206, baseType: !5136, size: 64, offset: 960)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !4883}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "target_alloc", scope: !4871, file: !169, line: 220, baseType: !5140, size: 64, offset: 1024)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!331, !4931}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "target_destroy", scope: !4871, file: !169, line: 230, baseType: !5144, size: 64, offset: 1088)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{null, !4931}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "scan_finished", scope: !4871, file: !169, line: 241, baseType: !5148, size: 64, offset: 1152)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!331, !254, !313}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "scan_start", scope: !4871, file: !169, line: 250, baseType: !5152, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{null, !254}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "change_queue_depth", scope: !4871, file: !169, line: 263, baseType: !5156, size: 64, offset: 1280)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!331, !4883, !331}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !4871, file: !169, line: 271, baseType: !5160, size: 64, offset: 1344)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!331, !254}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_need_drain", scope: !4871, file: !169, line: 278, baseType: !5164, size: 64, offset: 1408)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!754, !2744}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "bios_param", scope: !4871, file: !169, line: 288, baseType: !5168, size: 64, offset: 1472)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!331, !4883, !1692, !1714, !877}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !4871, file: !169, line: 297, baseType: !5136, size: 64, offset: 1536)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "show_info", scope: !4871, file: !169, line: 306, baseType: !5173, size: 64, offset: 1600)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!331, !883, !254}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4871, file: !169, line: 307, baseType: !5177, size: 64, offset: 1664)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!331, !254, !735, !331}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timed_out", scope: !4871, file: !169, line: 316, baseType: !5181, size: 64, offset: 1728)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!76, !5036}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "host_reset", scope: !4871, file: !169, line: 326, baseType: !5185, size: 64, offset: 1792)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!331, !254, !331}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "proc_name", scope: !4871, file: !169, line: 334, baseType: !709, size: 64, offset: 1856)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir", scope: !4871, file: !169, line: 340, baseType: !5190, size: 64, offset: 1920)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5192, line: 123, flags: DIFlagFwdDecl)
!5192 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !4871, file: !169, line: 347, baseType: !331, size: 32, offset: 1984)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !4871, file: !169, line: 356, baseType: !331, size: 32, offset: 2016)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !4871, file: !169, line: 362, baseType: !379, size: 16, offset: 2048)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !4871, file: !169, line: 363, baseType: !379, size: 16, offset: 2064)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !4871, file: !169, line: 368, baseType: !7, size: 32, offset: 2080)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4871, file: !169, line: 373, baseType: !7, size: 32, offset: 2112)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !4871, file: !169, line: 379, baseType: !313, size: 64, offset: 2176)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !4871, file: !169, line: 381, baseType: !313, size: 64, offset: 2240)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !4871, file: !169, line: 400, baseType: !1340, size: 16, offset: 2304)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4871, file: !169, line: 406, baseType: !476, size: 8, offset: 2320)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "tag_alloc_policy", scope: !4871, file: !169, line: 409, baseType: !331, size: 32, offset: 2336)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "track_queue_depth", scope: !4871, file: !169, line: 414, baseType: !7, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "supported_mode", scope: !4871, file: !169, line: 419, baseType: !7, size: 2, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "unchecked_isa_dma", scope: !4871, file: !169, line: 424, baseType: !7, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "emulated", scope: !4871, file: !169, line: 429, baseType: !7, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "skip_settle_delay", scope: !4871, file: !169, line: 434, baseType: !7, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !4871, file: !169, line: 437, baseType: !7, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !4871, file: !169, line: 440, baseType: !7, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !4871, file: !169, line: 445, baseType: !7, size: 32, offset: 2400)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "shost_attrs", scope: !4871, file: !169, line: 459, baseType: !5213, size: 64, offset: 2432)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !135, line: 99, size: 256, elements: !5216)
!5216 = !{!5217, !5218, !5222}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5215, file: !135, line: 100, baseType: !1813, size: 128)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5215, file: !135, line: 101, baseType: !5219, size: 64, offset: 128)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!961, !2044, !5214, !735}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5215, file: !135, line: 103, baseType: !5223, size: 64, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!961, !2044, !5214, !709, !889}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_attrs", scope: !4871, file: !169, line: 464, baseType: !5213, size: 64, offset: 2496)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_groups", scope: !4871, file: !169, line: 470, baseType: !1824, size: 64, offset: 2560)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4871, file: !169, line: 479, baseType: !362, size: 64, offset: 2624)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !4871, file: !169, line: 484, baseType: !7, size: 32, offset: 2688)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pool", scope: !4871, file: !169, line: 485, baseType: !5231, size: 64, offset: 2752)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_cmd_pool", file: !169, line: 19, flags: DIFlagFwdDecl)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend_delay", scope: !4871, file: !169, line: 488, baseType: !331, size: 32, offset: 2816)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "transportt", scope: !255, file: !169, line: 549, baseType: !5235, size: 64, offset: 1088)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_transport_template", file: !169, line: 23, flags: DIFlagFwdDecl)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !255, file: !169, line: 552, baseType: !3131, size: 2304, offset: 1152)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "host_blocked", scope: !255, file: !169, line: 554, baseType: !327, size: 32, offset: 3456)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "host_failed", scope: !255, file: !169, line: 556, baseType: !7, size: 32, offset: 3488)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "host_eh_scheduled", scope: !255, file: !169, line: 558, baseType: !7, size: 32, offset: 3520)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "host_no", scope: !255, file: !169, line: 560, baseType: !7, size: 32, offset: 3552)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "eh_deadline", scope: !255, file: !169, line: 563, baseType: !331, size: 32, offset: 3584)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "last_reset", scope: !255, file: !169, line: 564, baseType: !313, size: 64, offset: 3648)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "max_channel", scope: !255, file: !169, line: 573, baseType: !7, size: 32, offset: 3712)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "max_id", scope: !255, file: !169, line: 574, baseType: !7, size: 32, offset: 3744)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !255, file: !169, line: 575, baseType: !362, size: 64, offset: 3776)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !255, file: !169, line: 584, baseType: !7, size: 32, offset: 3840)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmd_len", scope: !255, file: !169, line: 593, baseType: !379, size: 16, offset: 3872)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !255, file: !169, line: 595, baseType: !331, size: 32, offset: 3904)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !255, file: !169, line: 596, baseType: !331, size: 32, offset: 3936)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !255, file: !169, line: 597, baseType: !1340, size: 16, offset: 3968)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !255, file: !169, line: 598, baseType: !379, size: 16, offset: 3984)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !255, file: !169, line: 599, baseType: !379, size: 16, offset: 4000)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !255, file: !169, line: 600, baseType: !7, size: 32, offset: 4032)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !255, file: !169, line: 601, baseType: !7, size: 32, offset: 4064)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !255, file: !169, line: 602, baseType: !313, size: 64, offset: 4096)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !255, file: !169, line: 603, baseType: !313, size: 64, offset: 4160)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !255, file: !169, line: 612, baseType: !7, size: 32, offset: 4224)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "active_mode", scope: !255, file: !169, line: 613, baseType: !7, size: 2, offset: 4256, flags: DIFlagBitField, extraData: i64 4256)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "unchecked_isa_dma", scope: !255, file: !169, line: 614, baseType: !7, size: 1, offset: 4258, flags: DIFlagBitField, extraData: i64 4256)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "host_self_blocked", scope: !255, file: !169, line: 620, baseType: !7, size: 1, offset: 4259, flags: DIFlagBitField, extraData: i64 4256)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_ordering", scope: !255, file: !169, line: 627, baseType: !7, size: 1, offset: 4260, flags: DIFlagBitField, extraData: i64 4256)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_in_progress", scope: !255, file: !169, line: 630, baseType: !7, size: 1, offset: 4261, flags: DIFlagBitField, extraData: i64 4256)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "async_scan", scope: !255, file: !169, line: 633, baseType: !7, size: 1, offset: 4262, flags: DIFlagBitField, extraData: i64 4256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "eh_noresume", scope: !255, file: !169, line: 636, baseType: !7, size: 1, offset: 4263, flags: DIFlagBitField, extraData: i64 4256)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !255, file: !169, line: 639, baseType: !7, size: 1, offset: 4264, flags: DIFlagBitField, extraData: i64 4256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !255, file: !169, line: 642, baseType: !7, size: 1, offset: 4265, flags: DIFlagBitField, extraData: i64 4256)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "short_inquiry", scope: !255, file: !169, line: 645, baseType: !7, size: 1, offset: 4266, flags: DIFlagBitField, extraData: i64 4256)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "no_scsi2_lun_in_cdb", scope: !255, file: !169, line: 648, baseType: !7, size: 1, offset: 4267, flags: DIFlagBitField, extraData: i64 4256)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "work_q_name", scope: !255, file: !169, line: 653, baseType: !5271, size: 160, offset: 4272)
!5271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 160, elements: !4760)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "work_q", scope: !255, file: !169, line: 654, baseType: !2532, size: 64, offset: 4480)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_work_q", scope: !255, file: !169, line: 659, baseType: !2532, size: 64, offset: 4544)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !255, file: !169, line: 664, baseType: !7, size: 32, offset: 4608)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "prot_capabilities", scope: !255, file: !169, line: 667, baseType: !7, size: 32, offset: 4640)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prot_guard_type", scope: !255, file: !169, line: 668, baseType: !476, size: 8, offset: 4672)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !255, file: !169, line: 671, baseType: !313, size: 64, offset: 4736)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "io_port", scope: !255, file: !169, line: 672, baseType: !313, size: 64, offset: 4800)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "n_io_port", scope: !255, file: !169, line: 673, baseType: !476, size: 8, offset: 4864)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel", scope: !255, file: !169, line: 674, baseType: !476, size: 8, offset: 4872)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !255, file: !169, line: 675, baseType: !7, size: 32, offset: 4896)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "shost_state", scope: !255, file: !169, line: 678, baseType: !168, size: 32, offset: 4928)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "shost_gendev", scope: !255, file: !169, line: 681, baseType: !1742, size: 5568, offset: 4992)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "shost_dev", scope: !255, file: !169, line: 681, baseType: !1742, size: 5568, offset: 10560)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "shost_data", scope: !255, file: !169, line: 687, baseType: !253, size: 64, offset: 16128)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !255, file: !169, line: 693, baseType: !2044, size: 64, offset: 16192)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !255, file: !169, line: 700, baseType: !4200, align: 64, offset: 16256)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "us_data", file: !5290, line: 87, size: 3904, elements: !5291)
!5290 = !DIFile(filename: "drivers/usb/storage/usb.h", directory: "/home/lizy2001/genbc/linux")
!5291 = !{!5292, !5293, !5605, !5606, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5639, !5641, !5646, !5647, !5648, !5649, !5702, !5711, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5734, !5739, !5740}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mutex", scope: !5289, file: !5290, line: 93, baseType: !285, size: 192)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_dev", scope: !5289, file: !5290, line: 94, baseType: !5294, size: 64, offset: 192)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !149, line: 631, size: 10624, elements: !5296)
!5296 = !{!5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5315, !5316, !5318, !5319, !5347, !5387, !5388, !5405, !5466, !5548, !5549, !5551, !5552, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5587, !5588, !5589, !5594, !5601, !5602, !5603, !5604}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5295, file: !149, line: 632, baseType: !331, size: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5295, file: !149, line: 633, baseType: !4337, size: 128, offset: 32)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5295, file: !149, line: 634, baseType: !315, size: 32, offset: 160)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5295, file: !149, line: 635, baseType: !5, size: 32, offset: 192)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5295, file: !149, line: 636, baseType: !18, size: 32, offset: 224)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5295, file: !149, line: 637, baseType: !7, size: 32, offset: 256)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5295, file: !149, line: 638, baseType: !7, size: 32, offset: 288)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5295, file: !149, line: 640, baseType: !5305, size: 64, offset: 320)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !247, line: 554, size: 576, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5313, !5314}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !5306, file: !247, line: 555, baseType: !5294, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !5306, file: !247, line: 556, baseType: !331, size: 32, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !5306, file: !247, line: 557, baseType: !7, size: 32, offset: 96)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5306, file: !247, line: 558, baseType: !253, size: 64, offset: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5306, file: !247, line: 561, baseType: !267, offset: 192)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !5306, file: !247, line: 562, baseType: !258, size: 128, offset: 192)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !5306, file: !247, line: 563, baseType: !2279, size: 256, offset: 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5295, file: !149, line: 641, baseType: !331, size: 32, offset: 384)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5295, file: !149, line: 643, baseType: !5317, size: 64, offset: 416)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1289)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5295, file: !149, line: 645, baseType: !5294, size: 64, offset: 512)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5295, file: !149, line: 646, baseType: !5320, size: 64, offset: 576)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !149, line: 424, size: 960, elements: !5322)
!5322 = !{!5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5341, !5342, !5343, !5344, !5345, !5346}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5321, file: !149, line: 425, baseType: !2044, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5321, file: !149, line: 426, baseType: !2044, size: 64, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5321, file: !149, line: 427, baseType: !331, size: 32, offset: 128)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5321, file: !149, line: 428, baseType: !709, size: 64, offset: 192)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5321, file: !149, line: 429, baseType: !474, size: 8, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5321, file: !149, line: 433, baseType: !474, size: 8, offset: 264)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5321, file: !149, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5321, file: !149, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5321, file: !149, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5321, file: !149, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5321, file: !149, line: 442, baseType: !7, size: 32, offset: 288)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5321, file: !149, line: 444, baseType: !331, size: 32, offset: 320)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5321, file: !149, line: 446, baseType: !285, size: 192, offset: 384)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5321, file: !149, line: 448, baseType: !5337, size: 128, offset: 576)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !149, line: 417, size: 128, elements: !5338)
!5338 = !{!5339}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5337, file: !149, line: 418, baseType: !5340, size: 128)
!5340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 128, elements: !1289)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5321, file: !149, line: 449, baseType: !5294, size: 64, offset: 704)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5321, file: !149, line: 450, baseType: !5320, size: 64, offset: 768)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5321, file: !149, line: 452, baseType: !331, size: 32, offset: 832)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5321, file: !149, line: 459, baseType: !331, size: 32, offset: 864)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5321, file: !149, line: 460, baseType: !331, size: 32, offset: 896)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5321, file: !149, line: 462, baseType: !7, size: 32, offset: 928)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5295, file: !149, line: 647, baseType: !5348, size: 640, offset: 640)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !149, line: 67, size: 640, elements: !5349)
!5349 = !{!5350, !5362, !5370, !5378, !5379, !5380, !5383, !5384, !5385, !5386}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5348, file: !149, line: 68, baseType: !5351, size: 72)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !6, line: 407, size: 72, elements: !5352)
!5352 = !{!5353, !5354, !5355, !5356, !5357, !5359, !5360, !5361}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5351, file: !6, line: 408, baseType: !475, size: 8)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5351, file: !6, line: 409, baseType: !475, size: 8, offset: 8)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5351, file: !6, line: 411, baseType: !475, size: 8, offset: 16)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5351, file: !6, line: 412, baseType: !475, size: 8, offset: 24)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5351, file: !6, line: 413, baseType: !5358, size: 16, offset: 32)
!5358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1038, line: 29, baseType: !985)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5351, file: !6, line: 414, baseType: !475, size: 8, offset: 48)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5351, file: !6, line: 418, baseType: !475, size: 8, offset: 56)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5351, file: !6, line: 419, baseType: !475, size: 8, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5348, file: !149, line: 69, baseType: !5363, size: 48, offset: 72)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !6, line: 689, size: 48, elements: !5364)
!5364 = !{!5365, !5366, !5367, !5368, !5369}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5363, file: !6, line: 690, baseType: !475, size: 8)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5363, file: !6, line: 691, baseType: !475, size: 8, offset: 8)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5363, file: !6, line: 693, baseType: !475, size: 8, offset: 16)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5363, file: !6, line: 694, baseType: !475, size: 8, offset: 24)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5363, file: !6, line: 695, baseType: !5358, size: 16, offset: 32)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5348, file: !149, line: 70, baseType: !5371, size: 64, offset: 120)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !6, line: 677, size: 64, elements: !5372)
!5372 = !{!5373, !5374, !5375, !5376}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5371, file: !6, line: 678, baseType: !475, size: 8)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5371, file: !6, line: 679, baseType: !475, size: 8, offset: 8)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5371, file: !6, line: 680, baseType: !5358, size: 16, offset: 16)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5371, file: !6, line: 681, baseType: !5377, size: 32, offset: 32)
!5377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1038, line: 31, baseType: !316)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5348, file: !149, line: 71, baseType: !258, size: 128, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5348, file: !149, line: 72, baseType: !253, size: 64, offset: 320)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5348, file: !149, line: 73, baseType: !5381, size: 64, offset: 384)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !149, line: 48, flags: DIFlagFwdDecl)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5348, file: !149, line: 75, baseType: !4914, size: 64, offset: 448)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5348, file: !149, line: 76, baseType: !331, size: 32, offset: 512)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5348, file: !149, line: 77, baseType: !331, size: 32, offset: 544)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5348, file: !149, line: 78, baseType: !331, size: 32, offset: 576)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5295, file: !149, line: 649, baseType: !1742, size: 5568, offset: 1280)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5295, file: !149, line: 651, baseType: !5389, size: 144, offset: 6848)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !6, line: 289, size: 144, elements: !5390)
!5390 = !{!5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5389, file: !6, line: 290, baseType: !475, size: 8)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5389, file: !6, line: 291, baseType: !475, size: 8, offset: 8)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5389, file: !6, line: 293, baseType: !5358, size: 16, offset: 16)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5389, file: !6, line: 294, baseType: !475, size: 8, offset: 32)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5389, file: !6, line: 295, baseType: !475, size: 8, offset: 40)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5389, file: !6, line: 296, baseType: !475, size: 8, offset: 48)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5389, file: !6, line: 297, baseType: !475, size: 8, offset: 56)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5389, file: !6, line: 298, baseType: !5358, size: 16, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5389, file: !6, line: 299, baseType: !5358, size: 16, offset: 80)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5389, file: !6, line: 300, baseType: !5358, size: 16, offset: 96)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5389, file: !6, line: 301, baseType: !475, size: 8, offset: 112)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5389, file: !6, line: 302, baseType: !475, size: 8, offset: 120)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5389, file: !6, line: 303, baseType: !475, size: 8, offset: 128)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5389, file: !6, line: 304, baseType: !475, size: 8, offset: 136)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5295, file: !149, line: 652, baseType: !5406, size: 64, offset: 7040)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !149, line: 396, size: 384, elements: !5408)
!5408 = !{!5409, !5417, !5425, !5437, !5450, !5459}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5407, file: !149, line: 397, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !6, line: 844, size: 40, elements: !5412)
!5412 = !{!5413, !5414, !5415, !5416}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5411, file: !6, line: 845, baseType: !475, size: 8)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5411, file: !6, line: 846, baseType: !475, size: 8, offset: 8)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5411, file: !6, line: 848, baseType: !5358, size: 16, offset: 16)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5411, file: !6, line: 849, baseType: !475, size: 8, offset: 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5407, file: !149, line: 400, baseType: !5418, size: 64, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !6, line: 895, size: 56, elements: !5420)
!5420 = !{!5421, !5422, !5423, !5424}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5419, file: !6, line: 896, baseType: !475, size: 8)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5419, file: !6, line: 897, baseType: !475, size: 8, offset: 8)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5419, file: !6, line: 898, baseType: !475, size: 8, offset: 16)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5419, file: !6, line: 899, baseType: !5377, size: 32, offset: 24)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5407, file: !149, line: 401, baseType: !5426, size: 64, offset: 128)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !6, line: 917, size: 80, elements: !5428)
!5428 = !{!5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5427, file: !6, line: 918, baseType: !475, size: 8)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5427, file: !6, line: 919, baseType: !475, size: 8, offset: 8)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5427, file: !6, line: 920, baseType: !475, size: 8, offset: 16)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5427, file: !6, line: 921, baseType: !475, size: 8, offset: 24)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5427, file: !6, line: 923, baseType: !5358, size: 16, offset: 32)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5427, file: !6, line: 928, baseType: !475, size: 8, offset: 48)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5427, file: !6, line: 929, baseType: !475, size: 8, offset: 56)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5427, file: !6, line: 930, baseType: !5358, size: 16, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5407, file: !149, line: 402, baseType: !5438, size: 64, offset: 192)
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !6, line: 955, size: 128, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5439, file: !6, line: 956, baseType: !475, size: 8)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5439, file: !6, line: 957, baseType: !475, size: 8, offset: 8)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5439, file: !6, line: 958, baseType: !475, size: 8, offset: 16)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5439, file: !6, line: 959, baseType: !475, size: 8, offset: 24)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5439, file: !6, line: 960, baseType: !5377, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5439, file: !6, line: 963, baseType: !5358, size: 16, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5439, file: !6, line: 967, baseType: !5358, size: 16, offset: 80)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5439, file: !6, line: 968, baseType: !5449, size: 32, offset: 96)
!5449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5377, size: 32, elements: !494)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5407, file: !149, line: 403, baseType: !5451, size: 64, offset: 256)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !6, line: 940, size: 160, elements: !5453)
!5453 = !{!5454, !5455, !5456, !5457, !5458}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5452, file: !6, line: 941, baseType: !475, size: 8)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5452, file: !6, line: 942, baseType: !475, size: 8, offset: 8)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5452, file: !6, line: 943, baseType: !475, size: 8, offset: 16)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5452, file: !6, line: 944, baseType: !475, size: 8, offset: 24)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5452, file: !6, line: 945, baseType: !3549, size: 128, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5407, file: !149, line: 404, baseType: !5460, size: 64, offset: 320)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !6, line: 1080, size: 24, elements: !5462)
!5462 = !{!5463, !5464, !5465}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5461, file: !6, line: 1081, baseType: !475, size: 8)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5461, file: !6, line: 1082, baseType: !475, size: 8, offset: 8)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5461, file: !6, line: 1083, baseType: !475, size: 8, offset: 16)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5295, file: !149, line: 653, baseType: !5467, size: 64, offset: 7104)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !149, line: 374, size: 5440, elements: !5469)
!5469 = !{!5470, !5481, !5482, !5495, !5537, !5546, !5547}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5468, file: !149, line: 375, baseType: !5471, size: 72)
!5471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !6, line: 349, size: 72, elements: !5472)
!5472 = !{!5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5471, file: !6, line: 350, baseType: !475, size: 8)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5471, file: !6, line: 351, baseType: !475, size: 8, offset: 8)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5471, file: !6, line: 353, baseType: !5358, size: 16, offset: 16)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5471, file: !6, line: 354, baseType: !475, size: 8, offset: 32)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5471, file: !6, line: 355, baseType: !475, size: 8, offset: 40)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5471, file: !6, line: 356, baseType: !475, size: 8, offset: 48)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5471, file: !6, line: 357, baseType: !475, size: 8, offset: 56)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5471, file: !6, line: 358, baseType: !475, size: 8, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5468, file: !149, line: 377, baseType: !735, size: 64, offset: 128)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5468, file: !149, line: 381, baseType: !5483, size: 1024, offset: 192)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5484, size: 1024, elements: !3314)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !6, line: 783, size: 64, elements: !5486)
!5486 = !{!5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5485, file: !6, line: 784, baseType: !475, size: 8)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5485, file: !6, line: 785, baseType: !475, size: 8, offset: 8)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5485, file: !6, line: 787, baseType: !475, size: 8, offset: 16)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5485, file: !6, line: 788, baseType: !475, size: 8, offset: 24)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5485, file: !6, line: 789, baseType: !475, size: 8, offset: 32)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5485, file: !6, line: 790, baseType: !475, size: 8, offset: 40)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5485, file: !6, line: 791, baseType: !475, size: 8, offset: 48)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5485, file: !6, line: 792, baseType: !475, size: 8, offset: 56)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5468, file: !149, line: 385, baseType: !5496, size: 2048, offset: 1216)
!5496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5497, size: 2048, elements: !674)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !149, line: 232, size: 6272, elements: !5499)
!5499 = !{!5500, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5498, file: !149, line: 235, baseType: !5501, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !149, line: 82, size: 320, elements: !5503)
!5503 = !{!5504, !5516, !5517, !5518, !5520}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5502, file: !149, line: 83, baseType: !5505, size: 72)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !6, line: 389, size: 72, elements: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5505, file: !6, line: 390, baseType: !475, size: 8)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5505, file: !6, line: 391, baseType: !475, size: 8, offset: 8)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5505, file: !6, line: 393, baseType: !475, size: 8, offset: 16)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5505, file: !6, line: 394, baseType: !475, size: 8, offset: 24)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5505, file: !6, line: 395, baseType: !475, size: 8, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5505, file: !6, line: 396, baseType: !475, size: 8, offset: 40)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5505, file: !6, line: 397, baseType: !475, size: 8, offset: 48)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5505, file: !6, line: 398, baseType: !475, size: 8, offset: 56)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5505, file: !6, line: 399, baseType: !475, size: 8, offset: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5502, file: !149, line: 85, baseType: !331, size: 32, offset: 96)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5502, file: !149, line: 86, baseType: !4914, size: 64, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5502, file: !149, line: 91, baseType: !5519, size: 64, offset: 192)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5502, file: !149, line: 93, baseType: !735, size: 64, offset: 256)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5498, file: !149, line: 237, baseType: !5501, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5498, file: !149, line: 239, baseType: !7, size: 32, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5498, file: !149, line: 243, baseType: !5484, size: 64, offset: 192)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5498, file: !149, line: 245, baseType: !331, size: 32, offset: 256)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5498, file: !149, line: 247, baseType: !148, size: 32, offset: 288)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5498, file: !149, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5498, file: !149, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5498, file: !149, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5498, file: !149, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5498, file: !149, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5498, file: !149, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5498, file: !149, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5498, file: !149, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5498, file: !149, line: 257, baseType: !1742, size: 5568, offset: 384)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5498, file: !149, line: 258, baseType: !2044, size: 64, offset: 5952)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5498, file: !149, line: 259, baseType: !2279, size: 256, offset: 6016)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5468, file: !149, line: 389, baseType: !5538, size: 2048, offset: 3264)
!5538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5539, size: 2048, elements: !674)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !149, line: 322, size: 64, elements: !5541)
!5541 = !{!5542, !5543, !5544}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5540, file: !149, line: 323, baseType: !7, size: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5540, file: !149, line: 324, baseType: !2034, size: 32, offset: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5540, file: !149, line: 328, baseType: !5545, offset: 64)
!5545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5502, elements: !2555)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5468, file: !149, line: 391, baseType: !4914, size: 64, offset: 5312)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5468, file: !149, line: 392, baseType: !331, size: 32, offset: 5376)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5295, file: !149, line: 655, baseType: !5467, size: 64, offset: 7168)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5295, file: !149, line: 656, baseType: !5550, size: 1024, offset: 7232)
!5550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5519, size: 1024, elements: !3314)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5295, file: !149, line: 657, baseType: !5550, size: 1024, offset: 8256)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5295, file: !149, line: 659, baseType: !5553, size: 64, offset: 9280)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5295, file: !149, line: 661, baseType: !379, size: 16, offset: 9344)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5295, file: !149, line: 662, baseType: !474, size: 8, offset: 9360)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5295, file: !149, line: 663, baseType: !474, size: 8, offset: 9368)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5295, file: !149, line: 664, baseType: !474, size: 8, offset: 9376)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5295, file: !149, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5295, file: !149, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5295, file: !149, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5295, file: !149, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5295, file: !149, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5295, file: !149, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5295, file: !149, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5295, file: !149, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5295, file: !149, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5295, file: !149, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5295, file: !149, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5295, file: !149, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5295, file: !149, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5295, file: !149, line: 679, baseType: !331, size: 32, offset: 9408)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5295, file: !149, line: 682, baseType: !735, size: 64, offset: 9472)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5295, file: !149, line: 683, baseType: !735, size: 64, offset: 9536)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5295, file: !149, line: 684, baseType: !735, size: 64, offset: 9600)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5295, file: !149, line: 686, baseType: !258, size: 128, offset: 9664)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5295, file: !149, line: 688, baseType: !331, size: 32, offset: 9792)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5295, file: !149, line: 690, baseType: !315, size: 32, offset: 9824)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5295, file: !149, line: 691, baseType: !327, size: 32, offset: 9856)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5295, file: !149, line: 693, baseType: !313, size: 64, offset: 9920)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5295, file: !149, line: 696, baseType: !313, size: 64, offset: 9984)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5295, file: !149, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5295, file: !149, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5295, file: !149, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5295, file: !149, line: 702, baseType: !5585, size: 64, offset: 10112)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !149, line: 28, flags: DIFlagFwdDecl)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5295, file: !149, line: 703, baseType: !331, size: 32, offset: 10176)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5295, file: !149, line: 704, baseType: !155, size: 32, offset: 10208)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5295, file: !149, line: 705, baseType: !5590, size: 64, offset: 10240)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !149, line: 502, size: 64, elements: !5591)
!5591 = !{!5592, !5593}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5590, file: !149, line: 506, baseType: !7, size: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5590, file: !149, line: 512, baseType: !331, size: 32, offset: 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5295, file: !149, line: 706, baseType: !5595, size: 128, offset: 10304)
!5595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !149, line: 522, size: 128, elements: !5596)
!5596 = !{!5597, !5598, !5599, !5600}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5595, file: !149, line: 529, baseType: !7, size: 32)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5595, file: !149, line: 535, baseType: !7, size: 32, offset: 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5595, file: !149, line: 545, baseType: !7, size: 32, offset: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5595, file: !149, line: 551, baseType: !331, size: 32, offset: 96)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5295, file: !149, line: 707, baseType: !5595, size: 128, offset: 10432)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5295, file: !149, line: 708, baseType: !7, size: 32, offset: 10560)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5295, file: !149, line: 710, baseType: !984, size: 16, offset: 10592)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5295, file: !149, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "pusb_intf", scope: !5289, file: !5290, line: 95, baseType: !5497, size: 64, offset: 256)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "unusual_dev", scope: !5289, file: !5290, line: 96, baseType: !5607, size: 64, offset: 320)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5609)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "us_unusual_dev", file: !5290, line: 45, size: 256, elements: !5610)
!5610 = !{!5611, !5612, !5613, !5614, !5615}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "vendorName", scope: !5609, file: !5290, line: 46, baseType: !709, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "productName", scope: !5609, file: !5290, line: 47, baseType: !709, size: 64, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "useProtocol", scope: !5609, file: !5290, line: 48, baseType: !475, size: 8, offset: 128)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "useTransport", scope: !5609, file: !5290, line: 49, baseType: !475, size: 8, offset: 136)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "initFunction", scope: !5609, file: !5290, line: 50, baseType: !5616, size: 64, offset: 192)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!331, !5288}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "fflags", scope: !5289, file: !5290, line: 98, baseType: !313, size: 64, offset: 384)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "dflags", scope: !5289, file: !5290, line: 99, baseType: !313, size: 64, offset: 448)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "send_bulk_pipe", scope: !5289, file: !5290, line: 100, baseType: !7, size: 32, offset: 512)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "recv_bulk_pipe", scope: !5289, file: !5290, line: 101, baseType: !7, size: 32, offset: 544)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "send_ctrl_pipe", scope: !5289, file: !5290, line: 102, baseType: !7, size: 32, offset: 576)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ctrl_pipe", scope: !5289, file: !5290, line: 103, baseType: !7, size: 32, offset: 608)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "recv_intr_pipe", scope: !5289, file: !5290, line: 104, baseType: !7, size: 32, offset: 640)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "transport_name", scope: !5289, file: !5290, line: 107, baseType: !735, size: 64, offset: 704)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_name", scope: !5289, file: !5290, line: 108, baseType: !735, size: 64, offset: 768)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "bcs_signature", scope: !5289, file: !5290, line: 109, baseType: !5377, size: 32, offset: 832)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "subclass", scope: !5289, file: !5290, line: 110, baseType: !474, size: 8, offset: 864)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5289, file: !5290, line: 111, baseType: !474, size: 8, offset: 872)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !5289, file: !5290, line: 112, baseType: !474, size: 8, offset: 880)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "ifnum", scope: !5289, file: !5290, line: 114, baseType: !474, size: 8, offset: 888)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "ep_bInterval", scope: !5289, file: !5290, line: 115, baseType: !474, size: 8, offset: 896)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !5289, file: !5290, line: 118, baseType: !5635, size: 64, offset: 960)
!5635 = !DIDerivedType(tag: DW_TAG_typedef, name: "trans_cmnd", file: !5290, line: 77, baseType: !5636)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!331, !5036, !5288}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "transport_reset", scope: !5289, file: !5290, line: 119, baseType: !5640, size: 64, offset: 1024)
!5640 = !DIDerivedType(tag: DW_TAG_typedef, name: "trans_reset", file: !5290, line: 78, baseType: !5616)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "proto_handler", scope: !5289, file: !5290, line: 120, baseType: !5642, size: 64, offset: 1088)
!5642 = !DIDerivedType(tag: DW_TAG_typedef, name: "proto_cmnd", file: !5290, line: 79, baseType: !5643)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{null, !5036, !5288}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "srb", scope: !5289, file: !5290, line: 123, baseType: !5036, size: 64, offset: 1152)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5289, file: !5290, line: 124, baseType: !7, size: 32, offset: 1216)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_name", scope: !5289, file: !5290, line: 125, baseType: !2131, size: 256, offset: 1248)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "current_urb", scope: !5289, file: !5290, line: 128, baseType: !5650, size: 64, offset: 1536)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !149, line: 1561, size: 1472, elements: !5652)
!5652 = !{!5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5694}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5651, file: !149, line: 1563, baseType: !2034, size: 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5651, file: !149, line: 1564, baseType: !331, size: 32, offset: 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5651, file: !149, line: 1565, baseType: !253, size: 64, offset: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5651, file: !149, line: 1566, baseType: !327, size: 32, offset: 128)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5651, file: !149, line: 1567, baseType: !327, size: 32, offset: 160)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5651, file: !149, line: 1570, baseType: !258, size: 128, offset: 192)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5651, file: !149, line: 1572, baseType: !258, size: 128, offset: 320)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5651, file: !149, line: 1573, baseType: !5661, size: 64, offset: 448)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !149, line: 1360, size: 320, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5662, file: !149, line: 1361, baseType: !258, size: 128)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5662, file: !149, line: 1362, baseType: !1087, size: 128, offset: 128)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5662, file: !149, line: 1363, baseType: !267, offset: 256)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !5662, file: !149, line: 1364, baseType: !327, size: 32, offset: 256)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !5662, file: !149, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5651, file: !149, line: 1574, baseType: !5294, size: 64, offset: 512)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5651, file: !149, line: 1575, baseType: !5519, size: 64, offset: 576)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5651, file: !149, line: 1576, baseType: !7, size: 32, offset: 640)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5651, file: !149, line: 1577, baseType: !7, size: 32, offset: 672)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5651, file: !149, line: 1578, baseType: !331, size: 32, offset: 704)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5651, file: !149, line: 1579, baseType: !7, size: 32, offset: 736)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5651, file: !149, line: 1580, baseType: !253, size: 64, offset: 768)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5651, file: !149, line: 1581, baseType: !3926, size: 64, offset: 832)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5651, file: !149, line: 1582, baseType: !5075, size: 64, offset: 896)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5651, file: !149, line: 1583, baseType: !331, size: 32, offset: 960)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5651, file: !149, line: 1584, baseType: !331, size: 32, offset: 992)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5651, file: !149, line: 1585, baseType: !315, size: 32, offset: 1024)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5651, file: !149, line: 1586, baseType: !315, size: 32, offset: 1056)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5651, file: !149, line: 1587, baseType: !4914, size: 64, offset: 1088)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5651, file: !149, line: 1588, baseType: !3926, size: 64, offset: 1152)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5651, file: !149, line: 1589, baseType: !331, size: 32, offset: 1216)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5651, file: !149, line: 1590, baseType: !331, size: 32, offset: 1248)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5651, file: !149, line: 1591, baseType: !331, size: 32, offset: 1280)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5651, file: !149, line: 1593, baseType: !331, size: 32, offset: 1312)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5651, file: !149, line: 1594, baseType: !253, size: 64, offset: 1344)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5651, file: !149, line: 1595, baseType: !5690, size: 64, offset: 1408)
!5690 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !149, line: 1376, baseType: !5691)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{null, !5650}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5651, file: !149, line: 1596, baseType: !5695, offset: 1472)
!5695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5696, elements: !2555)
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !149, line: 1351, size: 128, elements: !5697)
!5697 = !{!5698, !5699, !5700, !5701}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5696, file: !149, line: 1352, baseType: !7, size: 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5696, file: !149, line: 1353, baseType: !7, size: 32, offset: 32)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5696, file: !149, line: 1354, baseType: !7, size: 32, offset: 64)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5696, file: !149, line: 1355, baseType: !331, size: 32, offset: 96)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "cr", scope: !5289, file: !5290, line: 129, baseType: !5703, size: 64, offset: 1600)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !6, line: 213, size: 64, elements: !5705)
!5705 = !{!5706, !5707, !5708, !5709, !5710}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !5704, file: !6, line: 214, baseType: !475, size: 8)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !5704, file: !6, line: 215, baseType: !475, size: 8, offset: 8)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !5704, file: !6, line: 216, baseType: !5358, size: 16, offset: 16)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !5704, file: !6, line: 217, baseType: !5358, size: 16, offset: 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !5704, file: !6, line: 218, baseType: !5358, size: 16, offset: 48)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "current_sg", scope: !5289, file: !5290, line: 130, baseType: !5712, size: 576, offset: 1664)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_sg_request", file: !149, line: 1873, size: 576, elements: !5713)
!5713 = !{!5714, !5715, !5716, !5717, !5718, !5719, !5720, !5722, !5723}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5712, file: !149, line: 1874, baseType: !331, size: 32)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !5712, file: !149, line: 1875, baseType: !889, size: 64, offset: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5712, file: !149, line: 1881, baseType: !267, offset: 128)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5712, file: !149, line: 1883, baseType: !5294, size: 64, offset: 128)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5712, file: !149, line: 1884, baseType: !331, size: 32, offset: 192)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5712, file: !149, line: 1886, baseType: !331, size: 32, offset: 224)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "urbs", scope: !5712, file: !149, line: 1887, baseType: !5721, size: 64, offset: 256)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5712, file: !149, line: 1889, baseType: !331, size: 32, offset: 320)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5712, file: !149, line: 1890, baseType: !2223, size: 192, offset: 384)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf", scope: !5289, file: !5290, line: 131, baseType: !4914, size: 64, offset: 2240)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf_dma", scope: !5289, file: !5290, line: 132, baseType: !3926, size: 64, offset: 2304)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_thread", scope: !5289, file: !5290, line: 133, baseType: !304, size: 64, offset: 2368)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_ready", scope: !5289, file: !5290, line: 136, baseType: !2223, size: 192, offset: 2432)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5289, file: !5290, line: 137, baseType: !2223, size: 192, offset: 2624)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "delay_wait", scope: !5289, file: !5290, line: 138, baseType: !1087, size: 128, offset: 2816)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dwork", scope: !5289, file: !5290, line: 139, baseType: !2763, size: 704, offset: 2944)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5289, file: !5290, line: 142, baseType: !253, size: 64, offset: 3648)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "extra_destructor", scope: !5289, file: !5290, line: 143, baseType: !5733, size: 64, offset: 3712)
!5733 = !DIDerivedType(tag: DW_TAG_typedef, name: "extra_data_destructor", file: !5290, line: 80, baseType: !1886)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_resume_hook", scope: !5289, file: !5290, line: 145, baseType: !5735, size: 64, offset: 3776)
!5735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_hook", file: !5290, line: 81, baseType: !5736)
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !5288, !331}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "use_last_sector_hacks", scope: !5289, file: !5290, line: 149, baseType: !331, size: 32, offset: 3840)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_retries", scope: !5289, file: !5290, line: 150, baseType: !331, size: 32, offset: 3872)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !711)
!5744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !247, line: 81, size: 4672, elements: !5747)
!5747 = !{!5748, !5749, !5750, !5751, !5752, !5754, !5755, !5756, !5757, !5758, !5879, !5882, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5903, !5904, !5905, !5932, !5933, !5935, !5936, !5937, !5938, !5942, !5943, !5946}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5746, file: !247, line: 86, baseType: !5321, size: 960)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5746, file: !247, line: 87, baseType: !2034, size: 32, offset: 960)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !5746, file: !247, line: 89, baseType: !709, size: 64, offset: 1024)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5746, file: !247, line: 90, baseType: !331, size: 32, offset: 1088)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !5746, file: !247, line: 94, baseType: !5753, size: 192, offset: 1120)
!5753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 192, elements: !2728)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !5746, file: !247, line: 96, baseType: !2246, size: 320, offset: 1344)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !5746, file: !247, line: 97, baseType: !5650, size: 64, offset: 1664)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !5746, file: !247, line: 99, baseType: !2279, size: 256, offset: 1728)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !5746, file: !247, line: 101, baseType: !2279, size: 256, offset: 1984)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5746, file: !247, line: 106, baseType: !5759, size: 64, offset: 2240)
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5761)
!5761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !247, line: 249, size: 2880, elements: !5762)
!5762 = !{!5763, !5764, !5765, !5766, !5771, !5772, !5776, !5777, !5781, !5782, !5786, !5787, !5788, !5792, !5796, !5797, !5801, !5805, !5806, !5810, !5814, !5815, !5816, !5820, !5824, !5828, !5832, !5833, !5837, !5841, !5846, !5850, !5854, !5855, !5856, !5857, !5858, !5859, !5863, !5864, !5865, !5869, !5873, !5874, !5875}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !5761, file: !247, line: 250, baseType: !709, size: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !5761, file: !247, line: 251, baseType: !709, size: 64, offset: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !5761, file: !247, line: 252, baseType: !889, size: 64, offset: 128)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5761, file: !247, line: 255, baseType: !5767, size: 64, offset: 192)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!5770, !5745}
!5770 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !235, line: 17, baseType: !234)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5761, file: !247, line: 257, baseType: !331, size: 32, offset: 256)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5761, file: !247, line: 271, baseType: !5773, size: 64, offset: 320)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!331, !5745}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5761, file: !247, line: 272, baseType: !5773, size: 64, offset: 384)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !5761, file: !247, line: 278, baseType: !5778, size: 64, offset: 448)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!331, !5745, !754}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !5761, file: !247, line: 281, baseType: !5778, size: 64, offset: 512)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5761, file: !247, line: 284, baseType: !5783, size: 64, offset: 576)
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5784, size: 64)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{null, !5745}
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5761, file: !247, line: 287, baseType: !5783, size: 64, offset: 640)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !5761, file: !247, line: 290, baseType: !5773, size: 64, offset: 704)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !5761, file: !247, line: 293, baseType: !5789, size: 64, offset: 768)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!331, !5745, !5650, !566}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !5761, file: !247, line: 295, baseType: !5793, size: 64, offset: 832)
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!331, !5745, !5650, !331}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !5761, file: !247, line: 307, baseType: !5789, size: 64, offset: 896)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !5761, file: !247, line: 309, baseType: !5798, size: 64, offset: 960)
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{null, !5745, !5650}
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !5761, file: !247, line: 312, baseType: !5802, size: 64, offset: 1024)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{null, !5745, !5519}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !5761, file: !247, line: 317, baseType: !5802, size: 64, offset: 1088)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !5761, file: !247, line: 321, baseType: !5807, size: 64, offset: 1152)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!331, !5745, !735}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !5761, file: !247, line: 322, baseType: !5811, size: 64, offset: 1216)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5812, size: 64)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!331, !5745, !984, !984, !984, !735, !984}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !5761, file: !247, line: 325, baseType: !5773, size: 64, offset: 1280)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !5761, file: !247, line: 326, baseType: !5773, size: 64, offset: 1344)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !5761, file: !247, line: 327, baseType: !5817, size: 64, offset: 1408)
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5818, size: 64)
!5818 = !DISubroutineType(types: !5819)
!5819 = !{!331, !5745, !7}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !5761, file: !247, line: 328, baseType: !5821, size: 64, offset: 1472)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!313, !5745}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !5761, file: !247, line: 331, baseType: !5825, size: 64, offset: 1536)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{null, !5745, !331}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !5761, file: !247, line: 333, baseType: !5829, size: 64, offset: 1600)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5830, size: 64)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!331, !5745, !331}
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !5761, file: !247, line: 336, baseType: !5802, size: 64, offset: 1664)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !5761, file: !247, line: 341, baseType: !5834, size: 64, offset: 1728)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!331, !5745, !5294}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !5761, file: !247, line: 343, baseType: !5838, size: 64, offset: 1792)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{null, !5745, !5294}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !5761, file: !247, line: 345, baseType: !5842, size: 64, offset: 1856)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!331, !5745, !5294, !5845, !7, !7, !566}
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !5761, file: !247, line: 351, baseType: !5847, size: 64, offset: 1920)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!331, !5745, !5294, !5845, !7, !566}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !5761, file: !247, line: 366, baseType: !5851, size: 64, offset: 1984)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{!331, !5745, !5294, !5519}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !5761, file: !247, line: 369, baseType: !5851, size: 64, offset: 2048)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !5761, file: !247, line: 376, baseType: !5834, size: 64, offset: 2112)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !5761, file: !247, line: 384, baseType: !5838, size: 64, offset: 2176)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !5761, file: !247, line: 386, baseType: !5834, size: 64, offset: 2240)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !5761, file: !247, line: 388, baseType: !5834, size: 64, offset: 2304)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !5761, file: !247, line: 392, baseType: !5860, size: 64, offset: 2368)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!331, !5745, !5294, !5305, !566}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !5761, file: !247, line: 394, baseType: !5834, size: 64, offset: 2432)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !5761, file: !247, line: 398, baseType: !5834, size: 64, offset: 2496)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !5761, file: !247, line: 399, baseType: !5866, size: 64, offset: 2560)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!331, !5745, !5294, !331}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !5761, file: !247, line: 402, baseType: !5870, size: 64, offset: 2624)
!5870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5871, size: 64)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{!331, !5745, !5294, !240}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !5761, file: !247, line: 407, baseType: !5870, size: 64, offset: 2688)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !5761, file: !247, line: 409, baseType: !5829, size: 64, offset: 2752)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !5761, file: !247, line: 411, baseType: !5876, size: 64, offset: 2816)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!331, !5745, !331, !754}
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5746, file: !247, line: 112, baseType: !5880, size: 64, offset: 2304)
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !247, line: 112, flags: DIFlagFwdDecl)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !5746, file: !247, line: 113, baseType: !5883, size: 64, offset: 2368)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !247, line: 113, flags: DIFlagFwdDecl)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5746, file: !247, line: 119, baseType: !313, size: 64, offset: 2432)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !5746, file: !247, line: 151, baseType: !246, size: 32, offset: 2496)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !5746, file: !247, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !5746, file: !247, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !5746, file: !247, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !5746, file: !247, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !5746, file: !247, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !5746, file: !247, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !5746, file: !247, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !5746, file: !247, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !5746, file: !247, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !5746, file: !247, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !5746, file: !247, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !5746, file: !247, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5746, file: !247, line: 176, baseType: !7, size: 32, offset: 2560)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5746, file: !247, line: 177, baseType: !253, size: 64, offset: 2624)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !5746, file: !247, line: 178, baseType: !5902, size: 64, offset: 2688)
!5902 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !259, line: 158, baseType: !4686)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !5746, file: !247, line: 179, baseType: !5902, size: 64, offset: 2752)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !5746, file: !247, line: 180, baseType: !7, size: 32, offset: 2816)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !5746, file: !247, line: 182, baseType: !5906, size: 576, offset: 2880)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !247, line: 67, size: 576, elements: !5907)
!5907 = !{!5908, !5909, !5910, !5911, !5931}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !5906, file: !247, line: 68, baseType: !754, size: 8)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5906, file: !247, line: 69, baseType: !267, offset: 8)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5906, file: !247, line: 70, baseType: !258, size: 128, offset: 64)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5906, file: !247, line: 71, baseType: !5912, size: 320, offset: 192)
!5912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !5192, line: 609, size: 320, elements: !5913)
!5913 = !{!5914, !5916, !5917, !5918, !5919, !5930}
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5912, file: !5192, line: 611, baseType: !5915, size: 64)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5912, file: !5192, line: 612, baseType: !313, size: 64, offset: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5912, file: !5192, line: 613, baseType: !327, size: 32, offset: 128)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5912, file: !5192, line: 614, baseType: !754, size: 8, offset: 160)
!5919 = !DIDerivedType(tag: DW_TAG_member, scope: !5912, file: !5192, line: 615, baseType: !5920, size: 64, offset: 192)
!5920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5912, file: !5192, line: 615, size: 64, elements: !5921)
!5921 = !{!5922, !5926}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5920, file: !5192, line: 616, baseType: !5923, size: 64)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{null, !313}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5920, file: !5192, line: 617, baseType: !5927, size: 64)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !5915}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5912, file: !5192, line: 619, baseType: !313, size: 64, offset: 256)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !5906, file: !247, line: 72, baseType: !5519, size: 64, offset: 512)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !5746, file: !247, line: 183, baseType: !5906, size: 576, offset: 3456)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !5746, file: !247, line: 196, baseType: !5934, size: 64, offset: 4032)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !5746, file: !247, line: 197, baseType: !5934, size: 64, offset: 4096)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !5746, file: !247, line: 198, baseType: !5745, size: 64, offset: 4160)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !5746, file: !247, line: 199, baseType: !5745, size: 64, offset: 4224)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5746, file: !247, line: 203, baseType: !5939, size: 256, offset: 4288)
!5939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5940, size: 256, elements: !1249)
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !247, line: 203, flags: DIFlagFwdDecl)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5746, file: !247, line: 205, baseType: !331, size: 32, offset: 4544)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !5746, file: !247, line: 220, baseType: !5944, size: 64, offset: 4608)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !247, line: 220, flags: DIFlagFwdDecl)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !5746, file: !247, line: 231, baseType: !4200, align: 64, offset: 4672)
!5947 = !{!5948, !0, !5953, !5956}
!5948 = !DIGlobalVariableExpression(var: !5949, expr: !DIExpression())
!5949 = distinct !DIGlobalVariable(name: "usb_stor_sense_invalidCDB", scope: !2, file: !3, line: 673, type: !5950, isLocal: false, isDefinition: true)
!5950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 144, elements: !5951)
!5951 = !{!5952}
!5952 = !DISubrange(count: 18)
!5953 = !DIGlobalVariableExpression(var: !5954, expr: !DIExpression())
!5954 = distinct !DIGlobalVariable(name: "sysfs_device_attr_list", scope: !2, file: !3, line: 591, type: !5955, isLocal: true, isDefinition: true)
!5955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5214, size: 128, elements: !1289)
!5956 = !DIGlobalVariableExpression(var: !5957, expr: !DIExpression())
!5957 = distinct !DIGlobalVariable(name: "dev_attr_max_sectors", scope: !2, file: !3, line: 589, type: !5215, isLocal: true, isDefinition: true)
!5958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4871)
!5959 = !{!"rsp"}
!5960 = !{i32 7, !"Dwarf Version", i32 4}
!5961 = !{i32 2, !"Debug Info Version", i32 3}
!5962 = !{i32 1, !"wchar_size", i32 2}
!5963 = !{i32 1, !"Code Model", i32 2}
!5964 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5965 = distinct !DISubprogram(name: "usb_stor_report_device_reset", scope: !3, file: !3, line: 484, type: !5966, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !5288}
!5968 = !DILocalVariable(name: "us", arg: 1, scope: !5965, file: !3, line: 484, type: !5288)
!5969 = !DILocation(line: 484, column: 51, scope: !5965)
!5970 = !DILocalVariable(name: "i", scope: !5965, file: !3, line: 486, type: !331)
!5971 = !DILocation(line: 486, column: 6, scope: !5965)
!5972 = !DILocalVariable(name: "host", scope: !5965, file: !3, line: 487, type: !254)
!5973 = !DILocation(line: 487, column: 20, scope: !5965)
!5974 = !DILocation(line: 487, column: 38, scope: !5965)
!5975 = !DILocation(line: 487, column: 27, scope: !5965)
!5976 = !DILocation(line: 489, column: 27, scope: !5965)
!5977 = !DILocation(line: 489, column: 2, scope: !5965)
!5978 = !DILocation(line: 490, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 490, column: 6)
!5980 = !DILocation(line: 490, column: 10, scope: !5979)
!5981 = !DILocation(line: 490, column: 17, scope: !5979)
!5982 = !DILocation(line: 490, column: 6, scope: !5965)
!5983 = !DILocation(line: 491, column: 10, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 491, column: 3)
!5985 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 490, column: 40)
!5986 = !DILocation(line: 491, column: 8, scope: !5984)
!5987 = !DILocation(line: 491, column: 15, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 491, column: 3)
!5989 = !DILocation(line: 491, column: 19, scope: !5988)
!5990 = !DILocation(line: 491, column: 25, scope: !5988)
!5991 = !DILocation(line: 491, column: 17, scope: !5988)
!5992 = !DILocation(line: 491, column: 3, scope: !5984)
!5993 = !DILocation(line: 492, column: 29, scope: !5988)
!5994 = !DILocation(line: 492, column: 38, scope: !5988)
!5995 = !DILocation(line: 492, column: 4, scope: !5988)
!5996 = !DILocation(line: 491, column: 33, scope: !5988)
!5997 = !DILocation(line: 491, column: 3, scope: !5988)
!5998 = distinct !{!5998, !5992, !5999}
!5999 = !DILocation(line: 492, column: 39, scope: !5984)
!6000 = !DILocation(line: 493, column: 2, scope: !5985)
!6001 = !DILocation(line: 494, column: 1, scope: !5965)
!6002 = distinct !DISubprogram(name: "us_to_host", scope: !5290, file: !5290, line: 154, type: !6003, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!254, !5288}
!6005 = !DILocalVariable(name: "us", arg: 1, scope: !6002, file: !5290, line: 154, type: !5288)
!6006 = !DILocation(line: 154, column: 60, scope: !6002)
!6007 = !DILocalVariable(name: "__mptr", scope: !6008, file: !5290, line: 155, type: !253)
!6008 = distinct !DILexicalBlock(scope: !6002, file: !5290, line: 155, column: 9)
!6009 = !DILocation(line: 155, column: 9, scope: !6008)
!6010 = !DILocation(line: 155, column: 9, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6008, file: !5290, line: 155, column: 9)
!6012 = !DILocation(line: 155, column: 2, scope: !6002)
!6013 = distinct !DISubprogram(name: "usb_stor_report_bus_reset", scope: !3, file: !3, line: 501, type: !5966, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6014 = !DILocalVariable(name: "lock", arg: 1, scope: !6015, file: !6016, line: 402, type: !283)
!6015 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6016, file: !6016, line: 402, type: !6017, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6016 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !283}
!6019 = !DILocation(line: 402, column: 57, scope: !6015, inlinedAt: !6020)
!6020 = distinct !DILocation(line: 507, column: 2, scope: !6013)
!6021 = !DILocalVariable(name: "lock", arg: 1, scope: !6022, file: !6016, line: 377, type: !283)
!6022 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6016, file: !6016, line: 377, type: !6017, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6023 = !DILocation(line: 377, column: 55, scope: !6022, inlinedAt: !6024)
!6024 = distinct !DILocation(line: 505, column: 2, scope: !6013)
!6025 = !DILocalVariable(name: "us", arg: 1, scope: !6013, file: !3, line: 501, type: !5288)
!6026 = !DILocation(line: 501, column: 48, scope: !6013)
!6027 = !DILocalVariable(name: "host", scope: !6013, file: !3, line: 503, type: !254)
!6028 = !DILocation(line: 503, column: 20, scope: !6013)
!6029 = !DILocation(line: 503, column: 38, scope: !6013)
!6030 = !DILocation(line: 503, column: 27, scope: !6013)
!6031 = !DILocation(line: 505, column: 2, scope: !6013)
!6032 = !DILocation(line: 379, column: 2, scope: !6033, inlinedAt: !6024)
!6033 = distinct !DILexicalBlock(scope: !6034, file: !6016, line: 379, column: 2)
!6034 = distinct !DILexicalBlock(scope: !6022, file: !6016, line: 379, column: 2)
!6035 = !DILocation(line: 379, column: 2, scope: !6036, inlinedAt: !6024)
!6036 = distinct !DILexicalBlock(scope: !6034, file: !6016, line: 379, column: 2)
!6037 = !{i32 -2145263811}
!6038 = !DILocation(line: 379, column: 2, scope: !6039, inlinedAt: !6024)
!6039 = distinct !DILexicalBlock(scope: !6036, file: !6016, line: 379, column: 2)
!6040 = !DILocation(line: 506, column: 24, scope: !6013)
!6041 = !DILocation(line: 506, column: 2, scope: !6013)
!6042 = !DILocation(line: 507, column: 2, scope: !6013)
!6043 = !DILocation(line: 404, column: 2, scope: !6044, inlinedAt: !6020)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !6016, line: 404, column: 2)
!6045 = distinct !DILexicalBlock(scope: !6015, file: !6016, line: 404, column: 2)
!6046 = !DILocation(line: 404, column: 2, scope: !6047, inlinedAt: !6020)
!6047 = distinct !DILexicalBlock(scope: !6045, file: !6016, line: 404, column: 2)
!6048 = !{i32 -2145262063}
!6049 = !DILocation(line: 404, column: 2, scope: !6050, inlinedAt: !6020)
!6050 = distinct !DILexicalBlock(scope: !6047, file: !6016, line: 404, column: 2)
!6051 = !DILocation(line: 508, column: 1, scope: !6013)
!6052 = distinct !DISubprogram(name: "usb_stor_host_template_init", scope: !3, file: !3, line: 662, type: !6053, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !4870, !709, !800}
!6055 = !DILocalVariable(name: "sht", arg: 1, scope: !6052, file: !3, line: 662, type: !4870)
!6056 = !DILocation(line: 662, column: 61, scope: !6052)
!6057 = !DILocalVariable(name: "name", arg: 2, scope: !6052, file: !3, line: 663, type: !709)
!6058 = !DILocation(line: 663, column: 18, scope: !6052)
!6059 = !DILocalVariable(name: "owner", arg: 3, scope: !6052, file: !3, line: 663, type: !800)
!6060 = !DILocation(line: 663, column: 39, scope: !6052)
!6061 = !DILocation(line: 665, column: 3, scope: !6052)
!6062 = !DILocation(line: 665, column: 9, scope: !6052)
!6063 = !DILocation(line: 666, column: 14, scope: !6052)
!6064 = !DILocation(line: 666, column: 2, scope: !6052)
!6065 = !DILocation(line: 666, column: 7, scope: !6052)
!6066 = !DILocation(line: 666, column: 12, scope: !6052)
!6067 = !DILocation(line: 667, column: 19, scope: !6052)
!6068 = !DILocation(line: 667, column: 2, scope: !6052)
!6069 = !DILocation(line: 667, column: 7, scope: !6052)
!6070 = !DILocation(line: 667, column: 17, scope: !6052)
!6071 = !DILocation(line: 668, column: 16, scope: !6052)
!6072 = !DILocation(line: 668, column: 2, scope: !6052)
!6073 = !DILocation(line: 668, column: 7, scope: !6052)
!6074 = !DILocation(line: 668, column: 14, scope: !6052)
!6075 = !DILocation(line: 669, column: 1, scope: !6052)
!6076 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6077, file: !6077, line: 656, type: !4480, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6077 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6078 = !DILocalVariable(name: "__edi", scope: !6079, file: !6077, line: 658, type: !313)
!6079 = distinct !DILexicalBlock(scope: !6076, file: !6077, line: 658, column: 2)
!6080 = !DILocation(line: 658, column: 2, scope: !6079)
!6081 = !DILocalVariable(name: "__esi", scope: !6079, file: !6077, line: 658, type: !313)
!6082 = !DILocalVariable(name: "__edx", scope: !6079, file: !6077, line: 658, type: !313)
!6083 = !DILocalVariable(name: "__ecx", scope: !6079, file: !6077, line: 658, type: !313)
!6084 = !DILocalVariable(name: "__eax", scope: !6079, file: !6077, line: 658, type: !313)
!6085 = !{i32 -2145730768, i32 -2145730036, i32 -2145729802, i32 -2145729751, i32 -2145729723, i32 -2145729698, i32 -2145730014, i32 -2145730001, i32 -2145729563, i32 -2145729444, i32 -2145729909, i32 -2145729882, i32 -2145729854, i32 -2145729824}
!6086 = !DILocation(line: 659, column: 1, scope: !6076)
!6087 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !6077, file: !6077, line: 661, type: !4480, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6088 = !DILocalVariable(name: "__edi", scope: !6089, file: !6077, line: 663, type: !313)
!6089 = distinct !DILexicalBlock(scope: !6087, file: !6077, line: 663, column: 2)
!6090 = !DILocation(line: 663, column: 2, scope: !6089)
!6091 = !DILocalVariable(name: "__esi", scope: !6089, file: !6077, line: 663, type: !313)
!6092 = !DILocalVariable(name: "__edx", scope: !6089, file: !6077, line: 663, type: !313)
!6093 = !DILocalVariable(name: "__ecx", scope: !6089, file: !6077, line: 663, type: !313)
!6094 = !DILocalVariable(name: "__eax", scope: !6089, file: !6077, line: 663, type: !313)
!6095 = !{i32 -2145728184, i32 -2145727454, i32 -2145727220, i32 -2145727169, i32 -2145727141, i32 -2145727116, i32 -2145727432, i32 -2145727419, i32 -2145726981, i32 -2145726862, i32 -2145727327, i32 -2145727300, i32 -2145727272, i32 -2145727242}
!6096 = !DILocation(line: 664, column: 1, scope: !6087)
!6097 = distinct !DISubprogram(name: "host_info", scope: !3, file: !3, line: 62, type: !4877, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6098 = !DILocalVariable(name: "host", arg: 1, scope: !6097, file: !3, line: 62, type: !254)
!6099 = !DILocation(line: 62, column: 48, scope: !6097)
!6100 = !DILocalVariable(name: "us", scope: !6097, file: !3, line: 64, type: !5288)
!6101 = !DILocation(line: 64, column: 18, scope: !6097)
!6102 = !DILocation(line: 64, column: 34, scope: !6097)
!6103 = !DILocation(line: 64, column: 23, scope: !6097)
!6104 = !DILocation(line: 65, column: 9, scope: !6097)
!6105 = !DILocation(line: 65, column: 13, scope: !6097)
!6106 = !DILocation(line: 65, column: 2, scope: !6097)
!6107 = distinct !DISubprogram(name: "queuecommand", scope: !3, file: !3, line: 403, type: !5034, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6108 = !DILocalVariable(name: "lock", arg: 1, scope: !6109, file: !6016, line: 407, type: !283)
!6109 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6016, file: !6016, line: 407, type: !6110, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{null, !283, !313}
!6112 = !DILocation(line: 407, column: 64, scope: !6109, inlinedAt: !6113)
!6113 = distinct !DILocation(line: 403, column: 8, scope: !6107)
!6114 = !DILocalVariable(name: "flags", arg: 2, scope: !6109, file: !6016, line: 407, type: !313)
!6115 = !DILocation(line: 407, column: 84, scope: !6109, inlinedAt: !6113)
!6116 = !DILocalVariable(name: "lock", arg: 1, scope: !6117, file: !6016, line: 327, type: !283)
!6117 = distinct !DISubprogram(name: "spinlock_check", scope: !6016, file: !6016, line: 327, type: !6118, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!6120, !283}
!6120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!6121 = !DILocation(line: 327, column: 67, scope: !6117, inlinedAt: !6122)
!6122 = distinct !DILocation(line: 403, column: 8, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 403, column: 8)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 403, column: 8)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 403, column: 8)
!6126 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 403, column: 8)
!6127 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 403, column: 8)
!6128 = !DILocalVariable(name: "shost", arg: 1, scope: !6107, file: !3, line: 403, type: !254)
!6129 = !DILocation(line: 403, column: 8, scope: !6107)
!6130 = !DILocalVariable(name: "cmd", arg: 2, scope: !6107, file: !3, line: 403, type: !5036)
!6131 = !DILocalVariable(name: "irq_flags", scope: !6107, file: !3, line: 403, type: !313)
!6132 = !DILocalVariable(name: "rc", scope: !6107, file: !3, line: 403, type: !331)
!6133 = !DILocation(line: 403, column: 8, scope: !6127)
!6134 = !DILocalVariable(name: "__dummy", scope: !6135, file: !3, line: 403, type: !313)
!6135 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 403, column: 8)
!6136 = !DILocation(line: 403, column: 8, scope: !6135)
!6137 = !DILocalVariable(name: "__dummy2", scope: !6135, file: !3, line: 403, type: !313)
!6138 = !DILocation(line: 403, column: 8, scope: !6126)
!6139 = !DILocation(line: 403, column: 8, scope: !6125)
!6140 = !DILocation(line: 403, column: 8, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 403, column: 8)
!6142 = !DILocalVariable(name: "__dummy", scope: !6143, file: !3, line: 403, type: !313)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 403, column: 8)
!6144 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 403, column: 8)
!6145 = !DILocation(line: 403, column: 8, scope: !6143)
!6146 = !DILocalVariable(name: "__dummy2", scope: !6143, file: !3, line: 403, type: !313)
!6147 = !DILocation(line: 403, column: 8, scope: !6144)
!6148 = !DILocation(line: 403, column: 8, scope: !6124)
!6149 = !{i32 -2141138853}
!6150 = !DILocation(line: 403, column: 8, scope: !6123)
!6151 = !DILocation(line: 329, column: 10, scope: !6117, inlinedAt: !6122)
!6152 = !DILocation(line: 329, column: 16, scope: !6117, inlinedAt: !6122)
!6153 = !DILocalVariable(name: "__dummy", scope: !6154, file: !6016, line: 409, type: !313)
!6154 = distinct !DILexicalBlock(scope: !6155, file: !6016, line: 409, column: 2)
!6155 = distinct !DILexicalBlock(scope: !6109, file: !6016, line: 409, column: 2)
!6156 = !DILocation(line: 409, column: 2, scope: !6154, inlinedAt: !6113)
!6157 = !DILocalVariable(name: "__dummy2", scope: !6154, file: !6016, line: 409, type: !313)
!6158 = !DILocalVariable(name: "__dummy", scope: !6159, file: !6016, line: 409, type: !313)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !6016, line: 409, column: 2)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !6016, line: 409, column: 2)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !6016, line: 409, column: 2)
!6162 = distinct !DILexicalBlock(scope: !6155, file: !6016, line: 409, column: 2)
!6163 = !DILocation(line: 409, column: 2, scope: !6159, inlinedAt: !6113)
!6164 = !DILocalVariable(name: "__dummy2", scope: !6159, file: !6016, line: 409, type: !313)
!6165 = !DILocation(line: 409, column: 2, scope: !6160, inlinedAt: !6113)
!6166 = !DILocation(line: 409, column: 2, scope: !6167, inlinedAt: !6113)
!6167 = distinct !DILexicalBlock(scope: !6162, file: !6016, line: 409, column: 2)
!6168 = !{i32 -2145261019}
!6169 = !DILocation(line: 409, column: 2, scope: !6170, inlinedAt: !6113)
!6170 = distinct !DILexicalBlock(scope: !6167, file: !6016, line: 409, column: 2)
!6171 = distinct !DISubprogram(name: "command_abort", scope: !3, file: !3, line: 410, type: !5124, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6172 = !DILocation(line: 402, column: 57, scope: !6015, inlinedAt: !6173)
!6173 = distinct !DILocation(line: 441, column: 2, scope: !6171)
!6174 = !DILocation(line: 402, column: 57, scope: !6015, inlinedAt: !6175)
!6175 = distinct !DILocation(line: 424, column: 3, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 423, column: 22)
!6177 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 423, column: 6)
!6178 = !DILocation(line: 377, column: 55, scope: !6022, inlinedAt: !6179)
!6179 = distinct !DILocation(line: 420, column: 2, scope: !6171)
!6180 = !DILocalVariable(name: "srb", arg: 1, scope: !6171, file: !3, line: 410, type: !5036)
!6181 = !DILocation(line: 410, column: 44, scope: !6171)
!6182 = !DILocalVariable(name: "us", scope: !6171, file: !3, line: 412, type: !5288)
!6183 = !DILocation(line: 412, column: 18, scope: !6171)
!6184 = !DILocation(line: 412, column: 34, scope: !6171)
!6185 = !DILocation(line: 412, column: 39, scope: !6171)
!6186 = !DILocation(line: 412, column: 47, scope: !6171)
!6187 = !DILocation(line: 412, column: 23, scope: !6171)
!6188 = !DILocation(line: 414, column: 2, scope: !6171)
!6189 = !DILocation(line: 414, column: 2, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 414, column: 2)
!6191 = !DILocation(line: 420, column: 2, scope: !6171)
!6192 = !DILocation(line: 379, column: 2, scope: !6033, inlinedAt: !6179)
!6193 = !DILocation(line: 379, column: 2, scope: !6036, inlinedAt: !6179)
!6194 = !DILocation(line: 379, column: 2, scope: !6039, inlinedAt: !6179)
!6195 = !DILocation(line: 423, column: 6, scope: !6177)
!6196 = !DILocation(line: 423, column: 10, scope: !6177)
!6197 = !DILocation(line: 423, column: 17, scope: !6177)
!6198 = !DILocation(line: 423, column: 14, scope: !6177)
!6199 = !DILocation(line: 423, column: 6, scope: !6171)
!6200 = !DILocation(line: 424, column: 3, scope: !6176)
!6201 = !DILocation(line: 404, column: 2, scope: !6044, inlinedAt: !6175)
!6202 = !DILocation(line: 404, column: 2, scope: !6047, inlinedAt: !6175)
!6203 = !DILocation(line: 404, column: 2, scope: !6050, inlinedAt: !6175)
!6204 = !DILocation(line: 425, column: 3, scope: !6176)
!6205 = !DILocation(line: 425, column: 3, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 425, column: 3)
!6207 = !DILocation(line: 426, column: 3, scope: !6176)
!6208 = !DILocation(line: 436, column: 31, scope: !6171)
!6209 = !DILocation(line: 436, column: 35, scope: !6171)
!6210 = !DILocation(line: 436, column: 2, scope: !6171)
!6211 = !DILocation(line: 437, column: 37, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 437, column: 6)
!6213 = !DILocation(line: 437, column: 41, scope: !6212)
!6214 = !DILocation(line: 437, column: 7, scope: !6212)
!6215 = !DILocation(line: 437, column: 6, scope: !6171)
!6216 = !DILocation(line: 438, column: 31, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 437, column: 50)
!6218 = !DILocation(line: 438, column: 35, scope: !6217)
!6219 = !DILocation(line: 438, column: 3, scope: !6217)
!6220 = !DILocation(line: 439, column: 27, scope: !6217)
!6221 = !DILocation(line: 439, column: 3, scope: !6217)
!6222 = !DILocation(line: 440, column: 2, scope: !6217)
!6223 = !DILocation(line: 441, column: 2, scope: !6171)
!6224 = !DILocation(line: 404, column: 2, scope: !6044, inlinedAt: !6173)
!6225 = !DILocation(line: 404, column: 2, scope: !6047, inlinedAt: !6173)
!6226 = !DILocation(line: 404, column: 2, scope: !6050, inlinedAt: !6173)
!6227 = !DILocation(line: 444, column: 23, scope: !6171)
!6228 = !DILocation(line: 444, column: 27, scope: !6171)
!6229 = !DILocation(line: 444, column: 2, scope: !6171)
!6230 = !DILocation(line: 445, column: 2, scope: !6171)
!6231 = !DILocation(line: 446, column: 1, scope: !6171)
!6232 = distinct !DISubprogram(name: "device_reset", scope: !3, file: !3, line: 452, type: !5124, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6233 = !DILocalVariable(name: "srb", arg: 1, scope: !6232, file: !3, line: 452, type: !5036)
!6234 = !DILocation(line: 452, column: 43, scope: !6232)
!6235 = !DILocalVariable(name: "us", scope: !6232, file: !3, line: 454, type: !5288)
!6236 = !DILocation(line: 454, column: 18, scope: !6232)
!6237 = !DILocation(line: 454, column: 34, scope: !6232)
!6238 = !DILocation(line: 454, column: 39, scope: !6232)
!6239 = !DILocation(line: 454, column: 47, scope: !6232)
!6240 = !DILocation(line: 454, column: 23, scope: !6232)
!6241 = !DILocalVariable(name: "result", scope: !6232, file: !3, line: 455, type: !331)
!6242 = !DILocation(line: 455, column: 6, scope: !6232)
!6243 = !DILocation(line: 457, column: 2, scope: !6232)
!6244 = !DILocation(line: 457, column: 2, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6232, file: !3, line: 457, column: 2)
!6246 = !DILocation(line: 460, column: 15, scope: !6232)
!6247 = !DILocation(line: 460, column: 19, scope: !6232)
!6248 = !DILocation(line: 460, column: 2, scope: !6232)
!6249 = !DILocation(line: 461, column: 11, scope: !6232)
!6250 = !DILocation(line: 461, column: 15, scope: !6232)
!6251 = !DILocation(line: 461, column: 31, scope: !6232)
!6252 = !DILocation(line: 461, column: 9, scope: !6232)
!6253 = !DILocation(line: 462, column: 16, scope: !6232)
!6254 = !DILocation(line: 462, column: 20, scope: !6232)
!6255 = !DILocation(line: 462, column: 2, scope: !6232)
!6256 = !DILocation(line: 464, column: 9, scope: !6232)
!6257 = !DILocation(line: 464, column: 16, scope: !6232)
!6258 = !DILocation(line: 464, column: 2, scope: !6232)
!6259 = distinct !DISubprogram(name: "bus_reset", scope: !3, file: !3, line: 468, type: !5124, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6260 = !DILocalVariable(name: "srb", arg: 1, scope: !6259, file: !3, line: 468, type: !5036)
!6261 = !DILocation(line: 468, column: 40, scope: !6259)
!6262 = !DILocalVariable(name: "us", scope: !6259, file: !3, line: 470, type: !5288)
!6263 = !DILocation(line: 470, column: 18, scope: !6259)
!6264 = !DILocation(line: 470, column: 34, scope: !6259)
!6265 = !DILocation(line: 470, column: 39, scope: !6259)
!6266 = !DILocation(line: 470, column: 47, scope: !6259)
!6267 = !DILocation(line: 470, column: 23, scope: !6259)
!6268 = !DILocalVariable(name: "result", scope: !6259, file: !3, line: 471, type: !331)
!6269 = !DILocation(line: 471, column: 6, scope: !6259)
!6270 = !DILocation(line: 473, column: 2, scope: !6259)
!6271 = !DILocation(line: 473, column: 2, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 473, column: 2)
!6273 = !DILocation(line: 475, column: 31, scope: !6259)
!6274 = !DILocation(line: 475, column: 11, scope: !6259)
!6275 = !DILocation(line: 475, column: 9, scope: !6259)
!6276 = !DILocation(line: 476, column: 9, scope: !6259)
!6277 = !DILocation(line: 476, column: 16, scope: !6259)
!6278 = !DILocation(line: 476, column: 2, scope: !6259)
!6279 = distinct !DISubprogram(name: "slave_alloc", scope: !3, file: !3, line: 68, type: !5132, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6280 = !DILocalVariable(name: "sdev", arg: 1, scope: !6279, file: !3, line: 68, type: !4883)
!6281 = !DILocation(line: 68, column: 45, scope: !6279)
!6282 = !DILocalVariable(name: "us", scope: !6279, file: !3, line: 70, type: !5288)
!6283 = !DILocation(line: 70, column: 18, scope: !6279)
!6284 = !DILocation(line: 70, column: 34, scope: !6279)
!6285 = !DILocation(line: 70, column: 40, scope: !6279)
!6286 = !DILocation(line: 70, column: 23, scope: !6279)
!6287 = !DILocation(line: 77, column: 2, scope: !6279)
!6288 = !DILocation(line: 77, column: 8, scope: !6279)
!6289 = !DILocation(line: 77, column: 20, scope: !6279)
!6290 = !DILocation(line: 83, column: 33, scope: !6279)
!6291 = !DILocation(line: 83, column: 39, scope: !6279)
!6292 = !DILocation(line: 83, column: 2, scope: !6279)
!6293 = !DILocation(line: 86, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 86, column: 6)
!6295 = !DILocation(line: 86, column: 10, scope: !6294)
!6296 = !DILocation(line: 86, column: 19, scope: !6294)
!6297 = !DILocation(line: 86, column: 34, scope: !6294)
!6298 = !DILocation(line: 86, column: 37, scope: !6294)
!6299 = !DILocation(line: 86, column: 41, scope: !6294)
!6300 = !DILocation(line: 86, column: 49, scope: !6294)
!6301 = !DILocation(line: 86, column: 6, scope: !6279)
!6302 = !DILocation(line: 87, column: 3, scope: !6294)
!6303 = !DILocation(line: 87, column: 9, scope: !6294)
!6304 = !DILocation(line: 87, column: 21, scope: !6294)
!6305 = !DILocation(line: 89, column: 2, scope: !6279)
!6306 = distinct !DISubprogram(name: "slave_configure", scope: !3, file: !3, line: 92, type: !5132, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6307 = !DILocalVariable(name: "sdev", arg: 1, scope: !6306, file: !3, line: 92, type: !4883)
!6308 = !DILocation(line: 92, column: 48, scope: !6306)
!6309 = !DILocalVariable(name: "us", scope: !6306, file: !3, line: 94, type: !5288)
!6310 = !DILocation(line: 94, column: 18, scope: !6306)
!6311 = !DILocation(line: 94, column: 34, scope: !6306)
!6312 = !DILocation(line: 94, column: 40, scope: !6306)
!6313 = !DILocation(line: 94, column: 23, scope: !6306)
!6314 = !DILocalVariable(name: "dev", scope: !6306, file: !3, line: 95, type: !2044)
!6315 = !DILocation(line: 95, column: 17, scope: !6306)
!6316 = !DILocation(line: 95, column: 23, scope: !6306)
!6317 = !DILocation(line: 95, column: 27, scope: !6306)
!6318 = !DILocation(line: 95, column: 37, scope: !6306)
!6319 = !DILocation(line: 95, column: 42, scope: !6306)
!6320 = !DILocation(line: 102, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 102, column: 6)
!6322 = !DILocation(line: 102, column: 10, scope: !6321)
!6323 = !DILocation(line: 102, column: 17, scope: !6321)
!6324 = !DILocation(line: 102, column: 6, scope: !6306)
!6325 = !DILocalVariable(name: "max_sectors", scope: !6326, file: !3, line: 103, type: !7)
!6326 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 102, column: 67)
!6327 = !DILocation(line: 103, column: 16, scope: !6326)
!6328 = !DILocation(line: 105, column: 7, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 105, column: 7)
!6330 = !DILocation(line: 105, column: 11, scope: !6329)
!6331 = !DILocation(line: 105, column: 18, scope: !6329)
!6332 = !DILocation(line: 105, column: 7, scope: !6326)
!6333 = !DILocation(line: 106, column: 16, scope: !6329)
!6334 = !DILocation(line: 106, column: 4, scope: !6329)
!6335 = !DILocation(line: 107, column: 28, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 107, column: 7)
!6337 = !DILocation(line: 107, column: 34, scope: !6336)
!6338 = !DILocation(line: 107, column: 7, scope: !6336)
!6339 = !DILocation(line: 107, column: 51, scope: !6336)
!6340 = !DILocation(line: 107, column: 49, scope: !6336)
!6341 = !DILocation(line: 107, column: 7, scope: !6326)
!6342 = !DILocation(line: 108, column: 29, scope: !6336)
!6343 = !DILocation(line: 108, column: 35, scope: !6336)
!6344 = !DILocation(line: 109, column: 12, scope: !6336)
!6345 = !DILocation(line: 108, column: 4, scope: !6336)
!6346 = !DILocation(line: 110, column: 2, scope: !6326)
!6347 = !DILocation(line: 110, column: 13, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 110, column: 13)
!6349 = !DILocation(line: 110, column: 19, scope: !6348)
!6350 = !DILocation(line: 110, column: 24, scope: !6348)
!6351 = !DILocation(line: 110, column: 13, scope: !6321)
!6352 = !DILocation(line: 116, column: 28, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 110, column: 38)
!6354 = !DILocation(line: 116, column: 34, scope: !6353)
!6355 = !DILocation(line: 116, column: 3, scope: !6353)
!6356 = !DILocation(line: 117, column: 2, scope: !6353)
!6357 = !DILocation(line: 117, column: 13, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 117, column: 13)
!6359 = !DILocation(line: 117, column: 17, scope: !6358)
!6360 = !DILocation(line: 117, column: 27, scope: !6358)
!6361 = !DILocation(line: 117, column: 33, scope: !6358)
!6362 = !DILocation(line: 117, column: 13, scope: !6348)
!6363 = !DILocation(line: 122, column: 28, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 117, column: 53)
!6365 = !DILocation(line: 122, column: 34, scope: !6364)
!6366 = !DILocation(line: 122, column: 3, scope: !6364)
!6367 = !DILocation(line: 123, column: 2, scope: !6364)
!6368 = !DILocation(line: 129, column: 27, scope: !6306)
!6369 = !DILocation(line: 129, column: 33, scope: !6306)
!6370 = !DILocalVariable(name: "__UNIQUE_ID___x303", scope: !6371, file: !3, line: 130, type: !889)
!6371 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 130, column: 3)
!6372 = !DILocation(line: 130, column: 3, scope: !6371)
!6373 = !DILocalVariable(name: "__UNIQUE_ID___y304", scope: !6371, file: !3, line: 130, type: !889)
!6374 = !DILocation(line: 130, column: 3, scope: !6306)
!6375 = !DILocation(line: 129, column: 2, scope: !6306)
!6376 = !DILocation(line: 138, column: 31, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 138, column: 6)
!6378 = !DILocation(line: 138, column: 35, scope: !6377)
!6379 = !DILocation(line: 138, column: 45, scope: !6377)
!6380 = !DILocation(line: 138, column: 20, scope: !6377)
!6381 = !DILocation(line: 138, column: 7, scope: !6377)
!6382 = !DILocation(line: 138, column: 51, scope: !6377)
!6383 = !DILocation(line: 139, column: 16, scope: !6377)
!6384 = !DILocation(line: 139, column: 20, scope: !6377)
!6385 = !DILocation(line: 139, column: 30, scope: !6377)
!6386 = !DILocation(line: 139, column: 5, scope: !6377)
!6387 = !DILocation(line: 139, column: 36, scope: !6377)
!6388 = !DILocation(line: 139, column: 50, scope: !6377)
!6389 = !DILocation(line: 138, column: 6, scope: !6306)
!6390 = !DILocation(line: 140, column: 26, scope: !6377)
!6391 = !DILocation(line: 140, column: 32, scope: !6377)
!6392 = !DILocation(line: 140, column: 3, scope: !6377)
!6393 = !DILocation(line: 147, column: 6, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 147, column: 6)
!6395 = !DILocation(line: 147, column: 12, scope: !6394)
!6396 = !DILocation(line: 147, column: 17, scope: !6394)
!6397 = !DILocation(line: 147, column: 6, scope: !6306)
!6398 = !DILocation(line: 157, column: 11, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 147, column: 31)
!6400 = !DILocation(line: 157, column: 3, scope: !6399)
!6401 = !DILocation(line: 162, column: 10, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 162, column: 8)
!6403 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 157, column: 59)
!6404 = !DILocation(line: 162, column: 14, scope: !6402)
!6405 = !DILocation(line: 162, column: 21, scope: !6402)
!6406 = !DILocation(line: 162, column: 8, scope: !6403)
!6407 = !DILocation(line: 164, column: 5, scope: !6402)
!6408 = !DILocation(line: 164, column: 9, scope: !6402)
!6409 = !DILocation(line: 164, column: 16, scope: !6402)
!6410 = !DILocation(line: 165, column: 4, scope: !6403)
!6411 = !DILocation(line: 173, column: 7, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 173, column: 7)
!6413 = !DILocation(line: 173, column: 11, scope: !6412)
!6414 = !DILocation(line: 173, column: 20, scope: !6412)
!6415 = !DILocation(line: 173, column: 35, scope: !6412)
!6416 = !DILocation(line: 173, column: 38, scope: !6412)
!6417 = !DILocation(line: 173, column: 42, scope: !6412)
!6418 = !DILocation(line: 173, column: 51, scope: !6412)
!6419 = !DILocation(line: 173, column: 7, scope: !6399)
!6420 = !DILocation(line: 174, column: 4, scope: !6412)
!6421 = !DILocation(line: 174, column: 10, scope: !6412)
!6422 = !DILocation(line: 174, column: 24, scope: !6412)
!6423 = !DILocation(line: 180, column: 3, scope: !6399)
!6424 = !DILocation(line: 180, column: 9, scope: !6399)
!6425 = !DILocation(line: 180, column: 30, scope: !6399)
!6426 = !DILocation(line: 191, column: 7, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 191, column: 7)
!6428 = !DILocation(line: 191, column: 11, scope: !6427)
!6429 = !DILocation(line: 191, column: 18, scope: !6427)
!6430 = !DILocation(line: 191, column: 7, scope: !6399)
!6431 = !DILocation(line: 192, column: 4, scope: !6427)
!6432 = !DILocation(line: 192, column: 10, scope: !6427)
!6433 = !DILocation(line: 192, column: 26, scope: !6427)
!6434 = !DILocation(line: 198, column: 3, scope: !6399)
!6435 = !DILocation(line: 198, column: 9, scope: !6399)
!6436 = !DILocation(line: 198, column: 24, scope: !6399)
!6437 = !DILocation(line: 204, column: 27, scope: !6399)
!6438 = !DILocation(line: 204, column: 33, scope: !6399)
!6439 = !DILocation(line: 204, column: 26, scope: !6399)
!6440 = !DILocation(line: 204, column: 3, scope: !6399)
!6441 = !DILocation(line: 204, column: 9, scope: !6399)
!6442 = !DILocation(line: 204, column: 24, scope: !6399)
!6443 = !DILocation(line: 207, column: 3, scope: !6399)
!6444 = !DILocation(line: 207, column: 9, scope: !6399)
!6445 = !DILocation(line: 207, column: 27, scope: !6399)
!6446 = !DILocation(line: 210, column: 3, scope: !6399)
!6447 = !DILocation(line: 210, column: 9, scope: !6399)
!6448 = !DILocation(line: 210, column: 23, scope: !6399)
!6449 = !DILocation(line: 217, column: 7, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 217, column: 7)
!6451 = !DILocation(line: 217, column: 11, scope: !6450)
!6452 = !DILocation(line: 217, column: 18, scope: !6450)
!6453 = !DILocation(line: 217, column: 7, scope: !6399)
!6454 = !DILocation(line: 218, column: 4, scope: !6450)
!6455 = !DILocation(line: 218, column: 10, scope: !6450)
!6456 = !DILocation(line: 218, column: 23, scope: !6450)
!6457 = !DILocation(line: 225, column: 7, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 225, column: 7)
!6459 = !DILocation(line: 225, column: 11, scope: !6458)
!6460 = !DILocation(line: 225, column: 18, scope: !6458)
!6461 = !DILocation(line: 225, column: 7, scope: !6399)
!6462 = !DILocation(line: 226, column: 4, scope: !6458)
!6463 = !DILocation(line: 226, column: 10, scope: !6458)
!6464 = !DILocation(line: 226, column: 25, scope: !6458)
!6465 = !DILocation(line: 229, column: 7, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 229, column: 7)
!6467 = !DILocation(line: 229, column: 11, scope: !6466)
!6468 = !DILocation(line: 229, column: 18, scope: !6466)
!6469 = !DILocation(line: 229, column: 7, scope: !6399)
!6470 = !DILocation(line: 230, column: 4, scope: !6466)
!6471 = !DILocation(line: 230, column: 10, scope: !6466)
!6472 = !DILocation(line: 230, column: 30, scope: !6466)
!6473 = !DILocation(line: 238, column: 9, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 238, column: 7)
!6475 = !DILocation(line: 238, column: 13, scope: !6474)
!6476 = !DILocation(line: 238, column: 20, scope: !6474)
!6477 = !DILocation(line: 238, column: 7, scope: !6399)
!6478 = !DILocation(line: 239, column: 4, scope: !6474)
!6479 = !DILocation(line: 239, column: 10, scope: !6474)
!6480 = !DILocation(line: 239, column: 26, scope: !6474)
!6481 = !DILocation(line: 245, column: 7, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 245, column: 7)
!6483 = !DILocation(line: 245, column: 13, scope: !6482)
!6484 = !DILocation(line: 245, column: 24, scope: !6482)
!6485 = !DILocation(line: 245, column: 37, scope: !6482)
!6486 = !DILocation(line: 246, column: 9, scope: !6482)
!6487 = !DILocation(line: 246, column: 13, scope: !6482)
!6488 = !DILocation(line: 246, column: 20, scope: !6482)
!6489 = !DILocation(line: 245, column: 7, scope: !6399)
!6490 = !DILocation(line: 247, column: 4, scope: !6482)
!6491 = !DILocation(line: 247, column: 8, scope: !6482)
!6492 = !DILocation(line: 247, column: 15, scope: !6482)
!6493 = !DILocation(line: 257, column: 3, scope: !6399)
!6494 = !DILocation(line: 257, column: 9, scope: !6399)
!6495 = !DILocation(line: 257, column: 23, scope: !6399)
!6496 = !DILocation(line: 263, column: 3, scope: !6399)
!6497 = !DILocation(line: 263, column: 9, scope: !6399)
!6498 = !DILocation(line: 263, column: 23, scope: !6399)
!6499 = !DILocation(line: 270, column: 3, scope: !6399)
!6500 = !DILocation(line: 270, column: 9, scope: !6399)
!6501 = !DILocation(line: 270, column: 25, scope: !6399)
!6502 = !DILocation(line: 277, column: 9, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 277, column: 7)
!6504 = !DILocation(line: 277, column: 13, scope: !6503)
!6505 = !DILocation(line: 277, column: 20, scope: !6503)
!6506 = !DILocation(line: 278, column: 28, scope: !6503)
!6507 = !DILocation(line: 279, column: 5, scope: !6503)
!6508 = !DILocation(line: 279, column: 9, scope: !6503)
!6509 = !DILocation(line: 279, column: 18, scope: !6503)
!6510 = !DILocation(line: 277, column: 7, scope: !6399)
!6511 = !DILocation(line: 280, column: 4, scope: !6503)
!6512 = !DILocation(line: 280, column: 8, scope: !6503)
!6513 = !DILocation(line: 280, column: 30, scope: !6503)
!6514 = !DILocation(line: 283, column: 7, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 283, column: 7)
!6516 = !DILocation(line: 283, column: 11, scope: !6515)
!6517 = !DILocation(line: 283, column: 18, scope: !6515)
!6518 = !DILocation(line: 283, column: 7, scope: !6399)
!6519 = !DILocation(line: 284, column: 4, scope: !6515)
!6520 = !DILocation(line: 284, column: 10, scope: !6515)
!6521 = !DILocation(line: 284, column: 25, scope: !6515)
!6522 = !DILocation(line: 287, column: 7, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 287, column: 7)
!6524 = !DILocation(line: 287, column: 11, scope: !6523)
!6525 = !DILocation(line: 287, column: 18, scope: !6523)
!6526 = !DILocation(line: 287, column: 7, scope: !6399)
!6527 = !DILocation(line: 288, column: 4, scope: !6523)
!6528 = !DILocation(line: 288, column: 10, scope: !6523)
!6529 = !DILocation(line: 288, column: 21, scope: !6523)
!6530 = !DILocation(line: 291, column: 7, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 291, column: 7)
!6532 = !DILocation(line: 291, column: 11, scope: !6531)
!6533 = !DILocation(line: 291, column: 18, scope: !6531)
!6534 = !DILocation(line: 291, column: 7, scope: !6399)
!6535 = !DILocation(line: 293, column: 4, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 291, column: 39)
!6537 = !DILocation(line: 293, column: 10, scope: !6536)
!6538 = !DILocation(line: 293, column: 25, scope: !6536)
!6539 = !DILocation(line: 294, column: 4, scope: !6536)
!6540 = !DILocation(line: 294, column: 10, scope: !6536)
!6541 = !DILocation(line: 294, column: 26, scope: !6536)
!6542 = !DILocation(line: 296, column: 4, scope: !6536)
!6543 = !DILocation(line: 296, column: 10, scope: !6536)
!6544 = !DILocation(line: 296, column: 25, scope: !6536)
!6545 = !DILocation(line: 297, column: 3, scope: !6536)
!6546 = !DILocation(line: 298, column: 2, scope: !6399)
!6547 = !DILocation(line: 305, column: 3, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 298, column: 9)
!6549 = !DILocation(line: 305, column: 9, scope: !6548)
!6550 = !DILocation(line: 305, column: 23, scope: !6548)
!6551 = !DILocation(line: 308, column: 7, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6548, file: !3, line: 308, column: 7)
!6553 = !DILocation(line: 308, column: 11, scope: !6552)
!6554 = !DILocation(line: 308, column: 18, scope: !6552)
!6555 = !DILocation(line: 308, column: 7, scope: !6548)
!6556 = !DILocation(line: 309, column: 4, scope: !6552)
!6557 = !DILocation(line: 309, column: 10, scope: !6552)
!6558 = !DILocation(line: 309, column: 28, scope: !6552)
!6559 = !DILocation(line: 319, column: 7, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 319, column: 6)
!6561 = !DILocation(line: 319, column: 11, scope: !6560)
!6562 = !DILocation(line: 319, column: 20, scope: !6560)
!6563 = !DILocation(line: 319, column: 33, scope: !6560)
!6564 = !DILocation(line: 319, column: 36, scope: !6560)
!6565 = !DILocation(line: 319, column: 40, scope: !6560)
!6566 = !DILocation(line: 319, column: 49, scope: !6560)
!6567 = !DILocation(line: 319, column: 64, scope: !6560)
!6568 = !DILocation(line: 320, column: 4, scope: !6560)
!6569 = !DILocation(line: 320, column: 10, scope: !6560)
!6570 = !DILocation(line: 320, column: 21, scope: !6560)
!6571 = !DILocation(line: 319, column: 6, scope: !6306)
!6572 = !DILocation(line: 321, column: 3, scope: !6560)
!6573 = !DILocation(line: 321, column: 7, scope: !6560)
!6574 = !DILocation(line: 321, column: 15, scope: !6560)
!6575 = !DILocation(line: 327, column: 6, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 327, column: 6)
!6577 = !DILocation(line: 327, column: 10, scope: !6576)
!6578 = !DILocation(line: 327, column: 17, scope: !6576)
!6579 = !DILocation(line: 327, column: 6, scope: !6306)
!6580 = !DILocation(line: 328, column: 3, scope: !6576)
!6581 = !DILocation(line: 328, column: 9, scope: !6576)
!6582 = !DILocation(line: 328, column: 18, scope: !6576)
!6583 = !DILocation(line: 334, column: 2, scope: !6306)
!6584 = distinct !DISubprogram(name: "target_alloc", scope: !3, file: !3, line: 337, type: !5141, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6585 = !DILocalVariable(name: "starget", arg: 1, scope: !6584, file: !3, line: 337, type: !4931)
!6586 = !DILocation(line: 337, column: 45, scope: !6584)
!6587 = !DILocalVariable(name: "us", scope: !6584, file: !3, line: 339, type: !5288)
!6588 = !DILocation(line: 339, column: 18, scope: !6584)
!6589 = !DILocation(line: 339, column: 47, scope: !6584)
!6590 = !DILocation(line: 339, column: 56, scope: !6584)
!6591 = !DILocation(line: 339, column: 60, scope: !6584)
!6592 = !DILocation(line: 339, column: 34, scope: !6584)
!6593 = !DILocation(line: 339, column: 23, scope: !6584)
!6594 = !DILocation(line: 347, column: 2, scope: !6584)
!6595 = !DILocation(line: 347, column: 11, scope: !6584)
!6596 = !DILocation(line: 347, column: 26, scope: !6584)
!6597 = !DILocation(line: 358, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 358, column: 6)
!6599 = !DILocation(line: 358, column: 10, scope: !6598)
!6600 = !DILocation(line: 358, column: 19, scope: !6598)
!6601 = !DILocation(line: 358, column: 6, scope: !6584)
!6602 = !DILocation(line: 359, column: 3, scope: !6598)
!6603 = !DILocation(line: 359, column: 12, scope: !6598)
!6604 = !DILocation(line: 359, column: 30, scope: !6598)
!6605 = !DILocation(line: 361, column: 2, scope: !6584)
!6606 = distinct !DISubprogram(name: "show_info", scope: !3, file: !3, line: 520, type: !5174, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6607 = !DILocalVariable(name: "m", arg: 1, scope: !6606, file: !3, line: 520, type: !883)
!6608 = !DILocation(line: 520, column: 40, scope: !6606)
!6609 = !DILocalVariable(name: "host", arg: 2, scope: !6606, file: !3, line: 520, type: !254)
!6610 = !DILocation(line: 520, column: 61, scope: !6606)
!6611 = !DILocalVariable(name: "us", scope: !6606, file: !3, line: 522, type: !5288)
!6612 = !DILocation(line: 522, column: 18, scope: !6606)
!6613 = !DILocation(line: 522, column: 34, scope: !6606)
!6614 = !DILocation(line: 522, column: 23, scope: !6606)
!6615 = !DILocalVariable(name: "string", scope: !6606, file: !3, line: 523, type: !709)
!6616 = !DILocation(line: 523, column: 14, scope: !6606)
!6617 = !DILocation(line: 526, column: 13, scope: !6606)
!6618 = !DILocation(line: 526, column: 49, scope: !6606)
!6619 = !DILocation(line: 526, column: 55, scope: !6606)
!6620 = !DILocation(line: 526, column: 2, scope: !6606)
!6621 = !DILocation(line: 529, column: 6, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 529, column: 6)
!6623 = !DILocation(line: 529, column: 10, scope: !6622)
!6624 = !DILocation(line: 529, column: 20, scope: !6622)
!6625 = !DILocation(line: 529, column: 6, scope: !6606)
!6626 = !DILocation(line: 530, column: 12, scope: !6622)
!6627 = !DILocation(line: 530, column: 16, scope: !6622)
!6628 = !DILocation(line: 530, column: 26, scope: !6622)
!6629 = !DILocation(line: 530, column: 10, scope: !6622)
!6630 = !DILocation(line: 530, column: 3, scope: !6622)
!6631 = !DILocation(line: 531, column: 11, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 531, column: 11)
!6633 = !DILocation(line: 531, column: 15, scope: !6632)
!6634 = !DILocation(line: 531, column: 28, scope: !6632)
!6635 = !DILocation(line: 531, column: 11, scope: !6622)
!6636 = !DILocation(line: 532, column: 12, scope: !6632)
!6637 = !DILocation(line: 532, column: 16, scope: !6632)
!6638 = !DILocation(line: 532, column: 29, scope: !6632)
!6639 = !DILocation(line: 532, column: 10, scope: !6632)
!6640 = !DILocation(line: 532, column: 3, scope: !6632)
!6641 = !DILocation(line: 534, column: 10, scope: !6632)
!6642 = !DILocation(line: 535, column: 13, scope: !6606)
!6643 = !DILocation(line: 535, column: 39, scope: !6606)
!6644 = !DILocation(line: 535, column: 2, scope: !6606)
!6645 = !DILocation(line: 536, column: 6, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 536, column: 6)
!6647 = !DILocation(line: 536, column: 10, scope: !6646)
!6648 = !DILocation(line: 536, column: 20, scope: !6646)
!6649 = !DILocation(line: 536, column: 6, scope: !6606)
!6650 = !DILocation(line: 537, column: 12, scope: !6646)
!6651 = !DILocation(line: 537, column: 16, scope: !6646)
!6652 = !DILocation(line: 537, column: 26, scope: !6646)
!6653 = !DILocation(line: 537, column: 10, scope: !6646)
!6654 = !DILocation(line: 537, column: 3, scope: !6646)
!6655 = !DILocation(line: 538, column: 11, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 538, column: 11)
!6657 = !DILocation(line: 538, column: 15, scope: !6656)
!6658 = !DILocation(line: 538, column: 28, scope: !6656)
!6659 = !DILocation(line: 538, column: 11, scope: !6646)
!6660 = !DILocation(line: 539, column: 12, scope: !6656)
!6661 = !DILocation(line: 539, column: 16, scope: !6656)
!6662 = !DILocation(line: 539, column: 29, scope: !6656)
!6663 = !DILocation(line: 539, column: 10, scope: !6656)
!6664 = !DILocation(line: 539, column: 3, scope: !6656)
!6665 = !DILocation(line: 541, column: 10, scope: !6656)
!6666 = !DILocation(line: 542, column: 13, scope: !6606)
!6667 = !DILocation(line: 542, column: 39, scope: !6606)
!6668 = !DILocation(line: 542, column: 2, scope: !6606)
!6669 = !DILocation(line: 543, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 543, column: 6)
!6671 = !DILocation(line: 543, column: 10, scope: !6670)
!6672 = !DILocation(line: 543, column: 20, scope: !6670)
!6673 = !DILocation(line: 543, column: 6, scope: !6606)
!6674 = !DILocation(line: 544, column: 12, scope: !6670)
!6675 = !DILocation(line: 544, column: 16, scope: !6670)
!6676 = !DILocation(line: 544, column: 26, scope: !6670)
!6677 = !DILocation(line: 544, column: 10, scope: !6670)
!6678 = !DILocation(line: 544, column: 3, scope: !6670)
!6679 = !DILocation(line: 546, column: 10, scope: !6670)
!6680 = !DILocation(line: 547, column: 13, scope: !6606)
!6681 = !DILocation(line: 547, column: 39, scope: !6606)
!6682 = !DILocation(line: 547, column: 2, scope: !6606)
!6683 = !DILocation(line: 550, column: 13, scope: !6606)
!6684 = !DILocation(line: 550, column: 39, scope: !6606)
!6685 = !DILocation(line: 550, column: 43, scope: !6606)
!6686 = !DILocation(line: 550, column: 2, scope: !6606)
!6687 = !DILocation(line: 551, column: 13, scope: !6606)
!6688 = !DILocation(line: 551, column: 39, scope: !6606)
!6689 = !DILocation(line: 551, column: 43, scope: !6606)
!6690 = !DILocation(line: 551, column: 2, scope: !6606)
!6691 = !DILocation(line: 554, column: 13, scope: !6606)
!6692 = !DILocation(line: 554, column: 2, scope: !6606)
!6693 = !DILocation(line: 558, column: 1, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6695 = !DILocation(line: 558, column: 1, scope: !6606)
!6696 = !DILocation(line: 558, column: 1, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6698 = !DILocation(line: 558, column: 1, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6700 = !DILocation(line: 558, column: 1, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6702 = !DILocation(line: 558, column: 1, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6704 = !DILocation(line: 558, column: 1, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6706 = !DILocation(line: 558, column: 1, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6708 = !DILocation(line: 558, column: 1, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6710 = !DILocation(line: 558, column: 1, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6712 = !DILocation(line: 558, column: 1, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6714 = !DILocation(line: 558, column: 1, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6716 = !DILocation(line: 558, column: 1, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6718 = !DILocation(line: 558, column: 1, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6720 = !DILocation(line: 558, column: 1, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6722 = !DILocation(line: 558, column: 1, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6724 = !DILocation(line: 558, column: 1, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6726 = !DILocation(line: 558, column: 1, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6728 = !DILocation(line: 558, column: 1, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6730 = !DILocation(line: 558, column: 1, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6732 = !DILocation(line: 558, column: 1, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6734 = !DILocation(line: 558, column: 1, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6736 = !DILocation(line: 558, column: 1, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6738 = !DILocation(line: 558, column: 1, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6740 = !DILocation(line: 558, column: 1, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6742 = !DILocation(line: 558, column: 1, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6744 = !DILocation(line: 558, column: 1, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6746 = !DILocation(line: 558, column: 1, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6748 = !DILocation(line: 558, column: 1, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6750 = !DILocation(line: 558, column: 1, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6752 = !DILocation(line: 558, column: 1, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 558, column: 1)
!6754 = !DILocation(line: 560, column: 11, scope: !6606)
!6755 = !DILocation(line: 560, column: 2, scope: !6606)
!6756 = !DILocation(line: 561, column: 2, scope: !6606)
!6757 = distinct !DISubprogram(name: "write_info", scope: !3, file: !3, line: 514, type: !5178, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6758 = !DILocalVariable(name: "host", arg: 1, scope: !6757, file: !3, line: 514, type: !254)
!6759 = !DILocation(line: 514, column: 41, scope: !6757)
!6760 = !DILocalVariable(name: "buffer", arg: 2, scope: !6757, file: !3, line: 514, type: !735)
!6761 = !DILocation(line: 514, column: 53, scope: !6757)
!6762 = !DILocalVariable(name: "length", arg: 3, scope: !6757, file: !3, line: 514, type: !331)
!6763 = !DILocation(line: 514, column: 65, scope: !6757)
!6764 = !DILocation(line: 517, column: 9, scope: !6757)
!6765 = !DILocation(line: 517, column: 2, scope: !6757)
!6766 = distinct !DISubprogram(name: "host_to_us", scope: !5290, file: !5290, line: 157, type: !6767, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6767 = !DISubroutineType(types: !6768)
!6768 = !{!5288, !254}
!6769 = !DILocalVariable(name: "host", arg: 1, scope: !6766, file: !5290, line: 157, type: !254)
!6770 = !DILocation(line: 157, column: 60, scope: !6766)
!6771 = !DILocation(line: 158, column: 28, scope: !6766)
!6772 = !DILocation(line: 158, column: 34, scope: !6766)
!6773 = !DILocation(line: 158, column: 9, scope: !6766)
!6774 = !DILocation(line: 158, column: 2, scope: !6766)
!6775 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6077, file: !6077, line: 666, type: !6776, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{!313}
!6778 = !DILocalVariable(name: "f", scope: !6775, file: !6077, line: 668, type: !313)
!6779 = !DILocation(line: 668, column: 16, scope: !6775)
!6780 = !DILocation(line: 670, column: 6, scope: !6775)
!6781 = !DILocation(line: 670, column: 4, scope: !6775)
!6782 = !DILocation(line: 671, column: 2, scope: !6775)
!6783 = !DILocation(line: 672, column: 9, scope: !6775)
!6784 = !DILocation(line: 672, column: 2, scope: !6775)
!6785 = distinct !DISubprogram(name: "queuecommand_lck", scope: !3, file: !3, line: 366, type: !6786, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{!331, !5036, !5093}
!6788 = !DILocalVariable(name: "srb", arg: 1, scope: !6785, file: !3, line: 366, type: !5036)
!6789 = !DILocation(line: 366, column: 47, scope: !6785)
!6790 = !DILocalVariable(name: "done", arg: 2, scope: !6785, file: !3, line: 367, type: !5093)
!6791 = !DILocation(line: 367, column: 11, scope: !6785)
!6792 = !DILocalVariable(name: "us", scope: !6785, file: !3, line: 369, type: !5288)
!6793 = !DILocation(line: 369, column: 18, scope: !6785)
!6794 = !DILocation(line: 369, column: 34, scope: !6785)
!6795 = !DILocation(line: 369, column: 39, scope: !6785)
!6796 = !DILocation(line: 369, column: 47, scope: !6785)
!6797 = !DILocation(line: 369, column: 23, scope: !6785)
!6798 = !DILocation(line: 372, column: 6, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 372, column: 6)
!6800 = !DILocation(line: 372, column: 10, scope: !6799)
!6801 = !DILocation(line: 372, column: 14, scope: !6799)
!6802 = !DILocation(line: 372, column: 6, scope: !6785)
!6803 = !DILocation(line: 373, column: 3, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6799, file: !3, line: 372, column: 23)
!6805 = !DILocation(line: 375, column: 3, scope: !6804)
!6806 = !DILocation(line: 379, column: 40, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 379, column: 6)
!6808 = !DILocation(line: 379, column: 44, scope: !6807)
!6809 = !DILocation(line: 379, column: 6, scope: !6807)
!6810 = !DILocation(line: 379, column: 6, scope: !6785)
!6811 = !DILocation(line: 380, column: 3, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 379, column: 53)
!6813 = !DILocation(line: 380, column: 3, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6812, file: !3, line: 380, column: 3)
!6815 = !DILocation(line: 381, column: 3, scope: !6812)
!6816 = !DILocation(line: 381, column: 8, scope: !6812)
!6817 = !DILocation(line: 381, column: 15, scope: !6812)
!6818 = !DILocation(line: 382, column: 3, scope: !6812)
!6819 = !DILocation(line: 382, column: 8, scope: !6812)
!6820 = !DILocation(line: 383, column: 3, scope: !6812)
!6821 = !DILocation(line: 386, column: 7, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6785, file: !3, line: 386, column: 6)
!6823 = !DILocation(line: 386, column: 11, scope: !6822)
!6824 = !DILocation(line: 386, column: 18, scope: !6822)
!6825 = !DILocation(line: 386, column: 37, scope: !6822)
!6826 = !DILocation(line: 387, column: 5, scope: !6822)
!6827 = !DILocation(line: 387, column: 10, scope: !6822)
!6828 = !DILocation(line: 387, column: 18, scope: !6822)
!6829 = !DILocation(line: 387, column: 28, scope: !6822)
!6830 = !DILocation(line: 387, column: 31, scope: !6822)
!6831 = !DILocation(line: 387, column: 36, scope: !6822)
!6832 = !DILocation(line: 387, column: 44, scope: !6822)
!6833 = !DILocation(line: 386, column: 6, scope: !6785)
!6834 = !DILocation(line: 388, column: 10, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6822, file: !3, line: 387, column: 56)
!6836 = !DILocation(line: 388, column: 15, scope: !6835)
!6837 = !DILocation(line: 388, column: 3, scope: !6835)
!6838 = !DILocation(line: 390, column: 3, scope: !6835)
!6839 = !DILocation(line: 390, column: 8, scope: !6835)
!6840 = !DILocation(line: 390, column: 15, scope: !6835)
!6841 = !DILocation(line: 391, column: 3, scope: !6835)
!6842 = !DILocation(line: 391, column: 8, scope: !6835)
!6843 = !DILocation(line: 392, column: 3, scope: !6835)
!6844 = !DILocation(line: 396, column: 19, scope: !6785)
!6845 = !DILocation(line: 396, column: 2, scope: !6785)
!6846 = !DILocation(line: 396, column: 7, scope: !6785)
!6847 = !DILocation(line: 396, column: 17, scope: !6785)
!6848 = !DILocation(line: 397, column: 12, scope: !6785)
!6849 = !DILocation(line: 397, column: 2, scope: !6785)
!6850 = !DILocation(line: 397, column: 6, scope: !6785)
!6851 = !DILocation(line: 397, column: 10, scope: !6785)
!6852 = !DILocation(line: 398, column: 12, scope: !6785)
!6853 = !DILocation(line: 398, column: 16, scope: !6785)
!6854 = !DILocation(line: 398, column: 2, scope: !6785)
!6855 = !DILocation(line: 400, column: 2, scope: !6785)
!6856 = !DILocation(line: 401, column: 1, scope: !6785)
!6857 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6077, file: !6077, line: 646, type: !6776, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6858 = !DILocalVariable(name: "__ret", scope: !6859, file: !6077, line: 648, type: !313)
!6859 = distinct !DILexicalBlock(scope: !6857, file: !6077, line: 648, column: 9)
!6860 = !DILocation(line: 648, column: 9, scope: !6859)
!6861 = !DILocalVariable(name: "__edi", scope: !6859, file: !6077, line: 648, type: !313)
!6862 = !DILocalVariable(name: "__esi", scope: !6859, file: !6077, line: 648, type: !313)
!6863 = !DILocalVariable(name: "__edx", scope: !6859, file: !6077, line: 648, type: !313)
!6864 = !DILocalVariable(name: "__ecx", scope: !6859, file: !6077, line: 648, type: !313)
!6865 = !DILocalVariable(name: "__eax", scope: !6859, file: !6077, line: 648, type: !313)
!6866 = !DILocation(line: 648, column: 9, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6868, file: !6077, line: 648, column: 9)
!6868 = distinct !DILexicalBlock(scope: !6859, file: !6077, line: 648, column: 9)
!6869 = !{i32 -2145737862, i32 -2145735547, i32 -2145735313, i32 -2145735262, i32 -2145735234, i32 -2145735209, i32 -2145735525, i32 -2145735512, i32 -2145735074, i32 -2145734955, i32 -2145735420, i32 -2145735393, i32 -2145735365, i32 -2145735335}
!6870 = !DILocalVariable(name: "__mask", scope: !6871, file: !6077, line: 648, type: !313)
!6871 = distinct !DILexicalBlock(scope: !6867, file: !6077, line: 648, column: 9)
!6872 = !DILocation(line: 648, column: 9, scope: !6871)
!6873 = !DILocation(line: 648, column: 9, scope: !6868)
!6874 = !DILocation(line: 648, column: 2, scope: !6857)
!6875 = distinct !DISubprogram(name: "test_bit", scope: !6876, file: !6876, line: 132, type: !6877, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6876 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6877 = !DISubroutineType(types: !6878)
!6878 = !{!754, !319, !6879}
!6879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6880, size: 64)
!6880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6881)
!6881 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !313)
!6882 = !DILocalVariable(name: "nr", arg: 1, scope: !6883, file: !6884, line: 210, type: !319)
!6883 = distinct !DISubprogram(name: "variable_test_bit", scope: !6884, file: !6884, line: 210, type: !6877, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6884 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6885 = !DILocation(line: 210, column: 52, scope: !6883, inlinedAt: !6886)
!6886 = distinct !DILocation(line: 135, column: 9, scope: !6875)
!6887 = !DILocalVariable(name: "addr", arg: 2, scope: !6883, file: !6884, line: 210, type: !6879)
!6888 = !DILocation(line: 210, column: 86, scope: !6883, inlinedAt: !6886)
!6889 = !DILocalVariable(name: "oldbit", scope: !6883, file: !6884, line: 212, type: !754)
!6890 = !DILocation(line: 212, column: 7, scope: !6883, inlinedAt: !6886)
!6891 = !DILocalVariable(name: "nr", arg: 1, scope: !6892, file: !6884, line: 204, type: !319)
!6892 = distinct !DISubprogram(name: "constant_test_bit", scope: !6884, file: !6884, line: 204, type: !6877, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6893 = !DILocation(line: 204, column: 52, scope: !6892, inlinedAt: !6894)
!6894 = distinct !DILocation(line: 135, column: 9, scope: !6875)
!6895 = !DILocalVariable(name: "addr", arg: 2, scope: !6892, file: !6884, line: 204, type: !6879)
!6896 = !DILocation(line: 204, column: 86, scope: !6892, inlinedAt: !6894)
!6897 = !DILocalVariable(name: "v", arg: 1, scope: !6898, file: !6899, line: 69, type: !6902)
!6898 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6899, file: !6899, line: 69, type: !6900, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6899 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6900 = !DISubroutineType(types: !6901)
!6901 = !{null, !6902, !889}
!6902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6903, size: 64)
!6903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6904)
!6904 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6905 = !DILocation(line: 69, column: 73, scope: !6898, inlinedAt: !6906)
!6906 = distinct !DILocation(line: 134, column: 2, scope: !6875)
!6907 = !DILocalVariable(name: "size", arg: 2, scope: !6898, file: !6899, line: 69, type: !889)
!6908 = !DILocation(line: 69, column: 83, scope: !6898, inlinedAt: !6906)
!6909 = !DILocalVariable(name: "nr", arg: 1, scope: !6875, file: !6876, line: 132, type: !319)
!6910 = !DILocation(line: 132, column: 34, scope: !6875)
!6911 = !DILocalVariable(name: "addr", arg: 2, scope: !6875, file: !6876, line: 132, type: !6879)
!6912 = !DILocation(line: 132, column: 68, scope: !6875)
!6913 = !DILocation(line: 134, column: 25, scope: !6875)
!6914 = !DILocation(line: 134, column: 32, scope: !6875)
!6915 = !DILocation(line: 134, column: 30, scope: !6875)
!6916 = !DILocation(line: 71, column: 19, scope: !6898, inlinedAt: !6906)
!6917 = !DILocation(line: 71, column: 22, scope: !6898, inlinedAt: !6906)
!6918 = !DILocation(line: 71, column: 2, scope: !6898, inlinedAt: !6906)
!6919 = !DILocation(line: 72, column: 2, scope: !6898, inlinedAt: !6906)
!6920 = !DILocation(line: 135, column: 9, scope: !6875)
!6921 = !DILocation(line: 206, column: 19, scope: !6892, inlinedAt: !6894)
!6922 = !DILocation(line: 206, column: 22, scope: !6892, inlinedAt: !6894)
!6923 = !DILocation(line: 206, column: 15, scope: !6892, inlinedAt: !6894)
!6924 = !DILocation(line: 207, column: 4, scope: !6892, inlinedAt: !6894)
!6925 = !DILocation(line: 207, column: 9, scope: !6892, inlinedAt: !6894)
!6926 = !DILocation(line: 207, column: 12, scope: !6892, inlinedAt: !6894)
!6927 = !DILocation(line: 206, column: 44, scope: !6892, inlinedAt: !6894)
!6928 = !DILocation(line: 207, column: 37, scope: !6892, inlinedAt: !6894)
!6929 = !DILocation(line: 217, column: 33, scope: !6883, inlinedAt: !6886)
!6930 = !DILocation(line: 217, column: 46, scope: !6883, inlinedAt: !6886)
!6931 = !DILocation(line: 214, column: 2, scope: !6883, inlinedAt: !6886)
!6932 = !{i32 -2147041960, i32 -2147041900}
!6933 = !DILocation(line: 219, column: 9, scope: !6883, inlinedAt: !6886)
!6934 = !DILocation(line: 135, column: 2, scope: !6875)
!6935 = distinct !DISubprogram(name: "kasan_check_read", scope: !6936, file: !6936, line: 34, type: !6937, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6936 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6937 = !DISubroutineType(types: !6938)
!6938 = !{!754, !6902, !7}
!6939 = !DILocalVariable(name: "p", arg: 1, scope: !6935, file: !6936, line: 34, type: !6902)
!6940 = !DILocation(line: 34, column: 58, scope: !6935)
!6941 = !DILocalVariable(name: "size", arg: 2, scope: !6935, file: !6936, line: 34, type: !7)
!6942 = !DILocation(line: 34, column: 74, scope: !6935)
!6943 = !DILocation(line: 36, column: 2, scope: !6935)
!6944 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6945, file: !6945, line: 178, type: !6946, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6945 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6946 = !DISubroutineType(types: !6947)
!6947 = !{null, !6902, !889, !331}
!6948 = !DILocalVariable(name: "ptr", arg: 1, scope: !6944, file: !6945, line: 178, type: !6902)
!6949 = !DILocation(line: 178, column: 60, scope: !6944)
!6950 = !DILocalVariable(name: "size", arg: 2, scope: !6944, file: !6945, line: 178, type: !889)
!6951 = !DILocation(line: 178, column: 72, scope: !6944)
!6952 = !DILocalVariable(name: "type", arg: 3, scope: !6944, file: !6945, line: 179, type: !331)
!6953 = !DILocation(line: 179, column: 15, scope: !6944)
!6954 = !DILocation(line: 179, column: 23, scope: !6944)
!6955 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6077, file: !6077, line: 651, type: !5924, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6956 = !DILocalVariable(name: "f", arg: 1, scope: !6955, file: !6077, line: 651, type: !313)
!6957 = !DILocation(line: 651, column: 65, scope: !6955)
!6958 = !DILocalVariable(name: "__edi", scope: !6959, file: !6077, line: 653, type: !313)
!6959 = distinct !DILexicalBlock(scope: !6955, file: !6077, line: 653, column: 2)
!6960 = !DILocation(line: 653, column: 2, scope: !6959)
!6961 = !DILocalVariable(name: "__esi", scope: !6959, file: !6077, line: 653, type: !313)
!6962 = !DILocalVariable(name: "__edx", scope: !6959, file: !6077, line: 653, type: !313)
!6963 = !DILocalVariable(name: "__ecx", scope: !6959, file: !6077, line: 653, type: !313)
!6964 = !DILocalVariable(name: "__eax", scope: !6959, file: !6077, line: 653, type: !313)
!6965 = !{i32 -2145733395, i32 -2145732645, i32 -2145732411, i32 -2145732360, i32 -2145732332, i32 -2145732307, i32 -2145732623, i32 -2145732610, i32 -2145732172, i32 -2145732053, i32 -2145732518, i32 -2145732491, i32 -2145732463, i32 -2145732433}
!6966 = !DILocation(line: 654, column: 1, scope: !6955)
!6967 = distinct !DISubprogram(name: "set_bit", scope: !6968, file: !6968, line: 26, type: !6969, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6968 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6969 = !DISubroutineType(types: !6970)
!6970 = !{null, !319, !6971}
!6971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6881, size: 64)
!6972 = !DILocalVariable(name: "nr", arg: 1, scope: !6973, file: !6884, line: 52, type: !319)
!6973 = distinct !DISubprogram(name: "arch_set_bit", scope: !6884, file: !6884, line: 52, type: !6969, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6974 = !DILocation(line: 52, column: 19, scope: !6973, inlinedAt: !6975)
!6975 = distinct !DILocation(line: 29, column: 2, scope: !6967)
!6976 = !DILocalVariable(name: "addr", arg: 2, scope: !6973, file: !6884, line: 52, type: !6971)
!6977 = !DILocation(line: 52, column: 47, scope: !6973, inlinedAt: !6975)
!6978 = !DILocalVariable(name: "v", arg: 1, scope: !6979, file: !6899, line: 84, type: !6902)
!6979 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6899, file: !6899, line: 84, type: !6900, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!6980 = !DILocation(line: 84, column: 74, scope: !6979, inlinedAt: !6981)
!6981 = distinct !DILocation(line: 28, column: 2, scope: !6967)
!6982 = !DILocalVariable(name: "size", arg: 2, scope: !6979, file: !6899, line: 84, type: !889)
!6983 = !DILocation(line: 84, column: 84, scope: !6979, inlinedAt: !6981)
!6984 = !DILocalVariable(name: "nr", arg: 1, scope: !6967, file: !6968, line: 26, type: !319)
!6985 = !DILocation(line: 26, column: 33, scope: !6967)
!6986 = !DILocalVariable(name: "addr", arg: 2, scope: !6967, file: !6968, line: 26, type: !6971)
!6987 = !DILocation(line: 26, column: 61, scope: !6967)
!6988 = !DILocation(line: 28, column: 26, scope: !6967)
!6989 = !DILocation(line: 28, column: 33, scope: !6967)
!6990 = !DILocation(line: 28, column: 31, scope: !6967)
!6991 = !DILocation(line: 86, column: 20, scope: !6979, inlinedAt: !6981)
!6992 = !DILocation(line: 86, column: 23, scope: !6979, inlinedAt: !6981)
!6993 = !DILocation(line: 86, column: 2, scope: !6979, inlinedAt: !6981)
!6994 = !DILocation(line: 87, column: 2, scope: !6979, inlinedAt: !6981)
!6995 = !DILocation(line: 29, column: 15, scope: !6967)
!6996 = !DILocation(line: 29, column: 19, scope: !6967)
!6997 = !DILocation(line: 54, column: 27, scope: !6998, inlinedAt: !6975)
!6998 = distinct !DILexicalBlock(scope: !6973, file: !6884, line: 54, column: 6)
!6999 = !DILocation(line: 54, column: 6, scope: !6998, inlinedAt: !6975)
!7000 = !DILocation(line: 54, column: 6, scope: !6973, inlinedAt: !6975)
!7001 = !DILocation(line: 56, column: 6, scope: !7002, inlinedAt: !6975)
!7002 = distinct !DILexicalBlock(scope: !6998, file: !6884, line: 54, column: 32)
!7003 = !DILocation(line: 57, column: 12, scope: !7002, inlinedAt: !6975)
!7004 = !DILocation(line: 55, column: 3, scope: !7002, inlinedAt: !6975)
!7005 = !{i32 -2147051208}
!7006 = !DILocation(line: 59, column: 2, scope: !7002, inlinedAt: !6975)
!7007 = !DILocation(line: 61, column: 8, scope: !7008, inlinedAt: !6975)
!7008 = distinct !DILexicalBlock(scope: !6998, file: !6884, line: 59, column: 9)
!7009 = !DILocation(line: 61, column: 32, scope: !7008, inlinedAt: !6975)
!7010 = !DILocation(line: 60, column: 3, scope: !7008, inlinedAt: !6975)
!7011 = !{i32 -2147051076}
!7012 = !DILocation(line: 30, column: 1, scope: !6967)
!7013 = distinct !DISubprogram(name: "kasan_check_write", scope: !6936, file: !6936, line: 38, type: !6937, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7014 = !DILocalVariable(name: "p", arg: 1, scope: !7013, file: !6936, line: 38, type: !6902)
!7015 = !DILocation(line: 38, column: 59, scope: !7013)
!7016 = !DILocalVariable(name: "size", arg: 2, scope: !7013, file: !6936, line: 38, type: !7)
!7017 = !DILocation(line: 38, column: 75, scope: !7013)
!7018 = !DILocation(line: 40, column: 2, scope: !7013)
!7019 = distinct !DISubprogram(name: "queue_max_hw_sectors", scope: !64, file: !64, line: 1396, type: !7020, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7020 = !DISubroutineType(types: !7021)
!7021 = !{!7, !7022}
!7022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7023, size: 64)
!7023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2741)
!7024 = !DILocalVariable(name: "q", arg: 1, scope: !7019, file: !64, line: 1396, type: !7022)
!7025 = !DILocation(line: 1396, column: 77, scope: !7019)
!7026 = !DILocation(line: 1398, column: 9, scope: !7019)
!7027 = !DILocation(line: 1398, column: 12, scope: !7019)
!7028 = !DILocation(line: 1398, column: 19, scope: !7019)
!7029 = !DILocation(line: 1398, column: 2, scope: !7019)
!7030 = distinct !DISubprogram(name: "hcd_uses_dma", scope: !247, file: !247, line: 426, type: !7031, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7031 = !DISubroutineType(types: !7032)
!7032 = !{!754, !5745}
!7033 = !DILocalVariable(name: "hcd", arg: 1, scope: !7030, file: !247, line: 426, type: !5745)
!7034 = !DILocation(line: 426, column: 49, scope: !7030)
!7035 = !DILocation(line: 428, column: 40, scope: !7030)
!7036 = !DILocation(line: 428, column: 45, scope: !7030)
!7037 = !DILocation(line: 428, column: 53, scope: !7030)
!7038 = !DILocation(line: 428, column: 59, scope: !7030)
!7039 = !DILocation(line: 428, column: 36, scope: !7030)
!7040 = !DILocation(line: 428, column: 2, scope: !7030)
!7041 = distinct !DISubprogram(name: "bus_to_hcd", scope: !247, file: !247, line: 241, type: !7042, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7042 = !DISubroutineType(types: !7043)
!7043 = !{!5745, !5320}
!7044 = !DILocalVariable(name: "bus", arg: 1, scope: !7041, file: !247, line: 241, type: !5320)
!7045 = !DILocation(line: 241, column: 58, scope: !7041)
!7046 = !DILocalVariable(name: "__mptr", scope: !7047, file: !247, line: 243, type: !253)
!7047 = distinct !DILexicalBlock(scope: !7041, file: !247, line: 243, column: 9)
!7048 = !DILocation(line: 243, column: 9, scope: !7047)
!7049 = !DILocation(line: 243, column: 9, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !7047, file: !247, line: 243, column: 9)
!7051 = !DILocation(line: 243, column: 2, scope: !7041)
!7052 = distinct !DISubprogram(name: "dev_to_shost", scope: !169, file: !169, line: 717, type: !7053, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7053 = !DISubroutineType(types: !7054)
!7054 = !{!254, !2044}
!7055 = !DILocalVariable(name: "dev", arg: 1, scope: !7052, file: !169, line: 717, type: !2044)
!7056 = !DILocation(line: 717, column: 61, scope: !7052)
!7057 = !DILocation(line: 719, column: 2, scope: !7052)
!7058 = !DILocation(line: 719, column: 30, scope: !7052)
!7059 = !DILocation(line: 719, column: 10, scope: !7052)
!7060 = !DILocation(line: 719, column: 9, scope: !7052)
!7061 = !DILocation(line: 720, column: 8, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !7063, file: !169, line: 720, column: 7)
!7063 = distinct !DILexicalBlock(scope: !7052, file: !169, line: 719, column: 36)
!7064 = !DILocation(line: 720, column: 13, scope: !7062)
!7065 = !DILocation(line: 720, column: 7, scope: !7063)
!7066 = !DILocation(line: 721, column: 4, scope: !7062)
!7067 = !DILocation(line: 722, column: 9, scope: !7063)
!7068 = !DILocation(line: 722, column: 14, scope: !7063)
!7069 = !DILocation(line: 722, column: 7, scope: !7063)
!7070 = distinct !{!7070, !7057, !7071}
!7071 = !DILocation(line: 723, column: 2, scope: !7052)
!7072 = !DILocalVariable(name: "__mptr", scope: !7073, file: !169, line: 724, type: !253)
!7073 = distinct !DILexicalBlock(scope: !7052, file: !169, line: 724, column: 9)
!7074 = !DILocation(line: 724, column: 9, scope: !7073)
!7075 = !DILocation(line: 724, column: 9, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7073, file: !169, line: 724, column: 9)
!7077 = !DILocation(line: 724, column: 2, scope: !7052)
!7078 = !DILocation(line: 725, column: 1, scope: !7052)
!7079 = distinct !DISubprogram(name: "max_sectors_show", scope: !3, file: !3, line: 569, type: !5220, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7080 = !DILocalVariable(name: "dev", arg: 1, scope: !7079, file: !3, line: 569, type: !2044)
!7081 = !DILocation(line: 569, column: 48, scope: !7079)
!7082 = !DILocalVariable(name: "attr", arg: 2, scope: !7079, file: !3, line: 569, type: !5214)
!7083 = !DILocation(line: 569, column: 78, scope: !7079)
!7084 = !DILocalVariable(name: "buf", arg: 3, scope: !7079, file: !3, line: 569, type: !735)
!7085 = !DILocation(line: 569, column: 90, scope: !7079)
!7086 = !DILocalVariable(name: "sdev", scope: !7079, file: !3, line: 571, type: !4883)
!7087 = !DILocation(line: 571, column: 22, scope: !7079)
!7088 = !DILocalVariable(name: "__mptr", scope: !7089, file: !3, line: 571, type: !253)
!7089 = distinct !DILexicalBlock(scope: !7079, file: !3, line: 571, column: 29)
!7090 = !DILocation(line: 571, column: 29, scope: !7089)
!7091 = !DILocation(line: 571, column: 29, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !7089, file: !3, line: 571, column: 29)
!7093 = !DILocation(line: 573, column: 17, scope: !7079)
!7094 = !DILocation(line: 573, column: 51, scope: !7079)
!7095 = !DILocation(line: 573, column: 57, scope: !7079)
!7096 = !DILocation(line: 573, column: 30, scope: !7079)
!7097 = !DILocation(line: 573, column: 9, scope: !7079)
!7098 = !DILocation(line: 573, column: 2, scope: !7079)
!7099 = distinct !DISubprogram(name: "max_sectors_store", scope: !3, file: !3, line: 577, type: !5224, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !281)
!7100 = !DILocalVariable(name: "dev", arg: 1, scope: !7099, file: !3, line: 577, type: !2044)
!7101 = !DILocation(line: 577, column: 49, scope: !7099)
!7102 = !DILocalVariable(name: "attr", arg: 2, scope: !7099, file: !3, line: 577, type: !5214)
!7103 = !DILocation(line: 577, column: 79, scope: !7099)
!7104 = !DILocalVariable(name: "buf", arg: 3, scope: !7099, file: !3, line: 577, type: !709)
!7105 = !DILocation(line: 577, column: 97, scope: !7099)
!7106 = !DILocalVariable(name: "count", arg: 4, scope: !7099, file: !3, line: 578, type: !889)
!7107 = !DILocation(line: 578, column: 10, scope: !7099)
!7108 = !DILocalVariable(name: "sdev", scope: !7099, file: !3, line: 580, type: !4883)
!7109 = !DILocation(line: 580, column: 22, scope: !7099)
!7110 = !DILocalVariable(name: "__mptr", scope: !7111, file: !3, line: 580, type: !253)
!7111 = distinct !DILexicalBlock(scope: !7099, file: !3, line: 580, column: 29)
!7112 = !DILocation(line: 580, column: 29, scope: !7111)
!7113 = !DILocation(line: 580, column: 29, scope: !7114)
!7114 = distinct !DILexicalBlock(scope: !7111, file: !3, line: 580, column: 29)
!7115 = !DILocalVariable(name: "ms", scope: !7099, file: !3, line: 581, type: !379)
!7116 = !DILocation(line: 581, column: 17, scope: !7099)
!7117 = !DILocation(line: 583, column: 13, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7099, file: !3, line: 583, column: 6)
!7119 = !DILocation(line: 583, column: 6, scope: !7118)
!7120 = !DILocation(line: 583, column: 30, scope: !7118)
!7121 = !DILocation(line: 583, column: 6, scope: !7099)
!7122 = !DILocation(line: 584, column: 28, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7118, file: !3, line: 583, column: 35)
!7124 = !DILocation(line: 584, column: 34, scope: !7123)
!7125 = !DILocation(line: 584, column: 49, scope: !7123)
!7126 = !DILocation(line: 584, column: 3, scope: !7123)
!7127 = !DILocation(line: 585, column: 10, scope: !7123)
!7128 = !DILocation(line: 585, column: 3, scope: !7123)
!7129 = !DILocation(line: 587, column: 2, scope: !7099)
!7130 = !DILocation(line: 588, column: 1, scope: !7099)
