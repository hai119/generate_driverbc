; ModuleID = '../bcout/drivers/usb/dwc3/drd.llvm.bc'
source_filename = "drivers/usb/dwc3/drd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.51, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.54 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i64, i64 }
%union.anon.54 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.58, i32 }
%union.anon.58 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_attr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.35, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.35 = type { %struct.bio_integrity_payload* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.76, void (i8*)*, i8* }
%union.anon.76 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.77, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.77 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
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
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.57 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [48 x i8] }
%struct.anon.31 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.dwc3 = type { %struct.work_struct, %struct.dwc3_trb*, i8*, i8*, i8*, i64, i64, i64, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.device*, %struct.device*, %struct.platform_device*, [2 x %struct.resource], %struct.dwc3_event_buffer*, [32 x %struct.dwc3_ep*], %struct.usb_gadget*, %struct.usb_gadget_driver*, %struct.clk_bulk_data*, i32, %struct.reset_control*, %struct.usb_phy*, %struct.usb_phy*, %struct.phy*, %struct.phy*, i8, %struct.ulpi*, i8, i8*, i64, i32, i32, i32, %struct.extcon_dev*, %struct.notifier_block, i32, %struct.usb_role_switch*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, %struct.dentry*, %struct.debugfs_regset32*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8*, [5 x i8], i16 }
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, %struct.dwc3_ep*, %struct.scatterlist*, %struct.scatterlist*, i32, i32, i32, i32, i8, %struct.dwc3_trb*, i64, i32, i8 }
%struct.usb_request = type { i8*, i32, i64, %struct.scatterlist*, i32, i32, i24, void (%struct.usb_ep*, %struct.usb_request*)*, i8*, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { i8*, i8*, %struct.usb_ep_ops*, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor* }
%struct.usb_ep_ops = type { i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)*, %struct.usb_request* (%struct.usb_ep*, i32)*, {}*, i32 (%struct.usb_ep*, %struct.usb_request*, i32)*, i32 (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, i32)*, i32 (%struct.usb_ep*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)* }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.dwc3_trb*, i64, %struct.dwc3*, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.dwc3_event_buffer = type { i8*, i8*, i32, i32, i32, i32, i64, %struct.dwc3* }
%struct.usb_gadget = type { %struct.work_struct, %struct.usb_udc*, %struct.usb_gadget_ops*, %struct.usb_ep*, %struct.list_head, i32, i32, i32, i8*, %struct.device, i32, i32, i32, i32, %struct.usb_otg_caps*, i24, i32 }
%struct.usb_udc = type opaque
%struct.usb_gadget_ops = type { i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32, i64)*, void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)*, i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)*, i32 (%struct.usb_gadget*)*, void (%struct.usb_gadget*, i32)*, %struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.usb_gadget_driver = type { i8*, i32, {}*, void (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, %struct.device_driver, i8*, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.clk_bulk_data = type opaque
%struct.reset_control = type opaque
%struct.usb_phy = type { %struct.device*, i8*, i32, i32, i32, %struct.usb_otg*, %struct.device*, %struct.usb_phy_io_ops*, i8*, %struct.extcon_dev*, %struct.extcon_dev*, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, i32 (%struct.usb_phy*)*, void (%struct.usb_phy*)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i1)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*)* }
%struct.usb_otg = type { i8, %struct.phy*, %struct.usb_phy*, %struct.usb_bus*, %struct.usb_gadget*, i32, i32 (%struct.usb_otg*, %struct.usb_bus*)*, i32 (%struct.usb_otg*, %struct.usb_gadget*)*, i32 (%struct.usb_otg*, i1)*, i32 (%struct.usb_otg*)*, i32 (%struct.usb_otg*)* }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
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
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_phy_io_ops = type { i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32, i32)* }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.regulator = type opaque
%struct.ulpi = type opaque
%struct.extcon_dev = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.usb_role_switch = type opaque
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.debugfs_regset32 = type { %struct.debugfs_reg32*, i32, i8*, %struct.device* }
%struct.debugfs_reg32 = type { i8*, i64 }
%struct.usb_role_switch_desc = type { %struct.fwnode_handle*, %struct.device*, %struct.device*, %struct.device*, i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*)*, i8, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize peripheral\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't register cable notifier\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dwc3-otg\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to request irq #%d --> %d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"linux,extcon-name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"role-switch-default-mode\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwc3_otg_init(%struct.dwc3* %dwc) #0 !dbg !5983 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !5990
  call void @dwc3_set_prtcap(%struct.dwc3* %0, i32 3) #7, !dbg !5991
  %1 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !5992
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %1, i32 0, i32 29, !dbg !5993
  %2 = load i8*, i8** %regs, align 8, !dbg !5993
  %call = call i32 @dwc3_readl(i8* %2, i32 49664) #7, !dbg !5994
  store i32 %call, i32* %reg, align 4, !dbg !5995
  %3 = load i32, i32* %reg, align 4, !dbg !5996
  %conv = zext i32 %3 to i64, !dbg !5996
  %and = and i64 %conv, -65, !dbg !5996
  %conv1 = trunc i64 %and to i32, !dbg !5996
  store i32 %conv1, i32* %reg, align 4, !dbg !5996
  %4 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !5997
  %regs2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 29, !dbg !5998
  %5 = load i8*, i8** %regs2, align 8, !dbg !5998
  %6 = load i32, i32* %reg, align 4, !dbg !5999
  call void @dwc3_writel(i8* %5, i32 49664, i32 %6) #7, !dbg !6000
  %7 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6001
  call void @dwc3_otgregs_init(%struct.dwc3* %7) #7, !dbg !6002
  ret void, !dbg !6003
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @dwc3_set_prtcap(%struct.dwc3*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_readl(i8* %base, i32 %offset) #0 !dbg !6004 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %value, metadata !6012, metadata !DIExpression()), !dbg !6013
  %0 = load i8*, i8** %base.addr, align 8, !dbg !6014
  %1 = load i32, i32* %offset.addr, align 4, !dbg !6015
  %idx.ext = zext i32 %1 to i64, !dbg !6016
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !6016
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 -49408, !dbg !6017
  %call = call i32 @readl(i8* %add.ptr1) #7, !dbg !6018
  store i32 %call, i32* %value, align 4, !dbg !6019
  %2 = load i8*, i8** %base.addr, align 8, !dbg !6020
  %add.ptr2 = getelementptr i8, i8* %2, i64 -49408, !dbg !6021
  %3 = load i32, i32* %offset.addr, align 4, !dbg !6022
  %4 = load i32, i32* %value, align 4, !dbg !6023
  call void @trace_dwc3_readl(i8* %add.ptr2, i32 %3, i32 %4) #7, !dbg !6024
  %5 = load i32, i32* %value, align 4, !dbg !6025
  ret i32 %5, !dbg !6026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_writel(i8* %base, i32 %offset, i32 %value) #0 !dbg !6027 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load i32, i32* %value.addr, align 4, !dbg !6036
  %1 = load i8*, i8** %base.addr, align 8, !dbg !6037
  %2 = load i32, i32* %offset.addr, align 4, !dbg !6038
  %idx.ext = zext i32 %2 to i64, !dbg !6039
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !6039
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 -49408, !dbg !6040
  call void @writel(i32 %0, i8* %add.ptr1) #7, !dbg !6041
  %3 = load i8*, i8** %base.addr, align 8, !dbg !6042
  %add.ptr2 = getelementptr i8, i8* %3, i64 -49408, !dbg !6043
  %4 = load i32, i32* %offset.addr, align 4, !dbg !6044
  %5 = load i32, i32* %value.addr, align 4, !dbg !6045
  call void @trace_dwc3_writel(i8* %add.ptr2, i32 %4, i32 %5) #7, !dbg !6046
  ret void, !dbg !6047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otgregs_init(%struct.dwc3* %dwc) #0 !dbg !6048 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6053
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6054
  %1 = load i8*, i8** %regs, align 8, !dbg !6054
  %call = call i32 @dwc3_readl(i8* %1, i32 52224) #7, !dbg !6055
  store i32 %call, i32* %reg, align 4, !dbg !6056
  %2 = load i32, i32* %reg, align 4, !dbg !6057
  %conv = zext i32 %2 to i64, !dbg !6057
  %or = or i64 %conv, 8, !dbg !6057
  %conv1 = trunc i64 %or to i32, !dbg !6057
  store i32 %conv1, i32* %reg, align 4, !dbg !6057
  %3 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6058
  %regs2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 29, !dbg !6059
  %4 = load i8*, i8** %regs2, align 8, !dbg !6059
  %5 = load i32, i32* %reg, align 4, !dbg !6060
  call void @dwc3_writel(i8* %4, i32 52224, i32 %5) #7, !dbg !6061
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6062
  %regs3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 29, !dbg !6063
  %7 = load i8*, i8** %regs3, align 8, !dbg !6063
  %call4 = call i32 @dwc3_readl(i8* %7, i32 49424) #7, !dbg !6064
  store i32 %call4, i32* %reg, align 4, !dbg !6065
  %8 = load i32, i32* %reg, align 4, !dbg !6066
  %conv5 = zext i32 %8 to i64, !dbg !6066
  %and = and i64 %conv5, -3, !dbg !6066
  %conv6 = trunc i64 %and to i32, !dbg !6066
  store i32 %conv6, i32* %reg, align 4, !dbg !6066
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6067
  %regs7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 29, !dbg !6068
  %10 = load i8*, i8** %regs7, align 8, !dbg !6068
  %11 = load i32, i32* %reg, align 4, !dbg !6069
  call void @dwc3_writel(i8* %10, i32 49424, i32 %11) #7, !dbg !6070
  %12 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6071
  %regs8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 29, !dbg !6072
  %13 = load i8*, i8** %regs8, align 8, !dbg !6072
  %call9 = call i32 @dwc3_readl(i8* %13, i32 52224) #7, !dbg !6073
  store i32 %call9, i32* %reg, align 4, !dbg !6074
  %14 = load i32, i32* %reg, align 4, !dbg !6075
  %conv10 = zext i32 %14 to i64, !dbg !6075
  %and11 = and i64 %conv10, -4, !dbg !6075
  %conv12 = trunc i64 %and11 to i32, !dbg !6075
  store i32 %conv12, i32* %reg, align 4, !dbg !6075
  %15 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6076
  %regs13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 29, !dbg !6077
  %16 = load i8*, i8** %regs13, align 8, !dbg !6077
  %17 = load i32, i32* %reg, align 4, !dbg !6078
  call void @dwc3_writel(i8* %16, i32 52224, i32 %17) #7, !dbg !6079
  %18 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6080
  call void @dwc3_otg_clear_events(%struct.dwc3* %18) #7, !dbg !6081
  %19 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6082
  call void @dwc3_otg_disable_events(%struct.dwc3* %19, i32 268373760) #7, !dbg !6083
  %20 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6084
  call void @dwc3_otg_enable_events(%struct.dwc3* %20, i32 268373760) #7, !dbg !6085
  %21 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6086
  %regs14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 29, !dbg !6087
  %22 = load i8*, i8** %regs14, align 8, !dbg !6087
  %call15 = call i32 @dwc3_readl(i8* %22, i32 52228) #7, !dbg !6088
  store i32 %call15, i32* %reg, align 4, !dbg !6089
  %23 = load i32, i32* %reg, align 4, !dbg !6090
  %conv16 = zext i32 %23 to i64, !dbg !6090
  %or17 = or i64 %conv16, 64, !dbg !6090
  %conv18 = trunc i64 %or17 to i32, !dbg !6090
  store i32 %conv18, i32* %reg, align 4, !dbg !6090
  %24 = load i32, i32* %reg, align 4, !dbg !6091
  %conv19 = zext i32 %24 to i64, !dbg !6091
  %and20 = and i64 %conv19, -20, !dbg !6091
  %conv21 = trunc i64 %and20 to i32, !dbg !6091
  store i32 %conv21, i32* %reg, align 4, !dbg !6091
  %25 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6092
  %regs22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 29, !dbg !6093
  %26 = load i8*, i8** %regs22, align 8, !dbg !6093
  %27 = load i32, i32* %reg, align 4, !dbg !6094
  call void @dwc3_writel(i8* %26, i32 52228, i32 %27) #7, !dbg !6095
  ret void, !dbg !6096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwc3_otg_exit(%struct.dwc3* %dwc) #0 !dbg !6097 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6100
  call void @dwc3_otg_disable_events(%struct.dwc3* %0, i32 268373760) #7, !dbg !6101
  %1 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6102
  call void @dwc3_otg_clear_events(%struct.dwc3* %1) #7, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_disable_events(%struct.dwc3* %dwc, i32 %disable_mask) #0 !dbg !6105 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %disable_mask.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  store i32 %disable_mask, i32* %disable_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_mask.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6114
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6115
  %1 = load i8*, i8** %regs, align 8, !dbg !6115
  %call = call i32 @dwc3_readl(i8* %1, i32 52236) #7, !dbg !6116
  store i32 %call, i32* %reg, align 4, !dbg !6113
  %2 = load i32, i32* %disable_mask.addr, align 4, !dbg !6117
  %neg = xor i32 %2, -1, !dbg !6118
  %3 = load i32, i32* %reg, align 4, !dbg !6119
  %and = and i32 %3, %neg, !dbg !6119
  store i32 %and, i32* %reg, align 4, !dbg !6119
  %4 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6120
  %regs1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 29, !dbg !6121
  %5 = load i8*, i8** %regs1, align 8, !dbg !6121
  %6 = load i32, i32* %reg, align 4, !dbg !6122
  call void @dwc3_writel(i8* %5, i32 52236, i32 %6) #7, !dbg !6123
  ret void, !dbg !6124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_clear_events(%struct.dwc3* %dwc) #0 !dbg !6125 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6128, metadata !DIExpression()), !dbg !6129
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6130
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6131
  %1 = load i8*, i8** %regs, align 8, !dbg !6131
  %call = call i32 @dwc3_readl(i8* %1, i32 52232) #7, !dbg !6132
  store i32 %call, i32* %reg, align 4, !dbg !6129
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6133
  %regs1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 29, !dbg !6134
  %3 = load i8*, i8** %regs1, align 8, !dbg !6134
  %4 = load i32, i32* %reg, align 4, !dbg !6135
  call void @dwc3_writel(i8* %3, i32 52236, i32 %4) #7, !dbg !6136
  ret void, !dbg !6137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwc3_otg_host_init(%struct.dwc3* %dwc) #0 !dbg !6138 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6141, metadata !DIExpression()), !dbg !6142
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6143
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6144
  %1 = load i8*, i8** %regs, align 8, !dbg !6144
  %call = call i32 @dwc3_readl(i8* %1, i32 52228) #7, !dbg !6145
  store i32 %call, i32* %reg, align 4, !dbg !6146
  %2 = load i32, i32* %reg, align 4, !dbg !6147
  %conv = zext i32 %2 to i64, !dbg !6147
  %and = and i64 %conv, -72, !dbg !6147
  %conv1 = trunc i64 %and to i32, !dbg !6147
  store i32 %conv1, i32* %reg, align 4, !dbg !6147
  %3 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6148
  %regs2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 29, !dbg !6149
  %4 = load i8*, i8** %regs2, align 8, !dbg !6149
  %5 = load i32, i32* %reg, align 4, !dbg !6150
  call void @dwc3_writel(i8* %4, i32 52228, i32 %5) #7, !dbg !6151
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6152
  %regs3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 29, !dbg !6153
  %7 = load i8*, i8** %regs3, align 8, !dbg !6153
  %call4 = call i32 @dwc3_readl(i8* %7, i32 52224) #7, !dbg !6154
  store i32 %call4, i32* %reg, align 4, !dbg !6155
  %8 = load i32, i32* %reg, align 4, !dbg !6156
  %conv5 = zext i32 %8 to i64, !dbg !6156
  %and6 = and i64 %conv5, -33, !dbg !6156
  %conv7 = trunc i64 %and6 to i32, !dbg !6156
  store i32 %conv7, i32* %reg, align 4, !dbg !6156
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6157
  %regs8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 29, !dbg !6158
  %10 = load i8*, i8** %regs8, align 8, !dbg !6158
  %11 = load i32, i32* %reg, align 4, !dbg !6159
  call void @dwc3_writel(i8* %10, i32 52224, i32 %11) #7, !dbg !6160
  %12 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6161
  %dis_u2_susphy_quirk = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 73, !dbg !6163
  %13 = bitcast [5 x i8]* %dis_u2_susphy_quirk to i40*, !dbg !6163
  %bf.load = load i40, i40* %13, align 8, !dbg !6163
  %bf.lshr = lshr i40 %bf.load, 25, !dbg !6163
  %bf.clear = and i40 %bf.lshr, 1, !dbg !6163
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6163
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6161
  br i1 %tobool, label %if.end, label %if.then, !dbg !6164

if.then:                                          ; preds = %entry
  %14 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6165
  %regs9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 29, !dbg !6167
  %15 = load i8*, i8** %regs9, align 8, !dbg !6167
  %call10 = call i32 @dwc3_readl(i8* %15, i32 49664) #7, !dbg !6168
  store i32 %call10, i32* %reg, align 4, !dbg !6169
  %16 = load i32, i32* %reg, align 4, !dbg !6170
  %conv11 = zext i32 %16 to i64, !dbg !6170
  %or = or i64 %conv11, 64, !dbg !6170
  %conv12 = trunc i64 %or to i32, !dbg !6170
  store i32 %conv12, i32* %reg, align 4, !dbg !6170
  %17 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6171
  %regs13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 29, !dbg !6172
  %18 = load i8*, i8** %regs13, align 8, !dbg !6172
  %19 = load i32, i32* %reg, align 4, !dbg !6173
  call void @dwc3_writel(i8* %18, i32 49664, i32 %19) #7, !dbg !6174
  br label %if.end, !dbg !6175

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6176
  %regs14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 29, !dbg !6177
  %21 = load i8*, i8** %regs14, align 8, !dbg !6177
  %call15 = call i32 @dwc3_readl(i8* %21, i32 52228) #7, !dbg !6178
  store i32 %call15, i32* %reg, align 4, !dbg !6179
  %22 = load i32, i32* %reg, align 4, !dbg !6180
  %conv16 = zext i32 %22 to i64, !dbg !6180
  %or17 = or i64 %conv16, 32, !dbg !6180
  %conv18 = trunc i64 %or17 to i32, !dbg !6180
  store i32 %conv18, i32* %reg, align 4, !dbg !6180
  %23 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6181
  %regs19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 29, !dbg !6182
  %24 = load i8*, i8** %regs19, align 8, !dbg !6182
  %25 = load i32, i32* %reg, align 4, !dbg !6183
  call void @dwc3_writel(i8* %24, i32 52228, i32 %25) #7, !dbg !6184
  ret void, !dbg !6185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwc3_otg_update(%struct.dwc3* %dwc, i1 zeroext %ignore_idstatus) #0 !dbg !6186 {
entry:
  %lock.addr.i215 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i215, metadata !6189, metadata !DIExpression()), !dbg !6194
  %flags.addr.i216 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i216, metadata !6197, metadata !DIExpression()), !dbg !6198
  %tmp.i217 = alloca i32, align 4
  %tmp8.i218 = alloca i32, align 4
  %lock.addr.i213 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i213, metadata !6199, metadata !DIExpression()), !dbg !6204
  %lock.addr.i208 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i208, metadata !6189, metadata !DIExpression()), !dbg !6211
  %flags.addr.i209 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i209, metadata !6197, metadata !DIExpression()), !dbg !6213
  %tmp.i210 = alloca i32, align 4
  %tmp8.i211 = alloca i32, align 4
  %lock.addr.i206 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i206, metadata !6199, metadata !DIExpression()), !dbg !6214
  %lock.addr.i201 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i201, metadata !6189, metadata !DIExpression()), !dbg !6221
  %flags.addr.i202 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i202, metadata !6197, metadata !DIExpression()), !dbg !6223
  %tmp.i203 = alloca i32, align 4
  %tmp8.i204 = alloca i32, align 4
  %lock.addr.i199 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i199, metadata !6199, metadata !DIExpression()), !dbg !6224
  %lock.addr.i194 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i194, metadata !6189, metadata !DIExpression()), !dbg !6231
  %flags.addr.i195 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i195, metadata !6197, metadata !DIExpression()), !dbg !6234
  %tmp.i196 = alloca i32, align 4
  %tmp8.i197 = alloca i32, align 4
  %lock.addr.i192 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i192, metadata !6199, metadata !DIExpression()), !dbg !6235
  %lock.addr.i190 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i190, metadata !6189, metadata !DIExpression()), !dbg !6242
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6197, metadata !DIExpression()), !dbg !6244
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6199, metadata !DIExpression()), !dbg !6245
  %dwc.addr = alloca %struct.dwc3*, align 8
  %ignore_idstatus.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %reg = alloca i32, align 4
  %id = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy21 = alloca i64, align 8
  %__dummy222 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %__dummy40 = alloca i64, align 8
  %__dummy241 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  %__dummy48 = alloca i64, align 8
  %__dummy249 = alloca i64, align 8
  %tmp52 = alloca i32, align 4
  %__dummy68 = alloca i64, align 8
  %__dummy269 = alloca i64, align 8
  %tmp72 = alloca i32, align 4
  %__dummy76 = alloca i64, align 8
  %__dummy277 = alloca i64, align 8
  %tmp80 = alloca i32, align 4
  %__dummy100 = alloca i64, align 8
  %__dummy2101 = alloca i64, align 8
  %tmp104 = alloca i32, align 4
  %__dummy108 = alloca i64, align 8
  %__dummy2109 = alloca i64, align 8
  %tmp112 = alloca i32, align 4
  %__dummy143 = alloca i64, align 8
  %__dummy2144 = alloca i64, align 8
  %tmp147 = alloca i32, align 4
  %__dummy151 = alloca i64, align 8
  %__dummy2152 = alloca i64, align 8
  %tmp155 = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6252, metadata !DIExpression()), !dbg !6253
  %frombool = zext i1 %ignore_idstatus to i8
  store i8 %frombool, i8* %ignore_idstatus.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore_idstatus.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6256, metadata !DIExpression()), !dbg !6257
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6258, metadata !DIExpression()), !dbg !6259
  call void @llvm.dbg.declare(metadata i32* %id, metadata !6260, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6264
  %dr_mode = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 31, !dbg !6266
  %1 = load i32, i32* %dr_mode, align 8, !dbg !6266
  %cmp = icmp ne i32 %1, 3, !dbg !6267
  br i1 %cmp, label %if.then, label %if.end, !dbg !6268

if.then:                                          ; preds = %entry
  br label %sw.epilog189, !dbg !6269

if.end:                                           ; preds = %entry
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6270
  %current_dr_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 32, !dbg !6272
  %3 = load i32, i32* %current_dr_role, align 4, !dbg !6272
  %cmp1 = icmp ne i32 %3, 3, !dbg !6273
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6274

if.then2:                                         ; preds = %if.end
  br label %sw.epilog189, !dbg !6275

if.end3:                                          ; preds = %if.end
  %4 = load i8, i8* %ignore_idstatus.addr, align 1, !dbg !6276
  %tobool = trunc i8 %4 to i1, !dbg !6276
  br i1 %tobool, label %if.end8, label %if.then4, !dbg !6278

if.then4:                                         ; preds = %if.end3
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6279
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 29, !dbg !6281
  %6 = load i8*, i8** %regs, align 8, !dbg !6281
  %call = call i32 @dwc3_readl(i8* %6, i32 52240) #7, !dbg !6282
  store i32 %call, i32* %reg, align 4, !dbg !6283
  %7 = load i32, i32* %reg, align 4, !dbg !6284
  %conv = zext i32 %7 to i64, !dbg !6284
  %and = and i64 %conv, 1, !dbg !6285
  %tobool5 = icmp ne i64 %and, 0, !dbg !6286
  %lnot = xor i1 %tobool5, true, !dbg !6286
  %lnot6 = xor i1 %lnot, true, !dbg !6287
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6287
  store i32 %lnot.ext, i32* %id, align 4, !dbg !6288
  %8 = load i32, i32* %id, align 4, !dbg !6289
  %tobool7 = icmp ne i32 %8, 0, !dbg !6289
  %9 = zext i1 %tobool7 to i64, !dbg !6289
  %cond = select i1 %tobool7, i32 2, i32 1, !dbg !6289
  %10 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6290
  %desired_otg_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 43, !dbg !6291
  store i32 %cond, i32* %desired_otg_role, align 4, !dbg !6292
  br label %if.end8, !dbg !6293

if.end8:                                          ; preds = %if.then4, %if.end3
  %11 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6294
  %desired_otg_role9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 43, !dbg !6296
  %12 = load i32, i32* %desired_otg_role9, align 4, !dbg !6296
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6297
  %current_otg_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 42, !dbg !6298
  %14 = load i32, i32* %current_otg_role, align 8, !dbg !6298
  %cmp10 = icmp eq i32 %12, %14, !dbg !6299
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6300

if.then12:                                        ; preds = %if.end8
  br label %sw.epilog189, !dbg !6301

if.end13:                                         ; preds = %if.end8
  %15 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6302
  %current_otg_role14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 42, !dbg !6303
  %16 = load i32, i32* %current_otg_role14, align 8, !dbg !6303
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
  ], !dbg !6304

sw.bb:                                            ; preds = %if.end13
  %17 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6305
  call void @dwc3_host_exit(%struct.dwc3* %17) #7, !dbg !6306
  br label %do.body, !dbg !6307

do.body:                                          ; preds = %sw.bb
  br label %do.body15, !dbg !6308

do.body15:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6309, metadata !DIExpression()), !dbg !6311
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6312, metadata !DIExpression()), !dbg !6311
  %cmp16 = icmp eq i64* %__dummy, %__dummy2, !dbg !6311
  %conv17 = zext i1 %cmp16 to i32, !dbg !6311
  store i32 1, i32* %tmp, align 4, !dbg !6311
  %18 = load i32, i32* %tmp, align 4, !dbg !6311
  br label %do.body18, !dbg !6313

do.body18:                                        ; preds = %do.body15
  br label %do.body19, !dbg !6314

do.body19:                                        ; preds = %do.body18
  br label %do.body20, !dbg !6315

do.body20:                                        ; preds = %do.body19
  call void @llvm.dbg.declare(metadata i64* %__dummy21, metadata !6317, metadata !DIExpression()), !dbg !6320
  call void @llvm.dbg.declare(metadata i64* %__dummy222, metadata !6321, metadata !DIExpression()), !dbg !6320
  %cmp23 = icmp eq i64* %__dummy21, %__dummy222, !dbg !6320
  %conv24 = zext i1 %cmp23 to i32, !dbg !6320
  store i32 1, i32* %tmp25, align 4, !dbg !6320
  %19 = load i32, i32* %tmp25, align 4, !dbg !6320
  %call26 = call i64 @arch_local_irq_save() #7, !dbg !6322
  store i64 %call26, i64* %flags, align 8, !dbg !6322
  br label %do.end, !dbg !6322

do.end:                                           ; preds = %do.body20
  br label %do.end27, !dbg !6315

do.end27:                                         ; preds = %do.end
  br label %do.body28, !dbg !6314

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6323, !srcloc !6324
  br label %do.body29, !dbg !6323

do.body29:                                        ; preds = %do.body28
  %20 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6325
  %lock = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 10, !dbg !6325
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6326
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !6327
  %rlock.i = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !6327
  br label %do.end31, !dbg !6325

do.end31:                                         ; preds = %do.body29
  br label %do.end32, !dbg !6323

do.end32:                                         ; preds = %do.end31
  br label %do.end33, !dbg !6314

do.end33:                                         ; preds = %do.end32
  br label %do.end34, !dbg !6313

do.end34:                                         ; preds = %do.end33
  br label %do.end35, !dbg !6308

do.end35:                                         ; preds = %do.end34
  %23 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6328
  call void @dwc3_otg_host_exit(%struct.dwc3* %23) #7, !dbg !6329
  %24 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6330
  %lock36 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 10, !dbg !6331
  %25 = load i64, i64* %flags, align 8, !dbg !6332
  store %struct.spinlock* %lock36, %struct.spinlock** %lock.addr.i190, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !6336
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !6336
  store i32 1, i32* %tmp.i, align 4, !dbg !6336
  %26 = load i32, i32* %tmp.i, align 4, !dbg !6336
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !6343
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !6343
  store i32 1, i32* %tmp8.i, align 4, !dbg !6343
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !6343
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !6345
  call void @arch_local_irq_restore(i64 %28) #8, !dbg !6345
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6346, !srcloc !6348
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i190, align 8, !dbg !6349
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !6349
  %rlock.i191 = bitcast %union.anon* %30 to %struct.raw_spinlock*, !dbg !6349
  br label %sw.epilog, !dbg !6351

sw.bb37:                                          ; preds = %if.end13
  %31 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6352
  call void @dwc3_gadget_exit(%struct.dwc3* %31) #7, !dbg !6353
  br label %do.body38, !dbg !6354

do.body38:                                        ; preds = %sw.bb37
  br label %do.body39, !dbg !6355

do.body39:                                        ; preds = %do.body38
  call void @llvm.dbg.declare(metadata i64* %__dummy40, metadata !6356, metadata !DIExpression()), !dbg !6358
  call void @llvm.dbg.declare(metadata i64* %__dummy241, metadata !6359, metadata !DIExpression()), !dbg !6358
  %cmp42 = icmp eq i64* %__dummy40, %__dummy241, !dbg !6358
  %conv43 = zext i1 %cmp42 to i32, !dbg !6358
  store i32 1, i32* %tmp44, align 4, !dbg !6358
  %32 = load i32, i32* %tmp44, align 4, !dbg !6358
  br label %do.body45, !dbg !6360

do.body45:                                        ; preds = %do.body39
  br label %do.body46, !dbg !6361

do.body46:                                        ; preds = %do.body45
  br label %do.body47, !dbg !6362

do.body47:                                        ; preds = %do.body46
  call void @llvm.dbg.declare(metadata i64* %__dummy48, metadata !6364, metadata !DIExpression()), !dbg !6367
  call void @llvm.dbg.declare(metadata i64* %__dummy249, metadata !6368, metadata !DIExpression()), !dbg !6367
  %cmp50 = icmp eq i64* %__dummy48, %__dummy249, !dbg !6367
  %conv51 = zext i1 %cmp50 to i32, !dbg !6367
  store i32 1, i32* %tmp52, align 4, !dbg !6367
  %33 = load i32, i32* %tmp52, align 4, !dbg !6367
  %call53 = call i64 @arch_local_irq_save() #7, !dbg !6369
  store i64 %call53, i64* %flags, align 8, !dbg !6369
  br label %do.end54, !dbg !6369

do.end54:                                         ; preds = %do.body47
  br label %do.end55, !dbg !6362

do.end55:                                         ; preds = %do.end54
  br label %do.body56, !dbg !6361

do.body56:                                        ; preds = %do.end55
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6370, !srcloc !6371
  br label %do.body57, !dbg !6370

do.body57:                                        ; preds = %do.body56
  %34 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6372
  %lock58 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 10, !dbg !6372
  store %struct.spinlock* %lock58, %struct.spinlock** %lock.addr.i192, align 8
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i192, align 8, !dbg !6373
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !6374
  %rlock.i193 = bitcast %union.anon* %36 to %struct.raw_spinlock*, !dbg !6374
  br label %do.end60, !dbg !6372

do.end60:                                         ; preds = %do.body57
  br label %do.end61, !dbg !6370

do.end61:                                         ; preds = %do.end60
  br label %do.end62, !dbg !6361

do.end62:                                         ; preds = %do.end61
  br label %do.end63, !dbg !6360

do.end63:                                         ; preds = %do.end62
  br label %do.end64, !dbg !6355

do.end64:                                         ; preds = %do.end63
  %37 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6375
  call void @dwc3_event_buffers_cleanup(%struct.dwc3* %37) #7, !dbg !6376
  %38 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6377
  call void @dwc3_otg_device_exit(%struct.dwc3* %38) #7, !dbg !6378
  %39 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6379
  %lock65 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 10, !dbg !6380
  %40 = load i64, i64* %flags, align 8, !dbg !6381
  store %struct.spinlock* %lock65, %struct.spinlock** %lock.addr.i194, align 8
  store i64 %40, i64* %flags.addr.i195, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !6382
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !6382
  store i32 1, i32* %tmp.i196, align 4, !dbg !6382
  %41 = load i32, i32* %tmp.i196, align 4, !dbg !6382
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !6383
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !6383
  store i32 1, i32* %tmp8.i197, align 4, !dbg !6383
  %42 = load i32, i32* %tmp8.i197, align 4, !dbg !6383
  %43 = load i64, i64* %flags.addr.i195, align 8, !dbg !6384
  call void @arch_local_irq_restore(i64 %43) #8, !dbg !6384
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6385, !srcloc !6348
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i194, align 8, !dbg !6386
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !6386
  %rlock.i198 = bitcast %union.anon* %45 to %struct.raw_spinlock*, !dbg !6386
  br label %sw.epilog, !dbg !6387

sw.default:                                       ; preds = %if.end13
  br label %sw.epilog, !dbg !6388

sw.epilog:                                        ; preds = %sw.default, %do.end64, %do.end35
  br label %do.body66, !dbg !6389

do.body66:                                        ; preds = %sw.epilog
  br label %do.body67, !dbg !6390

do.body67:                                        ; preds = %do.body66
  call void @llvm.dbg.declare(metadata i64* %__dummy68, metadata !6391, metadata !DIExpression()), !dbg !6393
  call void @llvm.dbg.declare(metadata i64* %__dummy269, metadata !6394, metadata !DIExpression()), !dbg !6393
  %cmp70 = icmp eq i64* %__dummy68, %__dummy269, !dbg !6393
  %conv71 = zext i1 %cmp70 to i32, !dbg !6393
  store i32 1, i32* %tmp72, align 4, !dbg !6393
  %46 = load i32, i32* %tmp72, align 4, !dbg !6393
  br label %do.body73, !dbg !6395

do.body73:                                        ; preds = %do.body67
  br label %do.body74, !dbg !6396

do.body74:                                        ; preds = %do.body73
  br label %do.body75, !dbg !6397

do.body75:                                        ; preds = %do.body74
  call void @llvm.dbg.declare(metadata i64* %__dummy76, metadata !6399, metadata !DIExpression()), !dbg !6402
  call void @llvm.dbg.declare(metadata i64* %__dummy277, metadata !6403, metadata !DIExpression()), !dbg !6402
  %cmp78 = icmp eq i64* %__dummy76, %__dummy277, !dbg !6402
  %conv79 = zext i1 %cmp78 to i32, !dbg !6402
  store i32 1, i32* %tmp80, align 4, !dbg !6402
  %47 = load i32, i32* %tmp80, align 4, !dbg !6402
  %call81 = call i64 @arch_local_irq_save() #7, !dbg !6404
  store i64 %call81, i64* %flags, align 8, !dbg !6404
  br label %do.end82, !dbg !6404

do.end82:                                         ; preds = %do.body75
  br label %do.end83, !dbg !6397

do.end83:                                         ; preds = %do.end82
  br label %do.body84, !dbg !6396

do.body84:                                        ; preds = %do.end83
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6405, !srcloc !6406
  br label %do.body85, !dbg !6405

do.body85:                                        ; preds = %do.body84
  %48 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6407
  %lock86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 10, !dbg !6407
  store %struct.spinlock* %lock86, %struct.spinlock** %lock.addr.i199, align 8
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i199, align 8, !dbg !6408
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !6409
  %rlock.i200 = bitcast %union.anon* %50 to %struct.raw_spinlock*, !dbg !6409
  br label %do.end88, !dbg !6407

do.end88:                                         ; preds = %do.body85
  br label %do.end89, !dbg !6405

do.end89:                                         ; preds = %do.end88
  br label %do.end90, !dbg !6396

do.end90:                                         ; preds = %do.end89
  br label %do.end91, !dbg !6395

do.end91:                                         ; preds = %do.end90
  br label %do.end92, !dbg !6390

do.end92:                                         ; preds = %do.end91
  %51 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6410
  %desired_otg_role93 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %51, i32 0, i32 43, !dbg !6411
  %52 = load i32, i32* %desired_otg_role93, align 4, !dbg !6411
  %53 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6412
  %current_otg_role94 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 42, !dbg !6413
  store i32 %52, i32* %current_otg_role94, align 8, !dbg !6414
  %54 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6415
  %lock95 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 10, !dbg !6416
  %55 = load i64, i64* %flags, align 8, !dbg !6417
  store %struct.spinlock* %lock95, %struct.spinlock** %lock.addr.i201, align 8
  store i64 %55, i64* %flags.addr.i202, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !6418
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !6418
  store i32 1, i32* %tmp.i203, align 4, !dbg !6418
  %56 = load i32, i32* %tmp.i203, align 4, !dbg !6418
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !6419
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !6419
  store i32 1, i32* %tmp8.i204, align 4, !dbg !6419
  %57 = load i32, i32* %tmp8.i204, align 4, !dbg !6419
  %58 = load i64, i64* %flags.addr.i202, align 8, !dbg !6420
  call void @arch_local_irq_restore(i64 %58) #8, !dbg !6420
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6421, !srcloc !6348
  %59 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i201, align 8, !dbg !6422
  %60 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %59, i32 0, i32 0, !dbg !6422
  %rlock.i205 = bitcast %union.anon* %60 to %struct.raw_spinlock*, !dbg !6422
  %61 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6423
  %desired_otg_role96 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %61, i32 0, i32 43, !dbg !6424
  %62 = load i32, i32* %desired_otg_role96, align 4, !dbg !6424
  switch i32 %62, label %sw.default188 [
    i32 1, label %sw.bb97
    i32 2, label %sw.bb140
  ], !dbg !6425

sw.bb97:                                          ; preds = %do.end92
  br label %do.body98, !dbg !6426

do.body98:                                        ; preds = %sw.bb97
  br label %do.body99, !dbg !6427

do.body99:                                        ; preds = %do.body98
  call void @llvm.dbg.declare(metadata i64* %__dummy100, metadata !6428, metadata !DIExpression()), !dbg !6430
  call void @llvm.dbg.declare(metadata i64* %__dummy2101, metadata !6431, metadata !DIExpression()), !dbg !6430
  %cmp102 = icmp eq i64* %__dummy100, %__dummy2101, !dbg !6430
  %conv103 = zext i1 %cmp102 to i32, !dbg !6430
  store i32 1, i32* %tmp104, align 4, !dbg !6430
  %63 = load i32, i32* %tmp104, align 4, !dbg !6430
  br label %do.body105, !dbg !6432

do.body105:                                       ; preds = %do.body99
  br label %do.body106, !dbg !6433

do.body106:                                       ; preds = %do.body105
  br label %do.body107, !dbg !6434

do.body107:                                       ; preds = %do.body106
  call void @llvm.dbg.declare(metadata i64* %__dummy108, metadata !6436, metadata !DIExpression()), !dbg !6439
  call void @llvm.dbg.declare(metadata i64* %__dummy2109, metadata !6440, metadata !DIExpression()), !dbg !6439
  %cmp110 = icmp eq i64* %__dummy108, %__dummy2109, !dbg !6439
  %conv111 = zext i1 %cmp110 to i32, !dbg !6439
  store i32 1, i32* %tmp112, align 4, !dbg !6439
  %64 = load i32, i32* %tmp112, align 4, !dbg !6439
  %call113 = call i64 @arch_local_irq_save() #7, !dbg !6441
  store i64 %call113, i64* %flags, align 8, !dbg !6441
  br label %do.end114, !dbg !6441

do.end114:                                        ; preds = %do.body107
  br label %do.end115, !dbg !6434

do.end115:                                        ; preds = %do.end114
  br label %do.body116, !dbg !6433

do.body116:                                       ; preds = %do.end115
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6442, !srcloc !6443
  br label %do.body117, !dbg !6442

do.body117:                                       ; preds = %do.body116
  %65 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6444
  %lock118 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %65, i32 0, i32 10, !dbg !6444
  store %struct.spinlock* %lock118, %struct.spinlock** %lock.addr.i206, align 8
  %66 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i206, align 8, !dbg !6445
  %67 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %66, i32 0, i32 0, !dbg !6446
  %rlock.i207 = bitcast %union.anon* %67 to %struct.raw_spinlock*, !dbg !6446
  br label %do.end120, !dbg !6444

do.end120:                                        ; preds = %do.body117
  br label %do.end121, !dbg !6442

do.end121:                                        ; preds = %do.end120
  br label %do.end122, !dbg !6433

do.end122:                                        ; preds = %do.end121
  br label %do.end123, !dbg !6432

do.end123:                                        ; preds = %do.end122
  br label %do.end124, !dbg !6427

do.end124:                                        ; preds = %do.end123
  %68 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6447
  call void @dwc3_otgregs_init(%struct.dwc3* %68) #7, !dbg !6448
  %69 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6449
  call void @dwc3_otg_host_init(%struct.dwc3* %69) #7, !dbg !6450
  %70 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6451
  %lock125 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %70, i32 0, i32 10, !dbg !6452
  %71 = load i64, i64* %flags, align 8, !dbg !6453
  store %struct.spinlock* %lock125, %struct.spinlock** %lock.addr.i208, align 8
  store i64 %71, i64* %flags.addr.i209, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !6454
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !6454
  store i32 1, i32* %tmp.i210, align 4, !dbg !6454
  %72 = load i32, i32* %tmp.i210, align 4, !dbg !6454
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !6455
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !6455
  store i32 1, i32* %tmp8.i211, align 4, !dbg !6455
  %73 = load i32, i32* %tmp8.i211, align 4, !dbg !6455
  %74 = load i64, i64* %flags.addr.i209, align 8, !dbg !6456
  call void @arch_local_irq_restore(i64 %74) #8, !dbg !6456
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6457, !srcloc !6348
  %75 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i208, align 8, !dbg !6458
  %76 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %75, i32 0, i32 0, !dbg !6458
  %rlock.i212 = bitcast %union.anon* %76 to %struct.raw_spinlock*, !dbg !6458
  %77 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6459
  %call126 = call i32 @dwc3_host_init(%struct.dwc3* %77) #7, !dbg !6460
  store i32 %call126, i32* %ret, align 4, !dbg !6461
  %78 = load i32, i32* %ret, align 4, !dbg !6462
  %tobool127 = icmp ne i32 %78, 0, !dbg !6462
  br i1 %tobool127, label %if.then128, label %if.else, !dbg !6464

if.then128:                                       ; preds = %do.end124
  %79 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6465
  %dev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %79, i32 0, i32 11, !dbg !6465
  %80 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6465
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #9, !dbg !6465
  br label %if.end139, !dbg !6467

if.else:                                          ; preds = %do.end124
  %81 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6468
  %usb2_phy = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 22, !dbg !6471
  %82 = load %struct.usb_phy*, %struct.usb_phy** %usb2_phy, align 8, !dbg !6471
  %tobool129 = icmp ne %struct.usb_phy* %82, null, !dbg !6468
  br i1 %tobool129, label %if.then130, label %if.end133, !dbg !6472

if.then130:                                       ; preds = %if.else
  %83 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6473
  %usb2_phy131 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %83, i32 0, i32 22, !dbg !6474
  %84 = load %struct.usb_phy*, %struct.usb_phy** %usb2_phy131, align 8, !dbg !6474
  %otg = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %84, i32 0, i32 5, !dbg !6475
  %85 = load %struct.usb_otg*, %struct.usb_otg** %otg, align 8, !dbg !6475
  %call132 = call i32 @otg_set_vbus(%struct.usb_otg* %85, i1 zeroext true) #7, !dbg !6476
  br label %if.end133, !dbg !6476

if.end133:                                        ; preds = %if.then130, %if.else
  %86 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6477
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, %struct.dwc3* %86, i32 0, i32 24, !dbg !6479
  %87 = load %struct.phy*, %struct.phy** %usb2_generic_phy, align 8, !dbg !6479
  %tobool134 = icmp ne %struct.phy* %87, null, !dbg !6477
  br i1 %tobool134, label %if.then135, label %if.end138, !dbg !6480

if.then135:                                       ; preds = %if.end133
  %88 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6481
  %usb2_generic_phy136 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %88, i32 0, i32 24, !dbg !6481
  %89 = load %struct.phy*, %struct.phy** %usb2_generic_phy136, align 8, !dbg !6481
  %call137 = call i32 @phy_set_mode_ext(%struct.phy* %89, i32 1, i32 0) #7, !dbg !6481
  br label %if.end138, !dbg !6481

if.end138:                                        ; preds = %if.then135, %if.end133
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then128
  br label %sw.epilog189, !dbg !6482

sw.bb140:                                         ; preds = %do.end92
  br label %do.body141, !dbg !6483

do.body141:                                       ; preds = %sw.bb140
  br label %do.body142, !dbg !6484

do.body142:                                       ; preds = %do.body141
  call void @llvm.dbg.declare(metadata i64* %__dummy143, metadata !6485, metadata !DIExpression()), !dbg !6487
  call void @llvm.dbg.declare(metadata i64* %__dummy2144, metadata !6488, metadata !DIExpression()), !dbg !6487
  %cmp145 = icmp eq i64* %__dummy143, %__dummy2144, !dbg !6487
  %conv146 = zext i1 %cmp145 to i32, !dbg !6487
  store i32 1, i32* %tmp147, align 4, !dbg !6487
  %90 = load i32, i32* %tmp147, align 4, !dbg !6487
  br label %do.body148, !dbg !6489

do.body148:                                       ; preds = %do.body142
  br label %do.body149, !dbg !6490

do.body149:                                       ; preds = %do.body148
  br label %do.body150, !dbg !6491

do.body150:                                       ; preds = %do.body149
  call void @llvm.dbg.declare(metadata i64* %__dummy151, metadata !6493, metadata !DIExpression()), !dbg !6496
  call void @llvm.dbg.declare(metadata i64* %__dummy2152, metadata !6497, metadata !DIExpression()), !dbg !6496
  %cmp153 = icmp eq i64* %__dummy151, %__dummy2152, !dbg !6496
  %conv154 = zext i1 %cmp153 to i32, !dbg !6496
  store i32 1, i32* %tmp155, align 4, !dbg !6496
  %91 = load i32, i32* %tmp155, align 4, !dbg !6496
  %call156 = call i64 @arch_local_irq_save() #7, !dbg !6498
  store i64 %call156, i64* %flags, align 8, !dbg !6498
  br label %do.end157, !dbg !6498

do.end157:                                        ; preds = %do.body150
  br label %do.end158, !dbg !6491

do.end158:                                        ; preds = %do.end157
  br label %do.body159, !dbg !6490

do.body159:                                       ; preds = %do.end158
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6499, !srcloc !6500
  br label %do.body160, !dbg !6499

do.body160:                                       ; preds = %do.body159
  %92 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6501
  %lock161 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %92, i32 0, i32 10, !dbg !6501
  store %struct.spinlock* %lock161, %struct.spinlock** %lock.addr.i213, align 8
  %93 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i213, align 8, !dbg !6502
  %94 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %93, i32 0, i32 0, !dbg !6503
  %rlock.i214 = bitcast %union.anon* %94 to %struct.raw_spinlock*, !dbg !6503
  br label %do.end163, !dbg !6501

do.end163:                                        ; preds = %do.body160
  br label %do.end164, !dbg !6499

do.end164:                                        ; preds = %do.end163
  br label %do.end165, !dbg !6490

do.end165:                                        ; preds = %do.end164
  br label %do.end166, !dbg !6489

do.end166:                                        ; preds = %do.end165
  br label %do.end167, !dbg !6484

do.end167:                                        ; preds = %do.end166
  %95 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6504
  call void @dwc3_otgregs_init(%struct.dwc3* %95) #7, !dbg !6505
  %96 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6506
  call void @dwc3_otg_device_init(%struct.dwc3* %96) #7, !dbg !6507
  %97 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6508
  %call168 = call i32 @dwc3_event_buffers_setup(%struct.dwc3* %97) #7, !dbg !6509
  %98 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6510
  %lock169 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 10, !dbg !6511
  %99 = load i64, i64* %flags, align 8, !dbg !6512
  store %struct.spinlock* %lock169, %struct.spinlock** %lock.addr.i215, align 8
  store i64 %99, i64* %flags.addr.i216, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !6513
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !6513
  store i32 1, i32* %tmp.i217, align 4, !dbg !6513
  %100 = load i32, i32* %tmp.i217, align 4, !dbg !6513
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !6514
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !6514
  store i32 1, i32* %tmp8.i218, align 4, !dbg !6514
  %101 = load i32, i32* %tmp8.i218, align 4, !dbg !6514
  %102 = load i64, i64* %flags.addr.i216, align 8, !dbg !6515
  call void @arch_local_irq_restore(i64 %102) #8, !dbg !6515
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6516, !srcloc !6348
  %103 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i215, align 8, !dbg !6517
  %104 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %103, i32 0, i32 0, !dbg !6517
  %rlock.i219 = bitcast %union.anon* %104 to %struct.raw_spinlock*, !dbg !6517
  %105 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6518
  %usb2_phy170 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %105, i32 0, i32 22, !dbg !6520
  %106 = load %struct.usb_phy*, %struct.usb_phy** %usb2_phy170, align 8, !dbg !6520
  %tobool171 = icmp ne %struct.usb_phy* %106, null, !dbg !6518
  br i1 %tobool171, label %if.then172, label %if.end176, !dbg !6521

if.then172:                                       ; preds = %do.end167
  %107 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6522
  %usb2_phy173 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %107, i32 0, i32 22, !dbg !6523
  %108 = load %struct.usb_phy*, %struct.usb_phy** %usb2_phy173, align 8, !dbg !6523
  %otg174 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %108, i32 0, i32 5, !dbg !6524
  %109 = load %struct.usb_otg*, %struct.usb_otg** %otg174, align 8, !dbg !6524
  %call175 = call i32 @otg_set_vbus(%struct.usb_otg* %109, i1 zeroext false) #7, !dbg !6525
  br label %if.end176, !dbg !6525

if.end176:                                        ; preds = %if.then172, %do.end167
  %110 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6526
  %usb2_generic_phy177 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %110, i32 0, i32 24, !dbg !6528
  %111 = load %struct.phy*, %struct.phy** %usb2_generic_phy177, align 8, !dbg !6528
  %tobool178 = icmp ne %struct.phy* %111, null, !dbg !6526
  br i1 %tobool178, label %if.then179, label %if.end182, !dbg !6529

if.then179:                                       ; preds = %if.end176
  %112 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6530
  %usb2_generic_phy180 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %112, i32 0, i32 24, !dbg !6530
  %113 = load %struct.phy*, %struct.phy** %usb2_generic_phy180, align 8, !dbg !6530
  %call181 = call i32 @phy_set_mode_ext(%struct.phy* %113, i32 6, i32 0) #7, !dbg !6530
  br label %if.end182, !dbg !6530

if.end182:                                        ; preds = %if.then179, %if.end176
  %114 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6531
  %call183 = call i32 @dwc3_gadget_init(%struct.dwc3* %114) #7, !dbg !6532
  store i32 %call183, i32* %ret, align 4, !dbg !6533
  %115 = load i32, i32* %ret, align 4, !dbg !6534
  %tobool184 = icmp ne i32 %115, 0, !dbg !6534
  br i1 %tobool184, label %if.then185, label %if.end187, !dbg !6536

if.then185:                                       ; preds = %if.end182
  %116 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6537
  %dev186 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %116, i32 0, i32 11, !dbg !6537
  %117 = load %struct.device*, %struct.device** %dev186, align 8, !dbg !6537
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !6537
  br label %if.end187, !dbg !6537

if.end187:                                        ; preds = %if.then185, %if.end182
  br label %sw.epilog189, !dbg !6538

sw.default188:                                    ; preds = %do.end92
  br label %sw.epilog189, !dbg !6539

sw.epilog189:                                     ; preds = %if.then, %if.then2, %if.then12, %sw.default188, %if.end187, %if.end139
  ret void, !dbg !6540
}

; Function Attrs: noredzone
declare dso_local void @dwc3_host_exit(%struct.dwc3*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6541 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6545, metadata !DIExpression()), !dbg !6546
  %call = call i64 @arch_local_save_flags() #7, !dbg !6547
  store i64 %call, i64* %f, align 8, !dbg !6548
  call void @arch_local_irq_disable() #7, !dbg !6549
  %0 = load i64, i64* %f, align 8, !dbg !6550
  ret i64 %0, !dbg !6551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_host_exit(%struct.dwc3* %dwc) #0 !dbg !6552 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6553, metadata !DIExpression()), !dbg !6554
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6555, metadata !DIExpression()), !dbg !6556
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6557
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6558
  %1 = load i8*, i8** %regs, align 8, !dbg !6558
  %call = call i32 @dwc3_readl(i8* %1, i32 52228) #7, !dbg !6559
  store i32 %call, i32* %reg, align 4, !dbg !6560
  %2 = load i32, i32* %reg, align 4, !dbg !6561
  %conv = zext i32 %2 to i64, !dbg !6561
  %and = and i64 %conv, -34, !dbg !6561
  %conv1 = trunc i64 %and to i32, !dbg !6561
  store i32 %conv1, i32* %reg, align 4, !dbg !6561
  %3 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6562
  %regs2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 29, !dbg !6563
  %4 = load i8*, i8** %regs2, align 8, !dbg !6563
  %5 = load i32, i32* %reg, align 4, !dbg !6564
  call void @dwc3_writel(i8* %4, i32 52228, i32 %5) #7, !dbg !6565
  ret void, !dbg !6566
}

; Function Attrs: noredzone
declare dso_local void @dwc3_gadget_exit(%struct.dwc3*) #2

; Function Attrs: noredzone
declare dso_local void @dwc3_event_buffers_cleanup(%struct.dwc3*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_device_exit(%struct.dwc3* %dwc) #0 !dbg !6567 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6568, metadata !DIExpression()), !dbg !6569
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6570, metadata !DIExpression()), !dbg !6571
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6572
  call void @dwc3_otg_disable_events(%struct.dwc3* %0, i32 3328) #7, !dbg !6573
  %1 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6574
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %1, i32 0, i32 29, !dbg !6575
  %2 = load i8*, i8** %regs, align 8, !dbg !6575
  %call = call i32 @dwc3_readl(i8* %2, i32 52228) #7, !dbg !6576
  store i32 %call, i32* %reg, align 4, !dbg !6577
  %3 = load i32, i32* %reg, align 4, !dbg !6578
  %conv = zext i32 %3 to i64, !dbg !6578
  %and = and i64 %conv, -19, !dbg !6578
  %conv1 = trunc i64 %and to i32, !dbg !6578
  store i32 %conv1, i32* %reg, align 4, !dbg !6578
  %4 = load i32, i32* %reg, align 4, !dbg !6579
  %conv2 = zext i32 %4 to i64, !dbg !6579
  %or = or i64 %conv2, 64, !dbg !6579
  %conv3 = trunc i64 %or to i32, !dbg !6579
  store i32 %conv3, i32* %reg, align 4, !dbg !6579
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6580
  %regs4 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 29, !dbg !6581
  %6 = load i8*, i8** %regs4, align 8, !dbg !6581
  %7 = load i32, i32* %reg, align 4, !dbg !6582
  call void @dwc3_writel(i8* %6, i32 52228, i32 %7) #7, !dbg !6583
  ret void, !dbg !6584
}

; Function Attrs: noredzone
declare dso_local i32 @dwc3_host_init(%struct.dwc3*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @otg_set_vbus(%struct.usb_otg* %otg, i1 zeroext %enabled) #0 !dbg !6585 {
entry:
  %retval = alloca i32, align 4
  %otg.addr = alloca %struct.usb_otg*, align 8
  %enabled.addr = alloca i8, align 1
  store %struct.usb_otg* %otg, %struct.usb_otg** %otg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_otg** %otg.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  %frombool = zext i1 %enabled to i8
  store i8 %frombool, i8* %enabled.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enabled.addr, metadata !6588, metadata !DIExpression()), !dbg !6589
  %0 = load %struct.usb_otg*, %struct.usb_otg** %otg.addr, align 8, !dbg !6590
  %tobool = icmp ne %struct.usb_otg* %0, null, !dbg !6590
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6592

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.usb_otg*, %struct.usb_otg** %otg.addr, align 8, !dbg !6593
  %set_vbus = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %1, i32 0, i32 8, !dbg !6594
  %2 = load i32 (%struct.usb_otg*, i1)*, i32 (%struct.usb_otg*, i1)** %set_vbus, align 8, !dbg !6594
  %tobool1 = icmp ne i32 (%struct.usb_otg*, i1)* %2, null, !dbg !6593
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6595

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_otg*, %struct.usb_otg** %otg.addr, align 8, !dbg !6596
  %set_vbus2 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %3, i32 0, i32 8, !dbg !6597
  %4 = load i32 (%struct.usb_otg*, i1)*, i32 (%struct.usb_otg*, i1)** %set_vbus2, align 8, !dbg !6597
  %5 = load %struct.usb_otg*, %struct.usb_otg** %otg.addr, align 8, !dbg !6598
  %6 = load i8, i8* %enabled.addr, align 1, !dbg !6599
  %tobool3 = trunc i8 %6 to i1, !dbg !6599
  %call = call i32 %4(%struct.usb_otg* %5, i1 zeroext %tobool3) #7, !dbg !6596
  store i32 %call, i32* %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -524, i32* %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6602
  ret i32 %7, !dbg !6602
}

; Function Attrs: noredzone
declare dso_local i32 @phy_set_mode_ext(%struct.phy*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_device_init(%struct.dwc3* %dwc) #0 !dbg !6603 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6606, metadata !DIExpression()), !dbg !6607
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6608
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !6609
  %1 = load i8*, i8** %regs, align 8, !dbg !6609
  %call = call i32 @dwc3_readl(i8* %1, i32 52224) #7, !dbg !6610
  store i32 %call, i32* %reg, align 4, !dbg !6611
  %2 = load i32, i32* %reg, align 4, !dbg !6612
  %conv = zext i32 %2 to i64, !dbg !6612
  %or = or i64 %conv, 8, !dbg !6612
  %conv1 = trunc i64 %or to i32, !dbg !6612
  store i32 %conv1, i32* %reg, align 4, !dbg !6612
  %3 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6613
  %regs2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 29, !dbg !6614
  %4 = load i8*, i8** %regs2, align 8, !dbg !6614
  %5 = load i32, i32* %reg, align 4, !dbg !6615
  call void @dwc3_writel(i8* %4, i32 52224, i32 %5) #7, !dbg !6616
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6617
  %regs3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 29, !dbg !6618
  %7 = load i8*, i8** %regs3, align 8, !dbg !6618
  %call4 = call i32 @dwc3_readl(i8* %7, i32 52228) #7, !dbg !6619
  store i32 %call4, i32* %reg, align 4, !dbg !6620
  %8 = load i32, i32* %reg, align 4, !dbg !6621
  %conv5 = zext i32 %8 to i64, !dbg !6621
  %or6 = or i64 %conv5, 64, !dbg !6621
  %conv7 = trunc i64 %or6 to i32, !dbg !6621
  store i32 %conv7, i32* %reg, align 4, !dbg !6621
  %9 = load i32, i32* %reg, align 4, !dbg !6622
  %conv8 = zext i32 %9 to i64, !dbg !6622
  %and = and i64 %conv8, -24, !dbg !6622
  %conv9 = trunc i64 %and to i32, !dbg !6622
  store i32 %conv9, i32* %reg, align 4, !dbg !6622
  %10 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6623
  %regs10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 29, !dbg !6624
  %11 = load i8*, i8** %regs10, align 8, !dbg !6624
  %12 = load i32, i32* %reg, align 4, !dbg !6625
  call void @dwc3_writel(i8* %11, i32 52228, i32 %12) #7, !dbg !6626
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6627
  call void @dwc3_otg_enable_events(%struct.dwc3* %13, i32 512) #7, !dbg !6628
  %14 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6629
  %dis_u2_susphy_quirk = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 73, !dbg !6631
  %15 = bitcast [5 x i8]* %dis_u2_susphy_quirk to i40*, !dbg !6631
  %bf.load = load i40, i40* %15, align 8, !dbg !6631
  %bf.lshr = lshr i40 %bf.load, 25, !dbg !6631
  %bf.clear = and i40 %bf.lshr, 1, !dbg !6631
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6631
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6629
  br i1 %tobool, label %if.end, label %if.then, !dbg !6632

if.then:                                          ; preds = %entry
  %16 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6633
  %regs11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 29, !dbg !6635
  %17 = load i8*, i8** %regs11, align 8, !dbg !6635
  %call12 = call i32 @dwc3_readl(i8* %17, i32 49664) #7, !dbg !6636
  store i32 %call12, i32* %reg, align 4, !dbg !6637
  %18 = load i32, i32* %reg, align 4, !dbg !6638
  %conv13 = zext i32 %18 to i64, !dbg !6638
  %or14 = or i64 %conv13, 64, !dbg !6638
  %conv15 = trunc i64 %or14 to i32, !dbg !6638
  store i32 %conv15, i32* %reg, align 4, !dbg !6638
  %19 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6639
  %regs16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 29, !dbg !6640
  %20 = load i8*, i8** %regs16, align 8, !dbg !6640
  %21 = load i32, i32* %reg, align 4, !dbg !6641
  call void @dwc3_writel(i8* %20, i32 49664, i32 %21) #7, !dbg !6642
  br label %if.end, !dbg !6643

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6644
}

; Function Attrs: noredzone
declare dso_local i32 @dwc3_event_buffers_setup(%struct.dwc3*) #2

; Function Attrs: noredzone
declare dso_local i32 @dwc3_gadget_init(%struct.dwc3*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dwc3_drd_init(%struct.dwc3* %dwc) #0 !dbg !6645 {
entry:
  %retval = alloca i32, align 4
  %dwc.addr = alloca %struct.dwc3*, align 8
  %ret = alloca i32, align 4
  %irq = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6648, metadata !DIExpression()), !dbg !6649
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6650, metadata !DIExpression()), !dbg !6651
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !6652, metadata !DIExpression()), !dbg !6653
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6654
  %call = call %struct.extcon_dev* @dwc3_get_extcon(%struct.dwc3* %0) #7, !dbg !6655
  %1 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6656
  %edev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %1, i32 0, i32 34, !dbg !6657
  store %struct.extcon_dev* %call, %struct.extcon_dev** %edev, align 8, !dbg !6658
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6659
  %edev1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 34, !dbg !6661
  %3 = load %struct.extcon_dev*, %struct.extcon_dev** %edev1, align 8, !dbg !6661
  %4 = bitcast %struct.extcon_dev* %3 to i8*, !dbg !6659
  %call2 = call zeroext i1 @IS_ERR(i8* %4) #7, !dbg !6662
  br i1 %call2, label %if.then, label %if.end, !dbg !6663

if.then:                                          ; preds = %entry
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6664
  %edev3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 34, !dbg !6665
  %6 = load %struct.extcon_dev*, %struct.extcon_dev** %edev3, align 8, !dbg !6665
  %7 = bitcast %struct.extcon_dev* %6 to i8*, !dbg !6664
  %call4 = call i64 @PTR_ERR(i8* %7) #7, !dbg !6666
  %conv = trunc i64 %call4 to i32, !dbg !6666
  store i32 %conv, i32* %retval, align 4, !dbg !6667
  br label %return, !dbg !6667

if.end:                                           ; preds = %entry
  %8 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6668
  %dev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 11, !dbg !6670
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6670
  %call5 = call zeroext i1 @device_property_read_bool(%struct.device* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !6671
  br i1 %call5, label %if.then7, label %if.else, !dbg !6672

if.then7:                                         ; preds = %if.end
  %10 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6673
  %call8 = call i32 @dwc3_setup_role_switch(%struct.dwc3* %10) #7, !dbg !6675
  store i32 %call8, i32* %ret, align 4, !dbg !6676
  %11 = load i32, i32* %ret, align 4, !dbg !6677
  %cmp = icmp slt i32 %11, 0, !dbg !6679
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6680

if.then10:                                        ; preds = %if.then7
  %12 = load i32, i32* %ret, align 4, !dbg !6681
  store i32 %12, i32* %retval, align 4, !dbg !6682
  br label %return, !dbg !6682

if.end11:                                         ; preds = %if.then7
  br label %if.end36, !dbg !6683

if.else:                                          ; preds = %if.end
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6684
  %edev12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 34, !dbg !6686
  %14 = load %struct.extcon_dev*, %struct.extcon_dev** %edev12, align 8, !dbg !6686
  %tobool = icmp ne %struct.extcon_dev* %14, null, !dbg !6684
  br i1 %tobool, label %if.then13, label %if.else22, !dbg !6687

if.then13:                                        ; preds = %if.else
  %15 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6688
  %edev_nb = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 35, !dbg !6690
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %edev_nb, i32 0, i32 0, !dbg !6691
  store i32 (%struct.notifier_block*, i64, i8*)* @dwc3_drd_notifier, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !6692
  %16 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6693
  %edev14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 34, !dbg !6694
  %17 = load %struct.extcon_dev*, %struct.extcon_dev** %edev14, align 8, !dbg !6694
  %18 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6695
  %edev_nb15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 35, !dbg !6696
  %call16 = call i32 @extcon_register_notifier(%struct.extcon_dev* %17, i32 2, %struct.notifier_block* %edev_nb15) #7, !dbg !6697
  store i32 %call16, i32* %ret, align 4, !dbg !6698
  %19 = load i32, i32* %ret, align 4, !dbg !6699
  %cmp17 = icmp slt i32 %19, 0, !dbg !6701
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !6702

if.then19:                                        ; preds = %if.then13
  %20 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6703
  %dev20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 11, !dbg !6703
  %21 = load %struct.device*, %struct.device** %dev20, align 8, !dbg !6703
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !6703
  %22 = load i32, i32* %ret, align 4, !dbg !6705
  store i32 %22, i32* %retval, align 4, !dbg !6706
  br label %return, !dbg !6706

if.end21:                                         ; preds = %if.then13
  %23 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6707
  call void @dwc3_drd_update(%struct.dwc3* %23) #7, !dbg !6708
  br label %if.end35, !dbg !6709

if.else22:                                        ; preds = %if.else
  %24 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6710
  call void @dwc3_set_prtcap(%struct.dwc3* %24, i32 3) #7, !dbg !6712
  %25 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6713
  %current_dr_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 32, !dbg !6714
  store i32 3, i32* %current_dr_role, align 4, !dbg !6715
  %26 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6716
  %call23 = call i32 @dwc3_otg_get_irq(%struct.dwc3* %26) #7, !dbg !6717
  store i32 %call23, i32* %irq, align 4, !dbg !6718
  %27 = load i32, i32* %irq, align 4, !dbg !6719
  %cmp24 = icmp slt i32 %27, 0, !dbg !6721
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6722

if.then26:                                        ; preds = %if.else22
  %28 = load i32, i32* %irq, align 4, !dbg !6723
  store i32 %28, i32* %retval, align 4, !dbg !6724
  br label %return, !dbg !6724

if.end27:                                         ; preds = %if.else22
  %29 = load i32, i32* %irq, align 4, !dbg !6725
  %30 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6726
  %otg_irq = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 41, !dbg !6727
  store i32 %29, i32* %otg_irq, align 4, !dbg !6728
  %31 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6729
  call void @dwc3_otg_disable_events(%struct.dwc3* %31, i32 268373760) #7, !dbg !6730
  %32 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6731
  call void @dwc3_otg_clear_events(%struct.dwc3* %32) #7, !dbg !6732
  %33 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6733
  %otg_irq28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 41, !dbg !6734
  %34 = load i32, i32* %otg_irq28, align 4, !dbg !6734
  %35 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6735
  %36 = bitcast %struct.dwc3* %35 to i8*, !dbg !6735
  %call29 = call i32 @request_threaded_irq(i32 %34, i32 (i32, i8*)* @dwc3_otg_irq, i32 (i32, i8*)* @dwc3_otg_thread_irq, i64 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %36) #7, !dbg !6736
  store i32 %call29, i32* %ret, align 4, !dbg !6737
  %37 = load i32, i32* %ret, align 4, !dbg !6738
  %tobool30 = icmp ne i32 %37, 0, !dbg !6738
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !6740

if.then31:                                        ; preds = %if.end27
  %38 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6741
  %dev32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 11, !dbg !6741
  %39 = load %struct.device*, %struct.device** %dev32, align 8, !dbg !6741
  %40 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6741
  %otg_irq33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 41, !dbg !6741
  %41 = load i32, i32* %otg_irq33, align 4, !dbg !6741
  %42 = load i32, i32* %ret, align 4, !dbg !6741
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %41, i32 %42) #9, !dbg !6741
  store i32 -19, i32* %ret, align 4, !dbg !6743
  %43 = load i32, i32* %ret, align 4, !dbg !6744
  store i32 %43, i32* %retval, align 4, !dbg !6745
  br label %return, !dbg !6745

if.end34:                                         ; preds = %if.end27
  %44 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6746
  call void @dwc3_otg_init(%struct.dwc3* %44) #7, !dbg !6747
  %45 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6748
  call void @dwc3_set_mode(%struct.dwc3* %45, i32 3) #7, !dbg !6749
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end11
  store i32 0, i32* %retval, align 4, !dbg !6750
  br label %return, !dbg !6750

return:                                           ; preds = %if.end36, %if.then31, %if.then26, %if.then19, %if.then10, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !6751
  ret i32 %46, !dbg !6751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.extcon_dev* @dwc3_get_extcon(%struct.dwc3* %dwc) #0 !dbg !6752 {
entry:
  %retval = alloca %struct.extcon_dev*, align 8
  %dwc.addr = alloca %struct.dwc3*, align 8
  %dev = alloca %struct.device*, align 8
  %np_phy = alloca %struct.device_node*, align 8
  %np_conn = alloca %struct.device_node*, align 8
  %edev = alloca %struct.extcon_dev*, align 8
  %name = alloca i8*, align 8
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6755, metadata !DIExpression()), !dbg !6756
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !6757, metadata !DIExpression()), !dbg !6758
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6759
  %dev1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 11, !dbg !6760
  %1 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !6760
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !6758
  call void @llvm.dbg.declare(metadata %struct.device_node** %np_phy, metadata !6761, metadata !DIExpression()), !dbg !6762
  call void @llvm.dbg.declare(metadata %struct.device_node** %np_conn, metadata !6763, metadata !DIExpression()), !dbg !6764
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev, metadata !6765, metadata !DIExpression()), !dbg !6766
  call void @llvm.dbg.declare(metadata i8** %name, metadata !6767, metadata !DIExpression()), !dbg !6768
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6769
  %call = call zeroext i1 @device_property_read_bool(%struct.device* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !6771
  br i1 %call, label %if.then, label %if.end, !dbg !6772

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6773
  %call2 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device* %3, i32 0) #7, !dbg !6774
  store %struct.extcon_dev* %call2, %struct.extcon_dev** %retval, align 8, !dbg !6775
  br label %return, !dbg !6775

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6776
  %call3 = call i32 @device_property_read_string(%struct.device* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %name) #7, !dbg !6778
  %cmp = icmp eq i32 %call3, 0, !dbg !6779
  br i1 %cmp, label %if.then4, label %if.end9, !dbg !6780

if.then4:                                         ; preds = %if.end
  %5 = load i8*, i8** %name, align 8, !dbg !6781
  %call5 = call %struct.extcon_dev* @extcon_get_extcon_dev(i8* %5) #7, !dbg !6783
  store %struct.extcon_dev* %call5, %struct.extcon_dev** %edev, align 8, !dbg !6784
  %6 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !6785
  %tobool = icmp ne %struct.extcon_dev* %6, null, !dbg !6785
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !6787

if.then6:                                         ; preds = %if.then4
  %call7 = call i8* @ERR_PTR(i64 -517) #7, !dbg !6788
  %7 = bitcast i8* %call7 to %struct.extcon_dev*, !dbg !6788
  store %struct.extcon_dev* %7, %struct.extcon_dev** %retval, align 8, !dbg !6789
  br label %return, !dbg !6789

if.end8:                                          ; preds = %if.then4
  %8 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !6790
  store %struct.extcon_dev* %8, %struct.extcon_dev** %retval, align 8, !dbg !6791
  br label %return, !dbg !6791

if.end9:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6792
  %of_node = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 23, !dbg !6793
  %10 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !6793
  %call10 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0) #7, !dbg !6794
  store %struct.device_node* %call10, %struct.device_node** %np_phy, align 8, !dbg !6795
  %11 = load %struct.device_node*, %struct.device_node** %np_phy, align 8, !dbg !6796
  %call11 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %11, i32 -1, i32 -1) #7, !dbg !6797
  store %struct.device_node* %call11, %struct.device_node** %np_conn, align 8, !dbg !6798
  %12 = load %struct.device_node*, %struct.device_node** %np_conn, align 8, !dbg !6799
  %tobool12 = icmp ne %struct.device_node* %12, null, !dbg !6799
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !6801

if.then13:                                        ; preds = %if.end9
  %13 = load %struct.device_node*, %struct.device_node** %np_conn, align 8, !dbg !6802
  %call14 = call %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node* %13) #7, !dbg !6803
  store %struct.extcon_dev* %call14, %struct.extcon_dev** %edev, align 8, !dbg !6804
  br label %if.end15, !dbg !6805

if.else:                                          ; preds = %if.end9
  store %struct.extcon_dev* null, %struct.extcon_dev** %edev, align 8, !dbg !6806
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %14 = load %struct.device_node*, %struct.device_node** %np_conn, align 8, !dbg !6807
  call void @of_node_put(%struct.device_node* %14) #7, !dbg !6808
  %15 = load %struct.device_node*, %struct.device_node** %np_phy, align 8, !dbg !6809
  call void @of_node_put(%struct.device_node* %15) #7, !dbg !6810
  %16 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !6811
  store %struct.extcon_dev* %16, %struct.extcon_dev** %retval, align 8, !dbg !6812
  br label %return, !dbg !6812

return:                                           ; preds = %if.end15, %if.end8, %if.then6, %if.then
  %17 = load %struct.extcon_dev*, %struct.extcon_dev** %retval, align 8, !dbg !6813
  ret %struct.extcon_dev* %17, !dbg !6813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6814 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6820
  %1 = ptrtoint i8* %0 to i64, !dbg !6820
  %2 = inttoptr i64 %1 to i8*, !dbg !6820
  %3 = ptrtoint i8* %2 to i64, !dbg !6820
  %cmp = icmp uge i64 %3, -4095, !dbg !6820
  %lnot = xor i1 %cmp, true, !dbg !6820
  %lnot1 = xor i1 %lnot, true, !dbg !6820
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6820
  %conv = sext i32 %lnot.ext to i64, !dbg !6820
  %tobool = icmp ne i64 %conv, 0, !dbg !6820
  ret i1 %tobool, !dbg !6821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6822 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6825, metadata !DIExpression()), !dbg !6826
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6827
  %1 = ptrtoint i8* %0 to i64, !dbg !6828
  ret i64 %1, !dbg !6829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_property_read_bool(%struct.device* %dev, i8* %propname) #0 !dbg !6830 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6834, metadata !DIExpression()), !dbg !6835
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !6836, metadata !DIExpression()), !dbg !6837
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6838
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !6839
  %call = call zeroext i1 @device_property_present(%struct.device* %0, i8* %1) #7, !dbg !6840
  ret i1 %call, !dbg !6841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_setup_role_switch(%struct.dwc3* %dwc) #0 !dbg !6842 {
entry:
  %retval = alloca i32, align 4
  %dwc.addr = alloca %struct.dwc3*, align 8
  %dwc3_role_switch = alloca %struct.usb_role_switch_desc, align 8
  %str = alloca i8*, align 8
  %mode = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6843, metadata !DIExpression()), !dbg !6844
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch_desc* %dwc3_role_switch, metadata !6845, metadata !DIExpression()), !dbg !6865
  %0 = bitcast %struct.usb_role_switch_desc* %dwc3_role_switch to i8*, !dbg !6865
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 72, i1 false), !dbg !6865
  call void @llvm.dbg.declare(metadata i8** %str, metadata !6866, metadata !DIExpression()), !dbg !6867
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !6868, metadata !DIExpression()), !dbg !6869
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6870, metadata !DIExpression()), !dbg !6871
  %1 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6872
  %dev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %1, i32 0, i32 11, !dbg !6873
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6873
  %call = call i32 @device_property_read_string(%struct.device* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %str) #7, !dbg !6874
  store i32 %call, i32* %ret, align 4, !dbg !6875
  %3 = load i32, i32* %ret, align 4, !dbg !6876
  %cmp = icmp sge i32 %3, 0, !dbg !6878
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6879

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %str, align 8, !dbg !6880
  %call1 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4) #7, !dbg !6881
  %tobool = icmp ne i32 %call1, 0, !dbg !6881
  br i1 %tobool, label %if.else, label %if.then, !dbg !6882

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6883
  %role_switch_default_mode = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 38, !dbg !6885
  store i32 1, i32* %role_switch_default_mode, align 8, !dbg !6886
  store i32 1, i32* %mode, align 4, !dbg !6887
  br label %if.end, !dbg !6888

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6889
  %role_switch_default_mode2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 38, !dbg !6891
  store i32 2, i32* %role_switch_default_mode2, align 8, !dbg !6892
  store i32 2, i32* %mode, align 4, !dbg !6893
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6894
  %dev3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 11, !dbg !6895
  %8 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !6895
  %call4 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %8) #7, !dbg !6896
  %fwnode = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %dwc3_role_switch, i32 0, i32 0, !dbg !6897
  store %struct.fwnode_handle* %call4, %struct.fwnode_handle** %fwnode, align 8, !dbg !6898
  %set = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %dwc3_role_switch, i32 0, i32 4, !dbg !6899
  store i32 (%struct.usb_role_switch*, i32)* @dwc3_usb_role_switch_set, i32 (%struct.usb_role_switch*, i32)** %set, align 8, !dbg !6900
  %get = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %dwc3_role_switch, i32 0, i32 5, !dbg !6901
  store i32 (%struct.usb_role_switch*)* @dwc3_usb_role_switch_get, i32 (%struct.usb_role_switch*)** %get, align 8, !dbg !6902
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6903
  %10 = bitcast %struct.dwc3* %9 to i8*, !dbg !6903
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %dwc3_role_switch, i32 0, i32 7, !dbg !6904
  store i8* %10, i8** %driver_data, align 8, !dbg !6905
  %11 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6906
  %dev5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 11, !dbg !6907
  %12 = load %struct.device*, %struct.device** %dev5, align 8, !dbg !6907
  %call6 = call %struct.usb_role_switch* @usb_role_switch_register(%struct.device* %12, %struct.usb_role_switch_desc* %dwc3_role_switch) #7, !dbg !6908
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6909
  %role_sw = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 37, !dbg !6910
  store %struct.usb_role_switch* %call6, %struct.usb_role_switch** %role_sw, align 8, !dbg !6911
  %14 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6912
  %role_sw7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 37, !dbg !6914
  %15 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw7, align 8, !dbg !6914
  %16 = bitcast %struct.usb_role_switch* %15 to i8*, !dbg !6912
  %call8 = call zeroext i1 @IS_ERR(i8* %16) #7, !dbg !6915
  br i1 %call8, label %if.then9, label %if.end12, !dbg !6916

if.then9:                                         ; preds = %if.end
  %17 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6917
  %role_sw10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 37, !dbg !6918
  %18 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw10, align 8, !dbg !6918
  %19 = bitcast %struct.usb_role_switch* %18 to i8*, !dbg !6917
  %call11 = call i64 @PTR_ERR(i8* %19) #7, !dbg !6919
  %conv = trunc i64 %call11 to i32, !dbg !6919
  store i32 %conv, i32* %retval, align 4, !dbg !6920
  br label %return, !dbg !6920

if.end12:                                         ; preds = %if.end
  %20 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6921
  %21 = load i32, i32* %mode, align 4, !dbg !6922
  call void @dwc3_set_mode(%struct.dwc3* %20, i32 %21) #7, !dbg !6923
  store i32 0, i32* %retval, align 4, !dbg !6924
  br label %return, !dbg !6924

return:                                           ; preds = %if.end12, %if.then9
  %22 = load i32, i32* %retval, align 4, !dbg !6925
  ret i32 %22, !dbg !6925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_drd_notifier(%struct.notifier_block* %nb, i64 %event, i8* %ptr) #0 !dbg !6926 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %event.addr = alloca i64, align 8
  %ptr.addr = alloca i8*, align 8
  %dwc = alloca %struct.dwc3*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dwc3*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !6927, metadata !DIExpression()), !dbg !6928
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !6929, metadata !DIExpression()), !dbg !6930
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6931, metadata !DIExpression()), !dbg !6932
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc, metadata !6933, metadata !DIExpression()), !dbg !6934
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6935, metadata !DIExpression()), !dbg !6937
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !6937
  %1 = bitcast %struct.notifier_block* %0 to i8*, !dbg !6937
  store i8* %1, i8** %__mptr, align 8, !dbg !6937
  br label %do.body, !dbg !6937

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6938

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6937
  %add.ptr = getelementptr i8, i8* %2, i64 -848, !dbg !6937
  %3 = bitcast i8* %add.ptr to %struct.dwc3*, !dbg !6937
  store %struct.dwc3* %3, %struct.dwc3** %tmp, align 8, !dbg !6938
  %4 = load %struct.dwc3*, %struct.dwc3** %tmp, align 8, !dbg !6937
  store %struct.dwc3* %4, %struct.dwc3** %dwc, align 8, !dbg !6934
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !6940
  %6 = load i64, i64* %event.addr, align 8, !dbg !6941
  %tobool = icmp ne i64 %6, 0, !dbg !6941
  %7 = zext i1 %tobool to i64, !dbg !6941
  %cond = select i1 %tobool, i32 1, i32 2, !dbg !6941
  call void @dwc3_set_mode(%struct.dwc3* %5, i32 %cond) #7, !dbg !6942
  ret i32 0, !dbg !6943
}

; Function Attrs: noredzone
declare dso_local i32 @extcon_register_notifier(%struct.extcon_dev*, i32, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_drd_update(%struct.dwc3* %dwc) #0 !dbg !6944 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %id = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6945, metadata !DIExpression()), !dbg !6946
  call void @llvm.dbg.declare(metadata i32* %id, metadata !6947, metadata !DIExpression()), !dbg !6948
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6949
  %edev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 34, !dbg !6951
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !6951
  %tobool = icmp ne %struct.extcon_dev* %1, null, !dbg !6949
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6952

if.then:                                          ; preds = %entry
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6953
  %edev1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 34, !dbg !6955
  %3 = load %struct.extcon_dev*, %struct.extcon_dev** %edev1, align 8, !dbg !6955
  %call = call i32 @extcon_get_state(%struct.extcon_dev* %3, i32 2) #7, !dbg !6956
  store i32 %call, i32* %id, align 4, !dbg !6957
  %4 = load i32, i32* %id, align 4, !dbg !6958
  %cmp = icmp slt i32 %4, 0, !dbg !6960
  br i1 %cmp, label %if.then2, label %if.end, !dbg !6961

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %id, align 4, !dbg !6962
  br label %if.end, !dbg !6963

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6964
  %6 = load i32, i32* %id, align 4, !dbg !6965
  %tobool3 = icmp ne i32 %6, 0, !dbg !6965
  %7 = zext i1 %tobool3 to i64, !dbg !6965
  %cond = select i1 %tobool3, i32 1, i32 2, !dbg !6965
  call void @dwc3_set_mode(%struct.dwc3* %5, i32 %cond) #7, !dbg !6966
  br label %if.end4, !dbg !6967

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !6968
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_otg_get_irq(%struct.dwc3* %dwc) #0 !dbg !6969 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %dwc3_pdev = alloca %struct.platform_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.platform_device*, align 8
  %irq = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !6970, metadata !DIExpression()), !dbg !6971
  call void @llvm.dbg.declare(metadata %struct.platform_device** %dwc3_pdev, metadata !6972, metadata !DIExpression()), !dbg !6973
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6974, metadata !DIExpression()), !dbg !6976
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !6976
  %dev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 11, !dbg !6976
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6976
  %2 = bitcast %struct.device* %1 to i8*, !dbg !6976
  store i8* %2, i8** %__mptr, align 8, !dbg !6976
  br label %do.body, !dbg !6976

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6977

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !6976
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !6976
  %4 = bitcast i8* %add.ptr to %struct.platform_device*, !dbg !6976
  store %struct.platform_device* %4, %struct.platform_device** %tmp, align 8, !dbg !6977
  %5 = load %struct.platform_device*, %struct.platform_device** %tmp, align 8, !dbg !6976
  store %struct.platform_device* %5, %struct.platform_device** %dwc3_pdev, align 8, !dbg !6973
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !6979, metadata !DIExpression()), !dbg !6980
  %6 = load %struct.platform_device*, %struct.platform_device** %dwc3_pdev, align 8, !dbg !6981
  %call = call i32 @platform_get_irq_byname_optional(%struct.platform_device* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !6982
  store i32 %call, i32* %irq, align 4, !dbg !6983
  %7 = load i32, i32* %irq, align 4, !dbg !6984
  %cmp = icmp sgt i32 %7, 0, !dbg !6986
  br i1 %cmp, label %if.then, label %if.end, !dbg !6987

if.then:                                          ; preds = %do.end
  br label %out, !dbg !6988

if.end:                                           ; preds = %do.end
  %8 = load i32, i32* %irq, align 4, !dbg !6989
  %cmp1 = icmp eq i32 %8, -517, !dbg !6991
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6992

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !6993

if.end3:                                          ; preds = %if.end
  %9 = load %struct.platform_device*, %struct.platform_device** %dwc3_pdev, align 8, !dbg !6994
  %call4 = call i32 @platform_get_irq_byname_optional(%struct.platform_device* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !6995
  store i32 %call4, i32* %irq, align 4, !dbg !6996
  %10 = load i32, i32* %irq, align 4, !dbg !6997
  %cmp5 = icmp sgt i32 %10, 0, !dbg !6999
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !7000

if.then6:                                         ; preds = %if.end3
  br label %out, !dbg !7001

if.end7:                                          ; preds = %if.end3
  %11 = load i32, i32* %irq, align 4, !dbg !7002
  %cmp8 = icmp eq i32 %11, -517, !dbg !7004
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !7005

if.then9:                                         ; preds = %if.end7
  br label %out, !dbg !7006

if.end10:                                         ; preds = %if.end7
  %12 = load %struct.platform_device*, %struct.platform_device** %dwc3_pdev, align 8, !dbg !7007
  %call11 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0) #7, !dbg !7008
  store i32 %call11, i32* %irq, align 4, !dbg !7009
  %13 = load i32, i32* %irq, align 4, !dbg !7010
  %cmp12 = icmp sgt i32 %13, 0, !dbg !7012
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7013

if.then13:                                        ; preds = %if.end10
  br label %out, !dbg !7014

if.end14:                                         ; preds = %if.end10
  %14 = load i32, i32* %irq, align 4, !dbg !7015
  %tobool = icmp ne i32 %14, 0, !dbg !7015
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !7017

if.then15:                                        ; preds = %if.end14
  store i32 -22, i32* %irq, align 4, !dbg !7018
  br label %if.end16, !dbg !7019

if.end16:                                         ; preds = %if.then15, %if.end14
  br label %out, !dbg !7015

out:                                              ; preds = %if.end16, %if.then13, %if.then9, %if.then6, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !7020), !dbg !7021
  %15 = load i32, i32* %irq, align 4, !dbg !7022
  ret i32 %15, !dbg !7023
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_otg_irq(i32 %irq, i8* %_dwc) #0 !dbg !7024 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %_dwc.addr = alloca i8*, align 8
  %reg = alloca i32, align 4
  %dwc = alloca %struct.dwc3*, align 8
  %ret = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !7028, metadata !DIExpression()), !dbg !7029
  store i8* %_dwc, i8** %_dwc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_dwc.addr, metadata !7030, metadata !DIExpression()), !dbg !7031
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !7032, metadata !DIExpression()), !dbg !7033
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc, metadata !7034, metadata !DIExpression()), !dbg !7035
  %0 = load i8*, i8** %_dwc.addr, align 8, !dbg !7036
  %1 = bitcast i8* %0 to %struct.dwc3*, !dbg !7036
  store %struct.dwc3* %1, %struct.dwc3** %dwc, align 8, !dbg !7035
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7037, metadata !DIExpression()), !dbg !7038
  store i32 0, i32* %ret, align 4, !dbg !7038
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7039
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 29, !dbg !7040
  %3 = load i8*, i8** %regs, align 8, !dbg !7040
  %call = call i32 @dwc3_readl(i8* %3, i32 52232) #7, !dbg !7041
  store i32 %call, i32* %reg, align 4, !dbg !7042
  %4 = load i32, i32* %reg, align 4, !dbg !7043
  %tobool = icmp ne i32 %4, 0, !dbg !7043
  br i1 %tobool, label %if.then, label %if.end11, !dbg !7045

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %reg, align 4, !dbg !7046
  %conv = zext i32 %5 to i64, !dbg !7046
  %and = and i64 %conv, 268373760, !dbg !7049
  %tobool1 = icmp ne i64 %and, 0, !dbg !7049
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !7050

if.then2:                                         ; preds = %if.then
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7051
  %regs3 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 29, !dbg !7053
  %7 = load i8*, i8** %regs3, align 8, !dbg !7053
  %8 = load i32, i32* %reg, align 4, !dbg !7054
  call void @dwc3_writel(i8* %7, i32 52232, i32 %8) #7, !dbg !7055
  store i32 0, i32* %retval, align 4, !dbg !7056
  br label %return, !dbg !7056

if.end:                                           ; preds = %if.then
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7057
  %current_otg_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 42, !dbg !7059
  %10 = load i32, i32* %current_otg_role, align 8, !dbg !7059
  %cmp = icmp eq i32 %10, 1, !dbg !7060
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !7061

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %reg, align 4, !dbg !7062
  %conv5 = zext i32 %11 to i64, !dbg !7062
  %and6 = and i64 %conv5, 2147483648, !dbg !7063
  %tobool7 = icmp ne i64 %and6, 0, !dbg !7063
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !7064

if.then8:                                         ; preds = %land.lhs.true
  %12 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7065
  %otg_restart_host = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 44, !dbg !7066
  store i8 1, i8* %otg_restart_host, align 8, !dbg !7067
  br label %if.end9, !dbg !7065

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7068
  %regs10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 29, !dbg !7069
  %14 = load i8*, i8** %regs10, align 8, !dbg !7069
  %15 = load i32, i32* %reg, align 4, !dbg !7070
  call void @dwc3_writel(i8* %14, i32 52232, i32 %15) #7, !dbg !7071
  store i32 2, i32* %ret, align 4, !dbg !7072
  br label %if.end11, !dbg !7073

if.end11:                                         ; preds = %if.end9, %entry
  %16 = load i32, i32* %ret, align 4, !dbg !7074
  store i32 %16, i32* %retval, align 4, !dbg !7075
  br label %return, !dbg !7075

return:                                           ; preds = %if.end11, %if.then2
  %17 = load i32, i32* %retval, align 4, !dbg !7076
  ret i32 %17, !dbg !7076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_otg_thread_irq(i32 %irq, i8* %_dwc) #0 !dbg !7077 {
entry:
  %lock.addr.i3 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i3, metadata !7078, metadata !DIExpression()), !dbg !7082
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !7084, metadata !DIExpression()), !dbg !7086
  %irq.addr = alloca i32, align 4
  %_dwc.addr = alloca i8*, align 8
  %dwc = alloca %struct.dwc3*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !7088, metadata !DIExpression()), !dbg !7089
  store i8* %_dwc, i8** %_dwc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_dwc.addr, metadata !7090, metadata !DIExpression()), !dbg !7091
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc, metadata !7092, metadata !DIExpression()), !dbg !7093
  %0 = load i8*, i8** %_dwc.addr, align 8, !dbg !7094
  %1 = bitcast i8* %0 to %struct.dwc3*, !dbg !7094
  store %struct.dwc3* %1, %struct.dwc3** %dwc, align 8, !dbg !7093
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7095
  %lock = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 10, !dbg !7096
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7097, !srcloc !7099
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7100
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !7100
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !7100
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7102
  %otg_restart_host = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 44, !dbg !7104
  %6 = load i8, i8* %otg_restart_host, align 8, !dbg !7104
  %tobool = trunc i8 %6 to i1, !dbg !7104
  br i1 %tobool, label %if.then, label %if.end, !dbg !7105

if.then:                                          ; preds = %entry
  %7 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7106
  call void @dwc3_otg_host_init(%struct.dwc3* %7) #7, !dbg !7108
  %8 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7109
  %otg_restart_host1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 44, !dbg !7110
  store i8 0, i8* %otg_restart_host1, align 8, !dbg !7111
  br label %if.end, !dbg !7112

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7113
  %lock2 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 10, !dbg !7114
  store %struct.spinlock* %lock2, %struct.spinlock** %lock.addr.i3, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7115, !srcloc !7117
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i3, align 8, !dbg !7118
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !7118
  %rlock.i4 = bitcast %union.anon* %11 to %struct.raw_spinlock*, !dbg !7118
  %12 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7120
  call void @dwc3_set_mode(%struct.dwc3* %12, i32 3) #7, !dbg !7121
  ret i32 1, !dbg !7122
}

; Function Attrs: noredzone
declare dso_local void @dwc3_set_mode(%struct.dwc3*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwc3_drd_exit(%struct.dwc3* %dwc) #0 !dbg !7123 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !6189, metadata !DIExpression()), !dbg !7124
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6197, metadata !DIExpression()), !dbg !7127
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6199, metadata !DIExpression()), !dbg !7128
  %dwc.addr = alloca %struct.dwc3*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy13 = alloca i64, align 8
  %__dummy214 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !7135, metadata !DIExpression()), !dbg !7136
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !7137, metadata !DIExpression()), !dbg !7138
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7139
  %role_sw = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 37, !dbg !7141
  %1 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw, align 8, !dbg !7141
  %tobool = icmp ne %struct.usb_role_switch* %1, null, !dbg !7139
  br i1 %tobool, label %if.then, label %if.end, !dbg !7142

if.then:                                          ; preds = %entry
  %2 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7143
  %role_sw1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %2, i32 0, i32 37, !dbg !7144
  %3 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw1, align 8, !dbg !7144
  call void @usb_role_switch_unregister(%struct.usb_role_switch* %3) #7, !dbg !7145
  br label %if.end, !dbg !7145

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7146
  %edev = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 34, !dbg !7148
  %5 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !7148
  %tobool2 = icmp ne %struct.extcon_dev* %5, null, !dbg !7146
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !7149

if.then3:                                         ; preds = %if.end
  %6 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7150
  %edev4 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 34, !dbg !7151
  %7 = load %struct.extcon_dev*, %struct.extcon_dev** %edev4, align 8, !dbg !7151
  %8 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7152
  %edev_nb = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 35, !dbg !7153
  %call = call i32 @extcon_unregister_notifier(%struct.extcon_dev* %7, i32 2, %struct.notifier_block* %edev_nb) #7, !dbg !7154
  br label %if.end5, !dbg !7154

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7155
  %drd_work = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0, !dbg !7156
  %call6 = call zeroext i1 @cancel_work_sync(%struct.work_struct* %drd_work) #7, !dbg !7157
  %10 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7158
  %current_dr_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 32, !dbg !7159
  %11 = load i32, i32* %current_dr_role, align 4, !dbg !7159
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
  ], !dbg !7160

sw.bb:                                            ; preds = %if.end5
  %12 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7161
  call void @dwc3_host_exit(%struct.dwc3* %12) #7, !dbg !7162
  br label %sw.epilog, !dbg !7163

sw.bb7:                                           ; preds = %if.end5
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7164
  call void @dwc3_gadget_exit(%struct.dwc3* %13) #7, !dbg !7165
  %14 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7166
  call void @dwc3_event_buffers_cleanup(%struct.dwc3* %14) #7, !dbg !7167
  br label %sw.epilog, !dbg !7168

sw.bb8:                                           ; preds = %if.end5
  %15 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7169
  call void @dwc3_otg_exit(%struct.dwc3* %15) #7, !dbg !7170
  br label %do.body, !dbg !7171

do.body:                                          ; preds = %sw.bb8
  br label %do.body9, !dbg !7172

do.body9:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !7173, metadata !DIExpression()), !dbg !7175
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !7176, metadata !DIExpression()), !dbg !7175
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !7175
  %conv = zext i1 %cmp to i32, !dbg !7175
  store i32 1, i32* %tmp, align 4, !dbg !7175
  %16 = load i32, i32* %tmp, align 4, !dbg !7175
  br label %do.body10, !dbg !7177

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !7178

do.body11:                                        ; preds = %do.body10
  br label %do.body12, !dbg !7179

do.body12:                                        ; preds = %do.body11
  call void @llvm.dbg.declare(metadata i64* %__dummy13, metadata !7181, metadata !DIExpression()), !dbg !7184
  call void @llvm.dbg.declare(metadata i64* %__dummy214, metadata !7185, metadata !DIExpression()), !dbg !7184
  %cmp15 = icmp eq i64* %__dummy13, %__dummy214, !dbg !7184
  %conv16 = zext i1 %cmp15 to i32, !dbg !7184
  store i32 1, i32* %tmp17, align 4, !dbg !7184
  %17 = load i32, i32* %tmp17, align 4, !dbg !7184
  %call18 = call i64 @arch_local_irq_save() #7, !dbg !7186
  store i64 %call18, i64* %flags, align 8, !dbg !7186
  br label %do.end, !dbg !7186

do.end:                                           ; preds = %do.body12
  br label %do.end19, !dbg !7179

do.end19:                                         ; preds = %do.end
  br label %do.body20, !dbg !7178

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7187, !srcloc !7188
  br label %do.body21, !dbg !7187

do.body21:                                        ; preds = %do.body20
  %18 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7189
  %lock = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 10, !dbg !7189
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7190
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !7191
  %rlock.i = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !7191
  br label %do.end23, !dbg !7189

do.end23:                                         ; preds = %do.body21
  br label %do.end24, !dbg !7187

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !7178

do.end25:                                         ; preds = %do.end24
  br label %do.end26, !dbg !7177

do.end26:                                         ; preds = %do.end25
  br label %do.end27, !dbg !7172

do.end27:                                         ; preds = %do.end26
  %21 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7192
  %desired_otg_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 43, !dbg !7193
  store i32 0, i32* %desired_otg_role, align 4, !dbg !7194
  %22 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7195
  %lock28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 10, !dbg !7196
  %23 = load i64, i64* %flags, align 8, !dbg !7197
  store %struct.spinlock* %lock28, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %23, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !7198
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !7198
  store i32 1, i32* %tmp.i, align 4, !dbg !7198
  %24 = load i32, i32* %tmp.i, align 4, !dbg !7198
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !7199
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !7199
  store i32 1, i32* %tmp8.i, align 4, !dbg !7199
  %25 = load i32, i32* %tmp8.i, align 4, !dbg !7199
  %26 = load i64, i64* %flags.addr.i, align 8, !dbg !7200
  call void @arch_local_irq_restore(i64 %26) #8, !dbg !7200
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7201, !srcloc !6348
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !7202
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !7202
  %rlock.i35 = bitcast %union.anon* %28 to %struct.raw_spinlock*, !dbg !7202
  %29 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7203
  call void @dwc3_otg_update(%struct.dwc3* %29, i1 zeroext true) #7, !dbg !7204
  br label %sw.epilog, !dbg !7205

sw.default:                                       ; preds = %if.end5
  br label %sw.epilog, !dbg !7206

sw.epilog:                                        ; preds = %sw.default, %do.end27, %sw.bb7, %sw.bb
  %30 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7207
  %otg_irq = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 41, !dbg !7209
  %31 = load i32, i32* %otg_irq, align 4, !dbg !7209
  %tobool29 = icmp ne i32 %31, 0, !dbg !7207
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !7210

if.then30:                                        ; preds = %sw.epilog
  %32 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7211
  %otg_irq31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 41, !dbg !7212
  %33 = load i32, i32* %otg_irq31, align 4, !dbg !7212
  %34 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7213
  %35 = bitcast %struct.dwc3* %34 to i8*, !dbg !7213
  %call32 = call i8* @free_irq(i32 %33, i8* %35) #7, !dbg !7214
  br label %if.end33, !dbg !7214

if.end33:                                         ; preds = %if.then30, %sw.epilog
  ret void, !dbg !7215
}

; Function Attrs: noredzone
declare dso_local void @usb_role_switch_unregister(%struct.usb_role_switch*) #2

; Function Attrs: noredzone
declare dso_local i32 @extcon_unregister_notifier(%struct.extcon_dev*, i32, %struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !7216 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !7223, metadata !DIExpression()), !dbg !7224
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7225, metadata !DIExpression()), !dbg !7224
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !7224
  %1 = bitcast i8* %0 to i32*, !dbg !7224
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !7224, !srcloc !7226
  store i32 %2, i32* %ret, align 4, !dbg !7224
  %3 = load i32, i32* %ret, align 4, !dbg !7224
  ret i32 %3, !dbg !7224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dwc3_readl(i8* %base, i32 %offset, i32 %value) #0 !dbg !7227 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !7229, metadata !DIExpression()), !dbg !7230
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !7231, metadata !DIExpression()), !dbg !7230
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !7232, metadata !DIExpression()), !dbg !7230
  ret void, !dbg !7230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !7233 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !7237, metadata !DIExpression()), !dbg !7238
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !7239, metadata !DIExpression()), !dbg !7238
  %0 = load i32, i32* %val.addr, align 4, !dbg !7238
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !7238
  %2 = bitcast i8* %1 to i32*, !dbg !7238
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !7238, !srcloc !7240
  ret void, !dbg !7238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_dwc3_writel(i8* %base, i32 %offset, i32 %value) #0 !dbg !7241 {
entry:
  %base.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !7242, metadata !DIExpression()), !dbg !7243
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !7244, metadata !DIExpression()), !dbg !7243
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !7245, metadata !DIExpression()), !dbg !7243
  ret void, !dbg !7243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwc3_otg_enable_events(%struct.dwc3* %dwc, i32 %enable_mask) #0 !dbg !7246 {
entry:
  %dwc.addr = alloca %struct.dwc3*, align 8
  %enable_mask.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.dwc3* %dwc, %struct.dwc3** %dwc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc.addr, metadata !7247, metadata !DIExpression()), !dbg !7248
  store i32 %enable_mask, i32* %enable_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable_mask.addr, metadata !7249, metadata !DIExpression()), !dbg !7250
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !7251, metadata !DIExpression()), !dbg !7252
  %0 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7253
  %regs = getelementptr inbounds %struct.dwc3, %struct.dwc3* %0, i32 0, i32 29, !dbg !7254
  %1 = load i8*, i8** %regs, align 8, !dbg !7254
  %call = call i32 @dwc3_readl(i8* %1, i32 52236) #7, !dbg !7255
  store i32 %call, i32* %reg, align 4, !dbg !7252
  %2 = load i32, i32* %enable_mask.addr, align 4, !dbg !7256
  %3 = load i32, i32* %reg, align 4, !dbg !7257
  %or = or i32 %3, %2, !dbg !7257
  store i32 %or, i32* %reg, align 4, !dbg !7257
  %4 = load %struct.dwc3*, %struct.dwc3** %dwc.addr, align 8, !dbg !7258
  %regs1 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 29, !dbg !7259
  %5 = load i8*, i8** %regs1, align 8, !dbg !7259
  %6 = load i32, i32* %reg, align 4, !dbg !7260
  call void @dwc3_writel(i8* %5, i32 52236, i32 %6) #7, !dbg !7261
  ret void, !dbg !7262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !7263 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !7264, metadata !DIExpression()), !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7267, metadata !DIExpression()), !dbg !7266
  %0 = load i64, i64* %__edi, align 8, !dbg !7266
  store i64 %0, i64* %__edi, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7268, metadata !DIExpression()), !dbg !7266
  %1 = load i64, i64* %__esi, align 8, !dbg !7266
  store i64 %1, i64* %__esi, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7269, metadata !DIExpression()), !dbg !7266
  %2 = load i64, i64* %__edx, align 8, !dbg !7266
  store i64 %2, i64* %__edx, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7270, metadata !DIExpression()), !dbg !7266
  %3 = load i64, i64* %__ecx, align 8, !dbg !7266
  store i64 %3, i64* %__ecx, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7271, metadata !DIExpression()), !dbg !7266
  %4 = load i64, i64* %__eax, align 8, !dbg !7266
  store i64 %4, i64* %__eax, align 8, !dbg !7266
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !7266
  %6 = call i64 @llvm.read_register.i64(metadata !5977), !dbg !7272
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !7272, !srcloc !7275
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !7272
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !7272
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7272
  call void @llvm.write_register.i64(metadata !5977, i64 %asmresult1), !dbg !7272
  %8 = load i64, i64* %__eax, align 8, !dbg !7272
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !7276, metadata !DIExpression()), !dbg !7278
  store i64 -1, i64* %__mask, align 8, !dbg !7278
  %9 = load i64, i64* %__mask, align 8, !dbg !7278
  store i64 %9, i64* %tmp, align 8, !dbg !7278
  %10 = load i64, i64* %tmp, align 8, !dbg !7278
  %and = and i64 %8, %10, !dbg !7272
  store i64 %and, i64* %__ret, align 8, !dbg !7272
  %11 = load i64, i64* %__ret, align 8, !dbg !7266
  store i64 %11, i64* %tmp2, align 8, !dbg !7279
  %12 = load i64, i64* %tmp2, align 8, !dbg !7266
  ret i64 %12, !dbg !7280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !7281 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7282, metadata !DIExpression()), !dbg !7284
  %0 = load i64, i64* %__edi, align 8, !dbg !7284
  store i64 %0, i64* %__edi, align 8, !dbg !7284
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7285, metadata !DIExpression()), !dbg !7284
  %1 = load i64, i64* %__esi, align 8, !dbg !7284
  store i64 %1, i64* %__esi, align 8, !dbg !7284
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7286, metadata !DIExpression()), !dbg !7284
  %2 = load i64, i64* %__edx, align 8, !dbg !7284
  store i64 %2, i64* %__edx, align 8, !dbg !7284
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7287, metadata !DIExpression()), !dbg !7284
  %3 = load i64, i64* %__ecx, align 8, !dbg !7284
  store i64 %3, i64* %__ecx, align 8, !dbg !7284
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7288, metadata !DIExpression()), !dbg !7284
  %4 = load i64, i64* %__eax, align 8, !dbg !7284
  store i64 %4, i64* %__eax, align 8, !dbg !7284
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !7284
  %6 = call i64 @llvm.read_register.i64(metadata !5977), !dbg !7284
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !7284, !srcloc !7289
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !7284
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !7284
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7284
  call void @llvm.write_register.i64(metadata !5977, i64 %asmresult1), !dbg !7284
  ret void, !dbg !7290
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !7291 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !7294, metadata !DIExpression()), !dbg !7295
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7296, metadata !DIExpression()), !dbg !7298
  %0 = load i64, i64* %__edi, align 8, !dbg !7298
  store i64 %0, i64* %__edi, align 8, !dbg !7298
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7299, metadata !DIExpression()), !dbg !7298
  %1 = load i64, i64* %__esi, align 8, !dbg !7298
  store i64 %1, i64* %__esi, align 8, !dbg !7298
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7300, metadata !DIExpression()), !dbg !7298
  %2 = load i64, i64* %__edx, align 8, !dbg !7298
  store i64 %2, i64* %__edx, align 8, !dbg !7298
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7301, metadata !DIExpression()), !dbg !7298
  %3 = load i64, i64* %__ecx, align 8, !dbg !7298
  store i64 %3, i64* %__ecx, align 8, !dbg !7298
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7302, metadata !DIExpression()), !dbg !7298
  %4 = load i64, i64* %__eax, align 8, !dbg !7298
  store i64 %4, i64* %__eax, align 8, !dbg !7298
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !7298
  %6 = call i64 @llvm.read_register.i64(metadata !5977), !dbg !7298
  %7 = load i64, i64* %f.addr, align 8, !dbg !7298
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !7298, !srcloc !7303
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !7298
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !7298
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7298
  call void @llvm.write_register.i64(metadata !5977, i64 %asmresult1), !dbg !7298
  ret void, !dbg !7304
}

; Function Attrs: noredzone
declare dso_local %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local %struct.extcon_dev* @extcon_get_extcon_dev(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !7305 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !7308, metadata !DIExpression()), !dbg !7309
  %0 = load i64, i64* %error.addr, align 8, !dbg !7310
  %1 = inttoptr i64 %0 to i8*, !dbg !7311
  ret i8* %1, !dbg !7312
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !7313 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !7316, metadata !DIExpression()), !dbg !7317
  ret void, !dbg !7318
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @device_property_present(%struct.device*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_usb_role_switch_set(%struct.usb_role_switch* %sw, i32 %role) #0 !dbg !7319 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %role.addr = alloca i32, align 4
  %dwc = alloca %struct.dwc3*, align 8
  %mode = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !7320, metadata !DIExpression()), !dbg !7321
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !7322, metadata !DIExpression()), !dbg !7323
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc, metadata !7324, metadata !DIExpression()), !dbg !7325
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !7326
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #7, !dbg !7327
  %1 = bitcast i8* %call to %struct.dwc3*, !dbg !7327
  store %struct.dwc3* %1, %struct.dwc3** %dwc, align 8, !dbg !7325
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !7328, metadata !DIExpression()), !dbg !7329
  %2 = load i32, i32* %role.addr, align 4, !dbg !7330
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !7331

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %mode, align 4, !dbg !7332
  br label %sw.epilog, !dbg !7334

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %mode, align 4, !dbg !7335
  br label %sw.epilog, !dbg !7336

sw.default:                                       ; preds = %entry
  %3 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7337
  %role_switch_default_mode = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 38, !dbg !7339
  %4 = load i32, i32* %role_switch_default_mode, align 8, !dbg !7339
  %cmp = icmp eq i32 %4, 1, !dbg !7340
  br i1 %cmp, label %if.then, label %if.else, !dbg !7341

if.then:                                          ; preds = %sw.default
  store i32 1, i32* %mode, align 4, !dbg !7342
  br label %if.end, !dbg !7343

if.else:                                          ; preds = %sw.default
  store i32 2, i32* %mode, align 4, !dbg !7344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !7345

sw.epilog:                                        ; preds = %if.end, %sw.bb1, %sw.bb
  %5 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7346
  %6 = load i32, i32* %mode, align 4, !dbg !7347
  call void @dwc3_set_mode(%struct.dwc3* %5, i32 %6) #7, !dbg !7348
  ret i32 0, !dbg !7349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwc3_usb_role_switch_get(%struct.usb_role_switch* %sw) #0 !dbg !7350 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !6189, metadata !DIExpression()), !dbg !7351
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6197, metadata !DIExpression()), !dbg !7353
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6199, metadata !DIExpression()), !dbg !7354
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %dwc = alloca %struct.dwc3*, align 8
  %flags = alloca i64, align 8
  %role = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !7361, metadata !DIExpression()), !dbg !7362
  call void @llvm.dbg.declare(metadata %struct.dwc3** %dwc, metadata !7363, metadata !DIExpression()), !dbg !7364
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !7365
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #7, !dbg !7366
  %1 = bitcast i8* %call to %struct.dwc3*, !dbg !7366
  store %struct.dwc3* %1, %struct.dwc3** %dwc, align 8, !dbg !7364
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !7367, metadata !DIExpression()), !dbg !7368
  call void @llvm.dbg.declare(metadata i32* %role, metadata !7369, metadata !DIExpression()), !dbg !7370
  br label %do.body, !dbg !7371

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7372

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !7373, metadata !DIExpression()), !dbg !7375
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !7376, metadata !DIExpression()), !dbg !7375
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !7375
  %conv = zext i1 %cmp to i32, !dbg !7375
  store i32 1, i32* %tmp, align 4, !dbg !7375
  %2 = load i32, i32* %tmp, align 4, !dbg !7375
  br label %do.body2, !dbg !7377

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !7378

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !7379

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !7381, metadata !DIExpression()), !dbg !7384
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !7385, metadata !DIExpression()), !dbg !7384
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !7384
  %conv8 = zext i1 %cmp7 to i32, !dbg !7384
  store i32 1, i32* %tmp9, align 4, !dbg !7384
  %3 = load i32, i32* %tmp9, align 4, !dbg !7384
  %call10 = call i64 @arch_local_irq_save() #7, !dbg !7386
  store i64 %call10, i64* %flags, align 8, !dbg !7386
  br label %do.end, !dbg !7386

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !7379

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !7378

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7387, !srcloc !7388
  br label %do.body13, !dbg !7387

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7389
  %lock = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 10, !dbg !7389
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7390
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !7391
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !7391
  br label %do.end15, !dbg !7389

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !7387

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !7378

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !7377

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !7372

do.end19:                                         ; preds = %do.end18
  %7 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7392
  %current_dr_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 32, !dbg !7393
  %8 = load i32, i32* %current_dr_role, align 4, !dbg !7393
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
  ], !dbg !7394

sw.bb:                                            ; preds = %do.end19
  store i32 1, i32* %role, align 4, !dbg !7395
  br label %sw.epilog, !dbg !7397

sw.bb20:                                          ; preds = %do.end19
  store i32 2, i32* %role, align 4, !dbg !7398
  br label %sw.epilog, !dbg !7399

sw.bb21:                                          ; preds = %do.end19
  %9 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7400
  %current_otg_role = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 42, !dbg !7401
  %10 = load i32, i32* %current_otg_role, align 8, !dbg !7401
  store i32 %10, i32* %role, align 4, !dbg !7402
  br label %sw.epilog, !dbg !7403

sw.default:                                       ; preds = %do.end19
  %11 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7404
  %role_switch_default_mode = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 38, !dbg !7406
  %12 = load i32, i32* %role_switch_default_mode, align 8, !dbg !7406
  %cmp22 = icmp eq i32 %12, 1, !dbg !7407
  br i1 %cmp22, label %if.then, label %if.else, !dbg !7408

if.then:                                          ; preds = %sw.default
  store i32 1, i32* %role, align 4, !dbg !7409
  br label %if.end, !dbg !7410

if.else:                                          ; preds = %sw.default
  store i32 2, i32* %role, align 4, !dbg !7411
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !7412

sw.epilog:                                        ; preds = %if.end, %sw.bb21, %sw.bb20, %sw.bb
  %13 = load %struct.dwc3*, %struct.dwc3** %dwc, align 8, !dbg !7413
  %lock24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 10, !dbg !7414
  %14 = load i64, i64* %flags, align 8, !dbg !7415
  store %struct.spinlock* %lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !541, metadata !6333, metadata !DIExpression()) #5, !dbg !7416
  call void @llvm.dbg.declare(metadata !541, metadata !6337, metadata !DIExpression()) #5, !dbg !7416
  store i32 1, i32* %tmp.i, align 4, !dbg !7416
  %15 = load i32, i32* %tmp.i, align 4, !dbg !7416
  call void @llvm.dbg.declare(metadata !541, metadata !6338, metadata !DIExpression()) #5, !dbg !7417
  call void @llvm.dbg.declare(metadata !541, metadata !6344, metadata !DIExpression()) #5, !dbg !7417
  store i32 1, i32* %tmp8.i, align 4, !dbg !7417
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !7417
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !7418
  call void @arch_local_irq_restore(i64 %17) #8, !dbg !7418
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !7419, !srcloc !6348
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !7420
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !7420
  %rlock.i26 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !7420
  %20 = load i32, i32* %role, align 4, !dbg !7421
  ret i32 %20, !dbg !7422
}

; Function Attrs: noredzone
declare dso_local %struct.usb_role_switch* @usb_role_switch_register(%struct.device*, %struct.usb_role_switch_desc*) #2

; Function Attrs: noredzone
declare dso_local i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch*) #2

; Function Attrs: noredzone
declare dso_local i32 @extcon_get_state(%struct.extcon_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq_byname_optional(%struct.platform_device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!5977}
!llvm.module.flags = !{!5978, !5979, !5980, !5981}
!llvm.ident = !{!5982}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !286, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/usb/dwc3/drd.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !16, !22, !29, !41, !48, !53, !59, !64, !70, !77, !83, !92, !100, !106, !112, !119, !126, !136, !147, !153, !160, !183, !190, !195, !211, !219, !224, !231, !239, !246, !252, !269, !274, !280}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !4, line: 41, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !10, line: 15, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !17, line: 118, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !23, line: 19, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !30, line: 49, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!37 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!38 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!39 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!40 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !42, line: 502, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !17, line: 315, baseType: !5, size: 32, elements: !49)
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !54, line: 546, baseType: !5, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !60, line: 65, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63}
!62 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !65, line: 16, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !71, line: 59, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !78, line: 54, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !84, line: 296, baseType: !5, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !93, line: 9, baseType: !5, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!99 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !101, line: 26, baseType: !5, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !107, line: 44, baseType: !5, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !113, line: 343, baseType: !5, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !42, line: 524, baseType: !5, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !127, line: 1146, baseType: !5, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !127, line: 1156, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146}
!138 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_type", file: !148, line: 36, baseType: !5, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/usb/phy.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "USB_PHY_TYPE_UNDEFINED", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_PHY_TYPE_USB2", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_PHY_TYPE_USB3", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_events", file: !148, line: 27, baseType: !5, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "USB_EVENT_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_EVENT_VBUS", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_EVENT_ID", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "USB_EVENT_CHARGER", value: 3, isUnsigned: true)
!159 = !DIEnumerator(name: "USB_EVENT_ENUMERATED", value: 4, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !161, line: 24, baseType: !5, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!163 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!166 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!167 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!168 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!169 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!170 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!171 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!172 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!173 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!174 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!175 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!176 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!177 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!178 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!179 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!180 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!181 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!182 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !184, line: 96, baseType: !5, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !184, line: 476, baseType: !5, size: 32, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_otg_state", file: !148, line: 43, baseType: !5, size: 32, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!197 = !DIEnumerator(name: "OTG_STATE_UNDEFINED", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "OTG_STATE_B_IDLE", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "OTG_STATE_B_SRP_INIT", value: 2, isUnsigned: true)
!200 = !DIEnumerator(name: "OTG_STATE_B_PERIPHERAL", value: 3, isUnsigned: true)
!201 = !DIEnumerator(name: "OTG_STATE_B_WAIT_ACON", value: 4, isUnsigned: true)
!202 = !DIEnumerator(name: "OTG_STATE_B_HOST", value: 5, isUnsigned: true)
!203 = !DIEnumerator(name: "OTG_STATE_A_IDLE", value: 6, isUnsigned: true)
!204 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VRISE", value: 7, isUnsigned: true)
!205 = !DIEnumerator(name: "OTG_STATE_A_WAIT_BCON", value: 8, isUnsigned: true)
!206 = !DIEnumerator(name: "OTG_STATE_A_HOST", value: 9, isUnsigned: true)
!207 = !DIEnumerator(name: "OTG_STATE_A_SUSPEND", value: 10, isUnsigned: true)
!208 = !DIEnumerator(name: "OTG_STATE_A_PERIPHERAL", value: 11, isUnsigned: true)
!209 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VFALL", value: 12, isUnsigned: true)
!210 = !DIEnumerator(name: "OTG_STATE_A_VBUS_ERR", value: 13, isUnsigned: true)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_type", file: !212, line: 16, baseType: !5, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/uapi/linux/usb/charger.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "UNKNOWN_TYPE", value: 0, isUnsigned: true)
!215 = !DIEnumerator(name: "SDP_TYPE", value: 1, isUnsigned: true)
!216 = !DIEnumerator(name: "DCP_TYPE", value: 2, isUnsigned: true)
!217 = !DIEnumerator(name: "CDP_TYPE", value: 3, isUnsigned: true)
!218 = !DIEnumerator(name: "ACA_TYPE", value: 4, isUnsigned: true)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_state", file: !212, line: 25, baseType: !5, size: 32, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "USB_CHARGER_DEFAULT", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "USB_CHARGER_PRESENT", value: 1, isUnsigned: true)
!223 = !DIEnumerator(name: "USB_CHARGER_ABSENT", value: 2, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dr_mode", file: !225, line: 116, baseType: !5, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !229, !230}
!227 = !DIEnumerator(name: "USB_DR_MODE_UNKNOWN", value: 0, isUnsigned: true)
!228 = !DIEnumerator(name: "USB_DR_MODE_HOST", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "USB_DR_MODE_PERIPHERAL", value: 2, isUnsigned: true)
!230 = !DIEnumerator(name: "USB_DR_MODE_OTG", value: 3, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_interface", file: !148, line: 18, baseType: !5, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238}
!233 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UNKNOWN", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UTMI", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UTMIW", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_ULPI", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_SERIAL", value: 4, isUnsigned: true)
!238 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_HSIC", value: 5, isUnsigned: true)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dwc3_ep0_next", file: !240, line: 752, baseType: !5, size: 32, elements: !241)
!240 = !DIFile(filename: "drivers/usb/dwc3/core.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "DWC3_EP0_UNKNOWN", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "DWC3_EP0_COMPLETE", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "DWC3_EP0_NRDY_DATA", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "DWC3_EP0_NRDY_STATUS", value: 3, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dwc3_ep0_state", file: !240, line: 759, baseType: !5, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DIEnumerator(name: "EP0_UNCONNECTED", value: 0, isUnsigned: true)
!249 = !DIEnumerator(name: "EP0_SETUP_PHASE", value: 1, isUnsigned: true)
!250 = !DIEnumerator(name: "EP0_DATA_PHASE", value: 2, isUnsigned: true)
!251 = !DIEnumerator(name: "EP0_STATUS_PHASE", value: 3, isUnsigned: true)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dwc3_link_state", file: !240, line: 766, baseType: !5, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!254 = !DIEnumerator(name: "DWC3_LINK_STATE_U0", value: 0, isUnsigned: true)
!255 = !DIEnumerator(name: "DWC3_LINK_STATE_U1", value: 1, isUnsigned: true)
!256 = !DIEnumerator(name: "DWC3_LINK_STATE_U2", value: 2, isUnsigned: true)
!257 = !DIEnumerator(name: "DWC3_LINK_STATE_U3", value: 3, isUnsigned: true)
!258 = !DIEnumerator(name: "DWC3_LINK_STATE_SS_DIS", value: 4, isUnsigned: true)
!259 = !DIEnumerator(name: "DWC3_LINK_STATE_RX_DET", value: 5, isUnsigned: true)
!260 = !DIEnumerator(name: "DWC3_LINK_STATE_SS_INACT", value: 6, isUnsigned: true)
!261 = !DIEnumerator(name: "DWC3_LINK_STATE_POLL", value: 7, isUnsigned: true)
!262 = !DIEnumerator(name: "DWC3_LINK_STATE_RECOV", value: 8, isUnsigned: true)
!263 = !DIEnumerator(name: "DWC3_LINK_STATE_HRESET", value: 9, isUnsigned: true)
!264 = !DIEnumerator(name: "DWC3_LINK_STATE_CMPLY", value: 10, isUnsigned: true)
!265 = !DIEnumerator(name: "DWC3_LINK_STATE_LPBK", value: 11, isUnsigned: true)
!266 = !DIEnumerator(name: "DWC3_LINK_STATE_RESET", value: 14, isUnsigned: true)
!267 = !DIEnumerator(name: "DWC3_LINK_STATE_RESUME", value: 15, isUnsigned: true)
!268 = !DIEnumerator(name: "DWC3_LINK_STATE_MASK", value: 15, isUnsigned: true)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !270, line: 10, baseType: !5, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273}
!272 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!273 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_role", file: !275, line: 10, baseType: !5, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/usb/role.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !278, !279}
!277 = !DIEnumerator(name: "USB_ROLE_NONE", value: 0, isUnsigned: true)
!278 = !DIEnumerator(name: "USB_ROLE_HOST", value: 1, isUnsigned: true)
!279 = !DIEnumerator(name: "USB_ROLE_DEVICE", value: 2, isUnsigned: true)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !281, line: 11, baseType: !5, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !284, !285}
!283 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!284 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!285 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!286 = !{!287, !289, !290, !291, !292, !5170}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!289 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!291 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3", file: !240, line: 1064, size: 8384, elements: !294)
!294 = !{!295, !324, !334, !335, !336, !341, !346, !347, !348, !523, !543, !551, !5168, !5169, !5208, !5210, !5222, !5224, !5350, !5351, !5354, !5355, !5358, !5858, !5859, !5860, !5861, !5862, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5912, !5913, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975, !5976}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "drd_work", scope: !293, file: !240, line: 1065, baseType: !296, size: 256)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !297, line: 102, size: 256, elements: !298)
!297 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !312, !318}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !296, file: !297, line: 103, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !301, line: 13, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !303, line: 175, baseType: !304)
!303 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 173, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !304, file: !303, line: 174, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !308, line: 22, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !310, line: 30, baseType: !311)
!310 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !296, file: !297, line: 104, baseType: !313, size: 128, offset: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !303, line: 178, size: 128, elements: !314)
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !303, line: 179, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !313, file: !303, line: 179, baseType: !316, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !296, file: !297, line: 105, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !297, line: 21, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_trb", scope: !293, file: !240, line: 1066, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_trb", file: !240, line: 824, size: 128, elements: !327)
!327 = !{!328, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !326, file: !240, line: 825, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !308, line: 21, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !310, line: 27, baseType: !5)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !326, file: !240, line: 826, baseType: !329, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !326, file: !240, line: 827, baseType: !329, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !326, file: !240, line: 828, baseType: !329, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !293, file: !240, line: 1067, baseType: !290, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "scratchbuf", scope: !293, file: !240, line: 1068, baseType: !290, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "setup_buf", scope: !293, file: !240, line: 1069, baseType: !337, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !308, line: 17, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !310, line: 21, baseType: !340)
!340 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_trb_addr", scope: !293, file: !240, line: 1070, baseType: !342, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !303, line: 143, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !308, line: 23, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !310, line: 31, baseType: !345)
!345 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_addr", scope: !293, file: !240, line: 1071, baseType: !342, size: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_addr", scope: !293, file: !240, line: 1072, baseType: !342, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_usb_req", scope: !293, file: !240, line: 1073, baseType: !349, size: 1472, offset: 704)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_request", file: !240, line: 894, size: 1472, elements: !350)
!350 = !{!351, !480, !481, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !349, file: !240, line: 895, baseType: !352, size: 768)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_request", file: !353, line: 100, size: 768, elements: !354)
!353 = !DIFile(filename: "./include/linux/usb/gadget.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !356, !357, !358, !368, !369, !370, !371, !372, !373, !374, !375, !376, !475, !476, !477, !478, !479}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !352, file: !353, line: 101, baseType: !290, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !352, file: !353, line: 102, baseType: !5, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !352, file: !353, line: 103, baseType: !342, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !352, file: !353, line: 105, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !361, line: 11, size: 256, elements: !362)
!361 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !360, file: !361, line: 12, baseType: !289, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !360, file: !361, line: 13, baseType: !5, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !360, file: !361, line: 14, baseType: !5, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !360, file: !361, line: 15, baseType: !342, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !360, file: !361, line: 17, baseType: !5, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !352, file: !353, line: 106, baseType: !5, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !352, file: !353, line: 107, baseType: !5, size: 32, offset: 288)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !352, file: !353, line: 109, baseType: !5, size: 16, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_last", scope: !352, file: !353, line: 110, baseType: !5, size: 1, offset: 336, flags: DIFlagBitField, extraData: i64 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "no_interrupt", scope: !352, file: !353, line: 111, baseType: !5, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !352, file: !353, line: 112, baseType: !5, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "short_not_ok", scope: !352, file: !353, line: 113, baseType: !5, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mapped", scope: !352, file: !353, line: 114, baseType: !5, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !352, file: !353, line: 116, baseType: !377, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !426}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep", file: !353, line: 226, size: 576, elements: !382)
!382 = !{!383, !384, !388, !444, !445, !454, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !381, file: !353, line: 227, baseType: !290, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !353, line: 229, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !381, file: !353, line: 230, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_ops", file: !353, line: 136, size: 704, elements: !392)
!392 = !{!393, !414, !418, !422, !428, !429, !433, !437, !441, !442, !443}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !391, file: !353, line: 137, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !380, !398}
!397 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !127, line: 407, size: 72, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !411, !412, !413}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !400, file: !127, line: 408, baseType: !339, size: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !400, file: !127, line: 409, baseType: !339, size: 8, offset: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !400, file: !127, line: 411, baseType: !339, size: 8, offset: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !400, file: !127, line: 412, baseType: !339, size: 8, offset: 24)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !400, file: !127, line: 413, baseType: !407, size: 16, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !408, line: 29, baseType: !409)
!408 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !310, line: 24, baseType: !410)
!410 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !400, file: !127, line: 414, baseType: !339, size: 8, offset: 48)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !400, file: !127, line: 418, baseType: !339, size: 8, offset: 56)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !400, file: !127, line: 419, baseType: !339, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !391, file: !353, line: 139, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!397, !380}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !391, file: !353, line: 140, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !380}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_request", scope: !391, file: !353, line: 142, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !380, !427}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !303, line: 148, baseType: !5)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !391, file: !353, line: 144, baseType: !377, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !391, file: !353, line: 146, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!397, !380, !426, !427}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !391, file: !353, line: 148, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!397, !380, !426}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "set_halt", scope: !391, file: !353, line: 150, baseType: !438, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!397, !380, !397}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "set_wedge", scope: !391, file: !353, line: 151, baseType: !415, size: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_status", scope: !391, file: !353, line: 153, baseType: !415, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_flush", scope: !391, file: !353, line: 154, baseType: !419, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !381, file: !353, line: 231, baseType: !313, size: 128, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !381, file: !353, line: 232, baseType: !446, size: 32, offset: 320)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_caps", file: !353, line: 166, size: 32, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type_control", scope: !446, file: !353, line: 167, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type_iso", scope: !446, file: !353, line: 168, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type_bulk", scope: !446, file: !353, line: 169, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type_int", scope: !446, file: !353, line: 170, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dir_in", scope: !446, file: !353, line: 171, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dir_out", scope: !446, file: !353, line: 172, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !381, file: !353, line: 233, baseType: !455, size: 8, offset: 352)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !303, line: 30, baseType: !456)
!456 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !381, file: !353, line: 234, baseType: !455, size: 8, offset: 360)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket", scope: !381, file: !353, line: 235, baseType: !5, size: 16, offset: 368, flags: DIFlagBitField, extraData: i64 368)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket_limit", scope: !381, file: !353, line: 236, baseType: !5, size: 16, offset: 384, flags: DIFlagBitField, extraData: i64 368)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_streams", scope: !381, file: !353, line: 237, baseType: !5, size: 16, offset: 400, flags: DIFlagBitField, extraData: i64 368)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !381, file: !353, line: 238, baseType: !5, size: 2, offset: 416, flags: DIFlagBitField, extraData: i64 368)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "maxburst", scope: !381, file: !353, line: 239, baseType: !5, size: 5, offset: 418, flags: DIFlagBitField, extraData: i64 368)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !381, file: !353, line: 240, baseType: !338, size: 8, offset: 424)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !381, file: !353, line: 241, baseType: !398, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "comp_desc", scope: !381, file: !353, line: 242, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !127, line: 689, size: 48, elements: !469)
!469 = !{!470, !471, !472, !473, !474}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !468, file: !127, line: 690, baseType: !339, size: 8)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !468, file: !127, line: 691, baseType: !339, size: 8, offset: 8)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !468, file: !127, line: 693, baseType: !339, size: 8, offset: 16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !468, file: !127, line: 694, baseType: !339, size: 8, offset: 24)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !468, file: !127, line: 695, baseType: !407, size: 16, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !352, file: !353, line: 118, baseType: !290, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !352, file: !353, line: 119, baseType: !313, size: 128, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "frame_number", scope: !352, file: !353, line: 121, baseType: !5, size: 32, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !352, file: !353, line: 123, baseType: !397, size: 32, offset: 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "actual", scope: !352, file: !353, line: 124, baseType: !5, size: 32, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !349, file: !240, line: 896, baseType: !313, size: 128, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dep", scope: !349, file: !240, line: 897, baseType: !482, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_ep", file: !240, line: 688, size: 1664, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !506, !507, !508, !509}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !483, file: !240, line: 689, baseType: !381, size: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_list", scope: !483, file: !240, line: 690, baseType: !313, size: 128, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pending_list", scope: !483, file: !240, line: 691, baseType: !313, size: 128, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "started_list", scope: !483, file: !240, line: 692, baseType: !313, size: 128, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !483, file: !240, line: 694, baseType: !290, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "trb_pool", scope: !483, file: !240, line: 696, baseType: !325, size: 64, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "trb_pool_dma", scope: !483, file: !240, line: 697, baseType: !342, size: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dwc", scope: !483, file: !240, line: 698, baseType: !292, size: 64, offset: 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !483, file: !240, line: 700, baseType: !329, size: 32, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !240, line: 701, baseType: !5, size: 32, offset: 1248)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "trb_enqueue", scope: !483, file: !240, line: 727, baseType: !338, size: 8, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "trb_dequeue", scope: !483, file: !240, line: 728, baseType: !338, size: 8, offset: 1288)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !483, file: !240, line: 730, baseType: !338, size: 8, offset: 1296)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !240, line: 731, baseType: !338, size: 8, offset: 1304)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "resource_index", scope: !483, file: !240, line: 732, baseType: !338, size: 8, offset: 1312)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "frame_number", scope: !483, file: !240, line: 733, baseType: !329, size: 32, offset: 1344)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !483, file: !240, line: 734, baseType: !329, size: 32, offset: 1376)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !240, line: 736, baseType: !503, size: 160, offset: 1408)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 160, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 20)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !483, file: !240, line: 738, baseType: !5, size: 1, offset: 1568, flags: DIFlagBitField, extraData: i64 1568)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "stream_capable", scope: !483, file: !240, line: 739, baseType: !5, size: 1, offset: 1569, flags: DIFlagBitField, extraData: i64 1568)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "combo_num", scope: !483, file: !240, line: 742, baseType: !338, size: 8, offset: 1576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_cmd_status", scope: !483, file: !240, line: 743, baseType: !397, size: 32, offset: 1600)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !349, file: !240, line: 898, baseType: !359, size: 64, offset: 960)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_sg", scope: !349, file: !240, line: 899, baseType: !359, size: 64, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending_sgs", scope: !349, file: !240, line: 901, baseType: !5, size: 32, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "num_queued_sgs", scope: !349, file: !240, line: 902, baseType: !5, size: 32, offset: 1120)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !349, file: !240, line: 903, baseType: !5, size: 32, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !349, file: !240, line: 905, baseType: !5, size: 32, offset: 1184)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "epnum", scope: !349, file: !240, line: 912, baseType: !338, size: 8, offset: 1216)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "trb", scope: !349, file: !240, line: 913, baseType: !325, size: 64, offset: 1280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "trb_dma", scope: !349, file: !240, line: 914, baseType: !342, size: 64, offset: 1344)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs", scope: !349, file: !240, line: 916, baseType: !5, size: 32, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "needs_extra_trb", scope: !349, file: !240, line: 918, baseType: !5, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !349, file: !240, line: 919, baseType: !5, size: 1, offset: 1441, flags: DIFlagBitField, extraData: i64 1440)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !349, file: !240, line: 920, baseType: !5, size: 1, offset: 1442, flags: DIFlagBitField, extraData: i64 1440)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_in_setup", scope: !293, file: !240, line: 1074, baseType: !524, size: 192, offset: 2176)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !525, line: 26, size: 192, elements: !526)
!525 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !524, file: !525, line: 27, baseType: !5, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !524, file: !525, line: 28, baseType: !529, size: 128, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !530, line: 43, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!531 = !{!532, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !530, line: 44, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !534, line: 29, baseType: !535)
!534 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !534, line: 20, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !535, file: !534, line: 21, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !539, line: 25, baseType: !540)
!539 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 25, elements: !541)
!541 = !{}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !529, file: !530, line: 45, baseType: !313, size: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !293, file: !240, line: 1077, baseType: !544, offset: 2368)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !534, line: 83, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !534, line: 71, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !534, line: 72, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !534, line: 72, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !548, file: !534, line: 73, baseType: !535)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !293, file: !240, line: 1079, baseType: !552, size: 64, offset: 2368)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !113, line: 461, size: 5568, elements: !554)
!554 = !{!555, !4712, !4713, !4716, !4717, !4767, !4858, !4859, !4860, !4861, !4862, !4871, !4965, !4978, !4981, !4982, !4986, !4988, !4989, !4990, !4994, !5000, !5001, !5004, !5119, !5120, !5121, !5122, !5123, !5124, !5156, !5157, !5158, !5161, !5164, !5165, !5166, !5167}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !553, file: !113, line: 462, baseType: !556, size: 512)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !557, line: 64, size: 512, elements: !558)
!557 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!558 = !{!559, !560, !561, !563, !608, !4579, !4706, !4707, !4708, !4709, !4710, !4711}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !557, line: 65, baseType: !385, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !556, file: !557, line: 66, baseType: !313, size: 128, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !556, file: !557, line: 67, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !556, file: !557, line: 68, baseType: !564, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !557, line: 192, size: 704, elements: !566)
!566 = !{!567, !568, !569, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !565, file: !557, line: 193, baseType: !313, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !565, file: !557, line: 194, baseType: !544, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !565, file: !557, line: 195, baseType: !556, size: 512, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !565, file: !557, line: 196, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !557, line: 156, size: 192, elements: !574)
!574 = !{!575, !580, !585}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !573, file: !557, line: 157, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!397, !564, !562}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !573, file: !557, line: 158, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!385, !564, !562}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !573, file: !557, line: 159, baseType: !586, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!397, !564, !562, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !557, line: 148, size: 20736, elements: !592)
!592 = !{!593, !598, !602, !603, !607}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !591, file: !557, line: 149, baseType: !594, size: 192)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 192, elements: !596)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!596 = !{!597}
!597 = !DISubrange(count: 3)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !591, file: !557, line: 150, baseType: !599, size: 4096, offset: 192)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 4096, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !591, file: !557, line: 151, baseType: !397, size: 32, offset: 4288)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !591, file: !557, line: 152, baseType: !604, size: 16384, offset: 4320)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 16384, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 2048)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !591, file: !557, line: 153, baseType: !397, size: 32, offset: 20704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !556, file: !557, line: 69, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !557, line: 138, size: 448, elements: !611)
!611 = !{!612, !616, !643, !645, !4543, !4571, !4575}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !610, file: !557, line: 139, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !562}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !610, file: !557, line: 140, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !620, line: 230, size: 128, elements: !621)
!620 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!621 = !{!622, !636}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !619, file: !620, line: 231, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!626, !562, !630, !595}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !303, line: 60, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !628, line: 73, baseType: !629)
!628 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !628, line: 15, baseType: !291)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !620, line: 30, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !620, line: 31, baseType: !385, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !631, file: !620, line: 32, baseType: !635, size: 16, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !303, line: 19, baseType: !410)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !619, file: !620, line: 232, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!626, !562, !630, !385, !640}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !303, line: 55, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !628, line: 72, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !628, line: 16, baseType: !289)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !610, file: !557, line: 141, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !610, file: !557, line: 142, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !620, line: 84, size: 320, elements: !650)
!650 = !{!651, !652, !656, !4540, !4541}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !649, file: !620, line: 85, baseType: !385, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !649, file: !620, line: 86, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!635, !562, !630, !397}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !649, file: !620, line: 88, baseType: !657, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!635, !562, !660, !397}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !620, line: 168, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !4535, !4536}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !661, file: !620, line: 169, baseType: !631, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !661, file: !620, line: 170, baseType: !640, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !661, file: !620, line: 171, baseType: !290, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !661, file: !620, line: 172, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!626, !670, !562, !660, !595, !839, !640}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !84, line: 916, size: 1856, align: 32, elements: !672)
!672 = !{!673, !691, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4518, !4519, !4528, !4529, !4530, !4531, !4532, !4533, !4534}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !671, file: !84, line: 920, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !84, line: 917, size: 128, elements: !675)
!675 = !{!676, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !674, file: !84, line: 918, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !678, line: 58, size: 64, elements: !679)
!678 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !678, line: 59, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !674, file: !84, line: 919, baseType: !683, size: 128, align: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !303, line: 216, size: 128, align: 64, elements: !684)
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !303, line: 217, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !683, file: !303, line: 218, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !686}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !671, file: !84, line: 921, baseType: !692, size: 128, offset: 128)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !693, line: 8, size: 128, elements: !694)
!693 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !699}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !692, file: !693, line: 9, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !698, line: 18, flags: DIFlagFwdDecl)
!698 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !692, file: !693, line: 10, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !698, line: 89, size: 1536, elements: !702)
!702 = !{!703, !704, !714, !722, !723, !738, !4468, !4470, !4482, !4483, !4484, !4485, !4486, !4492, !4493, !4494}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !701, file: !698, line: 91, baseType: !5, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !701, file: !698, line: 92, baseType: !705, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !706, line: 277, baseType: !707)
!706 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !706, line: 277, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !707, file: !706, line: 277, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !706, line: 70, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !706, line: 65, size: 32, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !711, file: !706, line: 66, baseType: !5, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !701, file: !698, line: 93, baseType: !715, size: 128, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !716, line: 38, size: 128, elements: !717)
!716 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !716, line: 39, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !715, file: !716, line: 39, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !701, file: !698, line: 94, baseType: !700, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !701, file: !698, line: 95, baseType: !724, size: 128, offset: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !698, line: 47, size: 128, elements: !725)
!725 = !{!726, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !698, line: 48, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !698, line: 48, size: 64, elements: !728)
!728 = !{!729, !734}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !698, line: 49, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !698, line: 49, size: 64, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !730, file: !698, line: 50, baseType: !329, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !730, file: !698, line: 50, baseType: !329, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !727, file: !698, line: 52, baseType: !343, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !698, line: 54, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !701, file: !698, line: 96, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !84, line: 610, size: 4224, elements: !741)
!741 = !{!742, !743, !744, !752, !759, !760, !904, !4182, !4183, !4184, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4444, !4452, !4453, !4454, !4464, !4465, !4466, !4467}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !740, file: !84, line: 611, baseType: !635, size: 16)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !740, file: !84, line: 612, baseType: !410, size: 16, offset: 16)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !740, file: !84, line: 613, baseType: !745, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !746, line: 23, baseType: !747)
!746 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 21, size: 32, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !747, file: !746, line: 22, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !303, line: 32, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !628, line: 49, baseType: !5)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !740, file: !84, line: 614, baseType: !753, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !746, line: 28, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 26, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !754, file: !746, line: 27, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !303, line: 33, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !628, line: 50, baseType: !5)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !740, file: !84, line: 615, baseType: !5, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !740, file: !84, line: 622, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !84, line: 1864, size: 1536, align: 512, elements: !764)
!764 = !{!765, !769, !782, !786, !792, !796, !800, !804, !808, !812, !816, !817, !823, !827, !851, !880, !884, !890, !895, !899, !900}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !763, file: !84, line: 1865, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!700, !739, !700, !5}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !763, file: !84, line: 1866, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!385, !700, !739, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !775, line: 10, size: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !781}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !774, file: !775, line: 11, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !290}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !774, file: !775, line: 12, baseType: !290, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !763, file: !84, line: 1867, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!397, !739, !397}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !763, file: !84, line: 1868, baseType: !787, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!790, !739, !397}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !84, line: 581, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !763, file: !84, line: 1870, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!397, !700, !595, !397}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !763, file: !84, line: 1872, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!397, !739, !700, !635, !455}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !763, file: !84, line: 1873, baseType: !801, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!397, !700, !739, !700}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !763, file: !84, line: 1874, baseType: !805, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!397, !739, !700}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !763, file: !84, line: 1875, baseType: !809, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!397, !739, !700, !385}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !763, file: !84, line: 1876, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!397, !739, !700, !635}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !763, file: !84, line: 1877, baseType: !805, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !763, file: !84, line: 1878, baseType: !818, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!397, !739, !700, !635, !821}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !303, line: 16, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !303, line: 13, baseType: !329)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !763, file: !84, line: 1879, baseType: !824, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!397, !739, !700, !739, !700, !5}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !763, file: !84, line: 1881, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!397, !700, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !84, line: 219, size: 640, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !841, !848, !849, !850}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !832, file: !84, line: 220, baseType: !5, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !832, file: !84, line: 221, baseType: !635, size: 16, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !832, file: !84, line: 222, baseType: !745, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !832, file: !84, line: 223, baseType: !753, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !832, file: !84, line: 224, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !303, line: 46, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !628, line: 88, baseType: !311)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !832, file: !84, line: 225, baseType: !842, size: 128, offset: 192)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !843, line: 13, size: 128, elements: !844)
!843 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!844 = !{!845, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !842, file: !843, line: 14, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !843, line: 8, baseType: !309)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !842, file: !843, line: 15, baseType: !291, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !832, file: !84, line: 226, baseType: !842, size: 128, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !832, file: !84, line: 227, baseType: !842, size: 128, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !832, file: !84, line: 234, baseType: !670, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !763, file: !84, line: 1882, baseType: !852, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!397, !855, !857, !329, !5}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !859, line: 22, size: 1152, elements: !860)
!859 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863, !864, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !858, file: !859, line: 23, baseType: !329, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !858, file: !859, line: 24, baseType: !635, size: 16, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !858, file: !859, line: 25, baseType: !5, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !858, file: !859, line: 26, baseType: !865, size: 32, offset: 96)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !303, line: 104, baseType: !329)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !858, file: !859, line: 27, baseType: !343, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !858, file: !859, line: 28, baseType: !343, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !858, file: !859, line: 37, baseType: !343, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !858, file: !859, line: 38, baseType: !821, size: 32, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !858, file: !859, line: 39, baseType: !821, size: 32, offset: 352)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !858, file: !859, line: 40, baseType: !745, size: 32, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !858, file: !859, line: 41, baseType: !753, size: 32, offset: 416)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !858, file: !859, line: 42, baseType: !839, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !858, file: !859, line: 43, baseType: !842, size: 128, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !858, file: !859, line: 44, baseType: !842, size: 128, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !858, file: !859, line: 45, baseType: !842, size: 128, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !858, file: !859, line: 46, baseType: !842, size: 128, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !858, file: !859, line: 47, baseType: !343, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !858, file: !859, line: 48, baseType: !343, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !763, file: !84, line: 1883, baseType: !881, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!626, !700, !595, !640}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !763, file: !84, line: 1884, baseType: !885, size: 64, offset: 1024)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!397, !739, !888, !343, !343}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !84, line: 50, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !763, file: !84, line: 1886, baseType: !891, size: 64, offset: 1088)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!397, !739, !894, !397}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !763, file: !84, line: 1887, baseType: !896, size: 64, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!397, !739, !700, !670, !5, !635}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !763, file: !84, line: 1890, baseType: !813, size: 64, offset: 1216)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !763, file: !84, line: 1891, baseType: !901, size: 64, offset: 1280)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!397, !739, !790, !397}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !740, file: !84, line: 623, baseType: !905, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !84, line: 1416, size: 9472, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !963, !3796, !3878, !3961, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3977, !3981, !3982, !3983, !3984, !3987, !3988, !3989, !4030, !4056, !4057, !4058, !4059, !4060, !4061, !4064, !4065, !4072, !4073, !4074, !4075, !4076, !4135, !4136, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !906, file: !84, line: 1417, baseType: !313, size: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !906, file: !84, line: 1418, baseType: !821, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !906, file: !84, line: 1419, baseType: !340, size: 8, offset: 160)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !906, file: !84, line: 1420, baseType: !289, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !906, file: !84, line: 1421, baseType: !839, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !906, file: !84, line: 1422, baseType: !914, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !84, line: 2228, size: 576, elements: !916)
!916 = !{!917, !918, !919, !926, !930, !934, !938, !942, !943, !953, !956, !957, !958, !960, !961, !962}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !84, line: 2229, baseType: !385, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !915, file: !84, line: 2230, baseType: !397, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !915, file: !84, line: 2238, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!397, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !925, line: 28, flags: DIFlagFwdDecl)
!925 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !915, file: !84, line: 2239, baseType: !927, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !84, line: 70, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !915, file: !84, line: 2240, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!700, !914, !397, !385, !290}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !915, file: !84, line: 2242, baseType: !935, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !905}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !915, file: !84, line: 2243, baseType: !939, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !941, line: 76, flags: DIFlagFwdDecl)
!941 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !915, file: !84, line: 2244, baseType: !914, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !915, file: !84, line: 2245, baseType: !944, size: 64, offset: 512)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !303, line: 182, size: 64, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !944, file: !303, line: 183, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !303, line: 186, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !303, line: 187, baseType: !947, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !948, file: !303, line: 187, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !915, file: !84, line: 2247, baseType: !954, offset: 576)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !955, line: 187, elements: !541)
!955 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !915, file: !84, line: 2248, baseType: !954, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !915, file: !84, line: 2249, baseType: !954, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !915, file: !84, line: 2250, baseType: !959, offset: 576)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, elements: !596)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !915, file: !84, line: 2252, baseType: !954, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !915, file: !84, line: 2253, baseType: !954, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !915, file: !84, line: 2254, baseType: !954, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !906, file: !84, line: 1423, baseType: !964, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !84, line: 1935, size: 1472, elements: !967)
!967 = !{!968, !972, !976, !977, !981, !1001, !1005, !1006, !1007, !1011, !1015, !1016, !1017, !1018, !1024, !1029, !1030, !1079, !1080, !1081, !1082, !3780, !3795}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !966, file: !84, line: 1936, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!739, !905}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !966, file: !84, line: 1937, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !739}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !966, file: !84, line: 1938, baseType: !973, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !966, file: !84, line: 1940, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !739, !397}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !966, file: !84, line: 1941, baseType: !982, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!397, !739, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !4, line: 51, size: 320, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !986, file: !4, line: 52, baseType: !291, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !986, file: !4, line: 54, baseType: !291, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !986, file: !4, line: 61, baseType: !839, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !986, file: !4, line: 62, baseType: !839, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !986, file: !4, line: 64, baseType: !3, size: 32, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !986, file: !4, line: 66, baseType: !5, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !986, file: !4, line: 67, baseType: !5, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !986, file: !4, line: 68, baseType: !5, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !986, file: !4, line: 69, baseType: !5, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !986, file: !4, line: 70, baseType: !5, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !986, file: !4, line: 71, baseType: !5, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !986, file: !4, line: 79, baseType: !5, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !986, file: !4, line: 81, baseType: !5, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !966, file: !84, line: 1942, baseType: !1002, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!397, !739}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !966, file: !84, line: 1943, baseType: !973, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !966, file: !84, line: 1944, baseType: !935, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !966, file: !84, line: 1945, baseType: !1008, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!397, !905, !397}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !966, file: !84, line: 1946, baseType: !1012, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!397, !905}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !966, file: !84, line: 1947, baseType: !1012, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !966, file: !84, line: 1948, baseType: !1012, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !966, file: !84, line: 1949, baseType: !1012, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !966, file: !84, line: 1950, baseType: !1019, size: 64, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!397, !700, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !84, line: 57, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !966, file: !84, line: 1951, baseType: !1025, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!397, !905, !1028, !595}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !966, file: !84, line: 1952, baseType: !935, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !966, file: !84, line: 1954, baseType: !1031, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!397, !1034, !700}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1036, line: 16, size: 896, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1052, !1074, !1075, !1078}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1035, file: !1036, line: 17, baseType: !595, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1035, file: !1036, line: 18, baseType: !640, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1035, file: !1036, line: 19, baseType: !640, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1035, file: !1036, line: 20, baseType: !640, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1035, file: !1036, line: 21, baseType: !640, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1035, file: !1036, line: 22, baseType: !839, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1035, file: !1036, line: 23, baseType: !839, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !1036, line: 24, baseType: !1046, size: 192, offset: 448)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1047, line: 53, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1046, file: !1047, line: 54, baseType: !300, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1046, file: !1047, line: 55, baseType: !544, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1046, file: !1047, line: 59, baseType: !313, size: 128, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1035, file: !1036, line: 25, baseType: !1053, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1036, line: 31, size: 256, elements: !1056)
!1056 = !{!1057, !1062, !1066, !1070}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1055, file: !1036, line: 32, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!290, !1034, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1055, file: !1036, line: 33, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1034, !290}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !1036, line: 34, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!290, !1034, !290, !1061}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1055, file: !1036, line: 35, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!397, !1034, !290}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1035, file: !1036, line: 26, baseType: !397, size: 32, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1035, file: !1036, line: 27, baseType: !1076, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1035, file: !1036, line: 28, baseType: !290, size: 64, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !966, file: !84, line: 1955, baseType: !1031, size: 64, offset: 1088)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !966, file: !84, line: 1956, baseType: !1031, size: 64, offset: 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !966, file: !84, line: 1957, baseType: !1031, size: 64, offset: 1216)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !966, file: !84, line: 1963, baseType: !1083, size: 64, offset: 1280)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!397, !905, !1086, !427}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1088, line: 68, size: 512, align: 128, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1089 = !{!1090, !1091, !3772, !3779}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 69, baseType: !289, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1088, line: 77, baseType: !1092, size: 320, offset: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1088, line: 77, size: 320, elements: !1093)
!1093 = !{!1094, !2212, !2216, !2242, !2250, !2256, !3723, !3771}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 78, baseType: !1095, size: 320)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 78, size: 320, elements: !1096)
!1096 = !{!1097, !1098, !2210, !2211}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1095, file: !1088, line: 84, baseType: !313, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1095, file: !1088, line: 86, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !84, line: 451, size: 1216, align: 64, elements: !1101)
!1101 = !{!1102, !1103, !1110, !1111, !1116, !1131, !1139, !1140, !1141, !1142, !2203, !2204, !2207, !2208, !2209}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1100, file: !84, line: 452, baseType: !739, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1100, file: !84, line: 453, baseType: !1104, size: 128, offset: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1105, line: 292, size: 128, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1104, file: !1105, line: 293, baseType: !544)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1104, file: !1105, line: 295, baseType: !427, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1104, file: !1105, line: 296, baseType: !290, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1100, file: !84, line: 454, baseType: !427, size: 32, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1100, file: !84, line: 455, baseType: !1112, size: 32, offset: 224)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !303, line: 168, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 166, size: 32, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1113, file: !303, line: 167, baseType: !397, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1100, file: !84, line: 460, baseType: !1117, size: 128, offset: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1118, line: 125, size: 128, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1130}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1117, file: !1118, line: 126, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1118, line: 31, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1121, file: !1118, line: 32, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1118, line: 24, size: 192, align: 64, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1125, file: !1118, line: 25, baseType: !289, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1125, file: !1118, line: 26, baseType: !1124, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1125, file: !1118, line: 27, baseType: !1124, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1117, file: !1118, line: 127, baseType: !1124, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1100, file: !84, line: 461, baseType: !1132, size: 256, offset: 384)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1133, line: 35, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1132, file: !1133, line: 36, baseType: !300, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1132, file: !1133, line: 42, baseType: !300, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1132, file: !1133, line: 46, baseType: !533, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1132, file: !1133, line: 47, baseType: !313, size: 128, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1100, file: !84, line: 462, baseType: !289, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1100, file: !84, line: 463, baseType: !289, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1100, file: !84, line: 464, baseType: !289, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1100, file: !84, line: 465, baseType: !1143, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !84, line: 367, size: 1408, elements: !1146)
!1146 = !{!1147, !1151, !1155, !1159, !1163, !1167, !1180, !1186, !1190, !1195, !1199, !1203, !1207, !1251, !1255, !1261, !1262, !1263, !1267, !1272, !1276, !2199}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1145, file: !84, line: 368, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!397, !1086, !985}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1145, file: !84, line: 369, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!397, !670, !1086}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1145, file: !84, line: 372, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!397, !1099, !985}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1145, file: !84, line: 375, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!397, !1086}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1145, file: !84, line: 381, baseType: !1164, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!397, !670, !1099, !316, !5}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1145, file: !84, line: 383, baseType: !1168, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1173, line: 795, size: 256, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176, !1177, !1178, !1179}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1172, file: !1173, line: 796, baseType: !670, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1172, file: !1173, line: 797, baseType: !1099, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1172, file: !1173, line: 799, baseType: !289, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1172, file: !1173, line: 800, baseType: !5, size: 32, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1172, file: !1173, line: 801, baseType: !5, size: 32, offset: 224)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1145, file: !84, line: 385, baseType: !1181, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!397, !670, !1099, !839, !5, !5, !1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1145, file: !84, line: 388, baseType: !1187, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!397, !670, !1099, !839, !5, !5, !1086, !290}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1145, file: !84, line: 393, baseType: !1191, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1194, !1099, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !303, line: 125, baseType: !343)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1145, file: !84, line: 394, baseType: !1196, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1086, !5, !5}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1145, file: !84, line: 395, baseType: !1200, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!397, !1086, !427}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1145, file: !84, line: 396, baseType: !1204, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1086}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1145, file: !84, line: 397, baseType: !1208, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!626, !1211, !1249}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !84, line: 320, size: 384, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1220, !1221, !1222, !1224, !1225}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1212, file: !84, line: 321, baseType: !670, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1212, file: !84, line: 326, baseType: !839, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1212, file: !84, line: 327, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1211, !291, !291}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1212, file: !84, line: 328, baseType: !290, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1212, file: !84, line: 329, baseType: !397, size: 32, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1212, file: !84, line: 330, baseType: !1223, size: 16, offset: 288)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !308, line: 19, baseType: !409)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1212, file: !84, line: 331, baseType: !1223, size: 16, offset: 304)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !84, line: 332, baseType: !1226, size: 64, offset: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !84, line: 332, size: 64, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1226, file: !84, line: 333, baseType: !5, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1226, file: !84, line: 334, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1173, line: 569, size: 448, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1231, file: !1173, line: 570, baseType: !1086, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1231, file: !1173, line: 571, baseType: !397, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1231, file: !1173, line: 572, baseType: !1236, size: 320, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1237, line: 14, baseType: !1238)
!1237 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1237, line: 29, size: 320, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1248}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1237, line: 30, baseType: !5, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1238, file: !1237, line: 31, baseType: !290, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1238, file: !1237, line: 32, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1237, line: 16, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!397, !1247, !5, !397, !290}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1238, file: !1237, line: 33, baseType: !313, size: 128, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !84, line: 64, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1145, file: !84, line: 402, baseType: !1252, size: 64, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!397, !1099, !1086, !1086, !9}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1145, file: !84, line: 404, baseType: !1256, size: 64, offset: 896)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!455, !1086, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1260, line: 305, baseType: !5)
!1260 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1145, file: !84, line: 405, baseType: !1204, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1145, file: !84, line: 406, baseType: !1160, size: 64, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1145, file: !84, line: 407, baseType: !1264, size: 64, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!397, !1086, !289, !289}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1145, file: !84, line: 409, baseType: !1268, size: 64, offset: 1152)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1086, !1271, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1145, file: !84, line: 410, baseType: !1273, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!397, !1099, !1086}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1145, file: !84, line: 413, baseType: !1277, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!397, !1280, !670, !2198}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1282, line: 240, size: 1600, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1285, !1287, !1294, !1296, !1297, !1299, !1306, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1319, !1325, !1326, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !1282, line: 241, baseType: !289, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1281, file: !1282, line: 242, baseType: !1286, size: 16, offset: 64)
!1286 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1281, file: !1282, line: 243, baseType: !1288, size: 320, offset: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1289, line: 83, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1288, file: !1289, line: 84, baseType: !397, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1288, file: !1289, line: 85, baseType: !313, size: 128, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1288, file: !1289, line: 86, baseType: !313, size: 128, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !1282, line: 244, baseType: !1295, size: 8, offset: 448)
!1295 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1281, file: !1282, line: 245, baseType: !5, size: 32, offset: 480)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1281, file: !1282, line: 246, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1281, file: !1282, line: 247, baseType: !1300, size: 64, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1282, line: 208, size: 32, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !1282, line: 209, baseType: !544)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1301, file: !1282, line: 215, baseType: !5, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !1282, line: 216, baseType: !5, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1281, file: !1282, line: 248, baseType: !1307, size: 64, offset: 640)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1282, line: 232, size: 64, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1307, file: !1282, line: 233, baseType: !1301, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1307, file: !1282, line: 234, baseType: !1301, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1281, file: !1282, line: 249, baseType: !5, size: 32, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1281, file: !1282, line: 250, baseType: !5, size: 32, offset: 736)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1281, file: !1282, line: 251, baseType: !5, size: 32, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1281, file: !1282, line: 252, baseType: !5, size: 32, offset: 800)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1281, file: !1282, line: 253, baseType: !5, size: 32, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1281, file: !1282, line: 254, baseType: !5, size: 32, offset: 864)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1281, file: !1282, line: 255, baseType: !1318, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1281, file: !1282, line: 256, baseType: !1320, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1282, line: 227, size: 64, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1321, file: !1282, line: 228, baseType: !1301, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !1282, line: 229, baseType: !5, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1281, file: !1282, line: 257, baseType: !1121, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1281, file: !1282, line: 258, baseType: !1327, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1329, line: 22, size: 1344, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1397, !1398, !1399, !2187, !2188, !2189}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1328, file: !1329, line: 23, baseType: !821, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1328, file: !1329, line: 24, baseType: !397, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1328, file: !1329, line: 25, baseType: !739, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1328, file: !1329, line: 26, baseType: !905, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1328, file: !1329, line: 27, baseType: !1046, size: 192, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1328, file: !1329, line: 28, baseType: !290, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1328, file: !1329, line: 29, baseType: !290, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1328, file: !1329, line: 30, baseType: !397, size: 32, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1328, file: !1329, line: 31, baseType: !455, size: 8, offset: 544)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1328, file: !1329, line: 33, baseType: !313, size: 128, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1328, file: !1329, line: 35, baseType: !1327, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1328, file: !1329, line: 36, baseType: !338, size: 8, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1328, file: !1329, line: 37, baseType: !1344, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1346, line: 53, size: 6592, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1347 = !{!1348, !1349, !1350, !1351, !1354, !1375, !1376, !1377, !1378, !1379, !1389}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1345, file: !1346, line: 54, baseType: !1194, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1345, file: !1346, line: 60, baseType: !1194, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1345, file: !1346, line: 64, baseType: !289, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1345, file: !1346, line: 65, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1346, line: 65, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1345, file: !1346, line: 66, baseType: !1355, size: 128, offset: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1356, line: 105, size: 128, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1355, file: !1356, line: 110, baseType: !289, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1355, file: !1356, line: 118, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1356, line: 95, size: 448, elements: !1362)
!1362 = !{!1363, !1364, !1370, !1371, !1372, !1373, !1374}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1361, file: !1356, line: 96, baseType: !300, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1361, file: !1356, line: 97, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1356, line: 60, baseType: !1367)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !1369}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1361, file: !1356, line: 98, baseType: !1365, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1361, file: !1356, line: 99, baseType: !455, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1361, file: !1356, line: 100, baseType: !455, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1361, file: !1356, line: 101, baseType: !683, size: 128, align: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1361, file: !1356, line: 102, baseType: !1369, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1345, file: !1346, line: 68, baseType: !553, size: 5568, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1345, file: !1346, line: 69, baseType: !562, size: 64, offset: 5952)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1345, file: !1346, line: 70, baseType: !397, size: 32, offset: 6016)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1345, file: !1346, line: 70, baseType: !397, size: 32, offset: 6048)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1345, file: !1346, line: 71, baseType: !1380, size: 64, offset: 6080)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1346, line: 48, size: 808, elements: !1382)
!1382 = !{!1383, !1387}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1381, file: !1346, line: 49, baseType: !1384, size: 296)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 296, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 37)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1381, file: !1346, line: 50, baseType: !1388, size: 512, offset: 296)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !600)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1345, file: !1346, line: 75, baseType: !1390, size: 448, offset: 6144)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !297, line: 124, size: 448, elements: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1390, file: !297, line: 125, baseType: !296, size: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !297, line: 126, baseType: !683, size: 128, align: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1390, file: !297, line: 129, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !297, line: 18, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1328, file: !1329, line: 39, baseType: !5, size: 32, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1328, file: !1329, line: 41, baseType: !544, offset: 928)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1328, file: !1329, line: 42, baseType: !1400, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1346, line: 167, size: 8512, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1410, !1411, !1412, !1423, !1424, !1614, !2168, !2169, !2170, !2171, !2172, !2173, !2176, !2177, !2180, !2181, !2182, !2185}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1401, file: !1346, line: 171, baseType: !397, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1401, file: !1346, line: 172, baseType: !397, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1401, file: !1346, line: 173, baseType: !397, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1401, file: !1346, line: 176, baseType: !1407, size: 256, offset: 96)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1401, file: !1346, line: 178, baseType: !410, size: 16, offset: 352)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1401, file: !1346, line: 179, baseType: !410, size: 16, offset: 368)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1401, file: !1346, line: 186, baseType: !1413, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1346, line: 149, size: 256, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1414, file: !1346, line: 150, baseType: !683, size: 128, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1414, file: !1346, line: 151, baseType: !397, size: 32, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1414, file: !1346, line: 152, baseType: !1344, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1414, file: !1346, line: 153, baseType: !1420, offset: 256)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: -1)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1401, file: !1346, line: 187, baseType: !1345, size: 6592, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1401, file: !1346, line: 189, baseType: !1425, size: 64, offset: 7040)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !17, line: 1844, size: 960, elements: !1428)
!1428 = !{!1429, !1536, !1541, !1545, !1549, !1553, !1554, !1558, !1562, !1566, !1572, !1576, !1604, !1609, !1610}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1427, file: !17, line: 1845, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1329, line: 515, baseType: !5)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1329, line: 203, size: 832, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1445, !1446, !1447, !1455, !1460, !1461, !1486, !1487, !1488, !1489, !1490, !1535}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1435, file: !1329, line: 204, baseType: !1434, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1435, file: !1329, line: 205, baseType: !1400, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1435, file: !1329, line: 206, baseType: !5, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1435, file: !1329, line: 210, baseType: !410, size: 16, offset: 160)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1435, file: !1329, line: 211, baseType: !410, size: 16, offset: 176)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1435, file: !1329, line: 212, baseType: !410, size: 16, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1435, file: !1329, line: 213, baseType: !1444, size: 8, offset: 208)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1329, line: 58, baseType: !338)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1435, file: !1329, line: 214, baseType: !338, size: 8, offset: 216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1435, file: !1329, line: 215, baseType: !1112, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1435, file: !1329, line: 217, baseType: !1448, size: 192, offset: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1449, line: 37, size: 192, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1448, file: !1449, line: 38, baseType: !1194, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1448, file: !1449, line: 40, baseType: !5, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1448, file: !1449, line: 42, baseType: !5, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1448, file: !1449, line: 44, baseType: !5, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1435, file: !1329, line: 219, baseType: !1456, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1329, line: 19, baseType: !1458)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1434}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1435, file: !1329, line: 221, baseType: !290, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1329, line: 240, baseType: !1462, size: 64, offset: 576)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1329, line: 240, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1462, file: !1329, line: 242, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1467, line: 313, size: 832, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1484}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1466, file: !1467, line: 314, baseType: !1434, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1466, file: !1467, line: 316, baseType: !1448, size: 192, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1466, file: !1467, line: 318, baseType: !410, size: 16, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1466, file: !1467, line: 319, baseType: !410, size: 16, offset: 272)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1466, file: !1467, line: 320, baseType: !410, size: 16, offset: 288)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1466, file: !1467, line: 321, baseType: !410, size: 16, offset: 304)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1466, file: !1467, line: 323, baseType: !1448, size: 192, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1466, file: !1467, line: 325, baseType: !296, size: 256, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1466, file: !1467, line: 327, baseType: !1478, size: 64, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1449, line: 31, size: 128, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1479, file: !1449, line: 32, baseType: !1086, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1479, file: !1449, line: 33, baseType: !5, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1479, file: !1449, line: 34, baseType: !5, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1466, file: !1467, line: 328, baseType: !1485, offset: 832)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, elements: !1421)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1435, file: !1329, line: 246, baseType: !410, size: 16, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1435, file: !1329, line: 252, baseType: !410, size: 16, offset: 656)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1435, file: !1329, line: 254, baseType: !1112, size: 32, offset: 672)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1435, file: !1329, line: 256, baseType: !1478, size: 64, offset: 704)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1435, file: !1329, line: 258, baseType: !1491, size: 64, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1467, line: 682, size: 2368, elements: !1493)
!1493 = !{!1494, !1497, !1498, !1524, !1525, !1526, !1527, !1528, !1533, !1534}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1492, file: !1467, line: 683, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1088, line: 117, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1492, file: !1467, line: 684, baseType: !5, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1492, file: !1467, line: 686, baseType: !1499, size: 448, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1500, line: 26, baseType: !1501)
!1500 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1500, line: 16, size: 448, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1513, !1518}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1500, line: 17, baseType: !544)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1501, file: !1500, line: 18, baseType: !397, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1501, file: !1500, line: 19, baseType: !397, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1501, file: !1500, line: 20, baseType: !1185, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1501, file: !1500, line: 22, baseType: !290, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !1500, line: 23, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1500, line: 13, baseType: !1511)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!290, !427, !290}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1501, file: !1500, line: 24, baseType: !1514, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1500, line: 14, baseType: !1516)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !290, !290}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1501, file: !1500, line: 25, baseType: !1519, size: 128, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1237, line: 40, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1237, line: 36, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !1237, line: 37, baseType: !544)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1520, file: !1237, line: 38, baseType: !313, size: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1492, file: !1467, line: 687, baseType: !1499, size: 448, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1492, file: !1467, line: 689, baseType: !1499, size: 448, offset: 1024)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1492, file: !1467, line: 690, baseType: !1499, size: 448, offset: 1472)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1492, file: !1467, line: 697, baseType: !544, offset: 1920)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1492, file: !1467, line: 698, baseType: !1529, size: 128, offset: 1920)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1467, line: 554, size: 128, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1529, file: !1467, line: 555, baseType: !1434, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1529, file: !1467, line: 556, baseType: !1434, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1492, file: !1467, line: 699, baseType: !296, size: 256, offset: 2048)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1492, file: !1467, line: 700, baseType: !1395, size: 64, offset: 2304)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1435, file: !1329, line: 265, baseType: !1485, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1427, file: !17, line: 1846, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!397, !1327, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !303, line: 150, baseType: !5)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1427, file: !17, line: 1847, baseType: !1542, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1400, !1540}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1427, file: !17, line: 1848, baseType: !1546, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!397, !1327, !1194, !1086, !5}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1427, file: !17, line: 1849, baseType: !1550, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!397, !1327, !1540, !5, !289}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1427, file: !17, line: 1850, baseType: !1550, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1427, file: !17, line: 1851, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!5, !1400, !5}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1427, file: !17, line: 1853, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1400}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1427, file: !17, line: 1854, baseType: !1563, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!397, !1400}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1427, file: !17, line: 1855, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!397, !1327, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !84, line: 51, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1427, file: !17, line: 1857, baseType: !1573, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1327, !289}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1427, file: !17, line: 1858, baseType: !1577, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!397, !1400, !1194, !5, !1580, !290}
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !17, line: 354, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!397, !1584, !5, !290}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1586, line: 106, size: 512, elements: !1587)
!1586 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1599, !1600}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1585, file: !1586, line: 107, baseType: !344, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1585, file: !1586, line: 108, baseType: !344, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1585, file: !1586, line: 109, baseType: !344, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1585, file: !1586, line: 110, baseType: !339, size: 8, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1585, file: !1586, line: 111, baseType: !339, size: 8, offset: 200)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1585, file: !1586, line: 112, baseType: !339, size: 8, offset: 208)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1585, file: !1586, line: 113, baseType: !339, size: 8, offset: 216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1585, file: !1586, line: 114, baseType: !1596, size: 32, offset: 224)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 32, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 4)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1585, file: !1586, line: 115, baseType: !344, size: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1585, file: !1586, line: 116, baseType: !1601, size: 192, offset: 320)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !1602)
!1602 = !{!1603}
!1603 = !DISubrange(count: 24)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1427, file: !17, line: 1860, baseType: !1605, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!595, !1400, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1427, file: !17, line: 1861, baseType: !939, size: 64, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1427, file: !17, line: 1862, baseType: !1611, size: 64, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !17, line: 41, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1401, file: !1346, line: 190, baseType: !1615, size: 64, offset: 7104)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !17, line: 399, size: 14464, elements: !1617)
!1617 = !{!1618, !1754, !1876, !1877, !1880, !1883, !1887, !1888, !1889, !1891, !1892, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2029, !2040, !2041, !2042, !2043, !2044, !2074, !2075, !2076, !2077, !2078, !2079, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2153, !2154, !2155, !2156, !2159, !2160, !2161, !2162, !2163, !2164}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1616, file: !17, line: 400, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !17, line: 130, size: 2176, elements: !1621)
!1621 = !{!1622, !1623, !1626, !1629, !1630, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1644, !1651, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1717, !1718, !1719, !1752, !1753}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1620, file: !17, line: 131, baseType: !1615, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1620, file: !17, line: 132, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !17, line: 132, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1620, file: !17, line: 133, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !17, line: 133, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1620, file: !17, line: 135, baseType: !5, size: 32, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1620, file: !17, line: 136, baseType: !1631, size: 32, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !17, line: 66, baseType: !330)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1620, file: !17, line: 138, baseType: !397, size: 32, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1620, file: !17, line: 139, baseType: !397, size: 32, offset: 288)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1620, file: !17, line: 142, baseType: !5, size: 32, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1620, file: !17, line: 143, baseType: !1194, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1620, file: !17, line: 145, baseType: !1434, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1620, file: !17, line: 146, baseType: !1434, size: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1620, file: !17, line: 148, baseType: !313, size: 128, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !17, line: 157, baseType: !1640, size: 128, offset: 704)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !17, line: 157, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1640, file: !17, line: 158, baseType: !948, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1640, file: !17, line: 159, baseType: !313, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !17, line: 167, baseType: !1645, size: 192, offset: 832)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !17, line: 167, size: 192, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1645, file: !17, line: 168, baseType: !1125, size: 192, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1645, file: !17, line: 169, baseType: !1479, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1645, file: !17, line: 170, baseType: !290, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1645, file: !17, line: 171, baseType: !397, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !17, line: 180, baseType: !1652, size: 256, offset: 1024)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !17, line: 180, size: 256, elements: !1653)
!1653 = !{!1654, !1691}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1652, file: !17, line: 184, baseType: !1655, size: 192)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !17, line: 181, size: 192, elements: !1656)
!1656 = !{!1657, !1687}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1655, file: !17, line: 182, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1660, line: 73, size: 448, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663, !1676, !1681, !1686}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1659, file: !1660, line: 74, baseType: !1615, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1659, file: !1660, line: 75, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1660, line: 99, size: 704, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1665, file: !1660, line: 100, baseType: !300, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1665, file: !1660, line: 101, baseType: !1112, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1665, file: !1660, line: 102, baseType: !1112, size: 32, offset: 96)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1665, file: !1660, line: 105, baseType: !544, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1665, file: !1660, line: 107, baseType: !410, size: 16, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1665, file: !1660, line: 109, baseType: !1104, size: 128, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1665, file: !1660, line: 110, baseType: !1658, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1665, file: !1660, line: 111, baseType: !944, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1665, file: !1660, line: 113, baseType: !296, size: 256, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1660, line: 83, baseType: !1677, size: 128, offset: 128)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1660, line: 83, size: 128, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1677, file: !1660, line: 84, baseType: !313, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1677, file: !1660, line: 85, baseType: !1495, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1660, line: 87, baseType: !1682, size: 128, offset: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1660, line: 87, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1682, file: !1660, line: 88, baseType: !948, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1682, file: !1660, line: 89, baseType: !683, size: 128, align: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !1660, line: 92, baseType: !5, size: 32, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1655, file: !17, line: 183, baseType: !1688, size: 128, offset: 64)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 2)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1652, file: !17, line: 190, baseType: !1692, size: 256)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !17, line: 186, size: 256, elements: !1693)
!1693 = !{!1694, !1695, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1692, file: !17, line: 187, baseType: !5, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1692, file: !17, line: 188, baseType: !313, size: 128, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1692, file: !17, line: 189, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !17, line: 62, baseType: !1699)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1619, !1444}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1620, file: !17, line: 193, baseType: !1400, size: 64, offset: 1280)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1620, file: !17, line: 194, baseType: !1344, size: 64, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1620, file: !17, line: 200, baseType: !343, size: 64, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1620, file: !17, line: 202, baseType: !343, size: 64, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1620, file: !17, line: 212, baseType: !410, size: 16, offset: 1536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1620, file: !17, line: 218, baseType: !410, size: 16, offset: 1552)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1620, file: !17, line: 221, baseType: !410, size: 16, offset: 1568)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1620, file: !17, line: 229, baseType: !410, size: 16, offset: 1584)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1620, file: !17, line: 230, baseType: !410, size: 16, offset: 1600)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1620, file: !17, line: 232, baseType: !16, size: 32, offset: 1632)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1620, file: !17, line: 233, baseType: !1712, size: 32, offset: 1664)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1713, line: 113, baseType: !1714)
!1713 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1713, line: 111, size: 32, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1714, file: !1713, line: 112, baseType: !1112, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1620, file: !17, line: 235, baseType: !5, size: 32, offset: 1696)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1620, file: !17, line: 236, baseType: !289, size: 64, offset: 1728)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !17, line: 238, baseType: !1720, size: 256, offset: 1792)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !17, line: 238, size: 256, elements: !1721)
!1721 = !{!1722, !1751}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1720, file: !17, line: 239, baseType: !1723, size: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1724, line: 23, size: 256, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1748, !1750}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !1724, line: 24, baseType: !1727, size: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !1724, line: 24, size: 128, elements: !1728)
!1728 = !{!1729, !1741}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1727, file: !1724, line: 25, baseType: !1730, size: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1731, line: 58, size: 128, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1734, !1739, !1740}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1730, file: !1731, line: 59, baseType: !677, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1731, line: 60, baseType: !1735, size: 32, offset: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !1731, line: 60, size: 32, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1735, file: !1731, line: 61, baseType: !5, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1735, file: !1731, line: 62, baseType: !1112, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1730, file: !1731, line: 65, baseType: !1223, size: 16, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1730, file: !1731, line: 65, baseType: !1223, size: 16, offset: 112)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !1724, line: 26, baseType: !1742, size: 128)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1727, file: !1724, line: 26, size: 128, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1742, file: !1724, line: 27, baseType: !677, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1724, line: 28, baseType: !5, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1742, file: !1724, line: 30, baseType: !1223, size: 16, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1742, file: !1724, line: 30, baseType: !1223, size: 16, offset: 112)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1723, file: !1724, line: 34, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1724, line: 17, baseType: !778)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1723, file: !1724, line: 35, baseType: !290, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1720, file: !17, line: 240, baseType: !343, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1620, file: !17, line: 246, baseType: !1697, size: 64, offset: 2048)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1620, file: !17, line: 247, baseType: !290, size: 64, offset: 2112)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1616, file: !17, line: 401, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !23, line: 101, size: 4992, elements: !1757)
!1757 = !{!1758, !1870, !1871, !1872, !1873, !1874}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1756, file: !23, line: 103, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !23, line: 66, size: 2240, elements: !1761)
!1761 = !{!1762, !1763, !1845, !1846, !1847, !1860, !1861, !1862, !1864, !1865, !1869}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1760, file: !23, line: 69, baseType: !1495, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1760, file: !23, line: 72, baseType: !1764, size: 1408, offset: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !23, line: 29, size: 1408, elements: !1765)
!1765 = !{!1766, !1770, !1774, !1778, !1782, !1786, !1790, !1794, !1799, !1803, !1807, !1813, !1817, !1818, !1822, !1826, !1830, !1834, !1835, !1839, !1840, !1844}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1764, file: !23, line: 30, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!397, !1615, !1759}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1764, file: !23, line: 31, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1755}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1764, file: !23, line: 32, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!397, !1627, !5}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1764, file: !23, line: 33, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1627, !5}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1764, file: !23, line: 34, baseType: !1783, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1627}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1764, file: !23, line: 36, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!455, !1615, !1619, !1434}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1764, file: !23, line: 37, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!455, !1627, !1434, !5}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1764, file: !23, line: 38, baseType: !1795, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!397, !1615, !1798, !1434}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1764, file: !23, line: 39, baseType: !1800, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1615, !1619, !22}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1764, file: !23, line: 40, baseType: !1804, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1615, !1619, !1619}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1764, file: !23, line: 41, baseType: !1808, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !5, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !23, line: 26, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1764, file: !23, line: 42, baseType: !1814, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1619}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1764, file: !23, line: 43, baseType: !1814, size: 64, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1764, file: !23, line: 44, baseType: !1819, size: 64, offset: 832)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1627, !316, !455}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1764, file: !23, line: 45, baseType: !1823, size: 64, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1619, !1627}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1764, file: !23, line: 46, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!455, !1627}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1764, file: !23, line: 47, baseType: !1831, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1619, !343}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1764, file: !23, line: 48, baseType: !1814, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1764, file: !23, line: 49, baseType: !1836, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1619, !1615, !1619}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1764, file: !23, line: 50, baseType: !1836, size: 64, offset: 1216)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1764, file: !23, line: 51, baseType: !1841, size: 64, offset: 1280)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1658}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1764, file: !23, line: 52, baseType: !1841, size: 64, offset: 1344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1760, file: !23, line: 74, baseType: !640, size: 64, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1760, file: !23, line: 75, baseType: !640, size: 64, offset: 1536)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1760, file: !23, line: 76, baseType: !1848, size: 64, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !23, line: 57, size: 256, elements: !1850)
!1850 = !{!1851, !1852, !1856}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1849, file: !23, line: 58, baseType: !631, size: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1849, file: !23, line: 59, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!626, !1755, !595}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1849, file: !23, line: 60, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!626, !1755, !385, !640}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1760, file: !23, line: 77, baseType: !385, size: 64, offset: 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1760, file: !23, line: 78, baseType: !385, size: 64, offset: 1728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1760, file: !23, line: 79, baseType: !1863, size: 32, offset: 1792)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1760, file: !23, line: 80, baseType: !939, size: 64, offset: 1856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1760, file: !23, line: 87, baseType: !1866, size: 176, offset: 1920)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 176, elements: !1867)
!1867 = !{!1868}
!1868 = !DISubrange(count: 22)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !23, line: 88, baseType: !313, size: 128, offset: 2112)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1756, file: !23, line: 104, baseType: !290, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1756, file: !23, line: 105, baseType: !556, size: 512, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1756, file: !23, line: 106, baseType: !1046, size: 192, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1756, file: !23, line: 107, baseType: !5, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1756, file: !23, line: 108, baseType: !1875, size: 4096, offset: 896)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 4096, elements: !600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1616, file: !17, line: 403, baseType: !1355, size: 128, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1616, file: !17, line: 405, baseType: !1878, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !17, line: 43, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1616, file: !17, line: 406, baseType: !1881, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !17, line: 42, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1616, file: !17, line: 408, baseType: !1884, size: 64, offset: 384)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !17, line: 408, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1616, file: !17, line: 411, baseType: !1624, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1616, file: !17, line: 413, baseType: !5, size: 32, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1616, file: !17, line: 416, baseType: !1890, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1616, file: !17, line: 417, baseType: !5, size: 32, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1616, file: !17, line: 419, baseType: !1893, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 165, size: 4672, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1906, !1907, !1908, !1909, !1910, !1911, !1967, !1968, !1969, !1970, !1972, !1973}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1894, file: !30, line: 166, baseType: !343, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1894, file: !30, line: 167, baseType: !1125, size: 192, align: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1894, file: !30, line: 168, baseType: !313, size: 128, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1894, file: !30, line: 169, baseType: !289, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1894, file: !30, line: 170, baseType: !289, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1894, file: !30, line: 172, baseType: !1902, size: 32, offset: 512)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1903, line: 19, size: 32, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1902, file: !1903, line: 20, baseType: !1712, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1894, file: !30, line: 173, baseType: !5, size: 32, offset: 544)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1894, file: !30, line: 174, baseType: !5, size: 32, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1894, file: !30, line: 175, baseType: !5, size: 32, offset: 608)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1894, file: !30, line: 175, baseType: !5, size: 32, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1894, file: !30, line: 181, baseType: !300, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1894, file: !30, line: 183, baseType: !1912, size: 2688, offset: 768)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !30, line: 107, size: 2688, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1943, !1944, !1945, !1946, !1947, !1965, !1966}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1912, file: !30, line: 108, baseType: !1893, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1912, file: !30, line: 110, baseType: !289, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1912, file: !30, line: 111, baseType: !289, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1912, file: !30, line: 113, baseType: !313, size: 128, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1912, file: !30, line: 114, baseType: !313, size: 128, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1912, file: !30, line: 115, baseType: !313, size: 128, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1912, file: !30, line: 116, baseType: !313, size: 128, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1912, file: !30, line: 117, baseType: !544, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1912, file: !30, line: 119, baseType: !1923, size: 256, offset: 704)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 256, elements: !1597)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1925, line: 97, size: 64, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1924, file: !1925, line: 98, baseType: !307, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1912, file: !30, line: 121, baseType: !289, size: 64, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1912, file: !30, line: 123, baseType: !289, size: 64, offset: 1024)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1912, file: !30, line: 124, baseType: !289, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1912, file: !30, line: 125, baseType: !289, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1912, file: !30, line: 126, baseType: !289, size: 64, offset: 1216)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1912, file: !30, line: 127, baseType: !289, size: 64, offset: 1280)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1912, file: !30, line: 135, baseType: !289, size: 64, offset: 1344)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1912, file: !30, line: 136, baseType: !289, size: 64, offset: 1408)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1912, file: !30, line: 138, baseType: !1937, size: 128, offset: 1472)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1938, line: 76, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1937, file: !1938, line: 78, baseType: !1924, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1937, file: !1938, line: 80, baseType: !5, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1938, line: 81, baseType: !533, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1912, file: !30, line: 139, baseType: !397, size: 32, offset: 1600)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1912, file: !30, line: 140, baseType: !29, size: 32, offset: 1632)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1912, file: !30, line: 142, baseType: !544, offset: 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1912, file: !30, line: 143, baseType: !313, size: 128, offset: 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1912, file: !30, line: 144, baseType: !1948, size: 704, offset: 1792)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !297, line: 115, size: 704, elements: !1949)
!1949 = !{!1950, !1951, !1963, !1964}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1948, file: !297, line: 116, baseType: !296, size: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1948, file: !297, line: 117, baseType: !1952, size: 320, offset: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1953, line: 11, size: 320, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955, !1956, !1957, !1962}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1952, file: !1953, line: 16, baseType: !948, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1952, file: !1953, line: 17, baseType: !289, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1952, file: !1953, line: 18, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1953, line: 19, baseType: !329, size: 32, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1948, file: !297, line: 120, baseType: !1395, size: 64, offset: 576)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1948, file: !297, line: 121, baseType: !397, size: 32, offset: 640)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1912, file: !30, line: 146, baseType: !289, size: 64, offset: 2496)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1912, file: !30, line: 148, baseType: !313, size: 128, offset: 2560)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1894, file: !30, line: 184, baseType: !313, size: 128, offset: 3456)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1894, file: !30, line: 190, baseType: !1519, size: 128, offset: 3584)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1894, file: !30, line: 192, baseType: !552, size: 64, offset: 3712)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1894, file: !30, line: 193, baseType: !1971, size: 512, offset: 3776)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 512, elements: !600)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1894, file: !30, line: 194, baseType: !552, size: 64, offset: 4288)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1894, file: !30, line: 196, baseType: !1952, size: 320, offset: 4352)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1616, file: !17, line: 425, baseType: !290, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1616, file: !17, line: 430, baseType: !289, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1616, file: !17, line: 436, baseType: !1112, size: 32, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1616, file: !17, line: 442, baseType: !397, size: 32, offset: 928)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1616, file: !17, line: 447, baseType: !427, size: 32, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1616, file: !17, line: 449, baseType: !544, offset: 992)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1616, file: !17, line: 454, baseType: !556, size: 512, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1616, file: !17, line: 459, baseType: !562, size: 64, offset: 1536)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1616, file: !17, line: 462, baseType: !1983, size: 128, offset: 1600)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1346, line: 159, size: 128, elements: !1984)
!1984 = !{!1985, !2014, !2015, !2016, !2017}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1983, file: !1346, line: 160, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !17, line: 1664, size: 320, elements: !1989)
!1989 = !{!1990, !2004, !2005, !2008, !2013}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1988, file: !17, line: 1665, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !17, line: 1660, baseType: !1993)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1444, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !17, line: 1651, size: 320, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1996, file: !17, line: 1652, baseType: !290, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1996, file: !17, line: 1653, baseType: !290, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1996, file: !17, line: 1654, baseType: !1194, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1996, file: !17, line: 1655, baseType: !5, size: 32, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1996, file: !17, line: 1656, baseType: !410, size: 16, offset: 224)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1996, file: !17, line: 1657, baseType: !385, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1988, file: !17, line: 1666, baseType: !1991, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1988, file: !17, line: 1667, baseType: !2006, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !17, line: 1661, baseType: !1815)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1988, file: !17, line: 1668, baseType: !2009, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !17, line: 1662, baseType: !2011)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !1619, !5}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1988, file: !17, line: 1669, baseType: !385, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1346, line: 161, baseType: !340, size: 8, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1983, file: !1346, line: 162, baseType: !340, size: 8, offset: 72)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1983, file: !1346, line: 163, baseType: !340, size: 8, offset: 80)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1983, file: !1346, line: 164, baseType: !340, size: 8, offset: 88)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1616, file: !17, line: 466, baseType: !552, size: 64, offset: 1728)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1616, file: !17, line: 467, baseType: !41, size: 32, offset: 1792)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1616, file: !17, line: 468, baseType: !5, size: 32, offset: 1824)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1616, file: !17, line: 474, baseType: !289, size: 64, offset: 1856)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1616, file: !17, line: 476, baseType: !5, size: 32, offset: 1920)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1616, file: !17, line: 477, baseType: !5, size: 32, offset: 1952)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1616, file: !17, line: 484, baseType: !5, size: 32, offset: 1984)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1616, file: !17, line: 485, baseType: !397, size: 32, offset: 2016)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1616, file: !17, line: 487, baseType: !2027, size: 64, offset: 2048)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !17, line: 44, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1616, file: !17, line: 488, baseType: !2030, size: 5120, offset: 2112)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2031, size: 5120, elements: !2038)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1329, line: 540, size: 320, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2036, !2037}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !2031, file: !1329, line: 541, baseType: !343, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2031, file: !1329, line: 542, baseType: !343, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2031, file: !1329, line: 543, baseType: !343, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !2031, file: !1329, line: 544, baseType: !329, size: 32, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2031, file: !1329, line: 545, baseType: !343, size: 64, offset: 256)
!2038 = !{!2039}
!2039 = !DISubrange(count: 16)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1616, file: !17, line: 490, baseType: !1952, size: 320, offset: 7232)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1616, file: !17, line: 491, baseType: !296, size: 256, offset: 7552)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1616, file: !17, line: 493, baseType: !1112, size: 32, offset: 7808)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1616, file: !17, line: 495, baseType: !313, size: 128, offset: 7872)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1616, file: !17, line: 502, baseType: !2045, size: 896, offset: 8000)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !17, line: 321, size: 896, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !2045, file: !17, line: 322, baseType: !289, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2045, file: !17, line: 323, baseType: !289, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2045, file: !17, line: 324, baseType: !289, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2045, file: !17, line: 326, baseType: !5, size: 32, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2045, file: !17, line: 327, baseType: !5, size: 32, offset: 224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2045, file: !17, line: 328, baseType: !5, size: 32, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2045, file: !17, line: 329, baseType: !5, size: 32, offset: 288)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2045, file: !17, line: 330, baseType: !5, size: 32, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2045, file: !17, line: 331, baseType: !5, size: 32, offset: 352)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2045, file: !17, line: 332, baseType: !5, size: 32, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2045, file: !17, line: 333, baseType: !5, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2045, file: !17, line: 334, baseType: !5, size: 32, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2045, file: !17, line: 335, baseType: !5, size: 32, offset: 480)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2045, file: !17, line: 336, baseType: !5, size: 32, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2045, file: !17, line: 337, baseType: !5, size: 32, offset: 544)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !2045, file: !17, line: 338, baseType: !5, size: 32, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2045, file: !17, line: 339, baseType: !5, size: 32, offset: 608)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2045, file: !17, line: 340, baseType: !5, size: 32, offset: 640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2045, file: !17, line: 341, baseType: !5, size: 32, offset: 672)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2045, file: !17, line: 342, baseType: !5, size: 32, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2045, file: !17, line: 344, baseType: !410, size: 16, offset: 736)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2045, file: !17, line: 345, baseType: !410, size: 16, offset: 752)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2045, file: !17, line: 346, baseType: !410, size: 16, offset: 768)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2045, file: !17, line: 348, baseType: !340, size: 8, offset: 784)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2045, file: !17, line: 349, baseType: !340, size: 8, offset: 792)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2045, file: !17, line: 350, baseType: !340, size: 8, offset: 800)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2045, file: !17, line: 351, baseType: !48, size: 32, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1616, file: !17, line: 504, baseType: !5, size: 32, offset: 8896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1616, file: !17, line: 534, baseType: !5, size: 32, offset: 8928)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1616, file: !17, line: 535, baseType: !5, size: 32, offset: 8960)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1616, file: !17, line: 536, baseType: !397, size: 32, offset: 8992)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1616, file: !17, line: 537, baseType: !1046, size: 192, offset: 9024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1616, file: !17, line: 544, baseType: !2080, size: 64, offset: 9216)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !17, line: 40, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1616, file: !17, line: 546, baseType: !313, size: 128, offset: 9280)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1616, file: !17, line: 547, baseType: !544, offset: 9408)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1616, file: !17, line: 548, baseType: !1948, size: 704, offset: 9408)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1616, file: !17, line: 550, baseType: !1046, size: 192, offset: 10112)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1616, file: !17, line: 551, baseType: !1046, size: 192, offset: 10304)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1616, file: !17, line: 557, baseType: !313, size: 128, offset: 10496)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1616, file: !17, line: 558, baseType: !544, offset: 10624)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1616, file: !17, line: 560, baseType: !397, size: 32, offset: 10624)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1616, file: !17, line: 563, baseType: !2091, size: 256, offset: 10688)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !2092, line: 18, size: 256, elements: !2093)
!2092 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !2091, file: !2092, line: 19, baseType: !552, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2091, file: !2092, line: 20, baseType: !397, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2091, file: !2092, line: 21, baseType: !1615, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2091, file: !2092, line: 22, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !2092, line: 10, size: 256, elements: !2101)
!2101 = !{!2102, !2144, !2148, !2152}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !2100, file: !2092, line: 11, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!397, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !2108, line: 22, size: 1280, elements: !2109)
!2108 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !2107, file: !2108, line: 23, baseType: !2111, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !310, line: 26, baseType: !397)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2107, file: !2108, line: 24, baseType: !330, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !2107, file: !2108, line: 25, baseType: !330, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !2107, file: !2108, line: 28, baseType: !330, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2107, file: !2108, line: 29, baseType: !344, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !2107, file: !2108, line: 30, baseType: !344, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !2107, file: !2108, line: 31, baseType: !330, size: 32, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !2107, file: !2108, line: 32, baseType: !330, size: 32, offset: 288)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !2107, file: !2108, line: 33, baseType: !330, size: 32, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !2107, file: !2108, line: 34, baseType: !330, size: 32, offset: 352)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !2107, file: !2108, line: 35, baseType: !344, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !2107, file: !2108, line: 38, baseType: !330, size: 32, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !2107, file: !2108, line: 40, baseType: !330, size: 32, offset: 480)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !2107, file: !2108, line: 41, baseType: !330, size: 32, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !2107, file: !2108, line: 42, baseType: !330, size: 32, offset: 544)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !2107, file: !2108, line: 43, baseType: !344, size: 64, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !2107, file: !2108, line: 44, baseType: !344, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2107, file: !2108, line: 46, baseType: !330, size: 32, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2108, line: 47, baseType: !330, size: 32, offset: 736)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !2107, file: !2108, line: 48, baseType: !344, size: 64, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !2107, file: !2108, line: 49, baseType: !330, size: 32, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !2107, file: !2108, line: 51, baseType: !330, size: 32, offset: 864)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !2107, file: !2108, line: 52, baseType: !330, size: 32, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !2107, file: !2108, line: 53, baseType: !330, size: 32, offset: 928)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !2107, file: !2108, line: 54, baseType: !330, size: 32, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2107, file: !2108, line: 55, baseType: !330, size: 32, offset: 992)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !2107, file: !2108, line: 56, baseType: !330, size: 32, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !2107, file: !2108, line: 57, baseType: !330, size: 32, offset: 1056)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !2107, file: !2108, line: 58, baseType: !2111, size: 32, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !2107, file: !2108, line: 59, baseType: !2111, size: 32, offset: 1120)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !2107, file: !2108, line: 60, baseType: !344, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !2107, file: !2108, line: 61, baseType: !330, size: 32, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2107, file: !2108, line: 63, baseType: !330, size: 32, offset: 1248)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !2100, file: !2092, line: 12, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!397, !1619, !2106, !1540}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !2100, file: !2092, line: 14, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!397, !1619, !2106}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !2100, file: !2092, line: 15, baseType: !1814, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1616, file: !17, line: 570, baseType: !683, size: 128, align: 64, offset: 10944)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1616, file: !17, line: 571, baseType: !1519, size: 128, offset: 11072)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1616, file: !17, line: 576, baseType: !1046, size: 192, offset: 11200)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1616, file: !17, line: 578, baseType: !2157, size: 64, offset: 11392)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !17, line: 578, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1616, file: !17, line: 579, baseType: !313, size: 128, offset: 11456)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1616, file: !17, line: 580, baseType: !1492, size: 2368, offset: 11584)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1616, file: !17, line: 582, baseType: !700, size: 64, offset: 13952)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1616, file: !17, line: 589, baseType: !455, size: 8, offset: 14016)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1616, file: !17, line: 591, baseType: !640, size: 64, offset: 14080)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1616, file: !17, line: 594, baseType: !2165, size: 320, offset: 14144)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 320, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 5)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1401, file: !1346, line: 191, baseType: !290, size: 64, offset: 7168)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1346, line: 193, baseType: !397, size: 32, offset: 7232)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1401, file: !1346, line: 194, baseType: !289, size: 64, offset: 7296)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1401, file: !1346, line: 196, baseType: !1132, size: 256, offset: 7360)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1401, file: !1346, line: 197, baseType: !562, size: 64, offset: 7616)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1401, file: !1346, line: 199, baseType: !2174, size: 64, offset: 7680)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1346, line: 199, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1401, file: !1346, line: 200, baseType: !1112, size: 32, offset: 7744)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1401, file: !1346, line: 201, baseType: !2178, size: 64, offset: 7808)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1346, line: 156, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1401, file: !1346, line: 203, baseType: !556, size: 512, offset: 7872)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1401, file: !1346, line: 208, baseType: !397, size: 32, offset: 8384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1401, file: !1346, line: 209, baseType: !2183, size: 64, offset: 8448)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1346, line: 157, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1401, file: !1346, line: 210, baseType: !2186, offset: 8512)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !955, line: 192, elements: !541)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1328, file: !1329, line: 43, baseType: !1893, size: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1328, file: !1329, line: 46, baseType: !397, size: 32, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1328, file: !1329, line: 48, baseType: !1046, size: 192, offset: 1152)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1281, file: !1282, line: 259, baseType: !670, size: 64, offset: 1152)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1281, file: !1282, line: 260, baseType: !5, size: 32, offset: 1216)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1281, file: !1282, line: 265, baseType: !544, offset: 1248)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1281, file: !1282, line: 278, baseType: !544, offset: 1248)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1281, file: !1282, line: 282, baseType: !296, size: 256, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1281, file: !1282, line: 283, baseType: !1307, size: 64, offset: 1536)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1281, file: !1282, line: 284, baseType: !2197, offset: 1600)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, elements: !1421)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1145, file: !84, line: 415, baseType: !2200, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !670}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !84, line: 466, baseType: !289, size: 64, offset: 896)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1100, file: !84, line: 467, baseType: !2205, size: 32, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2206, line: 8, baseType: !329)
!2206 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1100, file: !84, line: 468, baseType: !544, offset: 992)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1100, file: !84, line: 469, baseType: !313, size: 128, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1100, file: !84, line: 470, baseType: !290, size: 64, offset: 1152)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1095, file: !1088, line: 87, baseType: !289, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1095, file: !1088, line: 94, baseType: !289, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 96, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 96, size: 64, elements: !2214)
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2213, file: !1088, line: 101, baseType: !342, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 103, baseType: !2217, size: 320)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 103, size: 320, elements: !2218)
!2218 = !{!2219, !2229, !2230, !2231}
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !1088, line: 104, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !1088, line: 104, size: 128, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2220, file: !1088, line: 105, baseType: !313, size: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !1088, line: 106, baseType: !2224, size: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !1088, line: 106, size: 128, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2224, file: !1088, line: 107, baseType: !1086, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2224, file: !1088, line: 109, baseType: !397, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2224, file: !1088, line: 110, baseType: !397, size: 32, offset: 96)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2217, file: !1088, line: 117, baseType: !1495, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2217, file: !1088, line: 119, baseType: !290, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !1088, line: 120, baseType: !2232, size: 64, offset: 256)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !1088, line: 120, size: 64, elements: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2232, file: !1088, line: 121, baseType: !290, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2232, file: !1088, line: 122, baseType: !289, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !1088, line: 123, baseType: !2237, size: 32)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !1088, line: 123, size: 32, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2237, file: !1088, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2237, file: !1088, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2237, file: !1088, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 130, baseType: !2243, size: 192)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 130, size: 192, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2243, file: !1088, line: 131, baseType: !289, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2243, file: !1088, line: 134, baseType: !340, size: 8, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2243, file: !1088, line: 135, baseType: !340, size: 8, offset: 72)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2243, file: !1088, line: 136, baseType: !1112, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2243, file: !1088, line: 137, baseType: !5, size: 32, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 139, baseType: !2251, size: 256)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 139, size: 256, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2251, file: !1088, line: 140, baseType: !289, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2251, file: !1088, line: 141, baseType: !1112, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2251, file: !1088, line: 143, baseType: !313, size: 128, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 145, baseType: !2257, size: 256)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 145, size: 256, elements: !2258)
!2258 = !{!2259, !2260, !2263, !2264, !3722}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2257, file: !1088, line: 146, baseType: !289, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2257, file: !1088, line: 147, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2262, line: 509, baseType: !1086)
!2262 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2257, file: !1088, line: 148, baseType: !289, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !1088, line: 149, baseType: !2265, size: 64, offset: 192)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !1088, line: 149, size: 64, elements: !2266)
!2266 = !{!2267, !3721}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2265, file: !1088, line: 150, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1088, line: 388, size: 7296, elements: !2270)
!2270 = !{!2271, !3719}
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !1088, line: 389, baseType: !2272, size: 7296)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !1088, line: 389, size: 7296, elements: !2273)
!2273 = !{!2274, !2392, !2393, !2394, !2398, !2399, !2400, !2401, !2402, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2443, !2449, !2452, !2491, !2492, !3703, !3704, !3707, !3708, !3709, !3712, !3713, !3714, !3717, !3718}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2272, file: !1088, line: 390, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1088, line: 305, size: 1472, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2292, !2293, !2298, !2299, !2302, !2386, !2387, !2388, !2389, !2390}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2276, file: !1088, line: 308, baseType: !289, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2276, file: !1088, line: 309, baseType: !289, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2276, file: !1088, line: 313, baseType: !2275, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2276, file: !1088, line: 313, baseType: !2275, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2276, file: !1088, line: 315, baseType: !1125, size: 192, align: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2276, file: !1088, line: 323, baseType: !289, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2276, file: !1088, line: 327, baseType: !2268, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2276, file: !1088, line: 333, baseType: !2286, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2262, line: 284, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2262, line: 284, size: 64, elements: !2288)
!2288 = !{!2289}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2287, file: !2262, line: 284, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2291, line: 19, baseType: !289)
!2291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2276, file: !1088, line: 334, baseType: !289, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2276, file: !1088, line: 343, baseType: !2294, size: 256, offset: 704)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !1088, line: 340, size: 256, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2294, file: !1088, line: 341, baseType: !1125, size: 192, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2294, file: !1088, line: 342, baseType: !289, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2276, file: !1088, line: 351, baseType: !313, size: 128, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2276, file: !1088, line: 353, baseType: !2300, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1088, line: 353, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2276, file: !1088, line: 356, baseType: !2303, size: 64, offset: 1152)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !54, line: 557, size: 832, elements: !2306)
!2306 = !{!2307, !2311, !2312, !2316, !2320, !2360, !2364, !2368, !2372, !2373, !2374, !2378, !2382}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2305, file: !54, line: 558, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2275}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2305, file: !54, line: 559, baseType: !2308, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2305, file: !54, line: 560, baseType: !2313, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!397, !2275, !289}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2305, file: !54, line: 561, baseType: !2317, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!397, !2275}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2305, file: !54, line: 562, baseType: !2321, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1088, line: 682, baseType: !5)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !54, line: 508, size: 768, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2340, !2347, !2353, !2354, !2355, !2357, !2359}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2326, file: !54, line: 509, baseType: !2275, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !54, line: 510, baseType: !5, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2326, file: !54, line: 511, baseType: !427, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2326, file: !54, line: 512, baseType: !289, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2326, file: !54, line: 513, baseType: !289, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2326, file: !54, line: 514, baseType: !2334, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2262, line: 385, baseType: !2336)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2262, line: 385, size: 64, elements: !2337)
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2336, file: !2262, line: 385, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2291, line: 15, baseType: !289)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2326, file: !54, line: 516, baseType: !2341, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2262, line: 359, baseType: !2343)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2262, line: 359, size: 64, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2343, file: !2262, line: 359, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2291, line: 16, baseType: !289)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2326, file: !54, line: 519, baseType: !2348, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2291, line: 21, baseType: !2349)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2291, line: 21, size: 64, elements: !2350)
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2349, file: !2291, line: 21, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2291, line: 14, baseType: !289)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2326, file: !54, line: 521, baseType: !1086, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2326, file: !54, line: 522, baseType: !1086, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2326, file: !54, line: 528, baseType: !2356, size: 64, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2326, file: !54, line: 532, baseType: !2358, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2326, file: !54, line: 536, baseType: !2261, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2305, file: !54, line: 563, baseType: !2361, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!2324, !2325, !53}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2305, file: !54, line: 565, baseType: !2365, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2325, !289, !289}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2305, file: !54, line: 567, baseType: !2369, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!289, !2275}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2305, file: !54, line: 571, baseType: !2321, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2305, file: !54, line: 574, baseType: !2321, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2305, file: !54, line: 579, baseType: !2375, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!397, !2275, !289, !290, !397, !397}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2305, file: !54, line: 585, baseType: !2379, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!385, !2275}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2305, file: !54, line: 615, baseType: !2383, size: 64, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!1086, !2275, !289}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2276, file: !1088, line: 359, baseType: !289, size: 64, offset: 1216)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2276, file: !1088, line: 361, baseType: !670, size: 64, offset: 1280)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2276, file: !1088, line: 362, baseType: !290, size: 64, offset: 1344)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2276, file: !1088, line: 365, baseType: !300, size: 64, offset: 1408)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2276, file: !1088, line: 373, baseType: !2391, offset: 1472)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1088, line: 296, elements: !541)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2272, file: !1088, line: 391, baseType: !1121, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2272, file: !1088, line: 392, baseType: !343, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2272, file: !1088, line: 394, baseType: !2395, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!289, !670, !289, !289, !289, !289}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2272, file: !1088, line: 398, baseType: !289, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2272, file: !1088, line: 399, baseType: !289, size: 64, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2272, file: !1088, line: 405, baseType: !289, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2272, file: !1088, line: 406, baseType: !289, size: 64, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2272, file: !1088, line: 407, baseType: !2403, size: 64, offset: 512)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2262, line: 286, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2262, line: 286, size: 64, elements: !2406)
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2405, file: !2262, line: 286, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2291, line: 18, baseType: !289)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2272, file: !1088, line: 416, baseType: !1112, size: 32, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2272, file: !1088, line: 428, baseType: !1112, size: 32, offset: 608)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2272, file: !1088, line: 437, baseType: !1112, size: 32, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2272, file: !1088, line: 447, baseType: !1112, size: 32, offset: 672)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2272, file: !1088, line: 450, baseType: !300, size: 64, offset: 704)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2272, file: !1088, line: 452, baseType: !397, size: 32, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2272, file: !1088, line: 454, baseType: !544, offset: 800)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2272, file: !1088, line: 457, baseType: !1132, size: 256, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2272, file: !1088, line: 459, baseType: !313, size: 128, offset: 1088)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2272, file: !1088, line: 466, baseType: !289, size: 64, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2272, file: !1088, line: 467, baseType: !289, size: 64, offset: 1280)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2272, file: !1088, line: 469, baseType: !289, size: 64, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2272, file: !1088, line: 470, baseType: !289, size: 64, offset: 1408)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2272, file: !1088, line: 471, baseType: !302, size: 64, offset: 1472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2272, file: !1088, line: 472, baseType: !289, size: 64, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2272, file: !1088, line: 473, baseType: !289, size: 64, offset: 1600)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2272, file: !1088, line: 474, baseType: !289, size: 64, offset: 1664)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2272, file: !1088, line: 475, baseType: !289, size: 64, offset: 1728)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2272, file: !1088, line: 477, baseType: !544, offset: 1792)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2272, file: !1088, line: 478, baseType: !289, size: 64, offset: 1792)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2272, file: !1088, line: 478, baseType: !289, size: 64, offset: 1856)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2272, file: !1088, line: 478, baseType: !289, size: 64, offset: 1920)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2272, file: !1088, line: 478, baseType: !289, size: 64, offset: 1984)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2272, file: !1088, line: 479, baseType: !289, size: 64, offset: 2048)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2272, file: !1088, line: 479, baseType: !289, size: 64, offset: 2112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2272, file: !1088, line: 479, baseType: !289, size: 64, offset: 2176)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2272, file: !1088, line: 480, baseType: !289, size: 64, offset: 2240)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2272, file: !1088, line: 480, baseType: !289, size: 64, offset: 2304)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2272, file: !1088, line: 480, baseType: !289, size: 64, offset: 2368)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2272, file: !1088, line: 480, baseType: !289, size: 64, offset: 2432)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2272, file: !1088, line: 482, baseType: !2440, size: 2816, offset: 2496)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 2816, elements: !2441)
!2441 = !{!2442}
!2442 = !DISubrange(count: 44)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2272, file: !1088, line: 488, baseType: !2444, size: 256, offset: 5312)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2445, line: 60, size: 256, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2444, file: !2445, line: 61, baseType: !2448, size: 256)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !1597)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2272, file: !1088, line: 490, baseType: !2450, size: 64, offset: 5568)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1088, line: 490, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2272, file: !1088, line: 493, baseType: !2453, size: 896, offset: 5632)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2454, line: 53, baseType: !2455)
!2454 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2454, line: 13, size: 896, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2463, !2464, !2465, !2466, !2486, !2487, !2488}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2455, file: !2454, line: 18, baseType: !343, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2455, file: !2454, line: 28, baseType: !302, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2455, file: !2454, line: 31, baseType: !1132, size: 256, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2455, file: !2454, line: 32, baseType: !2461, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2454, line: 32, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2455, file: !2454, line: 37, baseType: !410, size: 16, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2455, file: !2454, line: 40, baseType: !1046, size: 192, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2455, file: !2454, line: 41, baseType: !290, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2455, file: !2454, line: 42, baseType: !2467, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2470, line: 13, size: 896, elements: !2471)
!2470 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2469, file: !2470, line: 14, baseType: !290, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2469, file: !2470, line: 15, baseType: !289, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2469, file: !2470, line: 17, baseType: !289, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2469, file: !2470, line: 17, baseType: !289, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2469, file: !2470, line: 19, baseType: !291, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2469, file: !2470, line: 21, baseType: !291, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2469, file: !2470, line: 22, baseType: !291, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2469, file: !2470, line: 23, baseType: !291, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2469, file: !2470, line: 24, baseType: !291, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2469, file: !2470, line: 25, baseType: !291, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2469, file: !2470, line: 26, baseType: !291, size: 64, offset: 640)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2469, file: !2470, line: 27, baseType: !291, size: 64, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2469, file: !2470, line: 28, baseType: !291, size: 64, offset: 768)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2469, file: !2470, line: 29, baseType: !291, size: 64, offset: 832)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2455, file: !2454, line: 44, baseType: !1112, size: 32, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2455, file: !2454, line: 50, baseType: !1223, size: 16, offset: 864)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2455, file: !2454, line: 51, baseType: !2489, size: 16, offset: 880)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !308, line: 18, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !310, line: 23, baseType: !1286)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2272, file: !1088, line: 495, baseType: !289, size: 64, offset: 6528)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2272, file: !1088, line: 497, baseType: !2493, size: 64, offset: 6592)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1088, line: 381, size: 384, elements: !2495)
!2495 = !{!2496, !2497, !3702}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2494, file: !1088, line: 382, baseType: !1112, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2494, file: !1088, line: 383, baseType: !2498, size: 128, offset: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1088, line: 376, size: 128, elements: !2499)
!2499 = !{!2500, !3700}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2498, file: !1088, line: 377, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2503, line: 640, size: 48640, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505, !2511, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2526, !2544, !2555, !2638, !2639, !2640, !2651, !2652, !2654, !2655, !2656, !2657, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2735, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2767, !2769, !2770, !2771, !2773, !2774, !2775, !2776, !2777, !2778, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2802, !2807, !3129, !3130, !3131, !3132, !3134, !3137, !3140, !3143, !3146, !3182, !3283, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3329, !3330, !3331, !3332, !3333, !3338, !3339, !3340, !3343, !3344, !3346, !3355, !3360, !3361, !3362, !3365, !3366, !3445, !3446, !3449, !3450, !3453, !3454, !3455, !3459, !3460, !3461, !3474, !3475, !3476, !3486, !3491, !3494, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2502, file: !2503, line: 646, baseType: !2506, size: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2507, line: 56, size: 128, elements: !2508)
!2507 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2507, line: 57, baseType: !289, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2506, file: !2507, line: 58, baseType: !329, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2502, file: !2503, line: 649, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !291)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2502, file: !2503, line: 657, baseType: !290, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2502, file: !2503, line: 658, baseType: !1712, size: 32, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2502, file: !2503, line: 660, baseType: !5, size: 32, offset: 288)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2502, file: !2503, line: 661, baseType: !5, size: 32, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2502, file: !2503, line: 684, baseType: !397, size: 32, offset: 352)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2502, file: !2503, line: 686, baseType: !397, size: 32, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2502, file: !2503, line: 687, baseType: !397, size: 32, offset: 416)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2502, file: !2503, line: 688, baseType: !397, size: 32, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2502, file: !2503, line: 689, baseType: !5, size: 32, offset: 480)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2502, file: !2503, line: 691, baseType: !2523, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2503, line: 691, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2502, file: !2503, line: 692, baseType: !2527, size: 832, offset: 576)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2503, line: 451, size: 832, elements: !2528)
!2528 = !{!2529, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2527, file: !2503, line: 453, baseType: !2530, size: 128)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2503, line: 325, size: 128, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2530, file: !2503, line: 326, baseType: !289, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2530, file: !2503, line: 327, baseType: !329, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2527, file: !2503, line: 454, baseType: !1125, size: 192, align: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2527, file: !2503, line: 455, baseType: !313, size: 128, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2527, file: !2503, line: 456, baseType: !5, size: 32, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2527, file: !2503, line: 458, baseType: !343, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2527, file: !2503, line: 459, baseType: !343, size: 64, offset: 576)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2527, file: !2503, line: 460, baseType: !343, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2527, file: !2503, line: 461, baseType: !343, size: 64, offset: 704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2527, file: !2503, line: 463, baseType: !343, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2527, file: !2503, line: 465, baseType: !2543, offset: 832)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2503, line: 415, elements: !541)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2502, file: !2503, line: 693, baseType: !2545, size: 384, offset: 1408)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2503, line: 489, size: 384, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2545, file: !2503, line: 490, baseType: !313, size: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2545, file: !2503, line: 491, baseType: !289, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2545, file: !2503, line: 492, baseType: !289, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2545, file: !2503, line: 493, baseType: !5, size: 32, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2545, file: !2503, line: 494, baseType: !410, size: 16, offset: 288)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2545, file: !2503, line: 495, baseType: !410, size: 16, offset: 304)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2545, file: !2503, line: 497, baseType: !2554, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2502, file: !2503, line: 697, baseType: !2556, size: 1792, offset: 1792)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2503, line: 507, size: 1792, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2635, !2636}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2556, file: !2503, line: 508, baseType: !1125, size: 192, align: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2556, file: !2503, line: 515, baseType: !343, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2556, file: !2503, line: 516, baseType: !343, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2556, file: !2503, line: 517, baseType: !343, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2556, file: !2503, line: 518, baseType: !343, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2556, file: !2503, line: 519, baseType: !343, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2556, file: !2503, line: 526, baseType: !307, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2556, file: !2503, line: 527, baseType: !343, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2503, line: 528, baseType: !5, size: 32, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2556, file: !2503, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2556, file: !2503, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2556, file: !2503, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2556, file: !2503, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2556, file: !2503, line: 563, baseType: !2572, size: 512, offset: 704)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !60, line: 118, size: 512, elements: !2573)
!2573 = !{!2574, !2582, !2583, !2588, !2631, !2632, !2633, !2634}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2572, file: !60, line: 119, baseType: !2575, size: 256)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2576, line: 9, size: 256, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2575, file: !2576, line: 10, baseType: !1125, size: 192, align: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2575, file: !2576, line: 11, baseType: !2580, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2581, line: 29, baseType: !307)
!2581 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2572, file: !60, line: 120, baseType: !2580, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2572, file: !60, line: 121, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!59, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2572, file: !60, line: 122, baseType: !2589, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !60, line: 159, size: 512, align: 512, elements: !2591)
!2591 = !{!2592, !2612, !2613, !2616, !2621, !2622, !2626, !2630}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2590, file: !60, line: 160, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !60, line: 214, size: 4608, align: 512, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2594, file: !60, line: 215, baseType: !533)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2594, file: !60, line: 216, baseType: !5, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2594, file: !60, line: 217, baseType: !5, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2594, file: !60, line: 218, baseType: !5, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2594, file: !60, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2594, file: !60, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2594, file: !60, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2594, file: !60, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2594, file: !60, line: 233, baseType: !2580, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2594, file: !60, line: 234, baseType: !2587, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2594, file: !60, line: 235, baseType: !2580, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2594, file: !60, line: 236, baseType: !2587, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2594, file: !60, line: 237, baseType: !2609, size: 4096, offset: 512)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, size: 4096, elements: !2610)
!2610 = !{!2611}
!2611 = !DISubrange(count: 8)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2590, file: !60, line: 161, baseType: !5, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2590, file: !60, line: 162, baseType: !2614, size: 32, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !303, line: 27, baseType: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !628, line: 96, baseType: !397)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2590, file: !60, line: 163, baseType: !2617, size: 32, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !706, line: 276, baseType: !2618)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !706, line: 276, size: 32, elements: !2619)
!2619 = !{!2620}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2618, file: !706, line: 276, baseType: !710, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2590, file: !60, line: 164, baseType: !2587, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2590, file: !60, line: 165, baseType: !2623, size: 128, offset: 256)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2576, line: 14, size: 128, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2623, file: !2576, line: 15, baseType: !1117, size: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2590, file: !60, line: 166, baseType: !2627, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!2580}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2590, file: !60, line: 167, baseType: !2580, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2572, file: !60, line: 123, baseType: !338, size: 8, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2572, file: !60, line: 124, baseType: !338, size: 8, offset: 456)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2572, file: !60, line: 125, baseType: !338, size: 8, offset: 464)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2572, file: !60, line: 126, baseType: !338, size: 8, offset: 472)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2556, file: !2503, line: 572, baseType: !2572, size: 512, offset: 1216)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2556, file: !2503, line: 580, baseType: !2637, size: 64, offset: 1728)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2502, file: !2503, line: 721, baseType: !5, size: 32, offset: 3584)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2502, file: !2503, line: 722, baseType: !397, size: 32, offset: 3616)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2502, file: !2503, line: 723, baseType: !2641, size: 64, offset: 3648)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2644, line: 17, baseType: !2645)
!2644 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2644, line: 17, size: 64, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2645, file: !2644, line: 17, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DISubrange(count: 1)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2502, file: !2503, line: 724, baseType: !2643, size: 64, offset: 3712)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2502, file: !2503, line: 749, baseType: !2653, offset: 3776)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2503, line: 290, elements: !541)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2502, file: !2503, line: 751, baseType: !313, size: 128, offset: 3776)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2502, file: !2503, line: 757, baseType: !2268, size: 64, offset: 3904)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2502, file: !2503, line: 758, baseType: !2268, size: 64, offset: 3968)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2502, file: !2503, line: 761, baseType: !2658, size: 320, offset: 4032)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2445, line: 34, size: 320, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2658, file: !2445, line: 35, baseType: !343, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2658, file: !2445, line: 36, baseType: !2662, size: 256, offset: 64)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 256, elements: !1597)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2502, file: !2503, line: 766, baseType: !397, size: 32, offset: 4352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2502, file: !2503, line: 767, baseType: !397, size: 32, offset: 4384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2502, file: !2503, line: 768, baseType: !397, size: 32, offset: 4416)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2502, file: !2503, line: 770, baseType: !397, size: 32, offset: 4448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2502, file: !2503, line: 772, baseType: !289, size: 64, offset: 4480)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2502, file: !2503, line: 775, baseType: !5, size: 32, offset: 4544)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2502, file: !2503, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2502, file: !2503, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2502, file: !2503, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2502, file: !2503, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2502, file: !2503, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2502, file: !2503, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2502, file: !2503, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2502, file: !2503, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2502, file: !2503, line: 831, baseType: !289, size: 64, offset: 4672)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2502, file: !2503, line: 833, baseType: !2679, size: 384, offset: 4736)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !65, line: 25, size: 384, elements: !2680)
!2680 = !{!2681, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2679, file: !65, line: 26, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!291, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !65, line: 27, baseType: !2687, size: 320, offset: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2679, file: !65, line: 27, size: 320, elements: !2688)
!2688 = !{!2689, !2699, !2725}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2687, file: !65, line: 36, baseType: !2690, size: 320)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !65, line: 29, size: 320, elements: !2691)
!2691 = !{!2692, !2694, !2695, !2696, !2697, !2698}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2690, file: !65, line: 30, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2690, file: !65, line: 31, baseType: !329, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !65, line: 32, baseType: !329, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2690, file: !65, line: 33, baseType: !329, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2690, file: !65, line: 34, baseType: !343, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2690, file: !65, line: 35, baseType: !2693, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2687, file: !65, line: 46, baseType: !2700, size: 192)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !65, line: 38, size: 192, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2724}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2700, file: !65, line: 39, baseType: !2614, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2700, file: !65, line: 40, baseType: !64, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !65, line: 41, baseType: !2705, size: 64, offset: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !65, line: 41, size: 64, elements: !2706)
!2706 = !{!2707, !2715}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2705, file: !65, line: 42, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2710, line: 7, size: 128, elements: !2711)
!2710 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2709, file: !2710, line: 8, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !628, line: 93, baseType: !311)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2709, file: !2710, line: 9, baseType: !311, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2705, file: !65, line: 43, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2718, line: 7, size: 64, elements: !2719)
!2718 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2719 = !{!2720, !2723}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2717, file: !2718, line: 8, baseType: !2721, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2718, line: 5, baseType: !2722)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !308, line: 20, baseType: !2111)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2717, file: !2718, line: 9, baseType: !2722, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2700, file: !65, line: 45, baseType: !343, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2687, file: !65, line: 54, baseType: !2726, size: 256)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !65, line: 48, size: 256, elements: !2727)
!2727 = !{!2728, !2731, !2732, !2733, !2734}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2726, file: !65, line: 49, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !65, line: 14, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2726, file: !65, line: 50, baseType: !397, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2726, file: !65, line: 51, baseType: !397, size: 32, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2726, file: !65, line: 52, baseType: !289, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2726, file: !65, line: 53, baseType: !289, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2502, file: !2503, line: 835, baseType: !2736, size: 32, offset: 5120)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !303, line: 22, baseType: !2737)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !628, line: 28, baseType: !397)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2502, file: !2503, line: 836, baseType: !2736, size: 32, offset: 5152)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2502, file: !2503, line: 840, baseType: !289, size: 64, offset: 5184)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2502, file: !2503, line: 849, baseType: !2501, size: 64, offset: 5248)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2502, file: !2503, line: 852, baseType: !2501, size: 64, offset: 5312)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2502, file: !2503, line: 857, baseType: !313, size: 128, offset: 5376)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2502, file: !2503, line: 858, baseType: !313, size: 128, offset: 5504)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2502, file: !2503, line: 859, baseType: !2501, size: 64, offset: 5632)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2502, file: !2503, line: 867, baseType: !313, size: 128, offset: 5696)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2502, file: !2503, line: 868, baseType: !313, size: 128, offset: 5824)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2502, file: !2503, line: 871, baseType: !2748, size: 64, offset: 5952)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !93, line: 59, size: 768, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2756, !2757, !2758, !2759}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2749, file: !93, line: 61, baseType: !1712, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2749, file: !93, line: 62, baseType: !5, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2749, file: !93, line: 63, baseType: !544, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2749, file: !93, line: 65, baseType: !2755, size: 256, offset: 64)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, elements: !1597)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2749, file: !93, line: 66, baseType: !944, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2749, file: !93, line: 68, baseType: !1519, size: 128, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2749, file: !93, line: 69, baseType: !683, size: 128, align: 64, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2749, file: !93, line: 70, baseType: !2760, size: 128, offset: 640)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 128, elements: !2649)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !93, line: 54, size: 128, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2761, file: !93, line: 55, baseType: !397, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2761, file: !93, line: 56, baseType: !2765, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !93, line: 56, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2502, file: !2503, line: 872, baseType: !2768, size: 512, offset: 6016)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 512, elements: !1597)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2502, file: !2503, line: 873, baseType: !313, size: 128, offset: 6528)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2502, file: !2503, line: 874, baseType: !313, size: 128, offset: 6656)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2502, file: !2503, line: 876, baseType: !2772, size: 64, offset: 6784)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2502, file: !2503, line: 879, baseType: !1028, size: 64, offset: 6848)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2502, file: !2503, line: 882, baseType: !1028, size: 64, offset: 6912)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2502, file: !2503, line: 884, baseType: !343, size: 64, offset: 6976)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2502, file: !2503, line: 885, baseType: !343, size: 64, offset: 7040)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2502, file: !2503, line: 890, baseType: !343, size: 64, offset: 7104)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2502, file: !2503, line: 891, baseType: !2779, size: 128, offset: 7168)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2503, line: 242, size: 128, elements: !2780)
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2779, file: !2503, line: 244, baseType: !343, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2779, file: !2503, line: 245, baseType: !343, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2779, file: !2503, line: 246, baseType: !533, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2502, file: !2503, line: 900, baseType: !289, size: 64, offset: 7296)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2502, file: !2503, line: 901, baseType: !289, size: 64, offset: 7360)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2502, file: !2503, line: 904, baseType: !343, size: 64, offset: 7424)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2502, file: !2503, line: 907, baseType: !343, size: 64, offset: 7488)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2502, file: !2503, line: 910, baseType: !289, size: 64, offset: 7552)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2502, file: !2503, line: 911, baseType: !289, size: 64, offset: 7616)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2502, file: !2503, line: 914, baseType: !2791, size: 640, offset: 7680)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2792, line: 123, size: 640, elements: !2793)
!2792 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2793 = !{!2794, !2800, !2801}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2791, file: !2792, line: 124, baseType: !2795, size: 576)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2796, size: 576, elements: !596)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2792, line: 108, size: 192, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2796, file: !2792, line: 109, baseType: !343, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2796, file: !2792, line: 110, baseType: !2623, size: 128, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2791, file: !2792, line: 125, baseType: !5, size: 32, offset: 576)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2791, file: !2792, line: 126, baseType: !5, size: 32, offset: 608)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2502, file: !2503, line: 917, baseType: !2803, size: 192, offset: 8320)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2792, line: 134, size: 192, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2803, file: !2792, line: 135, baseType: !683, size: 128, align: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2803, file: !2792, line: 136, baseType: !5, size: 32, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2502, file: !2503, line: 923, baseType: !2808, size: 64, offset: 8512)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2811, line: 111, size: 1280, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2830, !2831, !2832, !2833, !2834, !2835, !2942, !2943, !2944, !2945, !2971, !3114, !3124}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2810, file: !2811, line: 112, baseType: !1112, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2810, file: !2811, line: 120, baseType: !745, size: 32, offset: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2810, file: !2811, line: 121, baseType: !753, size: 32, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2810, file: !2811, line: 122, baseType: !745, size: 32, offset: 96)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2810, file: !2811, line: 123, baseType: !753, size: 32, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2810, file: !2811, line: 124, baseType: !745, size: 32, offset: 160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2810, file: !2811, line: 125, baseType: !753, size: 32, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2810, file: !2811, line: 126, baseType: !745, size: 32, offset: 224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2810, file: !2811, line: 127, baseType: !753, size: 32, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2810, file: !2811, line: 128, baseType: !5, size: 32, offset: 288)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2810, file: !2811, line: 129, baseType: !2824, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2825, line: 26, baseType: !2826)
!2825 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2825, line: 24, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2826, file: !2825, line: 25, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !1689)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2810, file: !2811, line: 130, baseType: !2824, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2810, file: !2811, line: 131, baseType: !2824, size: 64, offset: 448)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2810, file: !2811, line: 132, baseType: !2824, size: 64, offset: 512)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2810, file: !2811, line: 133, baseType: !2824, size: 64, offset: 576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2810, file: !2811, line: 135, baseType: !340, size: 8, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2810, file: !2811, line: 137, baseType: !2836, size: 64, offset: 704)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2838, line: 189, size: 1664, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840, !2841, !2844, !2849, !2850, !2853, !2854, !2859, !2860, !2861, !2862, !2864, !2865, !2866, !2867, !2868, !2906, !2927}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2837, file: !2838, line: 190, baseType: !1712, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2837, file: !2838, line: 191, baseType: !2842, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2838, line: 28, baseType: !2843)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !303, line: 98, baseType: !2722)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2838, line: 192, baseType: !2845, size: 192, offset: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !2838, line: 192, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2845, file: !2838, line: 193, baseType: !313, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2845, file: !2838, line: 194, baseType: !1125, size: 192, align: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2837, file: !2838, line: 199, baseType: !1132, size: 256, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2837, file: !2838, line: 200, baseType: !2851, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2838, line: 200, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2837, file: !2838, line: 201, baseType: !290, size: 64, offset: 576)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2838, line: 202, baseType: !2855, size: 64, offset: 640)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !2838, line: 202, size: 64, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2855, file: !2838, line: 203, baseType: !846, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2855, file: !2838, line: 204, baseType: !846, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2837, file: !2838, line: 206, baseType: !846, size: 64, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2837, file: !2838, line: 207, baseType: !745, size: 32, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2837, file: !2838, line: 208, baseType: !753, size: 32, offset: 800)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2837, file: !2838, line: 209, baseType: !2863, size: 32, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2838, line: 31, baseType: !865)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2837, file: !2838, line: 210, baseType: !410, size: 16, offset: 864)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2837, file: !2838, line: 211, baseType: !410, size: 16, offset: 880)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2837, file: !2838, line: 215, baseType: !1286, size: 16, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2837, file: !2838, line: 222, baseType: !289, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2838, line: 239, baseType: !2869, size: 320, offset: 1024)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !2838, line: 239, size: 320, elements: !2870)
!2870 = !{!2871, !2898}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2869, file: !2838, line: 240, baseType: !2872, size: 320)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2838, line: 108, size: 320, elements: !2873)
!2873 = !{!2874, !2875, !2887, !2890, !2897}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2872, file: !2838, line: 110, baseType: !289, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !2838, line: 111, baseType: !2876, size: 64, offset: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !2838, line: 111, size: 64, elements: !2877)
!2877 = !{!2878, !2886}
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !2838, line: 112, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2838, line: 112, size: 64, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2879, file: !2838, line: 114, baseType: !1223, size: 16)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2879, file: !2838, line: 115, baseType: !2883, size: 48, offset: 16)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 48, elements: !2884)
!2884 = !{!2885}
!2885 = !DISubrange(count: 6)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2876, file: !2838, line: 121, baseType: !289, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2872, file: !2838, line: 123, baseType: !2888, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2838, line: 96, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2872, file: !2838, line: 124, baseType: !2891, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2838, line: 102, size: 192, elements: !2893)
!2893 = !{!2894, !2895, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2892, file: !2838, line: 103, baseType: !683, size: 128, align: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2892, file: !2838, line: 104, baseType: !1712, size: 32, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2892, file: !2838, line: 105, baseType: !455, size: 8, offset: 160)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2872, file: !2838, line: 125, baseType: !385, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !2838, line: 241, baseType: !2899, size: 320)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !2838, line: 241, size: 320, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904, !2905}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2899, file: !2838, line: 242, baseType: !289, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2899, file: !2838, line: 243, baseType: !289, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2899, file: !2838, line: 244, baseType: !2888, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2899, file: !2838, line: 245, baseType: !2891, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2899, file: !2838, line: 246, baseType: !595, size: 64, offset: 256)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2838, line: 254, baseType: !2907, size: 256, offset: 1344)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !2838, line: 254, size: 256, elements: !2908)
!2908 = !{!2909, !2915}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2907, file: !2838, line: 255, baseType: !2910, size: 256)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2838, line: 128, size: 256, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2910, file: !2838, line: 129, baseType: !290, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2910, file: !2838, line: 130, baseType: !2914, size: 256)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !1597)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !2838, line: 256, baseType: !2916, size: 256)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2838, line: 256, size: 256, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2916, file: !2838, line: 258, baseType: !313, size: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2916, file: !2838, line: 259, baseType: !2920, size: 128, offset: 128)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2921, line: 22, size: 128, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2922 = !{!2923, !2926}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2920, file: !2921, line: 23, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2921, line: 23, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2920, file: !2921, line: 24, baseType: !289, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2837, file: !2838, line: 274, baseType: !2928, size: 64, offset: 1600)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2838, line: 170, size: 192, elements: !2930)
!2930 = !{!2931, !2940, !2941}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2929, file: !2838, line: 171, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2838, line: 165, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!397, !2836, !2936, !2938, !2836}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2889)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2910)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2929, file: !2838, line: 172, baseType: !2836, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2929, file: !2838, line: 173, baseType: !2888, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2810, file: !2811, line: 138, baseType: !2836, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2810, file: !2811, line: 139, baseType: !2836, size: 64, offset: 832)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2810, file: !2811, line: 140, baseType: !2836, size: 64, offset: 896)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2810, file: !2811, line: 145, baseType: !2946, size: 64, offset: 960)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2948, line: 13, size: 896, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2947, file: !2948, line: 14, baseType: !1712, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2947, file: !2948, line: 15, baseType: !1112, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2947, file: !2948, line: 16, baseType: !1112, size: 32, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2947, file: !2948, line: 21, baseType: !300, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2947, file: !2948, line: 27, baseType: !289, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2947, file: !2948, line: 28, baseType: !289, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2947, file: !2948, line: 29, baseType: !300, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2947, file: !2948, line: 32, baseType: !948, size: 128, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2947, file: !2948, line: 33, baseType: !745, size: 32, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2947, file: !2948, line: 37, baseType: !300, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2947, file: !2948, line: 44, baseType: !2961, size: 256, offset: 640)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2962, line: 15, size: 256, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2961, file: !2962, line: 16, baseType: !533)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2961, file: !2962, line: 18, baseType: !397, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2961, file: !2962, line: 19, baseType: !397, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2961, file: !2962, line: 20, baseType: !397, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2961, file: !2962, line: 21, baseType: !397, size: 32, offset: 96)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2961, file: !2962, line: 22, baseType: !289, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2961, file: !2962, line: 23, baseType: !289, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2810, file: !2811, line: 146, baseType: !2972, size: 64, offset: 1024)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2974, line: 56, size: 4160, elements: !2975)
!2974 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2975 = !{!2976, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3013, !3014, !3015, !3016, !3017, !3018, !3099, !3100, !3112}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2973, file: !2974, line: 57, baseType: !2977, size: 576)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2974, line: 23, size: 576, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2977, file: !2974, line: 24, baseType: !329, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2974, line: 25, baseType: !2981, size: 512, offset: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2974, line: 25, size: 512, elements: !2982)
!2982 = !{!2983, !2990}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2981, file: !2974, line: 26, baseType: !2984, size: 480)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2985, size: 480, elements: !2166)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2974, line: 17, size: 96, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2985, file: !2974, line: 18, baseType: !329, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2985, file: !2974, line: 19, baseType: !329, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2974, line: 20, baseType: !329, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2974, line: 27, baseType: !2991, size: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2981, file: !2974, line: 27, size: 128, elements: !2992)
!2992 = !{!2993, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2991, file: !2974, line: 28, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2991, file: !2974, line: 29, baseType: !2994, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2973, file: !2974, line: 58, baseType: !2977, size: 576, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2973, file: !2974, line: 59, baseType: !2977, size: 576, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2973, file: !2974, line: 60, baseType: !1112, size: 32, offset: 1728)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2973, file: !2974, line: 61, baseType: !2972, size: 64, offset: 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2973, file: !2974, line: 62, baseType: !397, size: 32, offset: 1856)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2973, file: !2974, line: 63, baseType: !745, size: 32, offset: 1888)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2973, file: !2974, line: 64, baseType: !753, size: 32, offset: 1920)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2973, file: !2974, line: 65, baseType: !3004, size: 192, offset: 1984)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3005, line: 7, size: 192, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!3006 = !{!3007, !3008, !3012}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3004, file: !3005, line: 8, baseType: !300, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3004, file: !3005, line: 9, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3011)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3005, line: 5, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3004, file: !3005, line: 10, baseType: !5, size: 32, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !2974, line: 66, baseType: !289, size: 64, offset: 2176)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2973, file: !2974, line: 74, baseType: !313, size: 128, offset: 2240)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2973, file: !2974, line: 75, baseType: !2836, size: 64, offset: 2368)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2973, file: !2974, line: 76, baseType: !1132, size: 256, offset: 2432)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2973, file: !2974, line: 83, baseType: !296, size: 256, offset: 2688)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2973, file: !2974, line: 85, baseType: !3019, size: 768, offset: 2944)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !3020, line: 156, size: 768, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!3021 = !{!3022, !3027}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3019, file: !3020, line: 157, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!397, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3019, file: !3020, line: 158, baseType: !3028, size: 704, offset: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !3020, line: 150, size: 704, elements: !3029)
!3029 = !{!3030, !3098}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3028, file: !3020, line: 152, baseType: !3031, size: 640)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !3020, line: 131, size: 640, elements: !3032)
!3032 = !{!3033, !3066, !3067, !3068, !3088, !3089, !3091, !3097}
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !3020, line: 132, baseType: !3034, size: 192)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !3020, line: 132, size: 192, elements: !3035)
!3035 = !{!3036, !3065}
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !3020, line: 133, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3034, file: !3020, line: 133, size: 192, elements: !3038)
!3038 = !{!3039, !3062, !3063, !3064}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3037, file: !3020, line: 134, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !3020, line: 112, size: 512, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048, !3054, !3060, !3061}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !3041, file: !3020, line: 113, baseType: !385, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3041, file: !3020, line: 114, baseType: !290, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3041, file: !3020, line: 115, baseType: !397, size: 32, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3041, file: !3020, line: 116, baseType: !635, size: 16, offset: 160)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3041, file: !3020, line: 117, baseType: !3040, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !3041, file: !3020, line: 118, baseType: !3049, size: 64, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !3020, line: 47, baseType: !3051)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!397, !3040, !397, !290, !3053, !1061}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3041, file: !3020, line: 119, baseType: !3055, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !3020, line: 94, size: 192, elements: !3057)
!3057 = !{!3058, !3059}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3056, file: !3020, line: 95, baseType: !1112, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3056, file: !3020, line: 96, baseType: !1519, size: 128, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !3041, file: !3020, line: 120, baseType: !290, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !3041, file: !3020, line: 121, baseType: !290, size: 64, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3037, file: !3020, line: 135, baseType: !397, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3037, file: !3020, line: 136, baseType: !397, size: 32, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3037, file: !3020, line: 137, baseType: !397, size: 32, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3034, file: !3020, line: 139, baseType: !683, size: 128, align: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3031, file: !3020, line: 141, baseType: !2772, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3031, file: !3020, line: 142, baseType: !3040, size: 64, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3031, file: !3020, line: 143, baseType: !3069, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !3020, line: 161, size: 960, elements: !3071)
!3071 = !{!3072, !3073, !3077, !3084}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3070, file: !3020, line: 162, baseType: !3019, size: 768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3070, file: !3020, line: 163, baseType: !3074, size: 64, offset: 768)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!3026, !3069}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3070, file: !3020, line: 164, baseType: !3078, size: 64, offset: 832)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3081, !3040, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3070, file: !3020, line: 167, baseType: !3085, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!397, !3081, !3040}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3031, file: !3020, line: 144, baseType: !3026, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3031, file: !3020, line: 145, baseType: !3090, size: 64, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3031, file: !3020, line: 146, baseType: !3092, size: 64, offset: 512)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !3020, line: 124, size: 256, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3093, file: !3020, line: 125, baseType: !1125, size: 192, align: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3093, file: !3020, line: 126, baseType: !3081, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3031, file: !3020, line: 147, baseType: !944, size: 64, offset: 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3028, file: !3020, line: 153, baseType: !1121, size: 64, offset: 640)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2973, file: !2974, line: 86, baseType: !3081, size: 64, offset: 3712)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2973, file: !2974, line: 88, baseType: !3101, size: 64, offset: 3776)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2974, line: 92, size: 576, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3108}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3102, file: !2974, line: 93, baseType: !948, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3102, file: !2974, line: 94, baseType: !2972, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3102, file: !2974, line: 95, baseType: !745, size: 32, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3102, file: !2974, line: 96, baseType: !397, size: 32, offset: 224)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !3102, file: !2974, line: 97, baseType: !3109, size: 320, offset: 256)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 320, elements: !3110)
!3110 = !{!3111}
!3111 = !DISubrange(count: 10)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2973, file: !2974, line: 89, baseType: !3113, size: 320, offset: 3840)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 320, elements: !3110)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2810, file: !2811, line: 147, baseType: !3115, size: 64, offset: 1088)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2811, line: 25, size: 64, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3116, file: !2811, line: 26, baseType: !1112, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3116, file: !2811, line: 27, baseType: !397, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3116, file: !2811, line: 28, baseType: !3121, offset: 64)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, elements: !3122)
!3122 = !{!3123}
!3123 = !DISubrange(count: 0)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !2811, line: 149, baseType: !3125, size: 128, offset: 1152)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !2811, line: 149, size: 128, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3125, file: !2811, line: 150, baseType: !397, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3125, file: !2811, line: 151, baseType: !683, size: 128, align: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2502, file: !2503, line: 926, baseType: !2808, size: 64, offset: 8576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2502, file: !2503, line: 929, baseType: !2808, size: 64, offset: 8640)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2502, file: !2503, line: 933, baseType: !2836, size: 64, offset: 8704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2502, file: !2503, line: 943, baseType: !3133, size: 128, offset: 8768)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 128, elements: !2038)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2502, file: !2503, line: 945, baseType: !3135, size: 64, offset: 8896)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2503, line: 49, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2502, file: !2503, line: 956, baseType: !3138, size: 64, offset: 8960)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2503, line: 45, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2502, file: !2503, line: 959, baseType: !3141, size: 64, offset: 9024)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2503, line: 959, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2502, file: !2503, line: 962, baseType: !3144, size: 64, offset: 9088)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2503, line: 66, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2502, file: !2503, line: 966, baseType: !3147, size: 64, offset: 9152)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3149, line: 31, size: 576, elements: !3150)
!3149 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!3150 = !{!3151, !3152, !3155, !3158, !3161, !3162, !3165, !3168, !3169}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3148, file: !3149, line: 32, baseType: !1112, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3148, file: !3149, line: 33, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3149, line: 9, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3148, file: !3149, line: 34, baseType: !3156, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3149, line: 10, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3148, file: !3149, line: 35, baseType: !3159, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3149, line: 8, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3148, file: !3149, line: 36, baseType: !2765, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3148, file: !3149, line: 37, baseType: !3163, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2838, line: 34, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3148, file: !3149, line: 38, baseType: !3166, size: 64, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3149, line: 38, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3148, file: !3149, line: 39, baseType: !3166, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3148, file: !3149, line: 40, baseType: !3170, size: 64, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3172, line: 856, size: 448, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!3173 = !{!3174, !3175, !3176, !3177, !3178}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3171, file: !3172, line: 857, baseType: !1712, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3171, file: !3172, line: 858, baseType: !3004, size: 192, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3171, file: !3172, line: 859, baseType: !2972, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3171, file: !3172, line: 860, baseType: !3101, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3171, file: !3172, line: 861, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3181, line: 16, flags: DIFlagFwdDecl)
!3181 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2502, file: !2503, line: 969, baseType: !3183, size: 64, offset: 9216)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3185, line: 82, size: 7296, elements: !3186)
!3185 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3222, !3231, !3232, !3234, !3235, !3236, !3239, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3269, !3270, !3277, !3278, !3279, !3280, !3281, !3282}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3184, file: !3185, line: 83, baseType: !1712, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3184, file: !3185, line: 84, baseType: !1112, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3184, file: !3185, line: 85, baseType: !397, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3184, file: !3185, line: 86, baseType: !313, size: 128, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3184, file: !3185, line: 88, baseType: !1519, size: 128, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3184, file: !3185, line: 91, baseType: !2501, size: 64, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3184, file: !3185, line: 94, baseType: !3194, size: 192, offset: 448)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3195, line: 30, size: 192, elements: !3196)
!3195 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3194, file: !3195, line: 31, baseType: !313, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3194, file: !3195, line: 32, baseType: !3199, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3200, line: 25, baseType: !3201)
!3200 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3200, line: 23, size: 64, elements: !3202)
!3202 = !{!3203}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3201, file: !3200, line: 24, baseType: !2648, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3184, file: !3185, line: 97, baseType: !944, size: 64, offset: 640)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3184, file: !3185, line: 100, baseType: !397, size: 32, offset: 704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3184, file: !3185, line: 106, baseType: !397, size: 32, offset: 736)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !3184, file: !3185, line: 107, baseType: !2501, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3184, file: !3185, line: 110, baseType: !397, size: 32, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !3185, line: 111, baseType: !5, size: 32, offset: 864)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3184, file: !3185, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3184, file: !3185, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !3184, file: !3185, line: 128, baseType: !397, size: 32, offset: 928)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3184, file: !3185, line: 129, baseType: !313, size: 128, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3184, file: !3185, line: 132, baseType: !2572, size: 512, offset: 1088)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3184, file: !3185, line: 133, baseType: !2580, size: 64, offset: 1600)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3184, file: !3185, line: 140, baseType: !3217, size: 256, offset: 1664)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3218, size: 256, elements: !1689)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3185, line: 38, size: 128, elements: !3219)
!3219 = !{!3220, !3221}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3218, file: !3185, line: 39, baseType: !343, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3218, file: !3185, line: 40, baseType: !343, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3184, file: !3185, line: 146, baseType: !3223, size: 192, offset: 1920)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3185, line: 66, size: 192, elements: !3224)
!3224 = !{!3225}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3223, file: !3185, line: 67, baseType: !3226, size: 192)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3185, line: 47, size: 192, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3226, file: !3185, line: 48, baseType: !302, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3226, file: !3185, line: 49, baseType: !302, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3226, file: !3185, line: 50, baseType: !302, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3184, file: !3185, line: 150, baseType: !2791, size: 640, offset: 2112)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3184, file: !3185, line: 153, baseType: !3233, size: 256, offset: 2752)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2748, size: 256, elements: !1597)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3184, file: !3185, line: 159, baseType: !2748, size: 64, offset: 3008)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3184, file: !3185, line: 162, baseType: !397, size: 32, offset: 3072)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3184, file: !3185, line: 164, baseType: !3237, size: 64, offset: 3136)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3185, line: 164, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3184, file: !3185, line: 175, baseType: !3240, size: 32, offset: 3200)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !706, line: 805, baseType: !3241)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 798, size: 32, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3241, file: !706, line: 803, baseType: !705, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3241, file: !706, line: 804, baseType: !544, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3184, file: !3185, line: 176, baseType: !343, size: 64, offset: 3264)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3184, file: !3185, line: 176, baseType: !343, size: 64, offset: 3328)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3184, file: !3185, line: 176, baseType: !343, size: 64, offset: 3392)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3184, file: !3185, line: 176, baseType: !343, size: 64, offset: 3456)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3184, file: !3185, line: 177, baseType: !343, size: 64, offset: 3520)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3184, file: !3185, line: 178, baseType: !343, size: 64, offset: 3584)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3184, file: !3185, line: 179, baseType: !2779, size: 128, offset: 3648)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3184, file: !3185, line: 180, baseType: !289, size: 64, offset: 3776)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3184, file: !3185, line: 180, baseType: !289, size: 64, offset: 3840)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3184, file: !3185, line: 180, baseType: !289, size: 64, offset: 3904)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3184, file: !3185, line: 180, baseType: !289, size: 64, offset: 3968)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3184, file: !3185, line: 181, baseType: !289, size: 64, offset: 4032)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3184, file: !3185, line: 181, baseType: !289, size: 64, offset: 4096)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3184, file: !3185, line: 181, baseType: !289, size: 64, offset: 4160)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3184, file: !3185, line: 181, baseType: !289, size: 64, offset: 4224)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3184, file: !3185, line: 182, baseType: !289, size: 64, offset: 4288)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3184, file: !3185, line: 182, baseType: !289, size: 64, offset: 4352)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3184, file: !3185, line: 182, baseType: !289, size: 64, offset: 4416)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3184, file: !3185, line: 182, baseType: !289, size: 64, offset: 4480)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3184, file: !3185, line: 183, baseType: !289, size: 64, offset: 4544)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3184, file: !3185, line: 183, baseType: !289, size: 64, offset: 4608)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3184, file: !3185, line: 184, baseType: !3267, offset: 4672)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3268, line: 12, elements: !541)
!3268 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3184, file: !3185, line: 192, baseType: !345, size: 64, offset: 4672)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3184, file: !3185, line: 203, baseType: !3271, size: 2048, offset: 4736)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3272, size: 2048, elements: !2038)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3273, line: 43, size: 128, elements: !3274)
!3273 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3272, file: !3273, line: 44, baseType: !642, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3272, file: !3273, line: 45, baseType: !642, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3184, file: !3185, line: 220, baseType: !455, size: 8, offset: 6784)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3184, file: !3185, line: 221, baseType: !1286, size: 16, offset: 6800)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3184, file: !3185, line: 222, baseType: !1286, size: 16, offset: 6816)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3184, file: !3185, line: 224, baseType: !2268, size: 64, offset: 6848)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3184, file: !3185, line: 227, baseType: !1046, size: 192, offset: 6912)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !3184, file: !3185, line: 233, baseType: !1046, size: 192, offset: 7104)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2502, file: !2503, line: 970, baseType: !3284, size: 64, offset: 9280)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3185, line: 20, size: 16576, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3285, file: !3185, line: 21, baseType: !544)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3285, file: !3185, line: 22, baseType: !1712, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3285, file: !3185, line: 23, baseType: !1519, size: 128, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3285, file: !3185, line: 24, baseType: !3291, size: 16384, offset: 192)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 16384, elements: !600)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3195, line: 49, size: 256, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3292, file: !3195, line: 50, baseType: !3295, size: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3195, line: 35, size: 256, elements: !3296)
!3296 = !{!3297, !3304, !3305, !3311}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3295, file: !3195, line: 37, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3299, line: 19, baseType: !3300)
!3299 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3299, line: 18, baseType: !3302)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !397}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3295, file: !3195, line: 38, baseType: !289, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3295, file: !3195, line: 44, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3299, line: 22, baseType: !3307)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3299, line: 21, baseType: !3309)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3295, file: !3195, line: 46, baseType: !3199, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2502, file: !2503, line: 971, baseType: !3199, size: 64, offset: 9344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2502, file: !2503, line: 972, baseType: !3199, size: 64, offset: 9408)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2502, file: !2503, line: 974, baseType: !3199, size: 64, offset: 9472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2502, file: !2503, line: 975, baseType: !3194, size: 192, offset: 9536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2502, file: !2503, line: 976, baseType: !289, size: 64, offset: 9728)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2502, file: !2503, line: 977, baseType: !640, size: 64, offset: 9792)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2502, file: !2503, line: 978, baseType: !5, size: 32, offset: 9856)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2502, file: !2503, line: 980, baseType: !686, size: 64, offset: 9920)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2502, file: !2503, line: 989, baseType: !3321, size: 128, offset: 9984)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3322, line: 35, size: 128, elements: !3323)
!3322 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3323 = !{!3324, !3325, !3326}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3321, file: !3322, line: 36, baseType: !397, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3321, file: !3322, line: 37, baseType: !1112, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3321, file: !3322, line: 38, baseType: !3327, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3322, line: 23, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2502, file: !2503, line: 992, baseType: !343, size: 64, offset: 10112)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2502, file: !2503, line: 993, baseType: !343, size: 64, offset: 10176)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2502, file: !2503, line: 996, baseType: !544, offset: 10240)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2502, file: !2503, line: 999, baseType: !533, offset: 10240)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2502, file: !2503, line: 1001, baseType: !3334, size: 64, offset: 10240)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2503, line: 636, size: 64, elements: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3334, file: !2503, line: 637, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2502, file: !2503, line: 1005, baseType: !1117, size: 128, offset: 10304)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2502, file: !2503, line: 1007, baseType: !2501, size: 64, offset: 10432)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2502, file: !2503, line: 1009, baseType: !3341, size: 64, offset: 10496)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2503, line: 1009, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2502, file: !2503, line: 1043, baseType: !290, size: 64, offset: 10560)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2502, file: !2503, line: 1046, baseType: !3345, size: 64, offset: 10624)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2502, file: !2503, line: 1050, baseType: !3347, size: 64, offset: 10688)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !17, line: 1236, size: 320, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3348, file: !17, line: 1237, baseType: !313, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3348, file: !17, line: 1238, baseType: !313, size: 128, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3348, file: !17, line: 1239, baseType: !410, size: 16, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3348, file: !17, line: 1240, baseType: !455, size: 8, offset: 272)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3348, file: !17, line: 1241, baseType: !455, size: 8, offset: 280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2502, file: !2503, line: 1054, baseType: !3356, size: 64, offset: 10752)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1282, line: 131, size: 64, elements: !3358)
!3358 = !{!3359}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3357, file: !1282, line: 132, baseType: !289, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2502, file: !2503, line: 1056, baseType: !1893, size: 64, offset: 10816)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2502, file: !2503, line: 1058, baseType: !1664, size: 64, offset: 10880)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2502, file: !2503, line: 1061, baseType: !3363, size: 64, offset: 10944)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2503, line: 43, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2502, file: !2503, line: 1064, baseType: !289, size: 64, offset: 11008)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2502, file: !2503, line: 1065, baseType: !3367, size: 64, offset: 11072)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3195, line: 14, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3195, line: 12, size: 384, elements: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !3195, line: 13, baseType: !3372, size: 384)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3369, file: !3195, line: 13, size: 384, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3372, file: !3195, line: 13, baseType: !397, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3372, file: !3195, line: 13, baseType: !397, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3372, file: !3195, line: 13, baseType: !397, size: 32, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3372, file: !3195, line: 13, baseType: !3378, size: 256, offset: 128)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3379, line: 32, size: 256, elements: !3380)
!3379 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3380 = !{!3381, !3386, !3399, !3405, !3414, !3434, !3439}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3378, file: !3379, line: 37, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 34, size: 64, elements: !3383)
!3383 = !{!3384, !3385}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3382, file: !3379, line: 35, baseType: !2737, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3382, file: !3379, line: 36, baseType: !751, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3378, file: !3379, line: 45, baseType: !3387, size: 192)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 40, size: 192, elements: !3388)
!3388 = !{!3389, !3391, !3392, !3398}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3387, file: !3379, line: 41, baseType: !3390, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !628, line: 95, baseType: !397)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3387, file: !3379, line: 42, baseType: !397, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3387, file: !3379, line: 43, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3379, line: 11, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3379, line: 8, size: 64, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3394, file: !3379, line: 9, baseType: !397, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3394, file: !3379, line: 10, baseType: !290, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3387, file: !3379, line: 44, baseType: !397, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3378, file: !3379, line: 52, baseType: !3400, size: 128)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 48, size: 128, elements: !3401)
!3401 = !{!3402, !3403, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3400, file: !3379, line: 49, baseType: !2737, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3400, file: !3379, line: 50, baseType: !751, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3400, file: !3379, line: 51, baseType: !3393, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3378, file: !3379, line: 61, baseType: !3406, size: 256)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 55, size: 256, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3413}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3406, file: !3379, line: 56, baseType: !2737, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3406, file: !3379, line: 57, baseType: !751, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3406, file: !3379, line: 58, baseType: !397, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3406, file: !3379, line: 59, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !628, line: 94, baseType: !629)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3406, file: !3379, line: 60, baseType: !3412, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3378, file: !3379, line: 95, baseType: !3415, size: 256)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 64, size: 256, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3415, file: !3379, line: 65, baseType: !290, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !3379, line: 77, baseType: !3419, size: 192, offset: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3415, file: !3379, line: 77, size: 192, elements: !3420)
!3420 = !{!3421, !3422, !3429}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3419, file: !3379, line: 82, baseType: !1286, size: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3419, file: !3379, line: 88, baseType: !3423, size: 192)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !3379, line: 84, size: 192, elements: !3424)
!3424 = !{!3425, !3427, !3428}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3423, file: !3379, line: 85, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !2610)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3423, file: !3379, line: 86, baseType: !290, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3423, file: !3379, line: 87, baseType: !290, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3419, file: !3379, line: 93, baseType: !3430, size: 96)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !3379, line: 90, size: 96, elements: !3431)
!3431 = !{!3432, !3433}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3430, file: !3379, line: 91, baseType: !3426, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3430, file: !3379, line: 92, baseType: !330, size: 32, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3378, file: !3379, line: 101, baseType: !3435, size: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 98, size: 128, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3435, file: !3379, line: 99, baseType: !291, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3435, file: !3379, line: 100, baseType: !397, size: 32, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3378, file: !3379, line: 108, baseType: !3440, size: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 104, size: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3440, file: !3379, line: 105, baseType: !290, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3440, file: !3379, line: 106, baseType: !397, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3440, file: !3379, line: 107, baseType: !5, size: 32, offset: 96)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2502, file: !2503, line: 1067, baseType: !3267, offset: 11136)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2502, file: !2503, line: 1099, baseType: !3447, size: 64, offset: 11136)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2503, line: 56, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2502, file: !2503, line: 1103, baseType: !313, size: 128, offset: 11200)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2502, file: !2503, line: 1104, baseType: !3451, size: 64, offset: 11328)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2503, line: 46, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2502, file: !2503, line: 1105, baseType: !1046, size: 192, offset: 11392)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2502, file: !2503, line: 1106, baseType: !5, size: 32, offset: 11584)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2502, file: !2503, line: 1109, baseType: !3456, size: 128, offset: 11648)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3457, size: 128, elements: !1689)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2503, line: 51, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2502, file: !2503, line: 1110, baseType: !1046, size: 192, offset: 11776)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2502, file: !2503, line: 1111, baseType: !313, size: 128, offset: 11968)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2502, file: !2503, line: 1173, baseType: !3462, size: 64, offset: 12096)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3464, line: 62, size: 256, align: 256, elements: !3465)
!3464 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3465 = !{!3466, !3467, !3468, !3473}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3463, file: !3464, line: 75, baseType: !330, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3463, file: !3464, line: 90, baseType: !330, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3463, file: !3464, line: 124, baseType: !3469, size: 64, offset: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3464, line: 109, size: 64, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3469, file: !3464, line: 110, baseType: !344, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3469, file: !3464, line: 112, baseType: !344, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !3464, line: 144, baseType: !330, size: 32, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2502, file: !2503, line: 1174, baseType: !329, size: 32, offset: 12160)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2502, file: !2503, line: 1179, baseType: !289, size: 64, offset: 12224)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2502, file: !2503, line: 1182, baseType: !3477, size: 128, offset: 12288)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2445, line: 76, size: 128, elements: !3478)
!3478 = !{!3479, !3484, !3485}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3477, file: !2445, line: 85, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3481, line: 7, size: 64, elements: !3482)
!3481 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3482 = !{!3483}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3480, file: !3481, line: 12, baseType: !2645, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3477, file: !2445, line: 88, baseType: !455, size: 8, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3477, file: !2445, line: 95, baseType: !455, size: 8, offset: 72)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 1184, baseType: !3487, size: 128, offset: 12416)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 1184, size: 128, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3487, file: !2503, line: 1185, baseType: !1712, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3487, file: !2503, line: 1186, baseType: !683, size: 128, align: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2502, file: !2503, line: 1190, baseType: !3492, size: 64, offset: 12544)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2503, line: 53, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2502, file: !2503, line: 1192, baseType: !3495, size: 128, offset: 12608)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2445, line: 64, size: 128, elements: !3496)
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3495, file: !2445, line: 65, baseType: !1086, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3495, file: !2445, line: 67, baseType: !330, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3495, file: !2445, line: 68, baseType: !330, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2502, file: !2503, line: 1206, baseType: !397, size: 32, offset: 12736)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2502, file: !2503, line: 1207, baseType: !397, size: 32, offset: 12768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2502, file: !2503, line: 1209, baseType: !289, size: 64, offset: 12800)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2502, file: !2503, line: 1219, baseType: !343, size: 64, offset: 12864)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2502, file: !2503, line: 1220, baseType: !343, size: 64, offset: 12928)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2502, file: !2503, line: 1317, baseType: !397, size: 32, offset: 12992)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2502, file: !2503, line: 1319, baseType: !2501, size: 64, offset: 13056)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2502, file: !2503, line: 1322, baseType: !3508, size: 64, offset: 13120)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3510, line: 56, size: 512, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3520}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3509, file: !3510, line: 57, baseType: !3508, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3509, file: !3510, line: 58, baseType: !290, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3509, file: !3510, line: 59, baseType: !289, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3509, file: !3510, line: 60, baseType: !289, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3509, file: !3510, line: 61, baseType: !1184, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3509, file: !3510, line: 62, baseType: !5, size: 32, offset: 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3509, file: !3510, line: 63, baseType: !3519, size: 64, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !303, line: 153, baseType: !343)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3509, file: !3510, line: 64, baseType: !3521, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2502, file: !2503, line: 1326, baseType: !1712, size: 32, offset: 13184)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2502, file: !2503, line: 1342, baseType: !290, size: 64, offset: 13248)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2502, file: !2503, line: 1343, baseType: !344, size: 64, offset: 13312)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2502, file: !2503, line: 1344, baseType: !343, size: 64, offset: 13376)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2502, file: !2503, line: 1345, baseType: !344, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2502, file: !2503, line: 1346, baseType: !344, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2502, file: !2503, line: 1347, baseType: !344, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2502, file: !2503, line: 1348, baseType: !683, size: 128, align: 64, offset: 13504)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2502, file: !2503, line: 1358, baseType: !3532, size: 34816, offset: 13824)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3533, line: 485, size: 34816, elements: !3534)
!3533 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3564, !3565, !3566, !3567, !3568, !3569, !3572, !3573, !3574}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3532, file: !3533, line: 487, baseType: !3536, size: 192)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3537, size: 192, elements: !596)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3538, line: 16, size: 64, elements: !3539)
!3538 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3537, file: !3538, line: 17, baseType: !1223, size: 16)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3537, file: !3538, line: 18, baseType: !1223, size: 16, offset: 16)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3537, file: !3538, line: 19, baseType: !1223, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3537, file: !3538, line: 19, baseType: !1223, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3537, file: !3538, line: 19, baseType: !1223, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3537, file: !3538, line: 19, baseType: !1223, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3537, file: !3538, line: 19, baseType: !1223, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3537, file: !3538, line: 20, baseType: !1223, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3532, file: !3533, line: 491, baseType: !289, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3532, file: !3533, line: 495, baseType: !410, size: 16, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3532, file: !3533, line: 496, baseType: !410, size: 16, offset: 272)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3532, file: !3533, line: 497, baseType: !410, size: 16, offset: 288)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3532, file: !3533, line: 498, baseType: !410, size: 16, offset: 304)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3532, file: !3533, line: 502, baseType: !289, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3532, file: !3533, line: 503, baseType: !289, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3532, file: !3533, line: 514, baseType: !3561, size: 256, offset: 448)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3562, size: 256, elements: !1597)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3533, line: 483, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3532, file: !3533, line: 516, baseType: !289, size: 64, offset: 704)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3532, file: !3533, line: 518, baseType: !289, size: 64, offset: 768)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3532, file: !3533, line: 520, baseType: !289, size: 64, offset: 832)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3532, file: !3533, line: 521, baseType: !289, size: 64, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3532, file: !3533, line: 522, baseType: !289, size: 64, offset: 960)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3532, file: !3533, line: 528, baseType: !3570, size: 64, offset: 1024)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3533, line: 10, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3532, file: !3533, line: 535, baseType: !289, size: 64, offset: 1088)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3532, file: !3533, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3532, file: !3533, line: 540, baseType: !3575, size: 33280, offset: 1536)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3576, line: 317, size: 33280, elements: !3577)
!3576 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3577 = !{!3578, !3579, !3580}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3575, file: !3576, line: 330, baseType: !5, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3575, file: !3576, line: 337, baseType: !289, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3575, file: !3576, line: 348, baseType: !3581, size: 32768, offset: 512)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3576, line: 304, size: 32768, elements: !3582)
!3582 = !{!3583, !3596, !3633, !3683, !3696}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3581, file: !3576, line: 305, baseType: !3584, size: 896)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3576, line: 12, size: 896, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3595}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3584, file: !3576, line: 13, baseType: !329, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3584, file: !3576, line: 14, baseType: !329, size: 32, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3584, file: !3576, line: 15, baseType: !329, size: 32, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3584, file: !3576, line: 16, baseType: !329, size: 32, offset: 96)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3584, file: !3576, line: 17, baseType: !329, size: 32, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3584, file: !3576, line: 18, baseType: !329, size: 32, offset: 160)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3584, file: !3576, line: 19, baseType: !329, size: 32, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3584, file: !3576, line: 22, baseType: !3594, size: 640, offset: 224)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 640, elements: !504)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3584, file: !3576, line: 25, baseType: !329, size: 32, offset: 864)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3581, file: !3576, line: 306, baseType: !3597, size: 4096, align: 128)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3576, line: 34, size: 4096, align: 128, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3618, !3619, !3620, !3622, !3624, !3628}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3597, file: !3576, line: 35, baseType: !1223, size: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3597, file: !3576, line: 36, baseType: !1223, size: 16, offset: 16)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3597, file: !3576, line: 37, baseType: !1223, size: 16, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3597, file: !3576, line: 38, baseType: !1223, size: 16, offset: 48)
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3597, file: !3576, line: 39, baseType: !3604, size: 128, offset: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3597, file: !3576, line: 39, size: 128, elements: !3605)
!3605 = !{!3606, !3611}
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !3576, line: 40, baseType: !3607, size: 128)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3604, file: !3576, line: 40, size: 128, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3607, file: !3576, line: 41, baseType: !343, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3607, file: !3576, line: 42, baseType: !343, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !3576, line: 44, baseType: !3612, size: 128)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3604, file: !3576, line: 44, size: 128, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3612, file: !3576, line: 45, baseType: !329, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3612, file: !3576, line: 46, baseType: !329, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3612, file: !3576, line: 47, baseType: !329, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3612, file: !3576, line: 48, baseType: !329, size: 32, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3597, file: !3576, line: 51, baseType: !329, size: 32, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3597, file: !3576, line: 52, baseType: !329, size: 32, offset: 224)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3597, file: !3576, line: 55, baseType: !3621, size: 1024, offset: 256)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 1024, elements: !1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3597, file: !3576, line: 58, baseType: !3623, size: 2048, offset: 1280)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 2048, elements: !600)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3597, file: !3576, line: 60, baseType: !3625, size: 384, offset: 3328)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 384, elements: !3626)
!3626 = !{!3627}
!3627 = !DISubrange(count: 12)
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3597, file: !3576, line: 62, baseType: !3629, size: 384, offset: 3712)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3597, file: !3576, line: 62, size: 384, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3629, file: !3576, line: 63, baseType: !3625, size: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3629, file: !3576, line: 64, baseType: !3625, size: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3581, file: !3576, line: 307, baseType: !3634, size: 1088)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3576, line: 79, size: 1088, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3682}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3634, file: !3576, line: 80, baseType: !329, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3634, file: !3576, line: 81, baseType: !329, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3634, file: !3576, line: 82, baseType: !329, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3634, file: !3576, line: 83, baseType: !329, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3634, file: !3576, line: 84, baseType: !329, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3634, file: !3576, line: 85, baseType: !329, size: 32, offset: 160)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3634, file: !3576, line: 86, baseType: !329, size: 32, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3634, file: !3576, line: 88, baseType: !3594, size: 640, offset: 224)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3634, file: !3576, line: 89, baseType: !338, size: 8, offset: 864)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3634, file: !3576, line: 90, baseType: !338, size: 8, offset: 872)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3634, file: !3576, line: 91, baseType: !338, size: 8, offset: 880)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3634, file: !3576, line: 92, baseType: !338, size: 8, offset: 888)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3634, file: !3576, line: 93, baseType: !338, size: 8, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3634, file: !3576, line: 94, baseType: !338, size: 8, offset: 904)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3634, file: !3576, line: 95, baseType: !3651, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3653, line: 11, size: 128, elements: !3654)
!3653 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3652, file: !3653, line: 12, baseType: !291, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3652, file: !3653, line: 13, baseType: !3657, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3659, line: 56, size: 1344, elements: !3660)
!3659 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3658, file: !3659, line: 61, baseType: !289, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3658, file: !3659, line: 62, baseType: !289, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3658, file: !3659, line: 63, baseType: !289, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3658, file: !3659, line: 64, baseType: !289, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3658, file: !3659, line: 65, baseType: !289, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3658, file: !3659, line: 66, baseType: !289, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3658, file: !3659, line: 68, baseType: !289, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3658, file: !3659, line: 69, baseType: !289, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3658, file: !3659, line: 70, baseType: !289, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3658, file: !3659, line: 71, baseType: !289, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3658, file: !3659, line: 72, baseType: !289, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3658, file: !3659, line: 73, baseType: !289, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3658, file: !3659, line: 74, baseType: !289, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3658, file: !3659, line: 75, baseType: !289, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3658, file: !3659, line: 76, baseType: !289, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3658, file: !3659, line: 81, baseType: !289, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3658, file: !3659, line: 83, baseType: !289, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3658, file: !3659, line: 84, baseType: !289, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !3659, line: 85, baseType: !289, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3658, file: !3659, line: 86, baseType: !289, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3658, file: !3659, line: 87, baseType: !289, size: 64, offset: 1280)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3634, file: !3576, line: 96, baseType: !329, size: 32, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3581, file: !3576, line: 308, baseType: !3684, size: 4608, align: 512)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3576, line: 289, size: 4608, align: 512, elements: !3685)
!3685 = !{!3686, !3687, !3694}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3684, file: !3576, line: 290, baseType: !3597, size: 4096, align: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3684, file: !3576, line: 291, baseType: !3688, size: 512, offset: 4096)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3576, line: 268, size: 512, elements: !3689)
!3689 = !{!3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3688, file: !3576, line: 269, baseType: !343, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3688, file: !3576, line: 270, baseType: !343, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3688, file: !3576, line: 271, baseType: !3693, size: 384, offset: 128)
!3693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, elements: !2884)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3684, file: !3576, line: 292, baseType: !3695, offset: 4608)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, elements: !3122)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3581, file: !3576, line: 309, baseType: !3697, size: 32768)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 32768, elements: !3698)
!3698 = !{!3699}
!3699 = !DISubrange(count: 4096)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2498, file: !1088, line: 378, baseType: !3701, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2494, file: !1088, line: 384, baseType: !524, size: 192, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2272, file: !1088, line: 500, baseType: !544, offset: 6656)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2272, file: !1088, line: 501, baseType: !3705, size: 64, offset: 6656)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1088, line: 387, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2272, file: !1088, line: 516, baseType: !2972, size: 64, offset: 6720)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2272, file: !1088, line: 519, baseType: !670, size: 64, offset: 6784)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2272, file: !1088, line: 521, baseType: !3710, size: 64, offset: 6848)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1088, line: 521, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2272, file: !1088, line: 545, baseType: !1112, size: 32, offset: 6912)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2272, file: !1088, line: 548, baseType: !455, size: 8, offset: 6944)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2272, file: !1088, line: 550, baseType: !3715, offset: 6952)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3716, line: 142, elements: !541)
!3716 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2272, file: !1088, line: 554, baseType: !296, size: 256, offset: 6976)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2272, file: !1088, line: 557, baseType: !329, size: 32, offset: 7232)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2269, file: !1088, line: 565, baseType: !3720, offset: 7296)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, elements: !1421)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2265, file: !1088, line: 151, baseType: !1112, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2257, file: !1088, line: 156, baseType: !544, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1088, line: 159, baseType: !3724, size: 128)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !1088, line: 159, size: 128, elements: !3725)
!3725 = !{!3726, !3770}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3724, file: !1088, line: 161, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !71, line: 110, size: 1152, elements: !3729)
!3729 = !{!3730, !3740, !3741, !3742, !3743, !3744, !3745, !3757, !3758, !3759}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3728, file: !71, line: 111, baseType: !3731, size: 384)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !71, line: 19, size: 384, elements: !3732)
!3732 = !{!3733, !3735, !3736, !3737, !3738, !3739}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3731, file: !71, line: 20, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3731, file: !71, line: 21, baseType: !3734, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3731, file: !71, line: 22, baseType: !3734, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3731, file: !71, line: 23, baseType: !289, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3731, file: !71, line: 24, baseType: !289, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3731, file: !71, line: 25, baseType: !289, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3728, file: !71, line: 112, baseType: !1369, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3728, file: !71, line: 113, baseType: !1355, size: 128, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3728, file: !71, line: 114, baseType: !524, size: 192, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3728, file: !71, line: 115, baseType: !70, size: 32, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3728, file: !71, line: 116, baseType: !5, size: 32, offset: 800)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3728, file: !71, line: 117, baseType: !3746, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !71, line: 67, size: 256, elements: !3749)
!3749 = !{!3750, !3751, !3755, !3756}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3748, file: !71, line: 73, baseType: !1204, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3748, file: !71, line: 78, baseType: !3752, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3727}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3748, file: !71, line: 83, baseType: !3752, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3748, file: !71, line: 89, baseType: !2321, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3728, file: !71, line: 118, baseType: !290, size: 64, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3728, file: !71, line: 119, baseType: !397, size: 32, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !71, line: 120, baseType: !3760, size: 128, offset: 1024)
!3760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3728, file: !71, line: 120, size: 128, elements: !3761)
!3761 = !{!3762, !3768}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3760, file: !71, line: 121, baseType: !3763, size: 128)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3764, line: 6, size: 128, elements: !3765)
!3764 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3763, file: !3764, line: 7, baseType: !343, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3763, file: !3764, line: 8, baseType: !343, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3760, file: !71, line: 122, baseType: !3769)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3763, elements: !3122)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3724, file: !1088, line: 162, baseType: !290, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1092, file: !1088, line: 176, baseType: !683, size: 128, align: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1088, line: 179, baseType: !3773, size: 32, offset: 384)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1088, line: 179, size: 32, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3773, file: !1088, line: 184, baseType: !1112, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3773, file: !1088, line: 192, baseType: !5, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3773, file: !1088, line: 194, baseType: !5, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3773, file: !1088, line: 195, baseType: !397, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1087, file: !1088, line: 199, baseType: !1112, size: 32, offset: 416)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !966, file: !84, line: 1964, baseType: !3781, size: 64, offset: 1344)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!291, !905, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3786, line: 12, size: 256, elements: !3787)
!3786 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3787 = !{!3788, !3789, !3790, !3791, !3792}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3785, file: !3786, line: 13, baseType: !427, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3785, file: !3786, line: 16, baseType: !397, size: 32, offset: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3785, file: !3786, line: 23, baseType: !289, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3785, file: !3786, line: 30, baseType: !289, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3785, file: !3786, line: 33, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1088, line: 27, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !966, file: !84, line: 1966, baseType: !3781, size: 64, offset: 1408)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !906, file: !84, line: 1424, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3799)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !78, line: 322, size: 704, elements: !3800)
!3800 = !{!3801, !3847, !3851, !3855, !3856, !3857, !3858, !3859, !3864, !3869, !3873}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3799, file: !78, line: 323, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!397, !3805}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !78, line: 294, size: 1600, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3832, !3833, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3806, file: !78, line: 295, baseType: !948, size: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3806, file: !78, line: 296, baseType: !313, size: 128, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3806, file: !78, line: 297, baseType: !313, size: 128, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3806, file: !78, line: 298, baseType: !313, size: 128, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3806, file: !78, line: 299, baseType: !1046, size: 192, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3806, file: !78, line: 300, baseType: !544, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3806, file: !78, line: 301, baseType: !1112, size: 32, offset: 704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3806, file: !78, line: 302, baseType: !905, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3806, file: !78, line: 303, baseType: !3817, size: 64, offset: 832)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !78, line: 68, size: 64, elements: !3818)
!3818 = !{!3819, !3831}
!3819 = !DIDerivedType(tag: DW_TAG_member, scope: !3817, file: !78, line: 69, baseType: !3820, size: 32)
!3820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3817, file: !78, line: 69, size: 32, elements: !3821)
!3821 = !{!3822, !3823, !3824}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3820, file: !78, line: 70, baseType: !745, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3820, file: !78, line: 71, baseType: !753, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3820, file: !78, line: 72, baseType: !3825, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3826, line: 24, baseType: !3827)
!3826 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3826, line: 22, size: 32, elements: !3828)
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3827, file: !3826, line: 23, baseType: !3830, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3826, line: 20, baseType: !751)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3817, file: !78, line: 74, baseType: !77, size: 32, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3806, file: !78, line: 304, baseType: !839, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3806, file: !78, line: 305, baseType: !289, size: 64, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3806, file: !78, line: 306, baseType: !3835, size: 576, offset: 1024)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !78, line: 205, size: 576, elements: !3836)
!3836 = !{!3837, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3835, file: !78, line: 206, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !78, line: 66, baseType: !311)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3835, file: !78, line: 207, baseType: !3838, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3835, file: !78, line: 208, baseType: !3838, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3835, file: !78, line: 209, baseType: !3838, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3835, file: !78, line: 210, baseType: !3838, size: 64, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3835, file: !78, line: 211, baseType: !3838, size: 64, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3835, file: !78, line: 212, baseType: !3838, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3835, file: !78, line: 213, baseType: !846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3835, file: !78, line: 214, baseType: !846, size: 64, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3799, file: !78, line: 324, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3805, !905, !397}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3799, file: !78, line: 325, baseType: !3852, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3805}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3799, file: !78, line: 326, baseType: !3802, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3799, file: !78, line: 327, baseType: !3802, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3799, file: !78, line: 328, baseType: !3802, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3799, file: !78, line: 329, baseType: !1008, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3799, file: !78, line: 332, baseType: !3860, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!3863, !739}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3799, file: !78, line: 333, baseType: !3865, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!397, !739, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3799, file: !78, line: 335, baseType: !3870, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!397, !739, !3863}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3799, file: !78, line: 337, baseType: !3874, size: 64, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!397, !905, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !906, file: !84, line: 1425, baseType: !3879, size: 64, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !78, line: 428, size: 704, elements: !3882)
!3882 = !{!3883, !3887, !3888, !3892, !3893, !3894, !3909, !3932, !3936, !3937, !3960}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3881, file: !78, line: 429, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!397, !905, !397, !397, !855}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3881, file: !78, line: 430, baseType: !1008, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3881, file: !78, line: 431, baseType: !3889, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!397, !905, !5}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3881, file: !78, line: 432, baseType: !3889, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3881, file: !78, line: 433, baseType: !1008, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3881, file: !78, line: 434, baseType: !3895, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!397, !905, !397, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !78, line: 415, size: 256, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3899, file: !78, line: 416, baseType: !397, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3899, file: !78, line: 417, baseType: !5, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3899, file: !78, line: 418, baseType: !5, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3899, file: !78, line: 420, baseType: !5, size: 32, offset: 96)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3899, file: !78, line: 421, baseType: !5, size: 32, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3899, file: !78, line: 422, baseType: !5, size: 32, offset: 160)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3899, file: !78, line: 423, baseType: !5, size: 32, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3899, file: !78, line: 424, baseType: !5, size: 32, offset: 224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3881, file: !78, line: 435, baseType: !3910, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!397, !905, !3817, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !78, line: 343, size: 960, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3914, file: !78, line: 344, baseType: !397, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3914, file: !78, line: 345, baseType: !343, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3914, file: !78, line: 346, baseType: !343, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3914, file: !78, line: 347, baseType: !343, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3914, file: !78, line: 348, baseType: !343, size: 64, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3914, file: !78, line: 349, baseType: !343, size: 64, offset: 320)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3914, file: !78, line: 350, baseType: !343, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3914, file: !78, line: 351, baseType: !307, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3914, file: !78, line: 353, baseType: !307, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3914, file: !78, line: 354, baseType: !397, size: 32, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3914, file: !78, line: 355, baseType: !397, size: 32, offset: 608)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3914, file: !78, line: 356, baseType: !343, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3914, file: !78, line: 357, baseType: !343, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3914, file: !78, line: 358, baseType: !343, size: 64, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3914, file: !78, line: 359, baseType: !307, size: 64, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3914, file: !78, line: 360, baseType: !397, size: 32, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3881, file: !78, line: 436, baseType: !3933, size: 64, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!397, !905, !3877, !3913}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3881, file: !78, line: 438, baseType: !3910, size: 64, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3881, file: !78, line: 439, baseType: !3938, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!397, !905, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !78, line: 409, size: 1408, elements: !3943)
!3943 = !{!3944, !3945}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3942, file: !78, line: 410, baseType: !5, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3942, file: !78, line: 411, baseType: !3946, size: 1344, offset: 64)
!3946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3947, size: 1344, elements: !596)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !78, line: 395, size: 448, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3959}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3947, file: !78, line: 396, baseType: !5, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3947, file: !78, line: 397, baseType: !5, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3947, file: !78, line: 399, baseType: !5, size: 32, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3947, file: !78, line: 400, baseType: !5, size: 32, offset: 96)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3947, file: !78, line: 401, baseType: !5, size: 32, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3947, file: !78, line: 402, baseType: !5, size: 32, offset: 160)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3947, file: !78, line: 403, baseType: !5, size: 32, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3947, file: !78, line: 404, baseType: !345, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3947, file: !78, line: 405, baseType: !3958, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !303, line: 126, baseType: !343)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3947, file: !78, line: 406, baseType: !3958, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3881, file: !78, line: 440, baseType: !3889, size: 64, offset: 640)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !906, file: !84, line: 1426, baseType: !3962, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !84, line: 49, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !906, file: !84, line: 1427, baseType: !289, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !906, file: !84, line: 1428, baseType: !289, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !906, file: !84, line: 1429, baseType: !289, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !906, file: !84, line: 1430, baseType: !700, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !906, file: !84, line: 1431, baseType: !1132, size: 256, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !906, file: !84, line: 1432, baseType: !397, size: 32, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !906, file: !84, line: 1433, baseType: !1112, size: 32, offset: 1184)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !906, file: !84, line: 1437, baseType: !3973, size: 64, offset: 1216)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3976)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !84, line: 1437, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !906, file: !84, line: 1449, baseType: !3978, size: 64, offset: 1280)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !716, line: 34, size: 64, elements: !3979)
!3979 = !{!3980}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3978, file: !716, line: 35, baseType: !719, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !906, file: !84, line: 1450, baseType: !313, size: 128, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !906, file: !84, line: 1451, baseType: !1327, size: 64, offset: 1472)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !906, file: !84, line: 1452, baseType: !1893, size: 64, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !906, file: !84, line: 1453, baseType: !3985, size: 64, offset: 1600)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !84, line: 1453, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !906, file: !84, line: 1454, baseType: !948, size: 128, offset: 1664)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !906, file: !84, line: 1455, baseType: !5, size: 32, offset: 1792)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !906, file: !84, line: 1456, baseType: !3990, size: 2432, offset: 1856)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !78, line: 518, size: 2432, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3996, !4028}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3990, file: !78, line: 519, baseType: !5, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3990, file: !78, line: 520, baseType: !1132, size: 256, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3990, file: !78, line: 521, baseType: !3995, size: 192, offset: 320)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 192, elements: !596)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3990, file: !78, line: 522, baseType: !3997, size: 1728, offset: 512)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3998, size: 1728, elements: !596)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !78, line: 222, size: 576, elements: !3999)
!3999 = !{!4000, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3998, file: !78, line: 223, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !78, line: 443, size: 256, elements: !4003)
!4003 = !{!4004, !4005, !4018, !4019}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4002, file: !78, line: 444, baseType: !397, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4002, file: !78, line: 445, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !78, line: 310, size: 512, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4008, file: !78, line: 311, baseType: !1008, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4008, file: !78, line: 312, baseType: !1008, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4008, file: !78, line: 313, baseType: !1008, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4008, file: !78, line: 314, baseType: !1008, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4008, file: !78, line: 315, baseType: !3802, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4008, file: !78, line: 316, baseType: !3802, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4008, file: !78, line: 317, baseType: !3802, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4008, file: !78, line: 318, baseType: !3874, size: 64, offset: 448)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4002, file: !78, line: 446, baseType: !939, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4002, file: !78, line: 447, baseType: !4001, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3998, file: !78, line: 224, baseType: !397, size: 32, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3998, file: !78, line: 226, baseType: !313, size: 128, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3998, file: !78, line: 227, baseType: !289, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3998, file: !78, line: 228, baseType: !5, size: 32, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3998, file: !78, line: 229, baseType: !5, size: 32, offset: 352)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3998, file: !78, line: 230, baseType: !3838, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3998, file: !78, line: 231, baseType: !3838, size: 64, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3998, file: !78, line: 232, baseType: !290, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3990, file: !78, line: 523, baseType: !4029, size: 192, offset: 2240)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4006, size: 192, elements: !596)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !906, file: !84, line: 1458, baseType: !4031, size: 2112, offset: 4288)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !84, line: 1410, size: 2112, elements: !4032)
!4032 = !{!4033, !4034, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4031, file: !84, line: 1411, baseType: !397, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !4031, file: !84, line: 1412, baseType: !1519, size: 128, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4031, file: !84, line: 1413, baseType: !4036, size: 1920, offset: 192)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4037, size: 1920, elements: !596)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4038, line: 12, size: 640, elements: !4039)
!4038 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!4039 = !{!4040, !4048, !4049, !4054, !4055}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4037, file: !4038, line: 13, baseType: !4041, size: 320)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4042, line: 17, size: 320, elements: !4043)
!4042 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!4043 = !{!4044, !4045, !4046, !4047}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4041, file: !4042, line: 18, baseType: !397, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4041, file: !4042, line: 19, baseType: !397, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4041, file: !4042, line: 20, baseType: !1519, size: 128, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4041, file: !4042, line: 22, baseType: !683, size: 128, align: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4037, file: !4038, line: 14, baseType: !1318, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4037, file: !4038, line: 15, baseType: !4050, size: 64, offset: 384)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4051, line: 16, size: 64, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!4052 = !{!4053}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4050, file: !4051, line: 17, baseType: !2501, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4037, file: !4038, line: 16, baseType: !1519, size: 128, offset: 448)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4037, file: !4038, line: 17, baseType: !1112, size: 32, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !906, file: !84, line: 1465, baseType: !290, size: 64, offset: 6400)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !906, file: !84, line: 1468, baseType: !329, size: 32, offset: 6464)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !906, file: !84, line: 1470, baseType: !846, size: 64, offset: 6528)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !906, file: !84, line: 1471, baseType: !846, size: 64, offset: 6592)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !906, file: !84, line: 1473, baseType: !330, size: 32, offset: 6656)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !906, file: !84, line: 1474, baseType: !4062, size: 64, offset: 6720)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !84, line: 603, flags: DIFlagFwdDecl)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !906, file: !84, line: 1477, baseType: !1407, size: 256, offset: 6784)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !906, file: !84, line: 1478, baseType: !4066, size: 128, offset: 7040)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4067, line: 18, baseType: !4068)
!4067 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4067, line: 16, size: 128, elements: !4069)
!4069 = !{!4070}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4068, file: !4067, line: 17, baseType: !4071, size: 128)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !2038)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !906, file: !84, line: 1480, baseType: !5, size: 32, offset: 7168)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !906, file: !84, line: 1481, baseType: !1540, size: 32, offset: 7200)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !906, file: !84, line: 1487, baseType: !1046, size: 192, offset: 7232)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !906, file: !84, line: 1493, baseType: !385, size: 64, offset: 7424)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !906, file: !84, line: 1495, baseType: !4077, size: 64, offset: 7488)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4079)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !698, line: 135, size: 1024, align: 512, elements: !4080)
!4080 = !{!4081, !4085, !4086, !4093, !4099, !4103, !4107, !4111, !4112, !4116, !4120, !4125, !4129}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4079, file: !698, line: 136, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!397, !700, !5}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4079, file: !698, line: 137, baseType: !4082, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4079, file: !698, line: 138, baseType: !4087, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!397, !4090, !4092}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4079, file: !698, line: 139, baseType: !4094, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!397, !4090, !5, !385, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4079, file: !698, line: 141, baseType: !4100, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!397, !4090}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4079, file: !698, line: 142, baseType: !4104, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!397, !700}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4079, file: !698, line: 143, baseType: !4108, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !700}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4079, file: !698, line: 144, baseType: !4108, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4079, file: !698, line: 145, baseType: !4113, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !700, !739}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4079, file: !698, line: 146, baseType: !4117, size: 64, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!595, !700, !595, !397}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4079, file: !698, line: 147, baseType: !4121, size: 64, offset: 640)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!696, !4124}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4079, file: !698, line: 148, baseType: !4126, size: 64, offset: 704)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!397, !855, !455}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4079, file: !698, line: 149, baseType: !4130, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!700, !700, !4133}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !906, file: !84, line: 1500, baseType: !397, size: 32, offset: 7552)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !906, file: !84, line: 1502, baseType: !4137, size: 448, offset: 7616)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3786, line: 60, size: 448, elements: !4138)
!4138 = !{!4139, !4144, !4145, !4146, !4147, !4148, !4149}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4137, file: !3786, line: 61, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!289, !4143, !3784}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4137, file: !3786, line: 63, baseType: !4140, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4137, file: !3786, line: 66, baseType: !291, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4137, file: !3786, line: 67, baseType: !397, size: 32, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4137, file: !3786, line: 68, baseType: !5, size: 32, offset: 224)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4137, file: !3786, line: 71, baseType: !313, size: 128, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4137, file: !3786, line: 77, baseType: !4150, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !906, file: !84, line: 1505, baseType: !300, size: 64, offset: 8064)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !906, file: !84, line: 1508, baseType: !300, size: 64, offset: 8128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !906, file: !84, line: 1511, baseType: !397, size: 32, offset: 8192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !906, file: !84, line: 1514, baseType: !2205, size: 32, offset: 8224)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !906, file: !84, line: 1517, baseType: !1395, size: 64, offset: 8256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !906, file: !84, line: 1518, baseType: !944, size: 64, offset: 8320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !906, file: !84, line: 1525, baseType: !2972, size: 64, offset: 8384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !906, file: !84, line: 1532, baseType: !4159, size: 64, offset: 8448)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4160, line: 52, size: 64, elements: !4161)
!4160 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4161 = !{!4162}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4159, file: !4160, line: 53, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4160, line: 40, size: 256, elements: !4165)
!4165 = !{!4166, !4167, !4172}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4164, file: !4160, line: 42, baseType: !544)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4164, file: !4160, line: 44, baseType: !4168, size: 192)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4160, line: 28, size: 192, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4168, file: !4160, line: 29, baseType: !313, size: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4168, file: !4160, line: 31, baseType: !291, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4164, file: !4160, line: 49, baseType: !291, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !906, file: !84, line: 1533, baseType: !4159, size: 64, offset: 8512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !906, file: !84, line: 1534, baseType: !683, size: 128, align: 64, offset: 8576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !906, file: !84, line: 1535, baseType: !296, size: 256, offset: 8704)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !906, file: !84, line: 1537, baseType: !1046, size: 192, offset: 8960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !906, file: !84, line: 1542, baseType: !397, size: 32, offset: 9152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !906, file: !84, line: 1545, baseType: !544, offset: 9184)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !906, file: !84, line: 1546, baseType: !313, size: 128, offset: 9216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !906, file: !84, line: 1548, baseType: !544, offset: 9344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !906, file: !84, line: 1549, baseType: !313, size: 128, offset: 9344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !740, file: !84, line: 624, baseType: !1099, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !740, file: !84, line: 631, baseType: !289, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !84, line: 639, baseType: !4185, size: 32, offset: 384)
!4185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !84, line: 639, size: 32, elements: !4186)
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4185, file: !84, line: 640, baseType: !1863, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4185, file: !84, line: 641, baseType: !5, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !740, file: !84, line: 643, baseType: !821, size: 32, offset: 416)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !740, file: !84, line: 644, baseType: !839, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !740, file: !84, line: 645, baseType: !842, size: 128, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !740, file: !84, line: 646, baseType: !842, size: 128, offset: 640)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !740, file: !84, line: 647, baseType: !842, size: 128, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !740, file: !84, line: 648, baseType: !544, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !740, file: !84, line: 649, baseType: !410, size: 16, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !740, file: !84, line: 650, baseType: !338, size: 8, offset: 912)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !740, file: !84, line: 651, baseType: !338, size: 8, offset: 920)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !740, file: !84, line: 652, baseType: !3958, size: 64, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !740, file: !84, line: 659, baseType: !289, size: 64, offset: 1024)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !740, file: !84, line: 660, baseType: !1132, size: 256, offset: 1088)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !740, file: !84, line: 662, baseType: !289, size: 64, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !740, file: !84, line: 663, baseType: !289, size: 64, offset: 1408)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !740, file: !84, line: 665, baseType: !948, size: 128, offset: 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !740, file: !84, line: 666, baseType: !313, size: 128, offset: 1600)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !740, file: !84, line: 675, baseType: !313, size: 128, offset: 1728)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !740, file: !84, line: 676, baseType: !313, size: 128, offset: 1856)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !740, file: !84, line: 677, baseType: !313, size: 128, offset: 1984)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !84, line: 678, baseType: !4209, size: 128, offset: 2112)
!4209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !84, line: 678, size: 128, elements: !4210)
!4210 = !{!4211, !4212}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4209, file: !84, line: 679, baseType: !944, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4209, file: !84, line: 680, baseType: !683, size: 128, align: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !740, file: !84, line: 682, baseType: !302, size: 64, offset: 2240)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !740, file: !84, line: 683, baseType: !302, size: 64, offset: 2304)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !740, file: !84, line: 684, baseType: !1112, size: 32, offset: 2368)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !740, file: !84, line: 685, baseType: !1112, size: 32, offset: 2400)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !740, file: !84, line: 686, baseType: !1112, size: 32, offset: 2432)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !740, file: !84, line: 688, baseType: !1112, size: 32, offset: 2464)
!4219 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !84, line: 690, baseType: !4220, size: 64, offset: 2496)
!4220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !84, line: 690, size: 64, elements: !4221)
!4221 = !{!4222, !4443}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4220, file: !84, line: 691, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !84, line: 1822, size: 2048, elements: !4226)
!4226 = !{!4227, !4228, !4232, !4236, !4240, !4241, !4242, !4246, !4259, !4260, !4267, !4271, !4272, !4276, !4277, !4281, !4286, !4287, !4291, !4295, !4403, !4407, !4408, !4412, !4413, !4417, !4421, !4426, !4430, !4434, !4438, !4442}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4225, file: !84, line: 1823, baseType: !939, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4225, file: !84, line: 1824, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!839, !670, !839, !397}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4225, file: !84, line: 1825, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!626, !670, !595, !640, !1061}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4225, file: !84, line: 1826, baseType: !4237, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!626, !670, !385, !640, !1061}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4225, file: !84, line: 1827, baseType: !1208, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4225, file: !84, line: 1828, baseType: !1208, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4225, file: !84, line: 1829, baseType: !4243, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!397, !1211, !455}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4225, file: !84, line: 1830, baseType: !4247, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!397, !670, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !84, line: 1776, size: 128, elements: !4252)
!4252 = !{!4253, !4258}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4251, file: !84, line: 1777, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !84, line: 1773, baseType: !4255)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!397, !4250, !385, !397, !839, !343, !5}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4251, file: !84, line: 1778, baseType: !839, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4225, file: !84, line: 1831, baseType: !4247, size: 64, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4225, file: !84, line: 1832, baseType: !4261, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!4264, !670, !4265}
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !408, line: 52, baseType: !5)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !925, line: 27, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4225, file: !84, line: 1833, baseType: !4268, size: 64, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!291, !670, !5, !289}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4225, file: !84, line: 1834, baseType: !4268, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4225, file: !84, line: 1835, baseType: !4273, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!397, !670, !2275}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4225, file: !84, line: 1836, baseType: !289, size: 64, offset: 832)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4225, file: !84, line: 1837, baseType: !4278, size: 64, offset: 896)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!397, !739, !670}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4225, file: !84, line: 1838, baseType: !4282, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!397, !670, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !84, line: 1007, baseType: !290)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4225, file: !84, line: 1839, baseType: !4278, size: 64, offset: 1024)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4225, file: !84, line: 1840, baseType: !4288, size: 64, offset: 1088)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!397, !670, !839, !839, !397}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4225, file: !84, line: 1841, baseType: !4292, size: 64, offset: 1152)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!397, !397, !670, !397}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4225, file: !84, line: 1842, baseType: !4296, size: 64, offset: 1216)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!397, !670, !397, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !84, line: 1062, size: 1664, elements: !4301)
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4333, !4334, !4335, !4348, !4379}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4300, file: !84, line: 1063, baseType: !4299, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4300, file: !84, line: 1064, baseType: !313, size: 128, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4300, file: !84, line: 1065, baseType: !948, size: 128, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4300, file: !84, line: 1066, baseType: !313, size: 128, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4300, file: !84, line: 1069, baseType: !313, size: 128, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4300, file: !84, line: 1072, baseType: !4285, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4300, file: !84, line: 1073, baseType: !5, size: 32, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4300, file: !84, line: 1074, baseType: !340, size: 8, offset: 672)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4300, file: !84, line: 1075, baseType: !5, size: 32, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4300, file: !84, line: 1076, baseType: !397, size: 32, offset: 736)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4300, file: !84, line: 1077, baseType: !1519, size: 128, offset: 768)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4300, file: !84, line: 1078, baseType: !670, size: 64, offset: 896)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4300, file: !84, line: 1079, baseType: !839, size: 64, offset: 960)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4300, file: !84, line: 1080, baseType: !839, size: 64, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4300, file: !84, line: 1082, baseType: !4317, size: 64, offset: 1088)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !84, line: 1314, size: 320, elements: !4319)
!4319 = !{!4320, !4328, !4329, !4330, !4331, !4332}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4318, file: !84, line: 1315, baseType: !4321)
!4321 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4322, line: 20, baseType: !4323)
!4322 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4322, line: 11, elements: !4324)
!4324 = !{!4325}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4323, file: !4322, line: 12, baseType: !4326)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !539, line: 33, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 31, elements: !541)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4318, file: !84, line: 1316, baseType: !397, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4318, file: !84, line: 1317, baseType: !397, size: 32, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4318, file: !84, line: 1318, baseType: !4317, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4318, file: !84, line: 1319, baseType: !670, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4318, file: !84, line: 1320, baseType: !683, size: 128, align: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4300, file: !84, line: 1084, baseType: !289, size: 64, offset: 1152)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4300, file: !84, line: 1085, baseType: !289, size: 64, offset: 1216)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4300, file: !84, line: 1087, baseType: !4336, size: 64, offset: 1280)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !84, line: 1011, size: 128, elements: !4339)
!4339 = !{!4340, !4344}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4338, file: !84, line: 1012, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{null, !4299, !4299}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4338, file: !84, line: 1013, baseType: !4345, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !4299}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4300, file: !84, line: 1088, baseType: !4349, size: 64, offset: 1344)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !84, line: 1016, size: 512, elements: !4352)
!4352 = !{!4353, !4357, !4361, !4362, !4366, !4370, !4374, !4378}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4351, file: !84, line: 1017, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!4285, !4285}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4351, file: !84, line: 1018, baseType: !4358, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !4285}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4351, file: !84, line: 1019, baseType: !4345, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4351, file: !84, line: 1020, baseType: !4363, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!397, !4299, !397}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4351, file: !84, line: 1021, baseType: !4367, size: 64, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!455, !4299}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4351, file: !84, line: 1022, baseType: !4371, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!397, !4299, !397, !316}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4351, file: !84, line: 1023, baseType: !4375, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4299, !1185}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4351, file: !84, line: 1024, baseType: !4367, size: 64, offset: 448)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4300, file: !84, line: 1097, baseType: !4380, size: 256, offset: 1408)
!4380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4300, file: !84, line: 1089, size: 256, elements: !4381)
!4381 = !{!4382, !4391, !4397}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4380, file: !84, line: 1090, baseType: !4383, size: 256)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4384, line: 10, size: 256, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4385 = !{!4386, !4387, !4390}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4383, file: !4384, line: 11, baseType: !329, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4383, file: !4384, line: 12, baseType: !4388, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4384, line: 5, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4383, file: !4384, line: 13, baseType: !313, size: 128, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4380, file: !84, line: 1091, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4384, line: 17, size: 64, elements: !4393)
!4393 = !{!4394}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4392, file: !4384, line: 18, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4384, line: 16, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4380, file: !84, line: 1096, baseType: !4398, size: 192)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4380, file: !84, line: 1092, size: 192, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4398, file: !84, line: 1093, baseType: !313, size: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4398, file: !84, line: 1094, baseType: !397, size: 32, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4398, file: !84, line: 1095, baseType: !5, size: 32, offset: 160)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4225, file: !84, line: 1843, baseType: !4404, size: 64, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!626, !670, !1086, !397, !640, !1061, !397}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4225, file: !84, line: 1844, baseType: !2395, size: 64, offset: 1344)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4225, file: !84, line: 1845, baseType: !4409, size: 64, offset: 1408)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!397, !397}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4225, file: !84, line: 1846, baseType: !4296, size: 64, offset: 1472)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4225, file: !84, line: 1847, baseType: !4414, size: 64, offset: 1536)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!626, !3492, !670, !1061, !640, !5}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4225, file: !84, line: 1848, baseType: !4418, size: 64, offset: 1600)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!626, !670, !1061, !3492, !640, !5}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4225, file: !84, line: 1849, baseType: !4422, size: 64, offset: 1664)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!397, !670, !291, !4425, !1185}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4225, file: !84, line: 1850, baseType: !4427, size: 64, offset: 1728)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!291, !670, !397, !839, !839}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4225, file: !84, line: 1852, baseType: !4431, size: 64, offset: 1792)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{null, !1034, !670}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4225, file: !84, line: 1856, baseType: !4435, size: 64, offset: 1856)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!626, !670, !839, !670, !839, !640, !5}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4225, file: !84, line: 1858, baseType: !4439, size: 64, offset: 1920)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!839, !670, !839, !670, !839, !839, !5}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4225, file: !84, line: 1861, baseType: !4288, size: 64, offset: 1984)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4220, file: !84, line: 692, baseType: !973, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !740, file: !84, line: 694, baseType: !4445, size: 64, offset: 2560)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !84, line: 1100, size: 384, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4451}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4446, file: !84, line: 1101, baseType: !544)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4446, file: !84, line: 1102, baseType: !313, size: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4446, file: !84, line: 1103, baseType: !313, size: 128, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4446, file: !84, line: 1104, baseType: !313, size: 128, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !740, file: !84, line: 695, baseType: !1100, size: 1216, align: 64, offset: 2624)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !740, file: !84, line: 696, baseType: !313, size: 128, offset: 3840)
!4454 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !84, line: 697, baseType: !4455, size: 64, offset: 3968)
!4455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !84, line: 697, size: 64, elements: !4456)
!4456 = !{!4457, !4458, !4459, !4462, !4463}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4455, file: !84, line: 698, baseType: !3492, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4455, file: !84, line: 699, baseType: !1327, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4455, file: !84, line: 700, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !84, line: 700, flags: DIFlagFwdDecl)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4455, file: !84, line: 701, baseType: !595, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4455, file: !84, line: 702, baseType: !5, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !740, file: !84, line: 705, baseType: !330, size: 32, offset: 4032)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !740, file: !84, line: 708, baseType: !330, size: 32, offset: 4064)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !740, file: !84, line: 709, baseType: !4062, size: 64, offset: 4096)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !740, file: !84, line: 720, baseType: !290, size: 64, offset: 4160)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !701, file: !698, line: 98, baseType: !4469, size: 256, offset: 448)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !1408)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !701, file: !698, line: 101, baseType: !4471, size: 32, offset: 704)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4472, line: 25, size: 32, elements: !4473)
!4472 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4473 = !{!4474}
!4474 = !DIDerivedType(tag: DW_TAG_member, scope: !4471, file: !4472, line: 26, baseType: !4475, size: 32)
!4475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4471, file: !4472, line: 26, size: 32, elements: !4476)
!4476 = !{!4477}
!4477 = !DIDerivedType(tag: DW_TAG_member, scope: !4475, file: !4472, line: 30, baseType: !4478, size: 32)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4475, file: !4472, line: 30, size: 32, elements: !4479)
!4479 = !{!4480, !4481}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4478, file: !4472, line: 31, baseType: !544)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4478, file: !4472, line: 32, baseType: !397, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !701, file: !698, line: 102, baseType: !4077, size: 64, offset: 768)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !701, file: !698, line: 103, baseType: !905, size: 64, offset: 832)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !701, file: !698, line: 104, baseType: !289, size: 64, offset: 896)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !701, file: !698, line: 105, baseType: !290, size: 64, offset: 960)
!4486 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !698, line: 107, baseType: !4487, size: 128, offset: 1024)
!4487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !698, line: 107, size: 128, elements: !4488)
!4488 = !{!4489, !4490}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4487, file: !698, line: 108, baseType: !313, size: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4487, file: !698, line: 109, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !701, file: !698, line: 111, baseType: !313, size: 128, offset: 1152)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !701, file: !698, line: 112, baseType: !313, size: 128, offset: 1280)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !701, file: !698, line: 120, baseType: !4495, size: 128, offset: 1408)
!4495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !698, line: 116, size: 128, elements: !4496)
!4496 = !{!4497, !4498, !4499}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4495, file: !698, line: 117, baseType: !948, size: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4495, file: !698, line: 118, baseType: !715, size: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4495, file: !698, line: 119, baseType: !683, size: 128, align: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !671, file: !84, line: 922, baseType: !739, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !671, file: !84, line: 923, baseType: !4223, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !671, file: !84, line: 929, baseType: !544, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !671, file: !84, line: 930, baseType: !83, size: 32, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !671, file: !84, line: 931, baseType: !300, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !671, file: !84, line: 932, baseType: !5, size: 32, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !671, file: !84, line: 933, baseType: !1540, size: 32, offset: 544)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !671, file: !84, line: 934, baseType: !1046, size: 192, offset: 576)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !671, file: !84, line: 935, baseType: !839, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !671, file: !84, line: 936, baseType: !4510, size: 192, offset: 832)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !84, line: 885, size: 192, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4516, !4517}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4510, file: !84, line: 886, baseType: !4321)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4510, file: !84, line: 887, baseType: !2748, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4510, file: !84, line: 888, baseType: !92, size: 32, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4510, file: !84, line: 889, baseType: !745, size: 32, offset: 96)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4510, file: !84, line: 889, baseType: !745, size: 32, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4510, file: !84, line: 890, baseType: !397, size: 32, offset: 160)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !671, file: !84, line: 937, baseType: !2808, size: 64, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !671, file: !84, line: 938, baseType: !4520, size: 256, offset: 1088)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !84, line: 896, size: 256, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4520, file: !84, line: 897, baseType: !289, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4520, file: !84, line: 898, baseType: !5, size: 32, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4520, file: !84, line: 899, baseType: !5, size: 32, offset: 96)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4520, file: !84, line: 902, baseType: !5, size: 32, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4520, file: !84, line: 903, baseType: !5, size: 32, offset: 160)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4520, file: !84, line: 904, baseType: !839, size: 64, offset: 192)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !671, file: !84, line: 940, baseType: !343, size: 64, offset: 1344)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !671, file: !84, line: 945, baseType: !290, size: 64, offset: 1408)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !671, file: !84, line: 949, baseType: !313, size: 128, offset: 1472)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !671, file: !84, line: 950, baseType: !313, size: 128, offset: 1600)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !671, file: !84, line: 952, baseType: !1099, size: 64, offset: 1728)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !671, file: !84, line: 953, baseType: !2205, size: 32, offset: 1792)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !671, file: !84, line: 954, baseType: !2205, size: 32, offset: 1824)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !661, file: !620, line: 174, baseType: !667, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !661, file: !620, line: 176, baseType: !4537, size: 64, offset: 384)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!397, !670, !562, !660, !2275}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !649, file: !620, line: 90, baseType: !644, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !649, file: !620, line: 91, baseType: !4542, size: 64, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !610, file: !557, line: 143, baseType: !4544, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!4547, !562}
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !101, line: 39, size: 384, elements: !4550)
!4550 = !{!4551, !4552, !4556, !4560, !4566, !4570}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4549, file: !101, line: 40, baseType: !100, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4549, file: !101, line: 41, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!455}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4549, file: !101, line: 42, baseType: !4557, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!290}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4549, file: !101, line: 43, baseType: !4561, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!3521, !4564}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !101, line: 19, flags: DIFlagFwdDecl)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4549, file: !101, line: 44, baseType: !4567, size: 64, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!3521}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4549, file: !101, line: 45, baseType: !778, size: 64, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !610, file: !557, line: 144, baseType: !4572, size: 64, offset: 320)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!3521, !562}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !610, file: !557, line: 145, baseType: !4576, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !562, !3082, !3083}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !556, file: !557, line: 70, baseType: !4580, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !925, line: 123, size: 1024, elements: !4582)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4699, !4700, !4701, !4702, !4703}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4581, file: !925, line: 124, baseType: !1112, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4581, file: !925, line: 125, baseType: !1112, size: 32, offset: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4581, file: !925, line: 135, baseType: !4580, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4581, file: !925, line: 136, baseType: !385, size: 64, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4581, file: !925, line: 138, baseType: !1125, size: 192, align: 64, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4581, file: !925, line: 140, baseType: !3521, size: 64, offset: 384)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4581, file: !925, line: 141, baseType: !5, size: 32, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_member, scope: !4581, file: !925, line: 142, baseType: !4591, size: 256, offset: 512)
!4591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4581, file: !925, line: 142, size: 256, elements: !4592)
!4592 = !{!4593, !4639, !4643}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4591, file: !925, line: 143, baseType: !4594, size: 192)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !925, line: 91, size: 192, elements: !4595)
!4595 = !{!4596, !4597, !4598}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4594, file: !925, line: 92, baseType: !289, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4594, file: !925, line: 94, baseType: !1121, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4594, file: !925, line: 100, baseType: !4599, size: 64, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !925, line: 180, size: 704, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4611, !4612, !4613, !4637, !4638}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4600, file: !925, line: 182, baseType: !4580, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4600, file: !925, line: 183, baseType: !5, size: 32, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4600, file: !925, line: 186, baseType: !4605, size: 192, offset: 128)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4606, line: 19, size: 192, elements: !4607)
!4606 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4605, file: !4606, line: 20, baseType: !1104, size: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4605, file: !4606, line: 21, baseType: !5, size: 32, offset: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4605, file: !4606, line: 22, baseType: !5, size: 32, offset: 160)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4600, file: !925, line: 187, baseType: !329, size: 32, offset: 320)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4600, file: !925, line: 188, baseType: !329, size: 32, offset: 352)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4600, file: !925, line: 189, baseType: !4614, size: 64, offset: 384)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !925, line: 168, size: 320, elements: !4616)
!4616 = !{!4617, !4621, !4625, !4629, !4633}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4615, file: !925, line: 169, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!397, !1034, !4599}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4615, file: !925, line: 171, baseType: !4622, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!397, !4580, !385, !635}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4615, file: !925, line: 173, baseType: !4626, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!397, !4580}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4615, file: !925, line: 174, baseType: !4630, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!397, !4580, !4580, !385}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4615, file: !925, line: 176, baseType: !4634, size: 64, offset: 256)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!397, !1034, !4580, !4599}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4600, file: !925, line: 192, baseType: !313, size: 128, offset: 448)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4600, file: !925, line: 194, baseType: !1519, size: 128, offset: 576)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4591, file: !925, line: 144, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !925, line: 103, size: 64, elements: !4641)
!4641 = !{!4642}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4640, file: !925, line: 104, baseType: !4580, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4591, file: !925, line: 145, baseType: !4644, size: 256)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !925, line: 107, size: 256, elements: !4645)
!4645 = !{!4646, !4694, !4697, !4698}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4644, file: !925, line: 108, baseType: !4647, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !925, line: 217, size: 768, elements: !4650)
!4650 = !{!4651, !4671, !4675, !4676, !4677, !4678, !4679, !4683, !4684, !4685, !4686, !4690}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4649, file: !925, line: 222, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!397, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !925, line: 197, size: 1088, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4656, file: !925, line: 199, baseType: !4580, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4656, file: !925, line: 200, baseType: !670, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4656, file: !925, line: 201, baseType: !1034, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4656, file: !925, line: 202, baseType: !290, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4656, file: !925, line: 205, baseType: !1046, size: 192, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4656, file: !925, line: 206, baseType: !1046, size: 192, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4656, file: !925, line: 207, baseType: !397, size: 32, offset: 640)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4656, file: !925, line: 208, baseType: !313, size: 128, offset: 704)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4656, file: !925, line: 209, baseType: !595, size: 64, offset: 832)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4656, file: !925, line: 211, baseType: !640, size: 64, offset: 896)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4656, file: !925, line: 212, baseType: !455, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4656, file: !925, line: 213, baseType: !455, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4656, file: !925, line: 214, baseType: !2303, size: 64, offset: 1024)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4649, file: !925, line: 223, baseType: !4672, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !4655}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4649, file: !925, line: 236, baseType: !1071, size: 64, offset: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4649, file: !925, line: 238, baseType: !1058, size: 64, offset: 192)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4649, file: !925, line: 239, baseType: !1067, size: 64, offset: 256)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4649, file: !925, line: 240, baseType: !1063, size: 64, offset: 320)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4649, file: !925, line: 242, baseType: !4680, size: 64, offset: 384)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!626, !4655, !595, !640, !839}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4649, file: !925, line: 252, baseType: !640, size: 64, offset: 448)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4649, file: !925, line: 259, baseType: !455, size: 8, offset: 512)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4649, file: !925, line: 260, baseType: !4680, size: 64, offset: 576)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4649, file: !925, line: 263, baseType: !4687, size: 64, offset: 640)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!4264, !4655, !4265}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4649, file: !925, line: 266, baseType: !4691, size: 64, offset: 704)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!397, !4655, !2275}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4644, file: !925, line: 109, baseType: !4695, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !925, line: 31, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4644, file: !925, line: 110, baseType: !839, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4644, file: !925, line: 111, baseType: !4580, size: 64, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4581, file: !925, line: 148, baseType: !290, size: 64, offset: 768)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4581, file: !925, line: 154, baseType: !343, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4581, file: !925, line: 156, baseType: !410, size: 16, offset: 896)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4581, file: !925, line: 157, baseType: !635, size: 16, offset: 912)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4581, file: !925, line: 158, baseType: !4704, size: 64, offset: 960)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !925, line: 32, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !556, file: !557, line: 71, baseType: !1902, size: 32, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !556, file: !557, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !556, file: !557, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !556, file: !557, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !556, file: !557, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !556, file: !557, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !553, file: !113, line: 463, baseType: !552, size: 64, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !553, file: !113, line: 465, baseType: !4714, size: 64, offset: 576)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !113, line: 36, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !553, file: !113, line: 467, baseType: !385, size: 64, offset: 640)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !113, line: 468, baseType: !4718, size: 64, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4720)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !113, line: 87, size: 384, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4728, !4732, !4736}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4720, file: !113, line: 88, baseType: !385, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4720, file: !113, line: 89, baseType: !646, size: 64, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4720, file: !113, line: 90, baseType: !4725, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!397, !552, !590}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4720, file: !113, line: 91, baseType: !4729, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!595, !552, !1608, !3082, !3083}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4720, file: !113, line: 93, baseType: !4733, size: 64, offset: 256)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !552}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4720, file: !113, line: 95, baseType: !4737, size: 64, offset: 320)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4739)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !42, line: 278, size: 1472, elements: !4740)
!4740 = !{!4741, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4739, file: !42, line: 279, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!397, !552}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4739, file: !42, line: 280, baseType: !4733, size: 64, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4739, file: !42, line: 281, baseType: !4742, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4739, file: !42, line: 282, baseType: !4742, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4739, file: !42, line: 283, baseType: !4742, size: 64, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4739, file: !42, line: 284, baseType: !4742, size: 64, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4739, file: !42, line: 285, baseType: !4742, size: 64, offset: 384)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4739, file: !42, line: 286, baseType: !4742, size: 64, offset: 448)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4739, file: !42, line: 287, baseType: !4742, size: 64, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4739, file: !42, line: 288, baseType: !4742, size: 64, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4739, file: !42, line: 289, baseType: !4742, size: 64, offset: 640)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4739, file: !42, line: 290, baseType: !4742, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4739, file: !42, line: 291, baseType: !4742, size: 64, offset: 768)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4739, file: !42, line: 292, baseType: !4742, size: 64, offset: 832)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4739, file: !42, line: 293, baseType: !4742, size: 64, offset: 896)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4739, file: !42, line: 294, baseType: !4742, size: 64, offset: 960)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4739, file: !42, line: 295, baseType: !4742, size: 64, offset: 1024)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4739, file: !42, line: 296, baseType: !4742, size: 64, offset: 1088)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4739, file: !42, line: 297, baseType: !4742, size: 64, offset: 1152)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4739, file: !42, line: 298, baseType: !4742, size: 64, offset: 1216)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4739, file: !42, line: 299, baseType: !4742, size: 64, offset: 1280)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4739, file: !42, line: 300, baseType: !4742, size: 64, offset: 1344)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4739, file: !42, line: 301, baseType: !4742, size: 64, offset: 1408)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !553, file: !113, line: 470, baseType: !4768, size: 64, offset: 768)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4770, line: 82, size: 1408, elements: !4771)
!4770 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4771 = !{!4772, !4773, !4774, !4775, !4776, !4777, !4778, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4853, !4856, !4857}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4769, file: !4770, line: 83, baseType: !385, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4769, file: !4770, line: 84, baseType: !385, size: 64, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4769, file: !4770, line: 85, baseType: !552, size: 64, offset: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4769, file: !4770, line: 86, baseType: !646, size: 64, offset: 192)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4769, file: !4770, line: 87, baseType: !646, size: 64, offset: 256)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4769, file: !4770, line: 88, baseType: !646, size: 64, offset: 320)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4769, file: !4770, line: 90, baseType: !4779, size: 64, offset: 384)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!397, !552, !4782}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !107, line: 95, size: 1152, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790, !4791, !4804, !4817, !4818, !4819, !4820, !4821, !4829, !4830, !4831, !4832, !4833, !4834}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4783, file: !107, line: 96, baseType: !385, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4783, file: !107, line: 97, baseType: !4768, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4783, file: !107, line: 99, baseType: !939, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4783, file: !107, line: 100, baseType: !385, size: 64, offset: 192)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4783, file: !107, line: 102, baseType: !455, size: 8, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4783, file: !107, line: 103, baseType: !106, size: 32, offset: 288)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4783, file: !107, line: 105, baseType: !4792, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4795, line: 262, size: 1600, elements: !4796)
!4795 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4796 = !{!4797, !4798, !4799, !4803}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4794, file: !4795, line: 263, baseType: !1407, size: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4794, file: !4795, line: 264, baseType: !1407, size: 256, offset: 256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4794, file: !4795, line: 265, baseType: !4800, size: 1024, offset: 512)
!4800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !4801)
!4801 = !{!4802}
!4802 = !DISubrange(count: 128)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4794, file: !4795, line: 266, baseType: !3521, size: 64, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4783, file: !107, line: 106, baseType: !4805, size: 64, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4807)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4795, line: 210, size: 256, elements: !4808)
!4808 = !{!4809, !4813, !4815, !4816}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4807, file: !4795, line: 211, baseType: !4810, size: 72)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 72, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 9)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4807, file: !4795, line: 212, baseType: !4814, size: 64, offset: 128)
!4814 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4795, line: 14, baseType: !289)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4807, file: !4795, line: 213, baseType: !330, size: 32, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4807, file: !4795, line: 214, baseType: !330, size: 32, offset: 224)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4783, file: !107, line: 108, baseType: !4742, size: 64, offset: 448)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4783, file: !107, line: 109, baseType: !4733, size: 64, offset: 512)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4783, file: !107, line: 110, baseType: !4742, size: 64, offset: 576)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4783, file: !107, line: 111, baseType: !4733, size: 64, offset: 640)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4783, file: !107, line: 112, baseType: !4822, size: 64, offset: 704)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!397, !552, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !42, line: 52, baseType: !4826)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !42, line: 50, size: 32, elements: !4827)
!4827 = !{!4828}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4826, file: !42, line: 51, baseType: !397, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4783, file: !107, line: 113, baseType: !4742, size: 64, offset: 768)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4783, file: !107, line: 114, baseType: !646, size: 64, offset: 832)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4783, file: !107, line: 115, baseType: !646, size: 64, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4783, file: !107, line: 117, baseType: !4737, size: 64, offset: 960)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4783, file: !107, line: 118, baseType: !4733, size: 64, offset: 1024)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4783, file: !107, line: 120, baseType: !4835, size: 64, offset: 1088)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !107, line: 120, flags: DIFlagFwdDecl)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4769, file: !4770, line: 91, baseType: !4725, size: 64, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4769, file: !4770, line: 92, baseType: !4742, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4769, file: !4770, line: 93, baseType: !4733, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4769, file: !4770, line: 94, baseType: !4742, size: 64, offset: 640)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4769, file: !4770, line: 95, baseType: !4733, size: 64, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4769, file: !4770, line: 97, baseType: !4742, size: 64, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4769, file: !4770, line: 98, baseType: !4742, size: 64, offset: 832)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4769, file: !4770, line: 100, baseType: !4822, size: 64, offset: 896)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4769, file: !4770, line: 101, baseType: !4742, size: 64, offset: 960)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4769, file: !4770, line: 103, baseType: !4742, size: 64, offset: 1024)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4769, file: !4770, line: 105, baseType: !4742, size: 64, offset: 1088)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4769, file: !4770, line: 107, baseType: !4737, size: 64, offset: 1152)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4769, file: !4770, line: 109, baseType: !4850, size: 64, offset: 1216)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4852 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4770, line: 109, flags: DIFlagFwdDecl)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4769, file: !4770, line: 111, baseType: !4854, size: 64, offset: 1280)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4770, line: 111, flags: DIFlagFwdDecl)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4769, file: !4770, line: 112, baseType: !954, offset: 1344)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4769, file: !4770, line: 114, baseType: !455, size: 8, offset: 1344)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !553, file: !113, line: 471, baseType: !4782, size: 64, offset: 832)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !553, file: !113, line: 473, baseType: !290, size: 64, offset: 896)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !553, file: !113, line: 475, baseType: !290, size: 64, offset: 960)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !553, file: !113, line: 480, baseType: !1046, size: 192, offset: 1024)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !553, file: !113, line: 484, baseType: !4863, size: 576, offset: 1216)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !113, line: 361, size: 576, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4868, !4869, !4870}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4863, file: !113, line: 362, baseType: !313, size: 128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4863, file: !113, line: 363, baseType: !313, size: 128, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4863, file: !113, line: 364, baseType: !313, size: 128, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4863, file: !113, line: 365, baseType: !313, size: 128, offset: 384)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4863, file: !113, line: 366, baseType: !455, size: 8, offset: 512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4863, file: !113, line: 367, baseType: !112, size: 32, offset: 544)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !553, file: !113, line: 485, baseType: !4872, size: 2304, offset: 1792)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !42, line: 565, size: 2304, elements: !4873)
!4873 = !{!4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4958, !4962}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4872, file: !42, line: 566, baseType: !4825, size: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4872, file: !42, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4872, file: !42, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4872, file: !42, line: 569, baseType: !455, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4872, file: !42, line: 570, baseType: !455, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4872, file: !42, line: 571, baseType: !455, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4872, file: !42, line: 572, baseType: !455, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4872, file: !42, line: 573, baseType: !455, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4872, file: !42, line: 574, baseType: !455, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4872, file: !42, line: 575, baseType: !455, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4872, file: !42, line: 576, baseType: !455, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4872, file: !42, line: 577, baseType: !329, size: 32, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4872, file: !42, line: 578, baseType: !544, offset: 96)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4872, file: !42, line: 580, baseType: !313, size: 128, offset: 128)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4872, file: !42, line: 581, baseType: !524, size: 192, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4872, file: !42, line: 582, baseType: !4890, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4892, line: 43, size: 1472, elements: !4893)
!4892 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4891, file: !4892, line: 44, baseType: !385, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4891, file: !4892, line: 45, baseType: !397, size: 32, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4891, file: !4892, line: 46, baseType: !313, size: 128, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4891, file: !4892, line: 47, baseType: !544, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4891, file: !4892, line: 48, baseType: !4899, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !42, line: 533, flags: DIFlagFwdDecl)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4891, file: !4892, line: 49, baseType: !1952, size: 320, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4891, file: !4892, line: 50, baseType: !289, size: 64, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4891, file: !4892, line: 51, baseType: !2580, size: 64, offset: 704)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4891, file: !4892, line: 52, baseType: !2580, size: 64, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4891, file: !4892, line: 53, baseType: !2580, size: 64, offset: 832)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4891, file: !4892, line: 54, baseType: !2580, size: 64, offset: 896)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4891, file: !4892, line: 55, baseType: !2580, size: 64, offset: 960)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4891, file: !4892, line: 56, baseType: !289, size: 64, offset: 1024)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4891, file: !4892, line: 57, baseType: !289, size: 64, offset: 1088)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4891, file: !4892, line: 58, baseType: !289, size: 64, offset: 1152)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4891, file: !4892, line: 59, baseType: !289, size: 64, offset: 1216)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4891, file: !4892, line: 60, baseType: !289, size: 64, offset: 1280)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4891, file: !4892, line: 61, baseType: !552, size: 64, offset: 1344)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4891, file: !4892, line: 62, baseType: !455, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4891, file: !4892, line: 63, baseType: !455, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4872, file: !42, line: 583, baseType: !455, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4872, file: !42, line: 584, baseType: !455, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4872, file: !42, line: 585, baseType: !455, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4872, file: !42, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4872, file: !42, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4872, file: !42, line: 592, baseType: !2572, size: 512, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4872, file: !42, line: 593, baseType: !343, size: 64, offset: 1088)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4872, file: !42, line: 594, baseType: !296, size: 256, offset: 1152)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4872, file: !42, line: 595, baseType: !1519, size: 128, offset: 1408)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4872, file: !42, line: 596, baseType: !4899, size: 64, offset: 1536)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4872, file: !42, line: 597, baseType: !1112, size: 32, offset: 1600)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4872, file: !42, line: 598, baseType: !1112, size: 32, offset: 1632)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4872, file: !42, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4872, file: !42, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4872, file: !42, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4872, file: !42, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4872, file: !42, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4872, file: !42, line: 604, baseType: !455, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4872, file: !42, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4872, file: !42, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4872, file: !42, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4872, file: !42, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4872, file: !42, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4872, file: !42, line: 610, baseType: !5, size: 32, offset: 1696)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4872, file: !42, line: 611, baseType: !119, size: 32, offset: 1728)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4872, file: !42, line: 612, baseType: !41, size: 32, offset: 1760)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4872, file: !42, line: 613, baseType: !397, size: 32, offset: 1792)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4872, file: !42, line: 614, baseType: !397, size: 32, offset: 1824)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4872, file: !42, line: 615, baseType: !343, size: 64, offset: 1856)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4872, file: !42, line: 616, baseType: !343, size: 64, offset: 1920)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4872, file: !42, line: 617, baseType: !343, size: 64, offset: 1984)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4872, file: !42, line: 618, baseType: !343, size: 64, offset: 2048)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4872, file: !42, line: 620, baseType: !4949, size: 64, offset: 2112)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !42, line: 536, size: 256, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4955}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4950, file: !42, line: 537, baseType: !544)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4950, file: !42, line: 538, baseType: !5, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4950, file: !42, line: 540, baseType: !313, size: 128, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4950, file: !42, line: 543, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !42, line: 534, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4872, file: !42, line: 621, baseType: !4959, size: 64, offset: 2176)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !552, !2722}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4872, file: !42, line: 622, baseType: !4963, size: 64, offset: 2240)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !42, line: 622, flags: DIFlagFwdDecl)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !553, file: !113, line: 486, baseType: !4966, size: 64, offset: 4096)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !42, line: 642, size: 1792, elements: !4968)
!4968 = !{!4969, !4970, !4971, !4975, !4976, !4977}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4967, file: !42, line: 643, baseType: !4739, size: 1472)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4967, file: !42, line: 644, baseType: !4742, size: 64, offset: 1472)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4967, file: !42, line: 645, baseType: !4972, size: 64, offset: 1536)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !552, !455}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4967, file: !42, line: 646, baseType: !4742, size: 64, offset: 1600)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4967, file: !42, line: 647, baseType: !4733, size: 64, offset: 1664)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4967, file: !42, line: 648, baseType: !4733, size: 64, offset: 1728)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !553, file: !113, line: 493, baseType: !4979, size: 64, offset: 4160)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !113, line: 493, flags: DIFlagFwdDecl)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !553, file: !113, line: 499, baseType: !313, size: 128, offset: 4224)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !553, file: !113, line: 502, baseType: !4983, size: 64, offset: 4352)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4985)
!4985 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !113, line: 502, flags: DIFlagFwdDecl)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !553, file: !113, line: 504, baseType: !4987, size: 64, offset: 4416)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !553, file: !113, line: 505, baseType: !343, size: 64, offset: 4480)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !553, file: !113, line: 510, baseType: !343, size: 64, offset: 4544)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !553, file: !113, line: 511, baseType: !4991, size: 64, offset: 4608)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4993)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !113, line: 511, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !553, file: !113, line: 513, baseType: !4995, size: 64, offset: 4672)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !113, line: 288, size: 128, elements: !4997)
!4997 = !{!4998, !4999}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4996, file: !113, line: 293, baseType: !5, size: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4996, file: !113, line: 294, baseType: !289, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !553, file: !113, line: 515, baseType: !313, size: 128, offset: 4736)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !553, file: !113, line: 526, baseType: !5002, offset: 4864)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5003, line: 5, elements: !541)
!5003 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !553, file: !113, line: 528, baseType: !5005, size: 64, offset: 4864)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5007, line: 51, size: 1344, elements: !5008)
!5007 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!5008 = !{!5009, !5010, !5012, !5013, !5103, !5112, !5113, !5114, !5115, !5116, !5117, !5118}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5006, file: !5007, line: 52, baseType: !385, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !5006, file: !5007, line: 53, baseType: !5011, size: 32, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !5007, line: 28, baseType: !329)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !5006, file: !5007, line: 54, baseType: !385, size: 64, offset: 128)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5006, file: !5007, line: 55, baseType: !5014, size: 192, offset: 192)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5015, line: 17, size: 192, elements: !5016)
!5015 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!5016 = !{!5017, !5019, !5102}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5014, file: !5015, line: 18, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5014, file: !5015, line: 19, baseType: !5020, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5022)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5015, line: 110, size: 1152, elements: !5023)
!5023 = !{!5024, !5028, !5032, !5038, !5044, !5048, !5052, !5057, !5061, !5062, !5066, !5070, !5074, !5085, !5086, !5087, !5088, !5098}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5022, file: !5015, line: 111, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!5018, !5018}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5022, file: !5015, line: 112, baseType: !5029, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !5018}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5022, file: !5015, line: 113, baseType: !5033, size: 64, offset: 128)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!455, !5036}
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5014)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5022, file: !5015, line: 114, baseType: !5039, size: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!3521, !5036, !5042}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5022, file: !5015, line: 116, baseType: !5045, size: 64, offset: 256)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!455, !5036, !385}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5022, file: !5015, line: 118, baseType: !5049, size: 64, offset: 320)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!397, !5036, !385, !5, !290, !640}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5022, file: !5015, line: 123, baseType: !5053, size: 64, offset: 384)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!397, !5036, !385, !5056, !640}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5022, file: !5015, line: 126, baseType: !5058, size: 64, offset: 448)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!385, !5036}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5022, file: !5015, line: 127, baseType: !5058, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5022, file: !5015, line: 128, baseType: !5063, size: 64, offset: 576)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!5018, !5036}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5022, file: !5015, line: 130, baseType: !5067, size: 64, offset: 640)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!5018, !5036, !5018}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5022, file: !5015, line: 133, baseType: !5071, size: 64, offset: 704)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!5018, !5036, !385}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5022, file: !5015, line: 135, baseType: !5075, size: 64, offset: 768)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!397, !5036, !385, !385, !5, !5, !5078}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5015, line: 43, size: 640, elements: !5080)
!5080 = !{!5081, !5082, !5083}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5079, file: !5015, line: 44, baseType: !5018, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5079, file: !5015, line: 45, baseType: !5, size: 32, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5079, file: !5015, line: 46, baseType: !5084, size: 512, offset: 128)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 512, elements: !2610)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5022, file: !5015, line: 140, baseType: !5067, size: 64, offset: 832)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5022, file: !5015, line: 143, baseType: !5063, size: 64, offset: 896)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5022, file: !5015, line: 145, baseType: !5025, size: 64, offset: 960)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5022, file: !5015, line: 146, baseType: !5089, size: 64, offset: 1024)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!397, !5036, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5015, line: 29, size: 128, elements: !5094)
!5094 = !{!5095, !5096, !5097}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5093, file: !5015, line: 30, baseType: !5, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5093, file: !5015, line: 31, baseType: !5, size: 32, offset: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5093, file: !5015, line: 32, baseType: !5036, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5022, file: !5015, line: 148, baseType: !5099, size: 64, offset: 1088)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!397, !5036, !552}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5014, file: !5015, line: 20, baseType: !552, size: 64, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5006, file: !5007, line: 57, baseType: !5104, size: 64, offset: 384)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !5007, line: 31, size: 704, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5110, !5111}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5105, file: !5007, line: 32, baseType: !595, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5105, file: !5007, line: 33, baseType: !397, size: 32, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5105, file: !5007, line: 34, baseType: !290, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5105, file: !5007, line: 35, baseType: !5104, size: 64, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5105, file: !5007, line: 43, baseType: !661, size: 448, offset: 256)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !5006, file: !5007, line: 58, baseType: !5104, size: 64, offset: 448)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5006, file: !5007, line: 59, baseType: !5005, size: 64, offset: 512)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5006, file: !5007, line: 60, baseType: !5005, size: 64, offset: 576)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5006, file: !5007, line: 61, baseType: !5005, size: 64, offset: 640)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5006, file: !5007, line: 63, baseType: !556, size: 512, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5006, file: !5007, line: 65, baseType: !289, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5006, file: !5007, line: 66, baseType: !290, size: 64, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !553, file: !113, line: 529, baseType: !5018, size: 64, offset: 4928)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !553, file: !113, line: 534, baseType: !821, size: 32, offset: 4992)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !553, file: !113, line: 535, baseType: !329, size: 32, offset: 5024)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !553, file: !113, line: 537, baseType: !544, offset: 5056)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !553, file: !113, line: 538, baseType: !313, size: 128, offset: 5056)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !553, file: !113, line: 540, baseType: !5125, size: 64, offset: 5184)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5127, line: 54, size: 960, elements: !5128)
!5127 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!5128 = !{!5129, !5130, !5131, !5132, !5133, !5134, !5135, !5139, !5143, !5144, !5145, !5146, !5150, !5154, !5155}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5126, file: !5127, line: 55, baseType: !385, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5126, file: !5127, line: 56, baseType: !939, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5126, file: !5127, line: 58, baseType: !646, size: 64, offset: 128)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5126, file: !5127, line: 59, baseType: !646, size: 64, offset: 192)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !5126, file: !5127, line: 60, baseType: !562, size: 64, offset: 256)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5126, file: !5127, line: 62, baseType: !4725, size: 64, offset: 320)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5126, file: !5127, line: 63, baseType: !5136, size: 64, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!595, !552, !1608}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5126, file: !5127, line: 65, baseType: !5140, size: 64, offset: 448)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5125}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5126, file: !5127, line: 66, baseType: !4733, size: 64, offset: 512)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5126, file: !5127, line: 68, baseType: !4742, size: 64, offset: 576)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5126, file: !5127, line: 70, baseType: !4547, size: 64, offset: 640)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5126, file: !5127, line: 71, baseType: !5147, size: 64, offset: 704)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!3521, !552}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5126, file: !5127, line: 73, baseType: !5151, size: 64, offset: 768)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !552, !3082, !3083}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5126, file: !5127, line: 75, baseType: !4737, size: 64, offset: 832)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5126, file: !5127, line: 77, baseType: !4854, size: 64, offset: 896)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !553, file: !113, line: 541, baseType: !646, size: 64, offset: 5248)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !553, file: !113, line: 543, baseType: !4733, size: 64, offset: 5312)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !553, file: !113, line: 544, baseType: !5159, size: 64, offset: 5376)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !113, line: 45, flags: DIFlagFwdDecl)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !553, file: !113, line: 545, baseType: !5162, size: 64, offset: 5440)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !113, line: 47, flags: DIFlagFwdDecl)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !553, file: !113, line: 547, baseType: !455, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !553, file: !113, line: 548, baseType: !455, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !553, file: !113, line: 549, baseType: !455, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !553, file: !113, line: 550, baseType: !455, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !293, file: !240, line: 1080, baseType: !552, size: 64, offset: 2432)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "xhci", scope: !293, file: !240, line: 1082, baseType: !5170, size: 64, offset: 2496)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !5172, line: 22, size: 6208, elements: !5173)
!5172 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5195, !5202, !5203, !5206}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5171, file: !5172, line: 23, baseType: !385, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5171, file: !5172, line: 24, baseType: !397, size: 32, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !5171, file: !5172, line: 25, baseType: !455, size: 8, offset: 96)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5171, file: !5172, line: 26, baseType: !553, size: 5568, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !5171, file: !5172, line: 27, baseType: !343, size: 64, offset: 5696)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5171, file: !5172, line: 28, baseType: !4996, size: 128, offset: 5760)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !5171, file: !5172, line: 29, baseType: !329, size: 32, offset: 5888)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5171, file: !5172, line: 30, baseType: !5182, size: 64, offset: 5952)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5184, line: 20, size: 512, elements: !5185)
!5184 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!5185 = !{!5186, !5188, !5189, !5190, !5191, !5192, !5193, !5194}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5183, file: !5184, line: 21, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !303, line: 158, baseType: !3519)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5183, file: !5184, line: 22, baseType: !5187, size: 64, offset: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5183, file: !5184, line: 23, baseType: !385, size: 64, offset: 128)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5183, file: !5184, line: 24, baseType: !289, size: 64, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5183, file: !5184, line: 25, baseType: !289, size: 64, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5183, file: !5184, line: 26, baseType: !5182, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5183, file: !5184, line: 26, baseType: !5182, size: 64, offset: 384)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5183, file: !5184, line: 26, baseType: !5182, size: 64, offset: 448)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !5171, file: !5172, line: 32, baseType: !5196, size: 64, offset: 6016)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5198)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4795, line: 586, size: 256, elements: !5199)
!5199 = !{!5200, !5201}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5198, file: !4795, line: 587, baseType: !503, size: 160)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5198, file: !4795, line: 588, baseType: !4814, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5171, file: !5172, line: 33, baseType: !595, size: 64, offset: 6080)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !5171, file: !5172, line: 36, baseType: !5204, size: 64, offset: 6144)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !5172, line: 18, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !5171, file: !5172, line: 39, baseType: !5207, offset: 6208)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !5003, line: 8, elements: !541)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "xhci_resources", scope: !293, file: !240, line: 1083, baseType: !5209, size: 1024, offset: 2560)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5183, size: 1024, elements: !1689)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ev_buf", scope: !293, file: !240, line: 1085, baseType: !5211, size: 64, offset: 3584)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_event_buffer", file: !240, line: 638, size: 384, elements: !5213)
!5213 = !{!5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5212, file: !240, line: 639, baseType: !290, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5212, file: !240, line: 640, baseType: !290, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5212, file: !240, line: 641, baseType: !5, size: 32, offset: 128)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "lpos", scope: !5212, file: !240, line: 642, baseType: !5, size: 32, offset: 160)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5212, file: !240, line: 643, baseType: !5, size: 32, offset: 192)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5212, file: !240, line: 644, baseType: !5, size: 32, offset: 224)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5212, file: !240, line: 648, baseType: !342, size: 64, offset: 256)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "dwc", scope: !5212, file: !240, line: 650, baseType: !292, size: 64, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !293, file: !240, line: 1086, baseType: !5223, size: 2048, offset: 3648)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 2048, elements: !1408)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !293, file: !240, line: 1088, baseType: !5225, size: 64, offset: 5696)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget", file: !353, line: 400, size: 6592, elements: !5227)
!5227 = !{!5228, !5229, !5232, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5226, file: !353, line: 401, baseType: !296, size: 256)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !5226, file: !353, line: 402, baseType: !5230, size: 64, offset: 256)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_udc", file: !353, line: 306, flags: DIFlagFwdDecl)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5226, file: !353, line: 404, baseType: !5233, size: 64, offset: 320)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5235)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_ops", file: !353, line: 311, size: 768, elements: !5236)
!5236 = !{!5237, !5241, !5242, !5246, !5247, !5251, !5252, !5256, !5267, !5302, !5303, !5307}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame", scope: !5235, file: !353, line: 312, baseType: !5238, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!397, !5225}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5235, file: !353, line: 313, baseType: !5238, size: 64, offset: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "set_selfpowered", scope: !5235, file: !353, line: 314, baseType: !5243, size: 64, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!397, !5225, !397}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_session", scope: !5235, file: !353, line: 315, baseType: !5243, size: 64, offset: 192)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_draw", scope: !5235, file: !353, line: 316, baseType: !5248, size: 64, offset: 256)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!397, !5225, !5}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "pullup", scope: !5235, file: !353, line: 317, baseType: !5243, size: 64, offset: 320)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5235, file: !353, line: 318, baseType: !5253, size: 64, offset: 384)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!397, !5225, !5, !289}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "get_config_params", scope: !5235, file: !353, line: 320, baseType: !5257, size: 64, offset: 448)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !5225, !5260}
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dcd_config_params", file: !353, line: 293, size: 48, elements: !5262)
!5262 = !{!5263, !5264, !5265, !5266}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5261, file: !353, line: 294, baseType: !339, size: 8)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5261, file: !353, line: 296, baseType: !407, size: 16, offset: 16)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "besl_baseline", scope: !5261, file: !353, line: 298, baseType: !339, size: 8, offset: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "besl_deep", scope: !5261, file: !353, line: 299, baseType: !339, size: 8, offset: 40)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "udc_start", scope: !5235, file: !353, line: 322, baseType: !5268, size: 64, offset: 512)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!397, !5225, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_driver", file: !353, line: 699, size: 1984, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5281, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5272, file: !353, line: 700, baseType: !595, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5272, file: !353, line: 701, baseType: !126, size: 32, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5272, file: !353, line: 702, baseType: !5268, size: 64, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5272, file: !353, line: 704, baseType: !5278, size: 64, offset: 192)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{null, !5225}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5272, file: !353, line: 705, baseType: !5282, size: 64, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!397, !5225, !5285}
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5287)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !127, line: 213, size: 64, elements: !5288)
!5288 = !{!5289, !5290, !5291, !5292, !5293}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !5287, file: !127, line: 214, baseType: !339, size: 8)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !5287, file: !127, line: 215, baseType: !339, size: 8, offset: 8)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !5287, file: !127, line: 216, baseType: !407, size: 16, offset: 16)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !5287, file: !127, line: 217, baseType: !407, size: 16, offset: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !5287, file: !127, line: 218, baseType: !407, size: 16, offset: 48)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5272, file: !353, line: 707, baseType: !5278, size: 64, offset: 320)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5272, file: !353, line: 708, baseType: !5278, size: 64, offset: 384)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5272, file: !353, line: 709, baseType: !5278, size: 64, offset: 448)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5272, file: !353, line: 710, baseType: !5278, size: 64, offset: 512)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5272, file: !353, line: 713, baseType: !4783, size: 1152, offset: 576)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "udc_name", scope: !5272, file: !353, line: 715, baseType: !595, size: 64, offset: 1728)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !5272, file: !353, line: 716, baseType: !313, size: 128, offset: 1792)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "match_existing_only", scope: !5272, file: !353, line: 717, baseType: !5, size: 1, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "udc_stop", scope: !5235, file: !353, line: 324, baseType: !5238, size: 64, offset: 576)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "udc_set_speed", scope: !5235, file: !353, line: 325, baseType: !5304, size: 64, offset: 640)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{null, !5225, !126}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "match_ep", scope: !5235, file: !353, line: 326, baseType: !5308, size: 64, offset: 704)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!380, !5225, !5311, !5312}
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5226, file: !353, line: 405, baseType: !380, size: 64, offset: 384)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !5226, file: !353, line: 406, baseType: !313, size: 128, offset: 448)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5226, file: !353, line: 407, baseType: !126, size: 32, offset: 576)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5226, file: !353, line: 408, baseType: !126, size: 32, offset: 608)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5226, file: !353, line: 409, baseType: !136, size: 32, offset: 640)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5226, file: !353, line: 410, baseType: !385, size: 64, offset: 704)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5226, file: !353, line: 411, baseType: !553, size: 5568, offset: 768)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "isoch_delay", scope: !5226, file: !353, line: 412, baseType: !5, size: 32, offset: 6336)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "out_epnum", scope: !5226, file: !353, line: 413, baseType: !5, size: 32, offset: 6368)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "in_epnum", scope: !5226, file: !353, line: 414, baseType: !5, size: 32, offset: 6400)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "mA", scope: !5226, file: !353, line: 415, baseType: !5, size: 32, offset: 6432)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "otg_caps", scope: !5226, file: !353, line: 416, baseType: !5325, size: 64, offset: 6464)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg_caps", file: !225, line: 53, size: 48, elements: !5327)
!5327 = !{!5328, !5329, !5330, !5331}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "otg_rev", scope: !5326, file: !225, line: 54, baseType: !1223, size: 16)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_support", scope: !5326, file: !225, line: 55, baseType: !455, size: 8, offset: 16)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "srp_support", scope: !5326, file: !225, line: 56, baseType: !455, size: 8, offset: 24)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "adp_support", scope: !5326, file: !225, line: 57, baseType: !455, size: 8, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "sg_supported", scope: !5226, file: !353, line: 418, baseType: !5, size: 1, offset: 6528, flags: DIFlagBitField, extraData: i64 6528)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "is_otg", scope: !5226, file: !353, line: 419, baseType: !5, size: 1, offset: 6529, flags: DIFlagBitField, extraData: i64 6528)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "is_a_peripheral", scope: !5226, file: !353, line: 420, baseType: !5, size: 1, offset: 6530, flags: DIFlagBitField, extraData: i64 6528)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5226, file: !353, line: 421, baseType: !5, size: 1, offset: 6531, flags: DIFlagBitField, extraData: i64 6528)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "a_hnp_support", scope: !5226, file: !353, line: 422, baseType: !5, size: 1, offset: 6532, flags: DIFlagBitField, extraData: i64 6528)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "a_alt_hnp_support", scope: !5226, file: !353, line: 423, baseType: !5, size: 1, offset: 6533, flags: DIFlagBitField, extraData: i64 6528)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_polling_support", scope: !5226, file: !353, line: 424, baseType: !5, size: 1, offset: 6534, flags: DIFlagBitField, extraData: i64 6528)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "host_request_flag", scope: !5226, file: !353, line: 425, baseType: !5, size: 1, offset: 6535, flags: DIFlagBitField, extraData: i64 6528)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_ep_out_aligned_size", scope: !5226, file: !353, line: 426, baseType: !5, size: 1, offset: 6536, flags: DIFlagBitField, extraData: i64 6528)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_altset_not_supp", scope: !5226, file: !353, line: 427, baseType: !5, size: 1, offset: 6537, flags: DIFlagBitField, extraData: i64 6528)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_stall_not_supp", scope: !5226, file: !353, line: 428, baseType: !5, size: 1, offset: 6538, flags: DIFlagBitField, extraData: i64 6528)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_zlp_not_supp", scope: !5226, file: !353, line: 429, baseType: !5, size: 1, offset: 6539, flags: DIFlagBitField, extraData: i64 6528)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_avoids_skb_reserve", scope: !5226, file: !353, line: 430, baseType: !5, size: 1, offset: 6540, flags: DIFlagBitField, extraData: i64 6528)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "is_selfpowered", scope: !5226, file: !353, line: 431, baseType: !5, size: 1, offset: 6541, flags: DIFlagBitField, extraData: i64 6528)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "deactivated", scope: !5226, file: !353, line: 432, baseType: !5, size: 1, offset: 6542, flags: DIFlagBitField, extraData: i64 6528)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !5226, file: !353, line: 433, baseType: !5, size: 1, offset: 6543, flags: DIFlagBitField, extraData: i64 6528)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5226, file: !353, line: 434, baseType: !5, size: 1, offset: 6544, flags: DIFlagBitField, extraData: i64 6528)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5226, file: !353, line: 435, baseType: !397, size: 32, offset: 6560)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "gadget_driver", scope: !293, file: !240, line: 1089, baseType: !5271, size: 64, offset: 5760)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "clks", scope: !293, file: !240, line: 1091, baseType: !5352, size: 64, offset: 5824)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_bulk_data", file: !240, line: 1091, flags: DIFlagFwdDecl)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "num_clks", scope: !293, file: !240, line: 1092, baseType: !397, size: 32, offset: 5888)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !293, file: !240, line: 1094, baseType: !5356, size: 64, offset: 5952)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !240, line: 1094, flags: DIFlagFwdDecl)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_phy", scope: !293, file: !240, line: 1096, baseType: !5359, size: 64, offset: 6016)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !148, line: 88, size: 2624, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5773, !5774, !5786, !5787, !5791, !5792, !5804, !5805, !5806, !5807, !5808, !5819, !5820, !5825, !5826, !5827, !5828, !5832, !5836, !5840, !5844, !5845, !5849, !5853, !5854}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5360, file: !148, line: 89, baseType: !552, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !5360, file: !148, line: 90, baseType: !385, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5360, file: !148, line: 91, baseType: !5, size: 32, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5360, file: !148, line: 93, baseType: !147, size: 32, offset: 160)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !5360, file: !148, line: 94, baseType: !153, size: 32, offset: 192)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !5360, file: !148, line: 96, baseType: !5368, size: 64, offset: 256)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg", file: !225, line: 16, size: 704, elements: !5370)
!5370 = !{!5371, !5372, !5467, !5468, !5754, !5755, !5756, !5760, !5764, !5768, !5772}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "default_a", scope: !5369, file: !225, line: 17, baseType: !338, size: 8)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5369, file: !225, line: 19, baseType: !5373, size: 64, offset: 64)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !161, line: 138, size: 6144, elements: !5375)
!5375 = !{!5376, !5377, !5378, !5454, !5455, !5456, !5457, !5463}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5374, file: !161, line: 139, baseType: !553, size: 5568)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5374, file: !161, line: 140, baseType: !397, size: 32, offset: 5568)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5374, file: !161, line: 141, baseType: !5379, size: 64, offset: 5632)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5381)
!5381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !161, line: 72, size: 704, elements: !5382)
!5382 = !{!5383, !5387, !5388, !5389, !5390, !5394, !5443, !5447, !5448, !5449, !5453}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5381, file: !161, line: 73, baseType: !5384, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!397, !5373}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5381, file: !161, line: 74, baseType: !5384, size: 64, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5381, file: !161, line: 75, baseType: !5384, size: 64, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5381, file: !161, line: 76, baseType: !5384, size: 64, offset: 192)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5381, file: !161, line: 77, baseType: !5391, size: 64, offset: 256)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!397, !5373, !160, !397}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5381, file: !161, line: 89, baseType: !5395, size: 64, offset: 320)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!397, !5373, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !161, line: 55, size: 896, elements: !5400)
!5400 = !{!5401, !5430}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5399, file: !161, line: 56, baseType: !5402, size: 896)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5403, line: 15, size: 896, elements: !5404)
!5403 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5404 = !{!5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5402, file: !5403, line: 24, baseType: !5, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5402, file: !5403, line: 36, baseType: !5, size: 32, offset: 32)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5402, file: !5403, line: 47, baseType: !5, size: 32, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5402, file: !5403, line: 59, baseType: !5, size: 32, offset: 96)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5402, file: !5403, line: 71, baseType: !5, size: 32, offset: 128)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5402, file: !5403, line: 81, baseType: !5, size: 32, offset: 160)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5402, file: !5403, line: 92, baseType: !5, size: 32, offset: 192)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5402, file: !5403, line: 100, baseType: !5, size: 32, offset: 224)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5402, file: !5403, line: 110, baseType: !5, size: 32, offset: 256)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5402, file: !5403, line: 121, baseType: !5, size: 32, offset: 288)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5402, file: !5403, line: 131, baseType: !5, size: 32, offset: 320)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5402, file: !5403, line: 143, baseType: !5, size: 32, offset: 352)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5402, file: !5403, line: 155, baseType: !5, size: 32, offset: 384)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5402, file: !5403, line: 168, baseType: !5, size: 32, offset: 416)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5402, file: !5403, line: 180, baseType: !5, size: 32, offset: 448)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5402, file: !5403, line: 188, baseType: !5, size: 32, offset: 480)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5402, file: !5403, line: 198, baseType: !5, size: 32, offset: 512)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5402, file: !5403, line: 208, baseType: !5, size: 32, offset: 544)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5402, file: !5403, line: 219, baseType: !5, size: 32, offset: 576)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5402, file: !5403, line: 230, baseType: !5, size: 32, offset: 608)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5402, file: !5403, line: 242, baseType: !5, size: 32, offset: 640)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5402, file: !5403, line: 253, baseType: !5, size: 32, offset: 672)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5402, file: !5403, line: 260, baseType: !289, size: 64, offset: 704)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5402, file: !5403, line: 267, baseType: !289, size: 64, offset: 768)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5402, file: !5403, line: 275, baseType: !340, size: 8, offset: 832)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5399, file: !161, line: 57, baseType: !5431, size: 352)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5432, line: 17, size: 352, elements: !5433)
!5432 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5433 = !{!5434, !5435, !5436, !5438, !5439, !5440, !5441, !5442}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5431, file: !5432, line: 25, baseType: !5, size: 32)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5431, file: !5432, line: 35, baseType: !5, size: 32, offset: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5431, file: !5432, line: 46, baseType: !5437, size: 128, offset: 64)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !1597)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5431, file: !5432, line: 56, baseType: !5437, size: 128, offset: 192)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5431, file: !5432, line: 64, baseType: !338, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5431, file: !5432, line: 73, baseType: !338, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5431, file: !5432, line: 82, baseType: !338, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5431, file: !5432, line: 92, baseType: !338, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5381, file: !161, line: 107, baseType: !5444, size: 64, offset: 384)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!397, !5373, !160, !397, !5398}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5381, file: !161, line: 109, baseType: !5384, size: 64, offset: 448)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5381, file: !161, line: 110, baseType: !5384, size: 64, offset: 512)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5381, file: !161, line: 111, baseType: !5450, size: 64, offset: 576)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{null, !5373}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5381, file: !161, line: 112, baseType: !939, size: 64, offset: 640)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5374, file: !161, line: 142, baseType: !1046, size: 192, offset: 5696)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5374, file: !161, line: 143, baseType: !397, size: 32, offset: 5888)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5374, file: !161, line: 144, baseType: !397, size: 32, offset: 5920)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5374, file: !161, line: 145, baseType: !5458, size: 96, offset: 5952)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !161, line: 121, size: 96, elements: !5459)
!5459 = !{!5460, !5461, !5462}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5458, file: !161, line: 122, baseType: !329, size: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5458, file: !161, line: 123, baseType: !329, size: 32, offset: 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5458, file: !161, line: 124, baseType: !160, size: 32, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5374, file: !161, line: 146, baseType: !5464, size: 64, offset: 6080)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5466, line: 155, flags: DIFlagFwdDecl)
!5466 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5369, file: !225, line: 21, baseType: !5359, size: 64, offset: 128)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5369, file: !225, line: 22, baseType: !5469, size: 64, offset: 192)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !184, line: 424, size: 960, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5490, !5749, !5750, !5751, !5752, !5753}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5470, file: !184, line: 425, baseType: !552, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5470, file: !184, line: 426, baseType: !552, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5470, file: !184, line: 427, baseType: !397, size: 32, offset: 128)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5470, file: !184, line: 428, baseType: !385, size: 64, offset: 192)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5470, file: !184, line: 429, baseType: !338, size: 8, offset: 256)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5470, file: !184, line: 433, baseType: !338, size: 8, offset: 264)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5470, file: !184, line: 434, baseType: !5, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5470, file: !184, line: 435, baseType: !5, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5470, file: !184, line: 436, baseType: !5, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5470, file: !184, line: 441, baseType: !5, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5470, file: !184, line: 442, baseType: !5, size: 32, offset: 288)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5470, file: !184, line: 444, baseType: !397, size: 32, offset: 320)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5470, file: !184, line: 446, baseType: !1046, size: 192, offset: 384)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5470, file: !184, line: 448, baseType: !5486, size: 128, offset: 576)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !184, line: 417, size: 128, elements: !5487)
!5487 = !{!5488}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5486, file: !184, line: 418, baseType: !5489, size: 128)
!5489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 128, elements: !1689)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5470, file: !184, line: 449, baseType: !5491, size: 64, offset: 704)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !184, line: 631, size: 10624, elements: !5493)
!5493 = !{!5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5504, !5505, !5507, !5508, !5509, !5531, !5532, !5549, !5610, !5692, !5693, !5695, !5696, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5731, !5732, !5733, !5738, !5745, !5746, !5747, !5748}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5492, file: !184, line: 632, baseType: !397, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5492, file: !184, line: 633, baseType: !3133, size: 128, offset: 32)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5492, file: !184, line: 634, baseType: !329, size: 32, offset: 160)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5492, file: !184, line: 635, baseType: !136, size: 32, offset: 192)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5492, file: !184, line: 636, baseType: !126, size: 32, offset: 224)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5492, file: !184, line: 637, baseType: !5, size: 32, offset: 256)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5492, file: !184, line: 638, baseType: !5, size: 32, offset: 288)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5492, file: !184, line: 640, baseType: !5502, size: 64, offset: 320)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !184, line: 474, flags: DIFlagFwdDecl)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5492, file: !184, line: 641, baseType: !397, size: 32, offset: 384)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5492, file: !184, line: 643, baseType: !5506, size: 64, offset: 416)
!5506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !1689)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5492, file: !184, line: 645, baseType: !5491, size: 64, offset: 512)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5492, file: !184, line: 646, baseType: !5469, size: 64, offset: 576)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5492, file: !184, line: 647, baseType: !5510, size: 640, offset: 640)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !184, line: 67, size: 640, elements: !5511)
!5511 = !{!5512, !5513, !5514, !5522, !5523, !5524, !5527, !5528, !5529, !5530}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5510, file: !184, line: 68, baseType: !400, size: 72)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5510, file: !184, line: 69, baseType: !468, size: 48, offset: 72)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5510, file: !184, line: 70, baseType: !5515, size: 64, offset: 120)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !127, line: 677, size: 64, elements: !5516)
!5516 = !{!5517, !5518, !5519, !5520}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5515, file: !127, line: 678, baseType: !339, size: 8)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5515, file: !127, line: 679, baseType: !339, size: 8, offset: 8)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5515, file: !127, line: 680, baseType: !407, size: 16, offset: 16)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5515, file: !127, line: 681, baseType: !5521, size: 32, offset: 32)
!5521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !408, line: 31, baseType: !330)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5510, file: !184, line: 71, baseType: !313, size: 128, offset: 192)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5510, file: !184, line: 72, baseType: !290, size: 64, offset: 320)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5510, file: !184, line: 73, baseType: !5525, size: 64, offset: 384)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !184, line: 48, flags: DIFlagFwdDecl)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5510, file: !184, line: 75, baseType: !1298, size: 64, offset: 448)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5510, file: !184, line: 76, baseType: !397, size: 32, offset: 512)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5510, file: !184, line: 77, baseType: !397, size: 32, offset: 544)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5510, file: !184, line: 78, baseType: !397, size: 32, offset: 576)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5492, file: !184, line: 649, baseType: !553, size: 5568, offset: 1280)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5492, file: !184, line: 651, baseType: !5533, size: 144, offset: 6848)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !127, line: 289, size: 144, elements: !5534)
!5534 = !{!5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5533, file: !127, line: 290, baseType: !339, size: 8)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5533, file: !127, line: 291, baseType: !339, size: 8, offset: 8)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5533, file: !127, line: 293, baseType: !407, size: 16, offset: 16)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5533, file: !127, line: 294, baseType: !339, size: 8, offset: 32)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5533, file: !127, line: 295, baseType: !339, size: 8, offset: 40)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5533, file: !127, line: 296, baseType: !339, size: 8, offset: 48)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5533, file: !127, line: 297, baseType: !339, size: 8, offset: 56)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5533, file: !127, line: 298, baseType: !407, size: 16, offset: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5533, file: !127, line: 299, baseType: !407, size: 16, offset: 80)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5533, file: !127, line: 300, baseType: !407, size: 16, offset: 96)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5533, file: !127, line: 301, baseType: !339, size: 8, offset: 112)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5533, file: !127, line: 302, baseType: !339, size: 8, offset: 120)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5533, file: !127, line: 303, baseType: !339, size: 8, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5533, file: !127, line: 304, baseType: !339, size: 8, offset: 136)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5492, file: !184, line: 652, baseType: !5550, size: 64, offset: 7040)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !184, line: 396, size: 384, elements: !5552)
!5552 = !{!5553, !5561, !5569, !5581, !5594, !5603}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5551, file: !184, line: 397, baseType: !5554, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !127, line: 844, size: 40, elements: !5556)
!5556 = !{!5557, !5558, !5559, !5560}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5555, file: !127, line: 845, baseType: !339, size: 8)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5555, file: !127, line: 846, baseType: !339, size: 8, offset: 8)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5555, file: !127, line: 848, baseType: !407, size: 16, offset: 16)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5555, file: !127, line: 849, baseType: !339, size: 8, offset: 32)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5551, file: !184, line: 400, baseType: !5562, size: 64, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !127, line: 895, size: 56, elements: !5564)
!5564 = !{!5565, !5566, !5567, !5568}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5563, file: !127, line: 896, baseType: !339, size: 8)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5563, file: !127, line: 897, baseType: !339, size: 8, offset: 8)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5563, file: !127, line: 898, baseType: !339, size: 8, offset: 16)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5563, file: !127, line: 899, baseType: !5521, size: 32, offset: 24)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5551, file: !184, line: 401, baseType: !5570, size: 64, offset: 128)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !127, line: 917, size: 80, elements: !5572)
!5572 = !{!5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5571, file: !127, line: 918, baseType: !339, size: 8)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5571, file: !127, line: 919, baseType: !339, size: 8, offset: 8)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5571, file: !127, line: 920, baseType: !339, size: 8, offset: 16)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5571, file: !127, line: 921, baseType: !339, size: 8, offset: 24)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5571, file: !127, line: 923, baseType: !407, size: 16, offset: 32)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5571, file: !127, line: 928, baseType: !339, size: 8, offset: 48)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5571, file: !127, line: 929, baseType: !339, size: 8, offset: 56)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5571, file: !127, line: 930, baseType: !407, size: 16, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5551, file: !184, line: 402, baseType: !5582, size: 64, offset: 192)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !127, line: 955, size: 128, elements: !5584)
!5584 = !{!5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5583, file: !127, line: 956, baseType: !339, size: 8)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5583, file: !127, line: 957, baseType: !339, size: 8, offset: 8)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5583, file: !127, line: 958, baseType: !339, size: 8, offset: 16)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5583, file: !127, line: 959, baseType: !339, size: 8, offset: 24)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5583, file: !127, line: 960, baseType: !5521, size: 32, offset: 32)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5583, file: !127, line: 963, baseType: !407, size: 16, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5583, file: !127, line: 967, baseType: !407, size: 16, offset: 80)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5583, file: !127, line: 968, baseType: !5593, size: 32, offset: 96)
!5593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5521, size: 32, elements: !2649)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5551, file: !184, line: 403, baseType: !5595, size: 64, offset: 256)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !127, line: 940, size: 160, elements: !5597)
!5597 = !{!5598, !5599, !5600, !5601, !5602}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5596, file: !127, line: 941, baseType: !339, size: 8)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5596, file: !127, line: 942, baseType: !339, size: 8, offset: 8)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5596, file: !127, line: 943, baseType: !339, size: 8, offset: 16)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5596, file: !127, line: 944, baseType: !339, size: 8, offset: 24)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5596, file: !127, line: 945, baseType: !4071, size: 128, offset: 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5551, file: !184, line: 404, baseType: !5604, size: 64, offset: 320)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !127, line: 1080, size: 24, elements: !5606)
!5606 = !{!5607, !5608, !5609}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5605, file: !127, line: 1081, baseType: !339, size: 8)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5605, file: !127, line: 1082, baseType: !339, size: 8, offset: 8)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5605, file: !127, line: 1083, baseType: !339, size: 8, offset: 16)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5492, file: !184, line: 653, baseType: !5611, size: 64, offset: 7104)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !184, line: 374, size: 5440, elements: !5613)
!5613 = !{!5614, !5625, !5626, !5639, !5681, !5690, !5691}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5612, file: !184, line: 375, baseType: !5615, size: 72)
!5615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !127, line: 349, size: 72, elements: !5616)
!5616 = !{!5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5615, file: !127, line: 350, baseType: !339, size: 8)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5615, file: !127, line: 351, baseType: !339, size: 8, offset: 8)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5615, file: !127, line: 353, baseType: !407, size: 16, offset: 16)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5615, file: !127, line: 354, baseType: !339, size: 8, offset: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5615, file: !127, line: 355, baseType: !339, size: 8, offset: 40)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5615, file: !127, line: 356, baseType: !339, size: 8, offset: 48)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5615, file: !127, line: 357, baseType: !339, size: 8, offset: 56)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5615, file: !127, line: 358, baseType: !339, size: 8, offset: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5612, file: !184, line: 377, baseType: !595, size: 64, offset: 128)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5612, file: !184, line: 381, baseType: !5627, size: 1024, offset: 192)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5628, size: 1024, elements: !2038)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !127, line: 783, size: 64, elements: !5630)
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5629, file: !127, line: 784, baseType: !339, size: 8)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5629, file: !127, line: 785, baseType: !339, size: 8, offset: 8)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5629, file: !127, line: 787, baseType: !339, size: 8, offset: 16)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5629, file: !127, line: 788, baseType: !339, size: 8, offset: 24)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5629, file: !127, line: 789, baseType: !339, size: 8, offset: 32)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5629, file: !127, line: 790, baseType: !339, size: 8, offset: 40)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5629, file: !127, line: 791, baseType: !339, size: 8, offset: 48)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5629, file: !127, line: 792, baseType: !339, size: 8, offset: 56)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5612, file: !184, line: 385, baseType: !5640, size: 2048, offset: 1216)
!5640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5641, size: 2048, elements: !1408)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !184, line: 232, size: 6272, elements: !5643)
!5643 = !{!5644, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5642, file: !184, line: 235, baseType: !5645, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !184, line: 82, size: 320, elements: !5647)
!5647 = !{!5648, !5660, !5661, !5662, !5664}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5646, file: !184, line: 83, baseType: !5649, size: 72)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !127, line: 389, size: 72, elements: !5650)
!5650 = !{!5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5649, file: !127, line: 390, baseType: !339, size: 8)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5649, file: !127, line: 391, baseType: !339, size: 8, offset: 8)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5649, file: !127, line: 393, baseType: !339, size: 8, offset: 16)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5649, file: !127, line: 394, baseType: !339, size: 8, offset: 24)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5649, file: !127, line: 395, baseType: !339, size: 8, offset: 32)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5649, file: !127, line: 396, baseType: !339, size: 8, offset: 40)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5649, file: !127, line: 397, baseType: !339, size: 8, offset: 48)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5649, file: !127, line: 398, baseType: !339, size: 8, offset: 56)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5649, file: !127, line: 399, baseType: !339, size: 8, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5646, file: !184, line: 85, baseType: !397, size: 32, offset: 96)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5646, file: !184, line: 86, baseType: !1298, size: 64, offset: 128)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5646, file: !184, line: 91, baseType: !5663, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5646, file: !184, line: 93, baseType: !595, size: 64, offset: 256)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5642, file: !184, line: 237, baseType: !5645, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5642, file: !184, line: 239, baseType: !5, size: 32, offset: 128)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5642, file: !184, line: 243, baseType: !5628, size: 64, offset: 192)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5642, file: !184, line: 245, baseType: !397, size: 32, offset: 256)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5642, file: !184, line: 247, baseType: !183, size: 32, offset: 288)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5642, file: !184, line: 248, baseType: !5, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5642, file: !184, line: 249, baseType: !5, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5642, file: !184, line: 250, baseType: !5, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5642, file: !184, line: 251, baseType: !5, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5642, file: !184, line: 252, baseType: !5, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5642, file: !184, line: 253, baseType: !5, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5642, file: !184, line: 254, baseType: !5, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5642, file: !184, line: 255, baseType: !5, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5642, file: !184, line: 257, baseType: !553, size: 5568, offset: 384)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5642, file: !184, line: 258, baseType: !552, size: 64, offset: 5952)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5642, file: !184, line: 259, baseType: !296, size: 256, offset: 6016)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5612, file: !184, line: 389, baseType: !5682, size: 2048, offset: 3264)
!5682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5683, size: 2048, elements: !1408)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !184, line: 322, size: 64, elements: !5685)
!5685 = !{!5686, !5687, !5688}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5684, file: !184, line: 323, baseType: !5, size: 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5684, file: !184, line: 324, baseType: !1902, size: 32, offset: 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5684, file: !184, line: 328, baseType: !5689, offset: 64)
!5689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5646, elements: !1421)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5612, file: !184, line: 391, baseType: !1298, size: 64, offset: 5312)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5612, file: !184, line: 392, baseType: !397, size: 32, offset: 5376)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5492, file: !184, line: 655, baseType: !5611, size: 64, offset: 7168)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5492, file: !184, line: 656, baseType: !5694, size: 1024, offset: 7232)
!5694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5663, size: 1024, elements: !2038)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5492, file: !184, line: 657, baseType: !5694, size: 1024, offset: 8256)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5492, file: !184, line: 659, baseType: !5697, size: 64, offset: 9280)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5492, file: !184, line: 661, baseType: !410, size: 16, offset: 9344)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5492, file: !184, line: 662, baseType: !338, size: 8, offset: 9360)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5492, file: !184, line: 663, baseType: !338, size: 8, offset: 9368)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5492, file: !184, line: 664, baseType: !338, size: 8, offset: 9376)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5492, file: !184, line: 666, baseType: !5, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5492, file: !184, line: 667, baseType: !5, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5492, file: !184, line: 668, baseType: !5, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5492, file: !184, line: 669, baseType: !5, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5492, file: !184, line: 670, baseType: !5, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5492, file: !184, line: 671, baseType: !5, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5492, file: !184, line: 672, baseType: !5, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5492, file: !184, line: 673, baseType: !5, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5492, file: !184, line: 674, baseType: !5, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5492, file: !184, line: 675, baseType: !5, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5492, file: !184, line: 676, baseType: !5, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5492, file: !184, line: 677, baseType: !5, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5492, file: !184, line: 678, baseType: !5, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5492, file: !184, line: 679, baseType: !397, size: 32, offset: 9408)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5492, file: !184, line: 682, baseType: !595, size: 64, offset: 9472)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5492, file: !184, line: 683, baseType: !595, size: 64, offset: 9536)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5492, file: !184, line: 684, baseType: !595, size: 64, offset: 9600)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5492, file: !184, line: 686, baseType: !313, size: 128, offset: 9664)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5492, file: !184, line: 688, baseType: !397, size: 32, offset: 9792)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5492, file: !184, line: 690, baseType: !329, size: 32, offset: 9824)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5492, file: !184, line: 691, baseType: !1112, size: 32, offset: 9856)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5492, file: !184, line: 693, baseType: !289, size: 64, offset: 9920)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5492, file: !184, line: 696, baseType: !289, size: 64, offset: 9984)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5492, file: !184, line: 698, baseType: !5, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5492, file: !184, line: 699, baseType: !5, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5492, file: !184, line: 700, baseType: !5, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5492, file: !184, line: 702, baseType: !5729, size: 64, offset: 10112)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !184, line: 28, flags: DIFlagFwdDecl)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5492, file: !184, line: 703, baseType: !397, size: 32, offset: 10176)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5492, file: !184, line: 704, baseType: !190, size: 32, offset: 10208)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5492, file: !184, line: 705, baseType: !5734, size: 64, offset: 10240)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !184, line: 502, size: 64, elements: !5735)
!5735 = !{!5736, !5737}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5734, file: !184, line: 506, baseType: !5, size: 32)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5734, file: !184, line: 512, baseType: !397, size: 32, offset: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5492, file: !184, line: 706, baseType: !5739, size: 128, offset: 10304)
!5739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !184, line: 522, size: 128, elements: !5740)
!5740 = !{!5741, !5742, !5743, !5744}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5739, file: !184, line: 529, baseType: !5, size: 32)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5739, file: !184, line: 535, baseType: !5, size: 32, offset: 32)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5739, file: !184, line: 545, baseType: !5, size: 32, offset: 64)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5739, file: !184, line: 551, baseType: !397, size: 32, offset: 96)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5492, file: !184, line: 707, baseType: !5739, size: 128, offset: 10432)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5492, file: !184, line: 708, baseType: !5, size: 32, offset: 10560)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5492, file: !184, line: 710, baseType: !1223, size: 16, offset: 10592)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5492, file: !184, line: 711, baseType: !5, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5470, file: !184, line: 450, baseType: !5469, size: 64, offset: 768)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5470, file: !184, line: 452, baseType: !397, size: 32, offset: 832)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5470, file: !184, line: 459, baseType: !397, size: 32, offset: 864)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5470, file: !184, line: 460, baseType: !397, size: 32, offset: 896)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5470, file: !184, line: 462, baseType: !5, size: 32, offset: 928)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !5369, file: !225, line: 23, baseType: !5225, size: 64, offset: 256)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5369, file: !225, line: 25, baseType: !195, size: 32, offset: 320)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "set_host", scope: !5369, file: !225, line: 28, baseType: !5757, size: 64, offset: 384)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!397, !5368, !5469}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "set_peripheral", scope: !5369, file: !225, line: 31, baseType: !5761, size: 64, offset: 448)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!397, !5368, !5225}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5369, file: !225, line: 35, baseType: !5765, size: 64, offset: 512)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!397, !5368, !455}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "start_srp", scope: !5369, file: !225, line: 38, baseType: !5769, size: 64, offset: 576)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!397, !5368}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "start_hnp", scope: !5369, file: !225, line: 41, baseType: !5769, size: 64, offset: 640)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "io_dev", scope: !5360, file: !148, line: 98, baseType: !552, size: 64, offset: 320)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "io_ops", scope: !5360, file: !148, line: 99, baseType: !5775, size: 64, offset: 384)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_io_ops", file: !148, line: 72, size: 128, elements: !5777)
!5777 = !{!5778, !5782}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5776, file: !148, line: 73, baseType: !5779, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!397, !5359, !329}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5776, file: !148, line: 74, baseType: !5783, size: 64, offset: 64)
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5784, size: 64)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{!397, !5359, !329, !329}
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "io_priv", scope: !5360, file: !148, line: 100, baseType: !290, size: 64, offset: 448)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !5360, file: !148, line: 103, baseType: !5788, size: 64, offset: 512)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !5790, line: 166, flags: DIFlagFwdDecl)
!5790 = !DIFile(filename: "./include/linux/extcon.h", directory: "/home/lizy2001/genbc/linux")
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "id_edev", scope: !5360, file: !148, line: 104, baseType: !5788, size: 64, offset: 576)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_nb", scope: !5360, file: !148, line: 105, baseType: !5793, size: 192, offset: 640)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5794, line: 54, size: 192, elements: !5795)
!5794 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!5795 = !{!5796, !5802, !5803}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5793, file: !5794, line: 55, baseType: !5797, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5794, line: 51, baseType: !5798)
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!397, !5801, !289, !290}
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5793, file: !5794, line: 56, baseType: !5801, size: 64, offset: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5793, file: !5794, line: 57, baseType: !397, size: 32, offset: 128)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "id_nb", scope: !5360, file: !148, line: 106, baseType: !5793, size: 192, offset: 832)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "type_nb", scope: !5360, file: !148, line: 107, baseType: !5793, size: 192, offset: 1024)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "chg_type", scope: !5360, file: !148, line: 110, baseType: !211, size: 32, offset: 1216)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "chg_state", scope: !5360, file: !148, line: 111, baseType: !219, size: 32, offset: 1248)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "chg_cur", scope: !5360, file: !148, line: 112, baseType: !5809, size: 256, offset: 1280)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_charger_current", file: !148, line: 77, size: 256, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_min", scope: !5809, file: !148, line: 78, baseType: !5, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_max", scope: !5809, file: !148, line: 79, baseType: !5, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_min", scope: !5809, file: !148, line: 80, baseType: !5, size: 32, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_max", scope: !5809, file: !148, line: 81, baseType: !5, size: 32, offset: 96)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_min", scope: !5809, file: !148, line: 82, baseType: !5, size: 32, offset: 128)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_max", scope: !5809, file: !148, line: 83, baseType: !5, size: 32, offset: 160)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "aca_min", scope: !5809, file: !148, line: 84, baseType: !5, size: 32, offset: 192)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "aca_max", scope: !5809, file: !148, line: 85, baseType: !5, size: 32, offset: 224)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "chg_work", scope: !5360, file: !148, line: 113, baseType: !296, size: 256, offset: 1536)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !5360, file: !148, line: 116, baseType: !5821, size: 64, offset: 1792)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !5794, line: 60, size: 64, elements: !5822)
!5822 = !{!5823, !5824}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5821, file: !5794, line: 61, baseType: !544)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5821, file: !5794, line: 62, baseType: !5801, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !5360, file: !148, line: 119, baseType: !1223, size: 16, offset: 1856)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "port_change", scope: !5360, file: !148, line: 120, baseType: !1223, size: 16, offset: 1872)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5360, file: !148, line: 123, baseType: !313, size: 128, offset: 1920)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5360, file: !148, line: 126, baseType: !5829, size: 64, offset: 2048)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5830, size: 64)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!397, !5359}
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5360, file: !148, line: 127, baseType: !5833, size: 64, offset: 2112)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{null, !5359}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5360, file: !148, line: 130, baseType: !5837, size: 64, offset: 2176)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!397, !5359, !397}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !5360, file: !148, line: 133, baseType: !5841, size: 64, offset: 2240)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!397, !5359, !5}
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "set_suspend", scope: !5360, file: !148, line: 137, baseType: !5837, size: 64, offset: 2304)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup", scope: !5360, file: !148, line: 145, baseType: !5846, size: 64, offset: 2368)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!397, !5359, !455}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connect", scope: !5360, file: !148, line: 148, baseType: !5850, size: 64, offset: 2432)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!397, !5359, !126}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "notify_disconnect", scope: !5360, file: !148, line: 150, baseType: !5850, size: 64, offset: 2496)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "charger_detect", scope: !5360, file: !148, line: 157, baseType: !5855, size: 64, offset: 2560)
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!211, !5359}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_phy", scope: !293, file: !240, line: 1097, baseType: !5359, size: 64, offset: 6080)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_generic_phy", scope: !293, file: !240, line: 1099, baseType: !5373, size: 64, offset: 6144)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_generic_phy", scope: !293, file: !240, line: 1100, baseType: !5373, size: 64, offset: 6208)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "phys_ready", scope: !293, file: !240, line: 1102, baseType: !455, size: 8, offset: 6272)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "ulpi", scope: !293, file: !240, line: 1104, baseType: !5863, size: 64, offset: 6336)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi", file: !5865, line: 7, flags: DIFlagFwdDecl)
!5865 = !DIFile(filename: "./include/linux/ulpi/interface.h", directory: "/home/lizy2001/genbc/linux")
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "ulpi_ready", scope: !293, file: !240, line: 1105, baseType: !455, size: 8, offset: 6400)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !293, file: !240, line: 1107, baseType: !290, size: 64, offset: 6464)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "regs_size", scope: !293, file: !240, line: 1108, baseType: !640, size: 64, offset: 6528)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "dr_mode", scope: !293, file: !240, line: 1110, baseType: !224, size: 32, offset: 6592)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "current_dr_role", scope: !293, file: !240, line: 1111, baseType: !329, size: 32, offset: 6624)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "desired_dr_role", scope: !293, file: !240, line: 1112, baseType: !329, size: 32, offset: 6656)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !293, file: !240, line: 1113, baseType: !5788, size: 64, offset: 6720)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "edev_nb", scope: !293, file: !240, line: 1114, baseType: !5793, size: 192, offset: 6784)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "hsphy_mode", scope: !293, file: !240, line: 1115, baseType: !231, size: 32, offset: 6976)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "role_sw", scope: !293, file: !240, line: 1116, baseType: !5876, size: 64, offset: 7040)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch", file: !275, line: 8, flags: DIFlagFwdDecl)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "role_switch_default_mode", scope: !293, file: !240, line: 1117, baseType: !224, size: 32, offset: 7104)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "fladj", scope: !293, file: !240, line: 1119, baseType: !329, size: 32, offset: 7136)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "irq_gadget", scope: !293, file: !240, line: 1120, baseType: !329, size: 32, offset: 7168)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "otg_irq", scope: !293, file: !240, line: 1121, baseType: !329, size: 32, offset: 7200)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "current_otg_role", scope: !293, file: !240, line: 1122, baseType: !329, size: 32, offset: 7232)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "desired_otg_role", scope: !293, file: !240, line: 1123, baseType: !329, size: 32, offset: 7264)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "otg_restart_host", scope: !293, file: !240, line: 1124, baseType: !455, size: 8, offset: 7296)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scratch", scope: !293, file: !240, line: 1125, baseType: !329, size: 32, offset: 7328)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "u1u2", scope: !293, file: !240, line: 1126, baseType: !329, size: 32, offset: 7360)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_speed", scope: !293, file: !240, line: 1127, baseType: !329, size: 32, offset: 7392)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !293, file: !240, line: 1129, baseType: !329, size: 32, offset: 7424)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !293, file: !240, line: 1135, baseType: !329, size: 32, offset: 7456)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "version_type", scope: !293, file: !240, line: 1173, baseType: !329, size: 32, offset: 7488)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_next_event", scope: !293, file: !240, line: 1183, baseType: !239, size: 32, offset: 7520)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "ep0state", scope: !293, file: !240, line: 1184, baseType: !246, size: 32, offset: 7552)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !293, file: !240, line: 1185, baseType: !252, size: 32, offset: 7584)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "u2sel", scope: !293, file: !240, line: 1187, baseType: !1223, size: 16, offset: 7616)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "u2pel", scope: !293, file: !240, line: 1188, baseType: !1223, size: 16, offset: 7632)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "u1sel", scope: !293, file: !240, line: 1189, baseType: !338, size: 8, offset: 7648)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "u1pel", scope: !293, file: !240, line: 1190, baseType: !338, size: 8, offset: 7656)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !293, file: !240, line: 1192, baseType: !338, size: 8, offset: 7664)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "num_eps", scope: !293, file: !240, line: 1194, baseType: !338, size: 8, offset: 7672)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams", scope: !293, file: !240, line: 1196, baseType: !5901, size: 288, offset: 7680)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dwc3_hwparams", file: !240, line: 843, size: 288, elements: !5902)
!5902 = !{!5903, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams0", scope: !5901, file: !240, line: 844, baseType: !329, size: 32)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams1", scope: !5901, file: !240, line: 845, baseType: !329, size: 32, offset: 32)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams2", scope: !5901, file: !240, line: 846, baseType: !329, size: 32, offset: 64)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams3", scope: !5901, file: !240, line: 847, baseType: !329, size: 32, offset: 96)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams4", scope: !5901, file: !240, line: 848, baseType: !329, size: 32, offset: 128)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams5", scope: !5901, file: !240, line: 849, baseType: !329, size: 32, offset: 160)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams6", scope: !5901, file: !240, line: 850, baseType: !329, size: 32, offset: 192)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams7", scope: !5901, file: !240, line: 851, baseType: !329, size: 32, offset: 224)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "hwparams8", scope: !5901, file: !240, line: 852, baseType: !329, size: 32, offset: 256)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !293, file: !240, line: 1197, baseType: !700, size: 64, offset: 8000)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "regset", scope: !293, file: !240, line: 1198, baseType: !5914, size: 64, offset: 8064)
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5915, size: 64)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_regset32", file: !5916, line: 34, size: 256, elements: !5917)
!5916 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/lizy2001/genbc/linux")
!5917 = !{!5918, !5925, !5926, !5927}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5915, file: !5916, line: 35, baseType: !5919, size: 64)
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5921)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_reg32", file: !5916, line: 29, size: 128, elements: !5922)
!5922 = !{!5923, !5924}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5921, file: !5916, line: 30, baseType: !595, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5921, file: !5916, line: 31, baseType: !289, size: 64, offset: 64)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "nregs", scope: !5915, file: !5916, line: 36, baseType: !397, size: 32, offset: 64)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5915, file: !5916, line: 37, baseType: !290, size: 64, offset: 128)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5915, file: !5916, line: 38, baseType: !552, size: 64, offset: 192)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_lsp_select", scope: !293, file: !240, line: 1200, baseType: !329, size: 32, offset: 8128)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode", scope: !293, file: !240, line: 1202, baseType: !338, size: 8, offset: 8160)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode_nr", scope: !293, file: !240, line: 1203, baseType: !338, size: 8, offset: 8168)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_nyet_threshold", scope: !293, file: !240, line: 1204, baseType: !338, size: 8, offset: 8176)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "hird_threshold", scope: !293, file: !240, line: 1205, baseType: !338, size: 8, offset: 8184)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "rx_thr_num_pkt_prd", scope: !293, file: !240, line: 1206, baseType: !338, size: 8, offset: 8192)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "rx_max_burst_prd", scope: !293, file: !240, line: 1207, baseType: !338, size: 8, offset: 8200)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "tx_thr_num_pkt_prd", scope: !293, file: !240, line: 1208, baseType: !338, size: 8, offset: 8208)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "tx_max_burst_prd", scope: !293, file: !240, line: 1209, baseType: !338, size: 8, offset: 8216)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "hsphy_interface", scope: !293, file: !240, line: 1211, baseType: !385, size: 64, offset: 8256)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !293, file: !240, line: 1213, baseType: !5, size: 1, offset: 8320, flags: DIFlagBitField, extraData: i64 8320)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_status", scope: !293, file: !240, line: 1214, baseType: !5, size: 1, offset: 8321, flags: DIFlagBitField, extraData: i64 8320)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_bounced", scope: !293, file: !240, line: 1215, baseType: !5, size: 1, offset: 8322, flags: DIFlagBitField, extraData: i64 8320)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_expect_in", scope: !293, file: !240, line: 1216, baseType: !5, size: 1, offset: 8323, flags: DIFlagBitField, extraData: i64 8320)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "has_hibernation", scope: !293, file: !240, line: 1217, baseType: !5, size: 1, offset: 8324, flags: DIFlagBitField, extraData: i64 8320)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev_is_parent", scope: !293, file: !240, line: 1218, baseType: !5, size: 1, offset: 8325, flags: DIFlagBitField, extraData: i64 8320)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpm_erratum", scope: !293, file: !240, line: 1219, baseType: !5, size: 1, offset: 8326, flags: DIFlagBitField, extraData: i64 8320)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "is_utmi_l1_suspend", scope: !293, file: !240, line: 1220, baseType: !5, size: 1, offset: 8327, flags: DIFlagBitField, extraData: i64 8320)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "is_fpga", scope: !293, file: !240, line: 1221, baseType: !5, size: 1, offset: 8328, flags: DIFlagBitField, extraData: i64 8320)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !293, file: !240, line: 1222, baseType: !5, size: 1, offset: 8329, flags: DIFlagBitField, extraData: i64 8320)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "pullups_connected", scope: !293, file: !240, line: 1223, baseType: !5, size: 1, offset: 8330, flags: DIFlagBitField, extraData: i64 8320)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet_pending", scope: !293, file: !240, line: 1224, baseType: !5, size: 1, offset: 8331, flags: DIFlagBitField, extraData: i64 8320)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "three_stage_setup", scope: !293, file: !240, line: 1225, baseType: !5, size: 1, offset: 8332, flags: DIFlagBitField, extraData: i64 8320)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "dis_start_transfer_quirk", scope: !293, file: !240, line: 1226, baseType: !5, size: 1, offset: 8333, flags: DIFlagBitField, extraData: i64 8320)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_capable", scope: !293, file: !240, line: 1227, baseType: !5, size: 1, offset: 8334, flags: DIFlagBitField, extraData: i64 8320)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_lpm_disable", scope: !293, file: !240, line: 1228, baseType: !5, size: 1, offset: 8335, flags: DIFlagBitField, extraData: i64 8320)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "disable_scramble_quirk", scope: !293, file: !240, line: 1230, baseType: !5, size: 1, offset: 8336, flags: DIFlagBitField, extraData: i64 8320)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "u2exit_lfps_quirk", scope: !293, file: !240, line: 1231, baseType: !5, size: 1, offset: 8337, flags: DIFlagBitField, extraData: i64 8320)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "u2ss_inp3_quirk", scope: !293, file: !240, line: 1232, baseType: !5, size: 1, offset: 8338, flags: DIFlagBitField, extraData: i64 8320)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "req_p1p2p3_quirk", scope: !293, file: !240, line: 1233, baseType: !5, size: 1, offset: 8339, flags: DIFlagBitField, extraData: i64 8320)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "del_p1p2p3_quirk", scope: !293, file: !240, line: 1234, baseType: !5, size: 1, offset: 8340, flags: DIFlagBitField, extraData: i64 8320)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "del_phy_power_chg_quirk", scope: !293, file: !240, line: 1235, baseType: !5, size: 1, offset: 8341, flags: DIFlagBitField, extraData: i64 8320)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "lfps_filter_quirk", scope: !293, file: !240, line: 1236, baseType: !5, size: 1, offset: 8342, flags: DIFlagBitField, extraData: i64 8320)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "rx_detect_poll_quirk", scope: !293, file: !240, line: 1237, baseType: !5, size: 1, offset: 8343, flags: DIFlagBitField, extraData: i64 8320)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "dis_u3_susphy_quirk", scope: !293, file: !240, line: 1238, baseType: !5, size: 1, offset: 8344, flags: DIFlagBitField, extraData: i64 8320)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "dis_u2_susphy_quirk", scope: !293, file: !240, line: 1239, baseType: !5, size: 1, offset: 8345, flags: DIFlagBitField, extraData: i64 8320)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "dis_enblslpm_quirk", scope: !293, file: !240, line: 1240, baseType: !5, size: 1, offset: 8346, flags: DIFlagBitField, extraData: i64 8320)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "dis_u1_entry_quirk", scope: !293, file: !240, line: 1241, baseType: !5, size: 1, offset: 8347, flags: DIFlagBitField, extraData: i64 8320)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "dis_u2_entry_quirk", scope: !293, file: !240, line: 1242, baseType: !5, size: 1, offset: 8348, flags: DIFlagBitField, extraData: i64 8320)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "dis_rxdet_inp3_quirk", scope: !293, file: !240, line: 1243, baseType: !5, size: 1, offset: 8349, flags: DIFlagBitField, extraData: i64 8320)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "dis_u2_freeclk_exists_quirk", scope: !293, file: !240, line: 1244, baseType: !5, size: 1, offset: 8350, flags: DIFlagBitField, extraData: i64 8320)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "dis_del_phy_power_chg_quirk", scope: !293, file: !240, line: 1245, baseType: !5, size: 1, offset: 8351, flags: DIFlagBitField, extraData: i64 8320)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "dis_tx_ipgap_linecheck_quirk", scope: !293, file: !240, line: 1246, baseType: !5, size: 1, offset: 8352, flags: DIFlagBitField, extraData: i64 8320)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "parkmode_disable_ss_quirk", scope: !293, file: !240, line: 1247, baseType: !5, size: 1, offset: 8353, flags: DIFlagBitField, extraData: i64 8320)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "tx_de_emphasis_quirk", scope: !293, file: !240, line: 1249, baseType: !5, size: 1, offset: 8354, flags: DIFlagBitField, extraData: i64 8320)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "tx_de_emphasis", scope: !293, file: !240, line: 1250, baseType: !5, size: 2, offset: 8355, flags: DIFlagBitField, extraData: i64 8320)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "dis_metastability_quirk", scope: !293, file: !240, line: 1252, baseType: !5, size: 1, offset: 8357, flags: DIFlagBitField, extraData: i64 8320)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "dis_split_quirk", scope: !293, file: !240, line: 1254, baseType: !5, size: 1, offset: 8358, flags: DIFlagBitField, extraData: i64 8320)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "imod_interval", scope: !293, file: !240, line: 1256, baseType: !1223, size: 16, offset: 8368)
!5977 = !{!"rsp"}
!5978 = !{i32 7, !"Dwarf Version", i32 4}
!5979 = !{i32 2, !"Debug Info Version", i32 3}
!5980 = !{i32 1, !"wchar_size", i32 2}
!5981 = !{i32 1, !"Code Model", i32 2}
!5982 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5983 = distinct !DISubprogram(name: "dwc3_otg_init", scope: !1, file: !1, line: 167, type: !5984, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{null, !292}
!5986 = !DILocalVariable(name: "dwc", arg: 1, scope: !5983, file: !1, line: 167, type: !292)
!5987 = !DILocation(line: 167, column: 33, scope: !5983)
!5988 = !DILocalVariable(name: "reg", scope: !5983, file: !1, line: 169, type: !329)
!5989 = !DILocation(line: 169, column: 6, scope: !5983)
!5990 = !DILocation(line: 176, column: 18, scope: !5983)
!5991 = !DILocation(line: 176, column: 2, scope: !5983)
!5992 = !DILocation(line: 178, column: 19, scope: !5983)
!5993 = !DILocation(line: 178, column: 24, scope: !5983)
!5994 = !DILocation(line: 178, column: 8, scope: !5983)
!5995 = !DILocation(line: 178, column: 6, scope: !5983)
!5996 = !DILocation(line: 179, column: 6, scope: !5983)
!5997 = !DILocation(line: 180, column: 14, scope: !5983)
!5998 = !DILocation(line: 180, column: 19, scope: !5983)
!5999 = !DILocation(line: 180, column: 46, scope: !5983)
!6000 = !DILocation(line: 180, column: 2, scope: !5983)
!6001 = !DILocation(line: 183, column: 20, scope: !5983)
!6002 = !DILocation(line: 183, column: 2, scope: !5983)
!6003 = !DILocation(line: 184, column: 1, scope: !5983)
!6004 = distinct !DISubprogram(name: "dwc3_readl", scope: !6005, file: !6005, line: 19, type: !6006, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6005 = !DIFile(filename: "drivers/usb/dwc3/io.h", directory: "/home/lizy2001/genbc/linux")
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!329, !290, !329}
!6008 = !DILocalVariable(name: "base", arg: 1, scope: !6004, file: !6005, line: 19, type: !290)
!6009 = !DILocation(line: 19, column: 44, scope: !6004)
!6010 = !DILocalVariable(name: "offset", arg: 2, scope: !6004, file: !6005, line: 19, type: !329)
!6011 = !DILocation(line: 19, column: 54, scope: !6004)
!6012 = !DILocalVariable(name: "value", scope: !6004, file: !6005, line: 21, type: !329)
!6013 = !DILocation(line: 21, column: 6, scope: !6004)
!6014 = !DILocation(line: 28, column: 16, scope: !6004)
!6015 = !DILocation(line: 28, column: 23, scope: !6004)
!6016 = !DILocation(line: 28, column: 21, scope: !6004)
!6017 = !DILocation(line: 28, column: 30, scope: !6004)
!6018 = !DILocation(line: 28, column: 10, scope: !6004)
!6019 = !DILocation(line: 28, column: 8, scope: !6004)
!6020 = !DILocation(line: 35, column: 19, scope: !6004)
!6021 = !DILocation(line: 35, column: 24, scope: !6004)
!6022 = !DILocation(line: 35, column: 51, scope: !6004)
!6023 = !DILocation(line: 35, column: 59, scope: !6004)
!6024 = !DILocation(line: 35, column: 2, scope: !6004)
!6025 = !DILocation(line: 37, column: 9, scope: !6004)
!6026 = !DILocation(line: 37, column: 2, scope: !6004)
!6027 = distinct !DISubprogram(name: "dwc3_writel", scope: !6005, file: !6005, line: 40, type: !6028, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{null, !290, !329, !329}
!6030 = !DILocalVariable(name: "base", arg: 1, scope: !6027, file: !6005, line: 40, type: !290)
!6031 = !DILocation(line: 40, column: 46, scope: !6027)
!6032 = !DILocalVariable(name: "offset", arg: 2, scope: !6027, file: !6005, line: 40, type: !329)
!6033 = !DILocation(line: 40, column: 56, scope: !6027)
!6034 = !DILocalVariable(name: "value", arg: 3, scope: !6027, file: !6005, line: 40, type: !329)
!6035 = !DILocation(line: 40, column: 68, scope: !6027)
!6036 = !DILocation(line: 47, column: 9, scope: !6027)
!6037 = !DILocation(line: 47, column: 16, scope: !6027)
!6038 = !DILocation(line: 47, column: 23, scope: !6027)
!6039 = !DILocation(line: 47, column: 21, scope: !6027)
!6040 = !DILocation(line: 47, column: 30, scope: !6027)
!6041 = !DILocation(line: 47, column: 2, scope: !6027)
!6042 = !DILocation(line: 54, column: 20, scope: !6027)
!6043 = !DILocation(line: 54, column: 25, scope: !6027)
!6044 = !DILocation(line: 54, column: 52, scope: !6027)
!6045 = !DILocation(line: 54, column: 60, scope: !6027)
!6046 = !DILocation(line: 54, column: 2, scope: !6027)
!6047 = !DILocation(line: 55, column: 1, scope: !6027)
!6048 = distinct !DISubprogram(name: "dwc3_otgregs_init", scope: !1, file: !1, line: 93, type: !5984, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6049 = !DILocalVariable(name: "dwc", arg: 1, scope: !6048, file: !1, line: 93, type: !292)
!6050 = !DILocation(line: 93, column: 44, scope: !6048)
!6051 = !DILocalVariable(name: "reg", scope: !6048, file: !1, line: 95, type: !329)
!6052 = !DILocation(line: 95, column: 6, scope: !6048)
!6053 = !DILocation(line: 103, column: 19, scope: !6048)
!6054 = !DILocation(line: 103, column: 24, scope: !6048)
!6055 = !DILocation(line: 103, column: 8, scope: !6048)
!6056 = !DILocation(line: 103, column: 6, scope: !6048)
!6057 = !DILocation(line: 104, column: 6, scope: !6048)
!6058 = !DILocation(line: 105, column: 14, scope: !6048)
!6059 = !DILocation(line: 105, column: 19, scope: !6048)
!6060 = !DILocation(line: 105, column: 36, scope: !6048)
!6061 = !DILocation(line: 105, column: 2, scope: !6048)
!6062 = !DILocation(line: 108, column: 19, scope: !6048)
!6063 = !DILocation(line: 108, column: 24, scope: !6048)
!6064 = !DILocation(line: 108, column: 8, scope: !6048)
!6065 = !DILocation(line: 108, column: 6, scope: !6048)
!6066 = !DILocation(line: 109, column: 6, scope: !6048)
!6067 = !DILocation(line: 110, column: 14, scope: !6048)
!6068 = !DILocation(line: 110, column: 19, scope: !6048)
!6069 = !DILocation(line: 110, column: 36, scope: !6048)
!6070 = !DILocation(line: 110, column: 2, scope: !6048)
!6071 = !DILocation(line: 117, column: 19, scope: !6048)
!6072 = !DILocation(line: 117, column: 24, scope: !6048)
!6073 = !DILocation(line: 117, column: 8, scope: !6048)
!6074 = !DILocation(line: 117, column: 6, scope: !6048)
!6075 = !DILocation(line: 118, column: 6, scope: !6048)
!6076 = !DILocation(line: 119, column: 14, scope: !6048)
!6077 = !DILocation(line: 119, column: 19, scope: !6048)
!6078 = !DILocation(line: 119, column: 36, scope: !6048)
!6079 = !DILocation(line: 119, column: 2, scope: !6048)
!6080 = !DILocation(line: 121, column: 24, scope: !6048)
!6081 = !DILocation(line: 121, column: 2, scope: !6048)
!6082 = !DILocation(line: 123, column: 26, scope: !6048)
!6083 = !DILocation(line: 123, column: 2, scope: !6048)
!6084 = !DILocation(line: 125, column: 25, scope: !6048)
!6085 = !DILocation(line: 125, column: 2, scope: !6048)
!6086 = !DILocation(line: 130, column: 19, scope: !6048)
!6087 = !DILocation(line: 130, column: 24, scope: !6048)
!6088 = !DILocation(line: 130, column: 8, scope: !6048)
!6089 = !DILocation(line: 130, column: 6, scope: !6048)
!6090 = !DILocation(line: 131, column: 6, scope: !6048)
!6091 = !DILocation(line: 132, column: 6, scope: !6048)
!6092 = !DILocation(line: 134, column: 14, scope: !6048)
!6093 = !DILocation(line: 134, column: 19, scope: !6048)
!6094 = !DILocation(line: 134, column: 36, scope: !6048)
!6095 = !DILocation(line: 134, column: 2, scope: !6048)
!6096 = !DILocation(line: 135, column: 1, scope: !6048)
!6097 = distinct !DISubprogram(name: "dwc3_otg_exit", scope: !1, file: !1, line: 186, type: !5984, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6098 = !DILocalVariable(name: "dwc", arg: 1, scope: !6097, file: !1, line: 186, type: !292)
!6099 = !DILocation(line: 186, column: 33, scope: !6097)
!6100 = !DILocation(line: 189, column: 26, scope: !6097)
!6101 = !DILocation(line: 189, column: 2, scope: !6097)
!6102 = !DILocation(line: 191, column: 24, scope: !6097)
!6103 = !DILocation(line: 191, column: 2, scope: !6097)
!6104 = !DILocation(line: 192, column: 1, scope: !6097)
!6105 = distinct !DISubprogram(name: "dwc3_otg_disable_events", scope: !1, file: !1, line: 19, type: !6106, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{null, !292, !329}
!6108 = !DILocalVariable(name: "dwc", arg: 1, scope: !6105, file: !1, line: 19, type: !292)
!6109 = !DILocation(line: 19, column: 50, scope: !6105)
!6110 = !DILocalVariable(name: "disable_mask", arg: 2, scope: !6105, file: !1, line: 19, type: !329)
!6111 = !DILocation(line: 19, column: 59, scope: !6105)
!6112 = !DILocalVariable(name: "reg", scope: !6105, file: !1, line: 21, type: !329)
!6113 = !DILocation(line: 21, column: 6, scope: !6105)
!6114 = !DILocation(line: 21, column: 23, scope: !6105)
!6115 = !DILocation(line: 21, column: 28, scope: !6105)
!6116 = !DILocation(line: 21, column: 12, scope: !6105)
!6117 = !DILocation(line: 23, column: 11, scope: !6105)
!6118 = !DILocation(line: 23, column: 9, scope: !6105)
!6119 = !DILocation(line: 23, column: 6, scope: !6105)
!6120 = !DILocation(line: 24, column: 14, scope: !6105)
!6121 = !DILocation(line: 24, column: 19, scope: !6105)
!6122 = !DILocation(line: 24, column: 38, scope: !6105)
!6123 = !DILocation(line: 24, column: 2, scope: !6105)
!6124 = !DILocation(line: 25, column: 1, scope: !6105)
!6125 = distinct !DISubprogram(name: "dwc3_otg_clear_events", scope: !1, file: !1, line: 35, type: !5984, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6126 = !DILocalVariable(name: "dwc", arg: 1, scope: !6125, file: !1, line: 35, type: !292)
!6127 = !DILocation(line: 35, column: 48, scope: !6125)
!6128 = !DILocalVariable(name: "reg", scope: !6125, file: !1, line: 37, type: !329)
!6129 = !DILocation(line: 37, column: 6, scope: !6125)
!6130 = !DILocation(line: 37, column: 23, scope: !6125)
!6131 = !DILocation(line: 37, column: 28, scope: !6125)
!6132 = !DILocation(line: 37, column: 12, scope: !6125)
!6133 = !DILocation(line: 39, column: 14, scope: !6125)
!6134 = !DILocation(line: 39, column: 19, scope: !6125)
!6135 = !DILocation(line: 39, column: 38, scope: !6125)
!6136 = !DILocation(line: 39, column: 2, scope: !6125)
!6137 = !DILocation(line: 40, column: 1, scope: !6125)
!6138 = distinct !DISubprogram(name: "dwc3_otg_host_init", scope: !1, file: !1, line: 195, type: !5984, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6139 = !DILocalVariable(name: "dwc", arg: 1, scope: !6138, file: !1, line: 195, type: !292)
!6140 = !DILocation(line: 195, column: 38, scope: !6138)
!6141 = !DILocalVariable(name: "reg", scope: !6138, file: !1, line: 197, type: !329)
!6142 = !DILocation(line: 197, column: 6, scope: !6138)
!6143 = !DILocation(line: 206, column: 19, scope: !6138)
!6144 = !DILocation(line: 206, column: 24, scope: !6138)
!6145 = !DILocation(line: 206, column: 8, scope: !6138)
!6146 = !DILocation(line: 206, column: 6, scope: !6138)
!6147 = !DILocation(line: 207, column: 6, scope: !6138)
!6148 = !DILocation(line: 209, column: 14, scope: !6138)
!6149 = !DILocation(line: 209, column: 19, scope: !6138)
!6150 = !DILocation(line: 209, column: 36, scope: !6138)
!6151 = !DILocation(line: 209, column: 2, scope: !6138)
!6152 = !DILocation(line: 214, column: 19, scope: !6138)
!6153 = !DILocation(line: 214, column: 24, scope: !6138)
!6154 = !DILocation(line: 214, column: 8, scope: !6138)
!6155 = !DILocation(line: 214, column: 6, scope: !6138)
!6156 = !DILocation(line: 215, column: 6, scope: !6138)
!6157 = !DILocation(line: 216, column: 14, scope: !6138)
!6158 = !DILocation(line: 216, column: 19, scope: !6138)
!6159 = !DILocation(line: 216, column: 36, scope: !6138)
!6160 = !DILocation(line: 216, column: 2, scope: !6138)
!6161 = !DILocation(line: 231, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6138, file: !1, line: 231, column: 6)
!6163 = !DILocation(line: 231, column: 12, scope: !6162)
!6164 = !DILocation(line: 231, column: 6, scope: !6138)
!6165 = !DILocation(line: 232, column: 20, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6162, file: !1, line: 231, column: 33)
!6167 = !DILocation(line: 232, column: 25, scope: !6166)
!6168 = !DILocation(line: 232, column: 9, scope: !6166)
!6169 = !DILocation(line: 232, column: 7, scope: !6166)
!6170 = !DILocation(line: 233, column: 7, scope: !6166)
!6171 = !DILocation(line: 234, column: 15, scope: !6166)
!6172 = !DILocation(line: 234, column: 20, scope: !6166)
!6173 = !DILocation(line: 234, column: 47, scope: !6166)
!6174 = !DILocation(line: 234, column: 3, scope: !6166)
!6175 = !DILocation(line: 235, column: 2, scope: !6166)
!6176 = !DILocation(line: 238, column: 19, scope: !6138)
!6177 = !DILocation(line: 238, column: 24, scope: !6138)
!6178 = !DILocation(line: 238, column: 8, scope: !6138)
!6179 = !DILocation(line: 238, column: 6, scope: !6138)
!6180 = !DILocation(line: 239, column: 6, scope: !6138)
!6181 = !DILocation(line: 240, column: 14, scope: !6138)
!6182 = !DILocation(line: 240, column: 19, scope: !6138)
!6183 = !DILocation(line: 240, column: 36, scope: !6138)
!6184 = !DILocation(line: 240, column: 2, scope: !6138)
!6185 = !DILocation(line: 241, column: 1, scope: !6138)
!6186 = distinct !DISubprogram(name: "dwc3_otg_update", scope: !1, file: !1, line: 328, type: !6187, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !292, !455}
!6189 = !DILocalVariable(name: "lock", arg: 1, scope: !6190, file: !6191, line: 407, type: !2358)
!6190 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6191, file: !6191, line: 407, type: !6192, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6191 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!6192 = !DISubroutineType(types: !6193)
!6193 = !{null, !2358, !289}
!6194 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !6195)
!6195 = distinct !DILocation(line: 399, column: 3, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 377, column: 33)
!6197 = !DILocalVariable(name: "flags", arg: 2, scope: !6190, file: !6191, line: 407, type: !289)
!6198 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !6195)
!6199 = !DILocalVariable(name: "lock", arg: 1, scope: !6200, file: !6191, line: 327, type: !2358)
!6200 = distinct !DISubprogram(name: "spinlock_check", scope: !6191, file: !6191, line: 327, type: !6201, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!6203, !2358}
!6203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!6204 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !6205)
!6205 = distinct !DILocation(line: 395, column: 3, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !1, line: 395, column: 3)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !1, line: 395, column: 3)
!6208 = distinct !DILexicalBlock(scope: !6209, file: !1, line: 395, column: 3)
!6209 = distinct !DILexicalBlock(scope: !6210, file: !1, line: 395, column: 3)
!6210 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 395, column: 3)
!6211 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !6212)
!6212 = distinct !DILocation(line: 382, column: 3, scope: !6196)
!6213 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !6212)
!6214 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !6215)
!6215 = distinct !DILocation(line: 379, column: 3, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6217, file: !1, line: 379, column: 3)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !1, line: 379, column: 3)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !1, line: 379, column: 3)
!6219 = distinct !DILexicalBlock(scope: !6220, file: !1, line: 379, column: 3)
!6220 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 379, column: 3)
!6221 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !6222)
!6222 = distinct !DILocation(line: 375, column: 2, scope: !6186)
!6223 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !6222)
!6224 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !6225)
!6225 = distinct !DILocation(line: 371, column: 2, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6227, file: !1, line: 371, column: 2)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !1, line: 371, column: 2)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !1, line: 371, column: 2)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !1, line: 371, column: 2)
!6230 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 371, column: 2)
!6231 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !6232)
!6232 = distinct !DILocation(line: 365, column: 3, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 353, column: 33)
!6234 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !6232)
!6235 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !6236)
!6236 = distinct !DILocation(line: 362, column: 3, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !1, line: 362, column: 3)
!6238 = distinct !DILexicalBlock(scope: !6239, file: !1, line: 362, column: 3)
!6239 = distinct !DILexicalBlock(scope: !6240, file: !1, line: 362, column: 3)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !1, line: 362, column: 3)
!6241 = distinct !DILexicalBlock(scope: !6233, file: !1, line: 362, column: 3)
!6242 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !6243)
!6243 = distinct !DILocation(line: 358, column: 3, scope: !6233)
!6244 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !6243)
!6245 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !6246)
!6246 = distinct !DILocation(line: 356, column: 3, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !1, line: 356, column: 3)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !1, line: 356, column: 3)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !1, line: 356, column: 3)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !1, line: 356, column: 3)
!6251 = distinct !DILexicalBlock(scope: !6233, file: !1, line: 356, column: 3)
!6252 = !DILocalVariable(name: "dwc", arg: 1, scope: !6186, file: !1, line: 328, type: !292)
!6253 = !DILocation(line: 328, column: 35, scope: !6186)
!6254 = !DILocalVariable(name: "ignore_idstatus", arg: 2, scope: !6186, file: !1, line: 328, type: !455)
!6255 = !DILocation(line: 328, column: 45, scope: !6186)
!6256 = !DILocalVariable(name: "ret", scope: !6186, file: !1, line: 330, type: !397)
!6257 = !DILocation(line: 330, column: 6, scope: !6186)
!6258 = !DILocalVariable(name: "reg", scope: !6186, file: !1, line: 331, type: !329)
!6259 = !DILocation(line: 331, column: 6, scope: !6186)
!6260 = !DILocalVariable(name: "id", scope: !6186, file: !1, line: 332, type: !397)
!6261 = !DILocation(line: 332, column: 6, scope: !6186)
!6262 = !DILocalVariable(name: "flags", scope: !6186, file: !1, line: 333, type: !289)
!6263 = !DILocation(line: 333, column: 16, scope: !6186)
!6264 = !DILocation(line: 335, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 335, column: 6)
!6266 = !DILocation(line: 335, column: 11, scope: !6265)
!6267 = !DILocation(line: 335, column: 19, scope: !6265)
!6268 = !DILocation(line: 335, column: 6, scope: !6186)
!6269 = !DILocation(line: 336, column: 3, scope: !6265)
!6270 = !DILocation(line: 339, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 339, column: 6)
!6272 = !DILocation(line: 339, column: 11, scope: !6271)
!6273 = !DILocation(line: 339, column: 27, scope: !6271)
!6274 = !DILocation(line: 339, column: 6, scope: !6186)
!6275 = !DILocation(line: 340, column: 3, scope: !6271)
!6276 = !DILocation(line: 342, column: 7, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 342, column: 6)
!6278 = !DILocation(line: 342, column: 6, scope: !6186)
!6279 = !DILocation(line: 343, column: 20, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6277, file: !1, line: 342, column: 24)
!6281 = !DILocation(line: 343, column: 25, scope: !6280)
!6282 = !DILocation(line: 343, column: 9, scope: !6280)
!6283 = !DILocation(line: 343, column: 7, scope: !6280)
!6284 = !DILocation(line: 344, column: 11, scope: !6280)
!6285 = !DILocation(line: 344, column: 15, scope: !6280)
!6286 = !DILocation(line: 344, column: 9, scope: !6280)
!6287 = !DILocation(line: 344, column: 8, scope: !6280)
!6288 = !DILocation(line: 344, column: 6, scope: !6280)
!6289 = !DILocation(line: 346, column: 27, scope: !6280)
!6290 = !DILocation(line: 346, column: 3, scope: !6280)
!6291 = !DILocation(line: 346, column: 8, scope: !6280)
!6292 = !DILocation(line: 346, column: 25, scope: !6280)
!6293 = !DILocation(line: 348, column: 2, scope: !6280)
!6294 = !DILocation(line: 350, column: 6, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6186, file: !1, line: 350, column: 6)
!6296 = !DILocation(line: 350, column: 11, scope: !6295)
!6297 = !DILocation(line: 350, column: 31, scope: !6295)
!6298 = !DILocation(line: 350, column: 36, scope: !6295)
!6299 = !DILocation(line: 350, column: 28, scope: !6295)
!6300 = !DILocation(line: 350, column: 6, scope: !6186)
!6301 = !DILocation(line: 351, column: 3, scope: !6295)
!6302 = !DILocation(line: 353, column: 10, scope: !6186)
!6303 = !DILocation(line: 353, column: 15, scope: !6186)
!6304 = !DILocation(line: 353, column: 2, scope: !6186)
!6305 = !DILocation(line: 355, column: 18, scope: !6233)
!6306 = !DILocation(line: 355, column: 3, scope: !6233)
!6307 = !DILocation(line: 356, column: 3, scope: !6233)
!6308 = !DILocation(line: 356, column: 3, scope: !6251)
!6309 = !DILocalVariable(name: "__dummy", scope: !6310, file: !1, line: 356, type: !289)
!6310 = distinct !DILexicalBlock(scope: !6250, file: !1, line: 356, column: 3)
!6311 = !DILocation(line: 356, column: 3, scope: !6310)
!6312 = !DILocalVariable(name: "__dummy2", scope: !6310, file: !1, line: 356, type: !289)
!6313 = !DILocation(line: 356, column: 3, scope: !6250)
!6314 = !DILocation(line: 356, column: 3, scope: !6249)
!6315 = !DILocation(line: 356, column: 3, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6249, file: !1, line: 356, column: 3)
!6317 = !DILocalVariable(name: "__dummy", scope: !6318, file: !1, line: 356, type: !289)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !1, line: 356, column: 3)
!6319 = distinct !DILexicalBlock(scope: !6316, file: !1, line: 356, column: 3)
!6320 = !DILocation(line: 356, column: 3, scope: !6318)
!6321 = !DILocalVariable(name: "__dummy2", scope: !6318, file: !1, line: 356, type: !289)
!6322 = !DILocation(line: 356, column: 3, scope: !6319)
!6323 = !DILocation(line: 356, column: 3, scope: !6248)
!6324 = !{i32 -2140299571}
!6325 = !DILocation(line: 356, column: 3, scope: !6247)
!6326 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !6246)
!6327 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !6246)
!6328 = !DILocation(line: 357, column: 22, scope: !6233)
!6329 = !DILocation(line: 357, column: 3, scope: !6233)
!6330 = !DILocation(line: 358, column: 27, scope: !6233)
!6331 = !DILocation(line: 358, column: 32, scope: !6233)
!6332 = !DILocation(line: 358, column: 38, scope: !6233)
!6333 = !DILocalVariable(name: "__dummy", scope: !6334, file: !6191, line: 409, type: !289)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !6191, line: 409, column: 2)
!6335 = distinct !DILexicalBlock(scope: !6190, file: !6191, line: 409, column: 2)
!6336 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !6243)
!6337 = !DILocalVariable(name: "__dummy2", scope: !6334, file: !6191, line: 409, type: !289)
!6338 = !DILocalVariable(name: "__dummy", scope: !6339, file: !6191, line: 409, type: !289)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !6191, line: 409, column: 2)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !6191, line: 409, column: 2)
!6341 = distinct !DILexicalBlock(scope: !6342, file: !6191, line: 409, column: 2)
!6342 = distinct !DILexicalBlock(scope: !6335, file: !6191, line: 409, column: 2)
!6343 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !6243)
!6344 = !DILocalVariable(name: "__dummy2", scope: !6339, file: !6191, line: 409, type: !289)
!6345 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !6243)
!6346 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !6243)
!6347 = distinct !DILexicalBlock(scope: !6342, file: !6191, line: 409, column: 2)
!6348 = !{i32 -2145272094}
!6349 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !6243)
!6350 = distinct !DILexicalBlock(scope: !6347, file: !6191, line: 409, column: 2)
!6351 = !DILocation(line: 359, column: 3, scope: !6233)
!6352 = !DILocation(line: 361, column: 20, scope: !6233)
!6353 = !DILocation(line: 361, column: 3, scope: !6233)
!6354 = !DILocation(line: 362, column: 3, scope: !6233)
!6355 = !DILocation(line: 362, column: 3, scope: !6241)
!6356 = !DILocalVariable(name: "__dummy", scope: !6357, file: !1, line: 362, type: !289)
!6357 = distinct !DILexicalBlock(scope: !6240, file: !1, line: 362, column: 3)
!6358 = !DILocation(line: 362, column: 3, scope: !6357)
!6359 = !DILocalVariable(name: "__dummy2", scope: !6357, file: !1, line: 362, type: !289)
!6360 = !DILocation(line: 362, column: 3, scope: !6240)
!6361 = !DILocation(line: 362, column: 3, scope: !6239)
!6362 = !DILocation(line: 362, column: 3, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6239, file: !1, line: 362, column: 3)
!6364 = !DILocalVariable(name: "__dummy", scope: !6365, file: !1, line: 362, type: !289)
!6365 = distinct !DILexicalBlock(scope: !6366, file: !1, line: 362, column: 3)
!6366 = distinct !DILexicalBlock(scope: !6363, file: !1, line: 362, column: 3)
!6367 = !DILocation(line: 362, column: 3, scope: !6365)
!6368 = !DILocalVariable(name: "__dummy2", scope: !6365, file: !1, line: 362, type: !289)
!6369 = !DILocation(line: 362, column: 3, scope: !6366)
!6370 = !DILocation(line: 362, column: 3, scope: !6238)
!6371 = !{i32 -2140298557}
!6372 = !DILocation(line: 362, column: 3, scope: !6237)
!6373 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !6236)
!6374 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !6236)
!6375 = !DILocation(line: 363, column: 30, scope: !6233)
!6376 = !DILocation(line: 363, column: 3, scope: !6233)
!6377 = !DILocation(line: 364, column: 24, scope: !6233)
!6378 = !DILocation(line: 364, column: 3, scope: !6233)
!6379 = !DILocation(line: 365, column: 27, scope: !6233)
!6380 = !DILocation(line: 365, column: 32, scope: !6233)
!6381 = !DILocation(line: 365, column: 38, scope: !6233)
!6382 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !6232)
!6383 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !6232)
!6384 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !6232)
!6385 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !6232)
!6386 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !6232)
!6387 = !DILocation(line: 366, column: 3, scope: !6233)
!6388 = !DILocation(line: 368, column: 3, scope: !6233)
!6389 = !DILocation(line: 371, column: 2, scope: !6186)
!6390 = !DILocation(line: 371, column: 2, scope: !6230)
!6391 = !DILocalVariable(name: "__dummy", scope: !6392, file: !1, line: 371, type: !289)
!6392 = distinct !DILexicalBlock(scope: !6229, file: !1, line: 371, column: 2)
!6393 = !DILocation(line: 371, column: 2, scope: !6392)
!6394 = !DILocalVariable(name: "__dummy2", scope: !6392, file: !1, line: 371, type: !289)
!6395 = !DILocation(line: 371, column: 2, scope: !6229)
!6396 = !DILocation(line: 371, column: 2, scope: !6228)
!6397 = !DILocation(line: 371, column: 2, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6228, file: !1, line: 371, column: 2)
!6399 = !DILocalVariable(name: "__dummy", scope: !6400, file: !1, line: 371, type: !289)
!6400 = distinct !DILexicalBlock(scope: !6401, file: !1, line: 371, column: 2)
!6401 = distinct !DILexicalBlock(scope: !6398, file: !1, line: 371, column: 2)
!6402 = !DILocation(line: 371, column: 2, scope: !6400)
!6403 = !DILocalVariable(name: "__dummy2", scope: !6400, file: !1, line: 371, type: !289)
!6404 = !DILocation(line: 371, column: 2, scope: !6401)
!6405 = !DILocation(line: 371, column: 2, scope: !6227)
!6406 = !{i32 -2140297545}
!6407 = !DILocation(line: 371, column: 2, scope: !6226)
!6408 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !6225)
!6409 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !6225)
!6410 = !DILocation(line: 373, column: 26, scope: !6186)
!6411 = !DILocation(line: 373, column: 31, scope: !6186)
!6412 = !DILocation(line: 373, column: 2, scope: !6186)
!6413 = !DILocation(line: 373, column: 7, scope: !6186)
!6414 = !DILocation(line: 373, column: 24, scope: !6186)
!6415 = !DILocation(line: 375, column: 26, scope: !6186)
!6416 = !DILocation(line: 375, column: 31, scope: !6186)
!6417 = !DILocation(line: 375, column: 37, scope: !6186)
!6418 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !6222)
!6419 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !6222)
!6420 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !6222)
!6421 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !6222)
!6422 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !6222)
!6423 = !DILocation(line: 377, column: 10, scope: !6186)
!6424 = !DILocation(line: 377, column: 15, scope: !6186)
!6425 = !DILocation(line: 377, column: 2, scope: !6186)
!6426 = !DILocation(line: 379, column: 3, scope: !6196)
!6427 = !DILocation(line: 379, column: 3, scope: !6220)
!6428 = !DILocalVariable(name: "__dummy", scope: !6429, file: !1, line: 379, type: !289)
!6429 = distinct !DILexicalBlock(scope: !6219, file: !1, line: 379, column: 3)
!6430 = !DILocation(line: 379, column: 3, scope: !6429)
!6431 = !DILocalVariable(name: "__dummy2", scope: !6429, file: !1, line: 379, type: !289)
!6432 = !DILocation(line: 379, column: 3, scope: !6219)
!6433 = !DILocation(line: 379, column: 3, scope: !6218)
!6434 = !DILocation(line: 379, column: 3, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6218, file: !1, line: 379, column: 3)
!6436 = !DILocalVariable(name: "__dummy", scope: !6437, file: !1, line: 379, type: !289)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !1, line: 379, column: 3)
!6438 = distinct !DILexicalBlock(scope: !6435, file: !1, line: 379, column: 3)
!6439 = !DILocation(line: 379, column: 3, scope: !6437)
!6440 = !DILocalVariable(name: "__dummy2", scope: !6437, file: !1, line: 379, type: !289)
!6441 = !DILocation(line: 379, column: 3, scope: !6438)
!6442 = !DILocation(line: 379, column: 3, scope: !6217)
!6443 = !{i32 -2140296531}
!6444 = !DILocation(line: 379, column: 3, scope: !6216)
!6445 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !6215)
!6446 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !6215)
!6447 = !DILocation(line: 380, column: 21, scope: !6196)
!6448 = !DILocation(line: 380, column: 3, scope: !6196)
!6449 = !DILocation(line: 381, column: 22, scope: !6196)
!6450 = !DILocation(line: 381, column: 3, scope: !6196)
!6451 = !DILocation(line: 382, column: 27, scope: !6196)
!6452 = !DILocation(line: 382, column: 32, scope: !6196)
!6453 = !DILocation(line: 382, column: 38, scope: !6196)
!6454 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !6212)
!6455 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !6212)
!6456 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !6212)
!6457 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !6212)
!6458 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !6212)
!6459 = !DILocation(line: 383, column: 24, scope: !6196)
!6460 = !DILocation(line: 383, column: 9, scope: !6196)
!6461 = !DILocation(line: 383, column: 7, scope: !6196)
!6462 = !DILocation(line: 384, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 384, column: 7)
!6464 = !DILocation(line: 384, column: 7, scope: !6196)
!6465 = !DILocation(line: 385, column: 4, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6463, file: !1, line: 384, column: 12)
!6467 = !DILocation(line: 386, column: 3, scope: !6466)
!6468 = !DILocation(line: 387, column: 8, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !1, line: 387, column: 8)
!6470 = distinct !DILexicalBlock(scope: !6463, file: !1, line: 386, column: 10)
!6471 = !DILocation(line: 387, column: 13, scope: !6469)
!6472 = !DILocation(line: 387, column: 8, scope: !6470)
!6473 = !DILocation(line: 388, column: 18, scope: !6469)
!6474 = !DILocation(line: 388, column: 23, scope: !6469)
!6475 = !DILocation(line: 388, column: 33, scope: !6469)
!6476 = !DILocation(line: 388, column: 5, scope: !6469)
!6477 = !DILocation(line: 389, column: 8, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6470, file: !1, line: 389, column: 8)
!6479 = !DILocation(line: 389, column: 13, scope: !6478)
!6480 = !DILocation(line: 389, column: 8, scope: !6470)
!6481 = !DILocation(line: 390, column: 5, scope: !6478)
!6482 = !DILocation(line: 393, column: 3, scope: !6196)
!6483 = !DILocation(line: 395, column: 3, scope: !6196)
!6484 = !DILocation(line: 395, column: 3, scope: !6210)
!6485 = !DILocalVariable(name: "__dummy", scope: !6486, file: !1, line: 395, type: !289)
!6486 = distinct !DILexicalBlock(scope: !6209, file: !1, line: 395, column: 3)
!6487 = !DILocation(line: 395, column: 3, scope: !6486)
!6488 = !DILocalVariable(name: "__dummy2", scope: !6486, file: !1, line: 395, type: !289)
!6489 = !DILocation(line: 395, column: 3, scope: !6209)
!6490 = !DILocation(line: 395, column: 3, scope: !6208)
!6491 = !DILocation(line: 395, column: 3, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6208, file: !1, line: 395, column: 3)
!6493 = !DILocalVariable(name: "__dummy", scope: !6494, file: !1, line: 395, type: !289)
!6494 = distinct !DILexicalBlock(scope: !6495, file: !1, line: 395, column: 3)
!6495 = distinct !DILexicalBlock(scope: !6492, file: !1, line: 395, column: 3)
!6496 = !DILocation(line: 395, column: 3, scope: !6494)
!6497 = !DILocalVariable(name: "__dummy2", scope: !6494, file: !1, line: 395, type: !289)
!6498 = !DILocation(line: 395, column: 3, scope: !6495)
!6499 = !DILocation(line: 395, column: 3, scope: !6207)
!6500 = !{i32 -2140295330}
!6501 = !DILocation(line: 395, column: 3, scope: !6206)
!6502 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !6205)
!6503 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !6205)
!6504 = !DILocation(line: 396, column: 21, scope: !6196)
!6505 = !DILocation(line: 396, column: 3, scope: !6196)
!6506 = !DILocation(line: 397, column: 24, scope: !6196)
!6507 = !DILocation(line: 397, column: 3, scope: !6196)
!6508 = !DILocation(line: 398, column: 28, scope: !6196)
!6509 = !DILocation(line: 398, column: 3, scope: !6196)
!6510 = !DILocation(line: 399, column: 27, scope: !6196)
!6511 = !DILocation(line: 399, column: 32, scope: !6196)
!6512 = !DILocation(line: 399, column: 38, scope: !6196)
!6513 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !6195)
!6514 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !6195)
!6515 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !6195)
!6516 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !6195)
!6517 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !6195)
!6518 = !DILocation(line: 401, column: 7, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 401, column: 7)
!6520 = !DILocation(line: 401, column: 12, scope: !6519)
!6521 = !DILocation(line: 401, column: 7, scope: !6196)
!6522 = !DILocation(line: 402, column: 17, scope: !6519)
!6523 = !DILocation(line: 402, column: 22, scope: !6519)
!6524 = !DILocation(line: 402, column: 32, scope: !6519)
!6525 = !DILocation(line: 402, column: 4, scope: !6519)
!6526 = !DILocation(line: 403, column: 7, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 403, column: 7)
!6528 = !DILocation(line: 403, column: 12, scope: !6527)
!6529 = !DILocation(line: 403, column: 7, scope: !6196)
!6530 = !DILocation(line: 404, column: 4, scope: !6527)
!6531 = !DILocation(line: 406, column: 26, scope: !6196)
!6532 = !DILocation(line: 406, column: 9, scope: !6196)
!6533 = !DILocation(line: 406, column: 7, scope: !6196)
!6534 = !DILocation(line: 407, column: 7, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6196, file: !1, line: 407, column: 7)
!6536 = !DILocation(line: 407, column: 7, scope: !6196)
!6537 = !DILocation(line: 408, column: 4, scope: !6535)
!6538 = !DILocation(line: 409, column: 3, scope: !6196)
!6539 = !DILocation(line: 411, column: 3, scope: !6196)
!6540 = !DILocation(line: 413, column: 1, scope: !6186)
!6541 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6542, file: !6542, line: 666, type: !6543, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6542 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!289}
!6545 = !DILocalVariable(name: "f", scope: !6541, file: !6542, line: 668, type: !289)
!6546 = !DILocation(line: 668, column: 16, scope: !6541)
!6547 = !DILocation(line: 670, column: 6, scope: !6541)
!6548 = !DILocation(line: 670, column: 4, scope: !6541)
!6549 = !DILocation(line: 671, column: 2, scope: !6541)
!6550 = !DILocation(line: 672, column: 9, scope: !6541)
!6551 = !DILocation(line: 672, column: 2, scope: !6541)
!6552 = distinct !DISubprogram(name: "dwc3_otg_host_exit", scope: !1, file: !1, line: 244, type: !5984, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6553 = !DILocalVariable(name: "dwc", arg: 1, scope: !6552, file: !1, line: 244, type: !292)
!6554 = !DILocation(line: 244, column: 45, scope: !6552)
!6555 = !DILocalVariable(name: "reg", scope: !6552, file: !1, line: 246, type: !329)
!6556 = !DILocation(line: 246, column: 6, scope: !6552)
!6557 = !DILocation(line: 261, column: 19, scope: !6552)
!6558 = !DILocation(line: 261, column: 24, scope: !6552)
!6559 = !DILocation(line: 261, column: 8, scope: !6552)
!6560 = !DILocation(line: 261, column: 6, scope: !6552)
!6561 = !DILocation(line: 262, column: 6, scope: !6552)
!6562 = !DILocation(line: 263, column: 14, scope: !6552)
!6563 = !DILocation(line: 263, column: 19, scope: !6552)
!6564 = !DILocation(line: 263, column: 36, scope: !6552)
!6565 = !DILocation(line: 263, column: 2, scope: !6552)
!6566 = !DILocation(line: 264, column: 1, scope: !6552)
!6567 = distinct !DISubprogram(name: "dwc3_otg_device_exit", scope: !1, file: !1, line: 303, type: !5984, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6568 = !DILocalVariable(name: "dwc", arg: 1, scope: !6567, file: !1, line: 303, type: !292)
!6569 = !DILocation(line: 303, column: 47, scope: !6567)
!6570 = !DILocalVariable(name: "reg", scope: !6567, file: !1, line: 305, type: !329)
!6571 = !DILocation(line: 305, column: 6, scope: !6567)
!6572 = !DILocation(line: 317, column: 26, scope: !6567)
!6573 = !DILocation(line: 317, column: 2, scope: !6567)
!6574 = !DILocation(line: 322, column: 19, scope: !6567)
!6575 = !DILocation(line: 322, column: 24, scope: !6567)
!6576 = !DILocation(line: 322, column: 8, scope: !6567)
!6577 = !DILocation(line: 322, column: 6, scope: !6567)
!6578 = !DILocation(line: 323, column: 6, scope: !6567)
!6579 = !DILocation(line: 324, column: 6, scope: !6567)
!6580 = !DILocation(line: 325, column: 14, scope: !6567)
!6581 = !DILocation(line: 325, column: 19, scope: !6567)
!6582 = !DILocation(line: 325, column: 36, scope: !6567)
!6583 = !DILocation(line: 325, column: 2, scope: !6567)
!6584 = !DILocation(line: 326, column: 1, scope: !6567)
!6585 = distinct !DISubprogram(name: "otg_set_vbus", scope: !225, file: !225, line: 74, type: !5766, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6586 = !DILocalVariable(name: "otg", arg: 1, scope: !6585, file: !225, line: 74, type: !5368)
!6587 = !DILocation(line: 74, column: 30, scope: !6585)
!6588 = !DILocalVariable(name: "enabled", arg: 2, scope: !6585, file: !225, line: 74, type: !455)
!6589 = !DILocation(line: 74, column: 40, scope: !6585)
!6590 = !DILocation(line: 76, column: 6, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6585, file: !225, line: 76, column: 6)
!6592 = !DILocation(line: 76, column: 10, scope: !6591)
!6593 = !DILocation(line: 76, column: 13, scope: !6591)
!6594 = !DILocation(line: 76, column: 18, scope: !6591)
!6595 = !DILocation(line: 76, column: 6, scope: !6585)
!6596 = !DILocation(line: 77, column: 10, scope: !6591)
!6597 = !DILocation(line: 77, column: 15, scope: !6591)
!6598 = !DILocation(line: 77, column: 24, scope: !6591)
!6599 = !DILocation(line: 77, column: 29, scope: !6591)
!6600 = !DILocation(line: 77, column: 3, scope: !6591)
!6601 = !DILocation(line: 79, column: 2, scope: !6585)
!6602 = !DILocation(line: 80, column: 1, scope: !6585)
!6603 = distinct !DISubprogram(name: "dwc3_otg_device_init", scope: !1, file: !1, line: 267, type: !5984, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6604 = !DILocalVariable(name: "dwc", arg: 1, scope: !6603, file: !1, line: 267, type: !292)
!6605 = !DILocation(line: 267, column: 47, scope: !6603)
!6606 = !DILocalVariable(name: "reg", scope: !6603, file: !1, line: 269, type: !329)
!6607 = !DILocation(line: 269, column: 6, scope: !6603)
!6608 = !DILocation(line: 277, column: 19, scope: !6603)
!6609 = !DILocation(line: 277, column: 24, scope: !6603)
!6610 = !DILocation(line: 277, column: 8, scope: !6603)
!6611 = !DILocation(line: 277, column: 6, scope: !6603)
!6612 = !DILocation(line: 279, column: 6, scope: !6603)
!6613 = !DILocation(line: 280, column: 14, scope: !6603)
!6614 = !DILocation(line: 280, column: 19, scope: !6603)
!6615 = !DILocation(line: 280, column: 36, scope: !6603)
!6616 = !DILocation(line: 280, column: 2, scope: !6603)
!6617 = !DILocation(line: 286, column: 19, scope: !6603)
!6618 = !DILocation(line: 286, column: 24, scope: !6603)
!6619 = !DILocation(line: 286, column: 8, scope: !6603)
!6620 = !DILocation(line: 286, column: 6, scope: !6603)
!6621 = !DILocation(line: 287, column: 6, scope: !6603)
!6622 = !DILocation(line: 288, column: 6, scope: !6603)
!6623 = !DILocation(line: 290, column: 14, scope: !6603)
!6624 = !DILocation(line: 290, column: 19, scope: !6603)
!6625 = !DILocation(line: 290, column: 36, scope: !6603)
!6626 = !DILocation(line: 290, column: 2, scope: !6603)
!6627 = !DILocation(line: 292, column: 25, scope: !6603)
!6628 = !DILocation(line: 292, column: 2, scope: !6603)
!6629 = !DILocation(line: 294, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6603, file: !1, line: 294, column: 6)
!6631 = !DILocation(line: 294, column: 12, scope: !6630)
!6632 = !DILocation(line: 294, column: 6, scope: !6603)
!6633 = !DILocation(line: 295, column: 20, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6630, file: !1, line: 294, column: 33)
!6635 = !DILocation(line: 295, column: 25, scope: !6634)
!6636 = !DILocation(line: 295, column: 9, scope: !6634)
!6637 = !DILocation(line: 295, column: 7, scope: !6634)
!6638 = !DILocation(line: 296, column: 7, scope: !6634)
!6639 = !DILocation(line: 297, column: 15, scope: !6634)
!6640 = !DILocation(line: 297, column: 20, scope: !6634)
!6641 = !DILocation(line: 297, column: 47, scope: !6634)
!6642 = !DILocation(line: 297, column: 3, scope: !6634)
!6643 = !DILocation(line: 298, column: 2, scope: !6634)
!6644 = !DILocation(line: 300, column: 1, scope: !6603)
!6645 = distinct !DISubprogram(name: "dwc3_drd_init", scope: !1, file: !1, line: 567, type: !6646, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{!397, !292}
!6648 = !DILocalVariable(name: "dwc", arg: 1, scope: !6645, file: !1, line: 567, type: !292)
!6649 = !DILocation(line: 567, column: 32, scope: !6645)
!6650 = !DILocalVariable(name: "ret", scope: !6645, file: !1, line: 569, type: !397)
!6651 = !DILocation(line: 569, column: 6, scope: !6645)
!6652 = !DILocalVariable(name: "irq", scope: !6645, file: !1, line: 569, type: !397)
!6653 = !DILocation(line: 569, column: 11, scope: !6645)
!6654 = !DILocation(line: 571, column: 30, scope: !6645)
!6655 = !DILocation(line: 571, column: 14, scope: !6645)
!6656 = !DILocation(line: 571, column: 2, scope: !6645)
!6657 = !DILocation(line: 571, column: 7, scope: !6645)
!6658 = !DILocation(line: 571, column: 12, scope: !6645)
!6659 = !DILocation(line: 572, column: 13, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6645, file: !1, line: 572, column: 6)
!6661 = !DILocation(line: 572, column: 18, scope: !6660)
!6662 = !DILocation(line: 572, column: 6, scope: !6660)
!6663 = !DILocation(line: 572, column: 6, scope: !6645)
!6664 = !DILocation(line: 573, column: 18, scope: !6660)
!6665 = !DILocation(line: 573, column: 23, scope: !6660)
!6666 = !DILocation(line: 573, column: 10, scope: !6660)
!6667 = !DILocation(line: 573, column: 3, scope: !6660)
!6668 = !DILocation(line: 576, column: 32, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6645, file: !1, line: 575, column: 6)
!6670 = !DILocation(line: 576, column: 37, scope: !6669)
!6671 = !DILocation(line: 576, column: 6, scope: !6669)
!6672 = !DILocation(line: 575, column: 6, scope: !6645)
!6673 = !DILocation(line: 577, column: 32, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6669, file: !1, line: 576, column: 62)
!6675 = !DILocation(line: 577, column: 9, scope: !6674)
!6676 = !DILocation(line: 577, column: 7, scope: !6674)
!6677 = !DILocation(line: 578, column: 7, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6674, file: !1, line: 578, column: 7)
!6679 = !DILocation(line: 578, column: 11, scope: !6678)
!6680 = !DILocation(line: 578, column: 7, scope: !6674)
!6681 = !DILocation(line: 579, column: 11, scope: !6678)
!6682 = !DILocation(line: 579, column: 4, scope: !6678)
!6683 = !DILocation(line: 580, column: 2, scope: !6674)
!6684 = !DILocation(line: 580, column: 13, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6669, file: !1, line: 580, column: 13)
!6686 = !DILocation(line: 580, column: 18, scope: !6685)
!6687 = !DILocation(line: 580, column: 13, scope: !6669)
!6688 = !DILocation(line: 581, column: 3, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6685, file: !1, line: 580, column: 24)
!6690 = !DILocation(line: 581, column: 8, scope: !6689)
!6691 = !DILocation(line: 581, column: 16, scope: !6689)
!6692 = !DILocation(line: 581, column: 30, scope: !6689)
!6693 = !DILocation(line: 582, column: 34, scope: !6689)
!6694 = !DILocation(line: 582, column: 39, scope: !6689)
!6695 = !DILocation(line: 583, column: 14, scope: !6689)
!6696 = !DILocation(line: 583, column: 19, scope: !6689)
!6697 = !DILocation(line: 582, column: 9, scope: !6689)
!6698 = !DILocation(line: 582, column: 7, scope: !6689)
!6699 = !DILocation(line: 584, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6689, file: !1, line: 584, column: 7)
!6701 = !DILocation(line: 584, column: 11, scope: !6700)
!6702 = !DILocation(line: 584, column: 7, scope: !6689)
!6703 = !DILocation(line: 585, column: 4, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6700, file: !1, line: 584, column: 16)
!6705 = !DILocation(line: 586, column: 11, scope: !6704)
!6706 = !DILocation(line: 586, column: 4, scope: !6704)
!6707 = !DILocation(line: 589, column: 19, scope: !6689)
!6708 = !DILocation(line: 589, column: 3, scope: !6689)
!6709 = !DILocation(line: 590, column: 2, scope: !6689)
!6710 = !DILocation(line: 591, column: 19, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6685, file: !1, line: 590, column: 9)
!6712 = !DILocation(line: 591, column: 3, scope: !6711)
!6713 = !DILocation(line: 592, column: 3, scope: !6711)
!6714 = !DILocation(line: 592, column: 8, scope: !6711)
!6715 = !DILocation(line: 592, column: 24, scope: !6711)
!6716 = !DILocation(line: 595, column: 26, scope: !6711)
!6717 = !DILocation(line: 595, column: 9, scope: !6711)
!6718 = !DILocation(line: 595, column: 7, scope: !6711)
!6719 = !DILocation(line: 596, column: 7, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6711, file: !1, line: 596, column: 7)
!6721 = !DILocation(line: 596, column: 11, scope: !6720)
!6722 = !DILocation(line: 596, column: 7, scope: !6711)
!6723 = !DILocation(line: 597, column: 11, scope: !6720)
!6724 = !DILocation(line: 597, column: 4, scope: !6720)
!6725 = !DILocation(line: 599, column: 18, scope: !6711)
!6726 = !DILocation(line: 599, column: 3, scope: !6711)
!6727 = !DILocation(line: 599, column: 8, scope: !6711)
!6728 = !DILocation(line: 599, column: 16, scope: !6711)
!6729 = !DILocation(line: 602, column: 27, scope: !6711)
!6730 = !DILocation(line: 602, column: 3, scope: !6711)
!6731 = !DILocation(line: 604, column: 25, scope: !6711)
!6732 = !DILocation(line: 604, column: 3, scope: !6711)
!6733 = !DILocation(line: 606, column: 30, scope: !6711)
!6734 = !DILocation(line: 606, column: 35, scope: !6711)
!6735 = !DILocation(line: 608, column: 34, scope: !6711)
!6736 = !DILocation(line: 606, column: 9, scope: !6711)
!6737 = !DILocation(line: 606, column: 7, scope: !6711)
!6738 = !DILocation(line: 609, column: 7, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6711, file: !1, line: 609, column: 7)
!6740 = !DILocation(line: 609, column: 7, scope: !6711)
!6741 = !DILocation(line: 610, column: 4, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6739, file: !1, line: 609, column: 12)
!6743 = !DILocation(line: 612, column: 8, scope: !6742)
!6744 = !DILocation(line: 613, column: 11, scope: !6742)
!6745 = !DILocation(line: 613, column: 4, scope: !6742)
!6746 = !DILocation(line: 616, column: 17, scope: !6711)
!6747 = !DILocation(line: 616, column: 3, scope: !6711)
!6748 = !DILocation(line: 617, column: 17, scope: !6711)
!6749 = !DILocation(line: 617, column: 3, scope: !6711)
!6750 = !DILocation(line: 620, column: 2, scope: !6645)
!6751 = !DILocation(line: 621, column: 1, scope: !6645)
!6752 = distinct !DISubprogram(name: "dwc3_get_extcon", scope: !1, file: !1, line: 441, type: !6753, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!5788, !292}
!6755 = !DILocalVariable(name: "dwc", arg: 1, scope: !6752, file: !1, line: 441, type: !292)
!6756 = !DILocation(line: 441, column: 56, scope: !6752)
!6757 = !DILocalVariable(name: "dev", scope: !6752, file: !1, line: 443, type: !552)
!6758 = !DILocation(line: 443, column: 17, scope: !6752)
!6759 = !DILocation(line: 443, column: 23, scope: !6752)
!6760 = !DILocation(line: 443, column: 28, scope: !6752)
!6761 = !DILocalVariable(name: "np_phy", scope: !6752, file: !1, line: 444, type: !5005)
!6762 = !DILocation(line: 444, column: 22, scope: !6752)
!6763 = !DILocalVariable(name: "np_conn", scope: !6752, file: !1, line: 444, type: !5005)
!6764 = !DILocation(line: 444, column: 31, scope: !6752)
!6765 = !DILocalVariable(name: "edev", scope: !6752, file: !1, line: 445, type: !5788)
!6766 = !DILocation(line: 445, column: 21, scope: !6752)
!6767 = !DILocalVariable(name: "name", scope: !6752, file: !1, line: 446, type: !385)
!6768 = !DILocation(line: 446, column: 14, scope: !6752)
!6769 = !DILocation(line: 448, column: 32, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6752, file: !1, line: 448, column: 6)
!6771 = !DILocation(line: 448, column: 6, scope: !6770)
!6772 = !DILocation(line: 448, column: 6, scope: !6752)
!6773 = !DILocation(line: 449, column: 37, scope: !6770)
!6774 = !DILocation(line: 449, column: 10, scope: !6770)
!6775 = !DILocation(line: 449, column: 3, scope: !6770)
!6776 = !DILocation(line: 457, column: 34, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6752, file: !1, line: 457, column: 6)
!6778 = !DILocation(line: 457, column: 6, scope: !6777)
!6779 = !DILocation(line: 457, column: 67, scope: !6777)
!6780 = !DILocation(line: 457, column: 6, scope: !6752)
!6781 = !DILocation(line: 458, column: 32, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6777, file: !1, line: 457, column: 73)
!6783 = !DILocation(line: 458, column: 10, scope: !6782)
!6784 = !DILocation(line: 458, column: 8, scope: !6782)
!6785 = !DILocation(line: 459, column: 8, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6782, file: !1, line: 459, column: 7)
!6787 = !DILocation(line: 459, column: 7, scope: !6782)
!6788 = !DILocation(line: 460, column: 11, scope: !6786)
!6789 = !DILocation(line: 460, column: 4, scope: !6786)
!6790 = !DILocation(line: 462, column: 10, scope: !6782)
!6791 = !DILocation(line: 462, column: 3, scope: !6782)
!6792 = !DILocation(line: 465, column: 28, scope: !6752)
!6793 = !DILocation(line: 465, column: 33, scope: !6752)
!6794 = !DILocation(line: 465, column: 11, scope: !6752)
!6795 = !DILocation(line: 465, column: 9, scope: !6752)
!6796 = !DILocation(line: 466, column: 37, scope: !6752)
!6797 = !DILocation(line: 466, column: 12, scope: !6752)
!6798 = !DILocation(line: 466, column: 10, scope: !6752)
!6799 = !DILocation(line: 468, column: 6, scope: !6800)
!6800 = distinct !DILexicalBlock(scope: !6752, file: !1, line: 468, column: 6)
!6801 = !DILocation(line: 468, column: 6, scope: !6752)
!6802 = !DILocation(line: 469, column: 35, scope: !6800)
!6803 = !DILocation(line: 469, column: 10, scope: !6800)
!6804 = !DILocation(line: 469, column: 8, scope: !6800)
!6805 = !DILocation(line: 469, column: 3, scope: !6800)
!6806 = !DILocation(line: 471, column: 8, scope: !6800)
!6807 = !DILocation(line: 473, column: 14, scope: !6752)
!6808 = !DILocation(line: 473, column: 2, scope: !6752)
!6809 = !DILocation(line: 474, column: 14, scope: !6752)
!6810 = !DILocation(line: 474, column: 2, scope: !6752)
!6811 = !DILocation(line: 476, column: 9, scope: !6752)
!6812 = !DILocation(line: 476, column: 2, scope: !6752)
!6813 = !DILocation(line: 477, column: 1, scope: !6752)
!6814 = distinct !DISubprogram(name: "IS_ERR", scope: !6815, file: !6815, line: 34, type: !6816, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6815 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!455, !3521}
!6818 = !DILocalVariable(name: "ptr", arg: 1, scope: !6814, file: !6815, line: 34, type: !3521)
!6819 = !DILocation(line: 34, column: 60, scope: !6814)
!6820 = !DILocation(line: 36, column: 9, scope: !6814)
!6821 = !DILocation(line: 36, column: 2, scope: !6814)
!6822 = distinct !DISubprogram(name: "PTR_ERR", scope: !6815, file: !6815, line: 29, type: !6823, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6823 = !DISubroutineType(types: !6824)
!6824 = !{!291, !3521}
!6825 = !DILocalVariable(name: "ptr", arg: 1, scope: !6822, file: !6815, line: 29, type: !3521)
!6826 = !DILocation(line: 29, column: 61, scope: !6822)
!6827 = !DILocation(line: 31, column: 16, scope: !6822)
!6828 = !DILocation(line: 31, column: 9, scope: !6822)
!6829 = !DILocation(line: 31, column: 2, scope: !6822)
!6830 = distinct !DISubprogram(name: "device_property_read_bool", scope: !6831, file: !6831, line: 123, type: !6832, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6831 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!6832 = !DISubroutineType(types: !6833)
!6833 = !{!455, !552, !385}
!6834 = !DILocalVariable(name: "dev", arg: 1, scope: !6830, file: !6831, line: 123, type: !552)
!6835 = !DILocation(line: 123, column: 61, scope: !6830)
!6836 = !DILocalVariable(name: "propname", arg: 2, scope: !6830, file: !6831, line: 124, type: !385)
!6837 = !DILocation(line: 124, column: 23, scope: !6830)
!6838 = !DILocation(line: 126, column: 33, scope: !6830)
!6839 = !DILocation(line: 126, column: 38, scope: !6830)
!6840 = !DILocation(line: 126, column: 9, scope: !6830)
!6841 = !DILocation(line: 126, column: 2, scope: !6830)
!6842 = distinct !DISubprogram(name: "dwc3_setup_role_switch", scope: !1, file: !1, line: 534, type: !6646, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6843 = !DILocalVariable(name: "dwc", arg: 1, scope: !6842, file: !1, line: 534, type: !292)
!6844 = !DILocation(line: 534, column: 48, scope: !6842)
!6845 = !DILocalVariable(name: "dwc3_role_switch", scope: !6842, file: !1, line: 536, type: !6846)
!6846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch_desc", file: !275, line: 38, size: 576, elements: !6847)
!6847 = !{!6848, !6849, !6850, !6851, !6852, !6857, !6862, !6863, !6864}
!6848 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6846, file: !275, line: 39, baseType: !5018, size: 64)
!6849 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_port", scope: !6846, file: !275, line: 40, baseType: !552, size: 64, offset: 64)
!6850 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_port", scope: !6846, file: !275, line: 41, baseType: !552, size: 64, offset: 128)
!6851 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !6846, file: !275, line: 42, baseType: !552, size: 64, offset: 192)
!6852 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6846, file: !275, line: 43, baseType: !6853, size: 64, offset: 256)
!6853 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_set_t", file: !275, line: 16, baseType: !6854)
!6854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6855, size: 64)
!6855 = !DISubroutineType(types: !6856)
!6856 = !{!397, !5876, !274}
!6857 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6846, file: !275, line: 44, baseType: !6858, size: 64, offset: 320)
!6858 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_get_t", file: !275, line: 18, baseType: !6859)
!6859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6860, size: 64)
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!274, !5876}
!6862 = !DIDerivedType(tag: DW_TAG_member, name: "allow_userspace_control", scope: !6846, file: !275, line: 45, baseType: !455, size: 8, offset: 384)
!6863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6846, file: !275, line: 46, baseType: !290, size: 64, offset: 448)
!6864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6846, file: !275, line: 47, baseType: !385, size: 64, offset: 512)
!6865 = !DILocation(line: 536, column: 30, scope: !6842)
!6866 = !DILocalVariable(name: "str", scope: !6842, file: !1, line: 537, type: !385)
!6867 = !DILocation(line: 537, column: 14, scope: !6842)
!6868 = !DILocalVariable(name: "mode", scope: !6842, file: !1, line: 538, type: !329)
!6869 = !DILocation(line: 538, column: 6, scope: !6842)
!6870 = !DILocalVariable(name: "ret", scope: !6842, file: !1, line: 539, type: !397)
!6871 = !DILocation(line: 539, column: 6, scope: !6842)
!6872 = !DILocation(line: 541, column: 36, scope: !6842)
!6873 = !DILocation(line: 541, column: 41, scope: !6842)
!6874 = !DILocation(line: 541, column: 8, scope: !6842)
!6875 = !DILocation(line: 541, column: 6, scope: !6842)
!6876 = !DILocation(line: 543, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6842, file: !1, line: 543, column: 6)
!6878 = !DILocation(line: 543, column: 10, scope: !6877)
!6879 = !DILocation(line: 543, column: 16, scope: !6877)
!6880 = !DILocation(line: 543, column: 28, scope: !6877)
!6881 = !DILocation(line: 543, column: 20, scope: !6877)
!6882 = !DILocation(line: 543, column: 6, scope: !6842)
!6883 = !DILocation(line: 544, column: 3, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6877, file: !1, line: 543, column: 58)
!6885 = !DILocation(line: 544, column: 8, scope: !6884)
!6886 = !DILocation(line: 544, column: 33, scope: !6884)
!6887 = !DILocation(line: 545, column: 8, scope: !6884)
!6888 = !DILocation(line: 546, column: 2, scope: !6884)
!6889 = !DILocation(line: 547, column: 3, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6877, file: !1, line: 546, column: 9)
!6891 = !DILocation(line: 547, column: 8, scope: !6890)
!6892 = !DILocation(line: 547, column: 33, scope: !6890)
!6893 = !DILocation(line: 548, column: 8, scope: !6890)
!6894 = !DILocation(line: 551, column: 39, scope: !6842)
!6895 = !DILocation(line: 551, column: 44, scope: !6842)
!6896 = !DILocation(line: 551, column: 28, scope: !6842)
!6897 = !DILocation(line: 551, column: 19, scope: !6842)
!6898 = !DILocation(line: 551, column: 26, scope: !6842)
!6899 = !DILocation(line: 552, column: 19, scope: !6842)
!6900 = !DILocation(line: 552, column: 23, scope: !6842)
!6901 = !DILocation(line: 553, column: 19, scope: !6842)
!6902 = !DILocation(line: 553, column: 23, scope: !6842)
!6903 = !DILocation(line: 554, column: 33, scope: !6842)
!6904 = !DILocation(line: 554, column: 19, scope: !6842)
!6905 = !DILocation(line: 554, column: 31, scope: !6842)
!6906 = !DILocation(line: 555, column: 42, scope: !6842)
!6907 = !DILocation(line: 555, column: 47, scope: !6842)
!6908 = !DILocation(line: 555, column: 17, scope: !6842)
!6909 = !DILocation(line: 555, column: 2, scope: !6842)
!6910 = !DILocation(line: 555, column: 7, scope: !6842)
!6911 = !DILocation(line: 555, column: 15, scope: !6842)
!6912 = !DILocation(line: 556, column: 13, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6842, file: !1, line: 556, column: 6)
!6914 = !DILocation(line: 556, column: 18, scope: !6913)
!6915 = !DILocation(line: 556, column: 6, scope: !6913)
!6916 = !DILocation(line: 556, column: 6, scope: !6842)
!6917 = !DILocation(line: 557, column: 18, scope: !6913)
!6918 = !DILocation(line: 557, column: 23, scope: !6913)
!6919 = !DILocation(line: 557, column: 10, scope: !6913)
!6920 = !DILocation(line: 557, column: 3, scope: !6913)
!6921 = !DILocation(line: 559, column: 16, scope: !6842)
!6922 = !DILocation(line: 559, column: 21, scope: !6842)
!6923 = !DILocation(line: 559, column: 2, scope: !6842)
!6924 = !DILocation(line: 560, column: 2, scope: !6842)
!6925 = !DILocation(line: 561, column: 1, scope: !6842)
!6926 = distinct !DISubprogram(name: "dwc3_drd_notifier", scope: !1, file: !1, line: 429, type: !5799, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6927 = !DILocalVariable(name: "nb", arg: 1, scope: !6926, file: !1, line: 429, type: !5801)
!6928 = !DILocation(line: 429, column: 53, scope: !6926)
!6929 = !DILocalVariable(name: "event", arg: 2, scope: !6926, file: !1, line: 430, type: !289)
!6930 = !DILocation(line: 430, column: 23, scope: !6926)
!6931 = !DILocalVariable(name: "ptr", arg: 3, scope: !6926, file: !1, line: 430, type: !290)
!6932 = !DILocation(line: 430, column: 36, scope: !6926)
!6933 = !DILocalVariable(name: "dwc", scope: !6926, file: !1, line: 432, type: !292)
!6934 = !DILocation(line: 432, column: 15, scope: !6926)
!6935 = !DILocalVariable(name: "__mptr", scope: !6936, file: !1, line: 432, type: !290)
!6936 = distinct !DILexicalBlock(scope: !6926, file: !1, line: 432, column: 21)
!6937 = !DILocation(line: 432, column: 21, scope: !6936)
!6938 = !DILocation(line: 432, column: 21, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6936, file: !1, line: 432, column: 21)
!6940 = !DILocation(line: 434, column: 16, scope: !6926)
!6941 = !DILocation(line: 434, column: 21, scope: !6926)
!6942 = !DILocation(line: 434, column: 2, scope: !6926)
!6943 = !DILocation(line: 438, column: 2, scope: !6926)
!6944 = distinct !DISubprogram(name: "dwc3_drd_update", scope: !1, file: !1, line: 415, type: !5984, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6945 = !DILocalVariable(name: "dwc", arg: 1, scope: !6944, file: !1, line: 415, type: !292)
!6946 = !DILocation(line: 415, column: 42, scope: !6944)
!6947 = !DILocalVariable(name: "id", scope: !6944, file: !1, line: 417, type: !397)
!6948 = !DILocation(line: 417, column: 6, scope: !6944)
!6949 = !DILocation(line: 419, column: 6, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6944, file: !1, line: 419, column: 6)
!6951 = !DILocation(line: 419, column: 11, scope: !6950)
!6952 = !DILocation(line: 419, column: 6, scope: !6944)
!6953 = !DILocation(line: 420, column: 25, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6950, file: !1, line: 419, column: 17)
!6955 = !DILocation(line: 420, column: 30, scope: !6954)
!6956 = !DILocation(line: 420, column: 8, scope: !6954)
!6957 = !DILocation(line: 420, column: 6, scope: !6954)
!6958 = !DILocation(line: 421, column: 7, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6954, file: !1, line: 421, column: 7)
!6960 = !DILocation(line: 421, column: 10, scope: !6959)
!6961 = !DILocation(line: 421, column: 7, scope: !6954)
!6962 = !DILocation(line: 422, column: 7, scope: !6959)
!6963 = !DILocation(line: 422, column: 4, scope: !6959)
!6964 = !DILocation(line: 423, column: 17, scope: !6954)
!6965 = !DILocation(line: 423, column: 22, scope: !6954)
!6966 = !DILocation(line: 423, column: 3, scope: !6954)
!6967 = !DILocation(line: 426, column: 2, scope: !6954)
!6968 = !DILocation(line: 427, column: 1, scope: !6944)
!6969 = distinct !DISubprogram(name: "dwc3_otg_get_irq", scope: !1, file: !1, line: 137, type: !6646, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!6970 = !DILocalVariable(name: "dwc", arg: 1, scope: !6969, file: !1, line: 137, type: !292)
!6971 = !DILocation(line: 137, column: 42, scope: !6969)
!6972 = !DILocalVariable(name: "dwc3_pdev", scope: !6969, file: !1, line: 139, type: !5170)
!6973 = !DILocation(line: 139, column: 26, scope: !6969)
!6974 = !DILocalVariable(name: "__mptr", scope: !6975, file: !1, line: 139, type: !290)
!6975 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 139, column: 38)
!6976 = !DILocation(line: 139, column: 38, scope: !6975)
!6977 = !DILocation(line: 139, column: 38, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6975, file: !1, line: 139, column: 38)
!6979 = !DILocalVariable(name: "irq", scope: !6969, file: !1, line: 140, type: !397)
!6980 = !DILocation(line: 140, column: 6, scope: !6969)
!6981 = !DILocation(line: 142, column: 41, scope: !6969)
!6982 = !DILocation(line: 142, column: 8, scope: !6969)
!6983 = !DILocation(line: 142, column: 6, scope: !6969)
!6984 = !DILocation(line: 143, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 143, column: 6)
!6986 = !DILocation(line: 143, column: 10, scope: !6985)
!6987 = !DILocation(line: 143, column: 6, scope: !6969)
!6988 = !DILocation(line: 144, column: 3, scope: !6985)
!6989 = !DILocation(line: 146, column: 6, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 146, column: 6)
!6991 = !DILocation(line: 146, column: 10, scope: !6990)
!6992 = !DILocation(line: 146, column: 6, scope: !6969)
!6993 = !DILocation(line: 147, column: 3, scope: !6990)
!6994 = !DILocation(line: 149, column: 41, scope: !6969)
!6995 = !DILocation(line: 149, column: 8, scope: !6969)
!6996 = !DILocation(line: 149, column: 6, scope: !6969)
!6997 = !DILocation(line: 150, column: 6, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 150, column: 6)
!6999 = !DILocation(line: 150, column: 10, scope: !6998)
!7000 = !DILocation(line: 150, column: 6, scope: !6969)
!7001 = !DILocation(line: 151, column: 3, scope: !6998)
!7002 = !DILocation(line: 153, column: 6, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 153, column: 6)
!7004 = !DILocation(line: 153, column: 10, scope: !7003)
!7005 = !DILocation(line: 153, column: 6, scope: !6969)
!7006 = !DILocation(line: 154, column: 3, scope: !7003)
!7007 = !DILocation(line: 156, column: 25, scope: !6969)
!7008 = !DILocation(line: 156, column: 8, scope: !6969)
!7009 = !DILocation(line: 156, column: 6, scope: !6969)
!7010 = !DILocation(line: 157, column: 6, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 157, column: 6)
!7012 = !DILocation(line: 157, column: 10, scope: !7011)
!7013 = !DILocation(line: 157, column: 6, scope: !6969)
!7014 = !DILocation(line: 158, column: 3, scope: !7011)
!7015 = !DILocation(line: 160, column: 7, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !6969, file: !1, line: 160, column: 6)
!7017 = !DILocation(line: 160, column: 6, scope: !6969)
!7018 = !DILocation(line: 161, column: 7, scope: !7016)
!7019 = !DILocation(line: 161, column: 3, scope: !7016)
!7020 = !DILabel(scope: !6969, name: "out", file: !1, line: 163)
!7021 = !DILocation(line: 163, column: 1, scope: !6969)
!7022 = !DILocation(line: 164, column: 9, scope: !6969)
!7023 = !DILocation(line: 164, column: 2, scope: !6969)
!7024 = distinct !DISubprogram(name: "dwc3_otg_irq", scope: !1, file: !1, line: 69, type: !7025, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7025 = !DISubroutineType(types: !7026)
!7026 = !{!7027, !397, !290}
!7027 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !281, line: 17, baseType: !280)
!7028 = !DILocalVariable(name: "irq", arg: 1, scope: !7024, file: !1, line: 69, type: !397)
!7029 = !DILocation(line: 69, column: 37, scope: !7024)
!7030 = !DILocalVariable(name: "_dwc", arg: 2, scope: !7024, file: !1, line: 69, type: !290)
!7031 = !DILocation(line: 69, column: 48, scope: !7024)
!7032 = !DILocalVariable(name: "reg", scope: !7024, file: !1, line: 71, type: !329)
!7033 = !DILocation(line: 71, column: 6, scope: !7024)
!7034 = !DILocalVariable(name: "dwc", scope: !7024, file: !1, line: 72, type: !292)
!7035 = !DILocation(line: 72, column: 15, scope: !7024)
!7036 = !DILocation(line: 72, column: 21, scope: !7024)
!7037 = !DILocalVariable(name: "ret", scope: !7024, file: !1, line: 73, type: !7027)
!7038 = !DILocation(line: 73, column: 14, scope: !7024)
!7039 = !DILocation(line: 75, column: 19, scope: !7024)
!7040 = !DILocation(line: 75, column: 24, scope: !7024)
!7041 = !DILocation(line: 75, column: 8, scope: !7024)
!7042 = !DILocation(line: 75, column: 6, scope: !7024)
!7043 = !DILocation(line: 76, column: 6, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7024, file: !1, line: 76, column: 6)
!7045 = !DILocation(line: 76, column: 6, scope: !7024)
!7046 = !DILocation(line: 78, column: 9, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7048, file: !1, line: 78, column: 7)
!7048 = distinct !DILexicalBlock(scope: !7044, file: !1, line: 76, column: 11)
!7049 = !DILocation(line: 78, column: 13, scope: !7047)
!7050 = !DILocation(line: 78, column: 7, scope: !7048)
!7051 = !DILocation(line: 79, column: 16, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !7047, file: !1, line: 78, column: 37)
!7053 = !DILocation(line: 79, column: 21, scope: !7052)
!7054 = !DILocation(line: 79, column: 38, scope: !7052)
!7055 = !DILocation(line: 79, column: 4, scope: !7052)
!7056 = !DILocation(line: 80, column: 4, scope: !7052)
!7057 = !DILocation(line: 83, column: 7, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7048, file: !1, line: 83, column: 7)
!7059 = !DILocation(line: 83, column: 12, scope: !7058)
!7060 = !DILocation(line: 83, column: 29, scope: !7058)
!7061 = !DILocation(line: 83, column: 51, scope: !7058)
!7062 = !DILocation(line: 84, column: 9, scope: !7058)
!7063 = !DILocation(line: 84, column: 13, scope: !7058)
!7064 = !DILocation(line: 83, column: 7, scope: !7048)
!7065 = !DILocation(line: 85, column: 4, scope: !7058)
!7066 = !DILocation(line: 85, column: 9, scope: !7058)
!7067 = !DILocation(line: 85, column: 26, scope: !7058)
!7068 = !DILocation(line: 86, column: 15, scope: !7048)
!7069 = !DILocation(line: 86, column: 20, scope: !7048)
!7070 = !DILocation(line: 86, column: 37, scope: !7048)
!7071 = !DILocation(line: 86, column: 3, scope: !7048)
!7072 = !DILocation(line: 87, column: 7, scope: !7048)
!7073 = !DILocation(line: 88, column: 2, scope: !7048)
!7074 = !DILocation(line: 90, column: 9, scope: !7024)
!7075 = !DILocation(line: 90, column: 2, scope: !7024)
!7076 = !DILocation(line: 91, column: 1, scope: !7024)
!7077 = distinct !DISubprogram(name: "dwc3_otg_thread_irq", scope: !1, file: !1, line: 52, type: !7025, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7078 = !DILocalVariable(name: "lock", arg: 1, scope: !7079, file: !6191, line: 392, type: !2358)
!7079 = distinct !DISubprogram(name: "spin_unlock", scope: !6191, file: !6191, line: 392, type: !7080, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7080 = !DISubroutineType(types: !7081)
!7081 = !{null, !2358}
!7082 = !DILocation(line: 392, column: 53, scope: !7079, inlinedAt: !7083)
!7083 = distinct !DILocation(line: 62, column: 2, scope: !7077)
!7084 = !DILocalVariable(name: "lock", arg: 1, scope: !7085, file: !6191, line: 352, type: !2358)
!7085 = distinct !DISubprogram(name: "spin_lock", scope: !6191, file: !6191, line: 352, type: !7080, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7086 = !DILocation(line: 352, column: 51, scope: !7085, inlinedAt: !7087)
!7087 = distinct !DILocation(line: 56, column: 2, scope: !7077)
!7088 = !DILocalVariable(name: "irq", arg: 1, scope: !7077, file: !1, line: 52, type: !397)
!7089 = !DILocation(line: 52, column: 44, scope: !7077)
!7090 = !DILocalVariable(name: "_dwc", arg: 2, scope: !7077, file: !1, line: 52, type: !290)
!7091 = !DILocation(line: 52, column: 55, scope: !7077)
!7092 = !DILocalVariable(name: "dwc", scope: !7077, file: !1, line: 54, type: !292)
!7093 = !DILocation(line: 54, column: 15, scope: !7077)
!7094 = !DILocation(line: 54, column: 21, scope: !7077)
!7095 = !DILocation(line: 56, column: 13, scope: !7077)
!7096 = !DILocation(line: 56, column: 18, scope: !7077)
!7097 = !DILocation(line: 354, column: 2, scope: !7098, inlinedAt: !7087)
!7098 = distinct !DILexicalBlock(scope: !7085, file: !6191, line: 354, column: 2)
!7099 = !{i32 -2145276781}
!7100 = !DILocation(line: 354, column: 2, scope: !7101, inlinedAt: !7087)
!7101 = distinct !DILexicalBlock(scope: !7098, file: !6191, line: 354, column: 2)
!7102 = !DILocation(line: 57, column: 6, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7077, file: !1, line: 57, column: 6)
!7104 = !DILocation(line: 57, column: 11, scope: !7103)
!7105 = !DILocation(line: 57, column: 6, scope: !7077)
!7106 = !DILocation(line: 58, column: 22, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7103, file: !1, line: 57, column: 29)
!7108 = !DILocation(line: 58, column: 3, scope: !7107)
!7109 = !DILocation(line: 59, column: 3, scope: !7107)
!7110 = !DILocation(line: 59, column: 8, scope: !7107)
!7111 = !DILocation(line: 59, column: 25, scope: !7107)
!7112 = !DILocation(line: 60, column: 2, scope: !7107)
!7113 = !DILocation(line: 62, column: 15, scope: !7077)
!7114 = !DILocation(line: 62, column: 20, scope: !7077)
!7115 = !DILocation(line: 394, column: 2, scope: !7116, inlinedAt: !7083)
!7116 = distinct !DILexicalBlock(scope: !7079, file: !6191, line: 394, column: 2)
!7117 = !{i32 -2145274420}
!7118 = !DILocation(line: 394, column: 2, scope: !7119, inlinedAt: !7083)
!7119 = distinct !DILexicalBlock(scope: !7116, file: !6191, line: 394, column: 2)
!7120 = !DILocation(line: 64, column: 16, scope: !7077)
!7121 = !DILocation(line: 64, column: 2, scope: !7077)
!7122 = !DILocation(line: 66, column: 2, scope: !7077)
!7123 = distinct !DISubprogram(name: "dwc3_drd_exit", scope: !1, file: !1, line: 623, type: !5984, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7124 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !7125)
!7125 = distinct !DILocation(line: 649, column: 3, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7123, file: !1, line: 637, column: 32)
!7127 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !7125)
!7128 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !7129)
!7129 = distinct !DILocation(line: 647, column: 3, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7131, file: !1, line: 647, column: 3)
!7131 = distinct !DILexicalBlock(scope: !7132, file: !1, line: 647, column: 3)
!7132 = distinct !DILexicalBlock(scope: !7133, file: !1, line: 647, column: 3)
!7133 = distinct !DILexicalBlock(scope: !7134, file: !1, line: 647, column: 3)
!7134 = distinct !DILexicalBlock(scope: !7126, file: !1, line: 647, column: 3)
!7135 = !DILocalVariable(name: "dwc", arg: 1, scope: !7123, file: !1, line: 623, type: !292)
!7136 = !DILocation(line: 623, column: 33, scope: !7123)
!7137 = !DILocalVariable(name: "flags", scope: !7123, file: !1, line: 625, type: !289)
!7138 = !DILocation(line: 625, column: 16, scope: !7123)
!7139 = !DILocation(line: 627, column: 6, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7123, file: !1, line: 627, column: 6)
!7141 = !DILocation(line: 627, column: 11, scope: !7140)
!7142 = !DILocation(line: 627, column: 6, scope: !7123)
!7143 = !DILocation(line: 628, column: 30, scope: !7140)
!7144 = !DILocation(line: 628, column: 35, scope: !7140)
!7145 = !DILocation(line: 628, column: 3, scope: !7140)
!7146 = !DILocation(line: 630, column: 6, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7123, file: !1, line: 630, column: 6)
!7148 = !DILocation(line: 630, column: 11, scope: !7147)
!7149 = !DILocation(line: 630, column: 6, scope: !7123)
!7150 = !DILocation(line: 631, column: 30, scope: !7147)
!7151 = !DILocation(line: 631, column: 35, scope: !7147)
!7152 = !DILocation(line: 632, column: 10, scope: !7147)
!7153 = !DILocation(line: 632, column: 15, scope: !7147)
!7154 = !DILocation(line: 631, column: 3, scope: !7147)
!7155 = !DILocation(line: 634, column: 20, scope: !7123)
!7156 = !DILocation(line: 634, column: 25, scope: !7123)
!7157 = !DILocation(line: 634, column: 2, scope: !7123)
!7158 = !DILocation(line: 637, column: 10, scope: !7123)
!7159 = !DILocation(line: 637, column: 15, scope: !7123)
!7160 = !DILocation(line: 637, column: 2, scope: !7123)
!7161 = !DILocation(line: 639, column: 18, scope: !7126)
!7162 = !DILocation(line: 639, column: 3, scope: !7126)
!7163 = !DILocation(line: 640, column: 3, scope: !7126)
!7164 = !DILocation(line: 642, column: 20, scope: !7126)
!7165 = !DILocation(line: 642, column: 3, scope: !7126)
!7166 = !DILocation(line: 643, column: 30, scope: !7126)
!7167 = !DILocation(line: 643, column: 3, scope: !7126)
!7168 = !DILocation(line: 644, column: 3, scope: !7126)
!7169 = !DILocation(line: 646, column: 17, scope: !7126)
!7170 = !DILocation(line: 646, column: 3, scope: !7126)
!7171 = !DILocation(line: 647, column: 3, scope: !7126)
!7172 = !DILocation(line: 647, column: 3, scope: !7134)
!7173 = !DILocalVariable(name: "__dummy", scope: !7174, file: !1, line: 647, type: !289)
!7174 = distinct !DILexicalBlock(scope: !7133, file: !1, line: 647, column: 3)
!7175 = !DILocation(line: 647, column: 3, scope: !7174)
!7176 = !DILocalVariable(name: "__dummy2", scope: !7174, file: !1, line: 647, type: !289)
!7177 = !DILocation(line: 647, column: 3, scope: !7133)
!7178 = !DILocation(line: 647, column: 3, scope: !7132)
!7179 = !DILocation(line: 647, column: 3, scope: !7180)
!7180 = distinct !DILexicalBlock(scope: !7132, file: !1, line: 647, column: 3)
!7181 = !DILocalVariable(name: "__dummy", scope: !7182, file: !1, line: 647, type: !289)
!7182 = distinct !DILexicalBlock(scope: !7183, file: !1, line: 647, column: 3)
!7183 = distinct !DILexicalBlock(scope: !7180, file: !1, line: 647, column: 3)
!7184 = !DILocation(line: 647, column: 3, scope: !7182)
!7185 = !DILocalVariable(name: "__dummy2", scope: !7182, file: !1, line: 647, type: !289)
!7186 = !DILocation(line: 647, column: 3, scope: !7183)
!7187 = !DILocation(line: 647, column: 3, scope: !7131)
!7188 = !{i32 -2140288970}
!7189 = !DILocation(line: 647, column: 3, scope: !7130)
!7190 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !7129)
!7191 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !7129)
!7192 = !DILocation(line: 648, column: 3, scope: !7126)
!7193 = !DILocation(line: 648, column: 8, scope: !7126)
!7194 = !DILocation(line: 648, column: 25, scope: !7126)
!7195 = !DILocation(line: 649, column: 27, scope: !7126)
!7196 = !DILocation(line: 649, column: 32, scope: !7126)
!7197 = !DILocation(line: 649, column: 38, scope: !7126)
!7198 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !7125)
!7199 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !7125)
!7200 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !7125)
!7201 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !7125)
!7202 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !7125)
!7203 = !DILocation(line: 650, column: 19, scope: !7126)
!7204 = !DILocation(line: 650, column: 3, scope: !7126)
!7205 = !DILocation(line: 651, column: 3, scope: !7126)
!7206 = !DILocation(line: 653, column: 3, scope: !7126)
!7207 = !DILocation(line: 656, column: 6, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7123, file: !1, line: 656, column: 6)
!7209 = !DILocation(line: 656, column: 11, scope: !7208)
!7210 = !DILocation(line: 656, column: 6, scope: !7123)
!7211 = !DILocation(line: 657, column: 12, scope: !7208)
!7212 = !DILocation(line: 657, column: 17, scope: !7208)
!7213 = !DILocation(line: 657, column: 26, scope: !7208)
!7214 = !DILocation(line: 657, column: 3, scope: !7208)
!7215 = !DILocation(line: 658, column: 1, scope: !7123)
!7216 = distinct !DISubprogram(name: "readl", scope: !7217, file: !7217, line: 59, type: !7218, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7217 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!7218 = !DISubroutineType(types: !7219)
!7219 = !{!5, !7220}
!7220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7221, size: 64)
!7221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7222)
!7222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7223 = !DILocalVariable(name: "addr", arg: 1, scope: !7216, file: !7217, line: 59, type: !7220)
!7224 = !DILocation(line: 59, column: 1, scope: !7216)
!7225 = !DILocalVariable(name: "ret", scope: !7216, file: !7217, line: 59, type: !5)
!7226 = !{i32 -2142272900}
!7227 = distinct !DISubprogram(name: "trace_dwc3_readl", scope: !7228, file: !7228, line: 39, type: !6028, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7228 = !DIFile(filename: "drivers/usb/dwc3/trace.h", directory: "/home/lizy2001/genbc/linux")
!7229 = !DILocalVariable(name: "base", arg: 1, scope: !7227, file: !7228, line: 39, type: !290)
!7230 = !DILocation(line: 39, column: 1, scope: !7227)
!7231 = !DILocalVariable(name: "offset", arg: 2, scope: !7227, file: !7228, line: 39, type: !329)
!7232 = !DILocalVariable(name: "value", arg: 3, scope: !7227, file: !7228, line: 39, type: !329)
!7233 = distinct !DISubprogram(name: "writel", scope: !7217, file: !7217, line: 67, type: !7234, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7234 = !DISubroutineType(types: !7235)
!7235 = !{null, !5, !7236}
!7236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7222, size: 64)
!7237 = !DILocalVariable(name: "val", arg: 1, scope: !7233, file: !7217, line: 67, type: !5)
!7238 = !DILocation(line: 67, column: 1, scope: !7233)
!7239 = !DILocalVariable(name: "addr", arg: 2, scope: !7233, file: !7217, line: 67, type: !7236)
!7240 = !{i32 -2142270507}
!7241 = distinct !DISubprogram(name: "trace_dwc3_writel", scope: !7228, file: !7228, line: 44, type: !6028, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7242 = !DILocalVariable(name: "base", arg: 1, scope: !7241, file: !7228, line: 44, type: !290)
!7243 = !DILocation(line: 44, column: 1, scope: !7241)
!7244 = !DILocalVariable(name: "offset", arg: 2, scope: !7241, file: !7228, line: 44, type: !329)
!7245 = !DILocalVariable(name: "value", arg: 3, scope: !7241, file: !7228, line: 44, type: !329)
!7246 = distinct !DISubprogram(name: "dwc3_otg_enable_events", scope: !1, file: !1, line: 27, type: !6106, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7247 = !DILocalVariable(name: "dwc", arg: 1, scope: !7246, file: !1, line: 27, type: !292)
!7248 = !DILocation(line: 27, column: 49, scope: !7246)
!7249 = !DILocalVariable(name: "enable_mask", arg: 2, scope: !7246, file: !1, line: 27, type: !329)
!7250 = !DILocation(line: 27, column: 58, scope: !7246)
!7251 = !DILocalVariable(name: "reg", scope: !7246, file: !1, line: 29, type: !329)
!7252 = !DILocation(line: 29, column: 6, scope: !7246)
!7253 = !DILocation(line: 29, column: 23, scope: !7246)
!7254 = !DILocation(line: 29, column: 28, scope: !7246)
!7255 = !DILocation(line: 29, column: 12, scope: !7246)
!7256 = !DILocation(line: 31, column: 10, scope: !7246)
!7257 = !DILocation(line: 31, column: 6, scope: !7246)
!7258 = !DILocation(line: 32, column: 14, scope: !7246)
!7259 = !DILocation(line: 32, column: 19, scope: !7246)
!7260 = !DILocation(line: 32, column: 38, scope: !7246)
!7261 = !DILocation(line: 32, column: 2, scope: !7246)
!7262 = !DILocation(line: 33, column: 1, scope: !7246)
!7263 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6542, file: !6542, line: 646, type: !6543, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7264 = !DILocalVariable(name: "__ret", scope: !7265, file: !6542, line: 648, type: !289)
!7265 = distinct !DILexicalBlock(scope: !7263, file: !6542, line: 648, column: 9)
!7266 = !DILocation(line: 648, column: 9, scope: !7265)
!7267 = !DILocalVariable(name: "__edi", scope: !7265, file: !6542, line: 648, type: !289)
!7268 = !DILocalVariable(name: "__esi", scope: !7265, file: !6542, line: 648, type: !289)
!7269 = !DILocalVariable(name: "__edx", scope: !7265, file: !6542, line: 648, type: !289)
!7270 = !DILocalVariable(name: "__ecx", scope: !7265, file: !6542, line: 648, type: !289)
!7271 = !DILocalVariable(name: "__eax", scope: !7265, file: !6542, line: 648, type: !289)
!7272 = !DILocation(line: 648, column: 9, scope: !7273)
!7273 = distinct !DILexicalBlock(scope: !7274, file: !6542, line: 648, column: 9)
!7274 = distinct !DILexicalBlock(scope: !7265, file: !6542, line: 648, column: 9)
!7275 = !{i32 -2145748937, i32 -2145746622, i32 -2145746388, i32 -2145746337, i32 -2145746309, i32 -2145746284, i32 -2145746600, i32 -2145746587, i32 -2145746149, i32 -2145746030, i32 -2145746495, i32 -2145746468, i32 -2145746440, i32 -2145746410}
!7276 = !DILocalVariable(name: "__mask", scope: !7277, file: !6542, line: 648, type: !289)
!7277 = distinct !DILexicalBlock(scope: !7273, file: !6542, line: 648, column: 9)
!7278 = !DILocation(line: 648, column: 9, scope: !7277)
!7279 = !DILocation(line: 648, column: 9, scope: !7274)
!7280 = !DILocation(line: 648, column: 2, scope: !7263)
!7281 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6542, file: !6542, line: 656, type: !3309, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7282 = !DILocalVariable(name: "__edi", scope: !7283, file: !6542, line: 658, type: !289)
!7283 = distinct !DILexicalBlock(scope: !7281, file: !6542, line: 658, column: 2)
!7284 = !DILocation(line: 658, column: 2, scope: !7283)
!7285 = !DILocalVariable(name: "__esi", scope: !7283, file: !6542, line: 658, type: !289)
!7286 = !DILocalVariable(name: "__edx", scope: !7283, file: !6542, line: 658, type: !289)
!7287 = !DILocalVariable(name: "__ecx", scope: !7283, file: !6542, line: 658, type: !289)
!7288 = !DILocalVariable(name: "__eax", scope: !7283, file: !6542, line: 658, type: !289)
!7289 = !{i32 -2145741843, i32 -2145741111, i32 -2145740877, i32 -2145740826, i32 -2145740798, i32 -2145740773, i32 -2145741089, i32 -2145741076, i32 -2145740638, i32 -2145740519, i32 -2145740984, i32 -2145740957, i32 -2145740929, i32 -2145740899}
!7290 = !DILocation(line: 659, column: 1, scope: !7281)
!7291 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6542, file: !6542, line: 651, type: !7292, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7292 = !DISubroutineType(types: !7293)
!7293 = !{null, !289}
!7294 = !DILocalVariable(name: "f", arg: 1, scope: !7291, file: !6542, line: 651, type: !289)
!7295 = !DILocation(line: 651, column: 65, scope: !7291)
!7296 = !DILocalVariable(name: "__edi", scope: !7297, file: !6542, line: 653, type: !289)
!7297 = distinct !DILexicalBlock(scope: !7291, file: !6542, line: 653, column: 2)
!7298 = !DILocation(line: 653, column: 2, scope: !7297)
!7299 = !DILocalVariable(name: "__esi", scope: !7297, file: !6542, line: 653, type: !289)
!7300 = !DILocalVariable(name: "__edx", scope: !7297, file: !6542, line: 653, type: !289)
!7301 = !DILocalVariable(name: "__ecx", scope: !7297, file: !6542, line: 653, type: !289)
!7302 = !DILocalVariable(name: "__eax", scope: !7297, file: !6542, line: 653, type: !289)
!7303 = !{i32 -2145744470, i32 -2145743720, i32 -2145743486, i32 -2145743435, i32 -2145743407, i32 -2145743382, i32 -2145743698, i32 -2145743685, i32 -2145743247, i32 -2145743128, i32 -2145743593, i32 -2145743566, i32 -2145743538, i32 -2145743508}
!7304 = !DILocation(line: 654, column: 1, scope: !7291)
!7305 = distinct !DISubprogram(name: "ERR_PTR", scope: !6815, file: !6815, line: 24, type: !7306, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7306 = !DISubroutineType(types: !7307)
!7307 = !{!290, !291}
!7308 = !DILocalVariable(name: "error", arg: 1, scope: !7305, file: !6815, line: 24, type: !291)
!7309 = !DILocation(line: 24, column: 48, scope: !7305)
!7310 = !DILocation(line: 26, column: 18, scope: !7305)
!7311 = !DILocation(line: 26, column: 9, scope: !7305)
!7312 = !DILocation(line: 26, column: 2, scope: !7305)
!7313 = distinct !DISubprogram(name: "of_node_put", scope: !5007, file: !5007, line: 129, type: !7314, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7314 = !DISubroutineType(types: !7315)
!7315 = !{null, !5005}
!7316 = !DILocalVariable(name: "node", arg: 1, scope: !7313, file: !5007, line: 129, type: !5005)
!7317 = !DILocation(line: 129, column: 52, scope: !7313)
!7318 = !DILocation(line: 129, column: 60, scope: !7313)
!7319 = distinct !DISubprogram(name: "dwc3_usb_role_switch_set", scope: !1, file: !1, line: 481, type: !6855, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7320 = !DILocalVariable(name: "sw", arg: 1, scope: !7319, file: !1, line: 481, type: !5876)
!7321 = !DILocation(line: 481, column: 61, scope: !7319)
!7322 = !DILocalVariable(name: "role", arg: 2, scope: !7319, file: !1, line: 482, type: !274)
!7323 = !DILocation(line: 482, column: 23, scope: !7319)
!7324 = !DILocalVariable(name: "dwc", scope: !7319, file: !1, line: 484, type: !292)
!7325 = !DILocation(line: 484, column: 15, scope: !7319)
!7326 = !DILocation(line: 484, column: 49, scope: !7319)
!7327 = !DILocation(line: 484, column: 21, scope: !7319)
!7328 = !DILocalVariable(name: "mode", scope: !7319, file: !1, line: 485, type: !329)
!7329 = !DILocation(line: 485, column: 6, scope: !7319)
!7330 = !DILocation(line: 487, column: 10, scope: !7319)
!7331 = !DILocation(line: 487, column: 2, scope: !7319)
!7332 = !DILocation(line: 489, column: 8, scope: !7333)
!7333 = distinct !DILexicalBlock(scope: !7319, file: !1, line: 487, column: 16)
!7334 = !DILocation(line: 490, column: 3, scope: !7333)
!7335 = !DILocation(line: 492, column: 8, scope: !7333)
!7336 = !DILocation(line: 493, column: 3, scope: !7333)
!7337 = !DILocation(line: 495, column: 7, scope: !7338)
!7338 = distinct !DILexicalBlock(scope: !7333, file: !1, line: 495, column: 7)
!7339 = !DILocation(line: 495, column: 12, scope: !7338)
!7340 = !DILocation(line: 495, column: 37, scope: !7338)
!7341 = !DILocation(line: 495, column: 7, scope: !7333)
!7342 = !DILocation(line: 496, column: 9, scope: !7338)
!7343 = !DILocation(line: 496, column: 4, scope: !7338)
!7344 = !DILocation(line: 498, column: 9, scope: !7338)
!7345 = !DILocation(line: 499, column: 3, scope: !7333)
!7346 = !DILocation(line: 502, column: 16, scope: !7319)
!7347 = !DILocation(line: 502, column: 21, scope: !7319)
!7348 = !DILocation(line: 502, column: 2, scope: !7319)
!7349 = !DILocation(line: 503, column: 2, scope: !7319)
!7350 = distinct !DISubprogram(name: "dwc3_usb_role_switch_get", scope: !1, file: !1, line: 506, type: !6860, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !541)
!7351 = !DILocation(line: 407, column: 64, scope: !6190, inlinedAt: !7352)
!7352 = distinct !DILocation(line: 530, column: 2, scope: !7350)
!7353 = !DILocation(line: 407, column: 84, scope: !6190, inlinedAt: !7352)
!7354 = !DILocation(line: 327, column: 67, scope: !6200, inlinedAt: !7355)
!7355 = distinct !DILocation(line: 512, column: 2, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !7357, file: !1, line: 512, column: 2)
!7357 = distinct !DILexicalBlock(scope: !7358, file: !1, line: 512, column: 2)
!7358 = distinct !DILexicalBlock(scope: !7359, file: !1, line: 512, column: 2)
!7359 = distinct !DILexicalBlock(scope: !7360, file: !1, line: 512, column: 2)
!7360 = distinct !DILexicalBlock(scope: !7350, file: !1, line: 512, column: 2)
!7361 = !DILocalVariable(name: "sw", arg: 1, scope: !7350, file: !1, line: 506, type: !5876)
!7362 = !DILocation(line: 506, column: 71, scope: !7350)
!7363 = !DILocalVariable(name: "dwc", scope: !7350, file: !1, line: 508, type: !292)
!7364 = !DILocation(line: 508, column: 15, scope: !7350)
!7365 = !DILocation(line: 508, column: 49, scope: !7350)
!7366 = !DILocation(line: 508, column: 21, scope: !7350)
!7367 = !DILocalVariable(name: "flags", scope: !7350, file: !1, line: 509, type: !289)
!7368 = !DILocation(line: 509, column: 16, scope: !7350)
!7369 = !DILocalVariable(name: "role", scope: !7350, file: !1, line: 510, type: !274)
!7370 = !DILocation(line: 510, column: 16, scope: !7350)
!7371 = !DILocation(line: 512, column: 2, scope: !7350)
!7372 = !DILocation(line: 512, column: 2, scope: !7360)
!7373 = !DILocalVariable(name: "__dummy", scope: !7374, file: !1, line: 512, type: !289)
!7374 = distinct !DILexicalBlock(scope: !7359, file: !1, line: 512, column: 2)
!7375 = !DILocation(line: 512, column: 2, scope: !7374)
!7376 = !DILocalVariable(name: "__dummy2", scope: !7374, file: !1, line: 512, type: !289)
!7377 = !DILocation(line: 512, column: 2, scope: !7359)
!7378 = !DILocation(line: 512, column: 2, scope: !7358)
!7379 = !DILocation(line: 512, column: 2, scope: !7380)
!7380 = distinct !DILexicalBlock(scope: !7358, file: !1, line: 512, column: 2)
!7381 = !DILocalVariable(name: "__dummy", scope: !7382, file: !1, line: 512, type: !289)
!7382 = distinct !DILexicalBlock(scope: !7383, file: !1, line: 512, column: 2)
!7383 = distinct !DILexicalBlock(scope: !7380, file: !1, line: 512, column: 2)
!7384 = !DILocation(line: 512, column: 2, scope: !7382)
!7385 = !DILocalVariable(name: "__dummy2", scope: !7382, file: !1, line: 512, type: !289)
!7386 = !DILocation(line: 512, column: 2, scope: !7383)
!7387 = !DILocation(line: 512, column: 2, scope: !7357)
!7388 = !{i32 -2140292139}
!7389 = !DILocation(line: 512, column: 2, scope: !7356)
!7390 = !DILocation(line: 329, column: 10, scope: !6200, inlinedAt: !7355)
!7391 = !DILocation(line: 329, column: 16, scope: !6200, inlinedAt: !7355)
!7392 = !DILocation(line: 513, column: 10, scope: !7350)
!7393 = !DILocation(line: 513, column: 15, scope: !7350)
!7394 = !DILocation(line: 513, column: 2, scope: !7350)
!7395 = !DILocation(line: 515, column: 8, scope: !7396)
!7396 = distinct !DILexicalBlock(scope: !7350, file: !1, line: 513, column: 32)
!7397 = !DILocation(line: 516, column: 3, scope: !7396)
!7398 = !DILocation(line: 518, column: 8, scope: !7396)
!7399 = !DILocation(line: 519, column: 3, scope: !7396)
!7400 = !DILocation(line: 521, column: 10, scope: !7396)
!7401 = !DILocation(line: 521, column: 15, scope: !7396)
!7402 = !DILocation(line: 521, column: 8, scope: !7396)
!7403 = !DILocation(line: 522, column: 3, scope: !7396)
!7404 = !DILocation(line: 524, column: 7, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7396, file: !1, line: 524, column: 7)
!7406 = !DILocation(line: 524, column: 12, scope: !7405)
!7407 = !DILocation(line: 524, column: 37, scope: !7405)
!7408 = !DILocation(line: 524, column: 7, scope: !7396)
!7409 = !DILocation(line: 525, column: 9, scope: !7405)
!7410 = !DILocation(line: 525, column: 4, scope: !7405)
!7411 = !DILocation(line: 527, column: 9, scope: !7405)
!7412 = !DILocation(line: 528, column: 3, scope: !7396)
!7413 = !DILocation(line: 530, column: 26, scope: !7350)
!7414 = !DILocation(line: 530, column: 31, scope: !7350)
!7415 = !DILocation(line: 530, column: 37, scope: !7350)
!7416 = !DILocation(line: 409, column: 2, scope: !6334, inlinedAt: !7352)
!7417 = !DILocation(line: 409, column: 2, scope: !6339, inlinedAt: !7352)
!7418 = !DILocation(line: 409, column: 2, scope: !6340, inlinedAt: !7352)
!7419 = !DILocation(line: 409, column: 2, scope: !6347, inlinedAt: !7352)
!7420 = !DILocation(line: 409, column: 2, scope: !6350, inlinedAt: !7352)
!7421 = !DILocation(line: 531, column: 9, scope: !7350)
!7422 = !DILocation(line: 531, column: 2, scope: !7350)
