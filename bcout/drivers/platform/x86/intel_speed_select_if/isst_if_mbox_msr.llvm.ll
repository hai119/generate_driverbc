; ModuleID = '../bcout/drivers/platform/x86/intel_speed_select_if/isst_if_mbox_msr.llvm.bc'
source_filename = "drivers/platform/x86/intel_speed_select_if/isst_if_mbox_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_isst_if_mbox_init6:\09\09\09"
module asm ".long\09isst_if_mbox_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i64 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.38, %struct.list_head, %struct.list_head, %union.anon.39 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.8, i8* }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.13, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.13 = type { %struct.kernfs_elem_attr }
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
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.14, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.14 = type { %struct.bio_integrity_payload* }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.15, %union.anon.16, %union.anon.17, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.22, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.15 = type { %struct.hlist_node }
%union.anon.16 = type { %struct.rb_node }
%union.anon.17 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.22 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.23, void (i8*)*, i8* }
%union.anon.23 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.24 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.19, %union.anon.20, i32 }
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %struct.hlist_node }
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
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.40 }
%union.anon.40 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.41 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.41 = type { %struct.nfs_lock_info }
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
%union.anon.56 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [48 x i8] }
%struct.anon.27 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.28, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.29, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.30, %union.anon.34, %struct.key_restriction* }
%union.anon.28 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.29 = type { i64 }
%union.anon.30 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.31, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.31 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.34 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.66 }
%struct.anon.66 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.73, i32, [12 x i8] }
%union.anon.73 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.74 = type { %struct.callback_head }
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
%struct.isst_if_cmd_cb = type { i32, i32, i32, %struct.module*, i64 (i8*, i32*, i32)* }
%struct.msrl_action = type { i32, %struct.isst_if_mbox_cmd* }
%struct.isst_if_mbox_cmd = type { i32, i32, i32, i32, i16, i16, i32 }

@__UNIQUE_ID___addressable_isst_if_mbox_init293 = internal global i8* bitcast (i32 ()* @isst_if_mbox_init to i8*), section ".discard.addressable", align 8, !dbg !0
@isst_pm_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @isst_pm_notify, %struct.notifier_block* null, i32 0 }, align 8, !dbg !73
@__exitcall_isst_if_mbox_exit = internal global void ()* @isst_if_mbox_exit, section ".exitcall.exit", align 8, !dbg !33
@__UNIQUE_ID_file294 = internal constant [82 x i8] c"isst_if_mbox_msr.file=drivers/platform/x86/intel_speed_select_if/isst_if_mbox_msr\00", section ".modinfo", align 1, !dbg !40
@__UNIQUE_ID_license295 = internal constant [32 x i8] c"isst_if_mbox_msr.license=GPL v2\00", section ".modinfo", align 1, !dbg !47
@__UNIQUE_ID_description296 = internal constant [73 x i8] c"isst_if_mbox_msr.description=Intel speed select interface mailbox driver\00", section ".modinfo", align 1, !dbg !52
@isst_if_cpu_ids = internal constant [2 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 85, i16 0, i16 0, i64 0 }, %struct.x86_cpu_id zeroinitializer], align 16, !dbg !57
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [6 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_isst_if_mbox_init293 to i8*), i8* bitcast (void ()* @isst_if_mbox_exit to i8*), i8* bitcast (void ()** @__exitcall_isst_if_mbox_exit to i8*), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__UNIQUE_ID_file294, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_license295, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__UNIQUE_ID_description296, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @isst_if_mbox_init() #0 section ".init.text" !dbg !93 {
entry:
  %retval = alloca i32, align 4
  %cb = alloca %struct.isst_if_cmd_cb, align 8
  %id = alloca %struct.x86_cpu_id*, align 8
  %data = alloca i64, align 8
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.isst_if_cmd_cb* %cb, metadata !96, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata %struct.x86_cpu_id** %id, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i64* %data, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !120, metadata !DIExpression()), !dbg !121
  %call = call %struct.x86_cpu_id* @x86_match_cpu(%struct.x86_cpu_id* getelementptr inbounds ([2 x %struct.x86_cpu_id], [2 x %struct.x86_cpu_id]* @isst_if_cpu_ids, i64 0, i64 0)) #7, !dbg !122
  store %struct.x86_cpu_id* %call, %struct.x86_cpu_id** %id, align 8, !dbg !123
  %0 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %id, align 8, !dbg !124
  %tobool = icmp ne %struct.x86_cpu_id* %0, null, !dbg !124
  br i1 %tobool, label %if.end, label %if.then, !dbg !126

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !127
  br label %return, !dbg !127

if.end:                                           ; preds = %entry
  %call1 = call i32 @rdmsrl_safe(i32 176, i64* %data) #7, !dbg !128
  store i32 %call1, i32* %ret, align 4, !dbg !129
  %1 = load i32, i32* %ret, align 4, !dbg !130
  %tobool2 = icmp ne i32 %1, 0, !dbg !130
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !132

if.then3:                                         ; preds = %if.end
  %2 = load i32, i32* %ret, align 4, !dbg !133
  store i32 %2, i32* %retval, align 4, !dbg !134
  br label %return, !dbg !134

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @rdmsrl_safe(i32 177, i64* %data) #7, !dbg !135
  store i32 %call5, i32* %ret, align 4, !dbg !136
  %3 = load i32, i32* %ret, align 4, !dbg !137
  %tobool6 = icmp ne i32 %3, 0, !dbg !137
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !139

if.then7:                                         ; preds = %if.end4
  %4 = load i32, i32* %ret, align 4, !dbg !140
  store i32 %4, i32* %retval, align 4, !dbg !141
  br label %return, !dbg !141

if.end8:                                          ; preds = %if.end4
  %5 = bitcast %struct.isst_if_cmd_cb* %cb to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false), !dbg !142
  %cmd_size = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %cb, i32 0, i32 1, !dbg !143
  store i32 24, i32* %cmd_size, align 4, !dbg !144
  %offset = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %cb, i32 0, i32 2, !dbg !145
  store i32 4, i32* %offset, align 8, !dbg !146
  %cmd_callback = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %cb, i32 0, i32 4, !dbg !147
  store i64 (i8*, i32*, i32)* @isst_if_mbox_proc_cmd, i64 (i8*, i32*, i32)** %cmd_callback, align 8, !dbg !148
  %owner = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %cb, i32 0, i32 3, !dbg !149
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !150
  %call9 = call i32 @isst_if_cdev_register(i32 0, %struct.isst_if_cmd_cb* %cb) #7, !dbg !151
  store i32 %call9, i32* %ret, align 4, !dbg !152
  %6 = load i32, i32* %ret, align 4, !dbg !153
  %tobool10 = icmp ne i32 %6, 0, !dbg !153
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !155

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %ret, align 4, !dbg !156
  store i32 %7, i32* %retval, align 4, !dbg !157
  br label %return, !dbg !157

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @register_pm_notifier(%struct.notifier_block* @isst_pm_nb) #7, !dbg !158
  store i32 %call13, i32* %ret, align 4, !dbg !159
  %8 = load i32, i32* %ret, align 4, !dbg !160
  %tobool14 = icmp ne i32 %8, 0, !dbg !160
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !162

if.then15:                                        ; preds = %if.end12
  call void @isst_if_cdev_unregister(i32 0) #7, !dbg !163
  br label %if.end16, !dbg !163

if.end16:                                         ; preds = %if.then15, %if.end12
  %9 = load i32, i32* %ret, align 4, !dbg !164
  store i32 %9, i32* %retval, align 4, !dbg !165
  br label %return, !dbg !165

return:                                           ; preds = %if.end16, %if.then11, %if.then7, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !166
  ret i32 %10, !dbg !166
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @isst_if_mbox_exit() #0 section ".exit.text" !dbg !167 {
entry:
  %call = call i32 @unregister_pm_notifier(%struct.notifier_block* @isst_pm_nb) #7, !dbg !168
  call void @isst_if_cdev_unregister(i32 0) #7, !dbg !169
  ret void, !dbg !170
}

; Function Attrs: noredzone
declare dso_local i32 @unregister_pm_notifier(%struct.notifier_block*) #1

; Function Attrs: noredzone
declare dso_local void @isst_if_cdev_unregister(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local %struct.x86_cpu_id* @x86_match_cpu(%struct.x86_cpu_id*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsrl_safe(i32 %msr, i64* %p) #3 !dbg !171 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca i64*, align 8
  %err = alloca i32, align 4
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !176, metadata !DIExpression()), !dbg !177
  store i64* %p, i64** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %err, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i32, i32* %msr.addr, align 4, !dbg !182
  %call = call i64 @paravirt_read_msr_safe(i32 %0, i32* %err) #7, !dbg !183
  %1 = load i64*, i64** %p.addr, align 8, !dbg !184
  store i64 %call, i64* %1, align 8, !dbg !185
  %2 = load i32, i32* %err, align 4, !dbg !186
  ret i32 %2, !dbg !187
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @isst_if_mbox_proc_cmd(i8* %cmd_ptr, i32* %write_only, i32 %resume) #3 !dbg !188 {
entry:
  %retval = alloca i64, align 8
  %cmd_ptr.addr = alloca i8*, align 8
  %write_only.addr = alloca i32*, align 8
  %resume.addr = alloca i32, align 4
  %action = alloca %struct.msrl_action, align 8
  %ret = alloca i32, align 4
  store i8* %cmd_ptr, i8** %cmd_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cmd_ptr.addr, metadata !189, metadata !DIExpression()), !dbg !190
  store i32* %write_only, i32** %write_only.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %write_only.addr, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 %resume, i32* %resume.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resume.addr, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.msrl_action* %action, metadata !195, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i8*, i8** %cmd_ptr.addr, align 8, !dbg !203
  %1 = bitcast i8* %0 to %struct.isst_if_mbox_cmd*, !dbg !204
  %mbox_cmd = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !205
  store %struct.isst_if_mbox_cmd* %1, %struct.isst_if_mbox_cmd** %mbox_cmd, align 8, !dbg !206
  %mbox_cmd1 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !207
  %2 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd1, align 8, !dbg !207
  %call = call zeroext i1 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd* %2) #7, !dbg !209
  br i1 %call, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !211
  br label %return, !dbg !211

if.end:                                           ; preds = %entry
  %mbox_cmd2 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !212
  %3 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd2, align 8, !dbg !212
  %call3 = call zeroext i1 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %3) #7, !dbg !214
  br i1 %call3, label %land.lhs.true, label %if.end6, !dbg !215

land.lhs.true:                                    ; preds = %if.end
  %call4 = call zeroext i1 @capable(i32 21) #7, !dbg !216
  br i1 %call4, label %if.end6, label %if.then5, !dbg !217

if.then5:                                         ; preds = %land.lhs.true
  store i64 -1, i64* %retval, align 8, !dbg !218
  br label %return, !dbg !218

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %mbox_cmd7 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !219
  %4 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd7, align 8, !dbg !219
  %logical_cpu = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %4, i32 0, i32 0, !dbg !220
  %5 = load i32, i32* %logical_cpu, align 4, !dbg !220
  %6 = bitcast %struct.msrl_action* %action to i8*, !dbg !221
  %call8 = call i32 @smp_call_function_single(i32 %5, void (i8*)* @msrl_update_func, i8* %6, i32 1) #7, !dbg !222
  store i32 %call8, i32* %ret, align 4, !dbg !223
  %7 = load i32, i32* %ret, align 4, !dbg !224
  %tobool = icmp ne i32 %7, 0, !dbg !224
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !226

if.then9:                                         ; preds = %if.end6
  %8 = load i32, i32* %ret, align 4, !dbg !227
  %conv = sext i32 %8 to i64, !dbg !227
  store i64 %conv, i64* %retval, align 8, !dbg !228
  br label %return, !dbg !228

if.end10:                                         ; preds = %if.end6
  %err = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 0, !dbg !229
  %9 = load i32, i32* %err, align 8, !dbg !229
  %tobool11 = icmp ne i32 %9, 0, !dbg !231
  br i1 %tobool11, label %if.end30, label %land.lhs.true12, !dbg !232

land.lhs.true12:                                  ; preds = %if.end10
  %10 = load i32, i32* %resume.addr, align 4, !dbg !233
  %tobool13 = icmp ne i32 %10, 0, !dbg !233
  br i1 %tobool13, label %if.end30, label %land.lhs.true14, !dbg !234

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %mbox_cmd15 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !235
  %11 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd15, align 8, !dbg !235
  %call16 = call zeroext i1 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %11) #7, !dbg !236
  br i1 %call16, label %if.then18, label %if.end30, !dbg !237

if.then18:                                        ; preds = %land.lhs.true14
  %mbox_cmd19 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !238
  %12 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd19, align 8, !dbg !238
  %command = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %12, i32 0, i32 4, !dbg !239
  %13 = load i16, i16* %command, align 4, !dbg !239
  %conv20 = zext i16 %13 to i32, !dbg !240
  %mbox_cmd21 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !241
  %14 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd21, align 8, !dbg !241
  %sub_command = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %14, i32 0, i32 5, !dbg !242
  %15 = load i16, i16* %sub_command, align 2, !dbg !242
  %conv22 = zext i16 %15 to i32, !dbg !243
  %mbox_cmd23 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !244
  %16 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd23, align 8, !dbg !244
  %logical_cpu24 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %16, i32 0, i32 0, !dbg !245
  %17 = load i32, i32* %logical_cpu24, align 4, !dbg !245
  %mbox_cmd25 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !246
  %18 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd25, align 8, !dbg !246
  %parameter = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %18, i32 0, i32 1, !dbg !247
  %19 = load i32, i32* %parameter, align 4, !dbg !247
  %mbox_cmd26 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 1, !dbg !248
  %20 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd26, align 8, !dbg !248
  %req_data = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %20, i32 0, i32 2, !dbg !249
  %21 = load i32, i32* %req_data, align 4, !dbg !249
  %conv27 = zext i32 %21 to i64, !dbg !250
  %call28 = call i32 @isst_store_cmd(i32 %conv20, i32 %conv22, i32 %17, i32 1, i32 %19, i64 %conv27) #7, !dbg !251
  %err29 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 0, !dbg !252
  store i32 %call28, i32* %err29, align 8, !dbg !253
  br label %if.end30, !dbg !254

if.end30:                                         ; preds = %if.then18, %land.lhs.true14, %land.lhs.true12, %if.end10
  %22 = load i32*, i32** %write_only.addr, align 8, !dbg !255
  store i32 0, i32* %22, align 4, !dbg !256
  %err31 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %action, i32 0, i32 0, !dbg !257
  %23 = load i32, i32* %err31, align 8, !dbg !257
  %conv32 = sext i32 %23 to i64, !dbg !258
  store i64 %conv32, i64* %retval, align 8, !dbg !259
  br label %return, !dbg !259

return:                                           ; preds = %if.end30, %if.then9, %if.then5, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !260
  ret i64 %24, !dbg !260
}

; Function Attrs: noredzone
declare dso_local i32 @isst_if_cdev_register(i32, %struct.isst_if_cmd_cb*) #1

; Function Attrs: noredzone
declare dso_local i32 @register_pm_notifier(%struct.notifier_block*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #3 !dbg !261 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !264, metadata !DIExpression()), !dbg !265
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !271, metadata !DIExpression()), !dbg !270
  %0 = load i64, i64* %__edi, align 8, !dbg !270
  store i64 %0, i64* %__edi, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !272, metadata !DIExpression()), !dbg !270
  %1 = load i64, i64* %__esi, align 8, !dbg !270
  store i64 %1, i64* %__esi, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !273, metadata !DIExpression()), !dbg !270
  %2 = load i64, i64* %__edx, align 8, !dbg !270
  store i64 %2, i64* %__edx, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !274, metadata !DIExpression()), !dbg !270
  %3 = load i64, i64* %__ecx, align 8, !dbg !270
  store i64 %3, i64* %__ecx, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !275, metadata !DIExpression()), !dbg !270
  %4 = load i64, i64* %__eax, align 8, !dbg !270
  store i64 %4, i64* %__eax, align 8, !dbg !270
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !270
  %6 = call i64 @llvm.read_register.i64(metadata !87), !dbg !276
  %7 = load i32, i32* %msr.addr, align 4, !dbg !276
  %conv = zext i32 %7 to i64, !dbg !276
  %8 = load i32*, i32** %err.addr, align 8, !dbg !276
  %9 = ptrtoint i32* %8 to i64, !dbg !276
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #6, !dbg !276, !srcloc !279
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !276
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !276
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !276
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !276
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !276
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !276
  store i64 %asmresult, i64* %__edi, align 8, !dbg !276
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !276
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !276
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !276
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !276
  call void @llvm.write_register.i64(metadata !87, i64 %asmresult5), !dbg !276
  %11 = load i64, i64* %__eax, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !280, metadata !DIExpression()), !dbg !282
  store i64 -1, i64* %__mask, align 8, !dbg !282
  %12 = load i64, i64* %__mask, align 8, !dbg !282
  store i64 %12, i64* %tmp, align 8, !dbg !282
  %13 = load i64, i64* %tmp, align 8, !dbg !282
  %and = and i64 %11, %13, !dbg !276
  store i64 %and, i64* %__ret, align 8, !dbg !276
  %14 = load i64, i64* %__ret, align 8, !dbg !270
  store i64 %14, i64* %tmp6, align 8, !dbg !283
  %15 = load i64, i64* %tmp6, align 8, !dbg !270
  ret i64 %15, !dbg !284
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local zeroext i1 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @smp_call_function_single(i32, void (i8*)*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @msrl_update_func(i8* %info) #3 !dbg !285 {
entry:
  %info.addr = alloca i8*, align 8
  %act = alloca %struct.msrl_action*, align 8
  store i8* %info, i8** %info.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %info.addr, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata %struct.msrl_action** %act, metadata !290, metadata !DIExpression()), !dbg !292
  %0 = load i8*, i8** %info.addr, align 8, !dbg !293
  %1 = bitcast i8* %0 to %struct.msrl_action*, !dbg !293
  store %struct.msrl_action* %1, %struct.msrl_action** %act, align 8, !dbg !292
  %2 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !294
  %mbox_cmd = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %2, i32 0, i32 1, !dbg !295
  %3 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd, align 8, !dbg !295
  %command = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %3, i32 0, i32 4, !dbg !296
  %4 = load i16, i16* %command, align 4, !dbg !296
  %conv = trunc i16 %4 to i8, !dbg !294
  %5 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !297
  %mbox_cmd1 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %5, i32 0, i32 1, !dbg !298
  %6 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd1, align 8, !dbg !298
  %sub_command = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %6, i32 0, i32 5, !dbg !299
  %7 = load i16, i16* %sub_command, align 2, !dbg !299
  %conv2 = trunc i16 %7 to i8, !dbg !297
  %8 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !300
  %mbox_cmd3 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1, !dbg !301
  %9 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd3, align 8, !dbg !301
  %parameter = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %9, i32 0, i32 1, !dbg !302
  %10 = load i32, i32* %parameter, align 4, !dbg !302
  %11 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !303
  %mbox_cmd4 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %11, i32 0, i32 1, !dbg !304
  %12 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd4, align 8, !dbg !304
  %req_data = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %12, i32 0, i32 2, !dbg !305
  %13 = load i32, i32* %req_data, align 4, !dbg !305
  %14 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !306
  %mbox_cmd5 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %14, i32 0, i32 1, !dbg !307
  %15 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %mbox_cmd5, align 8, !dbg !307
  %resp_data = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %15, i32 0, i32 3, !dbg !308
  %call = call i32 @isst_if_send_mbox_cmd(i8 zeroext %conv, i8 zeroext %conv2, i32 %10, i32 %13, i32* %resp_data) #7, !dbg !309
  %16 = load %struct.msrl_action*, %struct.msrl_action** %act, align 8, !dbg !310
  %err = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %16, i32 0, i32 0, !dbg !311
  store i32 %call, i32* %err, align 8, !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noredzone
declare dso_local i32 @isst_store_cmd(i32, i32, i32, i32, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @isst_if_send_mbox_cmd(i8 zeroext %command, i8 zeroext %sub_command, i32 %parameter, i32 %command_data, i32* %response_data) #3 !dbg !314 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i8, align 1
  %sub_command.addr = alloca i8, align 1
  %parameter.addr = alloca i32, align 4
  %command_data.addr = alloca i32, align 4
  %response_data.addr = alloca i32*, align 8
  %retries = alloca i32, align 4
  %data = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !318, metadata !DIExpression()), !dbg !319
  store i8 %sub_command, i8* %sub_command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sub_command.addr, metadata !320, metadata !DIExpression()), !dbg !321
  store i32 %parameter, i32* %parameter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %parameter.addr, metadata !322, metadata !DIExpression()), !dbg !323
  store i32 %command_data, i32* %command_data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command_data.addr, metadata !324, metadata !DIExpression()), !dbg !325
  store i32* %response_data, i32** %response_data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %response_data.addr, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %retries, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata i64* %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !332, metadata !DIExpression()), !dbg !333
  store i32 3, i32* %retries, align 4, !dbg !334
  br label %do.body, !dbg !335

do.body:                                          ; preds = %do.cond, %entry
  br label %do.body1, !dbg !336

do.body1:                                         ; preds = %do.body
  %call = call i64 @paravirt_read_msr(i32 176) #7, !dbg !338
  store i64 %call, i64* %data, align 8, !dbg !338
  br label %do.end, !dbg !338

do.end:                                           ; preds = %do.body1
  %0 = load i64, i64* %data, align 8, !dbg !340
  %and = and i64 %0, 2147483648, !dbg !342
  %tobool = icmp ne i64 %and, 0, !dbg !342
  br i1 %tobool, label %if.then, label %if.end, !dbg !343

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %ret, align 4, !dbg !344
  br label %do.cond, !dbg !346

if.end:                                           ; preds = %do.end
  store i32 0, i32* %ret, align 4, !dbg !347
  br label %do.end3, !dbg !348

do.cond:                                          ; preds = %if.then
  %1 = load i32, i32* %retries, align 4, !dbg !349
  %dec = add i32 %1, -1, !dbg !349
  store i32 %dec, i32* %retries, align 4, !dbg !349
  %tobool2 = icmp ne i32 %dec, 0, !dbg !350
  br i1 %tobool2, label %do.body, label %do.end3, !dbg !350, !llvm.loop !351

do.end3:                                          ; preds = %do.cond, %if.end
  %2 = load i32, i32* %ret, align 4, !dbg !353
  %tobool4 = icmp ne i32 %2, 0, !dbg !353
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !355

if.then5:                                         ; preds = %do.end3
  %3 = load i32, i32* %ret, align 4, !dbg !356
  store i32 %3, i32* %retval, align 4, !dbg !357
  br label %return, !dbg !357

if.end6:                                          ; preds = %do.end3
  %4 = load i32, i32* %command_data.addr, align 4, !dbg !358
  %conv = zext i32 %4 to i64, !dbg !358
  call void @wrmsrl(i32 177, i64 %conv) #7, !dbg !359
  %5 = load i32, i32* %parameter.addr, align 4, !dbg !360
  %conv7 = zext i32 %5 to i64, !dbg !360
  %and8 = and i64 %conv7, 16383, !dbg !361
  %shl = shl i64 %and8, 16, !dbg !362
  %or = or i64 2147483648, %shl, !dbg !363
  %6 = load i8, i8* %sub_command.addr, align 1, !dbg !364
  %conv9 = zext i8 %6 to i32, !dbg !364
  %shl10 = shl i32 %conv9, 8, !dbg !365
  %conv11 = sext i32 %shl10 to i64, !dbg !366
  %or12 = or i64 %or, %conv11, !dbg !367
  %7 = load i8, i8* %command.addr, align 1, !dbg !368
  %conv13 = zext i8 %7 to i64, !dbg !368
  %or14 = or i64 %or12, %conv13, !dbg !369
  store i64 %or14, i64* %data, align 8, !dbg !370
  %8 = load i64, i64* %data, align 8, !dbg !371
  call void @wrmsrl(i32 176, i64 %8) #7, !dbg !372
  store i32 3, i32* %retries, align 4, !dbg !373
  br label %do.body15, !dbg !374

do.body15:                                        ; preds = %do.cond36, %if.end6
  br label %do.body16, !dbg !375

do.body16:                                        ; preds = %do.body15
  %call17 = call i64 @paravirt_read_msr(i32 176) #7, !dbg !377
  store i64 %call17, i64* %data, align 8, !dbg !377
  br label %do.end19, !dbg !377

do.end19:                                         ; preds = %do.body16
  %9 = load i64, i64* %data, align 8, !dbg !379
  %and20 = and i64 %9, 2147483648, !dbg !381
  %tobool21 = icmp ne i64 %and20, 0, !dbg !381
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !382

if.then22:                                        ; preds = %do.end19
  store i32 -16, i32* %ret, align 4, !dbg !383
  br label %do.cond36, !dbg !385

if.end23:                                         ; preds = %do.end19
  %10 = load i64, i64* %data, align 8, !dbg !386
  %and24 = and i64 %10, 255, !dbg !388
  %tobool25 = icmp ne i64 %and24, 0, !dbg !388
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !389

if.then26:                                        ; preds = %if.end23
  store i32 -6, i32* %retval, align 4, !dbg !390
  br label %return, !dbg !390

if.end27:                                         ; preds = %if.end23
  %11 = load i32*, i32** %response_data.addr, align 8, !dbg !391
  %tobool28 = icmp ne i32* %11, null, !dbg !391
  br i1 %tobool28, label %if.then29, label %if.end35, !dbg !393

if.then29:                                        ; preds = %if.end27
  br label %do.body30, !dbg !394

do.body30:                                        ; preds = %if.then29
  %call31 = call i64 @paravirt_read_msr(i32 177) #7, !dbg !396
  store i64 %call31, i64* %data, align 8, !dbg !396
  br label %do.end33, !dbg !396

do.end33:                                         ; preds = %do.body30
  %12 = load i64, i64* %data, align 8, !dbg !398
  %conv34 = trunc i64 %12 to i32, !dbg !398
  %13 = load i32*, i32** %response_data.addr, align 8, !dbg !399
  store i32 %conv34, i32* %13, align 4, !dbg !400
  br label %if.end35, !dbg !401

if.end35:                                         ; preds = %do.end33, %if.end27
  store i32 0, i32* %ret, align 4, !dbg !402
  br label %do.end39, !dbg !403

do.cond36:                                        ; preds = %if.then22
  %14 = load i32, i32* %retries, align 4, !dbg !404
  %dec37 = add i32 %14, -1, !dbg !404
  store i32 %dec37, i32* %retries, align 4, !dbg !404
  %tobool38 = icmp ne i32 %dec37, 0, !dbg !405
  br i1 %tobool38, label %do.body15, label %do.end39, !dbg !405, !llvm.loop !406

do.end39:                                         ; preds = %do.cond36, %if.end35
  %15 = load i32, i32* %ret, align 4, !dbg !408
  store i32 %15, i32* %retval, align 4, !dbg !409
  br label %return, !dbg !409

return:                                           ; preds = %do.end39, %if.then26, %if.then5
  %16 = load i32, i32* %retval, align 4, !dbg !410
  ret i32 %16, !dbg !410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #3 !dbg !411 {
entry:
  %msr.addr = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !419, metadata !DIExpression()), !dbg !418
  %0 = load i64, i64* %__edi, align 8, !dbg !418
  store i64 %0, i64* %__edi, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !420, metadata !DIExpression()), !dbg !418
  %1 = load i64, i64* %__esi, align 8, !dbg !418
  store i64 %1, i64* %__esi, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !421, metadata !DIExpression()), !dbg !418
  %2 = load i64, i64* %__edx, align 8, !dbg !418
  store i64 %2, i64* %__edx, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !422, metadata !DIExpression()), !dbg !418
  %3 = load i64, i64* %__ecx, align 8, !dbg !418
  store i64 %3, i64* %__ecx, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !423, metadata !DIExpression()), !dbg !418
  %4 = load i64, i64* %__eax, align 8, !dbg !418
  store i64 %4, i64* %__eax, align 8, !dbg !418
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !418
  %6 = call i64 @llvm.read_register.i64(metadata !87), !dbg !424
  %7 = load i32, i32* %msr.addr, align 4, !dbg !424
  %conv = zext i32 %7 to i64, !dbg !424
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #6, !dbg !424, !srcloc !427
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !424
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !424
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !424
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !424
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !424
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !424
  store i64 %asmresult, i64* %__edi, align 8, !dbg !424
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !424
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !424
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !424
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !424
  call void @llvm.write_register.i64(metadata !87, i64 %asmresult5), !dbg !424
  %9 = load i64, i64* %__eax, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !428, metadata !DIExpression()), !dbg !430
  store i64 -1, i64* %__mask, align 8, !dbg !430
  %10 = load i64, i64* %__mask, align 8, !dbg !430
  store i64 %10, i64* %tmp, align 8, !dbg !430
  %11 = load i64, i64* %tmp, align 8, !dbg !430
  %and = and i64 %9, %11, !dbg !424
  store i64 %and, i64* %__ret, align 8, !dbg !424
  %12 = load i64, i64* %__ret, align 8, !dbg !418
  store i64 %12, i64* %tmp6, align 8, !dbg !431
  %13 = load i64, i64* %tmp6, align 8, !dbg !418
  ret i64 %13, !dbg !432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wrmsrl(i32 %msr, i64 %val) #3 !dbg !433 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !438, metadata !DIExpression()), !dbg !439
  br label %do.body, !dbg !440

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %msr.addr, align 4, !dbg !441
  %1 = load i64, i64* %val.addr, align 8, !dbg !441
  %conv = trunc i64 %1 to i32, !dbg !441
  %2 = load i64, i64* %val.addr, align 8, !dbg !441
  %shr = lshr i64 %2, 32, !dbg !441
  %conv1 = trunc i64 %shr to i32, !dbg !441
  call void @paravirt_write_msr(i32 %0, i32 %conv, i32 %conv1) #7, !dbg !441
  br label %do.end, !dbg !441

do.end:                                           ; preds = %do.body
  ret void, !dbg !443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @paravirt_write_msr(i32 %msr, i32 %low, i32 %high) #3 !dbg !444 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !453, metadata !DIExpression()), !dbg !455
  %0 = load i64, i64* %__edi, align 8, !dbg !455
  store i64 %0, i64* %__edi, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !456, metadata !DIExpression()), !dbg !455
  %1 = load i64, i64* %__esi, align 8, !dbg !455
  store i64 %1, i64* %__esi, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !457, metadata !DIExpression()), !dbg !455
  %2 = load i64, i64* %__edx, align 8, !dbg !455
  store i64 %2, i64* %__edx, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !458, metadata !DIExpression()), !dbg !455
  %3 = load i64, i64* %__ecx, align 8, !dbg !455
  store i64 %3, i64* %__ecx, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !459, metadata !DIExpression()), !dbg !455
  %4 = load i64, i64* %__eax, align 8, !dbg !455
  store i64 %4, i64* %__eax, align 8, !dbg !455
  %5 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), align 8, !dbg !455
  %6 = call i64 @llvm.read_register.i64(metadata !87), !dbg !455
  %7 = load i32, i32* %msr.addr, align 4, !dbg !455
  %conv = zext i32 %7 to i64, !dbg !455
  %8 = load i32, i32* %low.addr, align 4, !dbg !455
  %conv1 = zext i32 %8 to i64, !dbg !455
  %9 = load i32, i32* %high.addr, align 4, !dbg !455
  %conv2 = zext i32 %9 to i64, !dbg !455
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 27, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #6, !dbg !455, !srcloc !460
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !455
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !455
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !455
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !455
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !455
  store i64 %asmresult, i64* %__edi, align 8, !dbg !455
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !455
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !455
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !455
  call void @llvm.write_register.i64(metadata !87, i64 %asmresult6), !dbg !455
  ret void, !dbg !461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @isst_pm_notify(%struct.notifier_block* %nb, i64 %mode, i8* %_unused) #3 !dbg !462 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %mode.addr = alloca i64, align 8
  %_unused.addr = alloca i8*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 %mode, i64* %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mode.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i8* %_unused, i8** %_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_unused.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i64, i64* %mode.addr, align 8, !dbg !469
  switch i64 %0, label %sw.default [
    i64 2, label %sw.bb
    i64 6, label %sw.bb
    i64 4, label %sw.bb
  ], !dbg !470

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @isst_resume_common() #7, !dbg !471
  br label %sw.epilog, !dbg !473

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !474

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0, !dbg !475
}

; Function Attrs: noredzone
declare dso_local void @isst_resume_common() #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_isst_if_mbox_init293", scope: !2, file: !3, line: 204, type: !84, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/platform/x86/intel_speed_select_if/isst_if_mbox_msr.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !9, !10, !15, !30, !31}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !8, line: 76, flags: DIFlagFwdDecl)
!8 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isst_if_mbox_cmd", file: !17, line: 110, size: 192, elements: !18)
!17 = !DIFile(filename: "./include/uapi/linux/isst_if.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !22, !23, !24, !25, !28, !29}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "logical_cpu", scope: !16, file: !17, line: 111, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !16, file: !17, line: 112, baseType: !20, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "req_data", scope: !16, file: !17, line: 113, baseType: !20, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "resp_data", scope: !16, file: !17, line: 114, baseType: !20, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !16, file: !17, line: 115, baseType: !26, size: 16, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sub_command", scope: !16, file: !17, line: 116, baseType: !26, size: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !16, file: !17, line: 117, baseType: !20, size: 32, offset: 160)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !20)
!32 = !{!0, !33, !40, !47, !52, !57, !73}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__exitcall_isst_if_mbox_exit", scope: !2, file: !3, line: 211, type: !35, isLocal: true, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !36, line: 117, baseType: !37)
!36 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{null}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file294", scope: !2, file: !3, line: 213, type: !42, isLocal: true, isDefinition: true, align: 8)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 656, elements: !45)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !{!46}
!46 = !DISubrange(count: 82)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license295", scope: !2, file: !3, line: 213, type: !49, isLocal: true, isDefinition: true, align: 8)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 32)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description296", scope: !2, file: !3, line: 214, type: !54, isLocal: true, isDefinition: true, align: 8)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 584, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 73)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "isst_if_cpu_ids", scope: !2, file: !3, line: 163, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 384, elements: !71)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !62, line: 666, size: 192, elements: !63)
!62 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !61, file: !62, line: 667, baseType: !26, size: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !61, file: !62, line: 668, baseType: !26, size: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !61, file: !62, line: 669, baseType: !26, size: 16, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !61, file: !62, line: 670, baseType: !26, size: 16, offset: 48)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !61, file: !62, line: 671, baseType: !26, size: 16, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !61, file: !62, line: 672, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !62, line: 14, baseType: !9)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "isst_pm_nb", scope: !2, file: !3, line: 159, type: !75, isLocal: true, isDefinition: true)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !76, line: 54, size: 192, elements: !77)
!76 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !85, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !75, file: !76, line: 55, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !76, line: 51, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!30, !83, !9, !84}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !76, line: 56, baseType: !83, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !75, file: !76, line: 57, baseType: !30, size: 32, offset: 128)
!87 = !{!"rsp"}
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"Code Model", i32 2}
!92 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!93 = distinct !DISubprogram(name: "isst_if_mbox_init", scope: !3, file: !3, line: 169, type: !94, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!94 = !DISubroutineType(types: !95)
!95 = !{!30}
!96 = !DILocalVariable(name: "cb", scope: !93, file: !3, line: 171, type: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isst_if_cmd_cb", file: !98, line: 55, size: 256, elements: !99)
!98 = !DIFile(filename: "drivers/platform/x86/intel_speed_select_if/isst_if_common.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !97, file: !98, line: 56, baseType: !30, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !97, file: !98, line: 57, baseType: !30, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !97, file: !98, line: 58, baseType: !30, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !97, file: !98, line: 59, baseType: !6, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_callback", scope: !97, file: !98, line: 60, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109, !113, !30}
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!114 = !DILocation(line: 171, column: 24, scope: !93)
!115 = !DILocalVariable(name: "id", scope: !93, file: !3, line: 172, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!117 = !DILocation(line: 172, column: 27, scope: !93)
!118 = !DILocalVariable(name: "data", scope: !93, file: !3, line: 173, type: !10)
!119 = !DILocation(line: 173, column: 6, scope: !93)
!120 = !DILocalVariable(name: "ret", scope: !93, file: !3, line: 174, type: !30)
!121 = !DILocation(line: 174, column: 6, scope: !93)
!122 = !DILocation(line: 176, column: 7, scope: !93)
!123 = !DILocation(line: 176, column: 5, scope: !93)
!124 = !DILocation(line: 177, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !93, file: !3, line: 177, column: 6)
!126 = !DILocation(line: 177, column: 6, scope: !93)
!127 = !DILocation(line: 178, column: 3, scope: !125)
!128 = !DILocation(line: 181, column: 8, scope: !93)
!129 = !DILocation(line: 181, column: 6, scope: !93)
!130 = !DILocation(line: 182, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !93, file: !3, line: 182, column: 6)
!132 = !DILocation(line: 182, column: 6, scope: !93)
!133 = !DILocation(line: 183, column: 10, scope: !131)
!134 = !DILocation(line: 183, column: 3, scope: !131)
!135 = !DILocation(line: 185, column: 8, scope: !93)
!136 = !DILocation(line: 185, column: 6, scope: !93)
!137 = !DILocation(line: 186, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !93, file: !3, line: 186, column: 6)
!139 = !DILocation(line: 186, column: 6, scope: !93)
!140 = !DILocation(line: 187, column: 10, scope: !138)
!141 = !DILocation(line: 187, column: 3, scope: !138)
!142 = !DILocation(line: 189, column: 2, scope: !93)
!143 = !DILocation(line: 190, column: 5, scope: !93)
!144 = !DILocation(line: 190, column: 14, scope: !93)
!145 = !DILocation(line: 191, column: 5, scope: !93)
!146 = !DILocation(line: 191, column: 12, scope: !93)
!147 = !DILocation(line: 192, column: 5, scope: !93)
!148 = !DILocation(line: 192, column: 18, scope: !93)
!149 = !DILocation(line: 193, column: 5, scope: !93)
!150 = !DILocation(line: 193, column: 11, scope: !93)
!151 = !DILocation(line: 194, column: 8, scope: !93)
!152 = !DILocation(line: 194, column: 6, scope: !93)
!153 = !DILocation(line: 195, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !93, file: !3, line: 195, column: 6)
!155 = !DILocation(line: 195, column: 6, scope: !93)
!156 = !DILocation(line: 196, column: 10, scope: !154)
!157 = !DILocation(line: 196, column: 3, scope: !154)
!158 = !DILocation(line: 198, column: 8, scope: !93)
!159 = !DILocation(line: 198, column: 6, scope: !93)
!160 = !DILocation(line: 199, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !93, file: !3, line: 199, column: 6)
!162 = !DILocation(line: 199, column: 6, scope: !93)
!163 = !DILocation(line: 200, column: 3, scope: !161)
!164 = !DILocation(line: 202, column: 9, scope: !93)
!165 = !DILocation(line: 202, column: 2, scope: !93)
!166 = !DILocation(line: 203, column: 1, scope: !93)
!167 = distinct !DISubprogram(name: "isst_if_mbox_exit", scope: !3, file: !3, line: 206, type: !38, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!168 = !DILocation(line: 208, column: 2, scope: !167)
!169 = !DILocation(line: 209, column: 2, scope: !167)
!170 = !DILocation(line: 210, column: 1, scope: !167)
!171 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !172, file: !172, line: 219, type: !173, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!172 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DISubroutineType(types: !174)
!174 = !{!30, !21, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!176 = !DILocalVariable(name: "msr", arg: 1, scope: !171, file: !172, line: 219, type: !21)
!177 = !DILocation(line: 219, column: 40, scope: !171)
!178 = !DILocalVariable(name: "p", arg: 2, scope: !171, file: !172, line: 219, type: !175)
!179 = !DILocation(line: 219, column: 65, scope: !171)
!180 = !DILocalVariable(name: "err", scope: !171, file: !172, line: 221, type: !30)
!181 = !DILocation(line: 221, column: 6, scope: !171)
!182 = !DILocation(line: 223, column: 30, scope: !171)
!183 = !DILocation(line: 223, column: 7, scope: !171)
!184 = !DILocation(line: 223, column: 3, scope: !171)
!185 = !DILocation(line: 223, column: 5, scope: !171)
!186 = !DILocation(line: 224, column: 9, scope: !171)
!187 = !DILocation(line: 224, column: 2, scope: !171)
!188 = distinct !DISubprogram(name: "isst_if_mbox_proc_cmd", scope: !3, file: !3, line: 106, type: !106, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!189 = !DILocalVariable(name: "cmd_ptr", arg: 1, scope: !188, file: !3, line: 106, type: !109)
!190 = !DILocation(line: 106, column: 39, scope: !188)
!191 = !DILocalVariable(name: "write_only", arg: 2, scope: !188, file: !3, line: 106, type: !113)
!192 = !DILocation(line: 106, column: 53, scope: !188)
!193 = !DILocalVariable(name: "resume", arg: 3, scope: !188, file: !3, line: 106, type: !30)
!194 = !DILocation(line: 106, column: 69, scope: !188)
!195 = !DILocalVariable(name: "action", scope: !188, file: !3, line: 108, type: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msrl_action", file: !3, line: 89, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !196, file: !3, line: 90, baseType: !30, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mbox_cmd", scope: !196, file: !3, line: 91, baseType: !15, size: 64, offset: 64)
!200 = !DILocation(line: 108, column: 21, scope: !188)
!201 = !DILocalVariable(name: "ret", scope: !188, file: !3, line: 109, type: !30)
!202 = !DILocation(line: 109, column: 6, scope: !188)
!203 = !DILocation(line: 111, column: 47, scope: !188)
!204 = !DILocation(line: 111, column: 20, scope: !188)
!205 = !DILocation(line: 111, column: 9, scope: !188)
!206 = !DILocation(line: 111, column: 18, scope: !188)
!207 = !DILocation(line: 113, column: 38, scope: !208)
!208 = distinct !DILexicalBlock(scope: !188, file: !3, line: 113, column: 6)
!209 = !DILocation(line: 113, column: 6, scope: !208)
!210 = !DILocation(line: 113, column: 6, scope: !188)
!211 = !DILocation(line: 114, column: 3, scope: !208)
!212 = !DILocation(line: 116, column: 38, scope: !213)
!213 = distinct !DILexicalBlock(scope: !188, file: !3, line: 116, column: 6)
!214 = !DILocation(line: 116, column: 6, scope: !213)
!215 = !DILocation(line: 116, column: 48, scope: !213)
!216 = !DILocation(line: 117, column: 7, scope: !213)
!217 = !DILocation(line: 116, column: 6, scope: !188)
!218 = !DILocation(line: 118, column: 3, scope: !213)
!219 = !DILocation(line: 127, column: 40, scope: !188)
!220 = !DILocation(line: 127, column: 50, scope: !188)
!221 = !DILocation(line: 128, column: 30, scope: !188)
!222 = !DILocation(line: 127, column: 8, scope: !188)
!223 = !DILocation(line: 127, column: 6, scope: !188)
!224 = !DILocation(line: 129, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !188, file: !3, line: 129, column: 6)
!226 = !DILocation(line: 129, column: 6, scope: !188)
!227 = !DILocation(line: 130, column: 10, scope: !225)
!228 = !DILocation(line: 130, column: 3, scope: !225)
!229 = !DILocation(line: 132, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !188, file: !3, line: 132, column: 6)
!231 = !DILocation(line: 132, column: 7, scope: !230)
!232 = !DILocation(line: 132, column: 18, scope: !230)
!233 = !DILocation(line: 132, column: 22, scope: !230)
!234 = !DILocation(line: 132, column: 29, scope: !230)
!235 = !DILocation(line: 132, column: 64, scope: !230)
!236 = !DILocation(line: 132, column: 32, scope: !230)
!237 = !DILocation(line: 132, column: 6, scope: !188)
!238 = !DILocation(line: 133, column: 38, scope: !230)
!239 = !DILocation(line: 133, column: 48, scope: !230)
!240 = !DILocation(line: 133, column: 31, scope: !230)
!241 = !DILocation(line: 134, column: 17, scope: !230)
!242 = !DILocation(line: 134, column: 27, scope: !230)
!243 = !DILocation(line: 134, column: 10, scope: !230)
!244 = !DILocation(line: 135, column: 17, scope: !230)
!245 = !DILocation(line: 135, column: 27, scope: !230)
!246 = !DILocation(line: 136, column: 17, scope: !230)
!247 = !DILocation(line: 136, column: 27, scope: !230)
!248 = !DILocation(line: 137, column: 17, scope: !230)
!249 = !DILocation(line: 137, column: 27, scope: !230)
!250 = !DILocation(line: 137, column: 10, scope: !230)
!251 = !DILocation(line: 133, column: 16, scope: !230)
!252 = !DILocation(line: 133, column: 10, scope: !230)
!253 = !DILocation(line: 133, column: 14, scope: !230)
!254 = !DILocation(line: 133, column: 3, scope: !230)
!255 = !DILocation(line: 138, column: 3, scope: !188)
!256 = !DILocation(line: 138, column: 14, scope: !188)
!257 = !DILocation(line: 140, column: 16, scope: !188)
!258 = !DILocation(line: 140, column: 9, scope: !188)
!259 = !DILocation(line: 140, column: 2, scope: !188)
!260 = !DILocation(line: 141, column: 1, scope: !188)
!261 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !172, file: !172, line: 174, type: !262, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!262 = !DISubroutineType(types: !263)
!263 = !{!10, !21, !113}
!264 = !DILocalVariable(name: "msr", arg: 1, scope: !261, file: !172, line: 174, type: !21)
!265 = !DILocation(line: 174, column: 51, scope: !261)
!266 = !DILocalVariable(name: "err", arg: 2, scope: !261, file: !172, line: 174, type: !113)
!267 = !DILocation(line: 174, column: 61, scope: !261)
!268 = !DILocalVariable(name: "__ret", scope: !269, file: !172, line: 176, type: !10)
!269 = distinct !DILexicalBlock(scope: !261, file: !172, line: 176, column: 9)
!270 = !DILocation(line: 176, column: 9, scope: !269)
!271 = !DILocalVariable(name: "__edi", scope: !269, file: !172, line: 176, type: !9)
!272 = !DILocalVariable(name: "__esi", scope: !269, file: !172, line: 176, type: !9)
!273 = !DILocalVariable(name: "__edx", scope: !269, file: !172, line: 176, type: !9)
!274 = !DILocalVariable(name: "__ecx", scope: !269, file: !172, line: 176, type: !9)
!275 = !DILocalVariable(name: "__eax", scope: !269, file: !172, line: 176, type: !9)
!276 = !DILocation(line: 176, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !172, line: 176, column: 9)
!278 = distinct !DILexicalBlock(scope: !269, file: !172, line: 176, column: 9)
!279 = !{i32 -2145974708, i32 -2145972197, i32 -2145971963, i32 -2145971912, i32 -2145971884, i32 -2145971859, i32 -2145972175, i32 -2145972162, i32 -2145971724, i32 -2145971605, i32 -2145972070, i32 -2145972043, i32 -2145972015, i32 -2145971985}
!280 = !DILocalVariable(name: "__mask", scope: !281, file: !172, line: 176, type: !9)
!281 = distinct !DILexicalBlock(scope: !277, file: !172, line: 176, column: 9)
!282 = !DILocation(line: 176, column: 9, scope: !281)
!283 = !DILocation(line: 176, column: 9, scope: !278)
!284 = !DILocation(line: 176, column: 2, scope: !261)
!285 = distinct !DISubprogram(name: "msrl_update_func", scope: !3, file: !3, line: 95, type: !286, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !84}
!288 = !DILocalVariable(name: "info", arg: 1, scope: !285, file: !3, line: 95, type: !84)
!289 = !DILocation(line: 95, column: 36, scope: !285)
!290 = !DILocalVariable(name: "act", scope: !285, file: !3, line: 97, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!292 = !DILocation(line: 97, column: 22, scope: !285)
!293 = !DILocation(line: 97, column: 28, scope: !285)
!294 = !DILocation(line: 99, column: 35, scope: !285)
!295 = !DILocation(line: 99, column: 40, scope: !285)
!296 = !DILocation(line: 99, column: 50, scope: !285)
!297 = !DILocation(line: 100, column: 7, scope: !285)
!298 = !DILocation(line: 100, column: 12, scope: !285)
!299 = !DILocation(line: 100, column: 22, scope: !285)
!300 = !DILocation(line: 101, column: 7, scope: !285)
!301 = !DILocation(line: 101, column: 12, scope: !285)
!302 = !DILocation(line: 101, column: 22, scope: !285)
!303 = !DILocation(line: 102, column: 7, scope: !285)
!304 = !DILocation(line: 102, column: 12, scope: !285)
!305 = !DILocation(line: 102, column: 22, scope: !285)
!306 = !DILocation(line: 103, column: 8, scope: !285)
!307 = !DILocation(line: 103, column: 13, scope: !285)
!308 = !DILocation(line: 103, column: 23, scope: !285)
!309 = !DILocation(line: 99, column: 13, scope: !285)
!310 = !DILocation(line: 99, column: 2, scope: !285)
!311 = !DILocation(line: 99, column: 7, scope: !285)
!312 = !DILocation(line: 99, column: 11, scope: !285)
!313 = !DILocation(line: 104, column: 1, scope: !285)
!314 = distinct !DISubprogram(name: "isst_if_send_mbox_cmd", scope: !3, file: !3, line: 34, type: !315, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{!30, !110, !110, !31, !31, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!318 = !DILocalVariable(name: "command", arg: 1, scope: !314, file: !3, line: 34, type: !110)
!319 = !DILocation(line: 34, column: 37, scope: !314)
!320 = !DILocalVariable(name: "sub_command", arg: 2, scope: !314, file: !3, line: 34, type: !110)
!321 = !DILocation(line: 34, column: 49, scope: !314)
!322 = !DILocalVariable(name: "parameter", arg: 3, scope: !314, file: !3, line: 34, type: !31)
!323 = !DILocation(line: 34, column: 66, scope: !314)
!324 = !DILocalVariable(name: "command_data", arg: 4, scope: !314, file: !3, line: 35, type: !31)
!325 = !DILocation(line: 35, column: 10, scope: !314)
!326 = !DILocalVariable(name: "response_data", arg: 5, scope: !314, file: !3, line: 35, type: !317)
!327 = !DILocation(line: 35, column: 29, scope: !314)
!328 = !DILocalVariable(name: "retries", scope: !314, file: !3, line: 37, type: !31)
!329 = !DILocation(line: 37, column: 6, scope: !314)
!330 = !DILocalVariable(name: "data", scope: !314, file: !3, line: 38, type: !10)
!331 = !DILocation(line: 38, column: 6, scope: !314)
!332 = !DILocalVariable(name: "ret", scope: !314, file: !3, line: 39, type: !30)
!333 = !DILocation(line: 39, column: 6, scope: !314)
!334 = !DILocation(line: 42, column: 10, scope: !314)
!335 = !DILocation(line: 43, column: 2, scope: !314)
!336 = !DILocation(line: 44, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !314, file: !3, line: 43, column: 5)
!338 = !DILocation(line: 44, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !337, file: !3, line: 44, column: 3)
!340 = !DILocation(line: 45, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 45, column: 7)
!342 = !DILocation(line: 45, column: 12, scope: !341)
!343 = !DILocation(line: 45, column: 7, scope: !337)
!344 = !DILocation(line: 46, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 45, column: 48)
!346 = !DILocation(line: 47, column: 4, scope: !345)
!347 = !DILocation(line: 49, column: 7, scope: !337)
!348 = !DILocation(line: 50, column: 3, scope: !337)
!349 = !DILocation(line: 51, column: 11, scope: !314)
!350 = !DILocation(line: 51, column: 2, scope: !337)
!351 = distinct !{!351, !335, !352}
!352 = !DILocation(line: 51, column: 20, scope: !314)
!353 = !DILocation(line: 53, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !314, file: !3, line: 53, column: 6)
!355 = !DILocation(line: 53, column: 6, scope: !314)
!356 = !DILocation(line: 54, column: 10, scope: !354)
!357 = !DILocation(line: 54, column: 3, scope: !354)
!358 = !DILocation(line: 57, column: 30, scope: !314)
!359 = !DILocation(line: 57, column: 2, scope: !314)
!360 = !DILocation(line: 61, column: 10, scope: !314)
!361 = !DILocation(line: 61, column: 20, scope: !314)
!362 = !DILocation(line: 61, column: 42, scope: !314)
!363 = !DILocation(line: 60, column: 42, scope: !314)
!364 = !DILocation(line: 62, column: 10, scope: !314)
!365 = !DILocation(line: 62, column: 22, scope: !314)
!366 = !DILocation(line: 62, column: 9, scope: !314)
!367 = !DILocation(line: 61, column: 48, scope: !314)
!368 = !DILocation(line: 63, column: 9, scope: !314)
!369 = !DILocation(line: 62, column: 28, scope: !314)
!370 = !DILocation(line: 60, column: 7, scope: !314)
!371 = !DILocation(line: 64, column: 35, scope: !314)
!372 = !DILocation(line: 64, column: 2, scope: !314)
!373 = !DILocation(line: 67, column: 10, scope: !314)
!374 = !DILocation(line: 68, column: 2, scope: !314)
!375 = !DILocation(line: 69, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !314, file: !3, line: 68, column: 5)
!377 = !DILocation(line: 69, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !3, line: 69, column: 3)
!379 = !DILocation(line: 70, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 70, column: 7)
!381 = !DILocation(line: 70, column: 12, scope: !380)
!382 = !DILocation(line: 70, column: 7, scope: !376)
!383 = !DILocation(line: 71, column: 8, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 70, column: 48)
!385 = !DILocation(line: 72, column: 4, scope: !384)
!386 = !DILocation(line: 75, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !3, line: 75, column: 7)
!388 = !DILocation(line: 75, column: 12, scope: !387)
!389 = !DILocation(line: 75, column: 7, scope: !376)
!390 = !DILocation(line: 76, column: 4, scope: !387)
!391 = !DILocation(line: 78, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !376, file: !3, line: 78, column: 7)
!393 = !DILocation(line: 78, column: 7, scope: !376)
!394 = !DILocation(line: 79, column: 4, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 78, column: 22)
!396 = !DILocation(line: 79, column: 4, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !3, line: 79, column: 4)
!398 = !DILocation(line: 80, column: 21, scope: !395)
!399 = !DILocation(line: 80, column: 5, scope: !395)
!400 = !DILocation(line: 80, column: 19, scope: !395)
!401 = !DILocation(line: 81, column: 3, scope: !395)
!402 = !DILocation(line: 82, column: 7, scope: !376)
!403 = !DILocation(line: 83, column: 3, scope: !376)
!404 = !DILocation(line: 84, column: 11, scope: !314)
!405 = !DILocation(line: 84, column: 2, scope: !376)
!406 = distinct !{!406, !374, !407}
!407 = !DILocation(line: 84, column: 20, scope: !314)
!408 = !DILocation(line: 86, column: 9, scope: !314)
!409 = !DILocation(line: 86, column: 2, scope: !314)
!410 = !DILocation(line: 87, column: 1, scope: !314)
!411 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !172, file: !172, line: 163, type: !412, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{!10, !21}
!414 = !DILocalVariable(name: "msr", arg: 1, scope: !411, file: !172, line: 163, type: !21)
!415 = !DILocation(line: 163, column: 46, scope: !411)
!416 = !DILocalVariable(name: "__ret", scope: !417, file: !172, line: 165, type: !10)
!417 = distinct !DILexicalBlock(scope: !411, file: !172, line: 165, column: 9)
!418 = !DILocation(line: 165, column: 9, scope: !417)
!419 = !DILocalVariable(name: "__edi", scope: !417, file: !172, line: 165, type: !9)
!420 = !DILocalVariable(name: "__esi", scope: !417, file: !172, line: 165, type: !9)
!421 = !DILocalVariable(name: "__edx", scope: !417, file: !172, line: 165, type: !9)
!422 = !DILocalVariable(name: "__ecx", scope: !417, file: !172, line: 165, type: !9)
!423 = !DILocalVariable(name: "__eax", scope: !417, file: !172, line: 165, type: !9)
!424 = !DILocation(line: 165, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !172, line: 165, column: 9)
!426 = distinct !DILexicalBlock(scope: !417, file: !172, line: 165, column: 9)
!427 = !{i32 -2145987330, i32 -2145984915, i32 -2145984681, i32 -2145984630, i32 -2145984602, i32 -2145984577, i32 -2145984893, i32 -2145984880, i32 -2145984442, i32 -2145984323, i32 -2145984788, i32 -2145984761, i32 -2145984733, i32 -2145984703}
!428 = !DILocalVariable(name: "__mask", scope: !429, file: !172, line: 165, type: !9)
!429 = distinct !DILexicalBlock(scope: !425, file: !172, line: 165, column: 9)
!430 = !DILocation(line: 165, column: 9, scope: !429)
!431 = !DILocation(line: 165, column: 9, scope: !426)
!432 = !DILocation(line: 165, column: 2, scope: !411)
!433 = distinct !DISubprogram(name: "wrmsrl", scope: !172, file: !172, line: 202, type: !434, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !21, !10}
!436 = !DILocalVariable(name: "msr", arg: 1, scope: !433, file: !172, line: 202, type: !21)
!437 = !DILocation(line: 202, column: 36, scope: !433)
!438 = !DILocalVariable(name: "val", arg: 2, scope: !433, file: !172, line: 202, type: !10)
!439 = !DILocation(line: 202, column: 45, scope: !433)
!440 = !DILocation(line: 204, column: 2, scope: !433)
!441 = !DILocation(line: 204, column: 2, scope: !442)
!442 = distinct !DILexicalBlock(scope: !433, file: !172, line: 204, column: 2)
!443 = !DILocation(line: 205, column: 1, scope: !433)
!444 = distinct !DISubprogram(name: "paravirt_write_msr", scope: !172, file: !172, line: 168, type: !445, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !21, !21, !21}
!447 = !DILocalVariable(name: "msr", arg: 1, scope: !444, file: !172, line: 168, type: !21)
!448 = !DILocation(line: 168, column: 48, scope: !444)
!449 = !DILocalVariable(name: "low", arg: 2, scope: !444, file: !172, line: 169, type: !21)
!450 = !DILocation(line: 169, column: 20, scope: !444)
!451 = !DILocalVariable(name: "high", arg: 3, scope: !444, file: !172, line: 169, type: !21)
!452 = !DILocation(line: 169, column: 34, scope: !444)
!453 = !DILocalVariable(name: "__edi", scope: !454, file: !172, line: 171, type: !9)
!454 = distinct !DILexicalBlock(scope: !444, file: !172, line: 171, column: 2)
!455 = !DILocation(line: 171, column: 2, scope: !454)
!456 = !DILocalVariable(name: "__esi", scope: !454, file: !172, line: 171, type: !9)
!457 = !DILocalVariable(name: "__edx", scope: !454, file: !172, line: 171, type: !9)
!458 = !DILocalVariable(name: "__ecx", scope: !454, file: !172, line: 171, type: !9)
!459 = !DILocalVariable(name: "__eax", scope: !454, file: !172, line: 171, type: !9)
!460 = !{i32 -2145982691, i32 -2145977662, i32 -2145977428, i32 -2145977377, i32 -2145977349, i32 -2145977324, i32 -2145977640, i32 -2145977627, i32 -2145977189, i32 -2145977070, i32 -2145977535, i32 -2145977508, i32 -2145977480, i32 -2145977450}
!461 = !DILocation(line: 172, column: 1, scope: !444)
!462 = distinct !DISubprogram(name: "isst_pm_notify", scope: !3, file: !3, line: 144, type: !81, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!463 = !DILocalVariable(name: "nb", arg: 1, scope: !462, file: !3, line: 144, type: !83)
!464 = !DILocation(line: 144, column: 50, scope: !462)
!465 = !DILocalVariable(name: "mode", arg: 2, scope: !462, file: !3, line: 145, type: !9)
!466 = !DILocation(line: 145, column: 25, scope: !462)
!467 = !DILocalVariable(name: "_unused", arg: 3, scope: !462, file: !3, line: 145, type: !84)
!468 = !DILocation(line: 145, column: 37, scope: !462)
!469 = !DILocation(line: 147, column: 10, scope: !462)
!470 = !DILocation(line: 147, column: 2, scope: !462)
!471 = !DILocation(line: 151, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !462, file: !3, line: 147, column: 16)
!473 = !DILocation(line: 152, column: 3, scope: !472)
!474 = !DILocation(line: 154, column: 3, scope: !472)
!475 = !DILocation(line: 156, column: 2, scope: !462)
