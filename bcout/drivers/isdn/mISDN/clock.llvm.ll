; ModuleID = '../bcout/drivers/isdn/mISDN/clock.llvm.bc'
source_filename = "drivers/isdn/mISDN/clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mISDNclock = type { %struct.list_head, [64 x i8], i32, i32 (i8*, i32)*, i8* }
%struct.kmem_cache = type opaque
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.139, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.page = type { i64, %union.anon.4, %union.anon.121, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.157, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.158, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.159, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.160, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.105, %struct.list_head, %struct.list_head, %union.anon.106 }
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
%union.anon.105 = type { %struct.list_head }
%union.anon.106 = type { %struct.hlist_node }
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
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.87, i32, i32, i32, i32, %struct.sk_filter*, %union.anon.88, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.89, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.pid*, %struct.cred*, i64, i64, i16, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.13, %union.anon.15, %union.anon.16, i16, i8, i8, i32, %union.anon.18, %struct.proto*, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.83, [0 x i32], %union.anon.84, i16, %union.anon.85, %struct.refcount_struct, [0 x i32], %union.anon.86 }
%union.anon.13 = type { i64 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { %struct.hlist_node }
%struct.possible_net_t = type { %struct.net* }
%struct.net = type { %struct.refcount_struct, %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.key_tag*, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, %struct.netns_ipv4, %struct.netns_ipv6, %struct.sk_buff_head, %struct.net_generic*, %struct.netns_bpf, %struct.atomic64_t, %struct.netns_can, %struct.sock* }
%struct.llist_node = type { %struct.llist_node* }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.48, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.140, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.iw_handler_def*, %struct.iw_public_data*, %struct.net_device_ops*, %struct.ethtool_ops*, %struct.ndisc_ops*, %struct.header_ops*, i32, i32, i16, i16, i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i8, i16, i16, [32 x i8], i8, i8, i8, i8, i16, i16, i16, %struct.spinlock, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.vlan_info*, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, i32*, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, %union.anon.156, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.140 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iw_handler_def = type opaque
%struct.iw_public_data = type opaque
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, void (%struct.net_device*, %struct.udp_tunnel_info*)*, void (%struct.net_device*, %struct.udp_tunnel_info*)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)* }
%struct.ifreq = type { %union.anon.141, %union.anon.142 }
%union.anon.141 = type { [16 x i8] }
%union.anon.142 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hh_cache = type { i32, %struct.seqlock_t, [12 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.52 }
%union.anon.52 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.144 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.144 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.udp_tunnel_info = type opaque
%struct.netdev_bpf = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.ethtool_ops = type { i32, void (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, %struct.ethtool_regs*, i8*)*, void (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_link_ext_state_info*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*)*, void (%struct.net_device*, %struct.ethtool_ringparam*)*, i32 (%struct.net_device*, %struct.ethtool_ringparam*)*, void (%struct.net_device*, %struct.ethtool_pause_stats*)*, void (%struct.net_device*, %struct.ethtool_pauseparam*)*, i32 (%struct.net_device*, %struct.ethtool_pauseparam*)*, void (%struct.net_device*, %struct.ethtool_test*, i64*)*, void (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*)*, i32 (%struct.net_device*, %struct.ethtool_flash*)*, i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32*, i8*, i8*)*, i32 (%struct.net_device*, i32*, i8*, i8)*, i32 (%struct.net_device*, i32*, i8*, i8*, i32)*, i32 (%struct.net_device*, i32*, i8*, i8, i32*, i1)*, void (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_modinfo*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, i32, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, i32, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)*, i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)*, i32 (%struct.net_device*, %struct.ethtool_fecparam*)*, i32 (%struct.net_device*, %struct.ethtool_fecparam*)*, void (%struct.net_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)* }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.149 }
%union.anon.149 = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.150, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.150 = type { i32 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.151 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.151 = type { [2 x i64], [2 x i64], [2 x i64] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x i8*] }
%struct.ndisc_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32 }
%struct.vlan_info = type opaque
%struct.in_device = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.kobject, %struct.net_device*, [56 x i8], %struct.xdp_rxq_info }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, [40 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, i32 (i8*, %struct.bpf_insn*)*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %struct.bpf_prog_stats*, %union.anon.82 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.55, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], i8*, i64, %struct.bpf_ksym }
%struct.anon.55 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, %union.anon.56, i8, i8, i16, i32 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_map_memory, [16 x i8], i32, i8, i8, [26 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [48 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.bpf_local_storage_map = type opaque
%struct.bpf_local_storage = type opaque
%struct.bpf_iter_seq_info = type { %struct.seq_operations*, i32 (i8*, %struct.bpf_iter_aux_info*)*, void (i8*)*, i32 }
%struct.bpf_iter_aux_info = type opaque
%struct.bpf_map_memory = type { i32, %struct.user_struct* }
%struct.bpf_ksym = type { i64, i64, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.bpf_prog_ops = type { i32 (%struct.bpf_prog*, %union.bpf_attr*, %union.bpf_attr*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32, i32 }
%struct.bpf_prog_stats = type { i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%union.anon.82 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, %struct.spinlock, i32, i64, i64, %struct.dql }
%struct.dql = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, i8, %struct.callback_head, [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.152, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.152 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i64, i32 }
%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, i1, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, void (%struct.tcf_proto*, i8*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i1, i1, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i8*, i1, %struct.netlink_ext_ack*)*, i1 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, %struct.tcf_walker*, i1)*, i32 (%struct.tcf_proto*, i1, i32 (i32, i8*, i8*)*, i8*, %struct.netlink_ext_ack*)*, void (%struct.tcf_proto*, i8*)*, void (%struct.tcf_proto*, i8*)*, void (i8*, i32, i64, i8*, i64)*, i8* (%struct.net*, %struct.tcf_chain*, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (i8*)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.sk_buff*, %struct.net*, i8*)*, %struct.module*, i32 }
%struct.tcf_walker = type opaque
%struct.gnet_dump = type { %struct.spinlock*, %struct.sk_buff*, %struct.nlattr*, i32, i32, i32, i8*, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_size_table = type { %struct.callback_head, %struct.list_head, %struct.tc_sizespec, i32, [0 x i16] }
%struct.tc_sizespec = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.net_rate_estimator = type opaque
%struct.gnet_stats_basic_cpu = type { %struct.gnet_stats_basic_packed, %struct.u64_stats_sync }
%struct.qdisc_skb_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.gnet_stats_basic_packed = type { i64, i64 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.xdp_dev_bulk_queue = type opaque
%union.anon.156 = type { i8* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type { %struct.list_head, i8*, i64, void (%struct.net_device*)*, i32, %struct.nla_policy*, i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.list_head*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i32 ()*, i32 ()*, i32, %struct.nla_policy*, i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i64 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)*, %struct.net* (%struct.net_device*)*, i64 (%struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32)* }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.tcp_mib*, %struct.ipstats_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib*, %struct.proc_dir_entry*, %struct.udp_mib*, %struct.udp_mib*, %struct.ipstats_mib*, %struct.icmpv6_mib*, %struct.icmpv6msg_mib* }
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [124 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.udp_mib = type { [9 x i64] }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.icmpv6_mib = type { [6 x i64] }
%struct.icmpv6msg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, %struct.hlist_head*, i8, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i32, i32, i32, i32, i32, i32, %struct.local_ports, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i64, i64, %struct.inet_timewait_death_row, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, %struct.spinlock, i32, %struct.atomic_t, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t }
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, %struct.rhashtable, %struct.atomic64_t, %struct.work_struct }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.50, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.50 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.inet_timewait_death_row = type { %struct.atomic_t, %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type { i32, %struct.list_head, i32 (%struct.net*)*, i32 (%struct.net*, %struct.notifier_block*, %struct.netlink_ext_ack*)*, %struct.module*, %struct.callback_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.netns_sysctl_ipv6, %struct.ipv6_devconf*, %struct.ipv6_devconf*, %struct.inet_peer_base*, %struct.fqdir*, %struct.fib6_info*, %struct.rt6_info*, %struct.rt6_statistics*, %struct.timer_list, %struct.hlist_head*, %struct.fib6_table*, %struct.list_head, %struct.dst_ops, %struct.rwlock_t, %struct.spinlock, i32, i64, %struct.sock**, %struct.sock*, %struct.sock*, %struct.sock*, %struct.sock*, %struct.atomic_t, %struct.atomic_t, %struct.seg6_pernet_data*, %struct.fib_notifier_ops*, %struct.fib_notifier_ops*, i32, %struct.anon.54 }
%struct.netns_sysctl_ipv6 = type { %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i64], i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ipv6_devconf = type opaque
%struct.fib6_info = type opaque
%struct.rt6_info = type opaque
%struct.rt6_statistics = type opaque
%struct.fib6_table = type opaque
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter }
%struct.percpu_counter = type { i64 }
%struct.seg6_pernet_data = type opaque
%struct.anon.54 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.netns_can = type { %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.can_dev_rcv_lists*, %struct.spinlock, %struct.timer_list, %struct.can_pkg_stats*, %struct.can_rcv_lists_stats*, %struct.hlist_head }
%struct.can_dev_rcv_lists = type opaque
%struct.can_pkg_stats = type opaque
%struct.can_rcv_lists_stats = type opaque
%struct.in6_addr = type { %union.anon.51 }
%union.anon.51 = type { [4 x i32] }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.hlist_node }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.87 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%union.anon.88 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.lwtunnel_state = type opaque
%union.anon.89 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.25, %union.anon.28, %union.anon.29, [48 x i8], %union.anon.30, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.32, i32, i32, i32, i16, i16, %union.anon.34, %union.anon.35, %union.anon.36, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.27 }
%union.anon.27 = type { %struct.net_device* }
%union.anon.28 = type { %struct.sock* }
%union.anon.29 = type { i64 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i64, void (%struct.sk_buff*)* }
%union.anon.32 = type { i32 }
%union.anon.34 = type { i32 }
%union.anon.35 = type { i32 }
%union.anon.36 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, i8*, i8, i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.37, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.23, i8, i64, i32, %struct.kiocb* }
%struct.iov_iter = type { i32, i64, i64, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.21 = type { i64 }
%union.anon.23 = type { i8* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.24 }
%union.anon.24 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type opaque
%struct.timewait_sock_ops = type opaque
%union.anon.37 = type { %struct.inet_hashinfo* }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, %struct.socket_wq }
%struct.proto_ops = type { i32, i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, i8*, i8, i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.91, i32 }
%union.anon.91 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.92, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.92 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.93, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.93 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.94, %union.anon.95, %union.anon.96, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.101, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.94 = type { %struct.hlist_node }
%union.anon.95 = type { %struct.rb_node }
%union.anon.96 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.101 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.102, void (i8*)*, i8* }
%union.anon.102 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.103, i16, i16 }
%union.anon.103 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.98, %union.anon.99, i32 }
%union.anon.98 = type { %struct.list_head }
%union.anon.99 = type { %struct.hlist_node }
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
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.157 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.158 = type { %struct.callback_head }
%union.anon.159 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.107 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.107 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.160 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.121 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39, [48 x i8] }
%struct.anon.39 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.90 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.90 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.40, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.41, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.42, %union.anon.46, %struct.key_restriction* }
%union.anon.40 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.41 = type { i64 }
%union.anon.42 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.43, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.43 = type { i64 }
%struct.key_type = type opaque
%union.anon.46 = type { %union.key_payload }
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
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.refcount_struct, %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.138, i32, [12 x i8] }
%union.anon.138 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.139 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
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

@debug = internal global i32* null, align 8, !dbg !0
@iclock_timestamp = internal global i64 0, align 8, !dbg !56
@.str = private unnamed_addr constant [13 x i8] c"\017%s: %s %d\0A\00", align 1
@__func__.mISDN_register_clock = private unnamed_addr constant [21 x i8] c"mISDN_register_clock\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\013%s: No memory for clock entry.\0A\00", align 1
@iclock_lock = internal global %struct.rwlock_t undef, align 1, !dbg !67
@iclock_list = internal global %struct.list_head { %struct.list_head* @iclock_list, %struct.list_head* @iclock_list }, align 8, !dbg !78
@__func__.mISDN_unregister_clock = private unnamed_addr constant [23 x i8] c"mISDN_unregister_clock\00", align 1
@iclock_current = internal global %struct.mISDNclock* null, align 8, !dbg !65
@.str.2 = private unnamed_addr constant [42 x i8] c"\017Current clock source '%s' unregisters.\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"\013%s: '%s' sends us clock updates, but we do listen to '%s'. This is a bug!\0A\00", align 1
@__func__.mISDN_clock_update = private unnamed_addr constant [19 x i8] c"mISDN_clock_update\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@iclock_timestamp_valid = internal global i32 0, align 4, !dbg !63
@iclock_count = internal global i16 0, align 2, !dbg !49
@.str.5 = private unnamed_addr constant [40 x i8] c"Received first clock from source '%s'.\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"\017Old clock source '%s' disable.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\017New clock source '%s' enable.\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_init_clock(i32* %dp) #0 !dbg !88 {
entry:
  %dp.addr = alloca i32*, align 8
  store i32* %dp, i32** %dp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dp.addr, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i32*, i32** %dp.addr, align 8, !dbg !93
  store i32* %0, i32** @debug, align 8, !dbg !94
  %call = call i64 @ktime_get() #9, !dbg !95
  store i64 %call, i64* @iclock_timestamp, align 8, !dbg !96
  ret void, !dbg !97
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mISDNclock* @mISDN_register_clock(i8* %name, i32 %pri, i32 (i8*, i32)* %ctl, i8* %priv) #0 !dbg !98 {
entry:
  %retval = alloca %struct.mISDNclock*, align 8
  %name.addr = alloca i8*, align 8
  %pri.addr = alloca i32, align 4
  %ctl.addr = alloca i32 (i8*, i32)*, align 8
  %priv.addr = alloca i8*, align 8
  %flags = alloca i64, align 8
  %iclock = alloca %struct.mISDNclock*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy14 = alloca i64, align 8
  %__dummy215 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  %__dummy36 = alloca i64, align 8
  %__dummy237 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %pri, i32* %pri.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pri.addr, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 (i8*, i32)* %ctl, i32 (i8*, i32)** %ctl.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32)** %ctl.addr, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %iclock, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i32*, i32** @debug, align 8, !dbg !115
  %1 = load i32, i32* %0, align 4, !dbg !117
  %and = and i32 %1, 33554687, !dbg !118
  %tobool = icmp ne i32 %and, 0, !dbg !118
  br i1 %tobool, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !120
  %3 = load i32, i32* %pri.addr, align 4, !dbg !121
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.mISDN_register_clock, i64 0, i64 0), i8* %2, i32 %3) #10, !dbg !122
  br label %if.end, !dbg !122

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @kzalloc(i64 104, i32 2592) #9, !dbg !123
  %4 = bitcast i8* %call1 to %struct.mISDNclock*, !dbg !123
  store %struct.mISDNclock* %4, %struct.mISDNclock** %iclock, align 8, !dbg !124
  %5 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !125
  %tobool2 = icmp ne %struct.mISDNclock* %5, null, !dbg !125
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !127

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.mISDN_register_clock, i64 0, i64 0)) #10, !dbg !128
  store %struct.mISDNclock* null, %struct.mISDNclock** %retval, align 8, !dbg !130
  br label %return, !dbg !130

if.end5:                                          ; preds = %if.end
  %6 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !131
  %name6 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %6, i32 0, i32 1, !dbg !132
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name6, i64 0, i64 0, !dbg !131
  %7 = load i8*, i8** %name.addr, align 8, !dbg !133
  %call7 = call i8* @strncpy(i8* %arraydecay, i8* %7, i64 63) #9, !dbg !134
  %8 = load i32, i32* %pri.addr, align 4, !dbg !135
  %9 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !136
  %pri8 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %9, i32 0, i32 2, !dbg !137
  store i32 %8, i32* %pri8, align 8, !dbg !138
  %10 = load i8*, i8** %priv.addr, align 8, !dbg !139
  %11 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !140
  %priv9 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %11, i32 0, i32 4, !dbg !141
  store i8* %10, i8** %priv9, align 8, !dbg !142
  %12 = load i32 (i8*, i32)*, i32 (i8*, i32)** %ctl.addr, align 8, !dbg !143
  %13 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !144
  %ctl10 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %13, i32 0, i32 3, !dbg !145
  store i32 (i8*, i32)* %12, i32 (i8*, i32)** %ctl10, align 8, !dbg !146
  br label %do.body, !dbg !147

do.body:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !152, metadata !DIExpression()), !dbg !151
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !151
  %conv = zext i1 %cmp to i32, !dbg !151
  store i32 1, i32* %tmp, align 4, !dbg !151
  %14 = load i32, i32* %tmp, align 4, !dbg !151
  br label %do.body11, !dbg !153

do.body11:                                        ; preds = %do.body
  br label %do.body12, !dbg !154

do.body12:                                        ; preds = %do.body11
  br label %do.body13, !dbg !156

do.body13:                                        ; preds = %do.body12
  call void @llvm.dbg.declare(metadata i64* %__dummy14, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i64* %__dummy215, metadata !162, metadata !DIExpression()), !dbg !161
  %cmp16 = icmp eq i64* %__dummy14, %__dummy215, !dbg !161
  %conv17 = zext i1 %cmp16 to i32, !dbg !161
  store i32 1, i32* %tmp18, align 4, !dbg !161
  %15 = load i32, i32* %tmp18, align 4, !dbg !161
  %call19 = call i64 @arch_local_irq_save() #9, !dbg !163
  store i64 %call19, i64* %flags, align 8, !dbg !163
  br label %do.end, !dbg !163

do.end:                                           ; preds = %do.body13
  br label %do.end20, !dbg !156

do.end20:                                         ; preds = %do.end
  br label %do.body21, !dbg !154

do.body21:                                        ; preds = %do.end20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !164, !srcloc !166
  br label %do.body22, !dbg !164

do.body22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !167

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !164

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !154

do.end25:                                         ; preds = %do.end24
  br label %do.end26, !dbg !153

do.end26:                                         ; preds = %do.end25
  %16 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !169
  %list = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %16, i32 0, i32 0, !dbg !170
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @iclock_list) #9, !dbg !171
  call void @select_iclock() #9, !dbg !172
  br label %do.body27, !dbg !173

do.body27:                                        ; preds = %do.end26
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !174, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i64* %__dummy229, metadata !178, metadata !DIExpression()), !dbg !177
  %cmp30 = icmp eq i64* %__dummy28, %__dummy229, !dbg !177
  %conv31 = zext i1 %cmp30 to i32, !dbg !177
  store i32 1, i32* %tmp32, align 4, !dbg !177
  %17 = load i32, i32* %tmp32, align 4, !dbg !177
  br label %do.body33, !dbg !179

do.body33:                                        ; preds = %do.body27
  br label %do.body34, !dbg !180

do.body34:                                        ; preds = %do.body33
  br label %do.body35, !dbg !182

do.body35:                                        ; preds = %do.body34
  call void @llvm.dbg.declare(metadata i64* %__dummy36, metadata !184, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i64* %__dummy237, metadata !188, metadata !DIExpression()), !dbg !187
  %cmp38 = icmp eq i64* %__dummy36, %__dummy237, !dbg !187
  %conv39 = zext i1 %cmp38 to i32, !dbg !187
  store i32 1, i32* %tmp40, align 4, !dbg !187
  %18 = load i32, i32* %tmp40, align 4, !dbg !187
  %19 = load i64, i64* %flags, align 8, !dbg !189
  call void @arch_local_irq_restore(i64 %19) #9, !dbg !189
  br label %do.end41, !dbg !189

do.end41:                                         ; preds = %do.body35
  br label %do.end42, !dbg !182

do.end42:                                         ; preds = %do.end41
  br label %do.body43, !dbg !180

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !190, !srcloc !192
  br label %do.body44, !dbg !190

do.body44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !193

do.end45:                                         ; preds = %do.body44
  br label %do.end46, !dbg !190

do.end46:                                         ; preds = %do.end45
  br label %do.end47, !dbg !180

do.end47:                                         ; preds = %do.end46
  br label %do.end48, !dbg !179

do.end48:                                         ; preds = %do.end47
  %20 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !195
  store %struct.mISDNclock* %20, %struct.mISDNclock** %retval, align 8, !dbg !196
  br label %return, !dbg !196

return:                                           ; preds = %do.end48, %if.then3
  %21 = load %struct.mISDNclock*, %struct.mISDNclock** %retval, align 8, !dbg !197
  ret %struct.mISDNclock* %21, !dbg !197
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !198 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !205, metadata !DIExpression()), !dbg !212
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !218, metadata !DIExpression()), !dbg !219
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !220, metadata !DIExpression()), !dbg !221
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !222, metadata !DIExpression()), !dbg !223
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !224, metadata !DIExpression()), !dbg !228
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !230, metadata !DIExpression()), !dbg !234
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !236, metadata !DIExpression()), !dbg !240
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !245, metadata !DIExpression()), !dbg !246
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !247, metadata !DIExpression()), !dbg !248
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !249, metadata !DIExpression()), !dbg !250
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !251, metadata !DIExpression()), !dbg !252
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !253, metadata !DIExpression()), !dbg !254
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !255, metadata !DIExpression()), !dbg !256
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !257, metadata !DIExpression()), !dbg !258
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !259, metadata !DIExpression()), !dbg !260
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !261, metadata !DIExpression()), !dbg !262
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !263, metadata !DIExpression()), !dbg !264
  %0 = load i64, i64* %size.addr, align 8, !dbg !265
  %1 = load i32, i32* %flags.addr, align 4, !dbg !266
  %or = or i32 %1, 256, !dbg !267
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !268
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !269
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !270

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !271
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !272
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !273

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !274
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !275
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !276
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !277
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !254
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !278
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !279
  %10 = load i32, i32* %order.i.i, align 4, !dbg !280
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !281
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !282
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !283
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !284
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !284
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !284
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !284
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !284
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !285
  br label %kmalloc.exit, !dbg !285

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !286
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !287
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !287
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !289

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !290
  br label %kmalloc_index.exit.i, !dbg !290

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !291
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !293
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !294

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !295
  br label %kmalloc_index.exit.i, !dbg !295

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !296
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !298
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !299

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !300
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !301
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !302

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !303
  br label %kmalloc_index.exit.i, !dbg !303

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !304
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !306
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !307

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !308
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !309
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !310

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !311
  br label %kmalloc_index.exit.i, !dbg !311

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !312
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !314
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !315

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !316
  br label %kmalloc_index.exit.i, !dbg !316

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !317
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !319
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !320

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !321
  br label %kmalloc_index.exit.i, !dbg !321

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !322
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !324
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !325

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !326
  br label %kmalloc_index.exit.i, !dbg !326

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !327
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !329
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !330

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !331
  br label %kmalloc_index.exit.i, !dbg !331

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !332
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !334
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !335

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !336
  br label %kmalloc_index.exit.i, !dbg !336

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !337
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !339
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !340

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !341
  br label %kmalloc_index.exit.i, !dbg !341

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !342
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !344
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !345

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !346
  br label %kmalloc_index.exit.i, !dbg !346

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !347
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !349
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !350

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !351
  br label %kmalloc_index.exit.i, !dbg !351

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !352
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !354
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !355

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !356
  br label %kmalloc_index.exit.i, !dbg !356

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !357
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !359
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !360

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !361
  br label %kmalloc_index.exit.i, !dbg !361

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !362
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !364
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !365

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !366
  br label %kmalloc_index.exit.i, !dbg !366

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !367
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !369
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !370

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !371
  br label %kmalloc_index.exit.i, !dbg !371

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !372
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !374
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !375

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !376
  br label %kmalloc_index.exit.i, !dbg !376

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !377
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !379
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !380

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !381
  br label %kmalloc_index.exit.i, !dbg !381

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !382
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !384
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !385

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !386
  br label %kmalloc_index.exit.i, !dbg !386

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !387
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !389
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !390

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !391
  br label %kmalloc_index.exit.i, !dbg !391

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !392
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !394
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !395

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !396
  br label %kmalloc_index.exit.i, !dbg !396

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !397
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !399
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !400

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !401
  br label %kmalloc_index.exit.i, !dbg !401

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !402
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !404
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !405

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !406
  br label %kmalloc_index.exit.i, !dbg !406

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !407
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !409
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !410

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !411
  br label %kmalloc_index.exit.i, !dbg !411

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !412
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !414
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !415

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !416
  br label %kmalloc_index.exit.i, !dbg !416

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !417
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !419
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !420

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !421
  br label %kmalloc_index.exit.i, !dbg !421

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !422
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !424
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !425

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !426
  br label %kmalloc_index.exit.i, !dbg !426

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !427
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !429
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !430

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !431
  br label %kmalloc_index.exit.i, !dbg !431

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !432, !srcloc !435
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #8, !dbg !436, !srcloc !439
  unreachable, !dbg !440

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !441
  store i32 %45, i32* %index.i, align 4, !dbg !442
  %46 = load i32, i32* %index.i, align 4, !dbg !443
  %tobool.i = icmp ne i32 %46, 0, !dbg !443
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !445

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !446
  br label %kmalloc.exit, !dbg !446

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !447
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !448
  %and.i.i = and i32 %48, 17, !dbg !448
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !448
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !448
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !448
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !448
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !450

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !451
  br label %kmalloc_type.exit.i, !dbg !451

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !452
  %and2.i.i = and i32 %49, 1, !dbg !453
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !452
  %50 = zext i1 %tobool3.i.i to i64, !dbg !452
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !452
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !454
  br label %kmalloc_type.exit.i, !dbg !454

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !455
  %idxprom.i = zext i32 %51 to i64, !dbg !456
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !456
  %52 = load i32, i32* %index.i, align 4, !dbg !457
  %idxprom6.i = zext i32 %52 to i64, !dbg !456
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !456
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !456
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !458
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !459
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !460
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !461
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !462
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !462
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !462
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !462
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !462
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !223
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !463
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !464
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !465
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !466
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !467
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !468
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !469
  store i8* %62, i8** %retval.i, align 8, !dbg !470
  br label %kmalloc.exit, !dbg !470

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !471
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !472
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !473
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !473
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !473
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !473
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !473
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !474
  br label %kmalloc.exit, !dbg !474

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !475
  ret i8* %65, !dbg !476
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !477 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !481, metadata !DIExpression()), !dbg !482
  %call = call i64 @arch_local_save_flags() #9, !dbg !483
  store i64 %call, i64* %f, align 8, !dbg !484
  call void @arch_local_irq_disable() #9, !dbg !485
  %0 = load i64, i64* %f, align 8, !dbg !486
  ret i64 %0, !dbg !487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !488 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !496
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !497
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !498
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !498
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !499
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @select_iclock() #0 !dbg !502 {
entry:
  %iclock = alloca %struct.mISDNclock*, align 8
  %bestclock = alloca %struct.mISDNclock*, align 8
  %lastclock = alloca %struct.mISDNclock*, align 8
  %pri = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mISDNclock*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.mISDNclock*, align 8
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %iclock, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %bestclock, metadata !507, metadata !DIExpression()), !dbg !508
  store %struct.mISDNclock* null, %struct.mISDNclock** %bestclock, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %lastclock, metadata !509, metadata !DIExpression()), !dbg !510
  store %struct.mISDNclock* null, %struct.mISDNclock** %lastclock, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata i32* %pri, metadata !511, metadata !DIExpression()), !dbg !512
  store i32 -128, i32* %pri, align 4, !dbg !512
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !513, metadata !DIExpression()), !dbg !516
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @iclock_list, i32 0, i32 0), align 8, !dbg !516
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !516
  store i8* %1, i8** %__mptr, align 8, !dbg !516
  br label %do.body, !dbg !516

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !517

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !516
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !516
  %3 = bitcast i8* %add.ptr to %struct.mISDNclock*, !dbg !516
  store %struct.mISDNclock* %3, %struct.mISDNclock** %tmp, align 8, !dbg !517
  %4 = load %struct.mISDNclock*, %struct.mISDNclock** %tmp, align 8, !dbg !516
  store %struct.mISDNclock* %4, %struct.mISDNclock** %iclock, align 8, !dbg !519
  br label %for.cond, !dbg !519

for.cond:                                         ; preds = %do.end10, %do.end
  %5 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !520
  %list = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %5, i32 0, i32 0, !dbg !520
  %cmp = icmp eq %struct.list_head* %list, @iclock_list, !dbg !520
  %lnot = xor i1 %cmp, true, !dbg !520
  br i1 %lnot, label %for.body, label %for.end, !dbg !519

for.body:                                         ; preds = %for.cond
  %6 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !522
  %pri1 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %6, i32 0, i32 2, !dbg !525
  %7 = load i32, i32* %pri1, align 8, !dbg !525
  %8 = load i32, i32* %pri, align 4, !dbg !526
  %cmp2 = icmp sgt i32 %7, %8, !dbg !527
  br i1 %cmp2, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %for.body
  %9 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !529
  %pri3 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %9, i32 0, i32 2, !dbg !531
  %10 = load i32, i32* %pri3, align 8, !dbg !531
  store i32 %10, i32* %pri, align 4, !dbg !532
  %11 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !533
  store %struct.mISDNclock* %11, %struct.mISDNclock** %bestclock, align 8, !dbg !534
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then, %for.body
  %12 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !536
  %13 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !538
  %cmp4 = icmp eq %struct.mISDNclock* %12, %13, !dbg !539
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !540

if.then5:                                         ; preds = %if.end
  %14 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !541
  store %struct.mISDNclock* %14, %struct.mISDNclock** %lastclock, align 8, !dbg !542
  br label %if.end6, !dbg !543

if.end6:                                          ; preds = %if.then5, %if.end
  br label %for.inc, !dbg !544

for.inc:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !545, metadata !DIExpression()), !dbg !547
  %15 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock, align 8, !dbg !547
  %list8 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %15, i32 0, i32 0, !dbg !547
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list8, i32 0, i32 0, !dbg !547
  %16 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !547
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !547
  store i8* %17, i8** %__mptr7, align 8, !dbg !547
  br label %do.body9, !dbg !547

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !548

do.end10:                                         ; preds = %do.body9
  %18 = load i8*, i8** %__mptr7, align 8, !dbg !547
  %add.ptr12 = getelementptr i8, i8* %18, i64 0, !dbg !547
  %19 = bitcast i8* %add.ptr12 to %struct.mISDNclock*, !dbg !547
  store %struct.mISDNclock* %19, %struct.mISDNclock** %tmp11, align 8, !dbg !548
  %20 = load %struct.mISDNclock*, %struct.mISDNclock** %tmp11, align 8, !dbg !547
  store %struct.mISDNclock* %20, %struct.mISDNclock** %iclock, align 8, !dbg !520
  br label %for.cond, !dbg !520, !llvm.loop !550

for.end:                                          ; preds = %for.cond
  %21 = load %struct.mISDNclock*, %struct.mISDNclock** %lastclock, align 8, !dbg !552
  %tobool = icmp ne %struct.mISDNclock* %21, null, !dbg !552
  br i1 %tobool, label %land.lhs.true, label %if.end19, !dbg !554

land.lhs.true:                                    ; preds = %for.end
  %22 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !555
  %23 = load %struct.mISDNclock*, %struct.mISDNclock** %lastclock, align 8, !dbg !556
  %cmp13 = icmp ne %struct.mISDNclock* %22, %23, !dbg !557
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !558

if.then14:                                        ; preds = %land.lhs.true
  %24 = load i32*, i32** @debug, align 8, !dbg !559
  %25 = load i32, i32* %24, align 4, !dbg !562
  %and = and i32 %25, 33554432, !dbg !563
  %tobool15 = icmp ne i32 %and, 0, !dbg !563
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !564

if.then16:                                        ; preds = %if.then14
  %26 = load %struct.mISDNclock*, %struct.mISDNclock** %lastclock, align 8, !dbg !565
  %name = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %26, i32 0, i32 1, !dbg !566
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !565
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay) #10, !dbg !567
  br label %if.end17, !dbg !567

if.end17:                                         ; preds = %if.then16, %if.then14
  %27 = load %struct.mISDNclock*, %struct.mISDNclock** %lastclock, align 8, !dbg !568
  %ctl = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %27, i32 0, i32 3, !dbg !569
  %28 = load i32 (i8*, i32)*, i32 (i8*, i32)** %ctl, align 8, !dbg !569
  %29 = load %struct.mISDNclock*, %struct.mISDNclock** %lastclock, align 8, !dbg !570
  %priv = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %29, i32 0, i32 4, !dbg !571
  %30 = load i8*, i8** %priv, align 8, !dbg !571
  %call18 = call i32 %28(i8* %30, i32 0) #9, !dbg !568
  br label %if.end19, !dbg !572

if.end19:                                         ; preds = %if.end17, %land.lhs.true, %for.end
  %31 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !573
  %tobool20 = icmp ne %struct.mISDNclock* %31, null, !dbg !573
  br i1 %tobool20, label %land.lhs.true21, label %if.end34, !dbg !575

land.lhs.true21:                                  ; preds = %if.end19
  %32 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !576
  %33 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !577
  %cmp22 = icmp ne %struct.mISDNclock* %32, %33, !dbg !578
  br i1 %cmp22, label %if.then23, label %if.end34, !dbg !579

if.then23:                                        ; preds = %land.lhs.true21
  %34 = load i32*, i32** @debug, align 8, !dbg !580
  %35 = load i32, i32* %34, align 4, !dbg !583
  %and24 = and i32 %35, 33554432, !dbg !584
  %tobool25 = icmp ne i32 %and24, 0, !dbg !584
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !585

if.then26:                                        ; preds = %if.then23
  %36 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !586
  %name27 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %36, i32 0, i32 1, !dbg !587
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %name27, i64 0, i64 0, !dbg !586
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay28) #10, !dbg !588
  br label %if.end30, !dbg !588

if.end30:                                         ; preds = %if.then26, %if.then23
  %37 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !589
  %ctl31 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %37, i32 0, i32 3, !dbg !590
  %38 = load i32 (i8*, i32)*, i32 (i8*, i32)** %ctl31, align 8, !dbg !590
  %39 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !591
  %priv32 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %39, i32 0, i32 4, !dbg !592
  %40 = load i8*, i8** %priv32, align 8, !dbg !592
  %call33 = call i32 %38(i8* %40, i32 1) #9, !dbg !589
  br label %if.end34, !dbg !593

if.end34:                                         ; preds = %if.end30, %land.lhs.true21, %if.end19
  %41 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !594
  %42 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !596
  %cmp35 = icmp ne %struct.mISDNclock* %41, %42, !dbg !597
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !598

if.then36:                                        ; preds = %if.end34
  store i32 0, i32* @iclock_timestamp_valid, align 4, !dbg !599
  br label %if.end37, !dbg !601

if.end37:                                         ; preds = %if.then36, %if.end34
  %43 = load %struct.mISDNclock*, %struct.mISDNclock** %bestclock, align 8, !dbg !602
  store %struct.mISDNclock* %43, %struct.mISDNclock** @iclock_current, align 8, !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !605 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !610, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %__edi, align 8, !dbg !612
  store i64 %0, i64* %__edi, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !613, metadata !DIExpression()), !dbg !612
  %1 = load i64, i64* %__esi, align 8, !dbg !612
  store i64 %1, i64* %__esi, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !614, metadata !DIExpression()), !dbg !612
  %2 = load i64, i64* %__edx, align 8, !dbg !612
  store i64 %2, i64* %__edx, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !615, metadata !DIExpression()), !dbg !612
  %3 = load i64, i64* %__ecx, align 8, !dbg !612
  store i64 %3, i64* %__ecx, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !616, metadata !DIExpression()), !dbg !612
  %4 = load i64, i64* %__eax, align 8, !dbg !612
  store i64 %4, i64* %__eax, align 8, !dbg !612
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !612
  %6 = call i64 @llvm.read_register.i64(metadata !82), !dbg !612
  %7 = load i64, i64* %f.addr, align 8, !dbg !612
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !612, !srcloc !617
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !612
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !612
  store i64 %asmresult, i64* %__eax, align 8, !dbg !612
  call void @llvm.write_register.i64(metadata !82, i64 %asmresult1), !dbg !612
  ret void, !dbg !618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_unregister_clock(%struct.mISDNclock* %iclock) #0 !dbg !619 {
entry:
  %iclock.addr = alloca %struct.mISDNclock*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy30 = alloca i64, align 8
  %__dummy231 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  %__dummy38 = alloca i64, align 8
  %__dummy239 = alloca i64, align 8
  %tmp42 = alloca i32, align 4
  store %struct.mISDNclock* %iclock, %struct.mISDNclock** %iclock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %iclock.addr, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !624, metadata !DIExpression()), !dbg !625
  %0 = load i32*, i32** @debug, align 8, !dbg !626
  %1 = load i32, i32* %0, align 4, !dbg !628
  %and = and i32 %1, 33554687, !dbg !629
  %tobool = icmp ne i32 %and, 0, !dbg !629
  br i1 %tobool, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %entry
  %2 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !631
  %name = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %2, i32 0, i32 1, !dbg !632
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !631
  %3 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !633
  %pri = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %3, i32 0, i32 2, !dbg !634
  %4 = load i32, i32* %pri, align 8, !dbg !634
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.mISDN_unregister_clock, i64 0, i64 0), i8* %arraydecay, i32 %4) #10, !dbg !635
  br label %if.end, !dbg !635

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !636

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !637, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !641, metadata !DIExpression()), !dbg !640
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !640
  %conv = zext i1 %cmp to i32, !dbg !640
  store i32 1, i32* %tmp, align 4, !dbg !640
  %5 = load i32, i32* %tmp, align 4, !dbg !640
  br label %do.body1, !dbg !642

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !643

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !645

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !651, metadata !DIExpression()), !dbg !650
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !650
  %conv7 = zext i1 %cmp6 to i32, !dbg !650
  store i32 1, i32* %tmp8, align 4, !dbg !650
  %6 = load i32, i32* %tmp8, align 4, !dbg !650
  %call9 = call i64 @arch_local_irq_save() #9, !dbg !652
  store i64 %call9, i64* %flags, align 8, !dbg !652
  br label %do.end, !dbg !652

do.end:                                           ; preds = %do.body3
  br label %do.end10, !dbg !645

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !643

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !653, !srcloc !655
  br label %do.body12, !dbg !653

do.body12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !656

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !653

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !643

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !642

do.end16:                                         ; preds = %do.end15
  %7 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !658
  %8 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !660
  %cmp17 = icmp eq %struct.mISDNclock* %7, %8, !dbg !661
  br i1 %cmp17, label %if.then19, label %if.end28, !dbg !662

if.then19:                                        ; preds = %do.end16
  %9 = load i32*, i32** @debug, align 8, !dbg !663
  %10 = load i32, i32* %9, align 4, !dbg !666
  %and20 = and i32 %10, 33554432, !dbg !667
  %tobool21 = icmp ne i32 %and20, 0, !dbg !667
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !668

if.then22:                                        ; preds = %if.then19
  %11 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !669
  %name23 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %11, i32 0, i32 1, !dbg !670
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %name23, i64 0, i64 0, !dbg !669
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay24) #10, !dbg !671
  br label %if.end26, !dbg !671

if.end26:                                         ; preds = %if.then22, %if.then19
  %12 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !672
  %ctl = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %12, i32 0, i32 3, !dbg !673
  %13 = load i32 (i8*, i32)*, i32 (i8*, i32)** %ctl, align 8, !dbg !673
  %14 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !674
  %priv = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %14, i32 0, i32 4, !dbg !675
  %15 = load i8*, i8** %priv, align 8, !dbg !675
  %call27 = call i32 %13(i8* %15, i32 0) #9, !dbg !672
  br label %if.end28, !dbg !676

if.end28:                                         ; preds = %if.end26, %do.end16
  %16 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !677
  %list = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %16, i32 0, i32 0, !dbg !678
  call void @list_del(%struct.list_head* %list) #9, !dbg !679
  call void @select_iclock() #9, !dbg !680
  br label %do.body29, !dbg !681

do.body29:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i64* %__dummy30, metadata !682, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata i64* %__dummy231, metadata !686, metadata !DIExpression()), !dbg !685
  %cmp32 = icmp eq i64* %__dummy30, %__dummy231, !dbg !685
  %conv33 = zext i1 %cmp32 to i32, !dbg !685
  store i32 1, i32* %tmp34, align 4, !dbg !685
  %17 = load i32, i32* %tmp34, align 4, !dbg !685
  br label %do.body35, !dbg !687

do.body35:                                        ; preds = %do.body29
  br label %do.body36, !dbg !688

do.body36:                                        ; preds = %do.body35
  br label %do.body37, !dbg !690

do.body37:                                        ; preds = %do.body36
  call void @llvm.dbg.declare(metadata i64* %__dummy38, metadata !692, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata i64* %__dummy239, metadata !696, metadata !DIExpression()), !dbg !695
  %cmp40 = icmp eq i64* %__dummy38, %__dummy239, !dbg !695
  %conv41 = zext i1 %cmp40 to i32, !dbg !695
  store i32 1, i32* %tmp42, align 4, !dbg !695
  %18 = load i32, i32* %tmp42, align 4, !dbg !695
  %19 = load i64, i64* %flags, align 8, !dbg !697
  call void @arch_local_irq_restore(i64 %19) #9, !dbg !697
  br label %do.end43, !dbg !697

do.end43:                                         ; preds = %do.body37
  br label %do.end44, !dbg !690

do.end44:                                         ; preds = %do.end43
  br label %do.body45, !dbg !688

do.body45:                                        ; preds = %do.end44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !698, !srcloc !700
  br label %do.body46, !dbg !698

do.body46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !701

do.end47:                                         ; preds = %do.body46
  br label %do.end48, !dbg !698

do.end48:                                         ; preds = %do.end47
  br label %do.end49, !dbg !688

do.end49:                                         ; preds = %do.end48
  br label %do.end50, !dbg !687

do.end50:                                         ; preds = %do.end49
  ret void, !dbg !703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !704 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !709
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !710
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !711
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !712
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !713
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !714
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !715
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !716
  ret void, !dbg !717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_clock_update(%struct.mISDNclock* %iclock, i32 %samples, i64* %timestamp) #0 !dbg !718 {
entry:
  %iclock.addr = alloca %struct.mISDNclock*, align 8
  %samples.addr = alloca i32, align 4
  %timestamp.addr = alloca i64*, align 8
  %flags = alloca i64, align 8
  %timestamp_now = alloca i64, align 8
  %delta = alloca i16, align 2
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy23 = alloca i64, align 8
  %__dummy224 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  %__dummy77 = alloca i64, align 8
  %__dummy278 = alloca i64, align 8
  %tmp81 = alloca i32, align 4
  %__dummy85 = alloca i64, align 8
  %__dummy286 = alloca i64, align 8
  %tmp89 = alloca i32, align 4
  store %struct.mISDNclock* %iclock, %struct.mISDNclock** %iclock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mISDNclock** %iclock.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i32 %samples, i32* %samples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %samples.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i64* %timestamp, i64** %timestamp.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %timestamp.addr, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i64* %timestamp_now, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata i16* %delta, metadata !732, metadata !DIExpression()), !dbg !733
  br label %do.body, !dbg !734

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !735, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !739, metadata !DIExpression()), !dbg !738
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !738
  %conv = zext i1 %cmp to i32, !dbg !738
  store i32 1, i32* %tmp, align 4, !dbg !738
  %0 = load i32, i32* %tmp, align 4, !dbg !738
  br label %do.body1, !dbg !740

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !741

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !743

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !745, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !749, metadata !DIExpression()), !dbg !748
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !748
  %conv7 = zext i1 %cmp6 to i32, !dbg !748
  store i32 1, i32* %tmp8, align 4, !dbg !748
  %1 = load i32, i32* %tmp8, align 4, !dbg !748
  %call = call i64 @arch_local_irq_save() #9, !dbg !750
  store i64 %call, i64* %flags, align 8, !dbg !750
  br label %do.end, !dbg !750

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !743

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !741

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !751, !srcloc !753
  br label %do.body11, !dbg !751

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !754

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !751

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !741

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !740

do.end15:                                         ; preds = %do.end14
  %2 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !756
  %3 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !758
  %cmp16 = icmp ne %struct.mISDNclock* %2, %3, !dbg !759
  br i1 %cmp16, label %if.then, label %if.end, !dbg !760

if.then:                                          ; preds = %do.end15
  %4 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !761
  %name = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %4, i32 0, i32 1, !dbg !763
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !761
  %5 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !764
  %tobool = icmp ne %struct.mISDNclock* %5, null, !dbg !764
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !764

cond.true:                                        ; preds = %if.then
  %6 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !765
  %name18 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %6, i32 0, i32 1, !dbg !766
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %name18, i64 0, i64 0, !dbg !765
  br label %cond.end, !dbg !764

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay19, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %cond.false ], !dbg !764
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mISDN_clock_update, i64 0, i64 0), i8* %arraydecay, i8* %cond) #10, !dbg !767
  %7 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !768
  %ctl = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %7, i32 0, i32 3, !dbg !769
  %8 = load i32 (i8*, i32)*, i32 (i8*, i32)** %ctl, align 8, !dbg !769
  %9 = load %struct.mISDNclock*, %struct.mISDNclock** %iclock.addr, align 8, !dbg !770
  %priv = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %9, i32 0, i32 4, !dbg !771
  %10 = load i8*, i8** %priv, align 8, !dbg !771
  %call21 = call i32 %8(i8* %10, i32 0) #9, !dbg !768
  br label %do.body22, !dbg !772

do.body22:                                        ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i64* %__dummy23, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.declare(metadata i64* %__dummy224, metadata !777, metadata !DIExpression()), !dbg !776
  %cmp25 = icmp eq i64* %__dummy23, %__dummy224, !dbg !776
  %conv26 = zext i1 %cmp25 to i32, !dbg !776
  store i32 1, i32* %tmp27, align 4, !dbg !776
  %11 = load i32, i32* %tmp27, align 4, !dbg !776
  br label %do.body28, !dbg !778

do.body28:                                        ; preds = %do.body22
  br label %do.body29, !dbg !779

do.body29:                                        ; preds = %do.body28
  br label %do.body30, !dbg !781

do.body30:                                        ; preds = %do.body29
  call void @llvm.dbg.declare(metadata i64* %__dummy31, metadata !783, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata i64* %__dummy232, metadata !787, metadata !DIExpression()), !dbg !786
  %cmp33 = icmp eq i64* %__dummy31, %__dummy232, !dbg !786
  %conv34 = zext i1 %cmp33 to i32, !dbg !786
  store i32 1, i32* %tmp35, align 4, !dbg !786
  %12 = load i32, i32* %tmp35, align 4, !dbg !786
  %13 = load i64, i64* %flags, align 8, !dbg !788
  call void @arch_local_irq_restore(i64 %13) #9, !dbg !788
  br label %do.end36, !dbg !788

do.end36:                                         ; preds = %do.body30
  br label %do.end37, !dbg !781

do.end37:                                         ; preds = %do.end36
  br label %do.body38, !dbg !779

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !789, !srcloc !791
  br label %do.body39, !dbg !789

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !792

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !789

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !779

do.end42:                                         ; preds = %do.end41
  br label %do.end43, !dbg !778

do.end43:                                         ; preds = %do.end42
  br label %do.end97, !dbg !794

if.end:                                           ; preds = %do.end15
  %14 = load i32, i32* @iclock_timestamp_valid, align 4, !dbg !795
  %tobool44 = icmp ne i32 %14, 0, !dbg !795
  br i1 %tobool44, label %if.then45, label %if.else52, !dbg !797

if.then45:                                        ; preds = %if.end
  %15 = load i32, i32* %samples.addr, align 4, !dbg !798
  %16 = load i16, i16* @iclock_count, align 2, !dbg !800
  %conv46 = zext i16 %16 to i32, !dbg !800
  %add = add i32 %conv46, %15, !dbg !800
  %conv47 = trunc i32 %add to i16, !dbg !800
  store i16 %conv47, i16* @iclock_count, align 2, !dbg !800
  %17 = load i64*, i64** %timestamp.addr, align 8, !dbg !801
  %tobool48 = icmp ne i64* %17, null, !dbg !801
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !803

if.then49:                                        ; preds = %if.then45
  %18 = load i64*, i64** %timestamp.addr, align 8, !dbg !804
  %19 = load i64, i64* %18, align 8, !dbg !806
  store i64 %19, i64* @iclock_timestamp, align 8, !dbg !807
  br label %if.end51, !dbg !808

if.else:                                          ; preds = %if.then45
  %call50 = call i64 @ktime_get() #9, !dbg !809
  store i64 %call50, i64* @iclock_timestamp, align 8, !dbg !811
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  br label %if.end75, !dbg !812

if.else52:                                        ; preds = %if.end
  %20 = load i64*, i64** %timestamp.addr, align 8, !dbg !813
  %tobool53 = icmp ne i64* %20, null, !dbg !813
  br i1 %tobool53, label %if.then54, label %if.else55, !dbg !816

if.then54:                                        ; preds = %if.else52
  %21 = load i64*, i64** %timestamp.addr, align 8, !dbg !817
  %22 = load i64, i64* %21, align 8, !dbg !819
  store i64 %22, i64* %timestamp_now, align 8, !dbg !820
  br label %if.end57, !dbg !821

if.else55:                                        ; preds = %if.else52
  %call56 = call i64 @ktime_get() #9, !dbg !822
  store i64 %call56, i64* %timestamp_now, align 8, !dbg !824
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then54
  %23 = load i64, i64* %timestamp_now, align 8, !dbg !825
  %24 = load i64, i64* @iclock_timestamp, align 8, !dbg !825
  %sub = sub i64 %23, %24, !dbg !825
  %call58 = call i64 @ktime_divns(i64 %sub, i64 125000) #9, !dbg !826
  %conv59 = trunc i64 %call58 to i16, !dbg !826
  store i16 %conv59, i16* %delta, align 2, !dbg !827
  %25 = load i16, i16* %delta, align 2, !dbg !828
  %conv60 = zext i16 %25 to i32, !dbg !828
  %26 = load i16, i16* @iclock_count, align 2, !dbg !829
  %conv61 = zext i16 %26 to i32, !dbg !829
  %add62 = add i32 %conv61, %conv60, !dbg !829
  %conv63 = trunc i32 %add62 to i16, !dbg !829
  store i16 %conv63, i16* @iclock_count, align 2, !dbg !829
  %27 = load i64, i64* %timestamp_now, align 8, !dbg !830
  store i64 %27, i64* @iclock_timestamp, align 8, !dbg !831
  store i32 1, i32* @iclock_timestamp_valid, align 4, !dbg !832
  %28 = load i32*, i32** @debug, align 8, !dbg !833
  %29 = load i32, i32* %28, align 4, !dbg !835
  %and = and i32 %29, 33554432, !dbg !836
  %tobool64 = icmp ne i32 %and, 0, !dbg !836
  br i1 %tobool64, label %if.then65, label %if.end74, !dbg !837

if.then65:                                        ; preds = %if.end57
  %30 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !838
  %tobool66 = icmp ne %struct.mISDNclock* %30, null, !dbg !838
  br i1 %tobool66, label %cond.true67, label %cond.false70, !dbg !838

cond.true67:                                      ; preds = %if.then65
  %31 = load %struct.mISDNclock*, %struct.mISDNclock** @iclock_current, align 8, !dbg !839
  %name68 = getelementptr inbounds %struct.mISDNclock, %struct.mISDNclock* %31, i32 0, i32 1, !dbg !840
  %arraydecay69 = getelementptr inbounds [64 x i8], [64 x i8]* %name68, i64 0, i64 0, !dbg !839
  br label %cond.end71, !dbg !838

cond.false70:                                     ; preds = %if.then65
  br label %cond.end71, !dbg !838

cond.end71:                                       ; preds = %cond.false70, %cond.true67
  %cond72 = phi i8* [ %arraydecay69, %cond.true67 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %cond.false70 ], !dbg !838
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %cond72) #10, !dbg !841
  br label %if.end74, !dbg !841

if.end74:                                         ; preds = %cond.end71, %if.end57
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end51
  br label %do.body76, !dbg !842

do.body76:                                        ; preds = %if.end75
  call void @llvm.dbg.declare(metadata i64* %__dummy77, metadata !843, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata i64* %__dummy278, metadata !847, metadata !DIExpression()), !dbg !846
  %cmp79 = icmp eq i64* %__dummy77, %__dummy278, !dbg !846
  %conv80 = zext i1 %cmp79 to i32, !dbg !846
  store i32 1, i32* %tmp81, align 4, !dbg !846
  %32 = load i32, i32* %tmp81, align 4, !dbg !846
  br label %do.body82, !dbg !848

do.body82:                                        ; preds = %do.body76
  br label %do.body83, !dbg !849

do.body83:                                        ; preds = %do.body82
  br label %do.body84, !dbg !851

do.body84:                                        ; preds = %do.body83
  call void @llvm.dbg.declare(metadata i64* %__dummy85, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata i64* %__dummy286, metadata !857, metadata !DIExpression()), !dbg !856
  %cmp87 = icmp eq i64* %__dummy85, %__dummy286, !dbg !856
  %conv88 = zext i1 %cmp87 to i32, !dbg !856
  store i32 1, i32* %tmp89, align 4, !dbg !856
  %33 = load i32, i32* %tmp89, align 4, !dbg !856
  %34 = load i64, i64* %flags, align 8, !dbg !858
  call void @arch_local_irq_restore(i64 %34) #9, !dbg !858
  br label %do.end90, !dbg !858

do.end90:                                         ; preds = %do.body84
  br label %do.end91, !dbg !851

do.end91:                                         ; preds = %do.end90
  br label %do.body92, !dbg !849

do.body92:                                        ; preds = %do.end91
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !859, !srcloc !861
  br label %do.body93, !dbg !859

do.body93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !862

do.end94:                                         ; preds = %do.body93
  br label %do.end95, !dbg !859

do.end95:                                         ; preds = %do.end94
  br label %do.end96, !dbg !849

do.end96:                                         ; preds = %do.end95
  br label %do.end97, !dbg !848

do.end97:                                         ; preds = %do.end43, %do.end96
  ret void, !dbg !864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !865 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !869, metadata !DIExpression()), !dbg !870
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !873, metadata !DIExpression()), !dbg !875
  %0 = load i64, i64* %div.addr, align 8, !dbg !875
  %cmp = icmp slt i64 %0, 0, !dbg !875
  %lnot = xor i1 %cmp, true, !dbg !875
  %lnot1 = xor i1 %lnot, true, !dbg !875
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !875
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !875
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !876
  %tobool = icmp ne i32 %1, 0, !dbg !876
  %lnot2 = xor i1 %tobool, true, !dbg !876
  %lnot4 = xor i1 %lnot2, true, !dbg !876
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !876
  %conv = sext i32 %lnot.ext5 to i64, !dbg !876
  %tobool6 = icmp ne i64 %conv, 0, !dbg !876
  br i1 %tobool6, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !876

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !878

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !880

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !878

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 154, i32 2305, i64 12) #8, !dbg !882, !srcloc !884
  br label %do.end9, !dbg !882

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 69) #8, !dbg !885, !srcloc !887
  br label %do.body10, !dbg !878

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !888

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !878

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !878

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !875
  %tobool13 = icmp ne i32 %2, 0, !dbg !875
  %lnot14 = xor i1 %tobool13, true, !dbg !875
  %lnot16 = xor i1 %lnot14, true, !dbg !875
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !875
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !875
  store i64 %conv18, i64* %tmp, align 8, !dbg !876
  %3 = load i64, i64* %tmp, align 8, !dbg !875
  %4 = load i64, i64* %kt.addr, align 8, !dbg !890
  %5 = load i64, i64* %div.addr, align 8, !dbg !891
  %div19 = sdiv i64 %4, %5, !dbg !892
  ret i64 %div19, !dbg !893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @mISDN_clock_get() #0 !dbg !894 {
entry:
  %flags = alloca i64, align 8
  %timestamp_now = alloca i64, align 8
  %delta = alloca i16, align 2
  %count = alloca i16, align 2
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy23 = alloca i64, align 8
  %__dummy224 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i64* %timestamp_now, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata i16* %delta, metadata !901, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.declare(metadata i16* %count, metadata !903, metadata !DIExpression()), !dbg !904
  br label %do.body, !dbg !905

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !906, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !910, metadata !DIExpression()), !dbg !909
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !909
  %conv = zext i1 %cmp to i32, !dbg !909
  store i32 1, i32* %tmp, align 4, !dbg !909
  %0 = load i32, i32* %tmp, align 4, !dbg !909
  br label %do.body1, !dbg !911

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !912

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !914

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !916, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !920, metadata !DIExpression()), !dbg !919
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !919
  %conv7 = zext i1 %cmp6 to i32, !dbg !919
  store i32 1, i32* %tmp8, align 4, !dbg !919
  %1 = load i32, i32* %tmp8, align 4, !dbg !919
  %call = call i64 @arch_local_irq_save() #9, !dbg !921
  store i64 %call, i64* %flags, align 8, !dbg !921
  br label %do.end, !dbg !921

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !914

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !912

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !922, !srcloc !924
  br label %do.body11, !dbg !922

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !925

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !922

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !912

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !911

do.end15:                                         ; preds = %do.end14
  %call16 = call i64 @ktime_get() #9, !dbg !927
  store i64 %call16, i64* %timestamp_now, align 8, !dbg !928
  %2 = load i64, i64* %timestamp_now, align 8, !dbg !929
  %3 = load i64, i64* @iclock_timestamp, align 8, !dbg !929
  %sub = sub i64 %2, %3, !dbg !929
  %call17 = call i64 @ktime_divns(i64 %sub, i64 125000) #9, !dbg !930
  %conv18 = trunc i64 %call17 to i16, !dbg !930
  store i16 %conv18, i16* %delta, align 2, !dbg !931
  %4 = load i16, i16* @iclock_count, align 2, !dbg !932
  %conv19 = zext i16 %4 to i32, !dbg !932
  %5 = load i16, i16* %delta, align 2, !dbg !933
  %conv20 = zext i16 %5 to i32, !dbg !933
  %add = add i32 %conv19, %conv20, !dbg !934
  %conv21 = trunc i32 %add to i16, !dbg !932
  store i16 %conv21, i16* %count, align 2, !dbg !935
  br label %do.body22, !dbg !936

do.body22:                                        ; preds = %do.end15
  call void @llvm.dbg.declare(metadata i64* %__dummy23, metadata !937, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i64* %__dummy224, metadata !941, metadata !DIExpression()), !dbg !940
  %cmp25 = icmp eq i64* %__dummy23, %__dummy224, !dbg !940
  %conv26 = zext i1 %cmp25 to i32, !dbg !940
  store i32 1, i32* %tmp27, align 4, !dbg !940
  %6 = load i32, i32* %tmp27, align 4, !dbg !940
  br label %do.body28, !dbg !942

do.body28:                                        ; preds = %do.body22
  br label %do.body29, !dbg !943

do.body29:                                        ; preds = %do.body28
  br label %do.body30, !dbg !945

do.body30:                                        ; preds = %do.body29
  call void @llvm.dbg.declare(metadata i64* %__dummy31, metadata !947, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata i64* %__dummy232, metadata !951, metadata !DIExpression()), !dbg !950
  %cmp33 = icmp eq i64* %__dummy31, %__dummy232, !dbg !950
  %conv34 = zext i1 %cmp33 to i32, !dbg !950
  store i32 1, i32* %tmp35, align 4, !dbg !950
  %7 = load i32, i32* %tmp35, align 4, !dbg !950
  %8 = load i64, i64* %flags, align 8, !dbg !952
  call void @arch_local_irq_restore(i64 %8) #9, !dbg !952
  br label %do.end36, !dbg !952

do.end36:                                         ; preds = %do.body30
  br label %do.end37, !dbg !945

do.end37:                                         ; preds = %do.end36
  br label %do.body38, !dbg !943

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !953, !srcloc !955
  br label %do.body39, !dbg !953

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !956

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !953

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !943

do.end42:                                         ; preds = %do.end41
  br label %do.end43, !dbg !942

do.end43:                                         ; preds = %do.end42
  %9 = load i16, i16* %count, align 2, !dbg !958
  ret i16 %9, !dbg !959
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !960 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !964, metadata !DIExpression()), !dbg !971
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !973, metadata !DIExpression()), !dbg !974
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !975, metadata !DIExpression()), !dbg !976
  %0 = load i64, i64* %size.addr, align 8, !dbg !977
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !979
  br i1 %1, label %if.then, label %if.end447, !dbg !980

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !981
  %tobool = icmp ne i64 %2, 0, !dbg !981
  br i1 %tobool, label %if.end, label %if.then1, !dbg !984

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !985
  br label %return, !dbg !985

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !986
  %cmp = icmp ult i64 %3, 4096, !dbg !988
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !989

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub = sub i64 %4, 1, !dbg !991
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !991
  br i1 %5, label %cond.true, label %cond.false442, !dbg !991

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub4 = sub i64 %6, 1, !dbg !991
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !991
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !991

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub6 = sub i64 %8, 1, !dbg !991
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !991
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !991

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !991

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub9 = sub i64 %9, 1, !dbg !991
  %and = and i64 %sub9, -9223372036854775808, !dbg !991
  %tobool10 = icmp ne i64 %and, 0, !dbg !991
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !991

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !991

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub13 = sub i64 %10, 1, !dbg !991
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !991
  %tobool15 = icmp ne i64 %and14, 0, !dbg !991
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !991

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !991

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub18 = sub i64 %11, 1, !dbg !991
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !991
  %tobool20 = icmp ne i64 %and19, 0, !dbg !991
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !991

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !991

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub23 = sub i64 %12, 1, !dbg !991
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !991
  %tobool25 = icmp ne i64 %and24, 0, !dbg !991
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !991

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !991

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub28 = sub i64 %13, 1, !dbg !991
  %and29 = and i64 %sub28, 576460752303423488, !dbg !991
  %tobool30 = icmp ne i64 %and29, 0, !dbg !991
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !991

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !991

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub33 = sub i64 %14, 1, !dbg !991
  %and34 = and i64 %sub33, 288230376151711744, !dbg !991
  %tobool35 = icmp ne i64 %and34, 0, !dbg !991
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !991

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !991

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub38 = sub i64 %15, 1, !dbg !991
  %and39 = and i64 %sub38, 144115188075855872, !dbg !991
  %tobool40 = icmp ne i64 %and39, 0, !dbg !991
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !991

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !991

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub43 = sub i64 %16, 1, !dbg !991
  %and44 = and i64 %sub43, 72057594037927936, !dbg !991
  %tobool45 = icmp ne i64 %and44, 0, !dbg !991
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !991

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !991

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub48 = sub i64 %17, 1, !dbg !991
  %and49 = and i64 %sub48, 36028797018963968, !dbg !991
  %tobool50 = icmp ne i64 %and49, 0, !dbg !991
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !991

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !991

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub53 = sub i64 %18, 1, !dbg !991
  %and54 = and i64 %sub53, 18014398509481984, !dbg !991
  %tobool55 = icmp ne i64 %and54, 0, !dbg !991
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !991

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !991

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub58 = sub i64 %19, 1, !dbg !991
  %and59 = and i64 %sub58, 9007199254740992, !dbg !991
  %tobool60 = icmp ne i64 %and59, 0, !dbg !991
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !991

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !991

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub63 = sub i64 %20, 1, !dbg !991
  %and64 = and i64 %sub63, 4503599627370496, !dbg !991
  %tobool65 = icmp ne i64 %and64, 0, !dbg !991
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !991

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !991

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub68 = sub i64 %21, 1, !dbg !991
  %and69 = and i64 %sub68, 2251799813685248, !dbg !991
  %tobool70 = icmp ne i64 %and69, 0, !dbg !991
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !991

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !991

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub73 = sub i64 %22, 1, !dbg !991
  %and74 = and i64 %sub73, 1125899906842624, !dbg !991
  %tobool75 = icmp ne i64 %and74, 0, !dbg !991
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !991

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !991

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub78 = sub i64 %23, 1, !dbg !991
  %and79 = and i64 %sub78, 562949953421312, !dbg !991
  %tobool80 = icmp ne i64 %and79, 0, !dbg !991
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !991

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !991

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub83 = sub i64 %24, 1, !dbg !991
  %and84 = and i64 %sub83, 281474976710656, !dbg !991
  %tobool85 = icmp ne i64 %and84, 0, !dbg !991
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !991

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !991

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub88 = sub i64 %25, 1, !dbg !991
  %and89 = and i64 %sub88, 140737488355328, !dbg !991
  %tobool90 = icmp ne i64 %and89, 0, !dbg !991
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !991

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !991

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub93 = sub i64 %26, 1, !dbg !991
  %and94 = and i64 %sub93, 70368744177664, !dbg !991
  %tobool95 = icmp ne i64 %and94, 0, !dbg !991
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !991

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !991

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub98 = sub i64 %27, 1, !dbg !991
  %and99 = and i64 %sub98, 35184372088832, !dbg !991
  %tobool100 = icmp ne i64 %and99, 0, !dbg !991
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !991

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !991

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub103 = sub i64 %28, 1, !dbg !991
  %and104 = and i64 %sub103, 17592186044416, !dbg !991
  %tobool105 = icmp ne i64 %and104, 0, !dbg !991
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !991

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !991

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub108 = sub i64 %29, 1, !dbg !991
  %and109 = and i64 %sub108, 8796093022208, !dbg !991
  %tobool110 = icmp ne i64 %and109, 0, !dbg !991
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !991

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !991

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub113 = sub i64 %30, 1, !dbg !991
  %and114 = and i64 %sub113, 4398046511104, !dbg !991
  %tobool115 = icmp ne i64 %and114, 0, !dbg !991
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !991

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !991

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub118 = sub i64 %31, 1, !dbg !991
  %and119 = and i64 %sub118, 2199023255552, !dbg !991
  %tobool120 = icmp ne i64 %and119, 0, !dbg !991
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !991

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !991

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub123 = sub i64 %32, 1, !dbg !991
  %and124 = and i64 %sub123, 1099511627776, !dbg !991
  %tobool125 = icmp ne i64 %and124, 0, !dbg !991
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !991

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !991

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub128 = sub i64 %33, 1, !dbg !991
  %and129 = and i64 %sub128, 549755813888, !dbg !991
  %tobool130 = icmp ne i64 %and129, 0, !dbg !991
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !991

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !991

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub133 = sub i64 %34, 1, !dbg !991
  %and134 = and i64 %sub133, 274877906944, !dbg !991
  %tobool135 = icmp ne i64 %and134, 0, !dbg !991
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !991

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !991

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub138 = sub i64 %35, 1, !dbg !991
  %and139 = and i64 %sub138, 137438953472, !dbg !991
  %tobool140 = icmp ne i64 %and139, 0, !dbg !991
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !991

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !991

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub143 = sub i64 %36, 1, !dbg !991
  %and144 = and i64 %sub143, 68719476736, !dbg !991
  %tobool145 = icmp ne i64 %and144, 0, !dbg !991
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !991

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !991

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub148 = sub i64 %37, 1, !dbg !991
  %and149 = and i64 %sub148, 34359738368, !dbg !991
  %tobool150 = icmp ne i64 %and149, 0, !dbg !991
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !991

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !991

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub153 = sub i64 %38, 1, !dbg !991
  %and154 = and i64 %sub153, 17179869184, !dbg !991
  %tobool155 = icmp ne i64 %and154, 0, !dbg !991
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !991

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !991

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub158 = sub i64 %39, 1, !dbg !991
  %and159 = and i64 %sub158, 8589934592, !dbg !991
  %tobool160 = icmp ne i64 %and159, 0, !dbg !991
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !991

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !991

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub163 = sub i64 %40, 1, !dbg !991
  %and164 = and i64 %sub163, 4294967296, !dbg !991
  %tobool165 = icmp ne i64 %and164, 0, !dbg !991
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !991

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !991

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub168 = sub i64 %41, 1, !dbg !991
  %and169 = and i64 %sub168, 2147483648, !dbg !991
  %tobool170 = icmp ne i64 %and169, 0, !dbg !991
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !991

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !991

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub173 = sub i64 %42, 1, !dbg !991
  %and174 = and i64 %sub173, 1073741824, !dbg !991
  %tobool175 = icmp ne i64 %and174, 0, !dbg !991
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !991

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !991

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub178 = sub i64 %43, 1, !dbg !991
  %and179 = and i64 %sub178, 536870912, !dbg !991
  %tobool180 = icmp ne i64 %and179, 0, !dbg !991
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !991

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !991

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub183 = sub i64 %44, 1, !dbg !991
  %and184 = and i64 %sub183, 268435456, !dbg !991
  %tobool185 = icmp ne i64 %and184, 0, !dbg !991
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !991

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !991

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub188 = sub i64 %45, 1, !dbg !991
  %and189 = and i64 %sub188, 134217728, !dbg !991
  %tobool190 = icmp ne i64 %and189, 0, !dbg !991
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !991

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !991

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub193 = sub i64 %46, 1, !dbg !991
  %and194 = and i64 %sub193, 67108864, !dbg !991
  %tobool195 = icmp ne i64 %and194, 0, !dbg !991
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !991

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !991

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub198 = sub i64 %47, 1, !dbg !991
  %and199 = and i64 %sub198, 33554432, !dbg !991
  %tobool200 = icmp ne i64 %and199, 0, !dbg !991
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !991

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !991

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub203 = sub i64 %48, 1, !dbg !991
  %and204 = and i64 %sub203, 16777216, !dbg !991
  %tobool205 = icmp ne i64 %and204, 0, !dbg !991
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !991

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !991

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub208 = sub i64 %49, 1, !dbg !991
  %and209 = and i64 %sub208, 8388608, !dbg !991
  %tobool210 = icmp ne i64 %and209, 0, !dbg !991
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !991

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !991

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub213 = sub i64 %50, 1, !dbg !991
  %and214 = and i64 %sub213, 4194304, !dbg !991
  %tobool215 = icmp ne i64 %and214, 0, !dbg !991
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !991

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !991

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub218 = sub i64 %51, 1, !dbg !991
  %and219 = and i64 %sub218, 2097152, !dbg !991
  %tobool220 = icmp ne i64 %and219, 0, !dbg !991
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !991

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !991

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub223 = sub i64 %52, 1, !dbg !991
  %and224 = and i64 %sub223, 1048576, !dbg !991
  %tobool225 = icmp ne i64 %and224, 0, !dbg !991
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !991

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !991

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub228 = sub i64 %53, 1, !dbg !991
  %and229 = and i64 %sub228, 524288, !dbg !991
  %tobool230 = icmp ne i64 %and229, 0, !dbg !991
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !991

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !991

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub233 = sub i64 %54, 1, !dbg !991
  %and234 = and i64 %sub233, 262144, !dbg !991
  %tobool235 = icmp ne i64 %and234, 0, !dbg !991
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !991

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !991

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub238 = sub i64 %55, 1, !dbg !991
  %and239 = and i64 %sub238, 131072, !dbg !991
  %tobool240 = icmp ne i64 %and239, 0, !dbg !991
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !991

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !991

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub243 = sub i64 %56, 1, !dbg !991
  %and244 = and i64 %sub243, 65536, !dbg !991
  %tobool245 = icmp ne i64 %and244, 0, !dbg !991
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !991

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !991

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub248 = sub i64 %57, 1, !dbg !991
  %and249 = and i64 %sub248, 32768, !dbg !991
  %tobool250 = icmp ne i64 %and249, 0, !dbg !991
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !991

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !991

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub253 = sub i64 %58, 1, !dbg !991
  %and254 = and i64 %sub253, 16384, !dbg !991
  %tobool255 = icmp ne i64 %and254, 0, !dbg !991
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !991

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !991

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub258 = sub i64 %59, 1, !dbg !991
  %and259 = and i64 %sub258, 8192, !dbg !991
  %tobool260 = icmp ne i64 %and259, 0, !dbg !991
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !991

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !991

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub263 = sub i64 %60, 1, !dbg !991
  %and264 = and i64 %sub263, 4096, !dbg !991
  %tobool265 = icmp ne i64 %and264, 0, !dbg !991
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !991

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !991

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub268 = sub i64 %61, 1, !dbg !991
  %and269 = and i64 %sub268, 2048, !dbg !991
  %tobool270 = icmp ne i64 %and269, 0, !dbg !991
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !991

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !991

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub273 = sub i64 %62, 1, !dbg !991
  %and274 = and i64 %sub273, 1024, !dbg !991
  %tobool275 = icmp ne i64 %and274, 0, !dbg !991
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !991

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !991

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub278 = sub i64 %63, 1, !dbg !991
  %and279 = and i64 %sub278, 512, !dbg !991
  %tobool280 = icmp ne i64 %and279, 0, !dbg !991
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !991

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !991

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub283 = sub i64 %64, 1, !dbg !991
  %and284 = and i64 %sub283, 256, !dbg !991
  %tobool285 = icmp ne i64 %and284, 0, !dbg !991
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !991

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !991

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub288 = sub i64 %65, 1, !dbg !991
  %and289 = and i64 %sub288, 128, !dbg !991
  %tobool290 = icmp ne i64 %and289, 0, !dbg !991
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !991

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !991

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub293 = sub i64 %66, 1, !dbg !991
  %and294 = and i64 %sub293, 64, !dbg !991
  %tobool295 = icmp ne i64 %and294, 0, !dbg !991
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !991

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !991

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub298 = sub i64 %67, 1, !dbg !991
  %and299 = and i64 %sub298, 32, !dbg !991
  %tobool300 = icmp ne i64 %and299, 0, !dbg !991
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !991

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !991

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub303 = sub i64 %68, 1, !dbg !991
  %and304 = and i64 %sub303, 16, !dbg !991
  %tobool305 = icmp ne i64 %and304, 0, !dbg !991
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !991

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !991

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub308 = sub i64 %69, 1, !dbg !991
  %and309 = and i64 %sub308, 8, !dbg !991
  %tobool310 = icmp ne i64 %and309, 0, !dbg !991
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !991

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !991

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub313 = sub i64 %70, 1, !dbg !991
  %and314 = and i64 %sub313, 4, !dbg !991
  %tobool315 = icmp ne i64 %and314, 0, !dbg !991
  %71 = zext i1 %tobool315 to i64, !dbg !991
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !991
  br label %cond.end, !dbg !991

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !991
  br label %cond.end317, !dbg !991

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !991
  br label %cond.end319, !dbg !991

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !991
  br label %cond.end321, !dbg !991

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !991
  br label %cond.end323, !dbg !991

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !991
  br label %cond.end325, !dbg !991

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !991
  br label %cond.end327, !dbg !991

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !991
  br label %cond.end329, !dbg !991

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !991
  br label %cond.end331, !dbg !991

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !991
  br label %cond.end333, !dbg !991

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !991
  br label %cond.end335, !dbg !991

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !991
  br label %cond.end337, !dbg !991

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !991
  br label %cond.end339, !dbg !991

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !991
  br label %cond.end341, !dbg !991

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !991
  br label %cond.end343, !dbg !991

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !991
  br label %cond.end345, !dbg !991

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !991
  br label %cond.end347, !dbg !991

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !991
  br label %cond.end349, !dbg !991

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !991
  br label %cond.end351, !dbg !991

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !991
  br label %cond.end353, !dbg !991

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !991
  br label %cond.end355, !dbg !991

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !991
  br label %cond.end357, !dbg !991

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !991
  br label %cond.end359, !dbg !991

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !991
  br label %cond.end361, !dbg !991

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !991
  br label %cond.end363, !dbg !991

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !991
  br label %cond.end365, !dbg !991

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !991
  br label %cond.end367, !dbg !991

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !991
  br label %cond.end369, !dbg !991

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !991
  br label %cond.end371, !dbg !991

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !991
  br label %cond.end373, !dbg !991

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !991
  br label %cond.end375, !dbg !991

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !991
  br label %cond.end377, !dbg !991

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !991
  br label %cond.end379, !dbg !991

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !991
  br label %cond.end381, !dbg !991

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !991
  br label %cond.end383, !dbg !991

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !991
  br label %cond.end385, !dbg !991

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !991
  br label %cond.end387, !dbg !991

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !991
  br label %cond.end389, !dbg !991

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !991
  br label %cond.end391, !dbg !991

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !991
  br label %cond.end393, !dbg !991

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !991
  br label %cond.end395, !dbg !991

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !991
  br label %cond.end397, !dbg !991

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !991
  br label %cond.end399, !dbg !991

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !991
  br label %cond.end401, !dbg !991

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !991
  br label %cond.end403, !dbg !991

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !991
  br label %cond.end405, !dbg !991

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !991
  br label %cond.end407, !dbg !991

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !991
  br label %cond.end409, !dbg !991

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !991
  br label %cond.end411, !dbg !991

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !991
  br label %cond.end413, !dbg !991

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !991
  br label %cond.end415, !dbg !991

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !991
  br label %cond.end417, !dbg !991

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !991
  br label %cond.end419, !dbg !991

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !991
  br label %cond.end421, !dbg !991

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !991
  br label %cond.end423, !dbg !991

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !991
  br label %cond.end425, !dbg !991

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !991
  br label %cond.end427, !dbg !991

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !991
  br label %cond.end429, !dbg !991

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !991
  br label %cond.end431, !dbg !991

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !991
  br label %cond.end433, !dbg !991

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !991
  br label %cond.end435, !dbg !991

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !991
  br label %cond.end437, !dbg !991

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !991
  br label %cond.end440, !dbg !991

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !991

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !991
  br label %cond.end444, !dbg !991

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !991
  %sub443 = sub i64 %72, 1, !dbg !991
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !991
  br label %cond.end444, !dbg !991

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !991
  %sub446 = sub i32 %cond445, 12, !dbg !992
  %add = add i32 %sub446, 1, !dbg !993
  store i32 %add, i32* %retval, align 4, !dbg !994
  br label %return, !dbg !994

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !995
  %dec = add i64 %73, -1, !dbg !995
  store i64 %dec, i64* %size.addr, align 8, !dbg !995
  %74 = load i64, i64* %size.addr, align 8, !dbg !996
  %shr = lshr i64 %74, 12, !dbg !996
  store i64 %shr, i64* %size.addr, align 8, !dbg !996
  %75 = load i64, i64* %size.addr, align 8, !dbg !997
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !974
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !998
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !999
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !998, !srcloc !1000
  store i32 %78, i32* %bitpos.i, align 4, !dbg !998
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1001
  %add.i = add i32 %79, 1, !dbg !1002
  store i32 %add.i, i32* %retval, align 4, !dbg !1003
  br label %return, !dbg !1003

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1004
  ret i32 %80, !dbg !1004
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1005 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !964, metadata !DIExpression()), !dbg !1010
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !973, metadata !DIExpression()), !dbg !1012
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  %0 = load i64, i64* %n.addr, align 8, !dbg !1015
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1012
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1016
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1017
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1016, !srcloc !1000
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1016
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1018
  %add.i = add i32 %4, 1, !dbg !1019
  %sub = sub i32 %add.i, 1, !dbg !1020
  ret i32 %sub, !dbg !1021
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1022 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1036
  ret i8* %0, !dbg !1037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1038 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1039, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1042, metadata !DIExpression()), !dbg !1041
  %0 = load i64, i64* %__edi, align 8, !dbg !1041
  store i64 %0, i64* %__edi, align 8, !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1043, metadata !DIExpression()), !dbg !1041
  %1 = load i64, i64* %__esi, align 8, !dbg !1041
  store i64 %1, i64* %__esi, align 8, !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1044, metadata !DIExpression()), !dbg !1041
  %2 = load i64, i64* %__edx, align 8, !dbg !1041
  store i64 %2, i64* %__edx, align 8, !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1045, metadata !DIExpression()), !dbg !1041
  %3 = load i64, i64* %__ecx, align 8, !dbg !1041
  store i64 %3, i64* %__ecx, align 8, !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1046, metadata !DIExpression()), !dbg !1041
  %4 = load i64, i64* %__eax, align 8, !dbg !1041
  store i64 %4, i64* %__eax, align 8, !dbg !1041
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1041
  %6 = call i64 @llvm.read_register.i64(metadata !82), !dbg !1047
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1047, !srcloc !1050
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1047
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1047
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1047
  call void @llvm.write_register.i64(metadata !82, i64 %asmresult1), !dbg !1047
  %8 = load i64, i64* %__eax, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1051, metadata !DIExpression()), !dbg !1053
  store i64 -1, i64* %__mask, align 8, !dbg !1053
  %9 = load i64, i64* %__mask, align 8, !dbg !1053
  store i64 %9, i64* %tmp, align 8, !dbg !1053
  %10 = load i64, i64* %tmp, align 8, !dbg !1053
  %and = and i64 %8, %10, !dbg !1047
  store i64 %and, i64* %__ret, align 8, !dbg !1047
  %11 = load i64, i64* %__ret, align 8, !dbg !1041
  store i64 %11, i64* %tmp2, align 8, !dbg !1054
  %12 = load i64, i64* %tmp2, align 8, !dbg !1041
  ret i64 %12, !dbg !1055
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1056 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1057, metadata !DIExpression()), !dbg !1059
  %0 = load i64, i64* %__edi, align 8, !dbg !1059
  store i64 %0, i64* %__edi, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1060, metadata !DIExpression()), !dbg !1059
  %1 = load i64, i64* %__esi, align 8, !dbg !1059
  store i64 %1, i64* %__esi, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1061, metadata !DIExpression()), !dbg !1059
  %2 = load i64, i64* %__edx, align 8, !dbg !1059
  store i64 %2, i64* %__edx, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1062, metadata !DIExpression()), !dbg !1059
  %3 = load i64, i64* %__ecx, align 8, !dbg !1059
  store i64 %3, i64* %__ecx, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1063, metadata !DIExpression()), !dbg !1059
  %4 = load i64, i64* %__eax, align 8, !dbg !1059
  store i64 %4, i64* %__eax, align 8, !dbg !1059
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1059
  %6 = call i64 @llvm.read_register.i64(metadata !82), !dbg !1059
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !1059, !srcloc !1064
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1059
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1059
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1059
  call void @llvm.write_register.i64(metadata !82, i64 %asmresult1), !dbg !1059
  ret void, !dbg !1065
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1066 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1075
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1077
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1078
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !1079
  br i1 %call, label %if.end, label %if.then, !dbg !1080

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1081

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1082
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1083
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !1084
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !1085
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1086
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1087
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !1088
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !1089
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1090
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1091
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1092
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !1093
  br label %do.body, !dbg !1094

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1095

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1097

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1095

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1099
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1099
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1099
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1099
  br label %do.end7, !dbg !1099

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1095

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1102 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1107, metadata !DIExpression()), !dbg !1108
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  ret i1 true, !dbg !1113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !1114 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1117
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !1119
  br i1 %call, label %if.end, label %if.then, !dbg !1120

if.then:                                          ; preds = %entry
  br label %return, !dbg !1121

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1122
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1123
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1123
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1124
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1125
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1125
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !1126
  br label %return, !dbg !1127

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !1128 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1131, metadata !DIExpression()), !dbg !1132
  ret i1 true, !dbg !1133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1134 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1135, metadata !DIExpression()), !dbg !1136
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1137, metadata !DIExpression()), !dbg !1138
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1139
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1140
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1141
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !1142
  br label %do.body, !dbg !1143

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1144

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1146

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1144

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1148
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1148
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1148
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !1148
  br label %do.end5, !dbg !1148

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1144

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1150
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 36, type: !80, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/isdn/mISDN/clock.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!18 = !{!19, !21, !22, !23, !30}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !20, line: 148, baseType: !7)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !20, line: 178, size: 128, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !20, line: 179, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !26, file: !20, line: 179, baseType: !25, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mISDNclock", file: !32, line: 527, size: 832, elements: !33)
!32 = !DIFile(filename: "./include/linux/mISDNif.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !40, !42, !47}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !31, file: !32, line: 528, baseType: !26, size: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !32, line: 529, baseType: !36, size: 512, offset: 128)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pri", scope: !31, file: !32, line: 530, baseType: !41, size: 32, offset: 640)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !31, file: !32, line: 531, baseType: !43, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockctl_func_t", file: !32, line: 525, baseType: !45)
!45 = !DISubroutineType(types: !46)
!46 = !{!41, !21, !41}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !31, file: !32, line: 532, baseType: !21, size: 64, offset: 768)
!48 = !{!0, !49, !56, !63, !65, !67, !78}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "iclock_count", scope: !2, file: !3, line: 39, type: !51, isLocal: true, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !52, line: 19, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !54, line: 24, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "iclock_timestamp", scope: !2, file: !3, line: 40, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !52, line: 22, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !54, line: 30, baseType: !62)
!62 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "iclock_timestamp_valid", scope: !2, file: !3, line: 41, type: !41, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "iclock_current", scope: !2, file: !3, line: 42, type: !30, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "iclock_lock", scope: !2, file: !3, line: 38, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !70, line: 20, baseType: !71)
!70 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 11, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !71, file: !70, line: 12, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !75, line: 33, baseType: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 31, elements: !77)
!77 = !{}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "iclock_list", scope: !2, file: !3, line: 37, type: !26, isLocal: true, isDefinition: true)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !20, line: 81, baseType: !7)
!82 = !{!"rsp"}
!83 = !{i32 7, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"Code Model", i32 2}
!87 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!88 = distinct !DISubprogram(name: "mISDN_init_clock", scope: !3, file: !3, line: 45, type: !89, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !80}
!91 = !DILocalVariable(name: "dp", arg: 1, scope: !88, file: !3, line: 45, type: !80)
!92 = !DILocation(line: 45, column: 25, scope: !88)
!93 = !DILocation(line: 47, column: 10, scope: !88)
!94 = !DILocation(line: 47, column: 8, scope: !88)
!95 = !DILocation(line: 48, column: 21, scope: !88)
!96 = !DILocation(line: 48, column: 19, scope: !88)
!97 = !DILocation(line: 49, column: 1, scope: !88)
!98 = distinct !DISubprogram(name: "mISDN_register_clock", scope: !3, file: !3, line: 87, type: !99, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!99 = !DISubroutineType(types: !100)
!100 = !{!30, !101, !41, !43, !21}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!102 = !DILocalVariable(name: "name", arg: 1, scope: !98, file: !3, line: 87, type: !101)
!103 = !DILocation(line: 87, column: 29, scope: !98)
!104 = !DILocalVariable(name: "pri", arg: 2, scope: !98, file: !3, line: 87, type: !41)
!105 = !DILocation(line: 87, column: 39, scope: !98)
!106 = !DILocalVariable(name: "ctl", arg: 3, scope: !98, file: !3, line: 87, type: !43)
!107 = !DILocation(line: 87, column: 61, scope: !98)
!108 = !DILocalVariable(name: "priv", arg: 4, scope: !98, file: !3, line: 87, type: !21)
!109 = !DILocation(line: 87, column: 72, scope: !98)
!110 = !DILocalVariable(name: "flags", scope: !98, file: !3, line: 89, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !20, line: 82, baseType: !22)
!112 = !DILocation(line: 89, column: 11, scope: !98)
!113 = !DILocalVariable(name: "iclock", scope: !98, file: !3, line: 90, type: !30)
!114 = !DILocation(line: 90, column: 21, scope: !98)
!115 = !DILocation(line: 92, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !98, file: !3, line: 92, column: 6)
!117 = !DILocation(line: 92, column: 6, scope: !116)
!118 = !DILocation(line: 92, column: 13, scope: !116)
!119 = !DILocation(line: 92, column: 6, scope: !98)
!120 = !DILocation(line: 93, column: 46, scope: !116)
!121 = !DILocation(line: 93, column: 52, scope: !116)
!122 = !DILocation(line: 93, column: 3, scope: !116)
!123 = !DILocation(line: 94, column: 11, scope: !98)
!124 = !DILocation(line: 94, column: 9, scope: !98)
!125 = !DILocation(line: 95, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !98, file: !3, line: 95, column: 6)
!127 = !DILocation(line: 95, column: 6, scope: !98)
!128 = !DILocation(line: 96, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 95, column: 15)
!130 = !DILocation(line: 97, column: 3, scope: !129)
!131 = !DILocation(line: 99, column: 10, scope: !98)
!132 = !DILocation(line: 99, column: 18, scope: !98)
!133 = !DILocation(line: 99, column: 24, scope: !98)
!134 = !DILocation(line: 99, column: 2, scope: !98)
!135 = !DILocation(line: 100, column: 16, scope: !98)
!136 = !DILocation(line: 100, column: 2, scope: !98)
!137 = !DILocation(line: 100, column: 10, scope: !98)
!138 = !DILocation(line: 100, column: 14, scope: !98)
!139 = !DILocation(line: 101, column: 17, scope: !98)
!140 = !DILocation(line: 101, column: 2, scope: !98)
!141 = !DILocation(line: 101, column: 10, scope: !98)
!142 = !DILocation(line: 101, column: 15, scope: !98)
!143 = !DILocation(line: 102, column: 16, scope: !98)
!144 = !DILocation(line: 102, column: 2, scope: !98)
!145 = !DILocation(line: 102, column: 10, scope: !98)
!146 = !DILocation(line: 102, column: 14, scope: !98)
!147 = !DILocation(line: 103, column: 2, scope: !98)
!148 = !DILocalVariable(name: "__dummy", scope: !149, file: !3, line: 103, type: !22)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 103, column: 2)
!150 = distinct !DILexicalBlock(scope: !98, file: !3, line: 103, column: 2)
!151 = !DILocation(line: 103, column: 2, scope: !149)
!152 = !DILocalVariable(name: "__dummy2", scope: !149, file: !3, line: 103, type: !111)
!153 = !DILocation(line: 103, column: 2, scope: !150)
!154 = !DILocation(line: 103, column: 2, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 103, column: 2)
!156 = !DILocation(line: 103, column: 2, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !3, line: 103, column: 2)
!158 = !DILocalVariable(name: "__dummy", scope: !159, file: !3, line: 103, type: !22)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 103, column: 2)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 103, column: 2)
!161 = !DILocation(line: 103, column: 2, scope: !159)
!162 = !DILocalVariable(name: "__dummy2", scope: !159, file: !3, line: 103, type: !111)
!163 = !DILocation(line: 103, column: 2, scope: !160)
!164 = !DILocation(line: 103, column: 2, scope: !165)
!165 = distinct !DILexicalBlock(scope: !155, file: !3, line: 103, column: 2)
!166 = !{i32 -2138694134}
!167 = !DILocation(line: 103, column: 2, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 103, column: 2)
!169 = !DILocation(line: 104, column: 17, scope: !98)
!170 = !DILocation(line: 104, column: 25, scope: !98)
!171 = !DILocation(line: 104, column: 2, scope: !98)
!172 = !DILocation(line: 105, column: 2, scope: !98)
!173 = !DILocation(line: 106, column: 2, scope: !98)
!174 = !DILocalVariable(name: "__dummy", scope: !175, file: !3, line: 106, type: !22)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 106, column: 2)
!176 = distinct !DILexicalBlock(scope: !98, file: !3, line: 106, column: 2)
!177 = !DILocation(line: 106, column: 2, scope: !175)
!178 = !DILocalVariable(name: "__dummy2", scope: !175, file: !3, line: 106, type: !111)
!179 = !DILocation(line: 106, column: 2, scope: !176)
!180 = !DILocation(line: 106, column: 2, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !3, line: 106, column: 2)
!182 = !DILocation(line: 106, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !3, line: 106, column: 2)
!184 = !DILocalVariable(name: "__dummy", scope: !185, file: !3, line: 106, type: !22)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 106, column: 2)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 106, column: 2)
!187 = !DILocation(line: 106, column: 2, scope: !185)
!188 = !DILocalVariable(name: "__dummy2", scope: !185, file: !3, line: 106, type: !111)
!189 = !DILocation(line: 106, column: 2, scope: !186)
!190 = !DILocation(line: 106, column: 2, scope: !191)
!191 = distinct !DILexicalBlock(scope: !181, file: !3, line: 106, column: 2)
!192 = !{i32 -2138693298}
!193 = !DILocation(line: 106, column: 2, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 106, column: 2)
!195 = !DILocation(line: 107, column: 9, scope: !98)
!196 = !DILocation(line: 107, column: 2, scope: !98)
!197 = !DILocation(line: 108, column: 1, scope: !98)
!198 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !199, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!199 = !DISubroutineType(types: !200)
!200 = !{!21, !201, !19}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 55, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !203, line: 72, baseType: !204)
!203 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !203, line: 16, baseType: !22)
!205 = !DILocalVariable(name: "s", arg: 1, scope: !206, file: !6, line: 445, type: !209)
!206 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !207, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!207 = !DISubroutineType(types: !208)
!208 = !{!21, !209, !19, !201}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !211, line: 117, flags: DIFlagFwdDecl)
!211 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DILocation(line: 445, column: 72, scope: !206, inlinedAt: !213)
!213 = distinct !DILocation(line: 552, column: 10, scope: !214, inlinedAt: !217)
!214 = distinct !DILexicalBlock(scope: !215, file: !6, line: 540, column: 34)
!215 = distinct !DILexicalBlock(scope: !216, file: !6, line: 540, column: 6)
!216 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !199, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!217 = distinct !DILocation(line: 664, column: 9, scope: !198)
!218 = !DILocalVariable(name: "flags", arg: 2, scope: !206, file: !6, line: 446, type: !19)
!219 = !DILocation(line: 446, column: 9, scope: !206, inlinedAt: !213)
!220 = !DILocalVariable(name: "size", arg: 3, scope: !206, file: !6, line: 446, type: !201)
!221 = !DILocation(line: 446, column: 23, scope: !206, inlinedAt: !213)
!222 = !DILocalVariable(name: "ret", scope: !206, file: !6, line: 448, type: !21)
!223 = !DILocation(line: 448, column: 8, scope: !206, inlinedAt: !213)
!224 = !DILocalVariable(name: "flags", arg: 1, scope: !225, file: !6, line: 318, type: !19)
!225 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !226, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!226 = !DISubroutineType(types: !227)
!227 = !{!5, !19}
!228 = !DILocation(line: 318, column: 67, scope: !225, inlinedAt: !229)
!229 = distinct !DILocation(line: 553, column: 20, scope: !214, inlinedAt: !217)
!230 = !DILocalVariable(name: "size", arg: 1, scope: !231, file: !6, line: 346, type: !201)
!231 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !232, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!232 = !DISubroutineType(types: !233)
!233 = !{!7, !201}
!234 = !DILocation(line: 346, column: 58, scope: !231, inlinedAt: !235)
!235 = distinct !DILocation(line: 547, column: 11, scope: !214, inlinedAt: !217)
!236 = !DILocalVariable(name: "size", arg: 1, scope: !237, file: !6, line: 472, type: !201)
!237 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !238, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!238 = !DISubroutineType(types: !239)
!239 = !{!21, !201, !19, !7}
!240 = !DILocation(line: 472, column: 28, scope: !237, inlinedAt: !241)
!241 = distinct !DILocation(line: 481, column: 9, scope: !242, inlinedAt: !243)
!242 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !199, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!243 = distinct !DILocation(line: 545, column: 11, scope: !244, inlinedAt: !217)
!244 = distinct !DILexicalBlock(scope: !214, file: !6, line: 544, column: 7)
!245 = !DILocalVariable(name: "flags", arg: 2, scope: !237, file: !6, line: 472, type: !19)
!246 = !DILocation(line: 472, column: 40, scope: !237, inlinedAt: !241)
!247 = !DILocalVariable(name: "order", arg: 3, scope: !237, file: !6, line: 472, type: !7)
!248 = !DILocation(line: 472, column: 60, scope: !237, inlinedAt: !241)
!249 = !DILocalVariable(name: "size", arg: 1, scope: !242, file: !6, line: 478, type: !201)
!250 = !DILocation(line: 478, column: 51, scope: !242, inlinedAt: !243)
!251 = !DILocalVariable(name: "flags", arg: 2, scope: !242, file: !6, line: 478, type: !19)
!252 = !DILocation(line: 478, column: 63, scope: !242, inlinedAt: !243)
!253 = !DILocalVariable(name: "order", scope: !242, file: !6, line: 480, type: !7)
!254 = !DILocation(line: 480, column: 15, scope: !242, inlinedAt: !243)
!255 = !DILocalVariable(name: "size", arg: 1, scope: !216, file: !6, line: 538, type: !201)
!256 = !DILocation(line: 538, column: 45, scope: !216, inlinedAt: !217)
!257 = !DILocalVariable(name: "flags", arg: 2, scope: !216, file: !6, line: 538, type: !19)
!258 = !DILocation(line: 538, column: 57, scope: !216, inlinedAt: !217)
!259 = !DILocalVariable(name: "index", scope: !214, file: !6, line: 542, type: !7)
!260 = !DILocation(line: 542, column: 16, scope: !214, inlinedAt: !217)
!261 = !DILocalVariable(name: "size", arg: 1, scope: !198, file: !6, line: 662, type: !201)
!262 = !DILocation(line: 662, column: 36, scope: !198)
!263 = !DILocalVariable(name: "flags", arg: 2, scope: !198, file: !6, line: 662, type: !19)
!264 = !DILocation(line: 662, column: 48, scope: !198)
!265 = !DILocation(line: 664, column: 17, scope: !198)
!266 = !DILocation(line: 664, column: 23, scope: !198)
!267 = !DILocation(line: 664, column: 29, scope: !198)
!268 = !DILocation(line: 540, column: 27, scope: !215, inlinedAt: !217)
!269 = !DILocation(line: 540, column: 6, scope: !215, inlinedAt: !217)
!270 = !DILocation(line: 540, column: 6, scope: !216, inlinedAt: !217)
!271 = !DILocation(line: 544, column: 7, scope: !244, inlinedAt: !217)
!272 = !DILocation(line: 544, column: 12, scope: !244, inlinedAt: !217)
!273 = !DILocation(line: 544, column: 7, scope: !214, inlinedAt: !217)
!274 = !DILocation(line: 545, column: 25, scope: !244, inlinedAt: !217)
!275 = !DILocation(line: 545, column: 31, scope: !244, inlinedAt: !217)
!276 = !DILocation(line: 480, column: 33, scope: !242, inlinedAt: !243)
!277 = !DILocation(line: 480, column: 23, scope: !242, inlinedAt: !243)
!278 = !DILocation(line: 481, column: 29, scope: !242, inlinedAt: !243)
!279 = !DILocation(line: 481, column: 35, scope: !242, inlinedAt: !243)
!280 = !DILocation(line: 481, column: 42, scope: !242, inlinedAt: !243)
!281 = !DILocation(line: 474, column: 23, scope: !237, inlinedAt: !241)
!282 = !DILocation(line: 474, column: 29, scope: !237, inlinedAt: !241)
!283 = !DILocation(line: 474, column: 36, scope: !237, inlinedAt: !241)
!284 = !DILocation(line: 474, column: 9, scope: !237, inlinedAt: !241)
!285 = !DILocation(line: 545, column: 4, scope: !244, inlinedAt: !217)
!286 = !DILocation(line: 547, column: 25, scope: !214, inlinedAt: !217)
!287 = !DILocation(line: 348, column: 7, scope: !288, inlinedAt: !235)
!288 = distinct !DILexicalBlock(scope: !231, file: !6, line: 348, column: 6)
!289 = !DILocation(line: 348, column: 6, scope: !231, inlinedAt: !235)
!290 = !DILocation(line: 349, column: 3, scope: !288, inlinedAt: !235)
!291 = !DILocation(line: 351, column: 6, scope: !292, inlinedAt: !235)
!292 = distinct !DILexicalBlock(scope: !231, file: !6, line: 351, column: 6)
!293 = !DILocation(line: 351, column: 11, scope: !292, inlinedAt: !235)
!294 = !DILocation(line: 351, column: 6, scope: !231, inlinedAt: !235)
!295 = !DILocation(line: 352, column: 3, scope: !292, inlinedAt: !235)
!296 = !DILocation(line: 354, column: 32, scope: !297, inlinedAt: !235)
!297 = distinct !DILexicalBlock(scope: !231, file: !6, line: 354, column: 6)
!298 = !DILocation(line: 354, column: 37, scope: !297, inlinedAt: !235)
!299 = !DILocation(line: 354, column: 42, scope: !297, inlinedAt: !235)
!300 = !DILocation(line: 354, column: 45, scope: !297, inlinedAt: !235)
!301 = !DILocation(line: 354, column: 50, scope: !297, inlinedAt: !235)
!302 = !DILocation(line: 354, column: 6, scope: !231, inlinedAt: !235)
!303 = !DILocation(line: 355, column: 3, scope: !297, inlinedAt: !235)
!304 = !DILocation(line: 356, column: 32, scope: !305, inlinedAt: !235)
!305 = distinct !DILexicalBlock(scope: !231, file: !6, line: 356, column: 6)
!306 = !DILocation(line: 356, column: 37, scope: !305, inlinedAt: !235)
!307 = !DILocation(line: 356, column: 43, scope: !305, inlinedAt: !235)
!308 = !DILocation(line: 356, column: 46, scope: !305, inlinedAt: !235)
!309 = !DILocation(line: 356, column: 51, scope: !305, inlinedAt: !235)
!310 = !DILocation(line: 356, column: 6, scope: !231, inlinedAt: !235)
!311 = !DILocation(line: 357, column: 3, scope: !305, inlinedAt: !235)
!312 = !DILocation(line: 358, column: 6, scope: !313, inlinedAt: !235)
!313 = distinct !DILexicalBlock(scope: !231, file: !6, line: 358, column: 6)
!314 = !DILocation(line: 358, column: 11, scope: !313, inlinedAt: !235)
!315 = !DILocation(line: 358, column: 6, scope: !231, inlinedAt: !235)
!316 = !DILocation(line: 358, column: 26, scope: !313, inlinedAt: !235)
!317 = !DILocation(line: 359, column: 6, scope: !318, inlinedAt: !235)
!318 = distinct !DILexicalBlock(scope: !231, file: !6, line: 359, column: 6)
!319 = !DILocation(line: 359, column: 11, scope: !318, inlinedAt: !235)
!320 = !DILocation(line: 359, column: 6, scope: !231, inlinedAt: !235)
!321 = !DILocation(line: 359, column: 26, scope: !318, inlinedAt: !235)
!322 = !DILocation(line: 360, column: 6, scope: !323, inlinedAt: !235)
!323 = distinct !DILexicalBlock(scope: !231, file: !6, line: 360, column: 6)
!324 = !DILocation(line: 360, column: 11, scope: !323, inlinedAt: !235)
!325 = !DILocation(line: 360, column: 6, scope: !231, inlinedAt: !235)
!326 = !DILocation(line: 360, column: 26, scope: !323, inlinedAt: !235)
!327 = !DILocation(line: 361, column: 6, scope: !328, inlinedAt: !235)
!328 = distinct !DILexicalBlock(scope: !231, file: !6, line: 361, column: 6)
!329 = !DILocation(line: 361, column: 11, scope: !328, inlinedAt: !235)
!330 = !DILocation(line: 361, column: 6, scope: !231, inlinedAt: !235)
!331 = !DILocation(line: 361, column: 26, scope: !328, inlinedAt: !235)
!332 = !DILocation(line: 362, column: 6, scope: !333, inlinedAt: !235)
!333 = distinct !DILexicalBlock(scope: !231, file: !6, line: 362, column: 6)
!334 = !DILocation(line: 362, column: 11, scope: !333, inlinedAt: !235)
!335 = !DILocation(line: 362, column: 6, scope: !231, inlinedAt: !235)
!336 = !DILocation(line: 362, column: 26, scope: !333, inlinedAt: !235)
!337 = !DILocation(line: 363, column: 6, scope: !338, inlinedAt: !235)
!338 = distinct !DILexicalBlock(scope: !231, file: !6, line: 363, column: 6)
!339 = !DILocation(line: 363, column: 11, scope: !338, inlinedAt: !235)
!340 = !DILocation(line: 363, column: 6, scope: !231, inlinedAt: !235)
!341 = !DILocation(line: 363, column: 26, scope: !338, inlinedAt: !235)
!342 = !DILocation(line: 364, column: 6, scope: !343, inlinedAt: !235)
!343 = distinct !DILexicalBlock(scope: !231, file: !6, line: 364, column: 6)
!344 = !DILocation(line: 364, column: 11, scope: !343, inlinedAt: !235)
!345 = !DILocation(line: 364, column: 6, scope: !231, inlinedAt: !235)
!346 = !DILocation(line: 364, column: 26, scope: !343, inlinedAt: !235)
!347 = !DILocation(line: 365, column: 6, scope: !348, inlinedAt: !235)
!348 = distinct !DILexicalBlock(scope: !231, file: !6, line: 365, column: 6)
!349 = !DILocation(line: 365, column: 11, scope: !348, inlinedAt: !235)
!350 = !DILocation(line: 365, column: 6, scope: !231, inlinedAt: !235)
!351 = !DILocation(line: 365, column: 26, scope: !348, inlinedAt: !235)
!352 = !DILocation(line: 366, column: 6, scope: !353, inlinedAt: !235)
!353 = distinct !DILexicalBlock(scope: !231, file: !6, line: 366, column: 6)
!354 = !DILocation(line: 366, column: 11, scope: !353, inlinedAt: !235)
!355 = !DILocation(line: 366, column: 6, scope: !231, inlinedAt: !235)
!356 = !DILocation(line: 366, column: 26, scope: !353, inlinedAt: !235)
!357 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !235)
!358 = distinct !DILexicalBlock(scope: !231, file: !6, line: 367, column: 6)
!359 = !DILocation(line: 367, column: 11, scope: !358, inlinedAt: !235)
!360 = !DILocation(line: 367, column: 6, scope: !231, inlinedAt: !235)
!361 = !DILocation(line: 367, column: 26, scope: !358, inlinedAt: !235)
!362 = !DILocation(line: 368, column: 6, scope: !363, inlinedAt: !235)
!363 = distinct !DILexicalBlock(scope: !231, file: !6, line: 368, column: 6)
!364 = !DILocation(line: 368, column: 11, scope: !363, inlinedAt: !235)
!365 = !DILocation(line: 368, column: 6, scope: !231, inlinedAt: !235)
!366 = !DILocation(line: 368, column: 26, scope: !363, inlinedAt: !235)
!367 = !DILocation(line: 369, column: 6, scope: !368, inlinedAt: !235)
!368 = distinct !DILexicalBlock(scope: !231, file: !6, line: 369, column: 6)
!369 = !DILocation(line: 369, column: 11, scope: !368, inlinedAt: !235)
!370 = !DILocation(line: 369, column: 6, scope: !231, inlinedAt: !235)
!371 = !DILocation(line: 369, column: 26, scope: !368, inlinedAt: !235)
!372 = !DILocation(line: 370, column: 6, scope: !373, inlinedAt: !235)
!373 = distinct !DILexicalBlock(scope: !231, file: !6, line: 370, column: 6)
!374 = !DILocation(line: 370, column: 11, scope: !373, inlinedAt: !235)
!375 = !DILocation(line: 370, column: 6, scope: !231, inlinedAt: !235)
!376 = !DILocation(line: 370, column: 26, scope: !373, inlinedAt: !235)
!377 = !DILocation(line: 371, column: 6, scope: !378, inlinedAt: !235)
!378 = distinct !DILexicalBlock(scope: !231, file: !6, line: 371, column: 6)
!379 = !DILocation(line: 371, column: 11, scope: !378, inlinedAt: !235)
!380 = !DILocation(line: 371, column: 6, scope: !231, inlinedAt: !235)
!381 = !DILocation(line: 371, column: 26, scope: !378, inlinedAt: !235)
!382 = !DILocation(line: 372, column: 6, scope: !383, inlinedAt: !235)
!383 = distinct !DILexicalBlock(scope: !231, file: !6, line: 372, column: 6)
!384 = !DILocation(line: 372, column: 11, scope: !383, inlinedAt: !235)
!385 = !DILocation(line: 372, column: 6, scope: !231, inlinedAt: !235)
!386 = !DILocation(line: 372, column: 26, scope: !383, inlinedAt: !235)
!387 = !DILocation(line: 373, column: 6, scope: !388, inlinedAt: !235)
!388 = distinct !DILexicalBlock(scope: !231, file: !6, line: 373, column: 6)
!389 = !DILocation(line: 373, column: 11, scope: !388, inlinedAt: !235)
!390 = !DILocation(line: 373, column: 6, scope: !231, inlinedAt: !235)
!391 = !DILocation(line: 373, column: 26, scope: !388, inlinedAt: !235)
!392 = !DILocation(line: 374, column: 6, scope: !393, inlinedAt: !235)
!393 = distinct !DILexicalBlock(scope: !231, file: !6, line: 374, column: 6)
!394 = !DILocation(line: 374, column: 11, scope: !393, inlinedAt: !235)
!395 = !DILocation(line: 374, column: 6, scope: !231, inlinedAt: !235)
!396 = !DILocation(line: 374, column: 26, scope: !393, inlinedAt: !235)
!397 = !DILocation(line: 375, column: 6, scope: !398, inlinedAt: !235)
!398 = distinct !DILexicalBlock(scope: !231, file: !6, line: 375, column: 6)
!399 = !DILocation(line: 375, column: 11, scope: !398, inlinedAt: !235)
!400 = !DILocation(line: 375, column: 6, scope: !231, inlinedAt: !235)
!401 = !DILocation(line: 375, column: 27, scope: !398, inlinedAt: !235)
!402 = !DILocation(line: 376, column: 6, scope: !403, inlinedAt: !235)
!403 = distinct !DILexicalBlock(scope: !231, file: !6, line: 376, column: 6)
!404 = !DILocation(line: 376, column: 11, scope: !403, inlinedAt: !235)
!405 = !DILocation(line: 376, column: 6, scope: !231, inlinedAt: !235)
!406 = !DILocation(line: 376, column: 32, scope: !403, inlinedAt: !235)
!407 = !DILocation(line: 377, column: 6, scope: !408, inlinedAt: !235)
!408 = distinct !DILexicalBlock(scope: !231, file: !6, line: 377, column: 6)
!409 = !DILocation(line: 377, column: 11, scope: !408, inlinedAt: !235)
!410 = !DILocation(line: 377, column: 6, scope: !231, inlinedAt: !235)
!411 = !DILocation(line: 377, column: 32, scope: !408, inlinedAt: !235)
!412 = !DILocation(line: 378, column: 6, scope: !413, inlinedAt: !235)
!413 = distinct !DILexicalBlock(scope: !231, file: !6, line: 378, column: 6)
!414 = !DILocation(line: 378, column: 11, scope: !413, inlinedAt: !235)
!415 = !DILocation(line: 378, column: 6, scope: !231, inlinedAt: !235)
!416 = !DILocation(line: 378, column: 32, scope: !413, inlinedAt: !235)
!417 = !DILocation(line: 379, column: 6, scope: !418, inlinedAt: !235)
!418 = distinct !DILexicalBlock(scope: !231, file: !6, line: 379, column: 6)
!419 = !DILocation(line: 379, column: 11, scope: !418, inlinedAt: !235)
!420 = !DILocation(line: 379, column: 6, scope: !231, inlinedAt: !235)
!421 = !DILocation(line: 379, column: 33, scope: !418, inlinedAt: !235)
!422 = !DILocation(line: 380, column: 6, scope: !423, inlinedAt: !235)
!423 = distinct !DILexicalBlock(scope: !231, file: !6, line: 380, column: 6)
!424 = !DILocation(line: 380, column: 11, scope: !423, inlinedAt: !235)
!425 = !DILocation(line: 380, column: 6, scope: !231, inlinedAt: !235)
!426 = !DILocation(line: 380, column: 33, scope: !423, inlinedAt: !235)
!427 = !DILocation(line: 381, column: 6, scope: !428, inlinedAt: !235)
!428 = distinct !DILexicalBlock(scope: !231, file: !6, line: 381, column: 6)
!429 = !DILocation(line: 381, column: 11, scope: !428, inlinedAt: !235)
!430 = !DILocation(line: 381, column: 6, scope: !231, inlinedAt: !235)
!431 = !DILocation(line: 381, column: 33, scope: !428, inlinedAt: !235)
!432 = !DILocation(line: 382, column: 2, scope: !433, inlinedAt: !235)
!433 = distinct !DILexicalBlock(scope: !434, file: !6, line: 382, column: 2)
!434 = distinct !DILexicalBlock(scope: !231, file: !6, line: 382, column: 2)
!435 = !{i32 -2144649500, i32 -2144649471, i32 -2144649425, i32 -2144649367, i32 -2144649313, i32 -2144649259, i32 -2144649204, i32 -2144649173}
!436 = !DILocation(line: 382, column: 2, scope: !437, inlinedAt: !235)
!437 = distinct !DILexicalBlock(scope: !438, file: !6, line: 382, column: 2)
!438 = distinct !DILexicalBlock(scope: !434, file: !6, line: 382, column: 2)
!439 = !{i32 -2144648730, i32 -2144648723, i32 -2144648669, i32 -2144648638, i32 -2144648608}
!440 = !DILocation(line: 382, column: 2, scope: !438, inlinedAt: !235)
!441 = !DILocation(line: 386, column: 1, scope: !231, inlinedAt: !235)
!442 = !DILocation(line: 547, column: 9, scope: !214, inlinedAt: !217)
!443 = !DILocation(line: 549, column: 8, scope: !444, inlinedAt: !217)
!444 = distinct !DILexicalBlock(scope: !214, file: !6, line: 549, column: 7)
!445 = !DILocation(line: 549, column: 7, scope: !214, inlinedAt: !217)
!446 = !DILocation(line: 550, column: 4, scope: !444, inlinedAt: !217)
!447 = !DILocation(line: 553, column: 33, scope: !214, inlinedAt: !217)
!448 = !DILocation(line: 325, column: 6, scope: !449, inlinedAt: !229)
!449 = distinct !DILexicalBlock(scope: !225, file: !6, line: 325, column: 6)
!450 = !DILocation(line: 325, column: 6, scope: !225, inlinedAt: !229)
!451 = !DILocation(line: 326, column: 3, scope: !449, inlinedAt: !229)
!452 = !DILocation(line: 332, column: 9, scope: !225, inlinedAt: !229)
!453 = !DILocation(line: 332, column: 15, scope: !225, inlinedAt: !229)
!454 = !DILocation(line: 332, column: 2, scope: !225, inlinedAt: !229)
!455 = !DILocation(line: 336, column: 1, scope: !225, inlinedAt: !229)
!456 = !DILocation(line: 553, column: 5, scope: !214, inlinedAt: !217)
!457 = !DILocation(line: 553, column: 41, scope: !214, inlinedAt: !217)
!458 = !DILocation(line: 554, column: 5, scope: !214, inlinedAt: !217)
!459 = !DILocation(line: 554, column: 12, scope: !214, inlinedAt: !217)
!460 = !DILocation(line: 448, column: 31, scope: !206, inlinedAt: !213)
!461 = !DILocation(line: 448, column: 34, scope: !206, inlinedAt: !213)
!462 = !DILocation(line: 448, column: 14, scope: !206, inlinedAt: !213)
!463 = !DILocation(line: 450, column: 22, scope: !206, inlinedAt: !213)
!464 = !DILocation(line: 450, column: 25, scope: !206, inlinedAt: !213)
!465 = !DILocation(line: 450, column: 30, scope: !206, inlinedAt: !213)
!466 = !DILocation(line: 450, column: 36, scope: !206, inlinedAt: !213)
!467 = !DILocation(line: 450, column: 8, scope: !206, inlinedAt: !213)
!468 = !DILocation(line: 450, column: 6, scope: !206, inlinedAt: !213)
!469 = !DILocation(line: 451, column: 9, scope: !206, inlinedAt: !213)
!470 = !DILocation(line: 552, column: 3, scope: !214, inlinedAt: !217)
!471 = !DILocation(line: 557, column: 19, scope: !216, inlinedAt: !217)
!472 = !DILocation(line: 557, column: 25, scope: !216, inlinedAt: !217)
!473 = !DILocation(line: 557, column: 9, scope: !216, inlinedAt: !217)
!474 = !DILocation(line: 557, column: 2, scope: !216, inlinedAt: !217)
!475 = !DILocation(line: 558, column: 1, scope: !216, inlinedAt: !217)
!476 = !DILocation(line: 664, column: 2, scope: !198)
!477 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !478, file: !478, line: 666, type: !479, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!478 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!479 = !DISubroutineType(types: !480)
!480 = !{!22}
!481 = !DILocalVariable(name: "f", scope: !477, file: !478, line: 668, type: !22)
!482 = !DILocation(line: 668, column: 16, scope: !477)
!483 = !DILocation(line: 670, column: 6, scope: !477)
!484 = !DILocation(line: 670, column: 4, scope: !477)
!485 = !DILocation(line: 671, column: 2, scope: !477)
!486 = !DILocation(line: 672, column: 9, scope: !477)
!487 = !DILocation(line: 672, column: 2, scope: !477)
!488 = distinct !DISubprogram(name: "list_add_tail", scope: !489, file: !489, line: 98, type: !490, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!489 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!490 = !DISubroutineType(types: !491)
!491 = !{null, !25, !25}
!492 = !DILocalVariable(name: "new", arg: 1, scope: !488, file: !489, line: 98, type: !25)
!493 = !DILocation(line: 98, column: 52, scope: !488)
!494 = !DILocalVariable(name: "head", arg: 2, scope: !488, file: !489, line: 98, type: !25)
!495 = !DILocation(line: 98, column: 75, scope: !488)
!496 = !DILocation(line: 100, column: 13, scope: !488)
!497 = !DILocation(line: 100, column: 18, scope: !488)
!498 = !DILocation(line: 100, column: 24, scope: !488)
!499 = !DILocation(line: 100, column: 30, scope: !488)
!500 = !DILocation(line: 100, column: 2, scope: !488)
!501 = !DILocation(line: 101, column: 1, scope: !488)
!502 = distinct !DISubprogram(name: "select_iclock", scope: !3, file: !3, line: 52, type: !503, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!503 = !DISubroutineType(types: !504)
!504 = !{null}
!505 = !DILocalVariable(name: "iclock", scope: !502, file: !3, line: 54, type: !30)
!506 = !DILocation(line: 54, column: 21, scope: !502)
!507 = !DILocalVariable(name: "bestclock", scope: !502, file: !3, line: 54, type: !30)
!508 = !DILocation(line: 54, column: 30, scope: !502)
!509 = !DILocalVariable(name: "lastclock", scope: !502, file: !3, line: 54, type: !30)
!510 = !DILocation(line: 54, column: 49, scope: !502)
!511 = !DILocalVariable(name: "pri", scope: !502, file: !3, line: 55, type: !41)
!512 = !DILocation(line: 55, column: 6, scope: !502)
!513 = !DILocalVariable(name: "__mptr", scope: !514, file: !3, line: 57, type: !21)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 57, column: 2)
!515 = distinct !DILexicalBlock(scope: !502, file: !3, line: 57, column: 2)
!516 = !DILocation(line: 57, column: 2, scope: !514)
!517 = !DILocation(line: 57, column: 2, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 57, column: 2)
!519 = !DILocation(line: 57, column: 2, scope: !515)
!520 = !DILocation(line: 57, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !515, file: !3, line: 57, column: 2)
!522 = !DILocation(line: 58, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 58, column: 7)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 57, column: 50)
!525 = !DILocation(line: 58, column: 15, scope: !523)
!526 = !DILocation(line: 58, column: 21, scope: !523)
!527 = !DILocation(line: 58, column: 19, scope: !523)
!528 = !DILocation(line: 58, column: 7, scope: !524)
!529 = !DILocation(line: 59, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !523, file: !3, line: 58, column: 26)
!531 = !DILocation(line: 59, column: 18, scope: !530)
!532 = !DILocation(line: 59, column: 8, scope: !530)
!533 = !DILocation(line: 60, column: 16, scope: !530)
!534 = !DILocation(line: 60, column: 14, scope: !530)
!535 = !DILocation(line: 61, column: 3, scope: !530)
!536 = !DILocation(line: 62, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !524, file: !3, line: 62, column: 7)
!538 = !DILocation(line: 62, column: 25, scope: !537)
!539 = !DILocation(line: 62, column: 22, scope: !537)
!540 = !DILocation(line: 62, column: 7, scope: !524)
!541 = !DILocation(line: 63, column: 16, scope: !537)
!542 = !DILocation(line: 63, column: 14, scope: !537)
!543 = !DILocation(line: 63, column: 4, scope: !537)
!544 = !DILocation(line: 64, column: 2, scope: !524)
!545 = !DILocalVariable(name: "__mptr", scope: !546, file: !3, line: 57, type: !21)
!546 = distinct !DILexicalBlock(scope: !521, file: !3, line: 57, column: 2)
!547 = !DILocation(line: 57, column: 2, scope: !546)
!548 = !DILocation(line: 57, column: 2, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 57, column: 2)
!550 = distinct !{!550, !519, !551}
!551 = !DILocation(line: 64, column: 2, scope: !515)
!552 = !DILocation(line: 65, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !502, file: !3, line: 65, column: 6)
!554 = !DILocation(line: 65, column: 16, scope: !553)
!555 = !DILocation(line: 65, column: 19, scope: !553)
!556 = !DILocation(line: 65, column: 32, scope: !553)
!557 = !DILocation(line: 65, column: 29, scope: !553)
!558 = !DILocation(line: 65, column: 6, scope: !502)
!559 = !DILocation(line: 67, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 67, column: 7)
!561 = distinct !DILexicalBlock(scope: !553, file: !3, line: 65, column: 43)
!562 = !DILocation(line: 67, column: 7, scope: !560)
!563 = !DILocation(line: 67, column: 14, scope: !560)
!564 = !DILocation(line: 67, column: 7, scope: !561)
!565 = !DILocation(line: 69, column: 11, scope: !560)
!566 = !DILocation(line: 69, column: 22, scope: !560)
!567 = !DILocation(line: 68, column: 4, scope: !560)
!568 = !DILocation(line: 70, column: 3, scope: !561)
!569 = !DILocation(line: 70, column: 14, scope: !561)
!570 = !DILocation(line: 70, column: 18, scope: !561)
!571 = !DILocation(line: 70, column: 29, scope: !561)
!572 = !DILocation(line: 71, column: 2, scope: !561)
!573 = !DILocation(line: 72, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !502, file: !3, line: 72, column: 6)
!575 = !DILocation(line: 72, column: 16, scope: !574)
!576 = !DILocation(line: 72, column: 19, scope: !574)
!577 = !DILocation(line: 72, column: 32, scope: !574)
!578 = !DILocation(line: 72, column: 29, scope: !574)
!579 = !DILocation(line: 72, column: 6, scope: !502)
!580 = !DILocation(line: 74, column: 8, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 74, column: 7)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 72, column: 48)
!583 = !DILocation(line: 74, column: 7, scope: !581)
!584 = !DILocation(line: 74, column: 14, scope: !581)
!585 = !DILocation(line: 74, column: 7, scope: !582)
!586 = !DILocation(line: 76, column: 11, scope: !581)
!587 = !DILocation(line: 76, column: 22, scope: !581)
!588 = !DILocation(line: 75, column: 4, scope: !581)
!589 = !DILocation(line: 77, column: 3, scope: !582)
!590 = !DILocation(line: 77, column: 14, scope: !582)
!591 = !DILocation(line: 77, column: 18, scope: !582)
!592 = !DILocation(line: 77, column: 29, scope: !582)
!593 = !DILocation(line: 78, column: 2, scope: !582)
!594 = !DILocation(line: 79, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !502, file: !3, line: 79, column: 6)
!596 = !DILocation(line: 79, column: 19, scope: !595)
!597 = !DILocation(line: 79, column: 16, scope: !595)
!598 = !DILocation(line: 79, column: 6, scope: !502)
!599 = !DILocation(line: 81, column: 26, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 79, column: 35)
!601 = !DILocation(line: 82, column: 2, scope: !600)
!602 = !DILocation(line: 83, column: 19, scope: !502)
!603 = !DILocation(line: 83, column: 17, scope: !502)
!604 = !DILocation(line: 84, column: 1, scope: !502)
!605 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !478, file: !478, line: 651, type: !606, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !22}
!608 = !DILocalVariable(name: "f", arg: 1, scope: !605, file: !478, line: 651, type: !22)
!609 = !DILocation(line: 651, column: 65, scope: !605)
!610 = !DILocalVariable(name: "__edi", scope: !611, file: !478, line: 653, type: !22)
!611 = distinct !DILexicalBlock(scope: !605, file: !478, line: 653, column: 2)
!612 = !DILocation(line: 653, column: 2, scope: !611)
!613 = !DILocalVariable(name: "__esi", scope: !611, file: !478, line: 653, type: !22)
!614 = !DILocalVariable(name: "__edx", scope: !611, file: !478, line: 653, type: !22)
!615 = !DILocalVariable(name: "__ecx", scope: !611, file: !478, line: 653, type: !22)
!616 = !DILocalVariable(name: "__eax", scope: !611, file: !478, line: 653, type: !22)
!617 = !{i32 -2145697138, i32 -2145696388, i32 -2145696154, i32 -2145696103, i32 -2145696075, i32 -2145696050, i32 -2145696366, i32 -2145696353, i32 -2145695915, i32 -2145695796, i32 -2145696261, i32 -2145696234, i32 -2145696206, i32 -2145696176}
!618 = !DILocation(line: 654, column: 1, scope: !605)
!619 = distinct !DISubprogram(name: "mISDN_unregister_clock", scope: !3, file: !3, line: 112, type: !620, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !30}
!622 = !DILocalVariable(name: "iclock", arg: 1, scope: !619, file: !3, line: 112, type: !30)
!623 = !DILocation(line: 112, column: 43, scope: !619)
!624 = !DILocalVariable(name: "flags", scope: !619, file: !3, line: 114, type: !111)
!625 = !DILocation(line: 114, column: 9, scope: !619)
!626 = !DILocation(line: 116, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !3, line: 116, column: 6)
!628 = !DILocation(line: 116, column: 6, scope: !627)
!629 = !DILocation(line: 116, column: 13, scope: !627)
!630 = !DILocation(line: 116, column: 6, scope: !619)
!631 = !DILocation(line: 117, column: 46, scope: !627)
!632 = !DILocation(line: 117, column: 54, scope: !627)
!633 = !DILocation(line: 118, column: 10, scope: !627)
!634 = !DILocation(line: 118, column: 18, scope: !627)
!635 = !DILocation(line: 117, column: 3, scope: !627)
!636 = !DILocation(line: 119, column: 2, scope: !619)
!637 = !DILocalVariable(name: "__dummy", scope: !638, file: !3, line: 119, type: !22)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 119, column: 2)
!639 = distinct !DILexicalBlock(scope: !619, file: !3, line: 119, column: 2)
!640 = !DILocation(line: 119, column: 2, scope: !638)
!641 = !DILocalVariable(name: "__dummy2", scope: !638, file: !3, line: 119, type: !111)
!642 = !DILocation(line: 119, column: 2, scope: !639)
!643 = !DILocation(line: 119, column: 2, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 119, column: 2)
!645 = !DILocation(line: 119, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !3, line: 119, column: 2)
!647 = !DILocalVariable(name: "__dummy", scope: !648, file: !3, line: 119, type: !22)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 119, column: 2)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 119, column: 2)
!650 = !DILocation(line: 119, column: 2, scope: !648)
!651 = !DILocalVariable(name: "__dummy2", scope: !648, file: !3, line: 119, type: !111)
!652 = !DILocation(line: 119, column: 2, scope: !649)
!653 = !DILocation(line: 119, column: 2, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !3, line: 119, column: 2)
!655 = !{i32 -2138692340}
!656 = !DILocation(line: 119, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 119, column: 2)
!658 = !DILocation(line: 120, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !619, file: !3, line: 120, column: 6)
!660 = !DILocation(line: 120, column: 24, scope: !659)
!661 = !DILocation(line: 120, column: 21, scope: !659)
!662 = !DILocation(line: 120, column: 6, scope: !619)
!663 = !DILocation(line: 121, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 121, column: 7)
!665 = distinct !DILexicalBlock(scope: !659, file: !3, line: 120, column: 32)
!666 = !DILocation(line: 121, column: 7, scope: !664)
!667 = !DILocation(line: 121, column: 14, scope: !664)
!668 = !DILocation(line: 121, column: 7, scope: !665)
!669 = !DILocation(line: 124, column: 11, scope: !664)
!670 = !DILocation(line: 124, column: 19, scope: !664)
!671 = !DILocation(line: 122, column: 4, scope: !664)
!672 = !DILocation(line: 125, column: 3, scope: !665)
!673 = !DILocation(line: 125, column: 11, scope: !665)
!674 = !DILocation(line: 125, column: 15, scope: !665)
!675 = !DILocation(line: 125, column: 23, scope: !665)
!676 = !DILocation(line: 126, column: 2, scope: !665)
!677 = !DILocation(line: 127, column: 12, scope: !619)
!678 = !DILocation(line: 127, column: 20, scope: !619)
!679 = !DILocation(line: 127, column: 2, scope: !619)
!680 = !DILocation(line: 128, column: 2, scope: !619)
!681 = !DILocation(line: 129, column: 2, scope: !619)
!682 = !DILocalVariable(name: "__dummy", scope: !683, file: !3, line: 129, type: !22)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 129, column: 2)
!684 = distinct !DILexicalBlock(scope: !619, file: !3, line: 129, column: 2)
!685 = !DILocation(line: 129, column: 2, scope: !683)
!686 = !DILocalVariable(name: "__dummy2", scope: !683, file: !3, line: 129, type: !111)
!687 = !DILocation(line: 129, column: 2, scope: !684)
!688 = !DILocation(line: 129, column: 2, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !3, line: 129, column: 2)
!690 = !DILocation(line: 129, column: 2, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !3, line: 129, column: 2)
!692 = !DILocalVariable(name: "__dummy", scope: !693, file: !3, line: 129, type: !22)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 129, column: 2)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 129, column: 2)
!695 = !DILocation(line: 129, column: 2, scope: !693)
!696 = !DILocalVariable(name: "__dummy2", scope: !693, file: !3, line: 129, type: !111)
!697 = !DILocation(line: 129, column: 2, scope: !694)
!698 = !DILocation(line: 129, column: 2, scope: !699)
!699 = distinct !DILexicalBlock(scope: !689, file: !3, line: 129, column: 2)
!700 = !{i32 -2138691473}
!701 = !DILocation(line: 129, column: 2, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 129, column: 2)
!703 = !DILocation(line: 130, column: 1, scope: !619)
!704 = distinct !DISubprogram(name: "list_del", scope: !489, file: !489, line: 144, type: !705, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !25}
!707 = !DILocalVariable(name: "entry", arg: 1, scope: !704, file: !489, line: 144, type: !25)
!708 = !DILocation(line: 144, column: 47, scope: !704)
!709 = !DILocation(line: 146, column: 19, scope: !704)
!710 = !DILocation(line: 146, column: 2, scope: !704)
!711 = !DILocation(line: 147, column: 2, scope: !704)
!712 = !DILocation(line: 147, column: 9, scope: !704)
!713 = !DILocation(line: 147, column: 14, scope: !704)
!714 = !DILocation(line: 148, column: 2, scope: !704)
!715 = !DILocation(line: 148, column: 9, scope: !704)
!716 = !DILocation(line: 148, column: 14, scope: !704)
!717 = !DILocation(line: 149, column: 1, scope: !704)
!718 = distinct !DISubprogram(name: "mISDN_clock_update", scope: !3, file: !3, line: 134, type: !719, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !30, !41, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!722 = !DILocalVariable(name: "iclock", arg: 1, scope: !718, file: !3, line: 134, type: !30)
!723 = !DILocation(line: 134, column: 39, scope: !718)
!724 = !DILocalVariable(name: "samples", arg: 2, scope: !718, file: !3, line: 134, type: !41)
!725 = !DILocation(line: 134, column: 51, scope: !718)
!726 = !DILocalVariable(name: "timestamp", arg: 3, scope: !718, file: !3, line: 134, type: !721)
!727 = !DILocation(line: 134, column: 69, scope: !718)
!728 = !DILocalVariable(name: "flags", scope: !718, file: !3, line: 136, type: !111)
!729 = !DILocation(line: 136, column: 10, scope: !718)
!730 = !DILocalVariable(name: "timestamp_now", scope: !718, file: !3, line: 137, type: !58)
!731 = !DILocation(line: 137, column: 11, scope: !718)
!732 = !DILocalVariable(name: "delta", scope: !718, file: !3, line: 138, type: !51)
!733 = !DILocation(line: 138, column: 7, scope: !718)
!734 = !DILocation(line: 140, column: 2, scope: !718)
!735 = !DILocalVariable(name: "__dummy", scope: !736, file: !3, line: 140, type: !22)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 140, column: 2)
!737 = distinct !DILexicalBlock(scope: !718, file: !3, line: 140, column: 2)
!738 = !DILocation(line: 140, column: 2, scope: !736)
!739 = !DILocalVariable(name: "__dummy2", scope: !736, file: !3, line: 140, type: !111)
!740 = !DILocation(line: 140, column: 2, scope: !737)
!741 = !DILocation(line: 140, column: 2, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !3, line: 140, column: 2)
!743 = !DILocation(line: 140, column: 2, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !3, line: 140, column: 2)
!745 = !DILocalVariable(name: "__dummy", scope: !746, file: !3, line: 140, type: !22)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 140, column: 2)
!747 = distinct !DILexicalBlock(scope: !744, file: !3, line: 140, column: 2)
!748 = !DILocation(line: 140, column: 2, scope: !746)
!749 = !DILocalVariable(name: "__dummy2", scope: !746, file: !3, line: 140, type: !111)
!750 = !DILocation(line: 140, column: 2, scope: !747)
!751 = !DILocation(line: 140, column: 2, scope: !752)
!752 = distinct !DILexicalBlock(scope: !742, file: !3, line: 140, column: 2)
!753 = !{i32 -2138690553}
!754 = !DILocation(line: 140, column: 2, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 140, column: 2)
!756 = !DILocation(line: 141, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !718, file: !3, line: 141, column: 6)
!758 = !DILocation(line: 141, column: 24, scope: !757)
!759 = !DILocation(line: 141, column: 21, scope: !757)
!760 = !DILocation(line: 141, column: 6, scope: !718)
!761 = !DILocation(line: 144, column: 10, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 141, column: 32)
!763 = !DILocation(line: 144, column: 18, scope: !762)
!764 = !DILocation(line: 145, column: 10, scope: !762)
!765 = !DILocation(line: 145, column: 27, scope: !762)
!766 = !DILocation(line: 145, column: 43, scope: !762)
!767 = !DILocation(line: 142, column: 3, scope: !762)
!768 = !DILocation(line: 146, column: 3, scope: !762)
!769 = !DILocation(line: 146, column: 11, scope: !762)
!770 = !DILocation(line: 146, column: 15, scope: !762)
!771 = !DILocation(line: 146, column: 23, scope: !762)
!772 = !DILocation(line: 147, column: 3, scope: !762)
!773 = !DILocalVariable(name: "__dummy", scope: !774, file: !3, line: 147, type: !22)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 147, column: 3)
!775 = distinct !DILexicalBlock(scope: !762, file: !3, line: 147, column: 3)
!776 = !DILocation(line: 147, column: 3, scope: !774)
!777 = !DILocalVariable(name: "__dummy2", scope: !774, file: !3, line: 147, type: !111)
!778 = !DILocation(line: 147, column: 3, scope: !775)
!779 = !DILocation(line: 147, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !3, line: 147, column: 3)
!781 = !DILocation(line: 147, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !3, line: 147, column: 3)
!783 = !DILocalVariable(name: "__dummy", scope: !784, file: !3, line: 147, type: !22)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 147, column: 3)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 147, column: 3)
!786 = !DILocation(line: 147, column: 3, scope: !784)
!787 = !DILocalVariable(name: "__dummy2", scope: !784, file: !3, line: 147, type: !111)
!788 = !DILocation(line: 147, column: 3, scope: !785)
!789 = !DILocation(line: 147, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !780, file: !3, line: 147, column: 3)
!791 = !{i32 -2138689697}
!792 = !DILocation(line: 147, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 147, column: 3)
!794 = !DILocation(line: 148, column: 3, scope: !762)
!795 = !DILocation(line: 150, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !718, file: !3, line: 150, column: 6)
!797 = !DILocation(line: 150, column: 6, scope: !718)
!798 = !DILocation(line: 152, column: 19, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !3, line: 150, column: 30)
!800 = !DILocation(line: 152, column: 16, scope: !799)
!801 = !DILocation(line: 153, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !3, line: 153, column: 7)
!803 = !DILocation(line: 153, column: 7, scope: !799)
!804 = !DILocation(line: 154, column: 24, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !3, line: 153, column: 18)
!806 = !DILocation(line: 154, column: 23, scope: !805)
!807 = !DILocation(line: 154, column: 21, scope: !805)
!808 = !DILocation(line: 155, column: 3, scope: !805)
!809 = !DILocation(line: 156, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !802, file: !3, line: 155, column: 10)
!811 = !DILocation(line: 156, column: 21, scope: !810)
!812 = !DILocation(line: 158, column: 2, scope: !799)
!813 = !DILocation(line: 160, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 160, column: 7)
!815 = distinct !DILexicalBlock(scope: !796, file: !3, line: 158, column: 9)
!816 = !DILocation(line: 160, column: 7, scope: !815)
!817 = !DILocation(line: 161, column: 21, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !3, line: 160, column: 18)
!819 = !DILocation(line: 161, column: 20, scope: !818)
!820 = !DILocation(line: 161, column: 18, scope: !818)
!821 = !DILocation(line: 162, column: 3, scope: !818)
!822 = !DILocation(line: 163, column: 20, scope: !823)
!823 = distinct !DILexicalBlock(scope: !814, file: !3, line: 162, column: 10)
!824 = !DILocation(line: 163, column: 18, scope: !823)
!825 = !DILocation(line: 165, column: 23, scope: !815)
!826 = !DILocation(line: 165, column: 11, scope: !815)
!827 = !DILocation(line: 165, column: 9, scope: !815)
!828 = !DILocation(line: 168, column: 19, scope: !815)
!829 = !DILocation(line: 168, column: 16, scope: !815)
!830 = !DILocation(line: 169, column: 22, scope: !815)
!831 = !DILocation(line: 169, column: 20, scope: !815)
!832 = !DILocation(line: 170, column: 26, scope: !815)
!833 = !DILocation(line: 171, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !815, file: !3, line: 171, column: 7)
!835 = !DILocation(line: 171, column: 7, scope: !834)
!836 = !DILocation(line: 171, column: 14, scope: !834)
!837 = !DILocation(line: 171, column: 7, scope: !815)
!838 = !DILocation(line: 173, column: 11, scope: !834)
!839 = !DILocation(line: 173, column: 28, scope: !834)
!840 = !DILocation(line: 173, column: 44, scope: !834)
!841 = !DILocation(line: 172, column: 4, scope: !834)
!842 = !DILocation(line: 175, column: 2, scope: !718)
!843 = !DILocalVariable(name: "__dummy", scope: !844, file: !3, line: 175, type: !22)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 175, column: 2)
!845 = distinct !DILexicalBlock(scope: !718, file: !3, line: 175, column: 2)
!846 = !DILocation(line: 175, column: 2, scope: !844)
!847 = !DILocalVariable(name: "__dummy2", scope: !844, file: !3, line: 175, type: !111)
!848 = !DILocation(line: 175, column: 2, scope: !845)
!849 = !DILocation(line: 175, column: 2, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 175, column: 2)
!851 = !DILocation(line: 175, column: 2, scope: !852)
!852 = distinct !DILexicalBlock(scope: !850, file: !3, line: 175, column: 2)
!853 = !DILocalVariable(name: "__dummy", scope: !854, file: !3, line: 175, type: !22)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 175, column: 2)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 175, column: 2)
!856 = !DILocation(line: 175, column: 2, scope: !854)
!857 = !DILocalVariable(name: "__dummy2", scope: !854, file: !3, line: 175, type: !111)
!858 = !DILocation(line: 175, column: 2, scope: !855)
!859 = !DILocation(line: 175, column: 2, scope: !860)
!860 = distinct !DILexicalBlock(scope: !850, file: !3, line: 175, column: 2)
!861 = !{i32 -2138688791}
!862 = !DILocation(line: 175, column: 2, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 175, column: 2)
!864 = !DILocation(line: 176, column: 1, scope: !718)
!865 = distinct !DISubprogram(name: "ktime_divns", scope: !59, file: !59, line: 148, type: !866, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!866 = !DISubroutineType(types: !867)
!867 = !{!60, !868, !60}
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!869 = !DILocalVariable(name: "kt", arg: 1, scope: !865, file: !59, line: 148, type: !868)
!870 = !DILocation(line: 148, column: 45, scope: !865)
!871 = !DILocalVariable(name: "div", arg: 2, scope: !865, file: !59, line: 148, type: !60)
!872 = !DILocation(line: 148, column: 53, scope: !865)
!873 = !DILocalVariable(name: "__ret_warn_on", scope: !874, file: !59, line: 154, type: !41)
!874 = distinct !DILexicalBlock(scope: !865, file: !59, line: 154, column: 2)
!875 = !DILocation(line: 154, column: 2, scope: !874)
!876 = !DILocation(line: 154, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !59, line: 154, column: 2)
!878 = !DILocation(line: 154, column: 2, scope: !879)
!879 = distinct !DILexicalBlock(scope: !877, file: !59, line: 154, column: 2)
!880 = !DILocation(line: 154, column: 2, scope: !881)
!881 = distinct !DILexicalBlock(scope: !879, file: !59, line: 154, column: 2)
!882 = !DILocation(line: 154, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !59, line: 154, column: 2)
!884 = !{i32 -2145097751, i32 -2145097722, i32 -2145097676, i32 -2145097618, i32 -2145097564, i32 -2145097510, i32 -2145097455, i32 -2145097424}
!885 = !DILocation(line: 154, column: 2, scope: !886)
!886 = distinct !DILexicalBlock(scope: !879, file: !59, line: 154, column: 2)
!887 = !{i32 -2145097021, i32 -2145097014, i32 -2145096962, i32 -2145096931, i32 -2145096901}
!888 = !DILocation(line: 154, column: 2, scope: !889)
!889 = distinct !DILexicalBlock(scope: !879, file: !59, line: 154, column: 2)
!890 = !DILocation(line: 155, column: 9, scope: !865)
!891 = !DILocation(line: 155, column: 14, scope: !865)
!892 = !DILocation(line: 155, column: 12, scope: !865)
!893 = !DILocation(line: 155, column: 2, scope: !865)
!894 = distinct !DISubprogram(name: "mISDN_clock_get", scope: !3, file: !3, line: 180, type: !895, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!895 = !DISubroutineType(types: !896)
!896 = !{!55}
!897 = !DILocalVariable(name: "flags", scope: !894, file: !3, line: 182, type: !111)
!898 = !DILocation(line: 182, column: 10, scope: !894)
!899 = !DILocalVariable(name: "timestamp_now", scope: !894, file: !3, line: 183, type: !58)
!900 = !DILocation(line: 183, column: 11, scope: !894)
!901 = !DILocalVariable(name: "delta", scope: !894, file: !3, line: 184, type: !51)
!902 = !DILocation(line: 184, column: 7, scope: !894)
!903 = !DILocalVariable(name: "count", scope: !894, file: !3, line: 185, type: !51)
!904 = !DILocation(line: 185, column: 7, scope: !894)
!905 = !DILocation(line: 187, column: 2, scope: !894)
!906 = !DILocalVariable(name: "__dummy", scope: !907, file: !3, line: 187, type: !22)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 187, column: 2)
!908 = distinct !DILexicalBlock(scope: !894, file: !3, line: 187, column: 2)
!909 = !DILocation(line: 187, column: 2, scope: !907)
!910 = !DILocalVariable(name: "__dummy2", scope: !907, file: !3, line: 187, type: !111)
!911 = !DILocation(line: 187, column: 2, scope: !908)
!912 = !DILocation(line: 187, column: 2, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 187, column: 2)
!914 = !DILocation(line: 187, column: 2, scope: !915)
!915 = distinct !DILexicalBlock(scope: !913, file: !3, line: 187, column: 2)
!916 = !DILocalVariable(name: "__dummy", scope: !917, file: !3, line: 187, type: !22)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 187, column: 2)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 187, column: 2)
!919 = !DILocation(line: 187, column: 2, scope: !917)
!920 = !DILocalVariable(name: "__dummy2", scope: !917, file: !3, line: 187, type: !111)
!921 = !DILocation(line: 187, column: 2, scope: !918)
!922 = !DILocation(line: 187, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !913, file: !3, line: 187, column: 2)
!924 = !{i32 -2138687880}
!925 = !DILocation(line: 187, column: 2, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 187, column: 2)
!927 = !DILocation(line: 189, column: 18, scope: !894)
!928 = !DILocation(line: 189, column: 16, scope: !894)
!929 = !DILocation(line: 190, column: 22, scope: !894)
!930 = !DILocation(line: 190, column: 10, scope: !894)
!931 = !DILocation(line: 190, column: 8, scope: !894)
!932 = !DILocation(line: 193, column: 10, scope: !894)
!933 = !DILocation(line: 193, column: 25, scope: !894)
!934 = !DILocation(line: 193, column: 23, scope: !894)
!935 = !DILocation(line: 193, column: 8, scope: !894)
!936 = !DILocation(line: 194, column: 2, scope: !894)
!937 = !DILocalVariable(name: "__dummy", scope: !938, file: !3, line: 194, type: !22)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 194, column: 2)
!939 = distinct !DILexicalBlock(scope: !894, file: !3, line: 194, column: 2)
!940 = !DILocation(line: 194, column: 2, scope: !938)
!941 = !DILocalVariable(name: "__dummy2", scope: !938, file: !3, line: 194, type: !111)
!942 = !DILocation(line: 194, column: 2, scope: !939)
!943 = !DILocation(line: 194, column: 2, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 194, column: 2)
!945 = !DILocation(line: 194, column: 2, scope: !946)
!946 = distinct !DILexicalBlock(scope: !944, file: !3, line: 194, column: 2)
!947 = !DILocalVariable(name: "__dummy", scope: !948, file: !3, line: 194, type: !22)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 194, column: 2)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 194, column: 2)
!950 = !DILocation(line: 194, column: 2, scope: !948)
!951 = !DILocalVariable(name: "__dummy2", scope: !948, file: !3, line: 194, type: !111)
!952 = !DILocation(line: 194, column: 2, scope: !949)
!953 = !DILocation(line: 194, column: 2, scope: !954)
!954 = distinct !DILexicalBlock(scope: !944, file: !3, line: 194, column: 2)
!955 = !{i32 -2138686984}
!956 = !DILocation(line: 194, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 194, column: 2)
!958 = !DILocation(line: 195, column: 9, scope: !894)
!959 = !DILocation(line: 195, column: 2, scope: !894)
!960 = distinct !DISubprogram(name: "get_order", scope: !961, file: !961, line: 29, type: !962, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!961 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!962 = !DISubroutineType(types: !963)
!963 = !{!41, !22}
!964 = !DILocalVariable(name: "x", arg: 1, scope: !965, file: !966, line: 366, type: !969)
!965 = distinct !DISubprogram(name: "fls64", scope: !966, file: !966, line: 366, type: !967, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!966 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DISubroutineType(types: !968)
!968 = !{!41, !969}
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !54, line: 31, baseType: !970)
!970 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!971 = !DILocation(line: 366, column: 40, scope: !965, inlinedAt: !972)
!972 = distinct !DILocation(line: 46, column: 9, scope: !960)
!973 = !DILocalVariable(name: "bitpos", scope: !965, file: !966, line: 368, type: !41)
!974 = !DILocation(line: 368, column: 6, scope: !965, inlinedAt: !972)
!975 = !DILocalVariable(name: "size", arg: 1, scope: !960, file: !961, line: 29, type: !22)
!976 = !DILocation(line: 29, column: 63, scope: !960)
!977 = !DILocation(line: 31, column: 27, scope: !978)
!978 = distinct !DILexicalBlock(scope: !960, file: !961, line: 31, column: 6)
!979 = !DILocation(line: 31, column: 6, scope: !978)
!980 = !DILocation(line: 31, column: 6, scope: !960)
!981 = !DILocation(line: 32, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !961, line: 32, column: 7)
!983 = distinct !DILexicalBlock(scope: !978, file: !961, line: 31, column: 34)
!984 = !DILocation(line: 32, column: 7, scope: !983)
!985 = !DILocation(line: 33, column: 4, scope: !982)
!986 = !DILocation(line: 35, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !961, line: 35, column: 7)
!988 = !DILocation(line: 35, column: 12, scope: !987)
!989 = !DILocation(line: 35, column: 7, scope: !983)
!990 = !DILocation(line: 36, column: 4, scope: !987)
!991 = !DILocation(line: 38, column: 10, scope: !983)
!992 = !DILocation(line: 38, column: 28, scope: !983)
!993 = !DILocation(line: 38, column: 41, scope: !983)
!994 = !DILocation(line: 38, column: 3, scope: !983)
!995 = !DILocation(line: 41, column: 6, scope: !960)
!996 = !DILocation(line: 42, column: 7, scope: !960)
!997 = !DILocation(line: 46, column: 15, scope: !960)
!998 = !DILocation(line: 374, column: 2, scope: !965, inlinedAt: !972)
!999 = !DILocation(line: 376, column: 14, scope: !965, inlinedAt: !972)
!1000 = !{i32 305812}
!1001 = !DILocation(line: 377, column: 9, scope: !965, inlinedAt: !972)
!1002 = !DILocation(line: 377, column: 16, scope: !965, inlinedAt: !972)
!1003 = !DILocation(line: 46, column: 2, scope: !960)
!1004 = !DILocation(line: 48, column: 1, scope: !960)
!1005 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1006, file: !1006, line: 30, type: !1007, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1006 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!41, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !52, line: 23, baseType: !969)
!1010 = !DILocation(line: 366, column: 40, scope: !965, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 32, column: 9, scope: !1005)
!1012 = !DILocation(line: 368, column: 6, scope: !965, inlinedAt: !1011)
!1013 = !DILocalVariable(name: "n", arg: 1, scope: !1005, file: !1006, line: 30, type: !1009)
!1014 = !DILocation(line: 30, column: 21, scope: !1005)
!1015 = !DILocation(line: 32, column: 15, scope: !1005)
!1016 = !DILocation(line: 374, column: 2, scope: !965, inlinedAt: !1011)
!1017 = !DILocation(line: 376, column: 14, scope: !965, inlinedAt: !1011)
!1018 = !DILocation(line: 377, column: 9, scope: !965, inlinedAt: !1011)
!1019 = !DILocation(line: 377, column: 16, scope: !965, inlinedAt: !1011)
!1020 = !DILocation(line: 32, column: 18, scope: !1005)
!1021 = !DILocation(line: 32, column: 2, scope: !1005)
!1022 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1023, file: !1023, line: 137, type: !1024, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1023 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!21, !209, !1026, !201, !19}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1028 = !DILocalVariable(name: "s", arg: 1, scope: !1022, file: !1023, line: 137, type: !209)
!1029 = !DILocation(line: 137, column: 54, scope: !1022)
!1030 = !DILocalVariable(name: "object", arg: 2, scope: !1022, file: !1023, line: 137, type: !1026)
!1031 = !DILocation(line: 137, column: 69, scope: !1022)
!1032 = !DILocalVariable(name: "size", arg: 3, scope: !1022, file: !1023, line: 138, type: !201)
!1033 = !DILocation(line: 138, column: 12, scope: !1022)
!1034 = !DILocalVariable(name: "flags", arg: 4, scope: !1022, file: !1023, line: 138, type: !19)
!1035 = !DILocation(line: 138, column: 24, scope: !1022)
!1036 = !DILocation(line: 140, column: 17, scope: !1022)
!1037 = !DILocation(line: 140, column: 2, scope: !1022)
!1038 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !478, file: !478, line: 646, type: !479, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1039 = !DILocalVariable(name: "__ret", scope: !1040, file: !478, line: 648, type: !22)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !478, line: 648, column: 9)
!1041 = !DILocation(line: 648, column: 9, scope: !1040)
!1042 = !DILocalVariable(name: "__edi", scope: !1040, file: !478, line: 648, type: !22)
!1043 = !DILocalVariable(name: "__esi", scope: !1040, file: !478, line: 648, type: !22)
!1044 = !DILocalVariable(name: "__edx", scope: !1040, file: !478, line: 648, type: !22)
!1045 = !DILocalVariable(name: "__ecx", scope: !1040, file: !478, line: 648, type: !22)
!1046 = !DILocalVariable(name: "__eax", scope: !1040, file: !478, line: 648, type: !22)
!1047 = !DILocation(line: 648, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !478, line: 648, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1040, file: !478, line: 648, column: 9)
!1050 = !{i32 -2145701605, i32 -2145699290, i32 -2145699056, i32 -2145699005, i32 -2145698977, i32 -2145698952, i32 -2145699268, i32 -2145699255, i32 -2145698817, i32 -2145698698, i32 -2145699163, i32 -2145699136, i32 -2145699108, i32 -2145699078}
!1051 = !DILocalVariable(name: "__mask", scope: !1052, file: !478, line: 648, type: !22)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !478, line: 648, column: 9)
!1053 = !DILocation(line: 648, column: 9, scope: !1052)
!1054 = !DILocation(line: 648, column: 9, scope: !1049)
!1055 = !DILocation(line: 648, column: 2, scope: !1038)
!1056 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !478, file: !478, line: 656, type: !503, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1057 = !DILocalVariable(name: "__edi", scope: !1058, file: !478, line: 658, type: !22)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !478, line: 658, column: 2)
!1059 = !DILocation(line: 658, column: 2, scope: !1058)
!1060 = !DILocalVariable(name: "__esi", scope: !1058, file: !478, line: 658, type: !22)
!1061 = !DILocalVariable(name: "__edx", scope: !1058, file: !478, line: 658, type: !22)
!1062 = !DILocalVariable(name: "__ecx", scope: !1058, file: !478, line: 658, type: !22)
!1063 = !DILocalVariable(name: "__eax", scope: !1058, file: !478, line: 658, type: !22)
!1064 = !{i32 -2145694511, i32 -2145693779, i32 -2145693545, i32 -2145693494, i32 -2145693466, i32 -2145693441, i32 -2145693757, i32 -2145693744, i32 -2145693306, i32 -2145693187, i32 -2145693652, i32 -2145693625, i32 -2145693597, i32 -2145693567}
!1065 = !DILocation(line: 659, column: 1, scope: !1056)
!1066 = distinct !DISubprogram(name: "__list_add", scope: !489, file: !489, line: 63, type: !1067, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !25, !25, !25}
!1069 = !DILocalVariable(name: "new", arg: 1, scope: !1066, file: !489, line: 63, type: !25)
!1070 = !DILocation(line: 63, column: 49, scope: !1066)
!1071 = !DILocalVariable(name: "prev", arg: 2, scope: !1066, file: !489, line: 64, type: !25)
!1072 = !DILocation(line: 64, column: 28, scope: !1066)
!1073 = !DILocalVariable(name: "next", arg: 3, scope: !1066, file: !489, line: 65, type: !25)
!1074 = !DILocation(line: 65, column: 28, scope: !1066)
!1075 = !DILocation(line: 67, column: 24, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !489, line: 67, column: 6)
!1077 = !DILocation(line: 67, column: 29, scope: !1076)
!1078 = !DILocation(line: 67, column: 35, scope: !1076)
!1079 = !DILocation(line: 67, column: 7, scope: !1076)
!1080 = !DILocation(line: 67, column: 6, scope: !1066)
!1081 = !DILocation(line: 68, column: 3, scope: !1076)
!1082 = !DILocation(line: 70, column: 15, scope: !1066)
!1083 = !DILocation(line: 70, column: 2, scope: !1066)
!1084 = !DILocation(line: 70, column: 8, scope: !1066)
!1085 = !DILocation(line: 70, column: 13, scope: !1066)
!1086 = !DILocation(line: 71, column: 14, scope: !1066)
!1087 = !DILocation(line: 71, column: 2, scope: !1066)
!1088 = !DILocation(line: 71, column: 7, scope: !1066)
!1089 = !DILocation(line: 71, column: 12, scope: !1066)
!1090 = !DILocation(line: 72, column: 14, scope: !1066)
!1091 = !DILocation(line: 72, column: 2, scope: !1066)
!1092 = !DILocation(line: 72, column: 7, scope: !1066)
!1093 = !DILocation(line: 72, column: 12, scope: !1066)
!1094 = !DILocation(line: 73, column: 2, scope: !1066)
!1095 = !DILocation(line: 73, column: 2, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1066, file: !489, line: 73, column: 2)
!1097 = !DILocation(line: 73, column: 2, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !489, line: 73, column: 2)
!1099 = !DILocation(line: 73, column: 2, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !489, line: 73, column: 2)
!1101 = !DILocation(line: 74, column: 1, scope: !1066)
!1102 = distinct !DISubprogram(name: "__list_add_valid", scope: !489, file: !489, line: 45, type: !1103, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !25, !25, !25}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 30, baseType: !1106)
!1106 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1107 = !DILocalVariable(name: "new", arg: 1, scope: !1102, file: !489, line: 45, type: !25)
!1108 = !DILocation(line: 45, column: 55, scope: !1102)
!1109 = !DILocalVariable(name: "prev", arg: 2, scope: !1102, file: !489, line: 46, type: !25)
!1110 = !DILocation(line: 46, column: 23, scope: !1102)
!1111 = !DILocalVariable(name: "next", arg: 3, scope: !1102, file: !489, line: 47, type: !25)
!1112 = !DILocation(line: 47, column: 23, scope: !1102)
!1113 = !DILocation(line: 49, column: 2, scope: !1102)
!1114 = distinct !DISubprogram(name: "__list_del_entry", scope: !489, file: !489, line: 130, type: !705, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1115 = !DILocalVariable(name: "entry", arg: 1, scope: !1114, file: !489, line: 130, type: !25)
!1116 = !DILocation(line: 130, column: 55, scope: !1114)
!1117 = !DILocation(line: 132, column: 30, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !489, line: 132, column: 6)
!1119 = !DILocation(line: 132, column: 7, scope: !1118)
!1120 = !DILocation(line: 132, column: 6, scope: !1114)
!1121 = !DILocation(line: 133, column: 3, scope: !1118)
!1122 = !DILocation(line: 135, column: 13, scope: !1114)
!1123 = !DILocation(line: 135, column: 20, scope: !1114)
!1124 = !DILocation(line: 135, column: 26, scope: !1114)
!1125 = !DILocation(line: 135, column: 33, scope: !1114)
!1126 = !DILocation(line: 135, column: 2, scope: !1114)
!1127 = !DILocation(line: 136, column: 1, scope: !1114)
!1128 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !489, file: !489, line: 51, type: !1129, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1105, !25}
!1131 = !DILocalVariable(name: "entry", arg: 1, scope: !1128, file: !489, line: 51, type: !25)
!1132 = !DILocation(line: 51, column: 61, scope: !1128)
!1133 = !DILocation(line: 53, column: 2, scope: !1128)
!1134 = distinct !DISubprogram(name: "__list_del", scope: !489, file: !489, line: 110, type: !490, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !77)
!1135 = !DILocalVariable(name: "prev", arg: 1, scope: !1134, file: !489, line: 110, type: !25)
!1136 = !DILocation(line: 110, column: 50, scope: !1134)
!1137 = !DILocalVariable(name: "next", arg: 2, scope: !1134, file: !489, line: 110, type: !25)
!1138 = !DILocation(line: 110, column: 75, scope: !1134)
!1139 = !DILocation(line: 112, column: 15, scope: !1134)
!1140 = !DILocation(line: 112, column: 2, scope: !1134)
!1141 = !DILocation(line: 112, column: 8, scope: !1134)
!1142 = !DILocation(line: 112, column: 13, scope: !1134)
!1143 = !DILocation(line: 113, column: 2, scope: !1134)
!1144 = !DILocation(line: 113, column: 2, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1134, file: !489, line: 113, column: 2)
!1146 = !DILocation(line: 113, column: 2, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !489, line: 113, column: 2)
!1148 = !DILocation(line: 113, column: 2, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !489, line: 113, column: 2)
!1150 = !DILocation(line: 114, column: 1, scope: !1134)
