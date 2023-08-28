; ModuleID = '../bcout/drivers/char/agp/intel-gtt.llvm.bc'
source_filename = "drivers/char/agp/intel-gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct._intel_private = type { %struct.intel_gtt_driver*, %struct.pci_dev*, %struct.pci_dev*, i8*, i64, i32, i32*, i8, i32, i8*, i8*, %struct.resource, i32, %struct.page*, i64, i32, i8, i64, i64, i32, i32 }
%struct.intel_gtt_driver = type { i24, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.72, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type { %struct.module*, %struct.device*, %struct.device_node*, %struct.list_head, i32 (%struct.msi_controller*, %struct.pci_dev*, %struct.msi_desc*)*, i32 (%struct.msi_controller*, %struct.pci_dev*, i32, i32)*, void (%struct.msi_controller*, i32)* }
%struct.module = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, %struct.anon.70, %union.anon.71 }
%struct.anon.70 = type { i16, i16, i32 }
%union.anon.71 = type { i8* }
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type { i1 (i32)*, %struct.iommu_domain* (i32)*, void (%struct.iommu_domain*)*, i32 (%struct.iommu_domain*, %struct.device*)*, void (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, i64, i64, i64, i32, i32)*, i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)*, void (%struct.iommu_domain*)*, void (%struct.iommu_domain*)*, void (%struct.iommu_domain*, %struct.iommu_iotlb_gather*)*, i64 (%struct.iommu_domain*, i64)*, %struct.iommu_device* (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.iommu_group* (%struct.device*)*, i32 (%struct.iommu_domain*, i32, i8*)*, i32 (%struct.iommu_domain*, i32, i8*)*, void (%struct.device*, %struct.list_head*)*, void (%struct.device*, %struct.list_head*)*, void (%struct.device*, %struct.iommu_domain*, %struct.iommu_resv_region*)*, i32 (%struct.iommu_domain*, i32, i64, i64, i32)*, void (%struct.iommu_domain*, i32)*, i32 (%struct.device*, %struct.of_phandle_args*)*, i1 (%struct.iommu_domain*, %struct.device*)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)*, i32 (%struct.iommu_domain*, %struct.device*)*, void (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, %struct.device*)*, %struct.iommu_sva* (%struct.device*, %struct.mm_struct*, i8*)*, void (%struct.iommu_sva*)*, i32 (%struct.iommu_sva*)*, i32 (%struct.device*, %struct.iommu_fault_event*, %struct.iommu_page_response*)*, i32 (%struct.iommu_domain*, %struct.device*, %struct.iommu_cache_invalidate_info*)*, i32 (%struct.iommu_domain*, %struct.device*, %struct.iommu_gpasid_bind_data*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i64, %struct.module* }
%struct.iommu_domain = type { i32, %struct.iommu_ops*, i64, i32 (%struct.iommu_domain*, %struct.device*, i64, i32, i8*)*, i8*, %struct.iommu_domain_geometry, i8* }
%struct.iommu_domain_geometry = type { i64, i64, i8 }
%struct.iommu_iotlb_gather = type { i64, i64, i64 }
%struct.iommu_device = type { %struct.list_head, %struct.iommu_ops*, %struct.fwnode_handle*, %struct.device* }
%struct.iommu_group = type opaque
%struct.iommu_resv_region = type { %struct.list_head, i64, i64, i32, i32 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.iommu_sva = type { %struct.device* }
%struct.iommu_fault_event = type { %struct.iommu_fault, %struct.list_head }
%struct.iommu_fault = type { i32, i32, %union.anon.65 }
%union.anon.65 = type { %struct.iommu_fault_page_request, [16 x i8] }
%struct.iommu_fault_page_request = type { i32, i32, i32, i32, i64, [2 x i64] }
%struct.iommu_page_response = type { i32, i32, i32, i32, i32, i32 }
%struct.iommu_cache_invalidate_info = type { i32, i32, i8, i8, [6 x i8], %union.anon.66 }
%union.anon.66 = type { %struct.iommu_inv_addr_info }
%struct.iommu_inv_addr_info = type { i32, i32, i64, i64, i64, i64 }
%struct.iommu_gpasid_bind_data = type { i32, i32, i32, i32, i64, i64, i64, i64, [8 x i8], %union.anon.67 }
%union.anon.67 = type { %struct.iommu_gpasid_bind_data_vtd }
%struct.iommu_gpasid_bind_data_vtd = type { i64, i32, i32 }
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.dev_iommu = type { %struct.mutex, %struct.iommu_fault_param*, %struct.iommu_fwspec*, %struct.iommu_device*, i8* }
%struct.iommu_fault_param = type { i32 (%struct.iommu_fault*, i8*)*, i8*, %struct.list_head, %struct.mutex }
%struct.iommu_fwspec = type { %struct.iommu_ops*, %struct.fwnode_handle*, i32, i32, i32, [0 x i32] }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.72 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.intel_gtt_driver_description = type { i32, i8*, %struct.intel_gtt_driver* }
%struct.agp_bridge_driver = type { %struct.module*, i8*, i32, i32, i8, i8, %struct.gatt_mask*, i32 ()*, i32 ()*, void (%struct.agp_bridge_data*, i32)*, void ()*, void (%struct.agp_memory*)*, i64 (%struct.agp_bridge_data*, i64, i32)*, void ()*, i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_memory*, i64, i32)*, i32 (%struct.agp_memory*, i64, i32)*, %struct.agp_memory* (i64, i32)*, void (%struct.agp_memory*)*, %struct.page* (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)*, void (%struct.page*, i32)*, void (%struct.agp_memory*)*, i32 (%struct.agp_bridge_data*, i32)* }
%struct.gatt_mask = type { i64, i32 }
%struct.agp_bridge_data = type { %struct.agp_version*, %struct.agp_bridge_driver*, %struct.vm_operations_struct*, i8*, i8*, i8*, %struct.pci_dev*, i32*, i32*, i64, %struct.page*, i64, i64, i64, i32, i32, i64*, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i8, i8, %struct.list_head, i32, %struct.list_head, %struct.spinlock }
%struct.agp_version = type { i16, i16 }
%struct.agp_memory = type { %struct.agp_memory*, %struct.agp_memory*, %struct.agp_bridge_data*, %struct.page**, i64, i32, i32, i64, i32, i32, i8, i8, %struct.list_head, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
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
%struct.aper_size_info_fixed = type { i32, i32, i32 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.pci_bus_region = type { i64, i64 }

@intel_private = internal global %struct._intel_private zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"failed to enable the GTT: GMCH_CTRL=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to enable the GTT: PGETBL=%x [expected %x]\0A\00", align 1
@intel_gtt_chipsets = internal constant [36 x %struct.intel_gtt_driver_description] [%struct.intel_gtt_driver_description { i32 28961, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i81x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 28963, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i81x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 28965, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i81x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 4402, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i81x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 13687, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i8xx_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 9570, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i8xx_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 13710, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i8xx_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 13698, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i8xx_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 9586, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i8xx_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 9610, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 9602, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 9618, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10098, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i915_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10610, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10626, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10642, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10658, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10754, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10770, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @i965_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10690, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g33_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10674, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g33_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10706, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g33_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 40977, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @pineview_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 40961, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @pineview_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 10818, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11778, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11794, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11810, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11842, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11922, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 11826, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @g4x_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @ironlake_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description { i32 70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct.intel_gtt_driver* bitcast ({ i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* }* @ironlake_gtt_driver to %struct.intel_gtt_driver*) }, %struct.intel_gtt_driver_description zeroinitializer], align 16, !dbg !3072
@intel_fake_agp_driver = internal constant %struct.agp_bridge_driver { %struct.module* null, i8* bitcast ([5 x %struct.aper_size_info_fixed]* @intel_fake_agp_sizes to i8*), i32 5, i32 4, i8 0, i8 0, %struct.gatt_mask* null, i32 ()* @intel_fake_agp_fetch_size, i32 ()* @intel_fake_agp_configure, void (%struct.agp_bridge_data*, i32)* @intel_fake_agp_enable, void ()* @intel_gtt_cleanup, void (%struct.agp_memory*)* null, i64 (%struct.agp_bridge_data*, i64, i32)* null, void ()* @global_cache_flush, i32 (%struct.agp_bridge_data*)* @intel_fake_agp_create_gatt_table, i32 (%struct.agp_bridge_data*)* @intel_fake_agp_free_gatt_table, i32 (%struct.agp_memory*, i64, i32)* @intel_fake_agp_insert_entries, i32 (%struct.agp_memory*, i64, i32)* @intel_fake_agp_remove_entries, %struct.agp_memory* (i64, i32)* @intel_fake_agp_alloc_by_type, void (%struct.agp_memory*)* @intel_i810_free_by_type, %struct.page* (%struct.agp_bridge_data*)* @agp_generic_alloc_page, i32 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)* @agp_generic_alloc_pages, void (%struct.page*, i32)* @agp_generic_destroy_page, void (%struct.agp_memory*)* @agp_generic_destroy_pages, i32 (%struct.agp_bridge_data*, i32)* null }, align 8, !dbg !3124
@.str.2 = private unnamed_addr constant [18 x i8] c"Intel %s Chipset\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"set gfx device dma mask %d-bit failed!\0A\00", align 1
@__UNIQUE_ID_author255 = internal constant [44 x i8] c"intel_gtt.author=Dave Jones, Various @Intel\00", section ".modinfo", align 1, !dbg !3062
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"intel_gtt.file=drivers/char/agp/intel-gtt\00", section ".modinfo", align 1, !dbg !3065
@__UNIQUE_ID_license257 = internal constant [44 x i8] c"intel_gtt.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !3070
@.str.4 = private unnamed_addr constant [5 x i8] c"i810\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"i815\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"830M\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"845G\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"854\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"855GM\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"865\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"E7221 (i915)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"915G\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"915GM\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"945G\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"945GM\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"945GME\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"946GZ\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"G35\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"965Q\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"965G\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"965GM\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"965GME/GLE\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"G33\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Q35\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Q33\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"GMA3150\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"GM45\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Eaglelake\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Q45/Q43\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"G45/G43\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"B43\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"G41\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"HD Graphics\00", align 1
@i81x_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 1, i8 8, i8 2, i32 ()* @i810_setup, void ()* @i810_cleanup, void (i64, i32, i32)* @i810_write_entry, i1 (i32)* @i830_check_flags, void ()* null }, align 8, !dbg !3108
@.str.35 = private unnamed_addr constant [34 x i8] c"detected 4MB dedicated video ram\0A\00", align 1
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@i8xx_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 2, i8 8, i8 2, i32 ()* @i830_setup, void ()* @i830_cleanup, void (i64, i32, i32)* @i830_write_entry, i1 (i32)* @i830_check_flags, void ()* @i830_chipset_flush }, align 8, !dbg !3110
@jiffies = external dso_local global i64, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@i915_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 3, i8 8, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i830_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3112
@.str.38 = private unnamed_addr constant [17 x i8] c"Intel Flush Page\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"can't ioremap flush page - no chipset flushing\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@pci_mem_start = external dso_local global i64, align 8
@i965_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 4, i8 72, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i965_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3114
@g33_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 3, i8 65, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i965_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3116
@pineview_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 3, i8 67, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i965_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3118
@g4x_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 5, i8 64, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i965_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3120
@ironlake_gtt_driver = internal constant { i8, i8, i8, i32 ()*, void ()*, void (i64, i32, i32)*, i1 (i32)*, void ()* } { i8 5, i8 68, i8 2, i32 ()* @i9xx_setup, void ()* @i9xx_cleanup, void (i64, i32, i32)* @i965_write_entry, i1 (i32)* @i830_check_flags, void ()* @i9xx_chipset_flush }, align 8, !dbg !3122
@intel_fake_agp_sizes = internal constant [5 x %struct.aper_size_info_fixed] [%struct.aper_size_info_fixed { i32 32, i32 8192, i32 3 }, %struct.aper_size_info_fixed { i32 64, i32 16384, i32 4 }, %struct.aper_size_info_fixed { i32 128, i32 32768, i32 5 }, %struct.aper_size_info_fixed { i32 256, i32 65536, i32 6 }, %struct.aper_size_info_fixed { i32 512, i32 131072, i32 7 }], align 16, !dbg !4757
@agp_bridge = external dso_local global %struct.agp_bridge_data*, align 8
@.str.45 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1
@vmemmap_base = external dso_local global i64, align 8
@.str.46 = private unnamed_addr constant [44 x i8] c"detected gtt size: %dK total, %dK mappable\0A\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"unknown page table size, assuming 512KB\0A\00", align 1
@intel_gtt_stolen_size.ddt = internal constant [4 x i32] [i32 0, i32 16, i32 32, i32 64], align 16, !dbg !4768
@.str.48 = private unnamed_addr constant [26 x i8] c"detected %lluK %s memory\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"stolen\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"no pre-allocated video memory detected\0A\00", align 1
@llvm.used = appending global [3 x i8*] [i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_author255, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file256, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_license257, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @intel_enable_gtt() #0 !dbg !4805 {
entry:
  %retval = alloca i1, align 1
  %reg = alloca i8*, align 8
  %gmch_ctrl = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i8** %reg, metadata !4806, metadata !DIExpression()), !dbg !4807
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4808
  %1 = bitcast %struct.intel_gtt_driver* %0 to i32*, !dbg !4808
  %bf.load = load i32, i32* %1, align 8, !dbg !4808
  %bf.clear = and i32 %bf.load, 255, !dbg !4808
  %cmp = icmp eq i32 %bf.clear, 2, !dbg !4810
  br i1 %cmp, label %if.then, label %if.end9, !dbg !4811

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i16* %gmch_ctrl, metadata !4812, metadata !DIExpression()), !dbg !4814
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !4815
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %2, i32 82, i16* %gmch_ctrl) #7, !dbg !4816
  %3 = load i16, i16* %gmch_ctrl, align 2, !dbg !4817
  %conv = zext i16 %3 to i32, !dbg !4817
  %or = or i32 %conv, 4, !dbg !4817
  %conv1 = trunc i32 %or to i16, !dbg !4817
  store i16 %conv1, i16* %gmch_ctrl, align 2, !dbg !4817
  %4 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !4818
  %5 = load i16, i16* %gmch_ctrl, align 2, !dbg !4819
  %call2 = call i32 @pci_write_config_word(%struct.pci_dev* %4, i32 82, i16 zeroext %5) #7, !dbg !4820
  %6 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !4821
  %call3 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 82, i16* %gmch_ctrl) #7, !dbg !4822
  %7 = load i16, i16* %gmch_ctrl, align 2, !dbg !4823
  %conv4 = zext i16 %7 to i32, !dbg !4823
  %and = and i32 %conv4, 4, !dbg !4825
  %cmp5 = icmp eq i32 %and, 0, !dbg !4826
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !4827

if.then7:                                         ; preds = %if.then
  %8 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !4828
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4828
  %9 = load i16, i16* %gmch_ctrl, align 2, !dbg !4828
  %conv8 = zext i16 %9 to i32, !dbg !4828
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %conv8) #8, !dbg !4828
  store i1 false, i1* %retval, align 1, !dbg !4830
  br label %return, !dbg !4830

if.end:                                           ; preds = %if.then
  br label %if.end9, !dbg !4831

if.end9:                                          ; preds = %if.end, %entry
  %10 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4832
  %11 = bitcast %struct.intel_gtt_driver* %10 to i32*, !dbg !4832
  %bf.load10 = load i32, i32* %11, align 8, !dbg !4832
  %bf.clear11 = and i32 %bf.load10, 255, !dbg !4832
  %cmp12 = icmp sge i32 %bf.clear11, 3, !dbg !4834
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4835

if.then14:                                        ; preds = %if.end9
  %12 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !4836
  %add.ptr = getelementptr i8, i8* %12, i64 8560, !dbg !4837
  call void @writel(i32 0, i8* %add.ptr) #7, !dbg !4838
  br label %if.end15, !dbg !4838

if.end15:                                         ; preds = %if.then14, %if.end9
  %13 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !4839
  %add.ptr16 = getelementptr i8, i8* %13, i64 8224, !dbg !4840
  store i8* %add.ptr16, i8** %reg, align 8, !dbg !4841
  %14 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 5), align 8, !dbg !4842
  %15 = load i8*, i8** %reg, align 8, !dbg !4843
  call void @writel(i32 %14, i8* %15) #7, !dbg !4844
  %16 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4845
  %17 = bitcast %struct.intel_gtt_driver* %16 to i32*, !dbg !4845
  %bf.load17 = load i32, i32* %17, align 8, !dbg !4845
  %bf.lshr = lshr i32 %bf.load17, 11, !dbg !4845
  %bf.clear18 = and i32 %bf.lshr, 1, !dbg !4845
  %tobool = icmp ne i32 %bf.clear18, 0, !dbg !4845
  br i1 %tobool, label %land.lhs.true, label %if.end26, !dbg !4847

land.lhs.true:                                    ; preds = %if.end15
  %18 = load i8*, i8** %reg, align 8, !dbg !4848
  %call19 = call i32 @readl(i8* %18) #7, !dbg !4849
  %and20 = and i32 %call19, 1, !dbg !4850
  %cmp21 = icmp eq i32 %and20, 0, !dbg !4851
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !4852

if.then23:                                        ; preds = %land.lhs.true
  %19 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !4853
  %dev24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 41, !dbg !4853
  %20 = load i8*, i8** %reg, align 8, !dbg !4853
  %call25 = call i32 @readl(i8* %20) #7, !dbg !4853
  %21 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 5), align 8, !dbg !4853
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %call25, i32 %21) #8, !dbg !4853
  store i1 false, i1* %retval, align 1, !dbg !4855
  br label %return, !dbg !4855

if.end26:                                         ; preds = %land.lhs.true, %if.end15
  %22 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4856
  %23 = bitcast %struct.intel_gtt_driver* %22 to i32*, !dbg !4856
  %bf.load27 = load i32, i32* %23, align 8, !dbg !4856
  %bf.clear28 = and i32 %bf.load27, 255, !dbg !4856
  %cmp29 = icmp sge i32 %bf.clear28, 3, !dbg !4858
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !4859

if.then31:                                        ; preds = %if.end26
  %24 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !4860
  %add.ptr32 = getelementptr i8, i8* %24, i64 8560, !dbg !4861
  call void @writel(i32 0, i8* %add.ptr32) #7, !dbg !4862
  br label %if.end33, !dbg !4862

if.end33:                                         ; preds = %if.then31, %if.end26
  store i1 true, i1* %retval, align 1, !dbg !4863
  br label %return, !dbg !4863

return:                                           ; preds = %if.end33, %if.then23, %if.then7
  %25 = load i1, i1* %retval, align 1, !dbg !4864
  ret i1 %25, !dbg !4864
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !4865 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4873, metadata !DIExpression()), !dbg !4872
  %0 = load i32, i32* %val.addr, align 4, !dbg !4872
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4872
  %2 = bitcast i8* %1 to i32*, !dbg !4872
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !4872, !srcloc !4874
  ret void, !dbg !4872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !4875 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4882, metadata !DIExpression()), !dbg !4881
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4881
  %1 = bitcast i8* %0 to i32*, !dbg !4881
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !4881, !srcloc !4883
  store i32 %2, i32* %ret, align 4, !dbg !4881
  %3 = load i32, i32* %ret, align 4, !dbg !4881
  ret i32 %3, !dbg !4881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gtt_insert_page(i64 %addr, i32 %pg, i32 %flags) #0 !dbg !4884 {
entry:
  %addr.addr = alloca i64, align 8
  %pg.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i32 %pg, i32* %pg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pg.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4891
  %write_entry = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %0, i32 0, i32 3, !dbg !4892
  %1 = load void (i64, i32, i32)*, void (i64, i32, i32)** %write_entry, align 8, !dbg !4892
  %2 = load i64, i64* %addr.addr, align 8, !dbg !4893
  %3 = load i32, i32* %pg.addr, align 4, !dbg !4894
  %4 = load i32, i32* %flags.addr, align 4, !dbg !4895
  call void %1(i64 %2, i32 %3, i32 %4) #7, !dbg !4896
  %5 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !4897
  %6 = load i32, i32* %pg.addr, align 4, !dbg !4898
  %idx.ext = zext i32 %6 to i64, !dbg !4899
  %add.ptr = getelementptr i32, i32* %5, i64 %idx.ext, !dbg !4899
  %7 = bitcast i32* %add.ptr to i8*, !dbg !4900
  %call = call i32 @readl(i8* %7) #7, !dbg !4901
  %8 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4902
  %chipset_flush = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %8, i32 0, i32 5, !dbg !4904
  %9 = load void ()*, void ()** %chipset_flush, align 8, !dbg !4904
  %tobool = icmp ne void ()* %9, null, !dbg !4905
  br i1 %tobool, label %if.then, label %if.end, !dbg !4906

if.then:                                          ; preds = %entry
  %10 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4907
  %chipset_flush1 = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %10, i32 0, i32 5, !dbg !4908
  %11 = load void ()*, void ()** %chipset_flush1, align 8, !dbg !4908
  call void %11() #7, !dbg !4909
  br label %if.end, !dbg !4909

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gtt_insert_sg_entries(%struct.sg_table* %st, i32 %pg_start, i32 %flags) #0 !dbg !4911 {
entry:
  %st.addr = alloca %struct.sg_table*, align 8
  %pg_start.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %sg = alloca %struct.scatterlist*, align 8
  %len = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %addr = alloca i64, align 8
  store %struct.sg_table* %st, %struct.sg_table** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %st.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  store i32 %pg_start, i32* %pg_start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pg_start.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata i32* %m, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load i32, i32* %pg_start.addr, align 4, !dbg !4936
  store i32 %0, i32* %j, align 4, !dbg !4937
  store i32 0, i32* %i, align 4, !dbg !4938
  %1 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !4938
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !4938
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !4938
  store %struct.scatterlist* %2, %struct.scatterlist** %sg, align 8, !dbg !4938
  br label %for.cond, !dbg !4938

for.cond:                                         ; preds = %for.inc5, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4940
  %4 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !4940
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %4, i32 0, i32 1, !dbg !4940
  %5 = load i32, i32* %nents, align 8, !dbg !4940
  %cmp = icmp ult i32 %3, %5, !dbg !4940
  br i1 %cmp, label %for.body, label %for.end7, !dbg !4938

for.body:                                         ; preds = %for.cond
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4942
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i32 0, i32 4, !dbg !4942
  %7 = load i32, i32* %dma_length, align 8, !dbg !4942
  %shr = lshr i32 %7, 12, !dbg !4944
  store i32 %shr, i32* %len, align 4, !dbg !4945
  store i32 0, i32* %m, align 4, !dbg !4946
  br label %for.cond1, !dbg !4948

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %m, align 4, !dbg !4949
  %9 = load i32, i32* %len, align 4, !dbg !4951
  %cmp2 = icmp ult i32 %8, %9, !dbg !4952
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !4953

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !4954, metadata !DIExpression()), !dbg !4956
  %10 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4957
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %10, i32 0, i32 3, !dbg !4957
  %11 = load i64, i64* %dma_address, align 8, !dbg !4957
  %12 = load i32, i32* %m, align 4, !dbg !4958
  %shl = shl i32 %12, 12, !dbg !4959
  %conv = zext i32 %shl to i64, !dbg !4960
  %add = add i64 %11, %conv, !dbg !4961
  store i64 %add, i64* %addr, align 8, !dbg !4956
  %13 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4962
  %write_entry = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %13, i32 0, i32 3, !dbg !4963
  %14 = load void (i64, i32, i32)*, void (i64, i32, i32)** %write_entry, align 8, !dbg !4963
  %15 = load i64, i64* %addr, align 8, !dbg !4964
  %16 = load i32, i32* %j, align 4, !dbg !4965
  %17 = load i32, i32* %flags.addr, align 4, !dbg !4966
  call void %14(i64 %15, i32 %16, i32 %17) #7, !dbg !4967
  %18 = load i32, i32* %j, align 4, !dbg !4968
  %inc = add i32 %18, 1, !dbg !4968
  store i32 %inc, i32* %j, align 4, !dbg !4968
  br label %for.inc, !dbg !4969

for.inc:                                          ; preds = %for.body3
  %19 = load i32, i32* %m, align 4, !dbg !4970
  %inc4 = add i32 %19, 1, !dbg !4970
  store i32 %inc4, i32* %m, align 4, !dbg !4970
  br label %for.cond1, !dbg !4971, !llvm.loop !4972

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !4974

for.inc5:                                         ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !dbg !4940
  %inc6 = add i32 %20, 1, !dbg !4940
  store i32 %inc6, i32* %i, align 4, !dbg !4940
  %21 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4940
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* %21) #7, !dbg !4940
  store %struct.scatterlist* %call, %struct.scatterlist** %sg, align 8, !dbg !4940
  br label %for.cond, !dbg !4940, !llvm.loop !4975

for.end7:                                         ; preds = %for.cond
  %22 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !4977
  %23 = load i32, i32* %j, align 4, !dbg !4978
  %idx.ext = sext i32 %23 to i64, !dbg !4979
  %add.ptr = getelementptr i32, i32* %22, i64 %idx.ext, !dbg !4979
  %add.ptr8 = getelementptr i32, i32* %add.ptr, i64 -1, !dbg !4980
  %24 = bitcast i32* %add.ptr8 to i8*, !dbg !4981
  %call9 = call i32 @readl(i8* %24) #7, !dbg !4982
  %25 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4983
  %chipset_flush = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %25, i32 0, i32 5, !dbg !4985
  %26 = load void ()*, void ()** %chipset_flush, align 8, !dbg !4985
  %tobool = icmp ne void ()* %26, null, !dbg !4986
  br i1 %tobool, label %if.then, label %if.end, !dbg !4987

if.then:                                          ; preds = %for.end7
  %27 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !4988
  %chipset_flush10 = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %27, i32 0, i32 5, !dbg !4989
  %28 = load void ()*, void ()** %chipset_flush10, align 8, !dbg !4989
  call void %28() #7, !dbg !4990
  br label %if.end, !dbg !4990

if.end:                                           ; preds = %if.then, %for.end7
  ret void, !dbg !4991
}

; Function Attrs: noredzone
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gtt_clear_range(i32 %first_entry, i32 %num_entries) #0 !dbg !4992 {
entry:
  %first_entry.addr = alloca i32, align 4
  %num_entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %first_entry, i32* %first_entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %first_entry.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  store i32 %num_entries, i32* %num_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_entries.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load i32, i32* %first_entry.addr, align 4, !dbg !5001
  store i32 %0, i32* %i, align 4, !dbg !5003
  br label %for.cond, !dbg !5004

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5005
  %2 = load i32, i32* %first_entry.addr, align 4, !dbg !5007
  %3 = load i32, i32* %num_entries.addr, align 4, !dbg !5008
  %add = add i32 %2, %3, !dbg !5009
  %cmp = icmp ult i32 %1, %add, !dbg !5010
  br i1 %cmp, label %for.body, label %for.end, !dbg !5011

for.body:                                         ; preds = %for.cond
  %4 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5012
  %write_entry = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %4, i32 0, i32 3, !dbg !5014
  %5 = load void (i64, i32, i32)*, void (i64, i32, i32)** %write_entry, align 8, !dbg !5014
  %6 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 14), align 8, !dbg !5015
  %7 = load i32, i32* %i, align 4, !dbg !5016
  call void %5(i64 %6, i32 %7, i32 0) #7, !dbg !5017
  br label %for.inc, !dbg !5018

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !5019
  %inc = add i32 %8, 1, !dbg !5019
  store i32 %inc, i32* %i, align 4, !dbg !5019
  br label %for.cond, !dbg !5020, !llvm.loop !5021

for.end:                                          ; preds = %for.cond
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5023, !srcloc !5024
  ret void, !dbg !5025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_gmch_probe(%struct.pci_dev* %bridge_pdev, %struct.pci_dev* %gpu_pdev, %struct.agp_bridge_data* %bridge) #0 !dbg !5026 {
entry:
  %retval = alloca i32, align 4
  %bridge_pdev.addr = alloca %struct.pci_dev*, align 8
  %gpu_pdev.addr = alloca %struct.pci_dev*, align 8
  %bridge.addr = alloca %struct.agp_bridge_data*, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.pci_dev* %bridge_pdev, %struct.pci_dev** %bridge_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %bridge_pdev.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  store %struct.pci_dev* %gpu_pdev, %struct.pci_dev** %gpu_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %gpu_pdev.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  store %struct.agp_bridge_data* %bridge, %struct.agp_bridge_data** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5035, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i32 0, i32* %i, align 4, !dbg !5039
  br label %for.cond, !dbg !5041

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5042
  %idxprom = sext i32 %0 to i64, !dbg !5044
  %arrayidx = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom, !dbg !5044
  %name = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx, i32 0, i32 1, !dbg !5045
  %1 = load i8*, i8** %name, align 8, !dbg !5045
  %cmp = icmp ne i8* %1, null, !dbg !5046
  br i1 %cmp, label %for.body, label %for.end, !dbg !5047

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pci_dev*, %struct.pci_dev** %gpu_pdev.addr, align 8, !dbg !5048
  %tobool = icmp ne %struct.pci_dev* %2, null, !dbg !5048
  br i1 %tobool, label %if.then, label %if.else, !dbg !5051

if.then:                                          ; preds = %for.body
  %3 = load %struct.pci_dev*, %struct.pci_dev** %gpu_pdev.addr, align 8, !dbg !5052
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 8, !dbg !5055
  %4 = load i16, i16* %device, align 2, !dbg !5055
  %conv = zext i16 %4 to i32, !dbg !5052
  %5 = load i32, i32* %i, align 4, !dbg !5056
  %idxprom1 = sext i32 %5 to i64, !dbg !5057
  %arrayidx2 = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom1, !dbg !5057
  %gmch_chip_id = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx2, i32 0, i32 0, !dbg !5058
  %6 = load i32, i32* %gmch_chip_id, align 8, !dbg !5058
  %cmp3 = icmp eq i32 %conv, %6, !dbg !5059
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !5060

if.then5:                                         ; preds = %if.then
  %7 = load %struct.pci_dev*, %struct.pci_dev** %gpu_pdev.addr, align 8, !dbg !5061
  %call = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %7) #7, !dbg !5063
  store %struct.pci_dev* %call, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5064
  %8 = load i32, i32* %i, align 4, !dbg !5065
  %idxprom6 = sext i32 %8 to i64, !dbg !5066
  %arrayidx7 = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom6, !dbg !5066
  %gtt_driver = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx7, i32 0, i32 2, !dbg !5067
  %9 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** %gtt_driver, align 8, !dbg !5067
  store %struct.intel_gtt_driver* %9, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5068
  br label %for.end, !dbg !5069

if.end:                                           ; preds = %if.then
  br label %if.end19, !dbg !5070

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !5071
  %idxprom8 = sext i32 %10 to i64, !dbg !5073
  %arrayidx9 = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom8, !dbg !5073
  %gmch_chip_id10 = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx9, i32 0, i32 0, !dbg !5074
  %11 = load i32, i32* %gmch_chip_id10, align 8, !dbg !5074
  %conv11 = trunc i32 %11 to i16, !dbg !5073
  %call12 = call i32 @find_gmch(i16 zeroext %conv11) #7, !dbg !5075
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5075
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !5076

if.then14:                                        ; preds = %if.else
  %12 = load i32, i32* %i, align 4, !dbg !5077
  %idxprom15 = sext i32 %12 to i64, !dbg !5079
  %arrayidx16 = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom15, !dbg !5079
  %gtt_driver17 = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx16, i32 0, i32 2, !dbg !5080
  %13 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** %gtt_driver17, align 8, !dbg !5080
  store %struct.intel_gtt_driver* %13, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5081
  br label %for.end, !dbg !5082

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %for.inc, !dbg !5083

for.inc:                                          ; preds = %if.end19
  %14 = load i32, i32* %i, align 4, !dbg !5084
  %inc = add i32 %14, 1, !dbg !5084
  store i32 %inc, i32* %i, align 4, !dbg !5084
  br label %for.cond, !dbg !5085, !llvm.loop !5086

for.end:                                          ; preds = %if.then14, %if.then5, %for.cond
  %15 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5088
  %tobool20 = icmp ne %struct.intel_gtt_driver* %15, null, !dbg !5090
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !5091

if.then21:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5092
  br label %return, !dbg !5092

if.end22:                                         ; preds = %for.end
  %16 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !5093
  %tobool23 = icmp ne %struct.agp_bridge_data* %16, null, !dbg !5093
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !5095

if.then24:                                        ; preds = %if.end22
  %17 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5096
  %18 = bitcast %struct.intel_gtt_driver* %17 to i32*, !dbg !5096
  %bf.load = load i32, i32* %18, align 8, !dbg !5096
  %bf.clear = and i32 %bf.load, 255, !dbg !5096
  %cmp25 = icmp sgt i32 %bf.clear, 1, !dbg !5099
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5100

if.then27:                                        ; preds = %if.then24
  store i32 0, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end28:                                         ; preds = %if.then24
  %19 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !5102
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %19, i32 0, i32 1, !dbg !5103
  store %struct.agp_bridge_driver* @intel_fake_agp_driver, %struct.agp_bridge_driver** %driver, align 8, !dbg !5104
  %20 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !5105
  %dev_private_data = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %20, i32 0, i32 5, !dbg !5106
  store i8* bitcast (%struct._intel_private* @intel_private to i8*), i8** %dev_private_data, align 8, !dbg !5107
  %21 = load %struct.pci_dev*, %struct.pci_dev** %bridge_pdev.addr, align 8, !dbg !5108
  %22 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !5109
  %dev = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %22, i32 0, i32 6, !dbg !5110
  store %struct.pci_dev* %21, %struct.pci_dev** %dev, align 8, !dbg !5111
  br label %if.end29, !dbg !5112

if.end29:                                         ; preds = %if.end28, %if.end22
  %23 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 15), align 8, !dbg !5113
  %inc30 = add i32 %23, 1, !dbg !5113
  store i32 %inc30, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 15), align 8, !dbg !5113
  %tobool31 = icmp ne i32 %23, 0, !dbg !5113
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5115

if.then32:                                        ; preds = %if.end29
  store i32 1, i32* %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end33:                                         ; preds = %if.end29
  %24 = load %struct.pci_dev*, %struct.pci_dev** %bridge_pdev.addr, align 8, !dbg !5117
  %call34 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %24) #7, !dbg !5118
  store %struct.pci_dev* %call34, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5119
  %25 = load %struct.pci_dev*, %struct.pci_dev** %bridge_pdev.addr, align 8, !dbg !5120
  %dev35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 41, !dbg !5120
  %26 = load i32, i32* %i, align 4, !dbg !5120
  %idxprom36 = sext i32 %26 to i64, !dbg !5120
  %arrayidx37 = getelementptr [36 x %struct.intel_gtt_driver_description], [36 x %struct.intel_gtt_driver_description]* @intel_gtt_chipsets, i64 0, i64 %idxprom36, !dbg !5120
  %name38 = getelementptr inbounds %struct.intel_gtt_driver_description, %struct.intel_gtt_driver_description* %arrayidx37, i32 0, i32 1, !dbg !5120
  %27 = load i8*, i8** %name38, align 8, !dbg !5120
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %27) #8, !dbg !5120
  %28 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %bridge.addr, align 8, !dbg !5121
  %tobool39 = icmp ne %struct.agp_bridge_data* %28, null, !dbg !5121
  br i1 %tobool39, label %if.then40, label %if.end61, !dbg !5123

if.then40:                                        ; preds = %if.end33
  %29 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5124
  %30 = bitcast %struct.intel_gtt_driver* %29 to i32*, !dbg !5126
  %bf.load41 = load i32, i32* %30, align 8, !dbg !5126
  %bf.lshr = lshr i32 %bf.load41, 12, !dbg !5126
  %bf.clear42 = and i32 %bf.lshr, 255, !dbg !5126
  store i32 %bf.clear42, i32* %mask, align 4, !dbg !5127
  %31 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5128
  %32 = load i32, i32* %mask, align 4, !dbg !5130
  %cmp43 = icmp eq i32 %32, 64, !dbg !5130
  br i1 %cmp43, label %cond.true, label %cond.false, !dbg !5130

cond.true:                                        ; preds = %if.then40
  br label %cond.end, !dbg !5130

cond.false:                                       ; preds = %if.then40
  %33 = load i32, i32* %mask, align 4, !dbg !5130
  %sh_prom = zext i32 %33 to i64, !dbg !5130
  %shl = shl i64 1, %sh_prom, !dbg !5130
  %sub = sub i64 %shl, 1, !dbg !5130
  br label %cond.end, !dbg !5130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub, %cond.false ], !dbg !5130
  %call45 = call i32 @pci_set_dma_mask(%struct.pci_dev* %31, i64 %cond) #7, !dbg !5131
  %tobool46 = icmp ne i32 %call45, 0, !dbg !5131
  br i1 %tobool46, label %if.then47, label %if.else49, !dbg !5132

if.then47:                                        ; preds = %cond.end
  %34 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5133
  %dev48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 41, !dbg !5133
  %35 = load i32, i32* %mask, align 4, !dbg !5133
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %35) #8, !dbg !5133
  br label %if.end60, !dbg !5133

if.else49:                                        ; preds = %cond.end
  %36 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5134
  %37 = load i32, i32* %mask, align 4, !dbg !5135
  %cmp50 = icmp eq i32 %37, 64, !dbg !5135
  br i1 %cmp50, label %cond.true52, label %cond.false53, !dbg !5135

cond.true52:                                      ; preds = %if.else49
  br label %cond.end57, !dbg !5135

cond.false53:                                     ; preds = %if.else49
  %38 = load i32, i32* %mask, align 4, !dbg !5135
  %sh_prom54 = zext i32 %38 to i64, !dbg !5135
  %shl55 = shl i64 1, %sh_prom54, !dbg !5135
  %sub56 = sub i64 %shl55, 1, !dbg !5135
  br label %cond.end57, !dbg !5135

cond.end57:                                       ; preds = %cond.false53, %cond.true52
  %cond58 = phi i64 [ -1, %cond.true52 ], [ %sub56, %cond.false53 ], !dbg !5135
  %call59 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %36, i64 %cond58) #7, !dbg !5136
  br label %if.end60

if.end60:                                         ; preds = %cond.end57, %if.then47
  br label %if.end61, !dbg !5137

if.end61:                                         ; preds = %if.end60, %if.end33
  %call62 = call i32 @intel_gtt_init() #7, !dbg !5138
  %cmp63 = icmp ne i32 %call62, 0, !dbg !5140
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !5141

if.then65:                                        ; preds = %if.end61
  call void @intel_gmch_remove() #7, !dbg !5142
  store i32 0, i32* %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

if.end66:                                         ; preds = %if.end61
  store i32 1, i32* %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

return:                                           ; preds = %if.end66, %if.then65, %if.then32, %if.then27, %if.then21
  %39 = load i32, i32* %retval, align 4, !dbg !5146
  ret i32 %39, !dbg !5146
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_dev_get(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @find_gmch(i16 zeroext %device) #0 !dbg !5147 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca i16, align 2
  %gmch_device = alloca %struct.pci_dev*, align 8
  store i16 %device, i16* %device.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %device.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %gmch_device, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load i16, i16* %device.addr, align 2, !dbg !5154
  %conv = zext i16 %0 to i32, !dbg !5154
  %call = call %struct.pci_dev* @pci_get_device(i32 32902, i32 %conv, %struct.pci_dev* null) #7, !dbg !5155
  store %struct.pci_dev* %call, %struct.pci_dev** %gmch_device, align 8, !dbg !5156
  %1 = load %struct.pci_dev*, %struct.pci_dev** %gmch_device, align 8, !dbg !5157
  %tobool = icmp ne %struct.pci_dev* %1, null, !dbg !5157
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5159

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %gmch_device, align 8, !dbg !5160
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !5160
  %3 = load i32, i32* %devfn, align 8, !dbg !5160
  %and = and i32 %3, 7, !dbg !5160
  %cmp = icmp ne i32 %and, 0, !dbg !5161
  br i1 %cmp, label %if.then, label %if.end, !dbg !5162

if.then:                                          ; preds = %land.lhs.true
  %4 = load i16, i16* %device.addr, align 2, !dbg !5163
  %conv2 = zext i16 %4 to i32, !dbg !5163
  %5 = load %struct.pci_dev*, %struct.pci_dev** %gmch_device, align 8, !dbg !5165
  %call3 = call %struct.pci_dev* @pci_get_device(i32 32902, i32 %conv2, %struct.pci_dev* %5) #7, !dbg !5166
  store %struct.pci_dev* %call3, %struct.pci_dev** %gmch_device, align 8, !dbg !5167
  br label %if.end, !dbg !5168

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %gmch_device, align 8, !dbg !5169
  %tobool4 = icmp ne %struct.pci_dev* %6, null, !dbg !5169
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5171

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end6:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %gmch_device, align 8, !dbg !5173
  store %struct.pci_dev* %7, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5174
  store i32 1, i32* %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

return:                                           ; preds = %if.end6, %if.then5
  %8 = load i32, i32* %retval, align 4, !dbg !5176
  ret i32 %8, !dbg !5176
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_set_dma_mask(%struct.pci_dev* %dev, i64 %mask) #0 !dbg !5177 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5185
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5186
  %1 = load i64, i64* %mask.addr, align 8, !dbg !5187
  %call = call i32 @dma_set_mask(%struct.device* %dev1, i64 %1) #7, !dbg !5188
  ret i32 %call, !dbg !5189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %dev, i64 %mask) #0 !dbg !5190 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5195
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5196
  %1 = load i64, i64* %mask.addr, align 8, !dbg !5197
  %call = call i32 @dma_set_coherent_mask(%struct.device* %dev1, i64 %1) #7, !dbg !5198
  ret i32 %call, !dbg !5199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_gtt_init() #0 !dbg !5200 {
entry:
  %retval = alloca i32, align 4
  %gtt_map_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %bar = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gtt_map_size, metadata !5201, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5203, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.declare(metadata i32* %bar, metadata !5205, metadata !DIExpression()), !dbg !5206
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5207
  %setup = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %0, i32 0, i32 1, !dbg !5208
  %1 = load i32 ()*, i32 ()** %setup, align 8, !dbg !5208
  %call = call i32 %1() #7, !dbg !5209
  store i32 %call, i32* %ret, align 4, !dbg !5210
  %2 = load i32, i32* %ret, align 4, !dbg !5211
  %cmp = icmp ne i32 %2, 0, !dbg !5213
  br i1 %cmp, label %if.then, label %if.end, !dbg !5214

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !5215
  store i32 %3, i32* %retval, align 4, !dbg !5216
  br label %return, !dbg !5216

if.end:                                           ; preds = %entry
  %call1 = call i32 @intel_gtt_mappable_entries() #7, !dbg !5217
  store i32 %call1, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !5218
  %call2 = call i32 @intel_gtt_total_entries() #7, !dbg !5219
  store i32 %call2, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 19), align 8, !dbg !5220
  %4 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5221
  %add.ptr = getelementptr i8, i8* %4, i64 8224, !dbg !5222
  %call3 = call i32 @readl(i8* %add.ptr) #7, !dbg !5223
  %and = and i32 %call3, -2, !dbg !5224
  store i32 %and, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 5), align 8, !dbg !5225
  %5 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5226
  %6 = bitcast %struct.intel_gtt_driver* %5 to i32*, !dbg !5226
  %bf.load = load i32, i32* %6, align 8, !dbg !5226
  %bf.lshr = lshr i32 %bf.load, 11, !dbg !5226
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5226
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !5226
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5228

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 5), align 8, !dbg !5229
  %or = or i32 %7, 1, !dbg !5229
  store i32 %or, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 5), align 8, !dbg !5229
  br label %if.end5, !dbg !5230

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5231
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !5231
  %9 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 19), align 8, !dbg !5231
  %mul = mul i32 %9, 4, !dbg !5231
  %10 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !5231
  %mul6 = mul i32 %10, 4, !dbg !5231
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 %mul, i32 %mul6) #8, !dbg !5231
  %11 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 19), align 8, !dbg !5232
  %mul7 = mul i32 %11, 4, !dbg !5233
  store i32 %mul7, i32* %gtt_map_size, align 4, !dbg !5234
  store i32* null, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5235
  %call8 = call zeroext i1 @intel_gtt_can_wc() #7, !dbg !5236
  br i1 %call8, label %if.then9, label %if.end11, !dbg !5238

if.then9:                                         ; preds = %if.end5
  %12 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5239
  %13 = load i32, i32* %gtt_map_size, align 4, !dbg !5240
  %conv = zext i32 %13 to i64, !dbg !5240
  %call10 = call i8* @ioremap_wc(i64 %12, i64 %conv) #7, !dbg !5241
  %14 = bitcast i8* %call10 to i32*, !dbg !5241
  store i32* %14, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5242
  br label %if.end11, !dbg !5243

if.end11:                                         ; preds = %if.then9, %if.end5
  %15 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5244
  %cmp12 = icmp eq i32* %15, null, !dbg !5246
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !5247

if.then14:                                        ; preds = %if.end11
  %16 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5248
  %17 = load i32, i32* %gtt_map_size, align 4, !dbg !5249
  %conv15 = zext i32 %17 to i64, !dbg !5249
  %call16 = call i8* @ioremap(i64 %16, i64 %conv15) #7, !dbg !5250
  %18 = bitcast i8* %call16 to i32*, !dbg !5250
  store i32* %18, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5251
  br label %if.end17, !dbg !5252

if.end17:                                         ; preds = %if.then14, %if.end11
  %19 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5253
  %cmp18 = icmp eq i32* %19, null, !dbg !5255
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5256

if.then20:                                        ; preds = %if.end17
  %20 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5257
  %cleanup = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %20, i32 0, i32 2, !dbg !5259
  %21 = load void ()*, void ()** %cleanup, align 8, !dbg !5259
  call void %21() #7, !dbg !5260
  %22 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5261
  call void @iounmap(i8* %22) #7, !dbg !5262
  store i32 -12, i32* %retval, align 4, !dbg !5263
  br label %return, !dbg !5263

if.end21:                                         ; preds = %if.end17
  call void @global_cache_flush() #7, !dbg !5264
  %call22 = call i64 @intel_gtt_stolen_size() #7, !dbg !5265
  store i64 %call22, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 18), align 8, !dbg !5266
  %bf.load23 = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !5267
  %bf.clear24 = and i8 %bf.load23, -2, !dbg !5267
  store i8 %bf.clear24, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !5267
  %call25 = call i32 @intel_gtt_setup_scratch_page() #7, !dbg !5268
  store i32 %call25, i32* %ret, align 4, !dbg !5269
  %23 = load i32, i32* %ret, align 4, !dbg !5270
  %cmp26 = icmp ne i32 %23, 0, !dbg !5272
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5273

if.then28:                                        ; preds = %if.end21
  call void @intel_gtt_cleanup() #7, !dbg !5274
  %24 = load i32, i32* %ret, align 4, !dbg !5276
  store i32 %24, i32* %retval, align 4, !dbg !5277
  br label %return, !dbg !5277

if.end29:                                         ; preds = %if.end21
  %25 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5278
  %26 = bitcast %struct.intel_gtt_driver* %25 to i32*, !dbg !5278
  %bf.load30 = load i32, i32* %26, align 8, !dbg !5278
  %bf.clear31 = and i32 %bf.load30, 255, !dbg !5278
  %cmp32 = icmp sle i32 %bf.clear31, 2, !dbg !5280
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !5281

if.then34:                                        ; preds = %if.end29
  store i32 0, i32* %bar, align 4, !dbg !5282
  br label %if.end35, !dbg !5283

if.else:                                          ; preds = %if.end29
  store i32 2, i32* %bar, align 4, !dbg !5284
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  %27 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5285
  %28 = load i32, i32* %bar, align 4, !dbg !5286
  %call36 = call i64 @pci_bus_address(%struct.pci_dev* %27, i32 %28) #7, !dbg !5287
  store i64 %call36, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 17), align 8, !dbg !5288
  store i32 0, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

return:                                           ; preds = %if.end35, %if.then28, %if.then20, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5290
  ret i32 %29, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gmch_remove() #0 !dbg !5291 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 15), align 8, !dbg !5292
  %dec = add i32 %0, -1, !dbg !5292
  store i32 %dec, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 15), align 8, !dbg !5292
  %tobool = icmp ne i32 %dec, 0, !dbg !5292
  br i1 %tobool, label %if.then, label %if.end, !dbg !5294

if.then:                                          ; preds = %entry
  br label %return, !dbg !5295

if.end:                                           ; preds = %entry
  %1 = load %struct.page*, %struct.page** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 13), align 8, !dbg !5296
  %tobool1 = icmp ne %struct.page* %1, null, !dbg !5298
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5299

if.then2:                                         ; preds = %if.end
  call void @intel_gtt_teardown_scratch_page() #7, !dbg !5300
  br label %if.end3, !dbg !5300

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5301
  %tobool4 = icmp ne %struct.pci_dev* %2, null, !dbg !5303
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5304

if.then5:                                         ; preds = %if.end3
  %3 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5305
  call void @pci_dev_put(%struct.pci_dev* %3) #7, !dbg !5306
  br label %if.end6, !dbg !5306

if.end6:                                          ; preds = %if.then5, %if.end3
  %4 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5307
  %tobool7 = icmp ne %struct.pci_dev* %4, null, !dbg !5309
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5310

if.then8:                                         ; preds = %if.end6
  %5 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5311
  call void @pci_dev_put(%struct.pci_dev* %5) #7, !dbg !5312
  br label %if.end9, !dbg !5312

if.end9:                                          ; preds = %if.then8, %if.end6
  store %struct.intel_gtt_driver* null, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5313
  br label %return, !dbg !5314

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gtt_get(i64* %gtt_total, i64* %mappable_base, i64* %mappable_end) #0 !dbg !5315 {
entry:
  %gtt_total.addr = alloca i64*, align 8
  %mappable_base.addr = alloca i64*, align 8
  %mappable_end.addr = alloca i64*, align 8
  store i64* %gtt_total, i64** %gtt_total.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %gtt_total.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store i64* %mappable_base, i64** %mappable_base.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mappable_base.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64* %mappable_end, i64** %mappable_end.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %mappable_end.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  %0 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 19), align 8, !dbg !5326
  %shl = shl i32 %0, 12, !dbg !5327
  %conv = zext i32 %shl to i64, !dbg !5328
  %1 = load i64*, i64** %gtt_total.addr, align 8, !dbg !5329
  store i64 %conv, i64* %1, align 8, !dbg !5330
  %2 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 17), align 8, !dbg !5331
  %3 = load i64*, i64** %mappable_base.addr, align 8, !dbg !5332
  store i64 %2, i64* %3, align 8, !dbg !5333
  %4 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !5334
  %shl1 = shl i32 %4, 12, !dbg !5335
  %conv2 = zext i32 %shl1 to i64, !dbg !5336
  %5 = load i64*, i64** %mappable_end.addr, align 8, !dbg !5337
  store i64 %conv2, i64* %5, align 8, !dbg !5338
  ret void, !dbg !5339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_gtt_chipset_flush() #0 !dbg !5340 {
entry:
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5341
  %chipset_flush = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %0, i32 0, i32 5, !dbg !5343
  %1 = load void ()*, void ()** %chipset_flush, align 8, !dbg !5343
  %tobool = icmp ne void ()* %1, null, !dbg !5344
  br i1 %tobool, label %if.then, label %if.end, !dbg !5345

if.then:                                          ; preds = %entry
  %2 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5346
  %chipset_flush1 = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %2, i32 0, i32 5, !dbg !5347
  %3 = load void ()*, void ()** %chipset_flush1, align 8, !dbg !5347
  call void %3() #7, !dbg !5348
  br label %if.end, !dbg !5348

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_gtt_teardown_scratch_page() #0 !dbg !5350 {
entry:
  %0 = load %struct.page*, %struct.page** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 13), align 8, !dbg !5351
  %call = call i32 @set_pages_wb(%struct.page* %0, i32 1) #7, !dbg !5352
  %bf.load = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !5353
  %bf.clear = and i8 %bf.load, 1, !dbg !5353
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5353
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5355
  br i1 %tobool, label %if.then, label %if.end, !dbg !5356

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5357
  %2 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 14), align 8, !dbg !5358
  call void @pci_unmap_page(%struct.pci_dev* %1, i64 %2, i64 4096, i32 0) #7, !dbg !5359
  br label %if.end, !dbg !5359

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.page*, %struct.page** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 13), align 8, !dbg !5360
  call void @__free_pages(%struct.page* %3, i32 0) #7, !dbg !5360
  ret void, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i810_setup() #0 !dbg !5362 {
entry:
  %retval = alloca i32, align 4
  %reg_addr = alloca i64, align 8
  %gtt_table = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i64* %reg_addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.declare(metadata i8** %gtt_table, metadata !5365, metadata !DIExpression()), !dbg !5366
  %call = call i64 @__get_free_pages(i32 3264, i32 4) #7, !dbg !5367
  %0 = inttoptr i64 %call to i8*, !dbg !5367
  store i8* %0, i8** %gtt_table, align 8, !dbg !5368
  %1 = load i8*, i8** %gtt_table, align 8, !dbg !5369
  %cmp = icmp eq i8* %1, null, !dbg !5371
  br i1 %cmp, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %gtt_table, align 8, !dbg !5374
  store i8* %2, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 10), align 8, !dbg !5375
  %3 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5376
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 44, !dbg !5376
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !5376
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5376
  %4 = load i64, i64* %start, align 8, !dbg !5376
  store i64 %4, i64* %reg_addr, align 8, !dbg !5377
  %5 = load i64, i64* %reg_addr, align 8, !dbg !5378
  %call1 = call i8* @ioremap(i64 %5, i64 65536) #7, !dbg !5379
  store i8* %call1, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5380
  %6 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5381
  %tobool = icmp ne i8* %6, null, !dbg !5383
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5384

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end3:                                          ; preds = %if.end
  %7 = load i8*, i8** %gtt_table, align 8, !dbg !5386
  %call4 = call i64 @virt_to_phys(i8* %7) #7, !dbg !5387
  %or = or i64 %call4, 1, !dbg !5388
  %conv = trunc i64 %or to i32, !dbg !5387
  %8 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5389
  %add.ptr = getelementptr i8, i8* %8, i64 8224, !dbg !5390
  call void @writel(i32 %conv, i8* %add.ptr) #7, !dbg !5391
  %9 = load i64, i64* %reg_addr, align 8, !dbg !5392
  %add = add i64 %9, 65536, !dbg !5393
  store i64 %add, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5394
  %10 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5395
  %add.ptr5 = getelementptr i8, i8* %10, i64 12288, !dbg !5397
  %call6 = call i32 @readl(i8* %add.ptr5) #7, !dbg !5398
  %and = and i32 %call6, 1, !dbg !5399
  %cmp7 = icmp eq i32 %and, 1, !dbg !5400
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5401

if.then9:                                         ; preds = %if.end3
  %11 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5402
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !5402
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !5402
  store i32 1024, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 8), align 4, !dbg !5404
  br label %if.end10, !dbg !5405

if.end10:                                         ; preds = %if.then9, %if.end3
  store i32 0, i32* %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

return:                                           ; preds = %if.end10, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5407
  ret i32 %12, !dbg !5407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i810_cleanup() #0 !dbg !5408 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5409
  %add.ptr = getelementptr i8, i8* %0, i64 8224, !dbg !5410
  call void @writel(i32 0, i8* %add.ptr) #7, !dbg !5411
  %1 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 10), align 8, !dbg !5412
  %2 = ptrtoint i8* %1 to i64, !dbg !5412
  call void @free_pages(i64 %2, i32 4) #7, !dbg !5412
  ret void, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i810_write_entry(i64 %addr, i32 %entry1, i32 %flags) #0 !dbg !5414 {
entry:
  %addr.addr = alloca i64, align 8
  %entry.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pte_flags = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  call void @llvm.dbg.declare(metadata i32* %pte_flags, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i32 1, i32* %pte_flags, align 4, !dbg !5422
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5423
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 65537, label %sw.bb2
  ], !dbg !5424

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %pte_flags, align 4, !dbg !5425
  %or = or i32 %1, 2, !dbg !5425
  store i32 %or, i32* %pte_flags, align 4, !dbg !5425
  br label %sw.epilog, !dbg !5427

sw.bb2:                                           ; preds = %entry
  %2 = load i32, i32* %pte_flags, align 4, !dbg !5428
  %or3 = or i32 %2, 6, !dbg !5428
  store i32 %or3, i32* %pte_flags, align 4, !dbg !5428
  br label %sw.epilog, !dbg !5429

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb
  %3 = load i64, i64* %addr.addr, align 8, !dbg !5430
  %4 = load i32, i32* %pte_flags, align 4, !dbg !5430
  %conv = zext i32 %4 to i64, !dbg !5430
  %or4 = or i64 %3, %conv, !dbg !5430
  %conv5 = trunc i64 %or4 to i32, !dbg !5430
  %5 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5430
  %6 = load i32, i32* %entry.addr, align 4, !dbg !5430
  %idx.ext = zext i32 %6 to i64, !dbg !5430
  %add.ptr = getelementptr i32, i32* %5, i64 %idx.ext, !dbg !5430
  %7 = bitcast i32* %add.ptr to i8*, !dbg !5430
  call void @__writel(i32 %conv5, i8* %7) #7, !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i830_check_flags(i32 %flags) #0 !dbg !5432 {
entry:
  %retval = alloca i1, align 1
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5435
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 65537, label %sw.bb
    i32 65536, label %sw.bb
  ], !dbg !5436

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !5437
  br label %return, !dbg !5437

sw.epilog:                                        ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5439
  br label %return, !dbg !5439

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i1, i1* %retval, align 1, !dbg !5440
  ret i1 %1, !dbg !5440
}

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !5441 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  %0 = load i8*, i8** %address.addr, align 8, !dbg !5446
  %1 = ptrtoint i8* %0 to i64, !dbg !5446
  %call = call i64 @__phys_addr_nodebug(i64 %1) #7, !dbg !5446
  ret i64 %call, !dbg !5447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !5448 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load i64, i64* %x.addr, align 8, !dbg !5456
  %sub = sub i64 %0, -2147483648, !dbg !5457
  store i64 %sub, i64* %y, align 8, !dbg !5455
  %1 = load i64, i64* %y, align 8, !dbg !5458
  %2 = load i64, i64* %x.addr, align 8, !dbg !5459
  %3 = load i64, i64* %y, align 8, !dbg !5460
  %cmp = icmp ugt i64 %2, %3, !dbg !5461
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5462

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5463
  br label %cond.end, !dbg !5462

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5464
  %sub1 = sub i64 -2147483648, %5, !dbg !5465
  br label %cond.end, !dbg !5462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5462
  %add = add i64 %1, %cond, !dbg !5466
  store i64 %add, i64* %x.addr, align 8, !dbg !5467
  %6 = load i64, i64* %x.addr, align 8, !dbg !5468
  ret i64 %6, !dbg !5469
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #0 !dbg !5470 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5473, metadata !DIExpression()), !dbg !5472
  %0 = load i32, i32* %val.addr, align 4, !dbg !5472
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5472
  %2 = bitcast i8* %1 to i32*, !dbg !5472
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !5472, !srcloc !5474
  ret void, !dbg !5472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i830_setup() #0 !dbg !5475 {
entry:
  %retval = alloca i32, align 4
  %reg_addr = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %reg_addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5478
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !5478
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !5478
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5478
  %1 = load i64, i64* %start, align 8, !dbg !5478
  store i64 %1, i64* %reg_addr, align 8, !dbg !5479
  %2 = load i64, i64* %reg_addr, align 8, !dbg !5480
  %call = call i8* @ioremap(i64 %2, i64 65536) #7, !dbg !5481
  store i8* %call, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5482
  %3 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5483
  %tobool = icmp ne i8* %3, null, !dbg !5485
  br i1 %tobool, label %if.end, label %if.then, !dbg !5486

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %reg_addr, align 8, !dbg !5488
  %add = add i64 %4, 65536, !dbg !5489
  store i64 %add, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5490
  store i32 0, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5492
  ret i32 %5, !dbg !5492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i830_cleanup() #0 !dbg !5493 {
entry:
  ret void, !dbg !5494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i830_write_entry(i64 %addr, i32 %entry1, i32 %flags) #0 !dbg !5495 {
entry:
  %addr.addr = alloca i64, align 8
  %entry.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pte_flags = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.declare(metadata i32* %pte_flags, metadata !5502, metadata !DIExpression()), !dbg !5503
  store i32 1, i32* %pte_flags, align 4, !dbg !5503
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5504
  %cmp = icmp eq i32 %0, 65537, !dbg !5506
  br i1 %cmp, label %if.then, label %if.end, !dbg !5507

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pte_flags, align 4, !dbg !5508
  %or = or i32 %1, 6, !dbg !5508
  store i32 %or, i32* %pte_flags, align 4, !dbg !5508
  br label %if.end, !dbg !5509

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %addr.addr, align 8, !dbg !5510
  %3 = load i32, i32* %pte_flags, align 4, !dbg !5510
  %conv = zext i32 %3 to i64, !dbg !5510
  %or2 = or i64 %2, %conv, !dbg !5510
  %conv3 = trunc i64 %or2 to i32, !dbg !5510
  %4 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5510
  %5 = load i32, i32* %entry.addr, align 4, !dbg !5510
  %idx.ext = zext i32 %5 to i64, !dbg !5510
  %add.ptr = getelementptr i32, i32* %4, i64 %idx.ext, !dbg !5510
  %6 = bitcast i32* %add.ptr to i8*, !dbg !5510
  call void @__writel(i32 %conv3, i8* %6) #7, !dbg !5510
  ret void, !dbg !5511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i830_chipset_flush() #0 !dbg !5512 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5513, metadata !DIExpression()), !dbg !5518
  %timeout = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !5522
  store i32 1000, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !5523
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #6, !dbg !5525
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !5526

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !5527
  %cmp.i = icmp slt i32 %3, 0, !dbg !5530
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5531

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5532
  br label %msecs_to_jiffies.exit, !dbg !5532

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !5533
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #9, !dbg !5534
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5535
  br label %msecs_to_jiffies.exit, !dbg !5535

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !5536
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #9, !dbg !5538
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5539
  br label %msecs_to_jiffies.exit, !dbg !5539

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !5540
  %add = add i64 %0, %6, !dbg !5541
  store i64 %add, i64* %timeout, align 8, !dbg !5521
  %call1 = call i32 @wbinvd_on_all_cpus() #7, !dbg !5542
  %7 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5543
  %add.ptr = getelementptr i8, i8* %7, i64 112, !dbg !5544
  %call2 = call i32 @readl(i8* %add.ptr) #7, !dbg !5545
  %or = or i32 %call2, -2147483648, !dbg !5546
  %8 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5547
  %add.ptr3 = getelementptr i8, i8* %8, i64 112, !dbg !5548
  call void @writel(i32 %or, i8* %add.ptr3) #7, !dbg !5549
  br label %while.cond, !dbg !5550

while.cond:                                       ; preds = %if.end, %msecs_to_jiffies.exit
  %9 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5551
  %add.ptr4 = getelementptr i8, i8* %9, i64 112, !dbg !5552
  %call5 = call i32 @readl(i8* %add.ptr4) #7, !dbg !5553
  %and = and i32 %call5, -2147483648, !dbg !5554
  %tobool = icmp ne i32 %and, 0, !dbg !5550
  br i1 %tobool, label %while.body, label %while.end, !dbg !5550

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %timeout, align 8, !dbg !5555
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !5555
  %sub = sub i64 %10, %11, !dbg !5555
  %cmp = icmp slt i64 %sub, 0, !dbg !5555
  br i1 %cmp, label %if.then, label %if.end, !dbg !5558

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !5559

if.end:                                           ; preds = %while.body
  call void @__const_udelay(i64 214750) #7, !dbg !5560
  br label %while.cond, !dbg !5550, !llvm.loop !5565

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !5567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wbinvd_on_all_cpus() #0 !dbg !5568 {
entry:
  call void @wbinvd() #7, !dbg !5570
  ret i32 0, !dbg !5571
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5572 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load i32, i32* %m.addr, align 4, !dbg !5575
  %conv = zext i32 %0 to i64, !dbg !5575
  %add = add i64 %conv, 4, !dbg !5576
  %sub = sub i64 %add, 1, !dbg !5577
  %div = sdiv i64 %sub, 4, !dbg !5578
  ret i64 %div, !dbg !5579
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wbinvd() #0 !dbg !5580 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5582, metadata !DIExpression()), !dbg !5584
  %0 = load i64, i64* %__edi, align 8, !dbg !5584
  store i64 %0, i64* %__edi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5585, metadata !DIExpression()), !dbg !5584
  %1 = load i64, i64* %__esi, align 8, !dbg !5584
  store i64 %1, i64* %__esi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5586, metadata !DIExpression()), !dbg !5584
  %2 = load i64, i64* %__edx, align 8, !dbg !5584
  store i64 %2, i64* %__edx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5587, metadata !DIExpression()), !dbg !5584
  %3 = load i64, i64* %__ecx, align 8, !dbg !5584
  store i64 %3, i64* %__ecx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5588, metadata !DIExpression()), !dbg !5584
  %4 = load i64, i64* %__eax, align 8, !dbg !5584
  store i64 %4, i64* %__eax, align 8, !dbg !5584
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), align 8, !dbg !5584
  %6 = call i64 @llvm.read_register.i64(metadata !4799), !dbg !5584
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 24, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), i32 511, i64 %6) #6, !dbg !5584, !srcloc !5589
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !5584
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !5584
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !5584
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !5584
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !5584
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5584
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5584
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5584
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5584
  call void @llvm.write_register.i64(metadata !4799, i64 %asmresult4), !dbg !5584
  ret void, !dbg !5590
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i9xx_setup() #0 !dbg !5591 {
entry:
  %retval = alloca i32, align 4
  %reg_addr = alloca i64, align 8
  %size = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %reg_addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5594, metadata !DIExpression()), !dbg !5595
  store i32 524288, i32* %size, align 4, !dbg !5595
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5596
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !5596
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !5596
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5596
  %1 = load i64, i64* %start, align 8, !dbg !5596
  store i64 %1, i64* %reg_addr, align 8, !dbg !5597
  %2 = load i64, i64* %reg_addr, align 8, !dbg !5598
  %3 = load i32, i32* %size, align 4, !dbg !5599
  %conv = sext i32 %3 to i64, !dbg !5599
  %call = call i8* @ioremap(i64 %2, i64 %conv) #7, !dbg !5600
  store i8* %call, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5601
  %4 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5602
  %tobool = icmp ne i8* %4, null, !dbg !5604
  br i1 %tobool, label %if.end, label %if.then, !dbg !5605

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5606
  br label %return, !dbg !5606

if.end:                                           ; preds = %entry
  %5 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5607
  %6 = bitcast %struct.intel_gtt_driver* %5 to i32*, !dbg !5607
  %bf.load = load i32, i32* %6, align 8, !dbg !5607
  %bf.clear = and i32 %bf.load, 255, !dbg !5607
  switch i32 %bf.clear, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb4
  ], !dbg !5608

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5609
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !5609
  %arrayidx2 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 3, !dbg !5609
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx2, i32 0, i32 0, !dbg !5609
  %8 = load i64, i64* %start3, align 8, !dbg !5609
  store i64 %8, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5611
  br label %sw.epilog, !dbg !5612

sw.bb4:                                           ; preds = %if.end
  %9 = load i64, i64* %reg_addr, align 8, !dbg !5613
  %add = add i64 %9, 2097152, !dbg !5614
  store i64 %add, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5615
  br label %sw.epilog, !dbg !5616

sw.default:                                       ; preds = %if.end
  %10 = load i64, i64* %reg_addr, align 8, !dbg !5617
  %add5 = add i64 %10, 524288, !dbg !5618
  store i64 %add5, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 4), align 8, !dbg !5619
  br label %sw.epilog, !dbg !5620

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  call void @intel_i9xx_setup_flush() #7, !dbg !5621
  store i32 0, i32* %retval, align 4, !dbg !5622
  br label %return, !dbg !5622

return:                                           ; preds = %sw.epilog, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5623
  ret i32 %11, !dbg !5623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i9xx_cleanup() #0 !dbg !5624 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5625
  %tobool = icmp ne i8* %0, null, !dbg !5627
  br i1 %tobool, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5629
  call void @iounmap(i8* %1) #7, !dbg !5630
  br label %if.end, !dbg !5630

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5631
  %tobool1 = icmp ne i32 %2, 0, !dbg !5633
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5634

if.then2:                                         ; preds = %if.end
  %call = call i32 @release_resource(%struct.resource* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11)) #7, !dbg !5635
  br label %if.end3, !dbg !5635

if.end3:                                          ; preds = %if.then2, %if.end
  store i64 0, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5636
  store i32 0, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5637
  ret void, !dbg !5638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i9xx_chipset_flush() #0 !dbg !5639 {
entry:
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5640, !srcloc !5641
  %0 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5642
  %tobool = icmp ne i8* %0, null, !dbg !5644
  br i1 %tobool, label %if.then, label %if.end, !dbg !5645

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5646
  call void @writel(i32 1, i8* %1) #7, !dbg !5647
  br label %if.end, !dbg !5647

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_i9xx_setup_flush() #0 !dbg !5649 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5650
  %tobool = icmp ne i64 %0, 0, !dbg !5652
  br i1 %tobool, label %if.then, label %if.end, !dbg !5653

if.then:                                          ; preds = %entry
  br label %if.end16, !dbg !5654

if.end:                                           ; preds = %entry
  %1 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5655
  %2 = bitcast %struct.intel_gtt_driver* %1 to i32*, !dbg !5655
  %bf.load = load i32, i32* %2, align 8, !dbg !5655
  %bf.clear = and i32 %bf.load, 255, !dbg !5655
  %cmp = icmp eq i32 %bf.clear, 6, !dbg !5657
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5658

if.then1:                                         ; preds = %if.end
  br label %if.end16, !dbg !5659

if.end2:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 2), align 8, !dbg !5660
  store i64 512, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 3), align 8, !dbg !5661
  %3 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5662
  %4 = bitcast %struct.intel_gtt_driver* %3 to i32*, !dbg !5662
  %bf.load3 = load i32, i32* %4, align 8, !dbg !5662
  %bf.lshr = lshr i32 %bf.load3, 8, !dbg !5662
  %bf.clear4 = and i32 %bf.lshr, 1, !dbg !5662
  %tobool5 = icmp ne i32 %bf.clear4, 0, !dbg !5662
  br i1 %tobool5, label %if.then9, label %lor.lhs.false, !dbg !5664

lor.lhs.false:                                    ; preds = %if.end2
  %5 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5665
  %6 = bitcast %struct.intel_gtt_driver* %5 to i32*, !dbg !5665
  %bf.load6 = load i32, i32* %6, align 8, !dbg !5665
  %bf.clear7 = and i32 %bf.load6, 255, !dbg !5665
  %cmp8 = icmp sge i32 %bf.clear7, 4, !dbg !5666
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !5667

if.then9:                                         ; preds = %lor.lhs.false, %if.end2
  call void @intel_i965_g33_setup_chipset_flush() #7, !dbg !5668
  br label %if.end10, !dbg !5670

if.else:                                          ; preds = %lor.lhs.false
  call void @intel_i915_setup_chipset_flush() #7, !dbg !5671
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %7 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5673
  %tobool11 = icmp ne i64 %7, 0, !dbg !5675
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5676

if.then12:                                        ; preds = %if.end10
  %8 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5677
  %call = call i8* @ioremap(i64 %8, i64 4096) #7, !dbg !5678
  store i8* %call, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5679
  br label %if.end13, !dbg !5680

if.end13:                                         ; preds = %if.then12, %if.end10
  %9 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 9), align 8, !dbg !5681
  %tobool14 = icmp ne i8* %9, null, !dbg !5683
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5684

if.then15:                                        ; preds = %if.end13
  %10 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !5685
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !5685
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !5685
  br label %if.end16, !dbg !5685

if.end16:                                         ; preds = %if.then, %if.then1, %if.then15, %if.end13
  ret void, !dbg !5686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_i965_g33_setup_chipset_flush() #0 !dbg !5687 {
entry:
  %temp_hi = alloca i32, align 4
  %temp_lo = alloca i32, align 4
  %ret = alloca i32, align 4
  %l64 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %temp_hi, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata i32* %temp_lo, metadata !5690, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5694
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 116, i32* %temp_hi) #7, !dbg !5695
  %1 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5696
  %call1 = call i32 @pci_read_config_dword(%struct.pci_dev* %1, i32 112, i32* %temp_lo) #7, !dbg !5697
  %2 = load i32, i32* %temp_lo, align 4, !dbg !5698
  %and = and i32 %2, 1, !dbg !5700
  %tobool = icmp ne i32 %and, 0, !dbg !5700
  br i1 %tobool, label %if.else, label %if.then, !dbg !5701

if.then:                                          ; preds = %entry
  %call2 = call i32 @intel_alloc_chipset_flush_resource() #7, !dbg !5702
  store i32 1, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5704
  %3 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5705
  %4 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5706
  %shr = lshr i64 %4, 16, !dbg !5706
  %shr3 = lshr i64 %shr, 16, !dbg !5706
  %conv = trunc i64 %shr3 to i32, !dbg !5706
  %call4 = call i32 @pci_write_config_dword(%struct.pci_dev* %3, i32 116, i32 %conv) #7, !dbg !5707
  %5 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5708
  %6 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5709
  %and5 = and i64 %6, 4294967295, !dbg !5710
  %or = or i64 %and5, 1, !dbg !5711
  %conv6 = trunc i64 %or to i32, !dbg !5712
  %call7 = call i32 @pci_write_config_dword(%struct.pci_dev* %5, i32 112, i32 %conv6) #7, !dbg !5713
  br label %if.end15, !dbg !5714

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %l64, metadata !5715, metadata !DIExpression()), !dbg !5717
  %7 = load i32, i32* %temp_lo, align 4, !dbg !5718
  %and8 = and i32 %7, -2, !dbg !5718
  store i32 %and8, i32* %temp_lo, align 4, !dbg !5718
  %8 = load i32, i32* %temp_hi, align 4, !dbg !5719
  %conv9 = zext i32 %8 to i64, !dbg !5720
  %shl = shl i64 %conv9, 32, !dbg !5721
  %9 = load i32, i32* %temp_lo, align 4, !dbg !5722
  %conv10 = zext i32 %9 to i64, !dbg !5722
  %or11 = or i64 %shl, %conv10, !dbg !5723
  store i64 %or11, i64* %l64, align 8, !dbg !5724
  store i32 1, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5725
  %10 = load i64, i64* %l64, align 8, !dbg !5726
  store i64 %10, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5727
  %11 = load i64, i64* %l64, align 8, !dbg !5728
  %add = add i64 %11, 4096, !dbg !5729
  store i64 %add, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 1), align 8, !dbg !5730
  %call12 = call i32 @request_resource(%struct.resource* @iomem_resource, %struct.resource* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11)) #7, !dbg !5731
  store i32 %call12, i32* %ret, align 4, !dbg !5732
  %12 = load i32, i32* %ret, align 4, !dbg !5733
  %tobool13 = icmp ne i32 %12, 0, !dbg !5733
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5735

if.then14:                                        ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5736
  br label %if.end, !dbg !5737

if.end:                                           ; preds = %if.then14, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  ret void, !dbg !5738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_i915_setup_chipset_flush() #0 !dbg !5739 {
entry:
  %ret = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5740, metadata !DIExpression()), !dbg !5741
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !5742, metadata !DIExpression()), !dbg !5743
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5744
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 96, i32* %temp) #7, !dbg !5745
  %1 = load i32, i32* %temp, align 4, !dbg !5746
  %and = and i32 %1, 1, !dbg !5748
  %tobool = icmp ne i32 %and, 0, !dbg !5748
  br i1 %tobool, label %if.else, label %if.then, !dbg !5749

if.then:                                          ; preds = %entry
  %call1 = call i32 @intel_alloc_chipset_flush_resource() #7, !dbg !5750
  store i32 1, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5752
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5753
  %3 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5754
  %and2 = and i64 %3, 4294967295, !dbg !5755
  %or = or i64 %and2, 1, !dbg !5756
  %conv = trunc i64 %or to i32, !dbg !5757
  %call3 = call i32 @pci_write_config_dword(%struct.pci_dev* %2, i32 96, i32 %conv) #7, !dbg !5758
  br label %if.end10, !dbg !5759

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %temp, align 4, !dbg !5760
  %and4 = and i32 %4, -2, !dbg !5760
  store i32 %and4, i32* %temp, align 4, !dbg !5760
  store i32 1, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5762
  %5 = load i32, i32* %temp, align 4, !dbg !5763
  %conv5 = zext i32 %5 to i64, !dbg !5763
  store i64 %conv5, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 0), align 8, !dbg !5764
  %6 = load i32, i32* %temp, align 4, !dbg !5765
  %conv6 = zext i32 %6 to i64, !dbg !5765
  %add = add i64 %conv6, 4096, !dbg !5766
  store i64 %add, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11, i32 1), align 8, !dbg !5767
  %call7 = call i32 @request_resource(%struct.resource* @iomem_resource, %struct.resource* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11)) #7, !dbg !5768
  store i32 %call7, i32* %ret, align 4, !dbg !5769
  %7 = load i32, i32* %ret, align 4, !dbg !5770
  %tobool8 = icmp ne i32 %7, 0, !dbg !5770
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !5772

if.then9:                                         ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 12), align 8, !dbg !5773
  br label %if.end, !dbg !5774

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret void, !dbg !5775
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_alloc_chipset_flush_resource() #0 !dbg !5776 {
entry:
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5777, metadata !DIExpression()), !dbg !5778
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5779
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !5780
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5780
  %2 = load i64, i64* @pci_mem_start, align 8, !dbg !5781
  %3 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !5782
  %4 = bitcast %struct.pci_dev* %3 to i8*, !dbg !5783
  %call = call i32 @pci_bus_alloc_resource(%struct.pci_bus* %1, %struct.resource* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 11), i64 4096, i64 4096, i64 %2, i64 0, i64 (i8*, %struct.resource*, i64, i64)* @pcibios_align_resource, i8* %4) #7, !dbg !5784
  store i32 %call, i32* %ret, align 4, !dbg !5785
  %5 = load i32, i32* %ret, align 4, !dbg !5786
  ret i32 %5, !dbg !5787
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_alloc_resource(%struct.pci_bus*, %struct.resource*, i64, i64, i64, i64, i64 (i8*, %struct.resource*, i64, i64)*, i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @pcibios_align_resource(i8*, %struct.resource*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i965_write_entry(i64 %addr, i32 %entry1, i32 %flags) #0 !dbg !5788 {
entry:
  %addr.addr = alloca i64, align 8
  %entry.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pte_flags = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5793, metadata !DIExpression()), !dbg !5794
  call void @llvm.dbg.declare(metadata i32* %pte_flags, metadata !5795, metadata !DIExpression()), !dbg !5796
  store i32 1, i32* %pte_flags, align 4, !dbg !5797
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5798
  %cmp = icmp eq i32 %0, 65537, !dbg !5800
  br i1 %cmp, label %if.then, label %if.end, !dbg !5801

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pte_flags, align 4, !dbg !5802
  %or = or i32 %1, 6, !dbg !5802
  store i32 %or, i32* %pte_flags, align 4, !dbg !5802
  br label %if.end, !dbg !5803

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %addr.addr, align 8, !dbg !5804
  %shr = lshr i64 %2, 28, !dbg !5805
  %and = and i64 %shr, 240, !dbg !5806
  %3 = load i64, i64* %addr.addr, align 8, !dbg !5807
  %or2 = or i64 %3, %and, !dbg !5807
  store i64 %or2, i64* %addr.addr, align 8, !dbg !5807
  %4 = load i64, i64* %addr.addr, align 8, !dbg !5808
  %5 = load i32, i32* %pte_flags, align 4, !dbg !5808
  %conv = zext i32 %5 to i64, !dbg !5808
  %or3 = or i64 %4, %conv, !dbg !5808
  %conv4 = trunc i64 %or3 to i32, !dbg !5808
  %6 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5808
  %7 = load i32, i32* %entry.addr, align 4, !dbg !5808
  %idx.ext = zext i32 %7 to i64, !dbg !5808
  %add.ptr = getelementptr i32, i32* %6, i64 %idx.ext, !dbg !5808
  %8 = bitcast i32* %add.ptr to i8*, !dbg !5808
  call void @__writel(i32 %conv4, i8* %8) #7, !dbg !5808
  ret void, !dbg !5809
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_fetch_size() #0 !dbg !5810 {
entry:
  %retval = alloca i32, align 4
  %num_sizes = alloca i32, align 4
  %aper_size = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %num_sizes, metadata !5811, metadata !DIExpression()), !dbg !5812
  store i32 5, i32* %num_sizes, align 4, !dbg !5812
  call void @llvm.dbg.declare(metadata i32* %aper_size, metadata !5813, metadata !DIExpression()), !dbg !5814
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !5817
  %shl = shl i32 %0, 12, !dbg !5818
  %div = udiv i32 %shl, 1048576, !dbg !5819
  store i32 %div, i32* %aper_size, align 4, !dbg !5820
  store i32 0, i32* %i, align 4, !dbg !5821
  br label %for.cond, !dbg !5823

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5824
  %2 = load i32, i32* %num_sizes, align 4, !dbg !5826
  %cmp = icmp slt i32 %1, %2, !dbg !5827
  br i1 %cmp, label %for.body, label %for.end, !dbg !5828

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %aper_size, align 4, !dbg !5829
  %4 = load i32, i32* %i, align 4, !dbg !5832
  %idxprom = sext i32 %4 to i64, !dbg !5833
  %arrayidx = getelementptr [5 x %struct.aper_size_info_fixed], [5 x %struct.aper_size_info_fixed]* @intel_fake_agp_sizes, i64 0, i64 %idxprom, !dbg !5833
  %size = getelementptr inbounds %struct.aper_size_info_fixed, %struct.aper_size_info_fixed* %arrayidx, i32 0, i32 0, !dbg !5834
  %5 = load i32, i32* %size, align 4, !dbg !5834
  %cmp1 = icmp eq i32 %3, %5, !dbg !5835
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5836

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5837
  %idx.ext = sext i32 %6 to i64, !dbg !5839
  %add.ptr = getelementptr %struct.aper_size_info_fixed, %struct.aper_size_info_fixed* getelementptr inbounds ([5 x %struct.aper_size_info_fixed], [5 x %struct.aper_size_info_fixed]* @intel_fake_agp_sizes, i64 0, i64 0), i64 %idx.ext, !dbg !5839
  %7 = bitcast %struct.aper_size_info_fixed* %add.ptr to i8*, !dbg !5840
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5841
  %current_size = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %8, i32 0, i32 4, !dbg !5842
  store i8* %7, i8** %current_size, align 8, !dbg !5843
  %9 = load i32, i32* %aper_size, align 4, !dbg !5844
  store i32 %9, i32* %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5846

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5847
  %inc = add i32 %10, 1, !dbg !5847
  store i32 %inc, i32* %i, align 4, !dbg !5847
  br label %for.cond, !dbg !5848, !llvm.loop !5849

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5851
  br label %return, !dbg !5851

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5852
  ret i32 %11, !dbg !5852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_configure() #0 !dbg !5853 {
entry:
  %retval = alloca i32, align 4
  %call = call zeroext i1 @intel_enable_gtt() #7, !dbg !5854
  br i1 %call, label %if.end, label %if.then, !dbg !5856

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end:                                           ; preds = %entry
  store i8 1, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 7), align 8, !dbg !5858
  %0 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 17), align 8, !dbg !5859
  %1 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5860
  %gart_bus_addr = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %1, i32 0, i32 12, !dbg !5861
  store i64 %0, i64* %gart_bus_addr, align 8, !dbg !5862
  store i32 0, i32* %retval, align 4, !dbg !5863
  br label %return, !dbg !5863

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5864
  ret i32 %2, !dbg !5864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_fake_agp_enable(%struct.agp_bridge_data* %bridge, i32 %mode) #0 !dbg !5865 {
entry:
  %bridge.addr = alloca %struct.agp_bridge_data*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.agp_bridge_data* %bridge, %struct.agp_bridge_data** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  ret void, !dbg !5870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_gtt_cleanup() #0 !dbg !5871 {
entry:
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5872
  %cleanup = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %0, i32 0, i32 2, !dbg !5873
  %1 = load void ()*, void ()** %cleanup, align 8, !dbg !5873
  call void %1() #7, !dbg !5874
  %2 = load i32*, i32** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 6), align 8, !dbg !5875
  %3 = bitcast i32* %2 to i8*, !dbg !5876
  call void @iounmap(i8* %3) #7, !dbg !5877
  %4 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !5878
  call void @iounmap(i8* %4) #7, !dbg !5879
  call void @intel_gtt_teardown_scratch_page() #7, !dbg !5880
  ret void, !dbg !5881
}

; Function Attrs: noredzone
declare dso_local void @global_cache_flush() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_create_gatt_table(%struct.agp_bridge_data* %bridge) #0 !dbg !5882 {
entry:
  %bridge.addr = alloca %struct.agp_bridge_data*, align 8
  store %struct.agp_bridge_data* %bridge, %struct.agp_bridge_data** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5885
  %gatt_table_real = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %0, i32 0, i32 8, !dbg !5886
  store i32* null, i32** %gatt_table_real, align 8, !dbg !5887
  %1 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5888
  %gatt_table = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %1, i32 0, i32 7, !dbg !5889
  store i32* null, i32** %gatt_table, align 8, !dbg !5890
  %2 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !5891
  %gatt_bus_addr = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %2, i32 0, i32 13, !dbg !5892
  store i64 0, i64* %gatt_bus_addr, align 8, !dbg !5893
  ret i32 0, !dbg !5894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_free_gatt_table(%struct.agp_bridge_data* %bridge) #0 !dbg !5895 {
entry:
  %bridge.addr = alloca %struct.agp_bridge_data*, align 8
  store %struct.agp_bridge_data* %bridge, %struct.agp_bridge_data** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_bridge_data** %bridge.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  ret i32 0, !dbg !5898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_insert_entries(%struct.agp_memory* %mem, i64 %pg_start, i32 %type) #0 !dbg !5899 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.agp_memory*, align 8
  %pg_start.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %st = alloca %struct.sg_table, align 8
  store %struct.agp_memory* %mem, %struct.agp_memory** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %mem.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i64 %pg_start, i64* %pg_start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_start.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5906, metadata !DIExpression()), !dbg !5907
  store i32 -22, i32* %ret, align 4, !dbg !5907
  %0 = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 7), align 8, !dbg !5908
  %tobool = trunc i8 %0 to i1, !dbg !5908
  br i1 %tobool, label %if.then, label %if.end, !dbg !5910

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5911, metadata !DIExpression()), !dbg !5913
  %1 = load i64, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 18), align 8, !dbg !5914
  %div = udiv i64 %1, 4096, !dbg !5915
  %conv = trunc i64 %div to i32, !dbg !5916
  store i32 %conv, i32* %start, align 4, !dbg !5913
  call void @llvm.dbg.declare(metadata i32* %end, metadata !5917, metadata !DIExpression()), !dbg !5918
  %2 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !5919
  store i32 %2, i32* %end, align 4, !dbg !5918
  %3 = load i32, i32* %start, align 4, !dbg !5920
  %4 = load i32, i32* %end, align 4, !dbg !5921
  %5 = load i32, i32* %start, align 4, !dbg !5922
  %sub = sub i32 %4, %5, !dbg !5923
  call void @intel_gtt_clear_range(i32 %3, i32 %sub) #7, !dbg !5924
  store i8 0, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 7), align 8, !dbg !5925
  br label %if.end, !dbg !5926

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5927
  %7 = bitcast %struct.intel_gtt_driver* %6 to i32*, !dbg !5927
  %bf.load = load i32, i32* %7, align 8, !dbg !5927
  %bf.clear = and i32 %bf.load, 255, !dbg !5927
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !5929
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !5930

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %type.addr, align 4, !dbg !5931
  %cmp2 = icmp eq i32 %8, 1, !dbg !5932
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5933

if.then4:                                         ; preds = %land.lhs.true
  %9 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5934
  %10 = load i64, i64* %pg_start.addr, align 8, !dbg !5935
  %11 = load i32, i32* %type.addr, align 4, !dbg !5936
  %call = call i32 @i810_insert_dcache_entries(%struct.agp_memory* %9, i64 %10, i32 %11) #7, !dbg !5937
  store i32 %call, i32* %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5939
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 4, !dbg !5941
  %13 = load i64, i64* %page_count, align 8, !dbg !5941
  %cmp6 = icmp eq i64 %13, 0, !dbg !5942
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5943

if.then8:                                         ; preds = %if.end5
  br label %out, !dbg !5944

if.end9:                                          ; preds = %if.end5
  %14 = load i64, i64* %pg_start.addr, align 8, !dbg !5945
  %15 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5947
  %page_count10 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %15, i32 0, i32 4, !dbg !5948
  %16 = load i64, i64* %page_count10, align 8, !dbg !5948
  %add = add i64 %14, %16, !dbg !5949
  %17 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 19), align 8, !dbg !5950
  %conv11 = zext i32 %17 to i64, !dbg !5951
  %cmp12 = icmp ugt i64 %add, %conv11, !dbg !5952
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5953

if.then14:                                        ; preds = %if.end9
  br label %out_err, !dbg !5954

if.end15:                                         ; preds = %if.end9
  %18 = load i32, i32* %type.addr, align 4, !dbg !5955
  %19 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5957
  %type16 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %19, i32 0, i32 8, !dbg !5958
  %20 = load i32, i32* %type16, align 8, !dbg !5958
  %cmp17 = icmp ne i32 %18, %20, !dbg !5959
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5960

if.then19:                                        ; preds = %if.end15
  br label %out_err, !dbg !5961

if.end20:                                         ; preds = %if.end15
  %21 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !5962
  %check_flags = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %21, i32 0, i32 4, !dbg !5964
  %22 = load i1 (i32)*, i1 (i32)** %check_flags, align 8, !dbg !5964
  %23 = load i32, i32* %type.addr, align 4, !dbg !5965
  %call21 = call zeroext i1 %22(i32 %23) #7, !dbg !5966
  br i1 %call21, label %if.end23, label %if.then22, !dbg !5967

if.then22:                                        ; preds = %if.end20
  br label %out_err, !dbg !5968

if.end23:                                         ; preds = %if.end20
  %24 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5969
  %is_flushed = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %24, i32 0, i32 11, !dbg !5971
  %25 = load i8, i8* %is_flushed, align 1, !dbg !5971
  %tobool24 = trunc i8 %25 to i1, !dbg !5971
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5972

if.then25:                                        ; preds = %if.end23
  call void @global_cache_flush() #7, !dbg !5973
  br label %if.end26, !dbg !5973

if.end26:                                         ; preds = %if.then25, %if.end23
  %bf.load27 = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !5974
  %bf.clear28 = and i8 %bf.load27, 1, !dbg !5974
  %bf.cast = zext i8 %bf.clear28 to i32, !dbg !5974
  %tobool29 = icmp ne i32 %bf.cast, 0, !dbg !5976
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !5977

if.then30:                                        ; preds = %if.end26
  call void @llvm.dbg.declare(metadata %struct.sg_table* %st, metadata !5978, metadata !DIExpression()), !dbg !5980
  %26 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5981
  %pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %26, i32 0, i32 3, !dbg !5982
  %27 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !5982
  %28 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5983
  %page_count31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 4, !dbg !5984
  %29 = load i64, i64* %page_count31, align 8, !dbg !5984
  %conv32 = trunc i64 %29 to i32, !dbg !5983
  %call33 = call i32 @intel_gtt_map_memory(%struct.page** %27, i32 %conv32, %struct.sg_table* %st) #7, !dbg !5985
  store i32 %call33, i32* %ret, align 4, !dbg !5986
  %30 = load i32, i32* %ret, align 4, !dbg !5987
  %cmp34 = icmp ne i32 %30, 0, !dbg !5989
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5990

if.then36:                                        ; preds = %if.then30
  %31 = load i32, i32* %ret, align 4, !dbg !5991
  store i32 %31, i32* %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

if.end37:                                         ; preds = %if.then30
  %32 = load i64, i64* %pg_start.addr, align 8, !dbg !5993
  %conv38 = trunc i64 %32 to i32, !dbg !5993
  %33 = load i32, i32* %type.addr, align 4, !dbg !5994
  call void @intel_gtt_insert_sg_entries(%struct.sg_table* %st, i32 %conv38, i32 %33) #7, !dbg !5995
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %st, i32 0, i32 0, !dbg !5996
  %34 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5996
  %35 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !5997
  %sg_list = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %35, i32 0, i32 13, !dbg !5998
  store %struct.scatterlist* %34, %struct.scatterlist** %sg_list, align 8, !dbg !5999
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %st, i32 0, i32 1, !dbg !6000
  %36 = load i32, i32* %nents, align 8, !dbg !6000
  %37 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6001
  %num_sg = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %37, i32 0, i32 14, !dbg !6002
  store i32 %36, i32* %num_sg, align 8, !dbg !6003
  br label %if.end43, !dbg !6004

if.else:                                          ; preds = %if.end26
  %38 = load i64, i64* %pg_start.addr, align 8, !dbg !6005
  %conv39 = trunc i64 %38 to i32, !dbg !6005
  %39 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6006
  %page_count40 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %39, i32 0, i32 4, !dbg !6007
  %40 = load i64, i64* %page_count40, align 8, !dbg !6007
  %conv41 = trunc i64 %40 to i32, !dbg !6006
  %41 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6008
  %pages42 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %41, i32 0, i32 3, !dbg !6009
  %42 = load %struct.page**, %struct.page*** %pages42, align 8, !dbg !6009
  %43 = load i32, i32* %type.addr, align 4, !dbg !6010
  call void @intel_gtt_insert_pages(i32 %conv39, i32 %conv41, %struct.page** %42, i32 %43) #7, !dbg !6011
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.end37
  br label %out, !dbg !5974

out:                                              ; preds = %if.end43, %if.then8
  call void @llvm.dbg.label(metadata !6012), !dbg !6013
  store i32 0, i32* %ret, align 4, !dbg !6014
  br label %out_err, !dbg !6015

out_err:                                          ; preds = %out, %if.then22, %if.then19, %if.then14
  call void @llvm.dbg.label(metadata !6016), !dbg !6017
  %44 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6018
  %is_flushed44 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %44, i32 0, i32 11, !dbg !6019
  store i8 1, i8* %is_flushed44, align 1, !dbg !6020
  %45 = load i32, i32* %ret, align 4, !dbg !6021
  store i32 %45, i32* %retval, align 4, !dbg !6022
  br label %return, !dbg !6022

return:                                           ; preds = %out_err, %if.then36, %if.then4
  %46 = load i32, i32* %retval, align 4, !dbg !6023
  ret i32 %46, !dbg !6023
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_fake_agp_remove_entries(%struct.agp_memory* %mem, i64 %pg_start, i32 %type) #0 !dbg !6024 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.agp_memory*, align 8
  %pg_start.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store %struct.agp_memory* %mem, %struct.agp_memory** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %mem.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  store i64 %pg_start, i64* %pg_start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_start.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6031
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %0, i32 0, i32 4, !dbg !6033
  %1 = load i64, i64* %page_count, align 8, !dbg !6033
  %cmp = icmp eq i64 %1, 0, !dbg !6034
  br i1 %cmp, label %if.then, label %if.end, !dbg !6035

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6036
  br label %return, !dbg !6036

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pg_start.addr, align 8, !dbg !6037
  %conv = trunc i64 %2 to i32, !dbg !6037
  %3 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6038
  %page_count1 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %3, i32 0, i32 4, !dbg !6039
  %4 = load i64, i64* %page_count1, align 8, !dbg !6039
  %conv2 = trunc i64 %4 to i32, !dbg !6038
  call void @intel_gtt_clear_range(i32 %conv, i32 %conv2) #7, !dbg !6040
  %bf.load = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !6041
  %bf.clear = and i8 %bf.load, 1, !dbg !6041
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6041
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6043
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !6044

if.then3:                                         ; preds = %if.end
  %5 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6045
  %sg_list = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %5, i32 0, i32 13, !dbg !6047
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg_list, align 8, !dbg !6047
  %7 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6048
  %num_sg = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %7, i32 0, i32 14, !dbg !6049
  %8 = load i32, i32* %num_sg, align 8, !dbg !6049
  call void @intel_gtt_unmap_memory(%struct.scatterlist* %6, i32 %8) #7, !dbg !6050
  %9 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6051
  %sg_list4 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %9, i32 0, i32 13, !dbg !6052
  store %struct.scatterlist* null, %struct.scatterlist** %sg_list4, align 8, !dbg !6053
  %10 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6054
  %num_sg5 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %10, i32 0, i32 14, !dbg !6055
  store i32 0, i32* %num_sg5, align 8, !dbg !6056
  br label %if.end6, !dbg !6057

if.end6:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %retval, align 4, !dbg !6058
  br label %return, !dbg !6058

return:                                           ; preds = %if.end6, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6059
  ret i32 %11, !dbg !6059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.agp_memory* @intel_fake_agp_alloc_by_type(i64 %pg_count, i32 %type) #0 !dbg !6060 {
entry:
  %retval = alloca %struct.agp_memory*, align 8
  %pg_count.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %new = alloca %struct.agp_memory*, align 8
  store i64 %pg_count, i64* %pg_count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_count.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %new, metadata !6065, metadata !DIExpression()), !dbg !6066
  %0 = load i32, i32* %type.addr, align 4, !dbg !6067
  %cmp = icmp eq i32 %0, 1, !dbg !6069
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6070

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6071
  %2 = bitcast %struct.intel_gtt_driver* %1 to i32*, !dbg !6071
  %bf.load = load i32, i32* %2, align 8, !dbg !6071
  %bf.clear = and i32 %bf.load, 255, !dbg !6071
  %cmp1 = icmp eq i32 %bf.clear, 1, !dbg !6072
  br i1 %cmp1, label %if.then, label %if.end10, !dbg !6073

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %pg_count.addr, align 8, !dbg !6074
  %4 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 8), align 4, !dbg !6077
  %conv = sext i32 %4 to i64, !dbg !6078
  %cmp2 = icmp ne i64 %3, %conv, !dbg !6079
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !6080

if.then4:                                         ; preds = %if.then
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6081
  br label %return, !dbg !6081

if.end:                                           ; preds = %if.then
  %call = call %struct.agp_memory* @agp_create_memory(i32 1) #7, !dbg !6082
  store %struct.agp_memory* %call, %struct.agp_memory** %new, align 8, !dbg !6083
  %5 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6084
  %cmp5 = icmp eq %struct.agp_memory* %5, null, !dbg !6086
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !6087

if.then7:                                         ; preds = %if.end
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6088
  br label %return, !dbg !6088

if.end8:                                          ; preds = %if.end
  %6 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6089
  %type9 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %6, i32 0, i32 8, !dbg !6090
  store i32 1, i32* %type9, align 8, !dbg !6091
  %7 = load i64, i64* %pg_count.addr, align 8, !dbg !6092
  %8 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6093
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %8, i32 0, i32 4, !dbg !6094
  store i64 %7, i64* %page_count, align 8, !dbg !6095
  %9 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6096
  %num_scratch_pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %9, i32 0, i32 6, !dbg !6097
  store i32 0, i32* %num_scratch_pages, align 4, !dbg !6098
  %10 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6099
  call void @agp_free_page_array(%struct.agp_memory* %10) #7, !dbg !6100
  %11 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6101
  store %struct.agp_memory* %11, %struct.agp_memory** %retval, align 8, !dbg !6102
  br label %return, !dbg !6102

if.end10:                                         ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %type.addr, align 4, !dbg !6103
  %cmp11 = icmp eq i32 %12, 2, !dbg !6105
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !6106

if.then13:                                        ; preds = %if.end10
  %13 = load i64, i64* %pg_count.addr, align 8, !dbg !6107
  %14 = load i32, i32* %type.addr, align 4, !dbg !6108
  %call14 = call %struct.agp_memory* @alloc_agpphysmem_i8xx(i64 %13, i32 %14) #7, !dbg !6109
  store %struct.agp_memory* %call14, %struct.agp_memory** %retval, align 8, !dbg !6110
  br label %return, !dbg !6110

if.end15:                                         ; preds = %if.end10
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6111
  br label %return, !dbg !6111

return:                                           ; preds = %if.end15, %if.then13, %if.end8, %if.then7, %if.then4
  %15 = load %struct.agp_memory*, %struct.agp_memory** %retval, align 8, !dbg !6112
  ret %struct.agp_memory* %15, !dbg !6112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_i810_free_by_type(%struct.agp_memory* %curr) #0 !dbg !6113 {
entry:
  %curr.addr = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %curr, %struct.agp_memory** %curr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %curr.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  %0 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6116
  %key = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %0, i32 0, i32 5, !dbg !6117
  %1 = load i32, i32* %key, align 8, !dbg !6117
  call void @agp_free_key(i32 %1) #7, !dbg !6118
  %2 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6119
  %type = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %2, i32 0, i32 8, !dbg !6121
  %3 = load i32, i32* %type, align 8, !dbg !6121
  %cmp = icmp eq i32 %3, 2, !dbg !6122
  br i1 %cmp, label %if.then, label %if.end9, !dbg !6123

if.then:                                          ; preds = %entry
  %4 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6124
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %4, i32 0, i32 4, !dbg !6127
  %5 = load i64, i64* %page_count, align 8, !dbg !6127
  %cmp1 = icmp eq i64 %5, 4, !dbg !6128
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !6129

if.then2:                                         ; preds = %if.then
  %6 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6130
  %pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %6, i32 0, i32 3, !dbg !6131
  %7 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !6131
  %arrayidx = getelementptr %struct.page*, %struct.page** %7, i64 0, !dbg !6130
  %8 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !6130
  call void @i8xx_destroy_pages(%struct.page* %8) #7, !dbg !6132
  br label %if.end, !dbg !6132

if.else:                                          ; preds = %if.then
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6133
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %9, i32 0, i32 1, !dbg !6135
  %10 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver, align 8, !dbg !6135
  %agp_destroy_page = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %10, i32 0, i32 22, !dbg !6136
  %11 = load void (%struct.page*, i32)*, void (%struct.page*, i32)** %agp_destroy_page, align 8, !dbg !6136
  %12 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6137
  %pages3 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 3, !dbg !6138
  %13 = load %struct.page**, %struct.page*** %pages3, align 8, !dbg !6138
  %arrayidx4 = getelementptr %struct.page*, %struct.page** %13, i64 0, !dbg !6137
  %14 = load %struct.page*, %struct.page** %arrayidx4, align 8, !dbg !6137
  call void %11(%struct.page* %14, i32 1) #7, !dbg !6133
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6139
  %driver5 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1, !dbg !6140
  %16 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver5, align 8, !dbg !6140
  %agp_destroy_page6 = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %16, i32 0, i32 22, !dbg !6141
  %17 = load void (%struct.page*, i32)*, void (%struct.page*, i32)** %agp_destroy_page6, align 8, !dbg !6141
  %18 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6142
  %pages7 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %18, i32 0, i32 3, !dbg !6143
  %19 = load %struct.page**, %struct.page*** %pages7, align 8, !dbg !6143
  %arrayidx8 = getelementptr %struct.page*, %struct.page** %19, i64 0, !dbg !6142
  %20 = load %struct.page*, %struct.page** %arrayidx8, align 8, !dbg !6142
  call void %17(%struct.page* %20, i32 2) #7, !dbg !6139
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %21 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6144
  call void @agp_free_page_array(%struct.agp_memory* %21) #7, !dbg !6145
  br label %if.end9, !dbg !6146

if.end9:                                          ; preds = %if.end, %entry
  %22 = load %struct.agp_memory*, %struct.agp_memory** %curr.addr, align 8, !dbg !6147
  %23 = bitcast %struct.agp_memory* %22 to i8*, !dbg !6147
  call void @kfree(i8* %23) #7, !dbg !6148
  ret void, !dbg !6149
}

; Function Attrs: noredzone
declare dso_local %struct.page* @agp_generic_alloc_page(%struct.agp_bridge_data*) #2

; Function Attrs: noredzone
declare dso_local i32 @agp_generic_alloc_pages(%struct.agp_bridge_data*, %struct.agp_memory*, i64) #2

; Function Attrs: noredzone
declare dso_local void @agp_generic_destroy_page(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local void @agp_generic_destroy_pages(%struct.agp_memory*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i810_insert_dcache_entries(%struct.agp_memory* %mem, i64 %pg_start, i32 %type) #0 !dbg !6150 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.agp_memory*, align 8
  %pg_start.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %addr = alloca i64, align 8
  store %struct.agp_memory* %mem, %struct.agp_memory** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %mem.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  store i64 %pg_start, i64* %pg_start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_start.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6157, metadata !DIExpression()), !dbg !6158
  %0 = load i64, i64* %pg_start.addr, align 8, !dbg !6159
  %1 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6161
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %1, i32 0, i32 4, !dbg !6162
  %2 = load i64, i64* %page_count, align 8, !dbg !6162
  %add = add i64 %0, %2, !dbg !6163
  %3 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 8), align 4, !dbg !6164
  %conv = sext i32 %3 to i64, !dbg !6165
  %cmp = icmp ugt i64 %add, %conv, !dbg !6166
  br i1 %cmp, label %if.then, label %if.end, !dbg !6167

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

if.end:                                           ; preds = %entry
  %4 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6169
  %is_flushed = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %4, i32 0, i32 11, !dbg !6171
  %5 = load i8, i8* %is_flushed, align 1, !dbg !6171
  %tobool = trunc i8 %5 to i1, !dbg !6171
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6172

if.then2:                                         ; preds = %if.end
  call void @global_cache_flush() #7, !dbg !6173
  br label %if.end3, !dbg !6173

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i64, i64* %pg_start.addr, align 8, !dbg !6174
  %conv4 = trunc i64 %6 to i32, !dbg !6174
  store i32 %conv4, i32* %i, align 4, !dbg !6176
  br label %for.cond, !dbg !6177

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load i32, i32* %i, align 4, !dbg !6178
  %conv5 = sext i32 %7 to i64, !dbg !6178
  %8 = load i64, i64* %pg_start.addr, align 8, !dbg !6180
  %9 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6181
  %page_count6 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %9, i32 0, i32 4, !dbg !6182
  %10 = load i64, i64* %page_count6, align 8, !dbg !6182
  %add7 = add i64 %8, %10, !dbg !6183
  %cmp8 = icmp ult i64 %conv5, %add7, !dbg !6184
  br i1 %cmp8, label %for.body, label %for.end, !dbg !6185

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  %11 = load i32, i32* %i, align 4, !dbg !6189
  %shl = shl i32 %11, 12, !dbg !6190
  %conv10 = sext i32 %shl to i64, !dbg !6189
  store i64 %conv10, i64* %addr, align 8, !dbg !6188
  %12 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6191
  %write_entry = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %12, i32 0, i32 3, !dbg !6192
  %13 = load void (i64, i32, i32)*, void (i64, i32, i32)** %write_entry, align 8, !dbg !6192
  %14 = load i64, i64* %addr, align 8, !dbg !6193
  %15 = load i32, i32* %i, align 4, !dbg !6194
  %16 = load i32, i32* %type.addr, align 4, !dbg !6195
  call void %13(i64 %14, i32 %15, i32 %16) #7, !dbg !6196
  br label %for.inc, !dbg !6197

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !6198
  %inc = add i32 %17, 1, !dbg !6198
  store i32 %inc, i32* %i, align 4, !dbg !6198
  br label %for.cond, !dbg !6199, !llvm.loop !6200

for.end:                                          ; preds = %for.cond
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6202, !srcloc !6203
  store i32 0, i32* %retval, align 4, !dbg !6204
  br label %return, !dbg !6204

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !6205
  ret i32 %18, !dbg !6205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_gtt_map_memory(%struct.page** %pages, i32 %num_entries, %struct.sg_table* %st) #0 !dbg !6206 {
entry:
  %retval = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  %num_entries.addr = alloca i32, align 4
  %st.addr = alloca %struct.sg_table*, align 8
  %sg = alloca %struct.scatterlist*, align 8
  %i = alloca i32, align 4
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  store i32 %num_entries, i32* %num_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_entries.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  store %struct.sg_table* %st, %struct.sg_table** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %st.addr, metadata !6213, metadata !DIExpression()), !dbg !6214
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !6215, metadata !DIExpression()), !dbg !6216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6217, metadata !DIExpression()), !dbg !6218
  br label %do.body, !dbg !6219

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6220

do.end:                                           ; preds = %do.body
  %0 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !6222
  %1 = load i32, i32* %num_entries.addr, align 4, !dbg !6224
  %call = call i32 @sg_alloc_table(%struct.sg_table* %0, i32 %1, i32 3264) #7, !dbg !6225
  %tobool = icmp ne i32 %call, 0, !dbg !6225
  br i1 %tobool, label %if.then, label %if.end, !dbg !6226

if.then:                                          ; preds = %do.end
  br label %err, !dbg !6227

if.end:                                           ; preds = %do.end
  store i32 0, i32* %i, align 4, !dbg !6228
  %2 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !6228
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %2, i32 0, i32 0, !dbg !6228
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6228
  store %struct.scatterlist* %3, %struct.scatterlist** %sg, align 8, !dbg !6228
  br label %for.cond, !dbg !6228

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !6230
  %5 = load i32, i32* %num_entries.addr, align 4, !dbg !6230
  %cmp = icmp ult i32 %4, %5, !dbg !6230
  br i1 %cmp, label %for.body, label %for.end, !dbg !6228

for.body:                                         ; preds = %for.cond
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !6232
  %7 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !6233
  %8 = load i32, i32* %i, align 4, !dbg !6234
  %idxprom = sext i32 %8 to i64, !dbg !6233
  %arrayidx = getelementptr %struct.page*, %struct.page** %7, i64 %idxprom, !dbg !6233
  %9 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !6233
  call void @sg_set_page(%struct.scatterlist* %6, %struct.page* %9, i32 4096, i32 0) #7, !dbg !6235
  br label %for.inc, !dbg !6235

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !6230
  %inc = add i32 %10, 1, !dbg !6230
  store i32 %inc, i32* %i, align 4, !dbg !6230
  %11 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !6230
  %call1 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %11) #7, !dbg !6230
  store %struct.scatterlist* %call1, %struct.scatterlist** %sg, align 8, !dbg !6230
  br label %for.cond, !dbg !6230, !llvm.loop !6236

for.end:                                          ; preds = %for.cond
  %12 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6238
  %13 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !6240
  %sgl2 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %13, i32 0, i32 0, !dbg !6241
  %14 = load %struct.scatterlist*, %struct.scatterlist** %sgl2, align 8, !dbg !6241
  %15 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !6242
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %15, i32 0, i32 1, !dbg !6243
  %16 = load i32, i32* %nents, align 8, !dbg !6243
  %call3 = call i32 @pci_map_sg(%struct.pci_dev* %12, %struct.scatterlist* %14, i32 %16, i32 0) #7, !dbg !6244
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6244
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6245

if.then5:                                         ; preds = %for.end
  br label %err, !dbg !6246

if.end6:                                          ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

err:                                              ; preds = %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6248), !dbg !6249
  %17 = load %struct.sg_table*, %struct.sg_table** %st.addr, align 8, !dbg !6250
  call void @sg_free_table(%struct.sg_table* %17) #7, !dbg !6251
  store i32 -12, i32* %retval, align 4, !dbg !6252
  br label %return, !dbg !6252

return:                                           ; preds = %err, %if.end6
  %18 = load i32, i32* %retval, align 4, !dbg !6253
  ret i32 %18, !dbg !6253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_gtt_insert_pages(i32 %first_entry, i32 %num_entries, %struct.page** %pages, i32 %flags) #0 !dbg !6254 {
entry:
  %first_entry.addr = alloca i32, align 4
  %num_entries.addr = alloca i32, align 4
  %pages.addr = alloca %struct.page**, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %addr = alloca i64, align 8
  store i32 %first_entry, i32* %first_entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %first_entry.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  store i32 %num_entries, i32* %num_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_entries.addr, metadata !6259, metadata !DIExpression()), !dbg !6260
  store %struct.page** %pages, %struct.page*** %pages.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page*** %pages.addr, metadata !6261, metadata !DIExpression()), !dbg !6262
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6265, metadata !DIExpression()), !dbg !6266
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6267, metadata !DIExpression()), !dbg !6268
  store i32 0, i32* %i, align 4, !dbg !6269
  %0 = load i32, i32* %first_entry.addr, align 4, !dbg !6271
  store i32 %0, i32* %j, align 4, !dbg !6272
  br label %for.cond, !dbg !6273

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6274
  %2 = load i32, i32* %num_entries.addr, align 4, !dbg !6276
  %cmp = icmp ult i32 %1, %2, !dbg !6277
  br i1 %cmp, label %for.body, label %for.end, !dbg !6278

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !6279, metadata !DIExpression()), !dbg !6281
  %3 = load %struct.page**, %struct.page*** %pages.addr, align 8, !dbg !6282
  %4 = load i32, i32* %i, align 4, !dbg !6282
  %idxprom = sext i32 %4 to i64, !dbg !6282
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %idxprom, !dbg !6282
  %5 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !6282
  %6 = load i64, i64* @vmemmap_base, align 8, !dbg !6282
  %7 = inttoptr i64 %6 to %struct.page*, !dbg !6282
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %5 to i64, !dbg !6282
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %7 to i64, !dbg !6282
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6282
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6282
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6282
  store i64 %shl, i64* %addr, align 8, !dbg !6281
  %8 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6283
  %write_entry = getelementptr inbounds %struct.intel_gtt_driver, %struct.intel_gtt_driver* %8, i32 0, i32 3, !dbg !6284
  %9 = load void (i64, i32, i32)*, void (i64, i32, i32)** %write_entry, align 8, !dbg !6284
  %10 = load i64, i64* %addr, align 8, !dbg !6285
  %11 = load i32, i32* %j, align 4, !dbg !6286
  %12 = load i32, i32* %flags.addr, align 4, !dbg !6287
  call void %9(i64 %10, i32 %11, i32 %12) #7, !dbg !6288
  br label %for.inc, !dbg !6289

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !6290
  %inc = add i32 %13, 1, !dbg !6290
  store i32 %inc, i32* %i, align 4, !dbg !6290
  %14 = load i32, i32* %j, align 4, !dbg !6291
  %inc1 = add i32 %14, 1, !dbg !6291
  store i32 %inc1, i32* %j, align 4, !dbg !6291
  br label %for.cond, !dbg !6292, !llvm.loop !6293

for.end:                                          ; preds = %for.cond
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6295, !srcloc !6296
  ret void, !dbg !6297
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_set_page(%struct.scatterlist* %sg, %struct.page* %page, i32 %len, i32 %offset) #0 !dbg !6298 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6305, metadata !DIExpression()), !dbg !6306
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6309
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6310
  call void @sg_assign_page(%struct.scatterlist* %0, %struct.page* %1) #7, !dbg !6311
  %2 = load i32, i32* %offset.addr, align 4, !dbg !6312
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6313
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %3, i32 0, i32 1, !dbg !6314
  store i32 %2, i32* %offset1, align 8, !dbg !6315
  %4 = load i32, i32* %len.addr, align 4, !dbg !6316
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6317
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %5, i32 0, i32 2, !dbg !6318
  store i32 %4, i32* %length, align 4, !dbg !6319
  ret void, !dbg !6320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_map_sg(%struct.pci_dev* %hwdev, %struct.scatterlist* %sg, i32 %nents, i32 %direction) #0 !dbg !6321 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %sg.addr = alloca %struct.scatterlist*, align 8
  %nents.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  store i32 %nents, i32* %nents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nents.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !6332
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6332
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6332
  %2 = load i32, i32* %nents.addr, align 4, !dbg !6332
  %3 = load i32, i32* %direction.addr, align 4, !dbg !6332
  %call = call i32 @dma_map_sg_attrs(%struct.device* %dev, %struct.scatterlist* %1, i32 %2, i32 %3, i64 0) #7, !dbg !6332
  ret i32 %call, !dbg !6333
}

; Function Attrs: noredzone
declare dso_local void @sg_free_table(%struct.sg_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_assign_page(%struct.scatterlist* %sg, %struct.page* %page) #0 !dbg !6334 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %page_link = alloca i64, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6337, metadata !DIExpression()), !dbg !6338
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  call void @llvm.dbg.declare(metadata i64* %page_link, metadata !6341, metadata !DIExpression()), !dbg !6342
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6343
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !6344
  %1 = load i64, i64* %page_link1, align 8, !dbg !6344
  %and = and i64 %1, 3, !dbg !6345
  store i64 %and, i64* %page_link, align 8, !dbg !6342
  br label %do.body, !dbg !6346

do.body:                                          ; preds = %entry
  %2 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6347
  %3 = ptrtoint %struct.page* %2 to i64, !dbg !6347
  %and2 = and i64 %3, 3, !dbg !6347
  %tobool = icmp ne i64 %and2, 0, !dbg !6347
  %lnot = xor i1 %tobool, true, !dbg !6347
  %lnot3 = xor i1 %lnot, true, !dbg !6347
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6347
  %conv = sext i32 %lnot.ext to i64, !dbg !6347
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6347
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6350

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6347

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !6351

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !6353

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !6351

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i32 95, i32 0, i64 12) #6, !dbg !6355, !srcloc !6357
  br label %do.end8, !dbg !6355

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6351

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #6, !dbg !6358, !srcloc !6361
  unreachable, !dbg !6362

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !6351

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !6351

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !6350

do.end12:                                         ; preds = %if.end
  %4 = load i64, i64* %page_link, align 8, !dbg !6363
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6364
  %6 = ptrtoint %struct.page* %5 to i64, !dbg !6365
  %or = or i64 %4, %6, !dbg !6366
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6367
  %page_link13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0, !dbg !6368
  store i64 %or, i64* %page_link13, align 8, !dbg !6369
  ret void, !dbg !6370
}

; Function Attrs: noredzone
declare dso_local i32 @dma_map_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_gtt_unmap_memory(%struct.scatterlist* %sg_list, i32 %num_sg) #0 !dbg !6371 {
entry:
  %sg_list.addr = alloca %struct.scatterlist*, align 8
  %num_sg.addr = alloca i32, align 4
  %st = alloca %struct.sg_table, align 8
  store %struct.scatterlist* %sg_list, %struct.scatterlist** %sg_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg_list.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  store i32 %num_sg, i32* %num_sg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_sg.addr, metadata !6376, metadata !DIExpression()), !dbg !6377
  call void @llvm.dbg.declare(metadata %struct.sg_table* %st, metadata !6378, metadata !DIExpression()), !dbg !6379
  br label %do.body, !dbg !6380

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6381

do.end:                                           ; preds = %do.body
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6383
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg_list.addr, align 8, !dbg !6384
  %2 = load i32, i32* %num_sg.addr, align 4, !dbg !6385
  call void @pci_unmap_sg(%struct.pci_dev* %0, %struct.scatterlist* %1, i32 %2, i32 0) #7, !dbg !6386
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sg_list.addr, align 8, !dbg !6387
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %st, i32 0, i32 0, !dbg !6388
  store %struct.scatterlist* %3, %struct.scatterlist** %sgl, align 8, !dbg !6389
  %4 = load i32, i32* %num_sg.addr, align 4, !dbg !6390
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %st, i32 0, i32 1, !dbg !6391
  store i32 %4, i32* %nents, align 8, !dbg !6392
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %st, i32 0, i32 2, !dbg !6393
  store i32 %4, i32* %orig_nents, align 4, !dbg !6394
  call void @sg_free_table(%struct.sg_table* %st) #7, !dbg !6395
  ret void, !dbg !6396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_unmap_sg(%struct.pci_dev* %hwdev, %struct.scatterlist* %sg, i32 %nents, i32 %direction) #0 !dbg !6397 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %sg.addr = alloca %struct.scatterlist*, align 8
  %nents.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  store i32 %nents, i32* %nents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nents.addr, metadata !6404, metadata !DIExpression()), !dbg !6405
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !6408
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6408
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6408
  %2 = load i32, i32* %nents.addr, align 4, !dbg !6408
  %3 = load i32, i32* %direction.addr, align 4, !dbg !6408
  call void @dma_unmap_sg_attrs(%struct.device* %dev, %struct.scatterlist* %1, i32 %2, i32 %3, i64 0) #7, !dbg !6408
  ret void, !dbg !6409
}

; Function Attrs: noredzone
declare dso_local void @dma_unmap_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.agp_memory* @agp_create_memory(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @agp_free_page_array(%struct.agp_memory* %mem) #0 !dbg !6410 {
entry:
  %mem.addr = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %mem, %struct.agp_memory** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %mem.addr, metadata !6411, metadata !DIExpression()), !dbg !6412
  %0 = load %struct.agp_memory*, %struct.agp_memory** %mem.addr, align 8, !dbg !6413
  %pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %0, i32 0, i32 3, !dbg !6414
  %1 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !6414
  %2 = bitcast %struct.page** %1 to i8*, !dbg !6413
  call void @kvfree(i8* %2) #7, !dbg !6415
  ret void, !dbg !6416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.agp_memory* @alloc_agpphysmem_i8xx(i64 %pg_count, i32 %type) #0 !dbg !6417 {
entry:
  %retval = alloca %struct.agp_memory*, align 8
  %pg_count.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %new = alloca %struct.agp_memory*, align 8
  %page = alloca %struct.page*, align 8
  store i64 %pg_count, i64* %pg_count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pg_count.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  call void @llvm.dbg.declare(metadata %struct.agp_memory** %new, metadata !6422, metadata !DIExpression()), !dbg !6423
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !6424, metadata !DIExpression()), !dbg !6425
  %0 = load i64, i64* %pg_count.addr, align 8, !dbg !6426
  switch i64 %0, label %sw.default [
    i64 1, label %sw.bb
    i64 4, label %sw.bb1
  ], !dbg !6427

sw.bb:                                            ; preds = %entry
  %1 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6428
  %driver = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %1, i32 0, i32 1, !dbg !6430
  %2 = load %struct.agp_bridge_driver*, %struct.agp_bridge_driver** %driver, align 8, !dbg !6430
  %agp_alloc_page = getelementptr inbounds %struct.agp_bridge_driver, %struct.agp_bridge_driver* %2, i32 0, i32 20, !dbg !6431
  %3 = load %struct.page* (%struct.agp_bridge_data*)*, %struct.page* (%struct.agp_bridge_data*)** %agp_alloc_page, align 8, !dbg !6431
  %4 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6432
  %call = call %struct.page* %3(%struct.agp_bridge_data* %4) #7, !dbg !6428
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !6433
  br label %sw.epilog, !dbg !6434

sw.bb1:                                           ; preds = %entry
  %call2 = call %struct.page* @i8xx_alloc_pages() #7, !dbg !6435
  store %struct.page* %call2, %struct.page** %page, align 8, !dbg !6436
  br label %sw.epilog, !dbg !6437

sw.default:                                       ; preds = %entry
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6438
  br label %return, !dbg !6438

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %5 = load %struct.page*, %struct.page** %page, align 8, !dbg !6439
  %cmp = icmp eq %struct.page* %5, null, !dbg !6441
  br i1 %cmp, label %if.then, label %if.end, !dbg !6442

if.then:                                          ; preds = %sw.epilog
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6443
  br label %return, !dbg !6443

if.end:                                           ; preds = %sw.epilog
  %6 = load i64, i64* %pg_count.addr, align 8, !dbg !6444
  %conv = trunc i64 %6 to i32, !dbg !6444
  %call3 = call %struct.agp_memory* @agp_create_memory(i32 %conv) #7, !dbg !6445
  store %struct.agp_memory* %call3, %struct.agp_memory** %new, align 8, !dbg !6446
  %7 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6447
  %cmp4 = icmp eq %struct.agp_memory* %7, null, !dbg !6449
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !6450

if.then6:                                         ; preds = %if.end
  store %struct.agp_memory* null, %struct.agp_memory** %retval, align 8, !dbg !6451
  br label %return, !dbg !6451

if.end7:                                          ; preds = %if.end
  %8 = load %struct.page*, %struct.page** %page, align 8, !dbg !6452
  %9 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6453
  %pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %9, i32 0, i32 3, !dbg !6454
  %10 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !6454
  %arrayidx = getelementptr %struct.page*, %struct.page** %10, i64 0, !dbg !6453
  store %struct.page* %8, %struct.page** %arrayidx, align 8, !dbg !6455
  %11 = load i64, i64* %pg_count.addr, align 8, !dbg !6456
  %cmp8 = icmp eq i64 %11, 4, !dbg !6458
  br i1 %cmp8, label %if.then10, label %if.end25, !dbg !6459

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6460
  %pages11 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 3, !dbg !6462
  %13 = load %struct.page**, %struct.page*** %pages11, align 8, !dbg !6462
  %arrayidx12 = getelementptr %struct.page*, %struct.page** %13, i64 0, !dbg !6460
  %14 = load %struct.page*, %struct.page** %arrayidx12, align 8, !dbg !6460
  %add.ptr = getelementptr %struct.page, %struct.page* %14, i64 1, !dbg !6463
  %15 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6464
  %pages13 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %15, i32 0, i32 3, !dbg !6465
  %16 = load %struct.page**, %struct.page*** %pages13, align 8, !dbg !6465
  %arrayidx14 = getelementptr %struct.page*, %struct.page** %16, i64 1, !dbg !6464
  store %struct.page* %add.ptr, %struct.page** %arrayidx14, align 8, !dbg !6466
  %17 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6467
  %pages15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %17, i32 0, i32 3, !dbg !6468
  %18 = load %struct.page**, %struct.page*** %pages15, align 8, !dbg !6468
  %arrayidx16 = getelementptr %struct.page*, %struct.page** %18, i64 1, !dbg !6467
  %19 = load %struct.page*, %struct.page** %arrayidx16, align 8, !dbg !6467
  %add.ptr17 = getelementptr %struct.page, %struct.page* %19, i64 1, !dbg !6469
  %20 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6470
  %pages18 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %20, i32 0, i32 3, !dbg !6471
  %21 = load %struct.page**, %struct.page*** %pages18, align 8, !dbg !6471
  %arrayidx19 = getelementptr %struct.page*, %struct.page** %21, i64 2, !dbg !6470
  store %struct.page* %add.ptr17, %struct.page** %arrayidx19, align 8, !dbg !6472
  %22 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6473
  %pages20 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %22, i32 0, i32 3, !dbg !6474
  %23 = load %struct.page**, %struct.page*** %pages20, align 8, !dbg !6474
  %arrayidx21 = getelementptr %struct.page*, %struct.page** %23, i64 2, !dbg !6473
  %24 = load %struct.page*, %struct.page** %arrayidx21, align 8, !dbg !6473
  %add.ptr22 = getelementptr %struct.page, %struct.page* %24, i64 1, !dbg !6475
  %25 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6476
  %pages23 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %25, i32 0, i32 3, !dbg !6477
  %26 = load %struct.page**, %struct.page*** %pages23, align 8, !dbg !6477
  %arrayidx24 = getelementptr %struct.page*, %struct.page** %26, i64 3, !dbg !6476
  store %struct.page* %add.ptr22, %struct.page** %arrayidx24, align 8, !dbg !6478
  br label %if.end25, !dbg !6479

if.end25:                                         ; preds = %if.then10, %if.end7
  %27 = load i64, i64* %pg_count.addr, align 8, !dbg !6480
  %28 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6481
  %page_count = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 4, !dbg !6482
  store i64 %27, i64* %page_count, align 8, !dbg !6483
  %29 = load i64, i64* %pg_count.addr, align 8, !dbg !6484
  %conv26 = trunc i64 %29 to i32, !dbg !6484
  %30 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6485
  %num_scratch_pages = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 6, !dbg !6486
  store i32 %conv26, i32* %num_scratch_pages, align 4, !dbg !6487
  %31 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6488
  %type27 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %31, i32 0, i32 8, !dbg !6489
  store i32 2, i32* %type27, align 8, !dbg !6490
  %32 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6491
  %pages28 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 3, !dbg !6491
  %33 = load %struct.page**, %struct.page*** %pages28, align 8, !dbg !6491
  %arrayidx29 = getelementptr %struct.page*, %struct.page** %33, i64 0, !dbg !6491
  %34 = load %struct.page*, %struct.page** %arrayidx29, align 8, !dbg !6491
  %35 = load i64, i64* @vmemmap_base, align 8, !dbg !6491
  %36 = inttoptr i64 %35 to %struct.page*, !dbg !6491
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %34 to i64, !dbg !6491
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %36 to i64, !dbg !6491
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6491
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6491
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6491
  %conv30 = trunc i64 %shl to i32, !dbg !6491
  %37 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6492
  %physical = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %37, i32 0, i32 9, !dbg !6493
  store i32 %conv30, i32* %physical, align 4, !dbg !6494
  %38 = load %struct.agp_memory*, %struct.agp_memory** %new, align 8, !dbg !6495
  store %struct.agp_memory* %38, %struct.agp_memory** %retval, align 8, !dbg !6496
  br label %return, !dbg !6496

return:                                           ; preds = %if.end25, %if.then6, %if.then, %sw.default
  %39 = load %struct.agp_memory*, %struct.agp_memory** %retval, align 8, !dbg !6497
  ret %struct.agp_memory* %39, !dbg !6497
}

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @i8xx_alloc_pages() #0 !dbg !6498 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6501, metadata !DIExpression()), !dbg !6507
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6512, metadata !DIExpression()), !dbg !6517
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6519, metadata !DIExpression()), !dbg !6520
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6521, metadata !DIExpression()), !dbg !6522
  %retval = alloca %struct.page*, align 8
  %page = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !6523, metadata !DIExpression()), !dbg !6524
  %call = call %struct.page* @alloc_pages(i32 3268, i32 2) #7, !dbg !6525
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !6526
  %0 = load %struct.page*, %struct.page** %page, align 8, !dbg !6527
  %cmp = icmp eq %struct.page* %0, null, !dbg !6529
  br i1 %cmp, label %if.then, label %if.end, !dbg !6530

if.then:                                          ; preds = %entry
  store %struct.page* null, %struct.page** %retval, align 8, !dbg !6531
  br label %return, !dbg !6531

if.end:                                           ; preds = %entry
  %1 = load %struct.page*, %struct.page** %page, align 8, !dbg !6532
  %call1 = call i32 @set_pages_uc(%struct.page* %1, i32 4) #7, !dbg !6534
  %cmp2 = icmp slt i32 %call1, 0, !dbg !6535
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !6536

if.then3:                                         ; preds = %if.end
  %2 = load %struct.page*, %struct.page** %page, align 8, !dbg !6537
  %call4 = call i32 @set_pages_wb(%struct.page* %2, i32 4) #7, !dbg !6539
  %3 = load %struct.page*, %struct.page** %page, align 8, !dbg !6540
  call void @__free_pages(%struct.page* %3, i32 2) #7, !dbg !6541
  store %struct.page* null, %struct.page** %retval, align 8, !dbg !6542
  br label %return, !dbg !6542

if.end5:                                          ; preds = %if.end
  %4 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6543
  %current_memory_agp = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %4, i32 0, i32 17, !dbg !6544
  store %struct.atomic_t* %current_memory_agp, %struct.atomic_t** %v.addr.i, align 8
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6545
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !6545
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6546
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6547
  %conv.i.i = trunc i64 %8 to i32, !dbg !6547
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #9, !dbg !6548
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6549
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6549
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #9, !dbg !6549
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6550
  store %struct.atomic_t* %11, %struct.atomic_t** %v.addr.i1.i, align 8
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6551
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6552
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #6, !dbg !6553, !srcloc !6554
  %13 = load %struct.page*, %struct.page** %page, align 8, !dbg !6555
  store %struct.page* %13, %struct.page** %retval, align 8, !dbg !6556
  br label %return, !dbg !6556

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %14 = load %struct.page*, %struct.page** %retval, align 8, !dbg !6557
  ret %struct.page* %14, !dbg !6557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages(i32 %gfp_mask, i32 %order) #0 !dbg !6558 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6562, metadata !DIExpression()), !dbg !6563
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  %call = call i32 @numa_node_id() #7, !dbg !6566
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6567
  %1 = load i32, i32* %order.addr, align 4, !dbg !6568
  %call1 = call %struct.page* @alloc_pages_node(i32 %call, i32 %0, i32 %1) #7, !dbg !6569
  ret %struct.page* %call1, !dbg !6570
}

; Function Attrs: noredzone
declare dso_local i32 @set_pages_uc(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @set_pages_wb(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__free_pages(%struct.page*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !6571 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !6574, metadata !DIExpression()), !dbg !6575
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6576, metadata !DIExpression()), !dbg !6577
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  %0 = load i32, i32* %nid.addr, align 4, !dbg !6580
  %cmp = icmp eq i32 %0, -1, !dbg !6582
  br i1 %cmp, label %if.then, label %if.end, !dbg !6583

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #7, !dbg !6584
  store i32 %call, i32* %nid.addr, align 4, !dbg !6585
  br label %if.end, !dbg !6586

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %nid.addr, align 4, !dbg !6587
  %2 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6588
  %3 = load i32, i32* %order.addr, align 4, !dbg !6589
  %call1 = call %struct.page* @__alloc_pages_node(i32 %1, i32 %2, i32 %3) #7, !dbg !6590
  ret %struct.page* %call1, !dbg !6591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_node_id() #0 !dbg !6592 {
entry:
  ret i32 0, !dbg !6594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_mem_id() #0 !dbg !6595 {
entry:
  %call = call i32 @numa_node_id() #7, !dbg !6597
  ret i32 %call, !dbg !6598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !6599 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !6600, metadata !DIExpression()), !dbg !6601
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6602, metadata !DIExpression()), !dbg !6603
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6606
  %1 = load i32, i32* %order.addr, align 4, !dbg !6607
  %2 = load i32, i32* %nid.addr, align 4, !dbg !6608
  %call = call %struct.page* @__alloc_pages(i32 %0, i32 %1, i32 %2) #7, !dbg !6609
  ret %struct.page* %call, !dbg !6610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages(i32 %gfp_mask, i32 %order, i32 %preferred_nid) #0 !dbg !6611 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %preferred_nid.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6614, metadata !DIExpression()), !dbg !6615
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6616, metadata !DIExpression()), !dbg !6617
  store i32 %preferred_nid, i32* %preferred_nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preferred_nid.addr, metadata !6618, metadata !DIExpression()), !dbg !6619
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6620
  %1 = load i32, i32* %order.addr, align 4, !dbg !6621
  %2 = load i32, i32* %preferred_nid.addr, align 4, !dbg !6622
  %call = call %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, %struct.nodemask_t* null) #7, !dbg !6623
  ret %struct.page* %call, !dbg !6624
}

; Function Attrs: noredzone
declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, %struct.nodemask_t*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6625 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6629, metadata !DIExpression()), !dbg !6630
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  ret i1 true, !dbg !6633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6634 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6638, metadata !DIExpression()), !dbg !6639
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6640, metadata !DIExpression()), !dbg !6641
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6642, metadata !DIExpression()), !dbg !6643
  ret void, !dbg !6644
}

; Function Attrs: noredzone
declare dso_local void @agp_free_key(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i8xx_destroy_pages(%struct.page* %page) #0 !dbg !6645 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6646, metadata !DIExpression()), !dbg !6648
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6512, metadata !DIExpression()), !dbg !6652
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6519, metadata !DIExpression()), !dbg !6654
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6655, metadata !DIExpression()), !dbg !6656
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6657, metadata !DIExpression()), !dbg !6658
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6659
  %cmp = icmp eq %struct.page* %0, null, !dbg !6661
  br i1 %cmp, label %if.then, label %if.end, !dbg !6662

if.then:                                          ; preds = %entry
  br label %return, !dbg !6663

if.end:                                           ; preds = %entry
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6664
  %call = call i32 @set_pages_wb(%struct.page* %1, i32 4) #7, !dbg !6665
  %2 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6666
  call void @__free_pages(%struct.page* %2, i32 2) #7, !dbg !6667
  %3 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8, !dbg !6668
  %current_memory_agp = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %3, i32 0, i32 17, !dbg !6669
  store %struct.atomic_t* %current_memory_agp, %struct.atomic_t** %v.addr.i, align 8
  %4 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6670
  %5 = bitcast %struct.atomic_t* %4 to i8*, !dbg !6670
  store i8* %5, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6671
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6672
  %conv.i.i = trunc i64 %7 to i32, !dbg !6672
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %6, i32 %conv.i.i) #9, !dbg !6673
  %8 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6674
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !6674
  call void @kcsan_check_access(i8* %8, i64 %9, i32 7) #9, !dbg !6674
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6675
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i1.i, align 8
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6676
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6677
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #6, !dbg !6678, !srcloc !6679
  br label %return, !dbg !6680

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6680
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_set_mask(%struct.device*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_gtt_mappable_entries() #0 !dbg !6681 {
entry:
  %aperture_size = alloca i32, align 4
  %smram_miscc = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i32* %aperture_size, metadata !6684, metadata !DIExpression()), !dbg !6685
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6686
  %1 = bitcast %struct.intel_gtt_driver* %0 to i32*, !dbg !6686
  %bf.load = load i32, i32* %1, align 8, !dbg !6686
  %bf.clear = and i32 %bf.load, 255, !dbg !6686
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6688
  br i1 %cmp, label %if.then, label %if.else3, !dbg !6689

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %smram_miscc, metadata !6690, metadata !DIExpression()), !dbg !6692
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6693
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %2, i32 112, i32* %smram_miscc) #7, !dbg !6694
  %3 = load i32, i32* %smram_miscc, align 4, !dbg !6695
  %and = and i32 %3, 65536, !dbg !6697
  %cmp1 = icmp eq i32 %and, 65536, !dbg !6698
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !6699

if.then2:                                         ; preds = %if.then
  store i32 33554432, i32* %aperture_size, align 4, !dbg !6700
  br label %if.end, !dbg !6701

if.else:                                          ; preds = %if.then
  store i32 67108864, i32* %aperture_size, align 4, !dbg !6702
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end33, !dbg !6703

if.else3:                                         ; preds = %entry
  %4 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6704
  %5 = bitcast %struct.intel_gtt_driver* %4 to i32*, !dbg !6704
  %bf.load4 = load i32, i32* %5, align 8, !dbg !6704
  %bf.clear5 = and i32 %bf.load4, 255, !dbg !6704
  %cmp6 = icmp eq i32 %bf.clear5, 2, !dbg !6706
  br i1 %cmp6, label %if.then7, label %if.else15, !dbg !6707

if.then7:                                         ; preds = %if.else3
  call void @llvm.dbg.declare(metadata i16* %gmch_ctrl, metadata !6708, metadata !DIExpression()), !dbg !6710
  %6 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6711
  %call8 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 82, i16* %gmch_ctrl) #7, !dbg !6712
  %7 = load i16, i16* %gmch_ctrl, align 2, !dbg !6713
  %conv = zext i16 %7 to i32, !dbg !6713
  %and9 = and i32 %conv, 1, !dbg !6715
  %cmp10 = icmp eq i32 %and9, 1, !dbg !6716
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !6717

if.then12:                                        ; preds = %if.then7
  store i32 67108864, i32* %aperture_size, align 4, !dbg !6718
  br label %if.end14, !dbg !6719

if.else13:                                        ; preds = %if.then7
  store i32 134217728, i32* %aperture_size, align 4, !dbg !6720
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end32, !dbg !6721

if.else15:                                        ; preds = %if.else3
  %8 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6722
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !6722
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 2, !dbg !6722
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !6722
  %9 = load i64, i64* %start, align 8, !dbg !6722
  %cmp16 = icmp eq i64 %9, 0, !dbg !6722
  br i1 %cmp16, label %land.lhs.true, label %cond.false, !dbg !6722

land.lhs.true:                                    ; preds = %if.else15
  %10 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6722
  %resource18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !6722
  %arrayidx19 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource18, i64 0, i64 2, !dbg !6722
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx19, i32 0, i32 1, !dbg !6722
  %11 = load i64, i64* %end, align 8, !dbg !6722
  %12 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6722
  %resource20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 44, !dbg !6722
  %arrayidx21 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource20, i64 0, i64 2, !dbg !6722
  %start22 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx21, i32 0, i32 0, !dbg !6722
  %13 = load i64, i64* %start22, align 8, !dbg !6722
  %cmp23 = icmp eq i64 %11, %13, !dbg !6722
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !6722

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !6722

cond.false:                                       ; preds = %land.lhs.true, %if.else15
  %14 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6722
  %resource25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 44, !dbg !6722
  %arrayidx26 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource25, i64 0, i64 2, !dbg !6722
  %end27 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx26, i32 0, i32 1, !dbg !6722
  %15 = load i64, i64* %end27, align 8, !dbg !6722
  %16 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6722
  %resource28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !6722
  %arrayidx29 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource28, i64 0, i64 2, !dbg !6722
  %start30 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx29, i32 0, i32 0, !dbg !6722
  %17 = load i64, i64* %start30, align 8, !dbg !6722
  %sub = sub i64 %15, %17, !dbg !6722
  %add = add i64 %sub, 1, !dbg !6722
  br label %cond.end, !dbg !6722

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !6722
  %conv31 = trunc i64 %cond to i32, !dbg !6722
  store i32 %conv31, i32* %aperture_size, align 4, !dbg !6724
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.end14
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end
  %18 = load i32, i32* %aperture_size, align 4, !dbg !6725
  %shr = lshr i32 %18, 12, !dbg !6726
  ret i32 %shr, !dbg !6727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_gtt_total_entries() #0 !dbg !6728 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6729
  %1 = bitcast %struct.intel_gtt_driver* %0 to i32*, !dbg !6729
  %bf.load = load i32, i32* %1, align 8, !dbg !6729
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !6729
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6729
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !6729
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6731

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6732
  %3 = bitcast %struct.intel_gtt_driver* %2 to i32*, !dbg !6732
  %bf.load1 = load i32, i32* %3, align 8, !dbg !6732
  %bf.clear2 = and i32 %bf.load1, 255, !dbg !6732
  %cmp = icmp eq i32 %bf.clear2, 4, !dbg !6733
  br i1 %cmp, label %if.then, label %lor.lhs.false3, !dbg !6734

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6735
  %5 = bitcast %struct.intel_gtt_driver* %4 to i32*, !dbg !6735
  %bf.load4 = load i32, i32* %5, align 8, !dbg !6735
  %bf.clear5 = and i32 %bf.load4, 255, !dbg !6735
  %cmp6 = icmp eq i32 %bf.clear5, 5, !dbg !6736
  br i1 %cmp6, label %if.then, label %if.else, !dbg !6737

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %call = call i32 @i965_gtt_total_entries() #7, !dbg !6738
  store i32 %call, i32* %retval, align 4, !dbg !6739
  br label %return, !dbg !6739

if.else:                                          ; preds = %lor.lhs.false3
  %6 = load i32, i32* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 20), align 4, !dbg !6740
  store i32 %6, i32* %retval, align 4, !dbg !6742
  br label %return, !dbg !6742

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6743
  ret i32 %7, !dbg !6743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @intel_gtt_can_wc() #0 !dbg !6744 {
entry:
  %retval = alloca i1, align 1
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6745
  %1 = bitcast %struct.intel_gtt_driver* %0 to i32*, !dbg !6745
  %bf.load = load i32, i32* %1, align 8, !dbg !6745
  %bf.clear = and i32 %bf.load, 255, !dbg !6745
  %cmp = icmp sle i32 %bf.clear, 2, !dbg !6747
  br i1 %cmp, label %if.then, label %if.end, !dbg !6748

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !6749
  br label %return, !dbg !6749

if.end:                                           ; preds = %entry
  %2 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6750
  %3 = bitcast %struct.intel_gtt_driver* %2 to i32*, !dbg !6750
  %bf.load1 = load i32, i32* %3, align 8, !dbg !6750
  %bf.clear2 = and i32 %bf.load1, 255, !dbg !6750
  %cmp3 = icmp sge i32 %bf.clear2, 6, !dbg !6752
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6753

if.then4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !6754
  br label %return, !dbg !6754

if.end5:                                          ; preds = %if.end
  %call = call i32 @needs_ilk_vtd_wa() #7, !dbg !6755
  %tobool = icmp ne i32 %call, 0, !dbg !6755
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6757

if.then6:                                         ; preds = %if.end5
  store i1 false, i1* %retval, align 1, !dbg !6758
  br label %return, !dbg !6758

if.end7:                                          ; preds = %if.end5
  store i1 true, i1* %retval, align 1, !dbg !6759
  br label %return, !dbg !6759

return:                                           ; preds = %if.end7, %if.then6, %if.then4, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !6760
  ret i1 %4, !dbg !6760
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap_wc(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @intel_gtt_stolen_size() #0 !dbg !4770 {
entry:
  %retval = alloca i64, align 8
  %gmch_ctrl = alloca i16, align 2
  %rdct = alloca i8, align 1
  %local = alloca i32, align 4
  %stolen_size = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i16* %gmch_ctrl, metadata !6761, metadata !DIExpression()), !dbg !6762
  call void @llvm.dbg.declare(metadata i8* %rdct, metadata !6763, metadata !DIExpression()), !dbg !6764
  call void @llvm.dbg.declare(metadata i32* %local, metadata !6765, metadata !DIExpression()), !dbg !6766
  store i32 0, i32* %local, align 4, !dbg !6766
  call void @llvm.dbg.declare(metadata i64* %stolen_size, metadata !6767, metadata !DIExpression()), !dbg !6768
  store i64 0, i64* %stolen_size, align 8, !dbg !6768
  %0 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6769
  %1 = bitcast %struct.intel_gtt_driver* %0 to i32*, !dbg !6769
  %bf.load = load i32, i32* %1, align 8, !dbg !6769
  %bf.clear = and i32 %bf.load, 255, !dbg !6769
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6771
  br i1 %cmp, label %if.then, label %if.end, !dbg !6772

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !6773
  br label %return, !dbg !6773

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6774
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %2, i32 82, i16* %gmch_ctrl) #7, !dbg !6775
  %3 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6776
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 8, !dbg !6778
  %4 = load i16, i16* %device, align 2, !dbg !6778
  %conv = zext i16 %4 to i32, !dbg !6779
  %cmp1 = icmp eq i32 %conv, 13685, !dbg !6780
  br i1 %cmp1, label %if.then7, label %lor.lhs.false, !dbg !6781

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6782
  %device3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 8, !dbg !6783
  %6 = load i16, i16* %device3, align 2, !dbg !6783
  %conv4 = zext i16 %6 to i32, !dbg !6784
  %cmp5 = icmp eq i32 %conv4, 9568, !dbg !6785
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !6786

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i16, i16* %gmch_ctrl, align 2, !dbg !6787
  %conv8 = zext i16 %7 to i32, !dbg !6787
  %and = and i32 %conv8, 112, !dbg !6789
  switch i32 %and, label %sw.default [
    i32 32, label %sw.bb
    i32 48, label %sw.bb9
    i32 64, label %sw.bb10
    i32 16, label %sw.bb11
  ], !dbg !6790

sw.bb:                                            ; preds = %if.then7
  store i64 524288, i64* %stolen_size, align 8, !dbg !6791
  br label %sw.epilog, !dbg !6793

sw.bb9:                                           ; preds = %if.then7
  store i64 1048576, i64* %stolen_size, align 8, !dbg !6794
  br label %sw.epilog, !dbg !6795

sw.bb10:                                          ; preds = %if.then7
  store i64 8388608, i64* %stolen_size, align 8, !dbg !6796
  br label %sw.epilog, !dbg !6797

sw.bb11:                                          ; preds = %if.then7
  %8 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6798
  %add.ptr = getelementptr i8, i8* %8, i64 12304, !dbg !6799
  %call12 = call zeroext i8 @readb(i8* %add.ptr) #7, !dbg !6800
  store i8 %call12, i8* %rdct, align 1, !dbg !6801
  %9 = load i8, i8* %rdct, align 1, !dbg !6802
  %conv13 = zext i8 %9 to i32, !dbg !6802
  %and14 = and i32 %conv13, 32, !dbg !6802
  %shr = ashr i32 %and14, 5, !dbg !6802
  %add = add i32 %shr, 1, !dbg !6803
  %10 = load i8, i8* %rdct, align 1, !dbg !6804
  %conv15 = zext i8 %10 to i32, !dbg !6804
  %and16 = and i32 %conv15, 24, !dbg !6804
  %shr17 = ashr i32 %and16, 3, !dbg !6804
  %idxprom = sext i32 %shr17 to i64, !dbg !6804
  %arrayidx = getelementptr [4 x i32], [4 x i32]* @intel_gtt_stolen_size.ddt, i64 0, i64 %idxprom, !dbg !6804
  %11 = load i32, i32* %arrayidx, align 4, !dbg !6804
  %mul = mul i32 %11, 1024, !dbg !6804
  %mul18 = mul i32 %mul, 1024, !dbg !6804
  %mul19 = mul i32 %add, %mul18, !dbg !6805
  %conv20 = sext i32 %mul19 to i64, !dbg !6806
  store i64 %conv20, i64* %stolen_size, align 8, !dbg !6807
  store i32 1, i32* %local, align 4, !dbg !6808
  br label %sw.epilog, !dbg !6809

sw.default:                                       ; preds = %if.then7
  store i64 0, i64* %stolen_size, align 8, !dbg !6810
  br label %sw.epilog, !dbg !6811

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb
  br label %if.end38, !dbg !6812

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i16, i16* %gmch_ctrl, align 2, !dbg !6813
  %conv21 = zext i16 %12 to i32, !dbg !6813
  %and22 = and i32 %conv21, 240, !dbg !6815
  switch i32 %and22, label %sw.default36 [
    i32 16, label %sw.bb23
    i32 32, label %sw.bb24
    i32 48, label %sw.bb25
    i32 64, label %sw.bb26
    i32 80, label %sw.bb27
    i32 96, label %sw.bb28
    i32 112, label %sw.bb29
    i32 128, label %sw.bb30
    i32 144, label %sw.bb31
    i32 160, label %sw.bb32
    i32 176, label %sw.bb33
    i32 192, label %sw.bb34
    i32 208, label %sw.bb35
  ], !dbg !6816

sw.bb23:                                          ; preds = %if.else
  store i64 1048576, i64* %stolen_size, align 8, !dbg !6817
  br label %sw.epilog37, !dbg !6819

sw.bb24:                                          ; preds = %if.else
  store i64 4194304, i64* %stolen_size, align 8, !dbg !6820
  br label %sw.epilog37, !dbg !6821

sw.bb25:                                          ; preds = %if.else
  store i64 8388608, i64* %stolen_size, align 8, !dbg !6822
  br label %sw.epilog37, !dbg !6823

sw.bb26:                                          ; preds = %if.else
  store i64 16777216, i64* %stolen_size, align 8, !dbg !6824
  br label %sw.epilog37, !dbg !6825

sw.bb27:                                          ; preds = %if.else
  store i64 33554432, i64* %stolen_size, align 8, !dbg !6826
  br label %sw.epilog37, !dbg !6827

sw.bb28:                                          ; preds = %if.else
  store i64 50331648, i64* %stolen_size, align 8, !dbg !6828
  br label %sw.epilog37, !dbg !6829

sw.bb29:                                          ; preds = %if.else
  store i64 67108864, i64* %stolen_size, align 8, !dbg !6830
  br label %sw.epilog37, !dbg !6831

sw.bb30:                                          ; preds = %if.else
  store i64 134217728, i64* %stolen_size, align 8, !dbg !6832
  br label %sw.epilog37, !dbg !6833

sw.bb31:                                          ; preds = %if.else
  store i64 268435456, i64* %stolen_size, align 8, !dbg !6834
  br label %sw.epilog37, !dbg !6835

sw.bb32:                                          ; preds = %if.else
  store i64 100663296, i64* %stolen_size, align 8, !dbg !6836
  br label %sw.epilog37, !dbg !6837

sw.bb33:                                          ; preds = %if.else
  store i64 167772160, i64* %stolen_size, align 8, !dbg !6838
  br label %sw.epilog37, !dbg !6839

sw.bb34:                                          ; preds = %if.else
  store i64 234881024, i64* %stolen_size, align 8, !dbg !6840
  br label %sw.epilog37, !dbg !6841

sw.bb35:                                          ; preds = %if.else
  store i64 369098752, i64* %stolen_size, align 8, !dbg !6842
  br label %sw.epilog37, !dbg !6843

sw.default36:                                     ; preds = %if.else
  store i64 0, i64* %stolen_size, align 8, !dbg !6844
  br label %sw.epilog37, !dbg !6845

sw.epilog37:                                      ; preds = %sw.default36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23
  br label %if.end38

if.end38:                                         ; preds = %sw.epilog37, %sw.epilog
  %13 = load i64, i64* %stolen_size, align 8, !dbg !6846
  %cmp39 = icmp ugt i64 %13, 0, !dbg !6848
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !6849

if.then41:                                        ; preds = %if.end38
  %14 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6850
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 41, !dbg !6850
  %15 = load i64, i64* %stolen_size, align 8, !dbg !6850
  %div = udiv i64 %15, 1024, !dbg !6850
  %16 = load i32, i32* %local, align 4, !dbg !6850
  %tobool = icmp ne i32 %16, 0, !dbg !6850
  %17 = zext i1 %tobool to i64, !dbg !6850
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), !dbg !6850
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0), i64 %div, i8* %cond) #8, !dbg !6850
  br label %if.end44, !dbg !6852

if.else42:                                        ; preds = %if.end38
  %18 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6853
  %dev43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !6853
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !6853
  store i64 0, i64* %stolen_size, align 8, !dbg !6855
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then41
  %19 = load i64, i64* %stolen_size, align 8, !dbg !6856
  store i64 %19, i64* %retval, align 8, !dbg !6857
  br label %return, !dbg !6857

return:                                           ; preds = %if.end44, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !6858
  ret i64 %20, !dbg !6858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_gtt_setup_scratch_page() #0 !dbg !6859 {
entry:
  %retval = alloca i32, align 4
  %page = alloca %struct.page*, align 8
  %dma_addr = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !6860, metadata !DIExpression()), !dbg !6861
  call void @llvm.dbg.declare(metadata i64* %dma_addr, metadata !6862, metadata !DIExpression()), !dbg !6863
  %call = call %struct.page* @alloc_pages(i32 3524, i32 0) #7, !dbg !6864
  store %struct.page* %call, %struct.page** %page, align 8, !dbg !6865
  %0 = load %struct.page*, %struct.page** %page, align 8, !dbg !6866
  %cmp = icmp eq %struct.page* %0, null, !dbg !6868
  br i1 %cmp, label %if.then, label %if.end, !dbg !6869

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6870
  br label %return, !dbg !6870

if.end:                                           ; preds = %entry
  %1 = load %struct.page*, %struct.page** %page, align 8, !dbg !6871
  %call1 = call i32 @set_pages_uc(%struct.page* %1, i32 1) #7, !dbg !6872
  %bf.load = load i8, i8* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 16), align 4, !dbg !6873
  %bf.clear = and i8 %bf.load, 1, !dbg !6873
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6873
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6875
  br i1 %tobool, label %if.then2, label %if.else, !dbg !6876

if.then2:                                         ; preds = %if.end
  %2 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6877
  %3 = load %struct.page*, %struct.page** %page, align 8, !dbg !6879
  %call3 = call i64 @pci_map_page(%struct.pci_dev* %2, %struct.page* %3, i64 0, i64 4096, i32 0) #7, !dbg !6880
  store i64 %call3, i64* %dma_addr, align 8, !dbg !6881
  %4 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6882
  %5 = load i64, i64* %dma_addr, align 8, !dbg !6884
  %call4 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %4, i64 %5) #7, !dbg !6885
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6885
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6886

if.then6:                                         ; preds = %if.then2
  %6 = load %struct.page*, %struct.page** %page, align 8, !dbg !6887
  call void @__free_pages(%struct.page* %6, i32 0) #7, !dbg !6887
  store i32 -22, i32* %retval, align 4, !dbg !6889
  br label %return, !dbg !6889

if.end7:                                          ; preds = %if.then2
  %7 = load i64, i64* %dma_addr, align 8, !dbg !6890
  store i64 %7, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 14), align 8, !dbg !6891
  br label %if.end8, !dbg !6892

if.else:                                          ; preds = %if.end
  %8 = load %struct.page*, %struct.page** %page, align 8, !dbg !6893
  %9 = load i64, i64* @vmemmap_base, align 8, !dbg !6893
  %10 = inttoptr i64 %9 to %struct.page*, !dbg !6893
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %8 to i64, !dbg !6893
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %10 to i64, !dbg !6893
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6893
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6893
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6893
  store i64 %shl, i64* getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 14), align 8, !dbg !6894
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  %11 = load %struct.page*, %struct.page** %page, align 8, !dbg !6895
  store %struct.page* %11, %struct.page** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 13), align 8, !dbg !6896
  store i32 0, i32* %retval, align 4, !dbg !6897
  br label %return, !dbg !6897

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !6898
  ret i32 %12, !dbg !6898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_bus_address(%struct.pci_dev* %pdev, i32 %bar) #0 !dbg !6899 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %bar.addr = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6903, metadata !DIExpression()), !dbg !6904
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !6905, metadata !DIExpression()), !dbg !6906
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !6907, metadata !DIExpression()), !dbg !6912
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6913
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !6914
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !6914
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6915
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !6916
  %3 = load i32, i32* %bar.addr, align 4, !dbg !6917
  %idxprom = sext i32 %3 to i64, !dbg !6915
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !6915
  call void @pcibios_resource_to_bus(%struct.pci_bus* %1, %struct.pci_bus_region* %region, %struct.resource* %arrayidx) #7, !dbg !6918
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !6919
  %4 = load i64, i64* %start, align 8, !dbg !6919
  ret i64 %4, !dbg !6920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i965_gtt_total_entries() #0 !dbg !6921 {
entry:
  %size = alloca i32, align 4
  %pgetbl_ctl = alloca i32, align 4
  %gmch_ctl = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i32* %size, metadata !6922, metadata !DIExpression()), !dbg !6923
  call void @llvm.dbg.declare(metadata i32* %pgetbl_ctl, metadata !6924, metadata !DIExpression()), !dbg !6925
  call void @llvm.dbg.declare(metadata i16* %gmch_ctl, metadata !6926, metadata !DIExpression()), !dbg !6927
  %0 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 2), align 8, !dbg !6928
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 82, i16* %gmch_ctl) #7, !dbg !6929
  %1 = load %struct.intel_gtt_driver*, %struct.intel_gtt_driver** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 0), align 8, !dbg !6930
  %2 = bitcast %struct.intel_gtt_driver* %1 to i32*, !dbg !6930
  %bf.load = load i32, i32* %2, align 8, !dbg !6930
  %bf.clear = and i32 %bf.load, 255, !dbg !6930
  %cmp = icmp eq i32 %bf.clear, 5, !dbg !6932
  br i1 %cmp, label %if.then, label %if.end, !dbg !6933

if.then:                                          ; preds = %entry
  %3 = load i16, i16* %gmch_ctl, align 2, !dbg !6934
  %conv = zext i16 %3 to i32, !dbg !6934
  %and = and i32 %conv, 3840, !dbg !6936
  switch i32 %and, label %sw.epilog [
    i32 256, label %sw.bb
    i32 2304, label %sw.bb
    i32 2560, label %sw.bb1
    i32 768, label %sw.bb2
    i32 2816, label %sw.bb2
  ], !dbg !6937

sw.bb:                                            ; preds = %if.then, %if.then
  call void @i965_adjust_pgetbl_size(i32 6) #7, !dbg !6938
  br label %sw.epilog, !dbg !6940

sw.bb1:                                           ; preds = %if.then
  call void @i965_adjust_pgetbl_size(i32 10) #7, !dbg !6941
  br label %sw.epilog, !dbg !6942

sw.bb2:                                           ; preds = %if.then, %if.then
  call void @i965_adjust_pgetbl_size(i32 8) #7, !dbg !6943
  br label %sw.epilog, !dbg !6944

sw.epilog:                                        ; preds = %if.then, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end, !dbg !6945

if.end:                                           ; preds = %sw.epilog, %entry
  %4 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6946
  %add.ptr = getelementptr i8, i8* %4, i64 8224, !dbg !6947
  %call3 = call i32 @readl(i8* %add.ptr) #7, !dbg !6948
  store i32 %call3, i32* %pgetbl_ctl, align 4, !dbg !6949
  %5 = load i32, i32* %pgetbl_ctl, align 4, !dbg !6950
  %and4 = and i32 %5, 14, !dbg !6951
  switch i32 %and4, label %sw.default [
    i32 4, label %sw.bb5
    i32 2, label %sw.bb6
    i32 0, label %sw.bb7
    i32 6, label %sw.bb8
    i32 8, label %sw.bb9
    i32 10, label %sw.bb10
  ], !dbg !6952

sw.bb5:                                           ; preds = %if.end
  store i32 131072, i32* %size, align 4, !dbg !6953
  br label %sw.epilog11, !dbg !6955

sw.bb6:                                           ; preds = %if.end
  store i32 262144, i32* %size, align 4, !dbg !6956
  br label %sw.epilog11, !dbg !6957

sw.bb7:                                           ; preds = %if.end
  store i32 524288, i32* %size, align 4, !dbg !6958
  br label %sw.epilog11, !dbg !6959

sw.bb8:                                           ; preds = %if.end
  store i32 1048576, i32* %size, align 4, !dbg !6960
  br label %sw.epilog11, !dbg !6961

sw.bb9:                                           ; preds = %if.end
  store i32 2097152, i32* %size, align 4, !dbg !6962
  br label %sw.epilog11, !dbg !6963

sw.bb10:                                          ; preds = %if.end
  store i32 1572864, i32* %size, align 4, !dbg !6964
  br label %sw.epilog11, !dbg !6965

sw.default:                                       ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 1), align 8, !dbg !6966
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !6966
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !6966
  store i32 524288, i32* %size, align 4, !dbg !6967
  br label %sw.epilog11, !dbg !6968

sw.epilog11:                                      ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5
  %7 = load i32, i32* %size, align 4, !dbg !6969
  %div = sdiv i32 %7, 4, !dbg !6970
  ret i32 %div, !dbg !6971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i965_adjust_pgetbl_size(i32 %size_flag) #0 !dbg !6972 {
entry:
  %size_flag.addr = alloca i32, align 4
  %pgetbl_ctl = alloca i32, align 4
  %pgetbl_ctl2 = alloca i32, align 4
  store i32 %size_flag, i32* %size_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size_flag.addr, metadata !6975, metadata !DIExpression()), !dbg !6976
  call void @llvm.dbg.declare(metadata i32* %pgetbl_ctl, metadata !6977, metadata !DIExpression()), !dbg !6978
  call void @llvm.dbg.declare(metadata i32* %pgetbl_ctl2, metadata !6979, metadata !DIExpression()), !dbg !6980
  %0 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6981
  %add.ptr = getelementptr i8, i8* %0, i64 8388, !dbg !6982
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !6983
  store i32 %call, i32* %pgetbl_ctl2, align 4, !dbg !6984
  %1 = load i32, i32* %pgetbl_ctl2, align 4, !dbg !6985
  %and = and i32 %1, -2, !dbg !6985
  store i32 %and, i32* %pgetbl_ctl2, align 4, !dbg !6985
  %2 = load i32, i32* %pgetbl_ctl2, align 4, !dbg !6986
  %3 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6987
  %add.ptr1 = getelementptr i8, i8* %3, i64 8388, !dbg !6988
  call void @writel(i32 %2, i8* %add.ptr1) #7, !dbg !6989
  %4 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6990
  %add.ptr2 = getelementptr i8, i8* %4, i64 8224, !dbg !6991
  %call3 = call i32 @readl(i8* %add.ptr2) #7, !dbg !6992
  store i32 %call3, i32* %pgetbl_ctl, align 4, !dbg !6993
  %5 = load i32, i32* %pgetbl_ctl, align 4, !dbg !6994
  %and4 = and i32 %5, -15, !dbg !6994
  store i32 %and4, i32* %pgetbl_ctl, align 4, !dbg !6994
  %6 = load i32, i32* %size_flag.addr, align 4, !dbg !6995
  %7 = load i32, i32* %pgetbl_ctl, align 4, !dbg !6996
  %or = or i32 %7, %6, !dbg !6996
  store i32 %or, i32* %pgetbl_ctl, align 4, !dbg !6996
  %8 = load i32, i32* %pgetbl_ctl, align 4, !dbg !6997
  %9 = load i8*, i8** getelementptr inbounds (%struct._intel_private, %struct._intel_private* @intel_private, i32 0, i32 3), align 8, !dbg !6998
  %add.ptr5 = getelementptr i8, i8* %9, i64 8224, !dbg !6999
  call void @writel(i32 %8, i8* %add.ptr5) #7, !dbg !7000
  ret void, !dbg !7001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @needs_ilk_vtd_wa() #0 !dbg !7002 {
entry:
  ret i32 0, !dbg !7003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !7004 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !7007, metadata !DIExpression()), !dbg !7008
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !7009, metadata !DIExpression()), !dbg !7008
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !7008
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #6, !dbg !7008, !srcloc !7010
  store i8 %1, i8* %ret, align 1, !dbg !7008
  %2 = load i8, i8* %ret, align 1, !dbg !7008
  ret i8 %2, !dbg !7008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_map_page(%struct.pci_dev* %hwdev, %struct.page* %page, i64 %offset, i64 %size, i32 %direction) #0 !dbg !7011 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %page.addr = alloca %struct.page*, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !7014, metadata !DIExpression()), !dbg !7015
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !7016, metadata !DIExpression()), !dbg !7017
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !7018, metadata !DIExpression()), !dbg !7019
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7020, metadata !DIExpression()), !dbg !7021
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !7022, metadata !DIExpression()), !dbg !7023
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !7024
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !7024
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !7024
  %2 = load i64, i64* %offset.addr, align 8, !dbg !7024
  %3 = load i64, i64* %size.addr, align 8, !dbg !7024
  %4 = load i32, i32* %direction.addr, align 4, !dbg !7024
  %call = call i64 @dma_map_page_attrs(%struct.device* %dev, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 0) #7, !dbg !7024
  ret i64 %call, !dbg !7025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_dma_mapping_error(%struct.pci_dev* %pdev, i64 %dma_addr) #0 !dbg !7026 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !7029, metadata !DIExpression()), !dbg !7030
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !7031, metadata !DIExpression()), !dbg !7032
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !7033
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !7034
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !7035
  %call = call i32 @dma_mapping_error(%struct.device* %dev, i64 %1) #7, !dbg !7036
  ret i32 %call, !dbg !7037
}

; Function Attrs: noredzone
declare dso_local i64 @dma_map_page_attrs(%struct.device*, %struct.page*, i64, i64, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !7038 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7042, metadata !DIExpression()), !dbg !7043
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !7044, metadata !DIExpression()), !dbg !7045
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7046
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !7047
  call void @debug_dma_mapping_error(%struct.device* %0, i64 %1) #7, !dbg !7048
  %2 = load i64, i64* %dma_addr.addr, align 8, !dbg !7049
  %cmp = icmp eq i64 %2, -1, !dbg !7051
  br i1 %cmp, label %if.then, label %if.end, !dbg !7052

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !7053
  br label %return, !dbg !7053

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7054
  br label %return, !dbg !7054

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !7055
  ret i32 %3, !dbg !7055
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !7056 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7059, metadata !DIExpression()), !dbg !7060
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !7061, metadata !DIExpression()), !dbg !7062
  ret void, !dbg !7063
}

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_unmap_page(%struct.pci_dev* %hwdev, i64 %dma_address, i64 %size, i32 %direction) #0 !dbg !7064 {
entry:
  %hwdev.addr = alloca %struct.pci_dev*, align 8
  %dma_address.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  store %struct.pci_dev* %hwdev, %struct.pci_dev** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %hwdev.addr, metadata !7067, metadata !DIExpression()), !dbg !7068
  store i64 %dma_address, i64* %dma_address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_address.addr, metadata !7069, metadata !DIExpression()), !dbg !7070
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7071, metadata !DIExpression()), !dbg !7072
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !7073, metadata !DIExpression()), !dbg !7074
  %0 = load %struct.pci_dev*, %struct.pci_dev** %hwdev.addr, align 8, !dbg !7075
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !7075
  %1 = load i64, i64* %dma_address.addr, align 8, !dbg !7075
  %2 = load i64, i64* %size.addr, align 8, !dbg !7075
  %3 = load i32, i32* %direction.addr, align 4, !dbg !7075
  call void @dma_unmap_page_attrs(%struct.device* %dev, i64 %1, i64 %2, i32 %3, i64 0) #7, !dbg !7075
  ret void, !dbg !7076
}

; Function Attrs: noredzone
declare dso_local void @dma_unmap_page_attrs(%struct.device*, i64, i64, i32, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4799}
!llvm.module.flags = !{!4800, !4801, !4802, !4803}
!llvm.ident = !{!4804}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "intel_private", scope: !2, file: !3, line: 89, type: !4775, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, globals: !3061, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/agp/intel-gtt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !29, !35, !42, !48, !57, !65, !71, !77, !83, !94, !101, !105, !112, !120, !126, !140, !148, !153}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !19, line: 546, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 59, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !43, line: 54, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !49, line: 296, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !58, line: 9, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !66, line: 26, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !72, line: 44, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_cap", file: !78, line: 92, baseType: !7, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/iommu.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "IOMMU_CAP_CACHE_COHERENCY", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "IOMMU_CAP_INTR_REMAP", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "IOMMU_CAP_NOEXEC", value: 2, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_attr", file: !78, line: 112, baseType: !7, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93}
!85 = !DIEnumerator(name: "DOMAIN_ATTR_GEOMETRY", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_ATTR_PAGING", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_ATTR_WINDOWS", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_ATTR_FSL_PAMU_STASH", value: 3, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_ATTR_FSL_PAMU_ENABLE", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_ATTR_FSL_PAMUV1", value: 5, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_ATTR_NESTING", value: 6, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE", value: 7, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_ATTR_MAX", value: 8, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_resv_type", file: !78, line: 125, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "IOMMU_RESV_DIRECT", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "IOMMU_RESV_DIRECT_RELAXABLE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IOMMU_RESV_RESERVED", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "IOMMU_RESV_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "IOMMU_RESV_SW_MSI", value: 4, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iommu_dev_features", file: !78, line: 159, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "IOMMU_DEV_FEAT_AUX", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "IOMMU_DEV_FEAT_SVA", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !106, line: 343, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !113, line: 524, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !113, line: 502, baseType: !7, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !127, line: 76, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!129 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!137 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!138 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!139 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aper_size_type", file: !141, line: 45, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "drivers/char/agp/agp.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIEnumerator(name: "U8_APER_SIZE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "U16_APER_SIZE", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "U32_APER_SIZE", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "LVL2_APER_SIZE", value: 3, isUnsigned: true)
!147 = !DIEnumerator(name: "FIXED_APER_SIZE", value: 4, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chipset_type", file: !149, line: 35, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/agp_backend.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "NOT_SUPPORTED", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "SUPPORTED", value: 1, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !154, line: 5, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!158 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!159 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!160 = !{!161, !162, !164, !166, !168, !169, !170, !171, !175, !153, !178, !179, !3059}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !167, line: 148, baseType: !7)
!167 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!170 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !172, line: 21, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !174, line: 27, baseType: !7)
!174 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !172, line: 23, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !174, line: 31, baseType: !177)
!177 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !167, line: 143, baseType: !175)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !181, line: 68, size: 512, align: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !184, !3051, !3058}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !181, line: 69, baseType: !168, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !181, line: 77, baseType: !185, size: 320, offset: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !181, line: 77, size: 320, elements: !186)
!186 = !{!187, !2926, !2930, !2956, !2964, !2970, !2982, !3050}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 78, baseType: !188, size: 320)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 78, size: 320, elements: !189)
!189 = !{!190, !196, !2924, !2925}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !188, file: !181, line: 84, baseType: !191, size: 128)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !167, line: 178, size: 128, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !167, line: 179, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !167, line: 179, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !188, file: !181, line: 86, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !49, line: 451, size: 1216, align: 64, elements: !199)
!199 = !{!200, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2919, !2920, !2921, !2922, !2923}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !198, file: !49, line: 452, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !49, line: 610, size: 4224, elements: !203)
!203 = !{!204, !207, !208, !217, !224, !225, !2744, !2745, !2746, !2747, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2788, !2796, !2797, !2798, !2808, !2809, !2810, !2811}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !202, file: !49, line: 611, baseType: !205, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !167, line: 19, baseType: !206)
!206 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !202, file: !49, line: 612, baseType: !206, size: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !202, file: !49, line: 613, baseType: !209, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !210, line: 23, baseType: !211)
!210 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 21, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !211, file: !210, line: 22, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !167, line: 32, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !216, line: 49, baseType: !7)
!216 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !202, file: !49, line: 614, baseType: !218, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !210, line: 28, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 26, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !219, file: !210, line: 27, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !167, line: 33, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !216, line: 50, baseType: !7)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !202, file: !49, line: 615, baseType: !7, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !202, file: !49, line: 622, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !49, line: 1864, size: 1536, align: 512, elements: !229)
!229 = !{!230, !2618, !2631, !2635, !2641, !2645, !2649, !2653, !2657, !2661, !2665, !2666, !2670, !2674, !2694, !2720, !2724, !2730, !2735, !2739, !2740}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !228, file: !49, line: 1865, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !201, !234, !7}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !236, line: 89, size: 1536, elements: !237)
!236 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !239, !249, !257, !258, !274, !275, !279, !306, !378, !2602, !2603, !2604, !2610, !2611, !2612}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !235, file: !236, line: 91, baseType: !7, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !235, file: !236, line: 92, baseType: !240, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !241, line: 277, baseType: !242)
!241 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !241, line: 277, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !242, file: !241, line: 277, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !241, line: 70, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !241, line: 65, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !246, file: !241, line: 66, baseType: !7, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !235, file: !236, line: 93, baseType: !250, size: 128, offset: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !251, line: 38, size: 128, elements: !252)
!251 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !251, line: 39, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !250, file: !251, line: 39, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !235, file: !236, line: 94, baseType: !234, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !235, file: !236, line: 95, baseType: !259, size: 128, offset: 256)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !236, line: 47, size: 128, elements: !260)
!260 = !{!261, !270}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !236, line: 48, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !236, line: 48, size: 64, elements: !263)
!263 = !{!264, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !236, line: 49, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !236, line: 49, size: 64, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !265, file: !236, line: 50, baseType: !171, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !265, file: !236, line: 50, baseType: !171, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !262, file: !236, line: 52, baseType: !175, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !236, line: 54, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !235, file: !236, line: 96, baseType: !201, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !235, file: !236, line: 98, baseType: !276, size: 256, offset: 448)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !235, file: !236, line: 101, baseType: !280, size: 32, offset: 704)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !281, line: 25, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !281, line: 26, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !281, line: 26, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !281, line: 30, baseType: !287, size: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !281, line: 30, size: 32, elements: !288)
!288 = !{!289, !305}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !287, file: !281, line: 31, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !291, line: 83, baseType: !292)
!291 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !291, line: 71, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !291, line: 72, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !291, line: 72, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !295, file: !291, line: 73, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !291, line: 20, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !298, file: !291, line: 21, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !302, line: 25, baseType: !303)
!302 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 25, elements: !304)
!304 = !{}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !287, file: !281, line: 32, baseType: !170, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !235, file: !236, line: 102, baseType: !307, size: 64, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !236, line: 135, size: 1024, align: 512, elements: !310)
!310 = !{!311, !315, !316, !323, !331, !335, !339, !343, !344, !348, !352, !364, !372}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !309, file: !236, line: 136, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!170, !234, !7}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !309, file: !236, line: 137, baseType: !312, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !309, file: !236, line: 138, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!170, !320, !322}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !309, file: !236, line: 139, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!170, !320, !7, !327, !329}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !309, file: !236, line: 141, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!170, !320}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !309, file: !236, line: 142, baseType: !336, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!170, !234}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !309, file: !236, line: 143, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !234}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !309, file: !236, line: 144, baseType: !340, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !309, file: !236, line: 145, baseType: !345, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !234, !201}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !309, file: !236, line: 146, baseType: !349, size: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!164, !234, !164, !170}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !309, file: !236, line: 147, baseType: !353, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !236, line: 18, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !360, line: 8, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !359, file: !360, line: 9, baseType: !356, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !359, file: !360, line: 10, baseType: !234, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !309, file: !236, line: 148, baseType: !365, size: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!170, !368, !370}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !167, line: 30, baseType: !371)
!371 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !309, file: !236, line: 149, baseType: !373, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!234, !234, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !235, file: !236, line: 103, baseType: !379, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !49, line: 1416, size: 9472, elements: !381)
!381 = !{!382, !383, !386, !387, !388, !392, !444, !527, !629, !712, !716, !717, !718, !719, !720, !729, !730, !731, !736, !740, !741, !744, !748, !751, !752, !753, !794, !2531, !2532, !2533, !2534, !2535, !2536, !2539, !2541, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2569, !2570, !2571, !2572, !2573, !2576, !2577, !2578, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !380, file: !49, line: 1417, baseType: !191, size: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !380, file: !49, line: 1418, baseType: !384, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !167, line: 16, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !167, line: 13, baseType: !171)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !380, file: !49, line: 1419, baseType: !273, size: 8, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !380, file: !49, line: 1420, baseType: !168, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !380, file: !49, line: 1421, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !167, line: 46, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !216, line: 88, baseType: !391)
!391 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !380, file: !49, line: 1422, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !49, line: 2228, size: 576, elements: !395)
!395 = !{!396, !397, !398, !405, !409, !413, !417, !421, !422, !432, !435, !436, !437, !441, !442, !443}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !49, line: 2229, baseType: !327, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !394, file: !49, line: 2230, baseType: !170, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !394, file: !49, line: 2238, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!170, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !404, line: 28, flags: DIFlagFwdDecl)
!404 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !394, file: !49, line: 2239, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !49, line: 70, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !394, file: !49, line: 2240, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!234, !393, !170, !327, !161}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !394, file: !49, line: 2242, baseType: !414, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !379}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !394, file: !49, line: 2243, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !420, line: 76, flags: DIFlagFwdDecl)
!420 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !49, line: 2244, baseType: !393, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !394, file: !49, line: 2245, baseType: !423, size: 64, offset: 512)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !167, line: 182, size: 64, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !423, file: !167, line: 183, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !167, line: 186, size: 128, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !167, line: 187, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !427, file: !167, line: 187, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !394, file: !49, line: 2247, baseType: !433, offset: 576)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !434, line: 187, elements: !304)
!434 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !394, file: !49, line: 2248, baseType: !433, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !394, file: !49, line: 2249, baseType: !433, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !394, file: !49, line: 2250, baseType: !438, offset: 576)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 3)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !394, file: !49, line: 2252, baseType: !433, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !394, file: !49, line: 2253, baseType: !433, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !394, file: !49, line: 2254, baseType: !433, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !380, file: !49, line: 1423, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !49, line: 1935, size: 1472, elements: !448)
!448 = !{!449, !453, !457, !458, !462, !468, !472, !473, !474, !478, !482, !483, !484, !485, !491, !496, !497, !504, !505, !506, !507, !511, !526}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !447, file: !49, line: 1936, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!201, !379}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !447, file: !49, line: 1937, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !201}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !447, file: !49, line: 1938, baseType: !454, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !447, file: !49, line: 1940, baseType: !459, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !201, !170}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !447, file: !49, line: 1941, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!170, !201, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 40, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !447, file: !49, line: 1942, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!170, !201}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !447, file: !49, line: 1943, baseType: !454, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !447, file: !49, line: 1944, baseType: !414, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !447, file: !49, line: 1945, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!170, !379, !170}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !447, file: !49, line: 1946, baseType: !479, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!170, !379}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !447, file: !49, line: 1947, baseType: !479, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !447, file: !49, line: 1948, baseType: !479, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !447, file: !49, line: 1949, baseType: !479, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !447, file: !49, line: 1950, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!170, !234, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !49, line: 57, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !447, file: !49, line: 1951, baseType: !492, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!170, !379, !495, !164}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !447, file: !49, line: 1952, baseType: !414, size: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !447, file: !49, line: 1954, baseType: !498, size: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!170, !501, !234}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !503, line: 539, flags: DIFlagFwdDecl)
!503 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !447, file: !49, line: 1955, baseType: !498, size: 64, offset: 1088)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !447, file: !49, line: 1956, baseType: !498, size: 64, offset: 1152)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !447, file: !49, line: 1957, baseType: !498, size: 64, offset: 1216)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !447, file: !49, line: 1963, baseType: !508, size: 64, offset: 1280)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!170, !379, !179, !166}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !447, file: !49, line: 1964, baseType: !512, size: 64, offset: 1344)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!169, !379, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !517, line: 12, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !520, !521, !522, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !516, file: !517, line: 13, baseType: !166, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !516, file: !517, line: 16, baseType: !170, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !516, file: !517, line: 23, baseType: !168, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !516, file: !517, line: 30, baseType: !168, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !516, file: !517, line: 33, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !181, line: 27, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !447, file: !49, line: 1966, baseType: !512, size: 64, offset: 1408)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !380, file: !49, line: 1424, baseType: !528, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !43, line: 322, size: 704, elements: !531)
!531 = !{!532, !598, !602, !606, !607, !608, !609, !610, !615, !620, !624}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !530, file: !43, line: 323, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!170, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !43, line: 294, size: 1600, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !558, !559, !564, !565, !581, !582, !583}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !537, file: !43, line: 295, baseType: !427, size: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !537, file: !43, line: 296, baseType: !191, size: 128, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !537, file: !43, line: 297, baseType: !191, size: 128, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !537, file: !43, line: 298, baseType: !191, size: 128, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !537, file: !43, line: 299, baseType: !544, size: 192, offset: 512)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !545, line: 53, size: 192, elements: !546)
!545 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !556, !557}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !544, file: !545, line: 54, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !549, line: 13, baseType: !550)
!549 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !167, line: 175, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 173, size: 64, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !551, file: !167, line: 174, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !172, line: 22, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !174, line: 30, baseType: !391)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !544, file: !545, line: 55, baseType: !290, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !544, file: !545, line: 59, baseType: !191, size: 128, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !537, file: !43, line: 300, baseType: !290, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !537, file: !43, line: 301, baseType: !560, size: 32, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !167, line: 168, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 166, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !561, file: !167, line: 167, baseType: !170, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !537, file: !43, line: 302, baseType: !379, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !537, file: !43, line: 303, baseType: !566, size: 64, offset: 832)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !43, line: 68, size: 64, elements: !567)
!567 = !{!568, !580}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !43, line: 69, baseType: !569, size: 32)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !43, line: 69, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !569, file: !43, line: 70, baseType: !209, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !569, file: !43, line: 71, baseType: !218, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !569, file: !43, line: 72, baseType: !574, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !575, line: 24, baseType: !576)
!575 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 22, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !576, file: !575, line: 23, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !575, line: 20, baseType: !215)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !43, line: 74, baseType: !42, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !537, file: !43, line: 304, baseType: !389, size: 64, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !537, file: !43, line: 305, baseType: !168, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !537, file: !43, line: 306, baseType: !584, size: 576, offset: 1024)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !43, line: 205, size: 576, elements: !585)
!585 = !{!586, !588, !589, !590, !591, !592, !593, !594, !597}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !584, file: !43, line: 206, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !43, line: 66, baseType: !391)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !584, file: !43, line: 207, baseType: !587, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !584, file: !43, line: 208, baseType: !587, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !584, file: !43, line: 209, baseType: !587, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !584, file: !43, line: 210, baseType: !587, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !584, file: !43, line: 211, baseType: !587, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !584, file: !43, line: 212, baseType: !587, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !584, file: !43, line: 213, baseType: !595, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !596, line: 8, baseType: !555)
!596 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !584, file: !43, line: 214, baseType: !595, size: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !530, file: !43, line: 324, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!536, !379, !170}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !530, file: !43, line: 325, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !536}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !530, file: !43, line: 326, baseType: !533, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !530, file: !43, line: 327, baseType: !533, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !530, file: !43, line: 328, baseType: !533, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !530, file: !43, line: 329, baseType: !475, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !530, file: !43, line: 332, baseType: !611, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !201}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !530, file: !43, line: 333, baseType: !616, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!170, !201, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !530, file: !43, line: 335, baseType: !621, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!170, !201, !614}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !530, file: !43, line: 337, baseType: !625, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!170, !379, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !380, file: !49, line: 1425, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !43, line: 428, size: 704, elements: !633)
!633 = !{!634, !638, !639, !643, !644, !645, !660, !683, !687, !688, !711}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !632, file: !43, line: 429, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!170, !379, !170, !170, !368}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !632, file: !43, line: 430, baseType: !475, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !632, file: !43, line: 431, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!170, !379, !7}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !632, file: !43, line: 432, baseType: !640, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !632, file: !43, line: 433, baseType: !475, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !632, file: !43, line: 434, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!170, !379, !170, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !43, line: 415, size: 256, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !650, file: !43, line: 416, baseType: !170, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !650, file: !43, line: 417, baseType: !7, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !650, file: !43, line: 418, baseType: !7, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !650, file: !43, line: 420, baseType: !7, size: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !650, file: !43, line: 421, baseType: !7, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !650, file: !43, line: 422, baseType: !7, size: 32, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !650, file: !43, line: 423, baseType: !7, size: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !650, file: !43, line: 424, baseType: !7, size: 32, offset: 224)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !632, file: !43, line: 435, baseType: !661, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!170, !379, !566, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !43, line: 343, size: 960, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !665, file: !43, line: 344, baseType: !170, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !665, file: !43, line: 345, baseType: !175, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !665, file: !43, line: 346, baseType: !175, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !665, file: !43, line: 347, baseType: !175, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !665, file: !43, line: 348, baseType: !175, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !665, file: !43, line: 349, baseType: !175, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !665, file: !43, line: 350, baseType: !175, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !665, file: !43, line: 351, baseType: !554, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !665, file: !43, line: 353, baseType: !554, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !665, file: !43, line: 354, baseType: !170, size: 32, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !665, file: !43, line: 355, baseType: !170, size: 32, offset: 608)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !665, file: !43, line: 356, baseType: !175, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !665, file: !43, line: 357, baseType: !175, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !665, file: !43, line: 358, baseType: !175, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !665, file: !43, line: 359, baseType: !554, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !665, file: !43, line: 360, baseType: !170, size: 32, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !632, file: !43, line: 436, baseType: !684, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!170, !379, !628, !664}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !632, file: !43, line: 438, baseType: !661, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !632, file: !43, line: 439, baseType: !689, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!170, !379, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !43, line: 409, size: 1408, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !693, file: !43, line: 410, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !693, file: !43, line: 411, baseType: !697, size: 1344, offset: 64)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 1344, elements: !439)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !43, line: 395, size: 448, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !710}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !43, line: 396, baseType: !7, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !698, file: !43, line: 397, baseType: !7, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !698, file: !43, line: 399, baseType: !7, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !698, file: !43, line: 400, baseType: !7, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !698, file: !43, line: 401, baseType: !7, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !698, file: !43, line: 402, baseType: !7, size: 32, offset: 160)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !698, file: !43, line: 403, baseType: !7, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !698, file: !43, line: 404, baseType: !177, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !698, file: !43, line: 405, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !167, line: 126, baseType: !175)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !698, file: !43, line: 406, baseType: !709, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !632, file: !43, line: 440, baseType: !640, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !380, file: !49, line: 1426, baseType: !713, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !49, line: 49, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !380, file: !49, line: 1427, baseType: !168, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !380, file: !49, line: 1428, baseType: !168, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !380, file: !49, line: 1429, baseType: !168, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !380, file: !49, line: 1430, baseType: !234, size: 64, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !380, file: !49, line: 1431, baseType: !721, size: 256, offset: 896)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !722, line: 35, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725, !726, !728}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !722, line: 36, baseType: !548, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !721, file: !722, line: 42, baseType: !548, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !721, file: !722, line: 46, baseType: !727, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !291, line: 29, baseType: !298)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !721, file: !722, line: 47, baseType: !191, size: 128, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !380, file: !49, line: 1432, baseType: !170, size: 32, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !380, file: !49, line: 1433, baseType: !560, size: 32, offset: 1184)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !380, file: !49, line: 1437, baseType: !732, size: 64, offset: 1216)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !49, line: 1437, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !380, file: !49, line: 1449, baseType: !737, size: 64, offset: 1280)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !251, line: 34, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !737, file: !251, line: 35, baseType: !254, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !380, file: !49, line: 1450, baseType: !191, size: 128, offset: 1344)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !380, file: !49, line: 1451, baseType: !742, size: 64, offset: 1472)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !49, line: 699, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !380, file: !49, line: 1452, baseType: !745, size: 64, offset: 1536)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !747, line: 40, flags: DIFlagFwdDecl)
!747 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !380, file: !49, line: 1453, baseType: !749, size: 64, offset: 1600)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !49, line: 1453, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !380, file: !49, line: 1454, baseType: !427, size: 128, offset: 1664)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !380, file: !49, line: 1455, baseType: !7, size: 32, offset: 1792)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !380, file: !49, line: 1456, baseType: !754, size: 2432, offset: 1856)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !43, line: 518, size: 2432, elements: !755)
!755 = !{!756, !757, !758, !760, !792}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !43, line: 519, baseType: !7, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !754, file: !43, line: 520, baseType: !721, size: 256, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !754, file: !43, line: 521, baseType: !759, size: 192, offset: 320)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 192, elements: !439)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !754, file: !43, line: 522, baseType: !761, size: 1728, offset: 512)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 1728, elements: !439)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !43, line: 222, size: 576, elements: !763)
!763 = !{!764, !784, !785, !786, !787, !788, !789, !790, !791}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !762, file: !43, line: 223, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !43, line: 443, size: 256, elements: !767)
!767 = !{!768, !769, !782, !783}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !766, file: !43, line: 444, baseType: !170, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !766, file: !43, line: 445, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !43, line: 310, size: 512, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !772, file: !43, line: 311, baseType: !475, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !772, file: !43, line: 312, baseType: !475, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !772, file: !43, line: 313, baseType: !475, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !772, file: !43, line: 314, baseType: !475, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !772, file: !43, line: 315, baseType: !533, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !772, file: !43, line: 316, baseType: !533, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !772, file: !43, line: 317, baseType: !533, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !772, file: !43, line: 318, baseType: !625, size: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !766, file: !43, line: 446, baseType: !418, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !766, file: !43, line: 447, baseType: !765, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !762, file: !43, line: 224, baseType: !170, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !762, file: !43, line: 226, baseType: !191, size: 128, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !762, file: !43, line: 227, baseType: !168, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !762, file: !43, line: 228, baseType: !7, size: 32, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !762, file: !43, line: 229, baseType: !7, size: 32, offset: 352)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !762, file: !43, line: 230, baseType: !587, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !762, file: !43, line: 231, baseType: !587, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !762, file: !43, line: 232, baseType: !161, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !754, file: !43, line: 523, baseType: !793, size: 192, offset: 2240)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 192, elements: !439)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !380, file: !49, line: 1458, baseType: !795, size: 2112, offset: 4288)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !49, line: 1410, size: 2112, elements: !796)
!796 = !{!797, !798, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !795, file: !49, line: 1411, baseType: !170, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !795, file: !49, line: 1412, baseType: !799, size: 128, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !800, line: 40, baseType: !801)
!800 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !800, line: 36, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !801, file: !800, line: 37, baseType: !290)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !801, file: !800, line: 38, baseType: !191, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !795, file: !49, line: 1413, baseType: !806, size: 1920, offset: 192)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 1920, elements: !439)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !808, line: 12, size: 640, elements: !809)
!808 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !826, !828, !2529, !2530}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !807, file: !808, line: 13, baseType: !811, size: 320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !812, line: 17, size: 320, elements: !813)
!812 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815, !816, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !811, file: !812, line: 18, baseType: !170, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !811, file: !812, line: 19, baseType: !170, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !811, file: !812, line: 20, baseType: !799, size: 128, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !811, file: !812, line: 22, baseType: !818, size: 128, align: 64, offset: 192)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !167, line: 216, size: 128, align: 64, elements: !819)
!819 = !{!820, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !167, line: 217, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !818, file: !167, line: 218, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !821}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !807, file: !808, line: 14, baseType: !827, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !807, file: !808, line: 15, baseType: !829, size: 64, offset: 384)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !830, line: 16, size: 64, elements: !831)
!830 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !829, file: !830, line: 17, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !747, line: 640, size: 48640, elements: !835)
!835 = !{!836, !842, !844, !845, !851, !852, !853, !854, !855, !856, !857, !858, !862, !887, !898, !990, !991, !992, !1003, !1004, !1006, !1007, !1821, !1822, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1899, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1914, !1915, !1916, !1918, !1919, !1920, !1921, !1922, !1923, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1947, !1952, !1953, !1954, !1955, !1956, !1960, !1963, !1966, !1969, !1972, !1976, !2077, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2125, !2126, !2127, !2128, !2129, !2134, !2135, !2136, !2139, !2140, !2143, !2146, !2149, !2150, !2190, !2193, !2194, !2273, !2274, !2277, !2278, !2281, !2282, !2283, !2287, !2288, !2289, !2302, !2303, !2304, !2314, !2319, !2320, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !834, file: !747, line: 646, baseType: !837, size: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !838, line: 56, size: 128, elements: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !838, line: 57, baseType: !168, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !837, file: !838, line: 58, baseType: !171, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !834, file: !747, line: 649, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !834, file: !747, line: 657, baseType: !161, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !834, file: !747, line: 658, baseType: !846, size: 32, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !847, line: 113, baseType: !848)
!847 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !847, line: 111, size: 32, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !848, file: !847, line: 112, baseType: !560, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !747, line: 660, baseType: !7, size: 32, offset: 288)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !834, file: !747, line: 661, baseType: !7, size: 32, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !834, file: !747, line: 684, baseType: !170, size: 32, offset: 352)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !834, file: !747, line: 686, baseType: !170, size: 32, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !834, file: !747, line: 687, baseType: !170, size: 32, offset: 416)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !834, file: !747, line: 688, baseType: !170, size: 32, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !834, file: !747, line: 689, baseType: !7, size: 32, offset: 480)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !834, file: !747, line: 691, baseType: !859, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !747, line: 691, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !834, file: !747, line: 692, baseType: !863, size: 832, offset: 576)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !747, line: 451, size: 832, elements: !864)
!864 = !{!865, !870, !878, !879, !880, !881, !882, !883, !884, !885}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !863, file: !747, line: 453, baseType: !866, size: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !747, line: 325, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !866, file: !747, line: 326, baseType: !168, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !866, file: !747, line: 327, baseType: !171, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !863, file: !747, line: 454, baseType: !871, size: 192, align: 64, offset: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !872, line: 24, size: 192, align: 64, elements: !873)
!872 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !871, file: !872, line: 25, baseType: !168, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !871, file: !872, line: 26, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !871, file: !872, line: 27, baseType: !876, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !863, file: !747, line: 455, baseType: !191, size: 128, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !863, file: !747, line: 456, baseType: !7, size: 32, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !863, file: !747, line: 458, baseType: !175, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !863, file: !747, line: 459, baseType: !175, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !863, file: !747, line: 460, baseType: !175, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !863, file: !747, line: 461, baseType: !175, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !863, file: !747, line: 463, baseType: !175, size: 64, offset: 768)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !863, file: !747, line: 465, baseType: !886, offset: 832)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !747, line: 415, elements: !304)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !834, file: !747, line: 693, baseType: !888, size: 384, offset: 1408)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !747, line: 489, size: 384, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !888, file: !747, line: 490, baseType: !191, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !888, file: !747, line: 491, baseType: !168, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !888, file: !747, line: 492, baseType: !168, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !888, file: !747, line: 493, baseType: !7, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !888, file: !747, line: 494, baseType: !206, size: 16, offset: 288)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !888, file: !747, line: 495, baseType: !206, size: 16, offset: 304)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !888, file: !747, line: 497, baseType: !897, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !834, file: !747, line: 697, baseType: !899, size: 1792, offset: 1792)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !747, line: 507, size: 1792, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !987, !988}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !899, file: !747, line: 508, baseType: !871, size: 192, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !899, file: !747, line: 515, baseType: !175, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !899, file: !747, line: 516, baseType: !175, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !899, file: !747, line: 517, baseType: !175, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !899, file: !747, line: 518, baseType: !175, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !899, file: !747, line: 519, baseType: !175, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !899, file: !747, line: 526, baseType: !554, size: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !899, file: !747, line: 527, baseType: !175, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !899, file: !747, line: 528, baseType: !7, size: 32, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !899, file: !747, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !899, file: !747, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !899, file: !747, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !899, file: !747, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !899, file: !747, line: 563, baseType: !915, size: 512, offset: 704)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !916)
!916 = !{!917, !925, !926, !931, !981, !984, !985, !986}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !915, file: !25, line: 119, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !919, line: 9, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !918, file: !919, line: 10, baseType: !871, size: 192, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !918, file: !919, line: 11, baseType: !923, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !924, line: 29, baseType: !554)
!924 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !915, file: !25, line: 120, baseType: !923, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !915, file: !25, line: 121, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!24, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !915, file: !25, line: 122, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !934)
!934 = !{!935, !955, !956, !959, !964, !965, !976, !980}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !933, file: !25, line: 160, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 214, size: 4608, align: 512, elements: !938)
!938 = !{!939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !937, file: !25, line: 215, baseType: !727)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !937, file: !25, line: 216, baseType: !7, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !937, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !937, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !937, file: !25, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !937, file: !25, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !937, file: !25, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !937, file: !25, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !937, file: !25, line: 233, baseType: !923, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !937, file: !25, line: 234, baseType: !930, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !937, file: !25, line: 235, baseType: !923, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !937, file: !25, line: 236, baseType: !930, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !937, file: !25, line: 237, baseType: !952, size: 4096, offset: 512)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 4096, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 8)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !933, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !933, file: !25, line: 162, baseType: !957, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !167, line: 27, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !216, line: 96, baseType: !170)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !933, file: !25, line: 163, baseType: !960, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !241, line: 276, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !241, line: 276, size: 32, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !961, file: !241, line: 276, baseType: !245, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !933, file: !25, line: 164, baseType: !930, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !933, file: !25, line: 165, baseType: !966, size: 128, offset: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !919, line: 14, size: 128, elements: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !966, file: !919, line: 15, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !872, line: 125, size: 128, elements: !970)
!970 = !{!971, !975}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !969, file: !872, line: 126, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !872, line: 31, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !972, file: !872, line: 32, baseType: !876, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !969, file: !872, line: 127, baseType: !876, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !933, file: !25, line: 166, baseType: !977, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!923}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !933, file: !25, line: 167, baseType: !923, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !915, file: !25, line: 123, baseType: !982, size: 8, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !172, line: 17, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !174, line: 21, baseType: !273)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !915, file: !25, line: 124, baseType: !982, size: 8, offset: 456)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !915, file: !25, line: 125, baseType: !982, size: 8, offset: 464)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !915, file: !25, line: 126, baseType: !982, size: 8, offset: 472)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !899, file: !747, line: 572, baseType: !915, size: 512, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !899, file: !747, line: 580, baseType: !989, size: 64, offset: 1728)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !834, file: !747, line: 721, baseType: !7, size: 32, offset: 3584)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !834, file: !747, line: 722, baseType: !170, size: 32, offset: 3616)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !834, file: !747, line: 723, baseType: !993, size: 64, offset: 3648)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !996, line: 17, baseType: !997)
!996 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !996, line: 17, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !997, file: !996, line: 17, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 1)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !834, file: !747, line: 724, baseType: !995, size: 64, offset: 3712)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !834, file: !747, line: 749, baseType: !1005, offset: 3776)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !747, line: 290, elements: !304)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !834, file: !747, line: 751, baseType: !191, size: 128, offset: 3776)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !834, file: !747, line: 757, baseType: !1008, size: 64, offset: 3904)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !181, line: 388, size: 7296, elements: !1010)
!1010 = !{!1011, !1817}
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !181, line: 389, baseType: !1012, size: 7296)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !181, line: 389, size: 7296, elements: !1013)
!1013 = !{!1014, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1719, !1725, !1728, !1767, !1768, !1790, !1791, !1794, !1795, !1796, !1799, !1800, !1801, !1804, !1816}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1012, file: !181, line: 390, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !181, line: 305, size: 1472, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1032, !1033, !1038, !1039, !1042, !1127, !1128, !1667, !1668, !1669}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1016, file: !181, line: 308, baseType: !168, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1016, file: !181, line: 309, baseType: !168, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1016, file: !181, line: 313, baseType: !1015, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1016, file: !181, line: 313, baseType: !1015, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1016, file: !181, line: 315, baseType: !871, size: 192, align: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1016, file: !181, line: 323, baseType: !168, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1016, file: !181, line: 327, baseType: !1008, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1016, file: !181, line: 333, baseType: !1026, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !503, line: 284, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !503, line: 284, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1027, file: !503, line: 284, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1031, line: 19, baseType: !168)
!1031 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1016, file: !181, line: 334, baseType: !168, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1016, file: !181, line: 343, baseType: !1034, size: 256, offset: 704)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !181, line: 340, size: 256, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1034, file: !181, line: 341, baseType: !871, size: 192, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1034, file: !181, line: 342, baseType: !168, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1016, file: !181, line: 351, baseType: !191, size: 128, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1016, file: !181, line: 353, baseType: !1040, size: 64, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !181, line: 353, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1016, file: !181, line: 356, baseType: !1043, size: 64, offset: 1152)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !19, line: 557, size: 832, elements: !1046)
!1046 = !{!1047, !1051, !1052, !1056, !1060, !1101, !1105, !1109, !1113, !1114, !1115, !1119, !1123}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1045, file: !19, line: 558, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1015}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1045, file: !19, line: 559, baseType: !1048, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1045, file: !19, line: 560, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!170, !1015, !168}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1045, file: !19, line: 561, baseType: !1057, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!170, !1015}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1045, file: !19, line: 562, baseType: !1061, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !181, line: 682, baseType: !7)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !19, line: 508, size: 768, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1080, !1087, !1093, !1094, !1095, !1097, !1099}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1066, file: !19, line: 509, baseType: !1015, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !19, line: 510, baseType: !7, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1066, file: !19, line: 511, baseType: !166, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1066, file: !19, line: 512, baseType: !168, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1066, file: !19, line: 513, baseType: !168, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1066, file: !19, line: 514, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !503, line: 385, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 385, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1076, file: !503, line: 385, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1031, line: 15, baseType: !168)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1066, file: !19, line: 516, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !503, line: 359, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 359, size: 64, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1083, file: !503, line: 359, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1031, line: 16, baseType: !168)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1066, file: !19, line: 519, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1031, line: 21, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 21, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1089, file: !1031, line: 21, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1031, line: 14, baseType: !168)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1066, file: !19, line: 521, baseType: !179, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1066, file: !19, line: 522, baseType: !179, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1066, file: !19, line: 528, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1066, file: !19, line: 532, baseType: !1098, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1066, file: !19, line: 536, baseType: !1100, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !503, line: 509, baseType: !179)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1045, file: !19, line: 563, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1064, !1065, !18}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1045, file: !19, line: 565, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !1065, !168, !168}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1045, file: !19, line: 567, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!168, !1015}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1045, file: !19, line: 571, baseType: !1061, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1045, file: !19, line: 574, baseType: !1061, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1045, file: !19, line: 579, baseType: !1116, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!170, !1015, !168, !161, !170, !170}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1045, file: !19, line: 585, baseType: !1120, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!327, !1015}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1045, file: !19, line: 615, baseType: !1124, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!179, !1015, !168}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1016, file: !181, line: 359, baseType: !168, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1016, file: !181, line: 361, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !49, line: 916, size: 1856, align: 32, elements: !1131)
!1131 = !{!1132, !1142, !1143, !1144, !1423, !1424, !1425, !1426, !1427, !1429, !1430, !1431, !1461, !1649, !1658, !1659, !1660, !1661, !1662, !1663, !1666}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1130, file: !49, line: 920, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !49, line: 917, size: 128, elements: !1134)
!1134 = !{!1135, !1141}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1133, file: !49, line: 918, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1137, line: 58, size: 64, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1136, file: !1137, line: 59, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1133, file: !49, line: 919, baseType: !818, size: 128, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1130, file: !49, line: 921, baseType: !359, size: 128, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1130, file: !49, line: 922, baseType: !201, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1130, file: !49, line: 923, baseType: !1145, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !49, line: 1822, size: 2048, elements: !1148)
!1148 = !{!1149, !1150, !1154, !1165, !1169, !1214, !1215, !1219, !1232, !1233, !1241, !1245, !1246, !1250, !1251, !1255, !1260, !1261, !1265, !1269, !1378, !1382, !1386, !1390, !1391, !1397, !1401, !1406, !1410, !1414, !1418, !1422}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1147, file: !49, line: 1823, baseType: !418, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1147, file: !49, line: 1824, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!389, !1129, !389, !170}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1147, file: !49, line: 1825, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1158, !1129, !164, !1161, !1164}
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !167, line: 60, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !216, line: 73, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !216, line: 15, baseType: !169)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 55, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !216, line: 72, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !216, line: 16, baseType: !168)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1147, file: !49, line: 1826, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1158, !1129, !327, !1161, !1164}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1147, file: !49, line: 1827, baseType: !1170, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1158, !1173, !1212}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !49, line: 320, size: 384, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1182, !1183, !1184, !1187, !1188}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1174, file: !49, line: 321, baseType: !1129, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1174, file: !49, line: 326, baseType: !389, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1174, file: !49, line: 327, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1173, !169, !169}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1174, file: !49, line: 328, baseType: !161, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1174, file: !49, line: 329, baseType: !170, size: 32, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1174, file: !49, line: 330, baseType: !1185, size: 16, offset: 288)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !172, line: 19, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !174, line: 24, baseType: !206)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1174, file: !49, line: 331, baseType: !1185, size: 16, offset: 304)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !49, line: 332, baseType: !1189, size: 64, offset: 320)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !49, line: 332, size: 64, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1189, file: !49, line: 333, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1189, file: !49, line: 334, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1195, line: 569, size: 448, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1194, file: !1195, line: 570, baseType: !179, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1194, file: !1195, line: 571, baseType: !170, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1194, file: !1195, line: 572, baseType: !1200, size: 320, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !800, line: 14, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !800, line: 29, size: 320, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1211}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1201, file: !800, line: 30, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1201, file: !800, line: 31, baseType: !161, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1201, file: !800, line: 32, baseType: !1206, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !800, line: 16, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!170, !1210, !7, !170, !161}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1201, file: !800, line: 33, baseType: !191, size: 128, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !49, line: 64, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1147, file: !49, line: 1828, baseType: !1170, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1147, file: !49, line: 1829, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!170, !1173, !370}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1147, file: !49, line: 1830, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!170, !1129, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !49, line: 1776, size: 128, elements: !1225)
!1225 = !{!1226, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1224, file: !49, line: 1777, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !49, line: 1773, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!170, !1223, !327, !170, !389, !175, !7}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1224, file: !49, line: 1778, baseType: !389, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1147, file: !49, line: 1831, baseType: !1220, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1147, file: !49, line: 1832, baseType: !1234, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1237, !1129, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1238, line: 52, baseType: !7)
!1238 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !404, line: 27, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1147, file: !49, line: 1833, baseType: !1242, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!169, !1129, !7, !168}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1147, file: !49, line: 1834, baseType: !1242, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1147, file: !49, line: 1835, baseType: !1247, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!170, !1129, !1015}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1147, file: !49, line: 1836, baseType: !168, size: 64, offset: 832)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1147, file: !49, line: 1837, baseType: !1252, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!170, !201, !1129}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1147, file: !49, line: 1838, baseType: !1256, size: 64, offset: 960)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!170, !1129, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !49, line: 1007, baseType: !161)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1147, file: !49, line: 1839, baseType: !1252, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1147, file: !49, line: 1840, baseType: !1262, size: 64, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!170, !1129, !389, !389, !170}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1147, file: !49, line: 1841, baseType: !1266, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!170, !170, !1129, !170}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1147, file: !49, line: 1842, baseType: !1270, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!170, !1129, !170, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !49, line: 1062, size: 1664, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1307, !1308, !1309, !1322, !1354}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1274, file: !49, line: 1063, baseType: !1273, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1274, file: !49, line: 1064, baseType: !191, size: 128, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1274, file: !49, line: 1065, baseType: !427, size: 128, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1274, file: !49, line: 1066, baseType: !191, size: 128, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1274, file: !49, line: 1069, baseType: !191, size: 128, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1274, file: !49, line: 1072, baseType: !1259, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1274, file: !49, line: 1073, baseType: !7, size: 32, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1274, file: !49, line: 1074, baseType: !273, size: 8, offset: 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1274, file: !49, line: 1075, baseType: !7, size: 32, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1274, file: !49, line: 1076, baseType: !170, size: 32, offset: 736)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1274, file: !49, line: 1077, baseType: !799, size: 128, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1274, file: !49, line: 1078, baseType: !1129, size: 64, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1274, file: !49, line: 1079, baseType: !389, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1274, file: !49, line: 1080, baseType: !389, size: 64, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1274, file: !49, line: 1082, baseType: !1291, size: 64, offset: 1088)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !49, line: 1314, size: 320, elements: !1293)
!1293 = !{!1294, !1302, !1303, !1304, !1305, !1306}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1292, file: !49, line: 1315, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1296, line: 20, baseType: !1297)
!1296 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 11, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1297, file: !1296, line: 12, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !302, line: 33, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 31, elements: !304)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1292, file: !49, line: 1316, baseType: !170, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1292, file: !49, line: 1317, baseType: !170, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1292, file: !49, line: 1318, baseType: !1291, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1292, file: !49, line: 1319, baseType: !1129, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1292, file: !49, line: 1320, baseType: !818, size: 128, align: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1274, file: !49, line: 1084, baseType: !168, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1274, file: !49, line: 1085, baseType: !168, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1274, file: !49, line: 1087, baseType: !1310, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !49, line: 1011, size: 128, elements: !1313)
!1313 = !{!1314, !1318}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1312, file: !49, line: 1012, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1273, !1273}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1312, file: !49, line: 1013, baseType: !1319, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !1273}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1274, file: !49, line: 1088, baseType: !1323, size: 64, offset: 1344)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !49, line: 1016, size: 512, elements: !1326)
!1326 = !{!1327, !1331, !1335, !1336, !1340, !1344, !1348, !1353}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1325, file: !49, line: 1017, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1259, !1259}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1325, file: !49, line: 1018, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1259}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1325, file: !49, line: 1019, baseType: !1319, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1325, file: !49, line: 1020, baseType: !1337, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!170, !1273, !170}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1325, file: !49, line: 1021, baseType: !1341, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!370, !1273}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1325, file: !49, line: 1022, baseType: !1345, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!170, !1273, !170, !194}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1325, file: !49, line: 1023, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1273, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1325, file: !49, line: 1024, baseType: !1341, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1274, file: !49, line: 1097, baseType: !1355, size: 256, offset: 1408)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !49, line: 1089, size: 256, elements: !1356)
!1356 = !{!1357, !1366, !1372}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1355, file: !49, line: 1090, baseType: !1358, size: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1359, line: 10, size: 256, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1362, !1365}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1358, file: !1359, line: 11, baseType: !171, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1358, file: !1359, line: 12, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1359, line: 5, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1358, file: !1359, line: 13, baseType: !191, size: 128, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1355, file: !49, line: 1091, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1359, line: 17, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1367, file: !1359, line: 18, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1359, line: 16, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1355, file: !49, line: 1096, baseType: !1373, size: 192)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1355, file: !49, line: 1092, size: 192, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1373, file: !49, line: 1093, baseType: !191, size: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1373, file: !49, line: 1094, baseType: !170, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1373, file: !49, line: 1095, baseType: !7, size: 32, offset: 160)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1147, file: !49, line: 1843, baseType: !1379, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1158, !1129, !179, !170, !1161, !1164, !170}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1147, file: !49, line: 1844, baseType: !1383, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!168, !1129, !168, !168, !168, !168}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1147, file: !49, line: 1845, baseType: !1387, size: 64, offset: 1408)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!170, !170}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1147, file: !49, line: 1846, baseType: !1270, size: 64, offset: 1472)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1147, file: !49, line: 1847, baseType: !1392, size: 64, offset: 1536)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1158, !1395, !1129, !1164, !1161, !7}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !747, line: 53, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1147, file: !49, line: 1848, baseType: !1398, size: 64, offset: 1600)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1158, !1129, !1164, !1395, !1161, !7}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1147, file: !49, line: 1849, baseType: !1402, size: 64, offset: 1664)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!170, !1129, !169, !1405, !1352}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1147, file: !49, line: 1850, baseType: !1407, size: 64, offset: 1728)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!169, !1129, !170, !389, !389}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1147, file: !49, line: 1852, baseType: !1411, size: 64, offset: 1792)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !501, !1129}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1147, file: !49, line: 1856, baseType: !1415, size: 64, offset: 1856)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1158, !1129, !389, !1129, !389, !1161, !7}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1147, file: !49, line: 1858, baseType: !1419, size: 64, offset: 1920)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!389, !1129, !389, !1129, !389, !389, !7}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1147, file: !49, line: 1861, baseType: !1262, size: 64, offset: 1984)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1130, file: !49, line: 929, baseType: !290, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1130, file: !49, line: 930, baseType: !48, size: 32, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1130, file: !49, line: 931, baseType: !548, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1130, file: !49, line: 932, baseType: !7, size: 32, offset: 512)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1130, file: !49, line: 933, baseType: !1428, size: 32, offset: 544)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !167, line: 150, baseType: !7)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1130, file: !49, line: 934, baseType: !544, size: 192, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1130, file: !49, line: 935, baseType: !389, size: 64, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1130, file: !49, line: 936, baseType: !1432, size: 192, offset: 832)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !49, line: 885, size: 192, elements: !1433)
!1433 = !{!1434, !1435, !1457, !1458, !1459, !1460}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1432, file: !49, line: 886, baseType: !1295)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1432, file: !49, line: 887, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !58, line: 59, size: 768, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1446, !1447, !1448, !1449}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1437, file: !58, line: 61, baseType: !846, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1437, file: !58, line: 62, baseType: !7, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1437, file: !58, line: 63, baseType: !290, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1437, file: !58, line: 65, baseType: !1443, size: 256, offset: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 4)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1437, file: !58, line: 66, baseType: !423, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1437, file: !58, line: 68, baseType: !799, size: 128, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1437, file: !58, line: 69, baseType: !818, size: 128, align: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1437, file: !58, line: 70, baseType: !1450, size: 128, offset: 640)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1451, size: 128, elements: !1001)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !58, line: 54, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1451, file: !58, line: 55, baseType: !170, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1451, file: !58, line: 56, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !58, line: 56, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1432, file: !49, line: 888, baseType: !57, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1432, file: !49, line: 889, baseType: !209, size: 32, offset: 96)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1432, file: !49, line: 889, baseType: !209, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1432, file: !49, line: 890, baseType: !170, size: 32, offset: 160)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1130, file: !49, line: 937, baseType: !1462, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1465, line: 111, size: 1280, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1486, !1487, !1488, !1489, !1490, !1491, !1602, !1603, !1604, !1605, !1631, !1634, !1644}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1464, file: !1465, line: 112, baseType: !560, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1464, file: !1465, line: 120, baseType: !209, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1464, file: !1465, line: 121, baseType: !218, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1464, file: !1465, line: 122, baseType: !209, size: 32, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1464, file: !1465, line: 123, baseType: !218, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1464, file: !1465, line: 124, baseType: !209, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1464, file: !1465, line: 125, baseType: !218, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1464, file: !1465, line: 126, baseType: !209, size: 32, offset: 224)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1464, file: !1465, line: 127, baseType: !218, size: 32, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1464, file: !1465, line: 128, baseType: !7, size: 32, offset: 288)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1464, file: !1465, line: 129, baseType: !1478, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1479, line: 26, baseType: !1480)
!1479 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1479, line: 24, size: 64, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1480, file: !1479, line: 25, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 2)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1464, file: !1465, line: 130, baseType: !1478, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1464, file: !1465, line: 131, baseType: !1478, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1464, file: !1465, line: 132, baseType: !1478, size: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1464, file: !1465, line: 133, baseType: !1478, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1464, file: !1465, line: 135, baseType: !273, size: 8, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1464, file: !1465, line: 137, baseType: !1492, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1494, line: 189, size: 1664, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1497, !1502, !1507, !1508, !1511, !1512, !1517, !1518, !1519, !1520, !1523, !1524, !1525, !1527, !1528, !1566, !1587}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1493, file: !1494, line: 190, baseType: !846, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1493, file: !1494, line: 191, baseType: !1498, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1494, line: 28, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !167, line: 98, baseType: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !172, line: 20, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !174, line: 26, baseType: !170)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 192, baseType: !1503, size: 192, offset: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 192, size: 192, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1503, file: !1494, line: 193, baseType: !191, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1503, file: !1494, line: 194, baseType: !871, size: 192, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1493, file: !1494, line: 199, baseType: !721, size: 256, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1493, file: !1494, line: 200, baseType: !1509, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1494, line: 200, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1493, file: !1494, line: 201, baseType: !161, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 202, baseType: !1513, size: 64, offset: 640)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 202, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1513, file: !1494, line: 203, baseType: !595, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1513, file: !1494, line: 204, baseType: !595, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1493, file: !1494, line: 206, baseType: !595, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1493, file: !1494, line: 207, baseType: !209, size: 32, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1493, file: !1494, line: 208, baseType: !218, size: 32, offset: 800)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1493, file: !1494, line: 209, baseType: !1521, size: 32, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1494, line: 31, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 104, baseType: !171)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1493, file: !1494, line: 210, baseType: !206, size: 16, offset: 864)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1493, file: !1494, line: 211, baseType: !206, size: 16, offset: 880)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1493, file: !1494, line: 215, baseType: !1526, size: 16, offset: 896)
!1526 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1494, line: 222, baseType: !168, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 239, baseType: !1529, size: 320, offset: 1024)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 239, size: 320, elements: !1530)
!1530 = !{!1531, !1558}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1529, file: !1494, line: 240, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1494, line: 108, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1547, !1550, !1557}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1532, file: !1494, line: 110, baseType: !168, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1494, line: 111, baseType: !1536, size: 64, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1494, line: 111, size: 64, elements: !1537)
!1537 = !{!1538, !1546}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1494, line: 112, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1494, line: 112, size: 64, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1539, file: !1494, line: 114, baseType: !1185, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1539, file: !1494, line: 115, baseType: !1543, size: 48, offset: 16)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 6)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !1494, line: 121, baseType: !168, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1532, file: !1494, line: 123, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1494, line: 96, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1532, file: !1494, line: 124, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1494, line: 102, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1552, file: !1494, line: 103, baseType: !818, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1494, line: 104, baseType: !846, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1552, file: !1494, line: 105, baseType: !370, size: 8, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1532, file: !1494, line: 125, baseType: !327, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1494, line: 241, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1494, line: 241, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1559, file: !1494, line: 242, baseType: !168, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1559, file: !1494, line: 243, baseType: !168, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !1494, line: 244, baseType: !1548, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1559, file: !1494, line: 245, baseType: !1551, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1559, file: !1494, line: 246, baseType: !164, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 254, baseType: !1567, size: 256, offset: 1344)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 254, size: 256, elements: !1568)
!1568 = !{!1569, !1575}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1567, file: !1494, line: 255, baseType: !1570, size: 256)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1494, line: 128, size: 256, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1570, file: !1494, line: 129, baseType: !161, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1494, line: 130, baseType: !1574, size: 256)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1444)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1494, line: 256, baseType: !1576, size: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !1494, line: 256, size: 256, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1576, file: !1494, line: 258, baseType: !191, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1576, file: !1494, line: 259, baseType: !1580, size: 128, offset: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1581, line: 22, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1580, file: !1581, line: 23, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1581, line: 23, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1580, file: !1581, line: 24, baseType: !168, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1493, file: !1494, line: 274, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1494, line: 170, size: 192, elements: !1590)
!1590 = !{!1591, !1600, !1601}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1589, file: !1494, line: 171, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1494, line: 165, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!170, !1492, !1596, !1598, !1492}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1589, file: !1494, line: 172, baseType: !1492, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1589, file: !1494, line: 173, baseType: !1548, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1464, file: !1465, line: 138, baseType: !1492, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1464, file: !1465, line: 139, baseType: !1492, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1464, file: !1465, line: 140, baseType: !1492, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1464, file: !1465, line: 145, baseType: !1606, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1608, line: 13, size: 896, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1607, file: !1608, line: 14, baseType: !846, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1607, file: !1608, line: 15, baseType: !560, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1607, file: !1608, line: 16, baseType: !560, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1607, file: !1608, line: 21, baseType: !548, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1607, file: !1608, line: 27, baseType: !168, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1607, file: !1608, line: 28, baseType: !168, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1607, file: !1608, line: 29, baseType: !548, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1607, file: !1608, line: 32, baseType: !427, size: 128, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1607, file: !1608, line: 33, baseType: !209, size: 32, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1607, file: !1608, line: 37, baseType: !548, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1607, file: !1608, line: 44, baseType: !1621, size: 256, offset: 640)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1622, line: 15, size: 256, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !1622, line: 16, baseType: !727)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1621, file: !1622, line: 18, baseType: !170, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1621, file: !1622, line: 19, baseType: !170, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1621, file: !1622, line: 20, baseType: !170, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1621, file: !1622, line: 21, baseType: !170, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1621, file: !1622, line: 22, baseType: !168, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 23, baseType: !168, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1464, file: !1465, line: 146, baseType: !1632, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !210, line: 18, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1464, file: !1465, line: 147, baseType: !1635, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1465, line: 25, size: 64, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1465, line: 26, baseType: !560, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1636, file: !1465, line: 27, baseType: !170, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1465, line: 28, baseType: !1641, offset: 64)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 0)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1465, line: 149, baseType: !1645, size: 128, offset: 1152)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !1465, line: 149, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1645, file: !1465, line: 150, baseType: !170, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1465, line: 151, baseType: !818, size: 128, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1130, file: !49, line: 938, baseType: !1650, size: 256, offset: 1088)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !49, line: 896, size: 256, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1650, file: !49, line: 897, baseType: !168, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !49, line: 898, baseType: !7, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1650, file: !49, line: 899, baseType: !7, size: 32, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1650, file: !49, line: 902, baseType: !7, size: 32, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1650, file: !49, line: 903, baseType: !7, size: 32, offset: 160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1650, file: !49, line: 904, baseType: !389, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1130, file: !49, line: 940, baseType: !175, size: 64, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1130, file: !49, line: 945, baseType: !161, size: 64, offset: 1408)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1130, file: !49, line: 949, baseType: !191, size: 128, offset: 1472)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1130, file: !49, line: 950, baseType: !191, size: 128, offset: 1600)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1130, file: !49, line: 952, baseType: !197, size: 64, offset: 1728)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1130, file: !49, line: 953, baseType: !1664, size: 32, offset: 1792)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1665, line: 8, baseType: !171)
!1665 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1130, file: !49, line: 954, baseType: !1664, size: 32, offset: 1824)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1016, file: !181, line: 362, baseType: !161, size: 64, offset: 1344)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1016, file: !181, line: 365, baseType: !548, size: 64, offset: 1408)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1016, file: !181, line: 373, baseType: !1670, offset: 1472)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !181, line: 296, elements: !304)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1012, file: !181, line: 391, baseType: !972, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1012, file: !181, line: 392, baseType: !175, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1012, file: !181, line: 394, baseType: !1383, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1012, file: !181, line: 398, baseType: !168, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1012, file: !181, line: 399, baseType: !168, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1012, file: !181, line: 405, baseType: !168, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1012, file: !181, line: 406, baseType: !168, size: 64, offset: 448)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1012, file: !181, line: 407, baseType: !1679, size: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !503, line: 286, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 286, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1681, file: !503, line: 286, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1031, line: 18, baseType: !168)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1012, file: !181, line: 416, baseType: !560, size: 32, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1012, file: !181, line: 428, baseType: !560, size: 32, offset: 608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1012, file: !181, line: 437, baseType: !560, size: 32, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1012, file: !181, line: 447, baseType: !560, size: 32, offset: 672)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1012, file: !181, line: 450, baseType: !548, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1012, file: !181, line: 452, baseType: !170, size: 32, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1012, file: !181, line: 454, baseType: !290, offset: 800)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1012, file: !181, line: 457, baseType: !721, size: 256, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1012, file: !181, line: 459, baseType: !191, size: 128, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1012, file: !181, line: 466, baseType: !168, size: 64, offset: 1216)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1012, file: !181, line: 467, baseType: !168, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1012, file: !181, line: 469, baseType: !168, size: 64, offset: 1344)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1012, file: !181, line: 470, baseType: !168, size: 64, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1012, file: !181, line: 471, baseType: !550, size: 64, offset: 1472)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1012, file: !181, line: 472, baseType: !168, size: 64, offset: 1536)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1012, file: !181, line: 473, baseType: !168, size: 64, offset: 1600)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1012, file: !181, line: 474, baseType: !168, size: 64, offset: 1664)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1012, file: !181, line: 475, baseType: !168, size: 64, offset: 1728)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1012, file: !181, line: 477, baseType: !290, offset: 1792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1012, file: !181, line: 478, baseType: !168, size: 64, offset: 1792)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1012, file: !181, line: 478, baseType: !168, size: 64, offset: 1856)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1012, file: !181, line: 478, baseType: !168, size: 64, offset: 1920)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1012, file: !181, line: 478, baseType: !168, size: 64, offset: 1984)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1012, file: !181, line: 479, baseType: !168, size: 64, offset: 2048)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1012, file: !181, line: 479, baseType: !168, size: 64, offset: 2112)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1012, file: !181, line: 479, baseType: !168, size: 64, offset: 2176)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1012, file: !181, line: 480, baseType: !168, size: 64, offset: 2240)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1012, file: !181, line: 480, baseType: !168, size: 64, offset: 2304)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1012, file: !181, line: 480, baseType: !168, size: 64, offset: 2368)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1012, file: !181, line: 480, baseType: !168, size: 64, offset: 2432)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1012, file: !181, line: 482, baseType: !1716, size: 2816, offset: 2496)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 2816, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 44)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1012, file: !181, line: 488, baseType: !1720, size: 256, offset: 5312)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1721, line: 60, size: 256, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1720, file: !1721, line: 61, baseType: !1724, size: 256)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 256, elements: !1444)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1012, file: !181, line: 490, baseType: !1726, size: 64, offset: 5568)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !181, line: 490, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1012, file: !181, line: 493, baseType: !1729, size: 896, offset: 5632)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1730, line: 53, baseType: !1731)
!1730 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 13, size: 896, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1739, !1740, !1741, !1742, !1762, !1763, !1764}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1731, file: !1730, line: 18, baseType: !175, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1731, file: !1730, line: 28, baseType: !550, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1731, file: !1730, line: 31, baseType: !721, size: 256, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1731, file: !1730, line: 32, baseType: !1737, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1730, line: 32, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1731, file: !1730, line: 37, baseType: !206, size: 16, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !1730, line: 40, baseType: !544, size: 192, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1731, file: !1730, line: 41, baseType: !161, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1731, file: !1730, line: 42, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1746, line: 13, size: 896, elements: !1747)
!1746 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1745, file: !1746, line: 14, baseType: !161, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1745, file: !1746, line: 15, baseType: !168, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1745, file: !1746, line: 17, baseType: !168, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1745, file: !1746, line: 17, baseType: !168, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1745, file: !1746, line: 19, baseType: !169, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1745, file: !1746, line: 21, baseType: !169, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1745, file: !1746, line: 22, baseType: !169, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1745, file: !1746, line: 23, baseType: !169, size: 64, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1745, file: !1746, line: 24, baseType: !169, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1745, file: !1746, line: 25, baseType: !169, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1745, file: !1746, line: 26, baseType: !169, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1745, file: !1746, line: 27, baseType: !169, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1745, file: !1746, line: 28, baseType: !169, size: 64, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1745, file: !1746, line: 29, baseType: !169, size: 64, offset: 832)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1731, file: !1730, line: 44, baseType: !560, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1731, file: !1730, line: 50, baseType: !1185, size: 16, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1731, file: !1730, line: 51, baseType: !1765, size: 16, offset: 880)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !172, line: 18, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !174, line: 23, baseType: !1526)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !181, line: 495, baseType: !168, size: 64, offset: 6528)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1012, file: !181, line: 497, baseType: !1769, size: 64, offset: 6592)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !181, line: 381, size: 384, elements: !1771)
!1771 = !{!1772, !1773, !1779}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1770, file: !181, line: 382, baseType: !560, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1770, file: !181, line: 383, baseType: !1774, size: 128, offset: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !181, line: 376, size: 128, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1774, file: !181, line: 377, baseType: !833, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1774, file: !181, line: 378, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1770, file: !181, line: 384, baseType: !1780, size: 192, offset: 192)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1781, line: 26, size: 192, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1780, file: !1781, line: 27, baseType: !7, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1780, file: !1781, line: 28, baseType: !1785, size: 128, offset: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1786, line: 43, size: 128, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1785, file: !1786, line: 44, baseType: !727)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1785, file: !1786, line: 45, baseType: !191, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1012, file: !181, line: 500, baseType: !290, offset: 6656)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1012, file: !181, line: 501, baseType: !1792, size: 64, offset: 6656)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !181, line: 387, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1012, file: !181, line: 516, baseType: !1632, size: 64, offset: 6720)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1012, file: !181, line: 519, baseType: !1129, size: 64, offset: 6784)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1012, file: !181, line: 521, baseType: !1797, size: 64, offset: 6848)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !181, line: 521, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1012, file: !181, line: 545, baseType: !560, size: 32, offset: 6912)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1012, file: !181, line: 548, baseType: !370, size: 8, offset: 6944)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1012, file: !181, line: 550, baseType: !1802, offset: 6952)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1803, line: 142, elements: !304)
!1803 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1012, file: !181, line: 554, baseType: !1805, size: 256, offset: 6976)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1806, line: 102, size: 256, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1805, file: !1806, line: 103, baseType: !548, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1805, file: !1806, line: 104, baseType: !191, size: 128, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1805, file: !1806, line: 105, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1806, line: 21, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1012, file: !181, line: 557, baseType: !171, size: 32, offset: 7232)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1009, file: !181, line: 565, baseType: !1818, offset: 7296)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: -1)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !834, file: !747, line: 758, baseType: !1008, size: 64, offset: 3968)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !834, file: !747, line: 761, baseType: !1823, size: 320, offset: 4032)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1721, line: 34, size: 320, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1823, file: !1721, line: 35, baseType: !175, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1823, file: !1721, line: 36, baseType: !1827, size: 256, offset: 64)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 256, elements: !1444)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !834, file: !747, line: 766, baseType: !170, size: 32, offset: 4352)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !834, file: !747, line: 767, baseType: !170, size: 32, offset: 4384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !834, file: !747, line: 768, baseType: !170, size: 32, offset: 4416)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !834, file: !747, line: 770, baseType: !170, size: 32, offset: 4448)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !834, file: !747, line: 772, baseType: !168, size: 64, offset: 4480)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !834, file: !747, line: 775, baseType: !7, size: 32, offset: 4544)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !834, file: !747, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !834, file: !747, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !834, file: !747, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !834, file: !747, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !834, file: !747, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !834, file: !747, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !834, file: !747, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !834, file: !747, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !834, file: !747, line: 831, baseType: !168, size: 64, offset: 4672)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !834, file: !747, line: 833, baseType: !1844, size: 384, offset: 4736)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 384, elements: !1845)
!1845 = !{!1846, !1851}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1844, file: !30, line: 26, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!169, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !30, line: 27, baseType: !1852, size: 320, offset: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !30, line: 27, size: 320, elements: !1853)
!1853 = !{!1854, !1864, !1889}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1852, file: !30, line: 36, baseType: !1855, size: 320)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !30, line: 29, size: 320, elements: !1856)
!1856 = !{!1857, !1859, !1860, !1861, !1862, !1863}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1855, file: !30, line: 30, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1855, file: !30, line: 31, baseType: !171, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !30, line: 32, baseType: !171, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1855, file: !30, line: 33, baseType: !171, size: 32, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1855, file: !30, line: 34, baseType: !175, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1855, file: !30, line: 35, baseType: !1858, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1852, file: !30, line: 46, baseType: !1865, size: 192)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !30, line: 38, size: 192, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1888}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1865, file: !30, line: 39, baseType: !957, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1865, file: !30, line: 40, baseType: !29, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !30, line: 41, baseType: !1870, size: 64, offset: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !30, line: 41, size: 64, elements: !1871)
!1871 = !{!1872, !1880}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1870, file: !30, line: 42, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1875, line: 7, size: 128, elements: !1876)
!1875 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1874, file: !1875, line: 8, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !216, line: 93, baseType: !391)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1874, file: !1875, line: 9, baseType: !391, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1870, file: !30, line: 43, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1883, line: 7, size: 64, elements: !1884)
!1883 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1882, file: !1883, line: 8, baseType: !1886, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1883, line: 5, baseType: !1500)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1882, file: !1883, line: 9, baseType: !1500, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1865, file: !30, line: 45, baseType: !175, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1852, file: !30, line: 54, baseType: !1890, size: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !30, line: 48, size: 256, elements: !1891)
!1891 = !{!1892, !1895, !1896, !1897, !1898}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1890, file: !30, line: 49, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !30, line: 14, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1890, file: !30, line: 50, baseType: !170, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1890, file: !30, line: 51, baseType: !170, size: 32, offset: 96)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1890, file: !30, line: 52, baseType: !168, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1890, file: !30, line: 53, baseType: !168, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !834, file: !747, line: 835, baseType: !1900, size: 32, offset: 5120)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !167, line: 22, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !216, line: 28, baseType: !170)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !834, file: !747, line: 836, baseType: !1900, size: 32, offset: 5152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !834, file: !747, line: 840, baseType: !168, size: 64, offset: 5184)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !834, file: !747, line: 849, baseType: !833, size: 64, offset: 5248)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !834, file: !747, line: 852, baseType: !833, size: 64, offset: 5312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !834, file: !747, line: 857, baseType: !191, size: 128, offset: 5376)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !834, file: !747, line: 858, baseType: !191, size: 128, offset: 5504)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !834, file: !747, line: 859, baseType: !833, size: 64, offset: 5632)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !834, file: !747, line: 867, baseType: !191, size: 128, offset: 5696)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !834, file: !747, line: 868, baseType: !191, size: 128, offset: 5824)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !834, file: !747, line: 871, baseType: !1436, size: 64, offset: 5952)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !834, file: !747, line: 872, baseType: !1913, size: 512, offset: 6016)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 512, elements: !1444)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !834, file: !747, line: 873, baseType: !191, size: 128, offset: 6528)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !834, file: !747, line: 874, baseType: !191, size: 128, offset: 6656)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !834, file: !747, line: 876, baseType: !1917, size: 64, offset: 6784)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !834, file: !747, line: 879, baseType: !495, size: 64, offset: 6848)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !834, file: !747, line: 882, baseType: !495, size: 64, offset: 6912)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !834, file: !747, line: 884, baseType: !175, size: 64, offset: 6976)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !834, file: !747, line: 885, baseType: !175, size: 64, offset: 7040)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !834, file: !747, line: 890, baseType: !175, size: 64, offset: 7104)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !834, file: !747, line: 891, baseType: !1924, size: 128, offset: 7168)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !747, line: 242, size: 128, elements: !1925)
!1925 = !{!1926, !1927, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1924, file: !747, line: 244, baseType: !175, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1924, file: !747, line: 245, baseType: !175, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1924, file: !747, line: 246, baseType: !727, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !834, file: !747, line: 900, baseType: !168, size: 64, offset: 7296)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !834, file: !747, line: 901, baseType: !168, size: 64, offset: 7360)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !834, file: !747, line: 904, baseType: !175, size: 64, offset: 7424)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !834, file: !747, line: 907, baseType: !175, size: 64, offset: 7488)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !834, file: !747, line: 910, baseType: !168, size: 64, offset: 7552)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !834, file: !747, line: 911, baseType: !168, size: 64, offset: 7616)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !834, file: !747, line: 914, baseType: !1936, size: 640, offset: 7680)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1937, line: 123, size: 640, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1938 = !{!1939, !1945, !1946}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1936, file: !1937, line: 124, baseType: !1940, size: 576)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 576, elements: !439)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1937, line: 108, size: 192, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1941, file: !1937, line: 109, baseType: !175, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1941, file: !1937, line: 110, baseType: !966, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1936, file: !1937, line: 125, baseType: !7, size: 32, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1936, file: !1937, line: 126, baseType: !7, size: 32, offset: 608)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !834, file: !747, line: 917, baseType: !1948, size: 192, offset: 8320)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1937, line: 134, size: 192, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1948, file: !1937, line: 135, baseType: !818, size: 128, align: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1948, file: !1937, line: 136, baseType: !7, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !834, file: !747, line: 923, baseType: !1462, size: 64, offset: 8512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !834, file: !747, line: 926, baseType: !1462, size: 64, offset: 8576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !834, file: !747, line: 929, baseType: !1462, size: 64, offset: 8640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !834, file: !747, line: 933, baseType: !1492, size: 64, offset: 8704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !834, file: !747, line: 943, baseType: !1957, size: 128, offset: 8768)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 16)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !834, file: !747, line: 945, baseType: !1961, size: 64, offset: 8896)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !747, line: 49, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !834, file: !747, line: 956, baseType: !1964, size: 64, offset: 8960)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !747, line: 45, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !834, file: !747, line: 959, baseType: !1967, size: 64, offset: 9024)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !747, line: 959, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !834, file: !747, line: 962, baseType: !1970, size: 64, offset: 9088)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !747, line: 66, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !834, file: !747, line: 966, baseType: !1973, size: 64, offset: 9152)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1975, line: 35, flags: DIFlagFwdDecl)
!1975 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !834, file: !747, line: 969, baseType: !1977, size: 64, offset: 9216)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1979, line: 82, size: 7296, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2016, !2025, !2026, !2028, !2029, !2030, !2033, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2063, !2064, !2071, !2072, !2073, !2074, !2075, !2076}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1978, file: !1979, line: 83, baseType: !846, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1978, file: !1979, line: 84, baseType: !560, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1978, file: !1979, line: 85, baseType: !170, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1978, file: !1979, line: 86, baseType: !191, size: 128, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1978, file: !1979, line: 88, baseType: !799, size: 128, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1978, file: !1979, line: 91, baseType: !833, size: 64, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1978, file: !1979, line: 94, baseType: !1988, size: 192, offset: 448)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1989, line: 30, size: 192, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1988, file: !1989, line: 31, baseType: !191, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1988, file: !1989, line: 32, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1994, line: 25, baseType: !1995)
!1994 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1994, line: 23, size: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1995, file: !1994, line: 24, baseType: !1000, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1978, file: !1979, line: 97, baseType: !423, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1978, file: !1979, line: 100, baseType: !170, size: 32, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1978, file: !1979, line: 106, baseType: !170, size: 32, offset: 736)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1978, file: !1979, line: 107, baseType: !833, size: 64, offset: 768)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1978, file: !1979, line: 110, baseType: !170, size: 32, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !1979, line: 111, baseType: !7, size: 32, offset: 864)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1978, file: !1979, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1978, file: !1979, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1978, file: !1979, line: 128, baseType: !170, size: 32, offset: 928)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1978, file: !1979, line: 129, baseType: !191, size: 128, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1978, file: !1979, line: 132, baseType: !915, size: 512, offset: 1088)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1978, file: !1979, line: 133, baseType: !923, size: 64, offset: 1600)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1978, file: !1979, line: 140, baseType: !2011, size: 256, offset: 1664)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 256, elements: !1484)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1979, line: 38, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2012, file: !1979, line: 39, baseType: !175, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2012, file: !1979, line: 40, baseType: !175, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1978, file: !1979, line: 146, baseType: !2017, size: 192, offset: 1920)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1979, line: 66, size: 192, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2017, file: !1979, line: 67, baseType: !2020, size: 192)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1979, line: 47, size: 192, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2020, file: !1979, line: 48, baseType: !550, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2020, file: !1979, line: 49, baseType: !550, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2020, file: !1979, line: 50, baseType: !550, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1978, file: !1979, line: 150, baseType: !1936, size: 640, offset: 2112)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1978, file: !1979, line: 153, baseType: !2027, size: 256, offset: 2752)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1436, size: 256, elements: !1444)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1978, file: !1979, line: 159, baseType: !1436, size: 64, offset: 3008)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1978, file: !1979, line: 162, baseType: !170, size: 32, offset: 3072)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1978, file: !1979, line: 164, baseType: !2031, size: 64, offset: 3136)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1979, line: 164, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1978, file: !1979, line: 175, baseType: !2034, size: 32, offset: 3200)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !241, line: 805, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 798, size: 32, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2035, file: !241, line: 803, baseType: !240, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2035, file: !241, line: 804, baseType: !290, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1978, file: !1979, line: 176, baseType: !175, size: 64, offset: 3264)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1978, file: !1979, line: 176, baseType: !175, size: 64, offset: 3328)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1978, file: !1979, line: 176, baseType: !175, size: 64, offset: 3392)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1978, file: !1979, line: 176, baseType: !175, size: 64, offset: 3456)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1978, file: !1979, line: 177, baseType: !175, size: 64, offset: 3520)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1978, file: !1979, line: 178, baseType: !175, size: 64, offset: 3584)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1978, file: !1979, line: 179, baseType: !1924, size: 128, offset: 3648)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1978, file: !1979, line: 180, baseType: !168, size: 64, offset: 3776)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1978, file: !1979, line: 180, baseType: !168, size: 64, offset: 3840)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1978, file: !1979, line: 180, baseType: !168, size: 64, offset: 3904)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1978, file: !1979, line: 180, baseType: !168, size: 64, offset: 3968)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1978, file: !1979, line: 181, baseType: !168, size: 64, offset: 4032)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1978, file: !1979, line: 181, baseType: !168, size: 64, offset: 4096)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1978, file: !1979, line: 181, baseType: !168, size: 64, offset: 4160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1978, file: !1979, line: 181, baseType: !168, size: 64, offset: 4224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1978, file: !1979, line: 182, baseType: !168, size: 64, offset: 4288)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1978, file: !1979, line: 182, baseType: !168, size: 64, offset: 4352)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1978, file: !1979, line: 182, baseType: !168, size: 64, offset: 4416)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1978, file: !1979, line: 182, baseType: !168, size: 64, offset: 4480)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1978, file: !1979, line: 183, baseType: !168, size: 64, offset: 4544)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1978, file: !1979, line: 183, baseType: !168, size: 64, offset: 4608)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1978, file: !1979, line: 184, baseType: !2061, offset: 4672)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2062, line: 12, elements: !304)
!2062 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1978, file: !1979, line: 192, baseType: !177, size: 64, offset: 4672)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1978, file: !1979, line: 203, baseType: !2065, size: 2048, offset: 4736)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2066, size: 2048, elements: !1958)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2067, line: 43, size: 128, elements: !2068)
!2067 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2066, file: !2067, line: 44, baseType: !1163, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2066, file: !2067, line: 45, baseType: !1163, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1978, file: !1979, line: 220, baseType: !370, size: 8, offset: 6784)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1978, file: !1979, line: 221, baseType: !1526, size: 16, offset: 6800)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1978, file: !1979, line: 222, baseType: !1526, size: 16, offset: 6816)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1978, file: !1979, line: 224, baseType: !1008, size: 64, offset: 6848)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1978, file: !1979, line: 227, baseType: !544, size: 192, offset: 6912)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1978, file: !1979, line: 233, baseType: !544, size: 192, offset: 7104)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !834, file: !747, line: 970, baseType: !2078, size: 64, offset: 9280)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1979, line: 20, size: 16576, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2079, file: !1979, line: 21, baseType: !290)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2079, file: !1979, line: 22, baseType: !846, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2079, file: !1979, line: 23, baseType: !799, size: 128, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2079, file: !1979, line: 24, baseType: !2085, size: 16384, offset: 192)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2086, size: 16384, elements: !2106)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1989, line: 49, size: 256, elements: !2087)
!2087 = !{!2088}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2086, file: !1989, line: 50, baseType: !2089, size: 256)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1989, line: 35, size: 256, elements: !2090)
!2090 = !{!2091, !2098, !2099, !2105}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2089, file: !1989, line: 37, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2093, line: 19, baseType: !2094)
!2093 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2093, line: 18, baseType: !2096)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !170}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2089, file: !1989, line: 38, baseType: !168, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2089, file: !1989, line: 44, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2093, line: 22, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2093, line: 21, baseType: !2103)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2089, file: !1989, line: 46, baseType: !1993, size: 64, offset: 192)
!2106 = !{!2107}
!2107 = !DISubrange(count: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !834, file: !747, line: 971, baseType: !1993, size: 64, offset: 9344)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !834, file: !747, line: 972, baseType: !1993, size: 64, offset: 9408)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !834, file: !747, line: 974, baseType: !1993, size: 64, offset: 9472)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !834, file: !747, line: 975, baseType: !1988, size: 192, offset: 9536)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !834, file: !747, line: 976, baseType: !168, size: 64, offset: 9728)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !834, file: !747, line: 977, baseType: !1161, size: 64, offset: 9792)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !834, file: !747, line: 978, baseType: !7, size: 32, offset: 9856)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !834, file: !747, line: 980, baseType: !821, size: 64, offset: 9920)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !834, file: !747, line: 989, baseType: !2117, size: 128, offset: 9984)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2118, line: 35, size: 128, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2117, file: !2118, line: 36, baseType: !170, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2117, file: !2118, line: 37, baseType: !560, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2117, file: !2118, line: 38, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2118, line: 23, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !834, file: !747, line: 992, baseType: !175, size: 64, offset: 10112)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !834, file: !747, line: 993, baseType: !175, size: 64, offset: 10176)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !834, file: !747, line: 996, baseType: !290, offset: 10240)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !834, file: !747, line: 999, baseType: !727, offset: 10240)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !834, file: !747, line: 1001, baseType: !2130, size: 64, offset: 10240)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !747, line: 636, size: 64, elements: !2131)
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2130, file: !747, line: 637, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !834, file: !747, line: 1005, baseType: !969, size: 128, offset: 10304)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !834, file: !747, line: 1007, baseType: !833, size: 64, offset: 10432)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !834, file: !747, line: 1009, baseType: !2137, size: 64, offset: 10496)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !747, line: 1009, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !834, file: !747, line: 1043, baseType: !161, size: 64, offset: 10560)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !834, file: !747, line: 1046, baseType: !2141, size: 64, offset: 10624)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !747, line: 41, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !834, file: !747, line: 1050, baseType: !2144, size: 64, offset: 10688)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !747, line: 42, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !834, file: !747, line: 1054, baseType: !2147, size: 64, offset: 10752)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !747, line: 55, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !834, file: !747, line: 1056, baseType: !745, size: 64, offset: 10816)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !834, file: !747, line: 1058, baseType: !2151, size: 64, offset: 10880)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2153, line: 99, size: 704, elements: !2154)
!2153 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2167, !2188, !2189}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2152, file: !2153, line: 100, baseType: !548, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2152, file: !2153, line: 101, baseType: !560, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2152, file: !2153, line: 102, baseType: !560, size: 32, offset: 96)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !2153, line: 105, baseType: !290, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2152, file: !2153, line: 107, baseType: !206, size: 16, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2152, file: !2153, line: 109, baseType: !2161, size: 128, offset: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2162, line: 292, size: 128, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2161, file: !2162, line: 293, baseType: !290)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2161, file: !2162, line: 295, baseType: !166, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2161, file: !2162, line: 296, baseType: !161, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2152, file: !2153, line: 110, baseType: !2168, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2153, line: 73, size: 448, elements: !2170)
!2170 = !{!2171, !2174, !2175, !2182, !2187}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2169, file: !2153, line: 74, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2153, line: 74, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2169, file: !2153, line: 75, baseType: !2151, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !2153, line: 83, baseType: !2176, size: 128, offset: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !2153, line: 83, size: 128, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2176, file: !2153, line: 84, baseType: !191, size: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2176, file: !2153, line: 85, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !181, line: 117, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !2153, line: 87, baseType: !2183, size: 128, offset: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !2153, line: 87, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2183, file: !2153, line: 88, baseType: !427, size: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2183, file: !2153, line: 89, baseType: !818, size: 128, align: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2169, file: !2153, line: 92, baseType: !7, size: 32, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2152, file: !2153, line: 111, baseType: !423, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2152, file: !2153, line: 113, baseType: !1805, size: 256, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !834, file: !747, line: 1061, baseType: !2191, size: 64, offset: 10944)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !747, line: 43, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !834, file: !747, line: 1064, baseType: !168, size: 64, offset: 11008)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !834, file: !747, line: 1065, baseType: !2195, size: 64, offset: 11072)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1989, line: 14, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1989, line: 12, size: 384, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !1989, line: 13, baseType: !2200, size: 384)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !1989, line: 13, size: 384, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2200, file: !1989, line: 13, baseType: !170, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2200, file: !1989, line: 13, baseType: !170, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2200, file: !1989, line: 13, baseType: !170, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2200, file: !1989, line: 13, baseType: !2206, size: 256, offset: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2207, line: 32, size: 256, elements: !2208)
!2207 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2214, !2227, !2233, !2242, !2262, !2267}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2206, file: !2207, line: 37, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 34, size: 64, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2210, file: !2207, line: 35, baseType: !1901, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2210, file: !2207, line: 36, baseType: !215, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2206, file: !2207, line: 45, baseType: !2215, size: 192)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 40, size: 192, elements: !2216)
!2216 = !{!2217, !2219, !2220, !2226}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2215, file: !2207, line: 41, baseType: !2218, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !216, line: 95, baseType: !170)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2215, file: !2207, line: 42, baseType: !170, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2215, file: !2207, line: 43, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2207, line: 11, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2207, line: 8, size: 64, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2222, file: !2207, line: 9, baseType: !170, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2222, file: !2207, line: 10, baseType: !161, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2215, file: !2207, line: 44, baseType: !170, size: 32, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2206, file: !2207, line: 52, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 48, size: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2228, file: !2207, line: 49, baseType: !1901, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2228, file: !2207, line: 50, baseType: !215, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2228, file: !2207, line: 51, baseType: !2221, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2206, file: !2207, line: 61, baseType: !2234, size: 256)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 55, size: 256, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2241}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2234, file: !2207, line: 56, baseType: !1901, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2234, file: !2207, line: 57, baseType: !215, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2234, file: !2207, line: 58, baseType: !170, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2234, file: !2207, line: 59, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !216, line: 94, baseType: !1160)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2234, file: !2207, line: 60, baseType: !2240, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2206, file: !2207, line: 95, baseType: !2243, size: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 64, size: 256, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2243, file: !2207, line: 65, baseType: !161, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2207, line: 77, baseType: !2247, size: 192, offset: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2207, line: 77, size: 192, elements: !2248)
!2248 = !{!2249, !2250, !2257}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2247, file: !2207, line: 82, baseType: !1526, size: 16)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2247, file: !2207, line: 88, baseType: !2251, size: 192)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !2207, line: 84, size: 192, elements: !2252)
!2252 = !{!2253, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2251, file: !2207, line: 85, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !953)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2251, file: !2207, line: 86, baseType: !161, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2251, file: !2207, line: 87, baseType: !161, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2247, file: !2207, line: 93, baseType: !2258, size: 96)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !2207, line: 90, size: 96, elements: !2259)
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2258, file: !2207, line: 91, baseType: !2254, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2258, file: !2207, line: 92, baseType: !173, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2206, file: !2207, line: 101, baseType: !2263, size: 128)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 98, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2263, file: !2207, line: 99, baseType: !169, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2263, file: !2207, line: 100, baseType: !170, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2206, file: !2207, line: 108, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2207, line: 104, size: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2268, file: !2207, line: 105, baseType: !161, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2268, file: !2207, line: 106, baseType: !170, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2268, file: !2207, line: 107, baseType: !7, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !834, file: !747, line: 1067, baseType: !2061, offset: 11136)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !834, file: !747, line: 1099, baseType: !2275, size: 64, offset: 11136)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !747, line: 56, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !834, file: !747, line: 1103, baseType: !191, size: 128, offset: 11200)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !834, file: !747, line: 1104, baseType: !2279, size: 64, offset: 11328)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !747, line: 46, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !834, file: !747, line: 1105, baseType: !544, size: 192, offset: 11392)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !834, file: !747, line: 1106, baseType: !7, size: 32, offset: 11584)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !834, file: !747, line: 1109, baseType: !2284, size: 128, offset: 11648)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 128, elements: !1484)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !747, line: 51, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !834, file: !747, line: 1110, baseType: !544, size: 192, offset: 11776)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !834, file: !747, line: 1111, baseType: !191, size: 128, offset: 11968)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !834, file: !747, line: 1173, baseType: !2290, size: 64, offset: 12096)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2292, line: 62, size: 256, align: 256, elements: !2293)
!2292 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2295, !2296, !2301}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2291, file: !2292, line: 75, baseType: !173, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2291, file: !2292, line: 90, baseType: !173, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2291, file: !2292, line: 124, baseType: !2297, size: 64, offset: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 109, size: 64, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2297, file: !2292, line: 110, baseType: !176, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2297, file: !2292, line: 112, baseType: !176, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !2292, line: 144, baseType: !173, size: 32, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !834, file: !747, line: 1174, baseType: !171, size: 32, offset: 12160)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !834, file: !747, line: 1179, baseType: !168, size: 64, offset: 12224)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !834, file: !747, line: 1182, baseType: !2305, size: 128, offset: 12288)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1721, line: 76, size: 128, elements: !2306)
!2306 = !{!2307, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2305, file: !1721, line: 85, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2309, line: 7, size: 64, elements: !2310)
!2309 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2308, file: !2309, line: 12, baseType: !997, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2305, file: !1721, line: 88, baseType: !370, size: 8, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2305, file: !1721, line: 95, baseType: !370, size: 8, offset: 72)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !747, line: 1184, baseType: !2315, size: 128, offset: 12416)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !747, line: 1184, size: 128, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2315, file: !747, line: 1185, baseType: !846, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2315, file: !747, line: 1186, baseType: !818, size: 128, align: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !834, file: !747, line: 1190, baseType: !1395, size: 64, offset: 12544)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !834, file: !747, line: 1192, baseType: !2321, size: 128, offset: 12608)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1721, line: 64, size: 128, elements: !2322)
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2321, file: !1721, line: 65, baseType: !179, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2321, file: !1721, line: 67, baseType: !173, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2321, file: !1721, line: 68, baseType: !173, size: 32, offset: 96)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !834, file: !747, line: 1206, baseType: !170, size: 32, offset: 12736)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !834, file: !747, line: 1207, baseType: !170, size: 32, offset: 12768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !834, file: !747, line: 1209, baseType: !168, size: 64, offset: 12800)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !834, file: !747, line: 1219, baseType: !175, size: 64, offset: 12864)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !834, file: !747, line: 1220, baseType: !175, size: 64, offset: 12928)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !834, file: !747, line: 1317, baseType: !170, size: 32, offset: 12992)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !834, file: !747, line: 1319, baseType: !833, size: 64, offset: 13056)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !834, file: !747, line: 1322, baseType: !2334, size: 64, offset: 13120)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2336, line: 56, size: 512, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2344, !2345, !2347}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2335, file: !2336, line: 57, baseType: !2334, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2335, file: !2336, line: 58, baseType: !161, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2335, file: !2336, line: 59, baseType: !168, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !2336, line: 60, baseType: !168, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2335, file: !2336, line: 61, baseType: !2343, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2335, file: !2336, line: 62, baseType: !7, size: 32, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2335, file: !2336, line: 63, baseType: !2346, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !167, line: 153, baseType: !175)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2335, file: !2336, line: 64, baseType: !2348, size: 64, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !834, file: !747, line: 1326, baseType: !846, size: 32, offset: 13184)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !834, file: !747, line: 1342, baseType: !161, size: 64, offset: 13248)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !834, file: !747, line: 1343, baseType: !176, size: 64, offset: 13312)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !834, file: !747, line: 1344, baseType: !175, size: 64, offset: 13376)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !834, file: !747, line: 1345, baseType: !176, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !834, file: !747, line: 1346, baseType: !176, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !834, file: !747, line: 1347, baseType: !176, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !834, file: !747, line: 1348, baseType: !818, size: 128, align: 64, offset: 13504)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !834, file: !747, line: 1358, baseType: !2359, size: 34816, offset: 13824)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2360, line: 485, size: 34816, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !{!2362, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2391, !2392, !2393, !2394, !2395, !2396, !2399, !2400, !2401}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2359, file: !2360, line: 487, baseType: !2363, size: 192)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2364, size: 192, elements: !439)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2365, line: 16, size: 64, elements: !2366)
!2365 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2364, file: !2365, line: 17, baseType: !1185, size: 16)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2364, file: !2365, line: 18, baseType: !1185, size: 16, offset: 16)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2364, file: !2365, line: 19, baseType: !1185, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2364, file: !2365, line: 19, baseType: !1185, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2364, file: !2365, line: 19, baseType: !1185, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2364, file: !2365, line: 19, baseType: !1185, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2364, file: !2365, line: 19, baseType: !1185, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2364, file: !2365, line: 20, baseType: !1185, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2359, file: !2360, line: 491, baseType: !168, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2359, file: !2360, line: 495, baseType: !206, size: 16, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2359, file: !2360, line: 496, baseType: !206, size: 16, offset: 272)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2359, file: !2360, line: 497, baseType: !206, size: 16, offset: 288)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2359, file: !2360, line: 498, baseType: !206, size: 16, offset: 304)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2359, file: !2360, line: 502, baseType: !168, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2359, file: !2360, line: 503, baseType: !168, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2359, file: !2360, line: 514, baseType: !2388, size: 256, offset: 448)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 256, elements: !1444)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2360, line: 483, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2359, file: !2360, line: 516, baseType: !168, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2359, file: !2360, line: 518, baseType: !168, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2359, file: !2360, line: 520, baseType: !168, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2359, file: !2360, line: 521, baseType: !168, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2359, file: !2360, line: 522, baseType: !168, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2359, file: !2360, line: 528, baseType: !2397, size: 64, offset: 1024)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2360, line: 10, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2359, file: !2360, line: 535, baseType: !168, size: 64, offset: 1088)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2359, file: !2360, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2359, file: !2360, line: 540, baseType: !2402, size: 33280, offset: 1536)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2403, line: 317, size: 33280, elements: !2404)
!2403 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2402, file: !2403, line: 330, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2402, file: !2403, line: 337, baseType: !168, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2402, file: !2403, line: 348, baseType: !2408, size: 32768, offset: 512)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2403, line: 304, size: 32768, elements: !2409)
!2409 = !{!2410, !2425, !2462, !2512, !2525}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2408, file: !2403, line: 305, baseType: !2411, size: 896)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2403, line: 12, size: 896, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2424}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2411, file: !2403, line: 13, baseType: !171, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2411, file: !2403, line: 14, baseType: !171, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2411, file: !2403, line: 15, baseType: !171, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2411, file: !2403, line: 16, baseType: !171, size: 32, offset: 96)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2411, file: !2403, line: 17, baseType: !171, size: 32, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2411, file: !2403, line: 18, baseType: !171, size: 32, offset: 160)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2411, file: !2403, line: 19, baseType: !171, size: 32, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2411, file: !2403, line: 22, baseType: !2421, size: 640, offset: 224)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: 20)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2411, file: !2403, line: 25, baseType: !171, size: 32, offset: 864)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2408, file: !2403, line: 306, baseType: !2426, size: 4096, align: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2403, line: 34, size: 4096, align: 128, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2447, !2448, !2449, !2451, !2453, !2457}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2426, file: !2403, line: 35, baseType: !1185, size: 16)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2426, file: !2403, line: 36, baseType: !1185, size: 16, offset: 16)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2426, file: !2403, line: 37, baseType: !1185, size: 16, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2426, file: !2403, line: 38, baseType: !1185, size: 16, offset: 48)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2403, line: 39, baseType: !2433, size: 128, offset: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !2403, line: 39, size: 128, elements: !2434)
!2434 = !{!2435, !2440}
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2403, line: 40, baseType: !2436, size: 128)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2433, file: !2403, line: 40, size: 128, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2436, file: !2403, line: 41, baseType: !175, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2436, file: !2403, line: 42, baseType: !175, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2403, line: 44, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2433, file: !2403, line: 44, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2441, file: !2403, line: 45, baseType: !171, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2441, file: !2403, line: 46, baseType: !171, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2441, file: !2403, line: 47, baseType: !171, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2441, file: !2403, line: 48, baseType: !171, size: 32, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2426, file: !2403, line: 51, baseType: !171, size: 32, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2426, file: !2403, line: 52, baseType: !171, size: 32, offset: 224)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2426, file: !2403, line: 55, baseType: !2450, size: 1024, offset: 256)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1024, elements: !277)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2426, file: !2403, line: 58, baseType: !2452, size: 2048, offset: 1280)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !2106)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2426, file: !2403, line: 60, baseType: !2454, size: 384, offset: 3328)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 384, elements: !2455)
!2455 = !{!2456}
!2456 = !DISubrange(count: 12)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2403, line: 62, baseType: !2458, size: 384, offset: 3712)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !2403, line: 62, size: 384, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2458, file: !2403, line: 63, baseType: !2454, size: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2458, file: !2403, line: 64, baseType: !2454, size: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2408, file: !2403, line: 307, baseType: !2463, size: 1088)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2403, line: 79, size: 1088, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2511}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2463, file: !2403, line: 80, baseType: !171, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2463, file: !2403, line: 81, baseType: !171, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2463, file: !2403, line: 82, baseType: !171, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2463, file: !2403, line: 83, baseType: !171, size: 32, offset: 96)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2463, file: !2403, line: 84, baseType: !171, size: 32, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2463, file: !2403, line: 85, baseType: !171, size: 32, offset: 160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2463, file: !2403, line: 86, baseType: !171, size: 32, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2463, file: !2403, line: 88, baseType: !2421, size: 640, offset: 224)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2463, file: !2403, line: 89, baseType: !982, size: 8, offset: 864)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2463, file: !2403, line: 90, baseType: !982, size: 8, offset: 872)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2463, file: !2403, line: 91, baseType: !982, size: 8, offset: 880)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2463, file: !2403, line: 92, baseType: !982, size: 8, offset: 888)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2463, file: !2403, line: 93, baseType: !982, size: 8, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2463, file: !2403, line: 94, baseType: !982, size: 8, offset: 904)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2463, file: !2403, line: 95, baseType: !2480, size: 64, offset: 960)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2482, line: 11, size: 128, elements: !2483)
!2482 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2481, file: !2482, line: 12, baseType: !169, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2481, file: !2482, line: 13, baseType: !2486, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2488, line: 56, size: 1344, elements: !2489)
!2488 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2487, file: !2488, line: 61, baseType: !168, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2487, file: !2488, line: 62, baseType: !168, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2487, file: !2488, line: 63, baseType: !168, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2487, file: !2488, line: 64, baseType: !168, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2487, file: !2488, line: 65, baseType: !168, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2487, file: !2488, line: 66, baseType: !168, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2487, file: !2488, line: 68, baseType: !168, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2487, file: !2488, line: 69, baseType: !168, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2487, file: !2488, line: 70, baseType: !168, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2487, file: !2488, line: 71, baseType: !168, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2487, file: !2488, line: 72, baseType: !168, size: 64, offset: 640)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2487, file: !2488, line: 73, baseType: !168, size: 64, offset: 704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2487, file: !2488, line: 74, baseType: !168, size: 64, offset: 768)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2487, file: !2488, line: 75, baseType: !168, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2487, file: !2488, line: 76, baseType: !168, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2487, file: !2488, line: 81, baseType: !168, size: 64, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2487, file: !2488, line: 83, baseType: !168, size: 64, offset: 1024)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2487, file: !2488, line: 84, baseType: !168, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2487, file: !2488, line: 85, baseType: !168, size: 64, offset: 1152)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2487, file: !2488, line: 86, baseType: !168, size: 64, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2487, file: !2488, line: 87, baseType: !168, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2463, file: !2403, line: 96, baseType: !171, size: 32, offset: 1024)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2408, file: !2403, line: 308, baseType: !2513, size: 4608, align: 512)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2403, line: 289, size: 4608, align: 512, elements: !2514)
!2514 = !{!2515, !2516, !2523}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2513, file: !2403, line: 290, baseType: !2426, size: 4096, align: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2513, file: !2403, line: 291, baseType: !2517, size: 512, offset: 4096)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2403, line: 268, size: 512, elements: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2517, file: !2403, line: 269, baseType: !175, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2517, file: !2403, line: 270, baseType: !175, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2517, file: !2403, line: 271, baseType: !2522, size: 384, offset: 128)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 384, elements: !1544)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2513, file: !2403, line: 292, baseType: !2524, offset: 4608)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, elements: !1642)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2408, file: !2403, line: 309, baseType: !2526, size: 32768)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 32768, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: 4096)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !807, file: !808, line: 16, baseType: !799, size: 128, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !807, file: !808, line: 17, baseType: !560, size: 32, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !380, file: !49, line: 1465, baseType: !161, size: 64, offset: 6400)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !380, file: !49, line: 1468, baseType: !171, size: 32, offset: 6464)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !380, file: !49, line: 1470, baseType: !595, size: 64, offset: 6528)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !380, file: !49, line: 1471, baseType: !595, size: 64, offset: 6592)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !380, file: !49, line: 1473, baseType: !173, size: 32, offset: 6656)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !380, file: !49, line: 1474, baseType: !2537, size: 64, offset: 6720)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !49, line: 603, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !380, file: !49, line: 1477, baseType: !2540, size: 256, offset: 6784)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !277)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !380, file: !49, line: 1478, baseType: !2542, size: 128, offset: 7040)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2543, line: 18, baseType: !2544)
!2543 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2543, line: 16, size: 128, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2544, file: !2543, line: 17, baseType: !2547, size: 128)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 128, elements: !1958)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !380, file: !49, line: 1480, baseType: !7, size: 32, offset: 7168)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !380, file: !49, line: 1481, baseType: !1428, size: 32, offset: 7200)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !380, file: !49, line: 1487, baseType: !544, size: 192, offset: 7232)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !380, file: !49, line: 1493, baseType: !327, size: 64, offset: 7424)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !380, file: !49, line: 1495, baseType: !307, size: 64, offset: 7488)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !380, file: !49, line: 1500, baseType: !170, size: 32, offset: 7552)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !380, file: !49, line: 1502, baseType: !2555, size: 448, offset: 7616)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !517, line: 60, size: 448, elements: !2556)
!2556 = !{!2557, !2562, !2563, !2564, !2565, !2566, !2567}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2555, file: !517, line: 61, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!168, !2561, !515}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2555, file: !517, line: 63, baseType: !2558, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2555, file: !517, line: 66, baseType: !169, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2555, file: !517, line: 67, baseType: !170, size: 32, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !517, line: 68, baseType: !7, size: 32, offset: 224)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2555, file: !517, line: 71, baseType: !191, size: 128, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2555, file: !517, line: 77, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !380, file: !49, line: 1505, baseType: !548, size: 64, offset: 8064)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !380, file: !49, line: 1508, baseType: !548, size: 64, offset: 8128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !380, file: !49, line: 1511, baseType: !170, size: 32, offset: 8192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !380, file: !49, line: 1514, baseType: !1664, size: 32, offset: 8224)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !380, file: !49, line: 1517, baseType: !2574, size: 64, offset: 8256)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1806, line: 18, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !380, file: !49, line: 1518, baseType: !423, size: 64, offset: 8320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !380, file: !49, line: 1525, baseType: !1632, size: 64, offset: 8384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !380, file: !49, line: 1532, baseType: !2579, size: 64, offset: 8448)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2580, line: 52, size: 64, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2579, file: !2580, line: 53, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2580, line: 40, size: 256, elements: !2585)
!2585 = !{!2586, !2587, !2592}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2584, file: !2580, line: 42, baseType: !290)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2584, file: !2580, line: 44, baseType: !2588, size: 192)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2580, line: 28, size: 192, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2588, file: !2580, line: 29, baseType: !191, size: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2588, file: !2580, line: 31, baseType: !169, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2584, file: !2580, line: 49, baseType: !169, size: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !380, file: !49, line: 1533, baseType: !2579, size: 64, offset: 8512)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !380, file: !49, line: 1534, baseType: !818, size: 128, align: 64, offset: 8576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !380, file: !49, line: 1535, baseType: !1805, size: 256, offset: 8704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !380, file: !49, line: 1537, baseType: !544, size: 192, offset: 8960)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !380, file: !49, line: 1542, baseType: !170, size: 32, offset: 9152)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !380, file: !49, line: 1545, baseType: !290, offset: 9184)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !380, file: !49, line: 1546, baseType: !191, size: 128, offset: 9216)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !380, file: !49, line: 1548, baseType: !290, offset: 9344)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !380, file: !49, line: 1549, baseType: !191, size: 128, offset: 9344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !235, file: !236, line: 104, baseType: !168, size: 64, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !235, file: !236, line: 105, baseType: !161, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !236, line: 107, baseType: !2605, size: 128, offset: 1024)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !236, line: 107, size: 128, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2605, file: !236, line: 108, baseType: !191, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2605, file: !236, line: 109, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !235, file: !236, line: 111, baseType: !191, size: 128, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !235, file: !236, line: 112, baseType: !191, size: 128, offset: 1280)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !235, file: !236, line: 120, baseType: !2613, size: 128, offset: 1408)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !236, line: 116, size: 128, elements: !2614)
!2614 = !{!2615, !2616, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2613, file: !236, line: 117, baseType: !427, size: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2613, file: !236, line: 118, baseType: !250, size: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2613, file: !236, line: 119, baseType: !818, size: 128, align: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !228, file: !49, line: 1866, baseType: !2619, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!327, !234, !201, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2624, line: 10, size: 128, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2625 = !{!2626, !2630}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2623, file: !2624, line: 11, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !161}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2623, file: !2624, line: 12, baseType: !161, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !228, file: !49, line: 1867, baseType: !2632, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!170, !201, !170}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !228, file: !49, line: 1868, baseType: !2636, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!2639, !201, !170}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !49, line: 581, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !228, file: !49, line: 1870, baseType: !2642, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!170, !234, !164, !170}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !228, file: !49, line: 1872, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!170, !201, !234, !205, !370}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !228, file: !49, line: 1873, baseType: !2650, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!170, !234, !201, !234}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !228, file: !49, line: 1874, baseType: !2654, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!170, !201, !234}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !228, file: !49, line: 1875, baseType: !2658, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!170, !201, !234, !327}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !228, file: !49, line: 1876, baseType: !2662, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!170, !201, !234, !205}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !228, file: !49, line: 1877, baseType: !2654, size: 64, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !228, file: !49, line: 1878, baseType: !2667, size: 64, offset: 704)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!170, !201, !234, !205, !384}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !228, file: !49, line: 1879, baseType: !2671, size: 64, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!170, !201, !234, !201, !234, !7}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !228, file: !49, line: 1881, baseType: !2675, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!170, !234, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !49, line: 219, size: 640, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2691, !2692, !2693}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2679, file: !49, line: 220, baseType: !7, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2679, file: !49, line: 221, baseType: !205, size: 16, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2679, file: !49, line: 222, baseType: !209, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2679, file: !49, line: 223, baseType: !218, size: 32, offset: 96)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2679, file: !49, line: 224, baseType: !389, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2679, file: !49, line: 225, baseType: !2687, size: 128, offset: 192)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !596, line: 13, size: 128, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2687, file: !596, line: 14, baseType: !595, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2687, file: !596, line: 15, baseType: !169, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2679, file: !49, line: 226, baseType: !2687, size: 128, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2679, file: !49, line: 227, baseType: !2687, size: 128, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2679, file: !49, line: 234, baseType: !1129, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !228, file: !49, line: 1882, baseType: !2695, size: 64, offset: 896)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!170, !368, !2698, !171, !7}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2700, line: 22, size: 1152, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2699, file: !2700, line: 23, baseType: !171, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2699, file: !2700, line: 24, baseType: !205, size: 16, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2699, file: !2700, line: 25, baseType: !7, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2699, file: !2700, line: 26, baseType: !1522, size: 32, offset: 96)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2699, file: !2700, line: 27, baseType: !175, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2699, file: !2700, line: 28, baseType: !175, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2699, file: !2700, line: 37, baseType: !175, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2699, file: !2700, line: 38, baseType: !384, size: 32, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2699, file: !2700, line: 39, baseType: !384, size: 32, offset: 352)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2699, file: !2700, line: 40, baseType: !209, size: 32, offset: 384)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2699, file: !2700, line: 41, baseType: !218, size: 32, offset: 416)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2699, file: !2700, line: 42, baseType: !389, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2699, file: !2700, line: 43, baseType: !2687, size: 128, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2699, file: !2700, line: 44, baseType: !2687, size: 128, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2699, file: !2700, line: 45, baseType: !2687, size: 128, offset: 768)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2699, file: !2700, line: 46, baseType: !2687, size: 128, offset: 896)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2699, file: !2700, line: 47, baseType: !175, size: 64, offset: 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2699, file: !2700, line: 48, baseType: !175, size: 64, offset: 1088)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !228, file: !49, line: 1883, baseType: !2721, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!1158, !234, !164, !1161}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !228, file: !49, line: 1884, baseType: !2725, size: 64, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!170, !201, !2728, !175, !175}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !49, line: 50, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !228, file: !49, line: 1886, baseType: !2731, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!170, !201, !2734, !170}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !228, file: !49, line: 1887, baseType: !2736, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!170, !201, !234, !1129, !7, !205}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !228, file: !49, line: 1890, baseType: !2662, size: 64, offset: 1216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !228, file: !49, line: 1891, baseType: !2741, size: 64, offset: 1280)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!170, !201, !2639, !170}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !202, file: !49, line: 623, baseType: !379, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !202, file: !49, line: 624, baseType: !197, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !202, file: !49, line: 631, baseType: !168, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !49, line: 639, baseType: !2748, size: 32, offset: 384)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !49, line: 639, size: 32, elements: !2749)
!2749 = !{!2750, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2748, file: !49, line: 640, baseType: !2751, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2748, file: !49, line: 641, baseType: !7, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !202, file: !49, line: 643, baseType: !384, size: 32, offset: 416)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !202, file: !49, line: 644, baseType: !389, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !202, file: !49, line: 645, baseType: !2687, size: 128, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !202, file: !49, line: 646, baseType: !2687, size: 128, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !202, file: !49, line: 647, baseType: !2687, size: 128, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !202, file: !49, line: 648, baseType: !290, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !202, file: !49, line: 649, baseType: !206, size: 16, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !202, file: !49, line: 650, baseType: !982, size: 8, offset: 912)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !202, file: !49, line: 651, baseType: !982, size: 8, offset: 920)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !202, file: !49, line: 652, baseType: !709, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !202, file: !49, line: 659, baseType: !168, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !202, file: !49, line: 660, baseType: !721, size: 256, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !202, file: !49, line: 662, baseType: !168, size: 64, offset: 1344)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !202, file: !49, line: 663, baseType: !168, size: 64, offset: 1408)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !202, file: !49, line: 665, baseType: !427, size: 128, offset: 1472)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !202, file: !49, line: 666, baseType: !191, size: 128, offset: 1600)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !202, file: !49, line: 675, baseType: !191, size: 128, offset: 1728)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !202, file: !49, line: 676, baseType: !191, size: 128, offset: 1856)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !202, file: !49, line: 677, baseType: !191, size: 128, offset: 1984)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !49, line: 678, baseType: !2773, size: 128, offset: 2112)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !49, line: 678, size: 128, elements: !2774)
!2774 = !{!2775, !2776}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2773, file: !49, line: 679, baseType: !423, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2773, file: !49, line: 680, baseType: !818, size: 128, align: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !202, file: !49, line: 682, baseType: !550, size: 64, offset: 2240)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !202, file: !49, line: 683, baseType: !550, size: 64, offset: 2304)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !202, file: !49, line: 684, baseType: !560, size: 32, offset: 2368)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !202, file: !49, line: 685, baseType: !560, size: 32, offset: 2400)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !202, file: !49, line: 686, baseType: !560, size: 32, offset: 2432)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !202, file: !49, line: 688, baseType: !560, size: 32, offset: 2464)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !49, line: 690, baseType: !2784, size: 64, offset: 2496)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !49, line: 690, size: 64, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2784, file: !49, line: 691, baseType: !1145, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2784, file: !49, line: 692, baseType: !454, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !202, file: !49, line: 694, baseType: !2789, size: 64, offset: 2560)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !49, line: 1100, size: 384, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2790, file: !49, line: 1101, baseType: !290)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2790, file: !49, line: 1102, baseType: !191, size: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2790, file: !49, line: 1103, baseType: !191, size: 128, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2790, file: !49, line: 1104, baseType: !191, size: 128, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !202, file: !49, line: 695, baseType: !198, size: 1216, align: 64, offset: 2624)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !202, file: !49, line: 696, baseType: !191, size: 128, offset: 3840)
!2798 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !49, line: 697, baseType: !2799, size: 64, offset: 3968)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !49, line: 697, size: 64, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2806, !2807}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2799, file: !49, line: 698, baseType: !1395, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2799, file: !49, line: 699, baseType: !742, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2799, file: !49, line: 700, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !49, line: 700, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2799, file: !49, line: 701, baseType: !164, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2799, file: !49, line: 702, baseType: !7, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !202, file: !49, line: 705, baseType: !173, size: 32, offset: 4032)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !202, file: !49, line: 708, baseType: !173, size: 32, offset: 4064)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !202, file: !49, line: 709, baseType: !2537, size: 64, offset: 4096)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !202, file: !49, line: 720, baseType: !161, size: 64, offset: 4160)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !198, file: !49, line: 453, baseType: !2161, size: 128, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !198, file: !49, line: 454, baseType: !166, size: 32, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !198, file: !49, line: 455, baseType: !560, size: 32, offset: 224)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !198, file: !49, line: 460, baseType: !969, size: 128, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !198, file: !49, line: 461, baseType: !721, size: 256, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !198, file: !49, line: 462, baseType: !168, size: 64, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !198, file: !49, line: 463, baseType: !168, size: 64, offset: 704)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !198, file: !49, line: 464, baseType: !168, size: 64, offset: 768)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !198, file: !49, line: 465, baseType: !2821, size: 64, offset: 832)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !49, line: 367, size: 1408, elements: !2824)
!2824 = !{!2825, !2829, !2833, !2837, !2841, !2845, !2857, !2861, !2865, !2870, !2874, !2878, !2882, !2883, !2887, !2893, !2894, !2895, !2899, !2904, !2908, !2915}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2823, file: !49, line: 368, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!170, !179, !466}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2823, file: !49, line: 369, baseType: !2830, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!170, !1129, !179}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2823, file: !49, line: 372, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!170, !197, !466}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2823, file: !49, line: 375, baseType: !2838, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!170, !179}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2823, file: !49, line: 381, baseType: !2842, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!170, !1129, !197, !194, !7}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2823, file: !49, line: 383, baseType: !2846, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1195, line: 795, size: 256, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2850, file: !1195, line: 796, baseType: !1129, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2850, file: !1195, line: 797, baseType: !197, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !2850, file: !1195, line: 799, baseType: !168, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !2850, file: !1195, line: 800, baseType: !7, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !2850, file: !1195, line: 801, baseType: !7, size: 32, offset: 224)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2823, file: !49, line: 385, baseType: !2858, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!170, !1129, !197, !389, !7, !7, !2343, !1352}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2823, file: !49, line: 388, baseType: !2862, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!170, !1129, !197, !389, !7, !7, !179, !161}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2823, file: !49, line: 393, baseType: !2866, size: 64, offset: 512)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!2869, !197, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !167, line: 125, baseType: !175)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2823, file: !49, line: 394, baseType: !2871, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !179, !7, !7}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2823, file: !49, line: 395, baseType: !2875, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!170, !179, !166}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2823, file: !49, line: 396, baseType: !2879, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !179}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2823, file: !49, line: 397, baseType: !1170, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2823, file: !49, line: 402, baseType: !2884, size: 64, offset: 832)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!170, !197, !179, !179, !11}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2823, file: !49, line: 404, baseType: !2888, size: 64, offset: 896)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!370, !179, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2892, line: 305, baseType: !7)
!2892 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2823, file: !49, line: 405, baseType: !2879, size: 64, offset: 960)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2823, file: !49, line: 406, baseType: !2838, size: 64, offset: 1024)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2823, file: !49, line: 407, baseType: !2896, size: 64, offset: 1088)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!170, !179, !168, !168}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2823, file: !49, line: 409, baseType: !2900, size: 64, offset: 1152)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !179, !2903, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2823, file: !49, line: 410, baseType: !2905, size: 64, offset: 1216)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!170, !197, !179}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2823, file: !49, line: 413, baseType: !2909, size: 64, offset: 1280)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!170, !2912, !1129, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !49, line: 61, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2823, file: !49, line: 415, baseType: !2916, size: 64, offset: 1344)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !1129}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !49, line: 466, baseType: !168, size: 64, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !198, file: !49, line: 467, baseType: !1664, size: 32, offset: 960)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !198, file: !49, line: 468, baseType: !290, offset: 992)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !198, file: !49, line: 469, baseType: !191, size: 128, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !198, file: !49, line: 470, baseType: !161, size: 64, offset: 1152)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !188, file: !181, line: 87, baseType: !168, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !188, file: !181, line: 94, baseType: !168, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 96, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 96, size: 64, elements: !2928)
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2927, file: !181, line: 101, baseType: !178, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 103, baseType: !2931, size: 320)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 103, size: 320, elements: !2932)
!2932 = !{!2933, !2943, !2944, !2945}
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !181, line: 104, baseType: !2934, size: 128)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !181, line: 104, size: 128, elements: !2935)
!2935 = !{!2936, !2937}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2934, file: !181, line: 105, baseType: !191, size: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !181, line: 106, baseType: !2938, size: 128)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2934, file: !181, line: 106, size: 128, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2938, file: !181, line: 107, baseType: !179, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2938, file: !181, line: 109, baseType: !170, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2938, file: !181, line: 110, baseType: !170, size: 32, offset: 96)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2931, file: !181, line: 117, baseType: !2180, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2931, file: !181, line: 119, baseType: !161, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !181, line: 120, baseType: !2946, size: 64, offset: 256)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !181, line: 120, size: 64, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2946, file: !181, line: 121, baseType: !161, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2946, file: !181, line: 122, baseType: !168, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !181, line: 123, baseType: !2951, size: 32)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !181, line: 123, size: 32, elements: !2952)
!2952 = !{!2953, !2954, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2951, file: !181, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2951, file: !181, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2951, file: !181, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2956 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 130, baseType: !2957, size: 192)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 130, size: 192, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2957, file: !181, line: 131, baseType: !168, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2957, file: !181, line: 134, baseType: !273, size: 8, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2957, file: !181, line: 135, baseType: !273, size: 8, offset: 72)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2957, file: !181, line: 136, baseType: !560, size: 32, offset: 96)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2957, file: !181, line: 137, baseType: !7, size: 32, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 139, baseType: !2965, size: 256)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 139, size: 256, elements: !2966)
!2966 = !{!2967, !2968, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2965, file: !181, line: 140, baseType: !168, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2965, file: !181, line: 141, baseType: !560, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2965, file: !181, line: 143, baseType: !191, size: 128, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 145, baseType: !2971, size: 256)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 145, size: 256, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2981}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2971, file: !181, line: 146, baseType: !168, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2971, file: !181, line: 147, baseType: !1100, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2971, file: !181, line: 148, baseType: !168, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, scope: !2971, file: !181, line: 149, baseType: !2977, size: 64, offset: 192)
!2977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !181, line: 149, size: 64, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2977, file: !181, line: 150, baseType: !1008, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2977, file: !181, line: 151, baseType: !560, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2971, file: !181, line: 156, baseType: !290, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 159, baseType: !2983, size: 128)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 159, size: 128, elements: !2984)
!2984 = !{!2985, !3049}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2983, file: !181, line: 161, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 110, size: 1152, elements: !2988)
!2988 = !{!2989, !2999, !3020, !3021, !3022, !3023, !3024, !3036, !3037, !3038}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2987, file: !36, line: 111, baseType: !2990, size: 384)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 19, size: 384, elements: !2991)
!2991 = !{!2992, !2994, !2995, !2996, !2997, !2998}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2990, file: !36, line: 20, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2990, file: !36, line: 21, baseType: !2993, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2990, file: !36, line: 22, baseType: !2993, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2990, file: !36, line: 23, baseType: !168, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2990, file: !36, line: 24, baseType: !168, size: 64, offset: 256)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2990, file: !36, line: 25, baseType: !168, size: 64, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2987, file: !36, line: 112, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3002, line: 105, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3001, file: !3002, line: 110, baseType: !168, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3001, file: !3002, line: 118, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3002, line: 95, size: 448, elements: !3008)
!3008 = !{!3009, !3010, !3015, !3016, !3017, !3018, !3019}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3007, file: !3002, line: 96, baseType: !548, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3007, file: !3002, line: 97, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3002, line: 60, baseType: !3013)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !3000}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3007, file: !3002, line: 98, baseType: !3011, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3007, file: !3002, line: 99, baseType: !370, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3007, file: !3002, line: 100, baseType: !370, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3007, file: !3002, line: 101, baseType: !818, size: 128, align: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3007, file: !3002, line: 102, baseType: !3000, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2987, file: !36, line: 113, baseType: !3001, size: 128, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2987, file: !36, line: 114, baseType: !1780, size: 192, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2987, file: !36, line: 115, baseType: !35, size: 32, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2987, file: !36, line: 116, baseType: !7, size: 32, offset: 800)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2987, file: !36, line: 117, baseType: !3025, size: 64, offset: 832)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 67, size: 256, elements: !3028)
!3028 = !{!3029, !3030, !3034, !3035}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3027, file: !36, line: 73, baseType: !2879, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3027, file: !36, line: 78, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2986}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3027, file: !36, line: 83, baseType: !3031, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3027, file: !36, line: 89, baseType: !1061, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2987, file: !36, line: 118, baseType: !161, size: 64, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2987, file: !36, line: 119, baseType: !170, size: 32, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !36, line: 120, baseType: !3039, size: 128, offset: 1024)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !36, line: 120, size: 128, elements: !3040)
!3040 = !{!3041, !3047}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3039, file: !36, line: 121, baseType: !3042, size: 128)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3043, line: 6, size: 128, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3042, file: !3043, line: 7, baseType: !175, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3042, file: !3043, line: 8, baseType: !175, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3039, file: !36, line: 122, baseType: !3048)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3042, elements: !1642)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2983, file: !181, line: 162, baseType: !161, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !185, file: !181, line: 176, baseType: !818, size: 128, align: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !181, line: 179, baseType: !3052, size: 32, offset: 384)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !181, line: 179, size: 32, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3052, file: !181, line: 184, baseType: !560, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3052, file: !181, line: 192, baseType: !7, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3052, file: !181, line: 194, baseType: !7, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3052, file: !181, line: 195, baseType: !170, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !180, file: !181, line: 199, baseType: !560, size: 32, offset: 416)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !273)
!3061 = !{!3062, !3065, !3070, !0, !3072, !3108, !3110, !3112, !3114, !3116, !3118, !3120, !3122, !3124, !4757, !4768}
!3062 = !DIGlobalVariableExpression(var: !3063, expr: !DIExpression())
!3063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author255", scope: !2, file: !3, line: 1465, type: !3064, isLocal: true, isDefinition: true, align: 8)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 352, elements: !1717)
!3065 = !DIGlobalVariableExpression(var: !3066, expr: !DIExpression())
!3066 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file256", scope: !2, file: !3, line: 1466, type: !3067, isLocal: true, isDefinition: true, align: 8)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 336, elements: !3068)
!3068 = !{!3069}
!3069 = !DISubrange(count: 42)
!3070 = !DIGlobalVariableExpression(var: !3071, expr: !DIExpression())
!3071 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license257", scope: !2, file: !3, line: 1466, type: !3064, isLocal: true, isDefinition: true, align: 8)
!3072 = !DIGlobalVariableExpression(var: !3073, expr: !DIExpression())
!3073 = distinct !DIGlobalVariable(name: "intel_gtt_chipsets", scope: !2, file: !3, line: 1272, type: !3074, isLocal: true, isDefinition: true)
!3074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 6912, elements: !3106)
!3075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_gtt_driver_description", file: !3, line: 1268, size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "gmch_chip_id", scope: !3076, file: !3, line: 1269, baseType: !7, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3076, file: !3, line: 1270, baseType: !164, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "gtt_driver", scope: !3076, file: !3, line: 1271, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_gtt_driver", file: !3, line: 42, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090, !3091, !3095, !3097, !3101, !3105}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !3083, file: !3, line: 43, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "is_g33", scope: !3083, file: !3, line: 44, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "is_pineview", scope: !3083, file: !3, line: 45, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "is_ironlake", scope: !3083, file: !3, line: 46, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "has_pgtbl_enable", scope: !3083, file: !3, line: 47, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask_size", scope: !3083, file: !3, line: 48, baseType: !7, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3083, file: !3, line: 50, baseType: !3092, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!170}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3083, file: !3, line: 53, baseType: !3096, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "write_entry", scope: !3083, file: !3, line: 54, baseType: !3098, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !178, !7, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3083, file: !3, line: 58, baseType: !3102, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!370, !7}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "chipset_flush", scope: !3083, file: !3, line: 59, baseType: !3096, size: 64, offset: 320)
!3106 = !{!3107}
!3107 = !DISubrange(count: 36)
!3108 = !DIGlobalVariableExpression(var: !3109, expr: !DIExpression())
!3109 = distinct !DIGlobalVariable(name: "i81x_gtt_driver", scope: !2, file: !3, line: 1184, type: !3082, isLocal: true, isDefinition: true)
!3110 = !DIGlobalVariableExpression(var: !3111, expr: !DIExpression())
!3111 = distinct !DIGlobalVariable(name: "i8xx_gtt_driver", scope: !2, file: !3, line: 1193, type: !3082, isLocal: true, isDefinition: true)
!3112 = !DIGlobalVariableExpression(var: !3113, expr: !DIExpression())
!3113 = distinct !DIGlobalVariable(name: "i915_gtt_driver", scope: !2, file: !3, line: 1203, type: !3082, isLocal: true, isDefinition: true)
!3114 = !DIGlobalVariableExpression(var: !3115, expr: !DIExpression())
!3115 = distinct !DIGlobalVariable(name: "i965_gtt_driver", scope: !2, file: !3, line: 1234, type: !3082, isLocal: true, isDefinition: true)
!3116 = !DIGlobalVariableExpression(var: !3117, expr: !DIExpression())
!3117 = distinct !DIGlobalVariable(name: "g33_gtt_driver", scope: !2, file: !3, line: 1214, type: !3082, isLocal: true, isDefinition: true)
!3118 = !DIGlobalVariableExpression(var: !3119, expr: !DIExpression())
!3119 = distinct !DIGlobalVariable(name: "pineview_gtt_driver", scope: !2, file: !3, line: 1224, type: !3082, isLocal: true, isDefinition: true)
!3120 = !DIGlobalVariableExpression(var: !3121, expr: !DIExpression())
!3121 = distinct !DIGlobalVariable(name: "g4x_gtt_driver", scope: !2, file: !3, line: 1244, type: !3082, isLocal: true, isDefinition: true)
!3122 = !DIGlobalVariableExpression(var: !3123, expr: !DIExpression())
!3123 = distinct !DIGlobalVariable(name: "ironlake_gtt_driver", scope: !2, file: !3, line: 1253, type: !3082, isLocal: true, isDefinition: true)
!3124 = !DIGlobalVariableExpression(var: !3125, expr: !DIExpression())
!3125 = distinct !DIGlobalVariable(name: "intel_fake_agp_driver", scope: !2, file: !3, line: 1161, type: !3126, isLocal: true, isDefinition: true)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_driver", file: !141, line: 97, size: 1472, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135, !3142, !3143, !3144, !4686, !4687, !4720, !4724, !4725, !4729, !4730, !4734, !4735, !4739, !4740, !4744, !4748, !4752, !4753}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3127, file: !141, line: 98, baseType: !418, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_sizes", scope: !3127, file: !141, line: 99, baseType: !2348, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "num_aperture_sizes", scope: !3127, file: !141, line: 100, baseType: !170, size: 32, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "size_type", scope: !3127, file: !141, line: 101, baseType: !140, size: 32, offset: 160)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cant_use_aperture", scope: !3127, file: !141, line: 102, baseType: !370, size: 8, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "needs_scratch_page", scope: !3127, file: !141, line: 103, baseType: !370, size: 8, offset: 200)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !3127, file: !141, line: 104, baseType: !3136, size: 64, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3138)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_mask", file: !141, line: 53, size: 128, elements: !3139)
!3139 = !{!3140, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3138, file: !141, line: 54, baseType: !168, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3138, file: !141, line: 55, baseType: !171, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_size", scope: !3127, file: !141, line: 105, baseType: !3092, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !3127, file: !141, line: 106, baseType: !3092, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "agp_enable", scope: !3127, file: !141, line: 107, baseType: !3145, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !3148, !171}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_data", file: !141, line: 125, size: 1600, elements: !3150)
!3150 = !{!3151, !3158, !3160, !3161, !3162, !3163, !3164, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3149, file: !141, line: 126, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3154)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_version", file: !149, line: 40, size: 32, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3154, file: !149, line: 41, baseType: !1185, size: 16)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3154, file: !149, line: 42, baseType: !1185, size: 16, offset: 16)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3149, file: !141, line: 127, baseType: !3159, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3149, file: !141, line: 128, baseType: !1043, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "previous_size", scope: !3149, file: !141, line: 129, baseType: !161, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !3149, file: !141, line: 130, baseType: !161, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private_data", scope: !3149, file: !141, line: 131, baseType: !161, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3149, file: !141, line: 132, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3167, line: 309, size: 19264, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169, !3170, !4467, !4468, !4469, !4470, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4562, !4563, !4564, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4638, !4639, !4640, !4641, !4642, !4643, !4645, !4646, !4647, !4650, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3166, file: !3167, line: 310, baseType: !191, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3166, file: !3167, line: 311, baseType: !3171, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3167, line: 605, size: 8064, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179, !3180, !3195, !3196, !3197, !3221, !4447, !4448, !4451, !4452, !4453, !4454, !4455, !4459, !4460, !4462, !4463, !4464, !4465, !4466}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3172, file: !3167, line: 606, baseType: !191, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3172, file: !3167, line: 607, baseType: !3171, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3172, file: !3167, line: 608, baseType: !191, size: 128, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3172, file: !3167, line: 609, baseType: !191, size: 128, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3172, file: !3167, line: 610, baseType: !3165, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3172, file: !3167, line: 611, baseType: !191, size: 128, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3172, file: !3167, line: 613, baseType: !3181, size: 256, offset: 640)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3182, size: 256, elements: !1444)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3184, line: 20, size: 512, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3185 = !{!3186, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3183, file: !3184, line: 21, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !167, line: 158, baseType: !2346)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3183, file: !3184, line: 22, baseType: !3187, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3183, file: !3184, line: 23, baseType: !327, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3183, file: !3184, line: 24, baseType: !168, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3183, file: !3184, line: 25, baseType: !168, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3183, file: !3184, line: 26, baseType: !3182, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3183, file: !3184, line: 26, baseType: !3182, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3183, file: !3184, line: 26, baseType: !3182, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3172, file: !3167, line: 614, baseType: !191, size: 128, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3172, file: !3167, line: 615, baseType: !3183, size: 512, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3172, file: !3167, line: 617, baseType: !3198, size: 64, offset: 1536)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3167, line: 731, size: 320, elements: !3200)
!3200 = !{!3201, !3205, !3209, !3213, !3217}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3199, file: !3167, line: 732, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!170, !3171}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3199, file: !3167, line: 733, baseType: !3206, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !3171}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3199, file: !3167, line: 734, baseType: !3210, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!161, !3171, !7, !170}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3199, file: !3167, line: 735, baseType: !3214, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!170, !3171, !7, !170, !170, !1858}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3199, file: !3167, line: 736, baseType: !3218, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!170, !3171, !7, !170, !170, !171}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3172, file: !3167, line: 618, baseType: !3222, size: 64, offset: 1600)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3224, line: 230, size: 512, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3225 = !{!3226, !3227, !4370, !4371, !4372, !4439, !4443}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3223, file: !3224, line: 231, baseType: !418, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3223, file: !3224, line: 232, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !106, line: 461, size: 5568, elements: !3230)
!3230 = !{!3231, !3528, !3529, !3532, !3533, !3584, !4059, !4060, !4061, !4062, !4063, !4072, !4177, !4190, !4271, !4272, !4276, !4278, !4279, !4280, !4284, !4290, !4291, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4332, !4333, !4334, !4335, !4366, !4367, !4368, !4369}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3229, file: !106, line: 462, baseType: !3232, size: 512)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3233, line: 64, size: 512, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237, !3239, !3279, !3379, !3518, !3523, !3524, !3525, !3526, !3527}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !3233, line: 65, baseType: !327, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3232, file: !3233, line: 66, baseType: !191, size: 128, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3232, file: !3233, line: 67, baseType: !3238, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3232, file: !3233, line: 68, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3233, line: 192, size: 704, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3241, file: !3233, line: 193, baseType: !191, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3241, file: !3233, line: 194, baseType: !290, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3241, file: !3233, line: 195, baseType: !3232, size: 512, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3241, file: !3233, line: 196, baseType: !3247, size: 64, offset: 640)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3233, line: 156, size: 192, elements: !3250)
!3250 = !{!3251, !3256, !3261}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3249, file: !3233, line: 157, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!170, !3240, !3238}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3249, file: !3233, line: 158, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!327, !3240, !3238}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3249, file: !3233, line: 159, baseType: !3262, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!170, !3240, !3238, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3233, line: 148, size: 20736, elements: !3268)
!3268 = !{!3269, !3271, !3273, !3274, !3278}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3267, file: !3233, line: 149, baseType: !3270, size: 192)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 192, elements: !439)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3267, file: !3233, line: 150, baseType: !3272, size: 4096, offset: 192)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 4096, elements: !2106)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3267, file: !3233, line: 151, baseType: !170, size: 32, offset: 4288)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3267, file: !3233, line: 152, baseType: !3275, size: 16384, offset: 4320)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 16384, elements: !3276)
!3276 = !{!3277}
!3277 = !DISubrange(count: 2048)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3267, file: !3233, line: 153, baseType: !170, size: 32, offset: 20704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3232, file: !3233, line: 69, baseType: !3280, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3233, line: 138, size: 448, elements: !3282)
!3282 = !{!3283, !3287, !3306, !3308, !3341, !3369, !3373}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3281, file: !3233, line: 139, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3238}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3281, file: !3233, line: 140, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3291, line: 230, size: 128, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3292 = !{!3293, !3302}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3290, file: !3291, line: 231, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!1158, !3238, !3297, !164}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3291, line: 30, size: 128, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3298, file: !3291, line: 31, baseType: !327, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3298, file: !3291, line: 32, baseType: !205, size: 16, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3290, file: !3291, line: 232, baseType: !3303, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!1158, !3238, !3297, !327, !1161}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3281, file: !3233, line: 141, baseType: !3307, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3281, file: !3233, line: 142, baseType: !3309, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3291, line: 84, size: 320, elements: !3313)
!3313 = !{!3314, !3315, !3319, !3338, !3339}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3312, file: !3291, line: 85, baseType: !327, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3312, file: !3291, line: 86, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!205, !3238, !3297, !170}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3312, file: !3291, line: 88, baseType: !3320, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!205, !3238, !3323, !170}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3291, line: 168, size: 448, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3333, !3334}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3324, file: !3291, line: 169, baseType: !3298, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3324, file: !3291, line: 170, baseType: !1161, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3324, file: !3291, line: 171, baseType: !161, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3324, file: !3291, line: 172, baseType: !3330, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!1158, !1129, !3238, !3323, !164, !389, !1161}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3324, file: !3291, line: 174, baseType: !3330, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3324, file: !3291, line: 176, baseType: !3335, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!170, !1129, !3238, !3323, !1015}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3312, file: !3291, line: 90, baseType: !3307, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3312, file: !3291, line: 91, baseType: !3340, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3281, file: !3233, line: 143, baseType: !3342, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!3345, !3238}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3347)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !66, line: 39, size: 384, elements: !3348)
!3348 = !{!3349, !3350, !3354, !3358, !3364, !3368}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3347, file: !66, line: 40, baseType: !65, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3347, file: !66, line: 41, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!370}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3347, file: !66, line: 42, baseType: !3355, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!161}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3347, file: !66, line: 43, baseType: !3359, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!2348, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !66, line: 19, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3347, file: !66, line: 44, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!2348}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3347, file: !66, line: 45, baseType: !2627, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3281, file: !3233, line: 144, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!2348, !3238}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3281, file: !3233, line: 145, baseType: !3374, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3238, !3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3232, file: !3233, line: 70, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !404, line: 123, size: 1024, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3511, !3512, !3513, !3514, !3515}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3381, file: !404, line: 124, baseType: !560, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3381, file: !404, line: 125, baseType: !560, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3381, file: !404, line: 135, baseType: !3380, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3381, file: !404, line: 136, baseType: !327, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3381, file: !404, line: 138, baseType: !871, size: 192, align: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3381, file: !404, line: 140, baseType: !2348, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3381, file: !404, line: 141, baseType: !7, size: 32, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3381, file: !404, line: 142, baseType: !3391, size: 256, offset: 512)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3381, file: !404, line: 142, size: 256, elements: !3392)
!3392 = !{!3393, !3439, !3443}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3391, file: !404, line: 143, baseType: !3394, size: 192)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !404, line: 91, size: 192, elements: !3395)
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3394, file: !404, line: 92, baseType: !168, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3394, file: !404, line: 94, baseType: !972, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3394, file: !404, line: 100, baseType: !3399, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !404, line: 180, size: 704, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3411, !3412, !3413, !3437, !3438}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3400, file: !404, line: 182, baseType: !3380, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3400, file: !404, line: 183, baseType: !7, size: 32, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3400, file: !404, line: 186, baseType: !3405, size: 192, offset: 128)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3406, line: 19, size: 192, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3407 = !{!3408, !3409, !3410}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3405, file: !3406, line: 20, baseType: !2161, size: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3405, file: !3406, line: 21, baseType: !7, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3405, file: !3406, line: 22, baseType: !7, size: 32, offset: 160)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3400, file: !404, line: 187, baseType: !171, size: 32, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3400, file: !404, line: 188, baseType: !171, size: 32, offset: 352)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3400, file: !404, line: 189, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !404, line: 168, size: 320, elements: !3416)
!3416 = !{!3417, !3421, !3425, !3429, !3433}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3415, file: !404, line: 169, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!170, !501, !3399}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3415, file: !404, line: 171, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!170, !3380, !327, !205}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3415, file: !404, line: 173, baseType: !3426, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!170, !3380}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3415, file: !404, line: 174, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!170, !3380, !3380, !327}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3415, file: !404, line: 176, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!170, !501, !3380, !3399}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3400, file: !404, line: 192, baseType: !191, size: 128, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3400, file: !404, line: 194, baseType: !799, size: 128, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3391, file: !404, line: 144, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !404, line: 103, size: 64, elements: !3441)
!3441 = !{!3442}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3440, file: !404, line: 104, baseType: !3380, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3391, file: !404, line: 145, baseType: !3444, size: 256)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !404, line: 107, size: 256, elements: !3445)
!3445 = !{!3446, !3506, !3509, !3510}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3444, file: !404, line: 108, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !404, line: 217, size: 768, elements: !3450)
!3450 = !{!3451, !3471, !3475, !3479, !3483, !3487, !3491, !3495, !3496, !3497, !3498, !3502}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3449, file: !404, line: 222, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!170, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !404, line: 197, size: 1088, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3456, file: !404, line: 199, baseType: !3380, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3456, file: !404, line: 200, baseType: !1129, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3456, file: !404, line: 201, baseType: !501, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3456, file: !404, line: 202, baseType: !161, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3456, file: !404, line: 205, baseType: !544, size: 192, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3456, file: !404, line: 206, baseType: !544, size: 192, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3456, file: !404, line: 207, baseType: !170, size: 32, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3456, file: !404, line: 208, baseType: !191, size: 128, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3456, file: !404, line: 209, baseType: !164, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3456, file: !404, line: 211, baseType: !1161, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3456, file: !404, line: 212, baseType: !370, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3456, file: !404, line: 213, baseType: !370, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3456, file: !404, line: 214, baseType: !1043, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3449, file: !404, line: 223, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3455}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3449, file: !404, line: 236, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!170, !501, !161}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3449, file: !404, line: 238, baseType: !3480, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!161, !501, !1164}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3449, file: !404, line: 239, baseType: !3484, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!161, !501, !161, !1164}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3449, file: !404, line: 240, baseType: !3488, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !501, !161}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3449, file: !404, line: 242, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!1158, !3455, !164, !1161, !389}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3449, file: !404, line: 252, baseType: !1161, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3449, file: !404, line: 259, baseType: !370, size: 8, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3449, file: !404, line: 260, baseType: !3492, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3449, file: !404, line: 263, baseType: !3499, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!1237, !3455, !1239}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3449, file: !404, line: 266, baseType: !3503, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!170, !3455, !1015}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3444, file: !404, line: 109, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !404, line: 31, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3444, file: !404, line: 110, baseType: !389, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3444, file: !404, line: 111, baseType: !3380, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3381, file: !404, line: 148, baseType: !161, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3381, file: !404, line: 154, baseType: !175, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3381, file: !404, line: 156, baseType: !206, size: 16, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3381, file: !404, line: 157, baseType: !205, size: 16, offset: 912)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3381, file: !404, line: 158, baseType: !3516, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !404, line: 32, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3232, file: !3233, line: 71, baseType: !3519, size: 32, offset: 448)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3520, line: 19, size: 32, elements: !3521)
!3520 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3521 = !{!3522}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3519, file: !3520, line: 20, baseType: !846, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3232, file: !3233, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3232, file: !3233, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3232, file: !3233, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3232, file: !3233, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3232, file: !3233, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3229, file: !106, line: 463, baseType: !3228, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3229, file: !106, line: 465, baseType: !3530, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !106, line: 36, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3229, file: !106, line: 467, baseType: !327, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3229, file: !106, line: 468, baseType: !3534, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !106, line: 87, size: 384, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3544, !3549, !3553}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3536, file: !106, line: 88, baseType: !327, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3536, file: !106, line: 89, baseType: !3309, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3536, file: !106, line: 90, baseType: !3541, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!170, !3228, !3266}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3536, file: !106, line: 91, baseType: !3545, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!164, !3228, !3548, !3377, !3378}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3536, file: !106, line: 93, baseType: !3550, size: 64, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3228}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3536, file: !106, line: 95, baseType: !3554, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !113, line: 278, size: 1472, elements: !3557)
!3557 = !{!3558, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3556, file: !113, line: 279, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!170, !3228}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3556, file: !113, line: 280, baseType: !3550, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3556, file: !113, line: 281, baseType: !3559, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3556, file: !113, line: 282, baseType: !3559, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3556, file: !113, line: 283, baseType: !3559, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3556, file: !113, line: 284, baseType: !3559, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3556, file: !113, line: 285, baseType: !3559, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3556, file: !113, line: 286, baseType: !3559, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3556, file: !113, line: 287, baseType: !3559, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3556, file: !113, line: 288, baseType: !3559, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3556, file: !113, line: 289, baseType: !3559, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3556, file: !113, line: 290, baseType: !3559, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3556, file: !113, line: 291, baseType: !3559, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3556, file: !113, line: 292, baseType: !3559, size: 64, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3556, file: !113, line: 293, baseType: !3559, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3556, file: !113, line: 294, baseType: !3559, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3556, file: !113, line: 295, baseType: !3559, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3556, file: !113, line: 296, baseType: !3559, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3556, file: !113, line: 297, baseType: !3559, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3556, file: !113, line: 298, baseType: !3559, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3556, file: !113, line: 299, baseType: !3559, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3556, file: !113, line: 300, baseType: !3559, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3556, file: !113, line: 301, baseType: !3559, size: 64, offset: 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3229, file: !106, line: 470, baseType: !3585, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3587, line: 82, size: 1408, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !4054, !4057, !4058}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3586, file: !3587, line: 83, baseType: !327, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3586, file: !3587, line: 84, baseType: !327, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3586, file: !3587, line: 85, baseType: !3228, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3586, file: !3587, line: 86, baseType: !3309, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3586, file: !3587, line: 87, baseType: !3309, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3586, file: !3587, line: 88, baseType: !3309, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3586, file: !3587, line: 90, baseType: !3596, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!170, !3228, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !72, line: 95, size: 1152, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3621, !3634, !3635, !3636, !3637, !3638, !3646, !3647, !3648, !3649, !3650, !3651}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !72, line: 96, baseType: !327, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3600, file: !72, line: 97, baseType: !3585, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3600, file: !72, line: 99, baseType: !418, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3600, file: !72, line: 100, baseType: !327, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3600, file: !72, line: 102, baseType: !370, size: 8, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3600, file: !72, line: 103, baseType: !71, size: 32, offset: 288)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3600, file: !72, line: 105, baseType: !3609, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3612, line: 262, size: 1600, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !{!3614, !3615, !3616, !3620}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3611, file: !3612, line: 263, baseType: !2540, size: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3611, file: !3612, line: 264, baseType: !2540, size: 256, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3611, file: !3612, line: 265, baseType: !3617, size: 1024, offset: 512)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1024, elements: !3618)
!3618 = !{!3619}
!3619 = !DISubrange(count: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3611, file: !3612, line: 266, baseType: !2348, size: 64, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3600, file: !72, line: 106, baseType: !3622, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3612, line: 210, size: 256, elements: !3625)
!3625 = !{!3626, !3630, !3632, !3633}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3624, file: !3612, line: 211, baseType: !3627, size: 72)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 72, elements: !3628)
!3628 = !{!3629}
!3629 = !DISubrange(count: 9)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3624, file: !3612, line: 212, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3612, line: 14, baseType: !168)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3624, file: !3612, line: 213, baseType: !173, size: 32, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3624, file: !3612, line: 214, baseType: !173, size: 32, offset: 224)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3600, file: !72, line: 108, baseType: !3559, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3600, file: !72, line: 109, baseType: !3550, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3600, file: !72, line: 110, baseType: !3559, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3600, file: !72, line: 111, baseType: !3550, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3600, file: !72, line: 112, baseType: !3639, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!170, !3228, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !113, line: 52, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !113, line: 50, size: 32, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3643, file: !113, line: 51, baseType: !170, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3600, file: !72, line: 113, baseType: !3559, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3600, file: !72, line: 114, baseType: !3309, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3600, file: !72, line: 115, baseType: !3309, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3600, file: !72, line: 117, baseType: !3554, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3600, file: !72, line: 118, baseType: !3550, size: 64, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3600, file: !72, line: 120, baseType: !3652, size: 64, offset: 1088)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !72, line: 120, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3586, file: !3587, line: 91, baseType: !3541, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3586, file: !3587, line: 92, baseType: !3559, size: 64, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3586, file: !3587, line: 93, baseType: !3550, size: 64, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3586, file: !3587, line: 94, baseType: !3559, size: 64, offset: 640)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3586, file: !3587, line: 95, baseType: !3550, size: 64, offset: 704)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3586, file: !3587, line: 97, baseType: !3559, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3586, file: !3587, line: 98, baseType: !3559, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3586, file: !3587, line: 100, baseType: !3639, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3586, file: !3587, line: 101, baseType: !3559, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3586, file: !3587, line: 103, baseType: !3559, size: 64, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3586, file: !3587, line: 105, baseType: !3559, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3586, file: !3587, line: 107, baseType: !3554, size: 64, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3586, file: !3587, line: 109, baseType: !3667, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !78, line: 233, size: 2624, elements: !3670)
!3670 = !{!3671, !3675, !3698, !3702, !3706, !3710, !3714, !3724, !3725, !3726, !3730, !3734, !3834, !3835, !3836, !3842, !3846, !3847, !3851, !3852, !3864, !3868, !3872, !3908, !3912, !3916, !3917, !3921, !3922, !3923, !3924, !3925, !3933, !3937, !3941, !3990, !4021, !4047, !4051, !4052, !4053}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !3669, file: !78, line: 234, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!370, !77}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc", scope: !3669, file: !78, line: 237, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3679, !7}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain", file: !78, line: 82, size: 576, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685, !3690, !3691, !3697}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3680, file: !78, line: 83, baseType: !7, size: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3680, file: !78, line: 84, baseType: !3667, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !3680, file: !78, line: 85, baseType: !168, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3680, file: !78, line: 86, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_fault_handler_t", file: !78, line: 48, baseType: !3687)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!170, !3679, !3228, !168, !170, !161}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "handler_token", scope: !3680, file: !78, line: 87, baseType: !161, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !3680, file: !78, line: 88, baseType: !3692, size: 192, offset: 320)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_domain_geometry", file: !78, line: 52, size: 192, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_start", scope: !3692, file: !78, line: 53, baseType: !178, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_end", scope: !3692, file: !78, line: 54, baseType: !178, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "force_aperture", scope: !3692, file: !78, line: 55, baseType: !370, size: 8, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "iova_cookie", scope: !3680, file: !78, line: 89, baseType: !161, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free", scope: !3669, file: !78, line: 238, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3679}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dev", scope: !3669, file: !78, line: 240, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!170, !3679, !3228}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "detach_dev", scope: !3669, file: !78, line: 241, baseType: !3707, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3679, !3228}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3669, file: !78, line: 242, baseType: !3711, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!170, !3679, !168, !2346, !1161, !170, !166}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3669, file: !78, line: 244, baseType: !3715, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!1161, !3679, !168, !1161, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_iotlb_gather", file: !78, line: 179, size: 192, elements: !3720)
!3720 = !{!3721, !3722, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3719, file: !78, line: 180, baseType: !168, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3719, file: !78, line: 181, baseType: !168, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize", scope: !3719, file: !78, line: 182, baseType: !1161, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "flush_iotlb_all", scope: !3669, file: !78, line: 246, baseType: !3699, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync_map", scope: !3669, file: !78, line: 247, baseType: !3699, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "iotlb_sync", scope: !3669, file: !78, line: 248, baseType: !3727, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3679, !3718}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "iova_to_phys", scope: !3669, file: !78, line: 250, baseType: !3731, size: 64, offset: 640)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!2346, !3679, !178}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "probe_device", scope: !3669, file: !78, line: 251, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3738, !3228}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_device", file: !78, line: 314, size: 320, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3833}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3739, file: !78, line: 315, baseType: !191, size: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !78, line: 316, baseType: !3667, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3739, file: !78, line: 317, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3746, line: 17, size: 192, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3747 = !{!3748, !3749, !3832}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3745, file: !3746, line: 18, baseType: !3744, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3745, file: !3746, line: 19, baseType: !3750, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3752)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3746, line: 110, size: 1152, elements: !3753)
!3753 = !{!3754, !3758, !3762, !3768, !3774, !3778, !3782, !3787, !3791, !3792, !3796, !3800, !3804, !3815, !3816, !3817, !3818, !3828}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3752, file: !3746, line: 111, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!3744, !3744}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3752, file: !3746, line: 112, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3744}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3752, file: !3746, line: 113, baseType: !3763, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!370, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3752, file: !3746, line: 114, baseType: !3769, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!2348, !3766, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3752, file: !3746, line: 116, baseType: !3775, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!370, !3766, !327}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3752, file: !3746, line: 118, baseType: !3779, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!170, !3766, !327, !7, !161, !1161}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3752, file: !3746, line: 123, baseType: !3783, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!170, !3766, !327, !3786, !1161}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3752, file: !3746, line: 126, baseType: !3788, size: 64, offset: 448)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!327, !3766}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3752, file: !3746, line: 127, baseType: !3788, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3752, file: !3746, line: 128, baseType: !3793, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!3744, !3766}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3752, file: !3746, line: 130, baseType: !3797, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!3744, !3766, !3744}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3752, file: !3746, line: 133, baseType: !3801, size: 64, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!3744, !3766, !327}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3752, file: !3746, line: 135, baseType: !3805, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!170, !3766, !327, !327, !7, !7, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3746, line: 43, size: 640, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3809, file: !3746, line: 44, baseType: !3744, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3809, file: !3746, line: 45, baseType: !7, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3809, file: !3746, line: 46, baseType: !3814, size: 512, offset: 128)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 512, elements: !953)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3752, file: !3746, line: 140, baseType: !3797, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3752, file: !3746, line: 143, baseType: !3793, size: 64, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3752, file: !3746, line: 145, baseType: !3755, size: 64, offset: 960)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3752, file: !3746, line: 146, baseType: !3819, size: 64, offset: 1024)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!170, !3766, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3746, line: 29, size: 128, elements: !3824)
!3824 = !{!3825, !3826, !3827}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3823, file: !3746, line: 30, baseType: !7, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3823, file: !3746, line: 31, baseType: !7, size: 32, offset: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3823, file: !3746, line: 32, baseType: !3766, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3752, file: !3746, line: 148, baseType: !3829, size: 64, offset: 1088)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!170, !3766, !3228}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3745, file: !3746, line: 20, baseType: !3228, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3739, file: !78, line: 318, baseType: !3228, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "release_device", scope: !3669, file: !78, line: 252, baseType: !3550, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "probe_finalize", scope: !3669, file: !78, line: 253, baseType: !3550, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "device_group", scope: !3669, file: !78, line: 254, baseType: !3837, size: 64, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!3840, !3228}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !106, line: 45, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "domain_get_attr", scope: !3669, file: !78, line: 255, baseType: !3843, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!170, !3679, !83, !161}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "domain_set_attr", scope: !3669, file: !78, line: 257, baseType: !3843, size: 64, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_resv_regions", scope: !3669, file: !78, line: 261, baseType: !3848, size: 64, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3228, !194}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "put_resv_regions", scope: !3669, file: !78, line: 262, baseType: !3848, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "apply_resv_region", scope: !3669, file: !78, line: 263, baseType: !3853, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3228, !3679, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_resv_region", file: !78, line: 150, size: 320, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3857, file: !78, line: 151, baseType: !191, size: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3857, file: !78, line: 152, baseType: !2346, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3857, file: !78, line: 153, baseType: !1161, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !3857, file: !78, line: 154, baseType: !170, size: 32, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3857, file: !78, line: 155, baseType: !94, size: 32, offset: 288)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "domain_window_enable", scope: !3669, file: !78, line: 268, baseType: !3865, size: 64, offset: 1280)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!170, !3679, !171, !2346, !175, !170}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "domain_window_disable", scope: !3669, file: !78, line: 270, baseType: !3869, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3679, !171}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !3669, file: !78, line: 272, baseType: !3873, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!170, !3228, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !3878, line: 74, size: 640, elements: !3879)
!3878 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3879 = !{!3880, !3905, !3906}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !3877, file: !3878, line: 75, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3878, line: 51, size: 1344, elements: !3883)
!3883 = !{!3884, !3885, !3887, !3888, !3889, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3882, file: !3878, line: 52, baseType: !327, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3882, file: !3878, line: 53, baseType: !3886, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3878, line: 28, baseType: !171)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3882, file: !3878, line: 54, baseType: !327, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3882, file: !3878, line: 55, baseType: !3745, size: 192, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3882, file: !3878, line: 57, baseType: !3890, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3878, line: 31, size: 704, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3891, file: !3878, line: 32, baseType: !164, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3891, file: !3878, line: 33, baseType: !170, size: 32, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3891, file: !3878, line: 34, baseType: !161, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3891, file: !3878, line: 35, baseType: !3890, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3891, file: !3878, line: 43, baseType: !3324, size: 448, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3882, file: !3878, line: 58, baseType: !3890, size: 64, offset: 448)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3882, file: !3878, line: 59, baseType: !3881, size: 64, offset: 512)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3882, file: !3878, line: 60, baseType: !3881, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3882, file: !3878, line: 61, baseType: !3881, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3882, file: !3878, line: 63, baseType: !3232, size: 512, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3882, file: !3878, line: 65, baseType: !168, size: 64, offset: 1216)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3882, file: !3878, line: 66, baseType: !161, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !3877, file: !3878, line: 76, baseType: !170, size: 32, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3877, file: !3878, line: 77, baseType: !3907, size: 512, offset: 96)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 512, elements: !1958)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "is_attach_deferred", scope: !3669, file: !78, line: 273, baseType: !3909, size: 64, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!370, !3679, !3228}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_has_feat", scope: !3669, file: !78, line: 276, baseType: !3913, size: 64, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!370, !3228, !101}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_feat_enabled", scope: !3669, file: !78, line: 277, baseType: !3913, size: 64, offset: 1600)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_enable_feat", scope: !3669, file: !78, line: 278, baseType: !3918, size: 64, offset: 1664)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!170, !3228, !101}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disable_feat", scope: !3669, file: !78, line: 279, baseType: !3918, size: 64, offset: 1728)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "aux_attach_dev", scope: !3669, file: !78, line: 282, baseType: !3703, size: 64, offset: 1792)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "aux_detach_dev", scope: !3669, file: !78, line: 283, baseType: !3707, size: 64, offset: 1856)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "aux_get_pasid", scope: !3669, file: !78, line: 284, baseType: !3703, size: 64, offset: 1920)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sva_bind", scope: !3669, file: !78, line: 286, baseType: !3926, size: 64, offset: 1984)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3929, !3228, !1008, !161}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_sva", file: !78, line: 591, size: 64, elements: !3931)
!3931 = !{!3932}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3930, file: !78, line: 592, baseType: !3228, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sva_unbind", scope: !3669, file: !78, line: 288, baseType: !3934, size: 64, offset: 2048)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3929}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sva_get_pasid", scope: !3669, file: !78, line: 289, baseType: !3938, size: 64, offset: 2112)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!171, !3929}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "page_response", scope: !3669, file: !78, line: 291, baseType: !3942, size: 64, offset: 2176)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!170, !3228, !3945, !3981}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_event", file: !78, line: 330, size: 640, elements: !3947)
!3947 = !{!3948, !3980}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3946, file: !78, line: 331, baseType: !3949, size: 512)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault", file: !3950, line: 115, size: 512, elements: !3951)
!3950 = !DIFile(filename: "./include/uapi/linux/iommu.h", directory: "/home/lizy2001/genbc/linux")
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3949, file: !3950, line: 116, baseType: !173, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3949, file: !3950, line: 117, baseType: !173, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !3949, file: !3950, line: 118, baseType: !3955, size: 448, offset: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3949, file: !3950, line: 118, size: 448, elements: !3956)
!3956 = !{!3957, !3966, !3976}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3955, file: !3950, line: 119, baseType: !3958, size: 256)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_unrecoverable", file: !3950, line: 69, size: 256, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !3958, file: !3950, line: 70, baseType: !173, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3958, file: !3950, line: 74, baseType: !173, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !3958, file: !3950, line: 75, baseType: !173, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3958, file: !3950, line: 76, baseType: !173, size: 32, offset: 96)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3958, file: !3950, line: 77, baseType: !176, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_addr", scope: !3958, file: !3950, line: 78, baseType: !176, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "prm", scope: !3955, file: !3950, line: 120, baseType: !3967, size: 320)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_page_request", file: !3950, line: 94, size: 320, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3967, file: !3950, line: 99, baseType: !173, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !3967, file: !3950, line: 100, baseType: !173, size: 32, offset: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !3967, file: !3950, line: 101, baseType: !173, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3967, file: !3950, line: 102, baseType: !173, size: 32, offset: 96)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3967, file: !3950, line: 103, baseType: !176, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !3967, file: !3950, line: 104, baseType: !3975, size: 128, offset: 192)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !1484)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3955, file: !3950, line: 121, baseType: !3977, size: 448)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 448, elements: !3978)
!3978 = !{!3979}
!3979 = !DISubrange(count: 56)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3946, file: !78, line: 332, baseType: !191, size: 128, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_page_response", file: !3950, line: 150, size: 192, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !3982, file: !3950, line: 151, baseType: !173, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3982, file: !3950, line: 153, baseType: !173, size: 32, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3982, file: !3950, line: 155, baseType: !173, size: 32, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !3982, file: !3950, line: 156, baseType: !173, size: 32, offset: 96)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "grpid", scope: !3982, file: !3950, line: 157, baseType: !173, size: 32, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3982, file: !3950, line: 158, baseType: !173, size: 32, offset: 160)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cache_invalidate", scope: !3669, file: !78, line: 294, baseType: !3991, size: 64, offset: 2240)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!170, !3679, !3228, !3994}
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_cache_invalidate_info", file: !3950, line: 255, size: 448, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4003}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !3995, file: !3950, line: 256, baseType: !173, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3995, file: !3950, line: 258, baseType: !173, size: 32, offset: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3995, file: !3950, line: 264, baseType: !983, size: 8, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !3995, file: !3950, line: 265, baseType: !983, size: 8, offset: 72)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3995, file: !3950, line: 266, baseType: !4002, size: 48, offset: 80)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 48, elements: !1544)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "granu", scope: !3995, file: !3950, line: 270, baseType: !4004, size: 320, offset: 128)
!4004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3950, line: 267, size: 320, elements: !4005)
!4005 = !{!4006, !4012}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_info", scope: !4004, file: !3950, line: 268, baseType: !4007, size: 128)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_inv_pasid_info", file: !3950, line: 216, size: 128, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4007, file: !3950, line: 219, baseType: !173, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "archid", scope: !4007, file: !3950, line: 220, baseType: !173, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4007, file: !3950, line: 221, baseType: !176, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "addr_info", scope: !4004, file: !3950, line: 269, baseType: !4013, size: 320)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_inv_addr_info", file: !3950, line: 189, size: 320, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4013, file: !3950, line: 193, baseType: !173, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "archid", scope: !4013, file: !3950, line: 194, baseType: !173, size: 32, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !4013, file: !3950, line: 195, baseType: !176, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4013, file: !3950, line: 196, baseType: !176, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "granule_size", scope: !4013, file: !3950, line: 197, baseType: !176, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "nb_granules", scope: !4013, file: !3950, line: 198, baseType: !176, size: 64, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "sva_bind_gpasid", scope: !3669, file: !78, line: 296, baseType: !4022, size: 64, offset: 2304)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!170, !3679, !3228, !4025}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_gpasid_bind_data", file: !3950, line: 321, size: 576, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4038}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "argsz", scope: !4026, file: !3950, line: 322, baseType: !173, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4026, file: !3950, line: 324, baseType: !173, size: 32, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4026, file: !3950, line: 327, baseType: !173, size: 32, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "addr_width", scope: !4026, file: !3950, line: 328, baseType: !173, size: 32, offset: 96)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !3950, line: 330, baseType: !176, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "gpgd", scope: !4026, file: !3950, line: 331, baseType: !176, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "hpasid", scope: !4026, file: !3950, line: 332, baseType: !176, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "gpasid", scope: !4026, file: !3950, line: 333, baseType: !176, size: 64, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4026, file: !3950, line: 334, baseType: !4037, size: 64, offset: 384)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 64, elements: !953)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4026, file: !3950, line: 338, baseType: !4039, size: 128, offset: 448)
!4039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4026, file: !3950, line: 336, size: 128, elements: !4040)
!4040 = !{!4041}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "vtd", scope: !4039, file: !3950, line: 337, baseType: !4042, size: 128)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_gpasid_bind_data_vtd", file: !3950, line: 284, size: 128, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4042, file: !3950, line: 292, baseType: !176, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "pat", scope: !4042, file: !3950, line: 293, baseType: !173, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "emt", scope: !4042, file: !3950, line: 294, baseType: !173, size: 32, offset: 96)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "sva_unbind_gpasid", scope: !3669, file: !78, line: 299, baseType: !4048, size: 64, offset: 2368)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!170, !3228, !171}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "def_domain_type", scope: !3669, file: !78, line: 301, baseType: !3559, size: 64, offset: 2432)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pgsize_bitmap", scope: !3669, file: !78, line: 303, baseType: !168, size: 64, offset: 2496)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3669, file: !78, line: 304, baseType: !418, size: 64, offset: 2560)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3586, file: !3587, line: 111, baseType: !4055, size: 64, offset: 1280)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3587, line: 111, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3586, file: !3587, line: 112, baseType: !433, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3586, file: !3587, line: 114, baseType: !370, size: 8, offset: 1344)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3229, file: !106, line: 471, baseType: !3599, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3229, file: !106, line: 473, baseType: !161, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3229, file: !106, line: 475, baseType: !161, size: 64, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3229, file: !106, line: 480, baseType: !544, size: 192, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3229, file: !106, line: 484, baseType: !4064, size: 576, offset: 1216)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !106, line: 361, size: 576, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4064, file: !106, line: 362, baseType: !191, size: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4064, file: !106, line: 363, baseType: !191, size: 128, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4064, file: !106, line: 364, baseType: !191, size: 128, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4064, file: !106, line: 365, baseType: !191, size: 128, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4064, file: !106, line: 366, baseType: !370, size: 8, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4064, file: !106, line: 367, baseType: !105, size: 32, offset: 544)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3229, file: !106, line: 485, baseType: !4073, size: 2304, offset: 1792)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !113, line: 565, size: 2304, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4170, !4174}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4073, file: !113, line: 566, baseType: !3642, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4073, file: !113, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4073, file: !113, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4073, file: !113, line: 569, baseType: !370, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4073, file: !113, line: 570, baseType: !370, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4073, file: !113, line: 571, baseType: !370, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4073, file: !113, line: 572, baseType: !370, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4073, file: !113, line: 573, baseType: !370, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4073, file: !113, line: 574, baseType: !370, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4073, file: !113, line: 575, baseType: !370, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4073, file: !113, line: 576, baseType: !370, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4073, file: !113, line: 577, baseType: !171, size: 32, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4073, file: !113, line: 578, baseType: !290, offset: 96)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4073, file: !113, line: 580, baseType: !191, size: 128, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4073, file: !113, line: 581, baseType: !1780, size: 192, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4073, file: !113, line: 582, baseType: !4091, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4093, line: 43, size: 1472, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4102, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4092, file: !4093, line: 44, baseType: !327, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4092, file: !4093, line: 45, baseType: !170, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4092, file: !4093, line: 46, baseType: !191, size: 128, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4092, file: !4093, line: 47, baseType: !290, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4092, file: !4093, line: 48, baseType: !4100, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !113, line: 533, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4092, file: !4093, line: 49, baseType: !4103, size: 320, offset: 320)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !4104, line: 11, size: 320, elements: !4105)
!4104 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!4105 = !{!4106, !4107, !4108, !4113}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4103, file: !4104, line: 16, baseType: !427, size: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4103, file: !4104, line: 17, baseType: !168, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4103, file: !4104, line: 18, baseType: !4109, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4103, file: !4104, line: 19, baseType: !171, size: 32, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4092, file: !4093, line: 50, baseType: !168, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4092, file: !4093, line: 51, baseType: !923, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4092, file: !4093, line: 52, baseType: !923, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4092, file: !4093, line: 53, baseType: !923, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4092, file: !4093, line: 54, baseType: !923, size: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4092, file: !4093, line: 55, baseType: !923, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4092, file: !4093, line: 56, baseType: !168, size: 64, offset: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4092, file: !4093, line: 57, baseType: !168, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4092, file: !4093, line: 58, baseType: !168, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4092, file: !4093, line: 59, baseType: !168, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4092, file: !4093, line: 60, baseType: !168, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4092, file: !4093, line: 61, baseType: !3228, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4092, file: !4093, line: 62, baseType: !370, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4092, file: !4093, line: 63, baseType: !370, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4073, file: !113, line: 583, baseType: !370, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4073, file: !113, line: 584, baseType: !370, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4073, file: !113, line: 585, baseType: !370, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4073, file: !113, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4073, file: !113, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4073, file: !113, line: 592, baseType: !915, size: 512, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4073, file: !113, line: 593, baseType: !175, size: 64, offset: 1088)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4073, file: !113, line: 594, baseType: !1805, size: 256, offset: 1152)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4073, file: !113, line: 595, baseType: !799, size: 128, offset: 1408)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4073, file: !113, line: 596, baseType: !4100, size: 64, offset: 1536)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4073, file: !113, line: 597, baseType: !560, size: 32, offset: 1600)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4073, file: !113, line: 598, baseType: !560, size: 32, offset: 1632)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4073, file: !113, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4073, file: !113, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4073, file: !113, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4073, file: !113, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4073, file: !113, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4073, file: !113, line: 604, baseType: !370, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4073, file: !113, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4073, file: !113, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4073, file: !113, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4073, file: !113, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4073, file: !113, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4073, file: !113, line: 610, baseType: !7, size: 32, offset: 1696)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4073, file: !113, line: 611, baseType: !112, size: 32, offset: 1728)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4073, file: !113, line: 612, baseType: !120, size: 32, offset: 1760)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4073, file: !113, line: 613, baseType: !170, size: 32, offset: 1792)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4073, file: !113, line: 614, baseType: !170, size: 32, offset: 1824)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4073, file: !113, line: 615, baseType: !175, size: 64, offset: 1856)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4073, file: !113, line: 616, baseType: !175, size: 64, offset: 1920)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4073, file: !113, line: 617, baseType: !175, size: 64, offset: 1984)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4073, file: !113, line: 618, baseType: !175, size: 64, offset: 2048)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4073, file: !113, line: 620, baseType: !4161, size: 64, offset: 2112)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !113, line: 536, size: 256, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4162, file: !113, line: 537, baseType: !290)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4162, file: !113, line: 538, baseType: !7, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4162, file: !113, line: 540, baseType: !191, size: 128, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4162, file: !113, line: 543, baseType: !4168, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !113, line: 534, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4073, file: !113, line: 621, baseType: !4171, size: 64, offset: 2176)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !3228, !1500}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4073, file: !113, line: 622, baseType: !4175, size: 64, offset: 2240)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !113, line: 622, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3229, file: !106, line: 486, baseType: !4178, size: 64, offset: 4096)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !113, line: 642, size: 1792, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4187, !4188, !4189}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4179, file: !113, line: 643, baseType: !3556, size: 1472)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4179, file: !113, line: 644, baseType: !3559, size: 64, offset: 1472)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4179, file: !113, line: 645, baseType: !4184, size: 64, offset: 1536)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !3228, !370}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4179, file: !113, line: 646, baseType: !3559, size: 64, offset: 1600)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4179, file: !113, line: 647, baseType: !3550, size: 64, offset: 1664)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4179, file: !113, line: 648, baseType: !3550, size: 64, offset: 1728)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3229, file: !106, line: 493, baseType: !4191, size: 64, offset: 4160)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !127, line: 162, size: 1088, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4255, !4256, !4257, !4258, !4259, !4260, !4263, !4264, !4265, !4266, !4267, !4268, !4269}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4192, file: !127, line: 163, baseType: !191, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4192, file: !127, line: 164, baseType: !327, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4192, file: !127, line: 165, baseType: !4197, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !127, line: 105, size: 640, elements: !4200)
!4200 = !{!4201, !4205, !4216, !4221, !4225, !4232, !4236, !4240, !4247, !4251}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4199, file: !127, line: 106, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!170, !4191, !3881, !126}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4199, file: !127, line: 108, baseType: !4206, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!170, !4191, !4209, !126}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !127, line: 63, size: 640, elements: !4211)
!4211 = !{!4212, !4213, !4214}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4210, file: !127, line: 64, baseType: !3744, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4210, file: !127, line: 65, baseType: !170, size: 32, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4210, file: !127, line: 66, baseType: !4215, size: 512, offset: 96)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 512, elements: !1958)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4199, file: !127, line: 110, baseType: !4217, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!170, !4191, !7, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !167, line: 164, baseType: !168)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4199, file: !127, line: 111, baseType: !4222, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !4191, !7}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4199, file: !127, line: 112, baseType: !4226, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!170, !4191, !3881, !4229, !7, !4231, !827}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4199, file: !127, line: 117, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!170, !4191, !7, !7, !161}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4199, file: !127, line: 119, baseType: !4237, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{null, !4191, !7, !7}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4199, file: !127, line: 121, baseType: !4241, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!170, !4191, !4244, !370}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4246, line: 11, flags: DIFlagFwdDecl)
!4246 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4199, file: !127, line: 122, baseType: !4248, size: 64, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4191, !4244}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4199, file: !127, line: 123, baseType: !4252, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!170, !4191, !4209, !4231, !827}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4192, file: !127, line: 166, baseType: !161, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4192, file: !127, line: 167, baseType: !7, size: 32, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4192, file: !127, line: 168, baseType: !7, size: 32, offset: 352)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4192, file: !127, line: 171, baseType: !3744, size: 64, offset: 384)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4192, file: !127, line: 172, baseType: !126, size: 32, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4192, file: !127, line: 173, baseType: !4261, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !127, line: 134, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4192, file: !127, line: 175, baseType: !4191, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4192, file: !127, line: 182, baseType: !4220, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4192, file: !127, line: 183, baseType: !7, size: 32, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4192, file: !127, line: 184, baseType: !7, size: 32, offset: 736)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4192, file: !127, line: 185, baseType: !2161, size: 128, offset: 768)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4192, file: !127, line: 186, baseType: !544, size: 192, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4192, file: !127, line: 187, baseType: !4270, offset: 1088)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1819)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3229, file: !106, line: 499, baseType: !191, size: 128, offset: 4224)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3229, file: !106, line: 502, baseType: !4273, size: 64, offset: 4352)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !106, line: 502, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3229, file: !106, line: 504, baseType: !4277, size: 64, offset: 4416)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3229, file: !106, line: 505, baseType: !175, size: 64, offset: 4480)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3229, file: !106, line: 510, baseType: !175, size: 64, offset: 4544)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3229, file: !106, line: 511, baseType: !4281, size: 64, offset: 4608)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4283 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !106, line: 511, flags: DIFlagFwdDecl)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3229, file: !106, line: 513, baseType: !4285, size: 64, offset: 4672)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !106, line: 288, size: 128, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4286, file: !106, line: 293, baseType: !7, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4286, file: !106, line: 294, baseType: !168, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3229, file: !106, line: 515, baseType: !191, size: 128, offset: 4736)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3229, file: !106, line: 526, baseType: !4292, offset: 4864)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4293, line: 5, elements: !304)
!4293 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3229, file: !106, line: 528, baseType: !3881, size: 64, offset: 4864)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3229, file: !106, line: 529, baseType: !3744, size: 64, offset: 4928)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3229, file: !106, line: 534, baseType: !384, size: 32, offset: 4992)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3229, file: !106, line: 535, baseType: !171, size: 32, offset: 5024)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3229, file: !106, line: 537, baseType: !290, offset: 5056)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3229, file: !106, line: 538, baseType: !191, size: 128, offset: 5056)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3229, file: !106, line: 540, baseType: !4301, size: 64, offset: 5184)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4303, line: 54, size: 960, elements: !4304)
!4303 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4315, !4319, !4320, !4321, !4322, !4326, !4330, !4331}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4302, file: !4303, line: 55, baseType: !327, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4302, file: !4303, line: 56, baseType: !418, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4302, file: !4303, line: 58, baseType: !3309, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4302, file: !4303, line: 59, baseType: !3309, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4302, file: !4303, line: 60, baseType: !3238, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4302, file: !4303, line: 62, baseType: !3541, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4302, file: !4303, line: 63, baseType: !4312, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!164, !3228, !3548}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4302, file: !4303, line: 65, baseType: !4316, size: 64, offset: 448)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{null, !4301}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4302, file: !4303, line: 66, baseType: !3550, size: 64, offset: 512)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4302, file: !4303, line: 68, baseType: !3559, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4302, file: !4303, line: 70, baseType: !3345, size: 64, offset: 640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4302, file: !4303, line: 71, baseType: !4323, size: 64, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!2348, !3228}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4302, file: !4303, line: 73, baseType: !4327, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{null, !3228, !3377, !3378}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4302, file: !4303, line: 75, baseType: !3554, size: 64, offset: 832)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4302, file: !4303, line: 77, baseType: !4055, size: 64, offset: 896)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3229, file: !106, line: 541, baseType: !3309, size: 64, offset: 5248)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3229, file: !106, line: 543, baseType: !3550, size: 64, offset: 5312)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3229, file: !106, line: 544, baseType: !3840, size: 64, offset: 5376)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3229, file: !106, line: 545, baseType: !4336, size: 64, offset: 5440)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !78, line: 360, size: 448, elements: !4338)
!4338 = !{!4339, !4340, !4353, !4364, !4365}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4337, file: !78, line: 361, baseType: !544, size: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fault_param", scope: !4337, file: !78, line: 362, baseType: !4341, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fault_param", file: !78, line: 342, size: 448, elements: !4343)
!4343 = !{!4344, !4350, !4351, !4352}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4342, file: !78, line: 343, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "iommu_dev_fault_handler_t", file: !78, line: 50, baseType: !4346)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!170, !4349, !161}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4342, file: !78, line: 344, baseType: !161, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "faults", scope: !4342, file: !78, line: 345, baseType: !191, size: 128, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4342, file: !78, line: 346, baseType: !544, size: 192, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "fwspec", scope: !4337, file: !78, line: 363, baseType: !4354, size: 64, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_fwspec", file: !78, line: 576, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4355, file: !78, line: 577, baseType: !3667, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_fwnode", scope: !4355, file: !78, line: 578, baseType: !3744, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4355, file: !78, line: 579, baseType: !171, size: 32, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "num_pasid_bits", scope: !4355, file: !78, line: 580, baseType: !171, size: 32, offset: 160)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "num_ids", scope: !4355, file: !78, line: 581, baseType: !7, size: 32, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4355, file: !78, line: 582, baseType: !4363, offset: 224)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !1819)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_dev", scope: !4337, file: !78, line: 364, baseType: !3738, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4337, file: !78, line: 365, baseType: !161, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3229, file: !106, line: 547, baseType: !370, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3229, file: !106, line: 548, baseType: !370, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3229, file: !106, line: 549, baseType: !370, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3229, file: !106, line: 550, baseType: !370, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3223, file: !3224, line: 233, baseType: !3881, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3223, file: !3224, line: 234, baseType: !191, size: 128, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "setup_irq", scope: !3223, file: !3224, line: 236, baseType: !4373, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!170, !3222, !3165, !4376}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3224, line: 85, size: 768, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4389, !4396, !4400, !4401}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4377, file: !3224, line: 87, baseType: !191, size: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4377, file: !3224, line: 88, baseType: !7, size: 32, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !4377, file: !3224, line: 89, baseType: !7, size: 32, offset: 160)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4377, file: !3224, line: 90, baseType: !3228, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4377, file: !3224, line: 91, baseType: !4384, size: 96, offset: 256)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3224, line: 8, size: 96, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !4384, file: !3224, line: 9, baseType: !171, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !4384, file: !3224, line: 10, baseType: !171, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4384, file: !3224, line: 11, baseType: !171, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4377, file: !3224, line: 92, baseType: !4390, size: 64, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !4392, line: 308, size: 128, elements: !4393)
!4392 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4393 = !{!4394, !4395}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4391, file: !4392, line: 309, baseType: !997, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4391, file: !4392, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !4377, file: !3224, line: 97, baseType: !4397, size: 64, offset: 448)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !4376, !161}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !4377, file: !3224, line: 98, baseType: !161, size: 64, offset: 512)
!4401 = !DIDerivedType(tag: DW_TAG_member, scope: !4377, file: !3224, line: 100, baseType: !4402, size: 192, offset: 576)
!4402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4377, file: !3224, line: 100, size: 192, elements: !4403)
!4403 = !{!4404, !4424, !4431, !4435}
!4404 = !DIDerivedType(tag: DW_TAG_member, scope: !4402, file: !3224, line: 102, baseType: !4405, size: 192)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4402, file: !3224, line: 102, size: 192, elements: !4406)
!4406 = !{!4407, !4408, !4419}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !4405, file: !3224, line: 103, baseType: !171, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !4405, file: !3224, line: 113, baseType: !4409, size: 64, offset: 32)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4405, file: !3224, line: 104, size: 64, elements: !4410)
!4410 = !{!4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !4409, file: !3224, line: 105, baseType: !982, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !4409, file: !3224, line: 106, baseType: !982, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !4409, file: !3224, line: 107, baseType: !982, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !4409, file: !3224, line: 108, baseType: !982, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !4409, file: !3224, line: 109, baseType: !982, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !4409, file: !3224, line: 110, baseType: !982, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !4409, file: !3224, line: 111, baseType: !1185, size: 16, offset: 16)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !4409, file: !3224, line: 112, baseType: !7, size: 32, offset: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, scope: !4405, file: !3224, line: 114, baseType: !4420, size: 64, offset: 128)
!4420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4405, file: !3224, line: 114, size: 64, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !4420, file: !3224, line: 115, baseType: !982, size: 8)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !4420, file: !3224, line: 116, baseType: !161, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !4402, file: !3224, line: 127, baseType: !4425, size: 128)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3224, line: 37, size: 128, elements: !4426)
!4426 = !{!4427, !4430}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !4425, file: !3224, line: 38, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3224, line: 19, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4425, file: !3224, line: 39, baseType: !1185, size: 16, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !4402, file: !3224, line: 128, baseType: !4432, size: 16)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3224, line: 46, size: 16, elements: !4433)
!4433 = !{!4434}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4432, file: !3224, line: 47, baseType: !1185, size: 16)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !4402, file: !3224, line: 129, baseType: !4436, size: 16)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3224, line: 54, size: 16, elements: !4437)
!4437 = !{!4438}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !4436, file: !3224, line: 55, baseType: !1185, size: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "setup_irqs", scope: !3223, file: !3224, line: 238, baseType: !4440, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!170, !3222, !3165, !170, !170}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "teardown_irq", scope: !3223, file: !3224, line: 240, baseType: !4444, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !3222, !7}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3172, file: !3167, line: 619, baseType: !161, size: 64, offset: 1664)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3172, file: !3167, line: 620, baseType: !4449, size: 64, offset: 1728)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4392, line: 123, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3172, file: !3167, line: 622, baseType: !273, size: 8, offset: 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3172, file: !3167, line: 623, baseType: !273, size: 8, offset: 1800)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3172, file: !3167, line: 624, baseType: !273, size: 8, offset: 1808)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3172, file: !3167, line: 625, baseType: !273, size: 8, offset: 1816)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3172, file: !3167, line: 630, baseType: !4456, size: 384, offset: 1824)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !4457)
!4457 = !{!4458}
!4458 = !DISubrange(count: 48)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3172, file: !3167, line: 632, baseType: !206, size: 16, offset: 2208)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3172, file: !3167, line: 633, baseType: !4461, size: 16, offset: 2224)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3167, line: 237, baseType: !206)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3172, file: !3167, line: 634, baseType: !3228, size: 64, offset: 2240)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3172, file: !3167, line: 635, baseType: !3229, size: 5568, offset: 2304)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3172, file: !3167, line: 636, baseType: !3323, size: 64, offset: 7872)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3172, file: !3167, line: 637, baseType: !3323, size: 64, offset: 7936)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3172, file: !3167, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3166, file: !3167, line: 312, baseType: !3171, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3166, file: !3167, line: 314, baseType: !161, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3166, file: !3167, line: 315, baseType: !4449, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3166, file: !3167, line: 316, baseType: !4471, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3167, line: 69, size: 832, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4479, !4480}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4472, file: !3167, line: 70, baseType: !3171, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4472, file: !3167, line: 71, baseType: !191, size: 128, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4472, file: !3167, line: 72, baseType: !4477, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3167, line: 72, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4472, file: !3167, line: 73, baseType: !273, size: 8, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4472, file: !3167, line: 74, baseType: !3232, size: 512, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3166, file: !3167, line: 318, baseType: !7, size: 32, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3166, file: !3167, line: 319, baseType: !206, size: 16, offset: 480)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3166, file: !3167, line: 320, baseType: !206, size: 16, offset: 496)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3166, file: !3167, line: 321, baseType: !206, size: 16, offset: 512)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3166, file: !3167, line: 322, baseType: !206, size: 16, offset: 528)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3166, file: !3167, line: 323, baseType: !7, size: 32, offset: 544)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3166, file: !3167, line: 324, baseType: !982, size: 8, offset: 576)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3166, file: !3167, line: 325, baseType: !982, size: 8, offset: 584)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3166, file: !3167, line: 330, baseType: !982, size: 8, offset: 592)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3166, file: !3167, line: 331, baseType: !982, size: 8, offset: 600)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3166, file: !3167, line: 332, baseType: !982, size: 8, offset: 608)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3166, file: !3167, line: 333, baseType: !982, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3166, file: !3167, line: 334, baseType: !982, size: 8, offset: 624)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3166, file: !3167, line: 335, baseType: !982, size: 8, offset: 632)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3166, file: !3167, line: 336, baseType: !1185, size: 16, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3166, file: !3167, line: 337, baseType: !4231, size: 64, offset: 704)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3166, file: !3167, line: 339, baseType: !4498, size: 64, offset: 768)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3167, line: 858, size: 2048, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4515, !4519, !4523, !4527, !4531, !4532, !4536, !4555, !4556, !4557}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4499, file: !3167, line: 859, baseType: !191, size: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4499, file: !3167, line: 860, baseType: !327, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4499, file: !3167, line: 861, baseType: !4504, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3612, line: 38, size: 256, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513, !4514}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4506, file: !3612, line: 39, baseType: !173, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4506, file: !3612, line: 39, baseType: !173, size: 32, offset: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4506, file: !3612, line: 40, baseType: !173, size: 32, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4506, file: !3612, line: 40, baseType: !173, size: 32, offset: 96)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4506, file: !3612, line: 41, baseType: !173, size: 32, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4506, file: !3612, line: 41, baseType: !173, size: 32, offset: 160)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4506, file: !3612, line: 42, baseType: !3631, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4499, file: !3167, line: 862, baseType: !4516, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!170, !3165, !4504}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4499, file: !3167, line: 863, baseType: !4520, size: 64, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !3165}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4499, file: !3167, line: 864, baseType: !4524, size: 64, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!170, !3165, !3642}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4499, file: !3167, line: 865, baseType: !4528, size: 64, offset: 448)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!170, !3165}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4499, file: !3167, line: 866, baseType: !4520, size: 64, offset: 512)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4499, file: !3167, line: 867, baseType: !4533, size: 64, offset: 576)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!170, !3165, !170}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4499, file: !3167, line: 868, baseType: !4537, size: 64, offset: 640)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4539)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3167, line: 795, size: 384, elements: !4540)
!4540 = !{!4541, !4547, !4551, !4552, !4553, !4554}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4539, file: !3167, line: 797, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!4545, !3165, !4546}
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3167, line: 772, baseType: !7)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3167, line: 180, baseType: !7)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4539, file: !3167, line: 801, baseType: !4548, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!4545, !3165}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4539, file: !3167, line: 804, baseType: !4548, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4539, file: !3167, line: 807, baseType: !4520, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4539, file: !3167, line: 808, baseType: !4520, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4539, file: !3167, line: 811, baseType: !4520, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4499, file: !3167, line: 869, baseType: !3309, size: 64, offset: 704)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4499, file: !3167, line: 870, baseType: !3600, size: 1152, offset: 768)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4499, file: !3167, line: 871, baseType: !4558, size: 128, offset: 1920)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3167, line: 759, size: 128, elements: !4559)
!4559 = !{!4560, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4558, file: !3167, line: 760, baseType: !290)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4558, file: !3167, line: 761, baseType: !191, size: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3166, file: !3167, line: 340, baseType: !175, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3166, file: !3167, line: 346, baseType: !4286, size: 128, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3166, file: !3167, line: 348, baseType: !4565, size: 32, offset: 1024)
!4565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3167, line: 155, baseType: !170)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3166, file: !3167, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3166, file: !3167, line: 352, baseType: !982, size: 8, offset: 1064)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3166, file: !3167, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3166, file: !3167, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3166, file: !3167, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3166, file: !3167, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3166, file: !3167, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3166, file: !3167, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3166, file: !3167, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3166, file: !3167, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3166, file: !3167, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3166, file: !3167, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3166, file: !3167, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3166, file: !3167, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3166, file: !3167, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3166, file: !3167, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3166, file: !3167, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3166, file: !3167, line: 376, baseType: !7, size: 32, offset: 1120)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3166, file: !3167, line: 377, baseType: !7, size: 32, offset: 1152)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3166, file: !3167, line: 380, baseType: !4586, size: 64, offset: 1216)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3167, line: 303, flags: DIFlagFwdDecl)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3166, file: !3167, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3166, file: !3167, line: 383, baseType: !170, size: 32, offset: 1312)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3166, file: !3167, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3166, file: !3167, line: 387, baseType: !4546, size: 32, offset: 1376)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3166, file: !3167, line: 388, baseType: !3229, size: 5568, offset: 1408)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3166, file: !3167, line: 390, baseType: !170, size: 32, offset: 6976)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3166, file: !3167, line: 396, baseType: !7, size: 32, offset: 7008)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3166, file: !3167, line: 397, baseType: !4596, size: 8704, offset: 7040)
!4596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3183, size: 8704, elements: !4597)
!4597 = !{!4598}
!4598 = !DISubrange(count: 17)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3166, file: !3167, line: 399, baseType: !370, size: 8, offset: 15744)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3166, file: !3167, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3166, file: !3167, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3166, file: !3167, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3166, file: !3167, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3166, file: !3167, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3166, file: !3167, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3166, file: !3167, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3166, file: !3167, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3166, file: !3167, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3166, file: !3167, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3166, file: !3167, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3166, file: !3167, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3166, file: !3167, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3166, file: !3167, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3166, file: !3167, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3166, file: !3167, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3166, file: !3167, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3166, file: !3167, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3166, file: !3167, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3166, file: !3167, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3166, file: !3167, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3166, file: !3167, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3166, file: !3167, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3166, file: !3167, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3166, file: !3167, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3166, file: !3167, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3166, file: !3167, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3166, file: !3167, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3166, file: !3167, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3166, file: !3167, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3166, file: !3167, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3166, file: !3167, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3166, file: !3167, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3166, file: !3167, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3166, file: !3167, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3166, file: !3167, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3166, file: !3167, line: 450, baseType: !4637, size: 16, offset: 15792)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3167, line: 206, baseType: !206)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3166, file: !3167, line: 451, baseType: !560, size: 32, offset: 15808)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3166, file: !3167, line: 453, baseType: !4215, size: 512, offset: 15840)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3166, file: !3167, line: 454, baseType: !423, size: 64, offset: 16384)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3166, file: !3167, line: 455, baseType: !3323, size: 64, offset: 16448)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3166, file: !3167, line: 456, baseType: !170, size: 32, offset: 16512)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3166, file: !3167, line: 457, baseType: !4644, size: 1088, offset: 16576)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3323, size: 1088, elements: !4597)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3166, file: !3167, line: 458, baseType: !4644, size: 1088, offset: 17664)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3166, file: !3167, line: 469, baseType: !3309, size: 64, offset: 18752)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3166, file: !3167, line: 471, baseType: !4648, size: 64, offset: 18816)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3167, line: 304, flags: DIFlagFwdDecl)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !3167, line: 478, baseType: !4651, size: 64, offset: 18880)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3166, file: !3167, line: 478, size: 64, elements: !4652)
!4652 = !{!4653, !4656}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4651, file: !3167, line: 479, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3167, line: 305, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4651, file: !3167, line: 480, baseType: !3165, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3166, file: !3167, line: 482, baseType: !1185, size: 16, offset: 18944)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3166, file: !3167, line: 483, baseType: !982, size: 8, offset: 18960)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3166, file: !3167, line: 497, baseType: !1185, size: 16, offset: 18976)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3166, file: !3167, line: 498, baseType: !2346, size: 64, offset: 19008)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3166, file: !3167, line: 499, baseType: !1161, size: 64, offset: 19072)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3166, file: !3167, line: 500, baseType: !164, size: 64, offset: 19136)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3166, file: !3167, line: 502, baseType: !168, size: 64, offset: 19200)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table", scope: !3149, file: !141, line: 133, baseType: !1858, size: 64, offset: 448)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table_real", scope: !3149, file: !141, line: 134, baseType: !1858, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page", scope: !3149, file: !141, line: 135, baseType: !168, size: 64, offset: 576)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_page", scope: !3149, file: !141, line: 136, baseType: !179, size: 64, offset: 640)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_dma", scope: !3149, file: !141, line: 137, baseType: !178, size: 64, offset: 704)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "gart_bus_addr", scope: !3149, file: !141, line: 138, baseType: !168, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_bus_addr", scope: !3149, file: !141, line: 139, baseType: !168, size: 64, offset: 832)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3149, file: !141, line: 140, baseType: !171, size: 32, offset: 896)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3149, file: !141, line: 141, baseType: !148, size: 32, offset: 928)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "key_list", scope: !3149, file: !141, line: 142, baseType: !4231, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "current_memory_agp", scope: !3149, file: !141, line: 143, baseType: !560, size: 32, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "agp_in_use", scope: !3149, file: !141, line: 144, baseType: !560, size: 32, offset: 1056)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_agp", scope: !3149, file: !141, line: 145, baseType: !170, size: 32, offset: 1088)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_size_idx", scope: !3149, file: !141, line: 146, baseType: !170, size: 32, offset: 1120)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "capndx", scope: !3149, file: !141, line: 147, baseType: !170, size: 32, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3149, file: !141, line: 148, baseType: !170, size: 32, offset: 1184)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !3149, file: !141, line: 149, baseType: !165, size: 8, offset: 1216)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !3149, file: !141, line: 150, baseType: !165, size: 8, offset: 1224)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3149, file: !141, line: 151, baseType: !191, size: 128, offset: 1280)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "apbase_config", scope: !3149, file: !141, line: 152, baseType: !171, size: 32, offset: 1408)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !3149, file: !141, line: 154, baseType: !191, size: 128, offset: 1472)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_lock", scope: !3149, file: !141, line: 155, baseType: !290, offset: 1600)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3127, file: !141, line: 108, baseType: !3096, size: 64, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush", scope: !3127, file: !141, line: 109, baseType: !4688, size: 64, offset: 576)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4691}
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_memory", file: !149, line: 69, size: 832, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4704, !4705, !4706, !4707, !4708, !4709, !4719}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4692, file: !149, line: 70, baseType: !4691, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4692, file: !149, line: 71, baseType: !4691, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4692, file: !149, line: 72, baseType: !3148, size: 64, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4692, file: !149, line: 73, baseType: !2343, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !4692, file: !149, line: 74, baseType: !1161, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4692, file: !149, line: 75, baseType: !170, size: 32, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "num_scratch_pages", scope: !4692, file: !149, line: 76, baseType: !170, size: 32, offset: 352)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pg_start", scope: !4692, file: !149, line: 77, baseType: !4702, size: 64, offset: 384)
!4702 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !167, line: 21, baseType: !4703)
!4703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !216, line: 87, baseType: !1160)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4692, file: !149, line: 78, baseType: !171, size: 32, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !4692, file: !149, line: 79, baseType: !171, size: 32, offset: 480)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "is_bound", scope: !4692, file: !149, line: 80, baseType: !370, size: 8, offset: 512)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !4692, file: !149, line: 81, baseType: !370, size: 8, offset: 520)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !4692, file: !149, line: 83, baseType: !191, size: 128, offset: 576)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !4692, file: !149, line: 85, baseType: !4710, size: 64, offset: 704)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4712, line: 11, size: 256, elements: !4713)
!4712 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4713 = !{!4714, !4715, !4716, !4717, !4718}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4711, file: !4712, line: 12, baseType: !168, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4711, file: !4712, line: 13, baseType: !7, size: 32, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4711, file: !4712, line: 14, baseType: !7, size: 32, offset: 96)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4711, file: !4712, line: 15, baseType: !178, size: 64, offset: 128)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4711, file: !4712, line: 17, baseType: !7, size: 32, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "num_sg", scope: !4692, file: !149, line: 86, baseType: !170, size: 32, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "mask_memory", scope: !3127, file: !141, line: 110, baseType: !4721, size: 64, offset: 640)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!168, !3148, !178, !170}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "cache_flush", scope: !3127, file: !141, line: 111, baseType: !3096, size: 64, offset: 704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "create_gatt_table", scope: !3127, file: !141, line: 112, baseType: !4726, size: 64, offset: 768)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!170, !3148}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "free_gatt_table", scope: !3127, file: !141, line: 113, baseType: !4726, size: 64, offset: 832)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "insert_memory", scope: !3127, file: !141, line: 114, baseType: !4731, size: 64, offset: 896)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!170, !4691, !4702, !170}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory", scope: !3127, file: !141, line: 115, baseType: !4731, size: 64, offset: 960)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_by_type", scope: !3127, file: !141, line: 116, baseType: !4736, size: 64, offset: 1024)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!4691, !1161, !170}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "free_by_type", scope: !3127, file: !141, line: 117, baseType: !4688, size: 64, offset: 1088)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_page", scope: !3127, file: !141, line: 118, baseType: !4741, size: 64, offset: 1152)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!179, !3148}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_pages", scope: !3127, file: !141, line: 119, baseType: !4745, size: 64, offset: 1216)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!170, !3148, !4691, !1161}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_page", scope: !3127, file: !141, line: 120, baseType: !4749, size: 64, offset: 1280)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !179, !170}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_pages", scope: !3127, file: !141, line: 121, baseType: !4688, size: 64, offset: 1344)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "agp_type_to_mask_type", scope: !3127, file: !141, line: 122, baseType: !4754, size: 64, offset: 1408)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!170, !3148, !170}
!4757 = !DIGlobalVariableExpression(var: !4758, expr: !DIExpression())
!4758 = distinct !DIGlobalVariable(name: "intel_fake_agp_sizes", scope: !2, file: !3, line: 668, type: !4759, isLocal: true, isDefinition: true)
!4759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4760, size: 480, elements: !4766)
!4760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aper_size_info_fixed", file: !141, line: 91, size: 96, elements: !4762)
!4762 = !{!4763, !4764, !4765}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4761, file: !141, line: 92, baseType: !170, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !4761, file: !141, line: 93, baseType: !170, size: 32, offset: 32)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4761, file: !141, line: 94, baseType: !170, size: 32, offset: 64)
!4766 = !{!4767}
!4767 = !DISubrange(count: 5)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "ddt", scope: !4770, file: !3, line: 343, type: !4773, isLocal: true, isDefinition: true)
!4770 = distinct !DISubprogram(name: "intel_gtt_stolen_size", scope: !3, file: !3, line: 338, type: !4771, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!3187}
!4773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4774, size: 128, elements: !1444)
!4774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_intel_private", file: !3, line: 62, size: 1600, elements: !4776)
!4776 = !{!4777, !4778, !4779, !4780, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4775, file: !3, line: 63, baseType: !3081, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !4775, file: !3, line: 64, baseType: !3165, size: 64, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_dev", scope: !4775, file: !3, line: 65, baseType: !3165, size: 64, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !4775, file: !3, line: 66, baseType: !4781, size: 64, offset: 192)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "gtt_phys_addr", scope: !4775, file: !3, line: 67, baseType: !2346, size: 64, offset: 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "PGETBL_save", scope: !4775, file: !3, line: 68, baseType: !171, size: 32, offset: 320)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "gtt", scope: !4775, file: !3, line: 69, baseType: !1858, size: 64, offset: 384)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "clear_fake_agp", scope: !4775, file: !3, line: 70, baseType: !370, size: 8, offset: 448)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "num_dcache_entries", scope: !4775, file: !3, line: 71, baseType: !170, size: 32, offset: 480)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i9xx_flush_page", scope: !4775, file: !3, line: 72, baseType: !161, size: 64, offset: 512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i81x_gtt_table", scope: !4775, file: !3, line: 73, baseType: !164, size: 64, offset: 576)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "ifp_resource", scope: !4775, file: !3, line: 74, baseType: !3183, size: 512, offset: 640)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "resource_valid", scope: !4775, file: !3, line: 75, baseType: !170, size: 32, offset: 1152)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page", scope: !4775, file: !3, line: 76, baseType: !179, size: 64, offset: 1216)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_dma", scope: !4775, file: !3, line: 77, baseType: !2346, size: 64, offset: 1280)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4775, file: !3, line: 78, baseType: !170, size: 32, offset: 1344)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "needs_dmar", scope: !4775, file: !3, line: 80, baseType: !7, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "gma_bus_addr", scope: !4775, file: !3, line: 81, baseType: !2346, size: 64, offset: 1408)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "stolen_size", scope: !4775, file: !3, line: 83, baseType: !3187, size: 64, offset: 1472)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "gtt_total_entries", scope: !4775, file: !3, line: 85, baseType: !7, size: 32, offset: 1536)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "gtt_mappable_entries", scope: !4775, file: !3, line: 88, baseType: !7, size: 32, offset: 1568)
!4799 = !{!"rsp"}
!4800 = !{i32 7, !"Dwarf Version", i32 4}
!4801 = !{i32 2, !"Debug Info Version", i32 3}
!4802 = !{i32 1, !"wchar_size", i32 2}
!4803 = !{i32 1, !"Code Model", i32 2}
!4804 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4805 = distinct !DISubprogram(name: "intel_enable_gtt", scope: !3, file: !3, line: 746, type: !3352, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4806 = !DILocalVariable(name: "reg", scope: !4805, file: !3, line: 748, type: !4781)
!4807 = !DILocation(line: 748, column: 14, scope: !4805)
!4808 = !DILocation(line: 750, column: 6, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 750, column: 6)
!4810 = !DILocation(line: 750, column: 20, scope: !4809)
!4811 = !DILocation(line: 750, column: 6, scope: !4805)
!4812 = !DILocalVariable(name: "gmch_ctrl", scope: !4813, file: !3, line: 751, type: !1185)
!4813 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 750, column: 26)
!4814 = !DILocation(line: 751, column: 7, scope: !4813)
!4815 = !DILocation(line: 753, column: 38, scope: !4813)
!4816 = !DILocation(line: 753, column: 3, scope: !4813)
!4817 = !DILocation(line: 755, column: 13, scope: !4813)
!4818 = !DILocation(line: 756, column: 39, scope: !4813)
!4819 = !DILocation(line: 757, column: 27, scope: !4813)
!4820 = !DILocation(line: 756, column: 3, scope: !4813)
!4821 = !DILocation(line: 759, column: 38, scope: !4813)
!4822 = !DILocation(line: 759, column: 3, scope: !4813)
!4823 = !DILocation(line: 761, column: 8, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 761, column: 7)
!4825 = !DILocation(line: 761, column: 18, scope: !4824)
!4826 = !DILocation(line: 761, column: 39, scope: !4824)
!4827 = !DILocation(line: 761, column: 7, scope: !4813)
!4828 = !DILocation(line: 762, column: 4, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 761, column: 45)
!4830 = !DILocation(line: 765, column: 4, scope: !4829)
!4831 = !DILocation(line: 767, column: 2, scope: !4813)
!4832 = !DILocation(line: 772, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 772, column: 6)
!4834 = !DILocation(line: 772, column: 20, scope: !4833)
!4835 = !DILocation(line: 772, column: 6, scope: !4805)
!4836 = !DILocation(line: 773, column: 27, scope: !4833)
!4837 = !DILocation(line: 773, column: 36, scope: !4833)
!4838 = !DILocation(line: 773, column: 3, scope: !4833)
!4839 = !DILocation(line: 775, column: 22, scope: !4805)
!4840 = !DILocation(line: 775, column: 31, scope: !4805)
!4841 = !DILocation(line: 775, column: 6, scope: !4805)
!4842 = !DILocation(line: 776, column: 23, scope: !4805)
!4843 = !DILocation(line: 776, column: 36, scope: !4805)
!4844 = !DILocation(line: 776, column: 2, scope: !4805)
!4845 = !DILocation(line: 777, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 777, column: 6)
!4847 = !DILocation(line: 777, column: 19, scope: !4846)
!4848 = !DILocation(line: 777, column: 29, scope: !4846)
!4849 = !DILocation(line: 777, column: 23, scope: !4846)
!4850 = !DILocation(line: 777, column: 34, scope: !4846)
!4851 = !DILocation(line: 777, column: 57, scope: !4846)
!4852 = !DILocation(line: 777, column: 6, scope: !4805)
!4853 = !DILocation(line: 778, column: 3, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 777, column: 63)
!4855 = !DILocation(line: 781, column: 3, scope: !4854)
!4856 = !DILocation(line: 784, column: 6, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 784, column: 6)
!4858 = !DILocation(line: 784, column: 20, scope: !4857)
!4859 = !DILocation(line: 784, column: 6, scope: !4805)
!4860 = !DILocation(line: 785, column: 27, scope: !4857)
!4861 = !DILocation(line: 785, column: 36, scope: !4857)
!4862 = !DILocation(line: 785, column: 3, scope: !4857)
!4863 = !DILocation(line: 787, column: 2, scope: !4805)
!4864 = !DILocation(line: 788, column: 1, scope: !4805)
!4865 = distinct !DISubprogram(name: "writel", scope: !4866, file: !4866, line: 67, type: !4867, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4866 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !7, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4871 = !DILocalVariable(name: "val", arg: 1, scope: !4865, file: !4866, line: 67, type: !7)
!4872 = !DILocation(line: 67, column: 1, scope: !4865)
!4873 = !DILocalVariable(name: "addr", arg: 2, scope: !4865, file: !4866, line: 67, type: !4869)
!4874 = !{i32 -2143396720}
!4875 = distinct !DISubprogram(name: "readl", scope: !4866, file: !4866, line: 59, type: !4876, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!7, !4878}
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4870)
!4880 = !DILocalVariable(name: "addr", arg: 1, scope: !4875, file: !4866, line: 59, type: !4878)
!4881 = !DILocation(line: 59, column: 1, scope: !4875)
!4882 = !DILocalVariable(name: "ret", scope: !4875, file: !4866, line: 59, type: !7)
!4883 = !{i32 -2143399113}
!4884 = distinct !DISubprogram(name: "intel_gtt_insert_page", scope: !3, file: !3, line: 846, type: !3099, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4885 = !DILocalVariable(name: "addr", arg: 1, scope: !4884, file: !3, line: 846, type: !178)
!4886 = !DILocation(line: 846, column: 39, scope: !4884)
!4887 = !DILocalVariable(name: "pg", arg: 2, scope: !4884, file: !3, line: 847, type: !7)
!4888 = !DILocation(line: 847, column: 20, scope: !4884)
!4889 = !DILocalVariable(name: "flags", arg: 3, scope: !4884, file: !3, line: 848, type: !7)
!4890 = !DILocation(line: 848, column: 20, scope: !4884)
!4891 = !DILocation(line: 850, column: 16, scope: !4884)
!4892 = !DILocation(line: 850, column: 24, scope: !4884)
!4893 = !DILocation(line: 850, column: 36, scope: !4884)
!4894 = !DILocation(line: 850, column: 42, scope: !4884)
!4895 = !DILocation(line: 850, column: 46, scope: !4884)
!4896 = !DILocation(line: 850, column: 2, scope: !4884)
!4897 = !DILocation(line: 851, column: 22, scope: !4884)
!4898 = !DILocation(line: 851, column: 28, scope: !4884)
!4899 = !DILocation(line: 851, column: 26, scope: !4884)
!4900 = !DILocation(line: 851, column: 8, scope: !4884)
!4901 = !DILocation(line: 851, column: 2, scope: !4884)
!4902 = !DILocation(line: 852, column: 20, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 852, column: 6)
!4904 = !DILocation(line: 852, column: 28, scope: !4903)
!4905 = !DILocation(line: 852, column: 6, scope: !4903)
!4906 = !DILocation(line: 852, column: 6, scope: !4884)
!4907 = !DILocation(line: 853, column: 17, scope: !4903)
!4908 = !DILocation(line: 853, column: 25, scope: !4903)
!4909 = !DILocation(line: 853, column: 3, scope: !4903)
!4910 = !DILocation(line: 854, column: 1, scope: !4884)
!4911 = distinct !DISubprogram(name: "intel_gtt_insert_sg_entries", scope: !3, file: !3, line: 857, type: !4912, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{null, !4914, !7, !7}
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4712, line: 42, size: 128, elements: !4916)
!4916 = !{!4917, !4918, !4919}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4915, file: !4712, line: 43, baseType: !4710, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4915, file: !4712, line: 44, baseType: !7, size: 32, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4915, file: !4712, line: 45, baseType: !7, size: 32, offset: 96)
!4920 = !DILocalVariable(name: "st", arg: 1, scope: !4911, file: !3, line: 857, type: !4914)
!4921 = !DILocation(line: 857, column: 51, scope: !4911)
!4922 = !DILocalVariable(name: "pg_start", arg: 2, scope: !4911, file: !3, line: 858, type: !7)
!4923 = !DILocation(line: 858, column: 19, scope: !4911)
!4924 = !DILocalVariable(name: "flags", arg: 3, scope: !4911, file: !3, line: 859, type: !7)
!4925 = !DILocation(line: 859, column: 19, scope: !4911)
!4926 = !DILocalVariable(name: "sg", scope: !4911, file: !3, line: 861, type: !4710)
!4927 = !DILocation(line: 861, column: 22, scope: !4911)
!4928 = !DILocalVariable(name: "len", scope: !4911, file: !3, line: 862, type: !7)
!4929 = !DILocation(line: 862, column: 15, scope: !4911)
!4930 = !DILocalVariable(name: "m", scope: !4911, file: !3, line: 862, type: !7)
!4931 = !DILocation(line: 862, column: 20, scope: !4911)
!4932 = !DILocalVariable(name: "i", scope: !4911, file: !3, line: 863, type: !170)
!4933 = !DILocation(line: 863, column: 6, scope: !4911)
!4934 = !DILocalVariable(name: "j", scope: !4911, file: !3, line: 863, type: !170)
!4935 = !DILocation(line: 863, column: 9, scope: !4911)
!4936 = !DILocation(line: 865, column: 6, scope: !4911)
!4937 = !DILocation(line: 865, column: 4, scope: !4911)
!4938 = !DILocation(line: 869, column: 2, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 869, column: 2)
!4940 = !DILocation(line: 869, column: 2, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 869, column: 2)
!4942 = !DILocation(line: 870, column: 9, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 869, column: 41)
!4944 = !DILocation(line: 870, column: 24, scope: !4943)
!4945 = !DILocation(line: 870, column: 7, scope: !4943)
!4946 = !DILocation(line: 871, column: 10, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 871, column: 3)
!4948 = !DILocation(line: 871, column: 8, scope: !4947)
!4949 = !DILocation(line: 871, column: 15, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 871, column: 3)
!4951 = !DILocation(line: 871, column: 19, scope: !4950)
!4952 = !DILocation(line: 871, column: 17, scope: !4950)
!4953 = !DILocation(line: 871, column: 3, scope: !4947)
!4954 = !DILocalVariable(name: "addr", scope: !4955, file: !3, line: 872, type: !178)
!4955 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 871, column: 29)
!4956 = !DILocation(line: 872, column: 15, scope: !4955)
!4957 = !DILocation(line: 872, column: 22, scope: !4955)
!4958 = !DILocation(line: 872, column: 44, scope: !4955)
!4959 = !DILocation(line: 872, column: 46, scope: !4955)
!4960 = !DILocation(line: 872, column: 43, scope: !4955)
!4961 = !DILocation(line: 872, column: 41, scope: !4955)
!4962 = !DILocation(line: 873, column: 18, scope: !4955)
!4963 = !DILocation(line: 873, column: 26, scope: !4955)
!4964 = !DILocation(line: 873, column: 38, scope: !4955)
!4965 = !DILocation(line: 873, column: 44, scope: !4955)
!4966 = !DILocation(line: 873, column: 47, scope: !4955)
!4967 = !DILocation(line: 873, column: 4, scope: !4955)
!4968 = !DILocation(line: 874, column: 5, scope: !4955)
!4969 = !DILocation(line: 875, column: 3, scope: !4955)
!4970 = !DILocation(line: 871, column: 25, scope: !4950)
!4971 = !DILocation(line: 871, column: 3, scope: !4950)
!4972 = distinct !{!4972, !4953, !4973}
!4973 = !DILocation(line: 875, column: 3, scope: !4947)
!4974 = !DILocation(line: 876, column: 2, scope: !4943)
!4975 = distinct !{!4975, !4938, !4976}
!4976 = !DILocation(line: 876, column: 2, scope: !4939)
!4977 = !DILocation(line: 877, column: 22, scope: !4911)
!4978 = !DILocation(line: 877, column: 28, scope: !4911)
!4979 = !DILocation(line: 877, column: 26, scope: !4911)
!4980 = !DILocation(line: 877, column: 30, scope: !4911)
!4981 = !DILocation(line: 877, column: 8, scope: !4911)
!4982 = !DILocation(line: 877, column: 2, scope: !4911)
!4983 = !DILocation(line: 878, column: 20, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 878, column: 6)
!4985 = !DILocation(line: 878, column: 28, scope: !4984)
!4986 = !DILocation(line: 878, column: 6, scope: !4984)
!4987 = !DILocation(line: 878, column: 6, scope: !4911)
!4988 = !DILocation(line: 879, column: 17, scope: !4984)
!4989 = !DILocation(line: 879, column: 25, scope: !4984)
!4990 = !DILocation(line: 879, column: 3, scope: !4984)
!4991 = !DILocation(line: 880, column: 1, scope: !4911)
!4992 = distinct !DISubprogram(name: "intel_gtt_clear_range", scope: !3, file: !3, line: 951, type: !4993, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !7, !7}
!4995 = !DILocalVariable(name: "first_entry", arg: 1, scope: !4992, file: !3, line: 951, type: !7)
!4996 = !DILocation(line: 951, column: 41, scope: !4992)
!4997 = !DILocalVariable(name: "num_entries", arg: 2, scope: !4992, file: !3, line: 951, type: !7)
!4998 = !DILocation(line: 951, column: 67, scope: !4992)
!4999 = !DILocalVariable(name: "i", scope: !4992, file: !3, line: 953, type: !7)
!5000 = !DILocation(line: 953, column: 15, scope: !4992)
!5001 = !DILocation(line: 955, column: 11, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 955, column: 2)
!5003 = !DILocation(line: 955, column: 9, scope: !5002)
!5004 = !DILocation(line: 955, column: 7, scope: !5002)
!5005 = !DILocation(line: 955, column: 24, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 955, column: 2)
!5007 = !DILocation(line: 955, column: 29, scope: !5006)
!5008 = !DILocation(line: 955, column: 43, scope: !5006)
!5009 = !DILocation(line: 955, column: 41, scope: !5006)
!5010 = !DILocation(line: 955, column: 26, scope: !5006)
!5011 = !DILocation(line: 955, column: 2, scope: !5002)
!5012 = !DILocation(line: 956, column: 17, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 955, column: 62)
!5014 = !DILocation(line: 956, column: 25, scope: !5013)
!5015 = !DILocation(line: 956, column: 51, scope: !5013)
!5016 = !DILocation(line: 957, column: 9, scope: !5013)
!5017 = !DILocation(line: 956, column: 3, scope: !5013)
!5018 = !DILocation(line: 958, column: 2, scope: !5013)
!5019 = !DILocation(line: 955, column: 58, scope: !5006)
!5020 = !DILocation(line: 955, column: 2, scope: !5006)
!5021 = distinct !{!5021, !5011, !5022}
!5022 = !DILocation(line: 958, column: 2, scope: !5002)
!5023 = !DILocation(line: 959, column: 2, scope: !4992)
!5024 = !{i32 -2140823097}
!5025 = !DILocation(line: 960, column: 1, scope: !4992)
!5026 = distinct !DISubprogram(name: "intel_gmch_probe", scope: !3, file: !3, line: 1363, type: !5027, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!170, !3165, !3165, !3148}
!5029 = !DILocalVariable(name: "bridge_pdev", arg: 1, scope: !5026, file: !3, line: 1363, type: !3165)
!5030 = !DILocation(line: 1363, column: 38, scope: !5026)
!5031 = !DILocalVariable(name: "gpu_pdev", arg: 2, scope: !5026, file: !3, line: 1363, type: !3165)
!5032 = !DILocation(line: 1363, column: 67, scope: !5026)
!5033 = !DILocalVariable(name: "bridge", arg: 3, scope: !5026, file: !3, line: 1364, type: !3148)
!5034 = !DILocation(line: 1364, column: 32, scope: !5026)
!5035 = !DILocalVariable(name: "i", scope: !5026, file: !3, line: 1366, type: !170)
!5036 = !DILocation(line: 1366, column: 6, scope: !5026)
!5037 = !DILocalVariable(name: "mask", scope: !5026, file: !3, line: 1366, type: !170)
!5038 = !DILocation(line: 1366, column: 9, scope: !5026)
!5039 = !DILocation(line: 1368, column: 9, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1368, column: 2)
!5041 = !DILocation(line: 1368, column: 7, scope: !5040)
!5042 = !DILocation(line: 1368, column: 33, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 1368, column: 2)
!5044 = !DILocation(line: 1368, column: 14, scope: !5043)
!5045 = !DILocation(line: 1368, column: 36, scope: !5043)
!5046 = !DILocation(line: 1368, column: 41, scope: !5043)
!5047 = !DILocation(line: 1368, column: 2, scope: !5040)
!5048 = !DILocation(line: 1369, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 1369, column: 7)
!5050 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 1368, column: 55)
!5051 = !DILocation(line: 1369, column: 7, scope: !5050)
!5052 = !DILocation(line: 1370, column: 8, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 1370, column: 8)
!5054 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 1369, column: 17)
!5055 = !DILocation(line: 1370, column: 18, scope: !5053)
!5056 = !DILocation(line: 1371, column: 27, scope: !5053)
!5057 = !DILocation(line: 1371, column: 8, scope: !5053)
!5058 = !DILocation(line: 1371, column: 30, scope: !5053)
!5059 = !DILocation(line: 1370, column: 25, scope: !5053)
!5060 = !DILocation(line: 1370, column: 8, scope: !5054)
!5061 = !DILocation(line: 1372, column: 40, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 1371, column: 44)
!5063 = !DILocation(line: 1372, column: 28, scope: !5062)
!5064 = !DILocation(line: 1372, column: 26, scope: !5062)
!5065 = !DILocation(line: 1374, column: 25, scope: !5062)
!5066 = !DILocation(line: 1374, column: 6, scope: !5062)
!5067 = !DILocation(line: 1374, column: 28, scope: !5062)
!5068 = !DILocation(line: 1373, column: 26, scope: !5062)
!5069 = !DILocation(line: 1376, column: 5, scope: !5062)
!5070 = !DILocation(line: 1378, column: 3, scope: !5054)
!5071 = !DILocation(line: 1378, column: 43, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 1378, column: 14)
!5073 = !DILocation(line: 1378, column: 24, scope: !5072)
!5074 = !DILocation(line: 1378, column: 46, scope: !5072)
!5075 = !DILocation(line: 1378, column: 14, scope: !5072)
!5076 = !DILocation(line: 1378, column: 14, scope: !5049)
!5077 = !DILocation(line: 1380, column: 24, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 1378, column: 61)
!5079 = !DILocation(line: 1380, column: 5, scope: !5078)
!5080 = !DILocation(line: 1380, column: 27, scope: !5078)
!5081 = !DILocation(line: 1379, column: 25, scope: !5078)
!5082 = !DILocation(line: 1381, column: 4, scope: !5078)
!5083 = !DILocation(line: 1383, column: 2, scope: !5050)
!5084 = !DILocation(line: 1368, column: 51, scope: !5043)
!5085 = !DILocation(line: 1368, column: 2, scope: !5043)
!5086 = distinct !{!5086, !5047, !5087}
!5087 = !DILocation(line: 1383, column: 2, scope: !5040)
!5088 = !DILocation(line: 1385, column: 21, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1385, column: 6)
!5090 = !DILocation(line: 1385, column: 7, scope: !5089)
!5091 = !DILocation(line: 1385, column: 6, scope: !5026)
!5092 = !DILocation(line: 1386, column: 3, scope: !5089)
!5093 = !DILocation(line: 1389, column: 6, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1389, column: 6)
!5095 = !DILocation(line: 1389, column: 6, scope: !5026)
!5096 = !DILocation(line: 1390, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 1390, column: 7)
!5098 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 1389, column: 14)
!5099 = !DILocation(line: 1390, column: 21, scope: !5097)
!5100 = !DILocation(line: 1390, column: 7, scope: !5098)
!5101 = !DILocation(line: 1391, column: 4, scope: !5097)
!5102 = !DILocation(line: 1393, column: 3, scope: !5098)
!5103 = !DILocation(line: 1393, column: 11, scope: !5098)
!5104 = !DILocation(line: 1393, column: 18, scope: !5098)
!5105 = !DILocation(line: 1394, column: 3, scope: !5098)
!5106 = !DILocation(line: 1394, column: 11, scope: !5098)
!5107 = !DILocation(line: 1394, column: 28, scope: !5098)
!5108 = !DILocation(line: 1395, column: 17, scope: !5098)
!5109 = !DILocation(line: 1395, column: 3, scope: !5098)
!5110 = !DILocation(line: 1395, column: 11, scope: !5098)
!5111 = !DILocation(line: 1395, column: 15, scope: !5098)
!5112 = !DILocation(line: 1396, column: 2, scope: !5098)
!5113 = !DILocation(line: 1405, column: 28, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1405, column: 6)
!5115 = !DILocation(line: 1405, column: 6, scope: !5026)
!5116 = !DILocation(line: 1406, column: 3, scope: !5114)
!5117 = !DILocation(line: 1408, column: 41, scope: !5026)
!5118 = !DILocation(line: 1408, column: 29, scope: !5026)
!5119 = !DILocation(line: 1408, column: 27, scope: !5026)
!5120 = !DILocation(line: 1410, column: 2, scope: !5026)
!5121 = !DILocation(line: 1412, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1412, column: 6)
!5123 = !DILocation(line: 1412, column: 6, scope: !5026)
!5124 = !DILocation(line: 1413, column: 24, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1412, column: 14)
!5126 = !DILocation(line: 1413, column: 32, scope: !5125)
!5127 = !DILocation(line: 1413, column: 8, scope: !5125)
!5128 = !DILocation(line: 1414, column: 38, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 1414, column: 7)
!5130 = !DILocation(line: 1414, column: 46, scope: !5129)
!5131 = !DILocation(line: 1414, column: 7, scope: !5129)
!5132 = !DILocation(line: 1414, column: 7, scope: !5125)
!5133 = !DILocation(line: 1415, column: 4, scope: !5129)
!5134 = !DILocation(line: 1419, column: 46, scope: !5129)
!5135 = !DILocation(line: 1420, column: 11, scope: !5129)
!5136 = !DILocation(line: 1419, column: 4, scope: !5129)
!5137 = !DILocation(line: 1421, column: 2, scope: !5125)
!5138 = !DILocation(line: 1423, column: 6, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 1423, column: 6)
!5140 = !DILocation(line: 1423, column: 23, scope: !5139)
!5141 = !DILocation(line: 1423, column: 6, scope: !5026)
!5142 = !DILocation(line: 1424, column: 3, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 1423, column: 29)
!5144 = !DILocation(line: 1426, column: 3, scope: !5143)
!5145 = !DILocation(line: 1429, column: 2, scope: !5026)
!5146 = !DILocation(line: 1430, column: 1, scope: !5026)
!5147 = distinct !DISubprogram(name: "find_gmch", scope: !3, file: !3, line: 1346, type: !5148, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!170, !1185}
!5150 = !DILocalVariable(name: "device", arg: 1, scope: !5147, file: !3, line: 1346, type: !1185)
!5151 = !DILocation(line: 1346, column: 26, scope: !5147)
!5152 = !DILocalVariable(name: "gmch_device", scope: !5147, file: !3, line: 1348, type: !3165)
!5153 = !DILocation(line: 1348, column: 18, scope: !5147)
!5154 = !DILocation(line: 1350, column: 52, scope: !5147)
!5155 = !DILocation(line: 1350, column: 16, scope: !5147)
!5156 = !DILocation(line: 1350, column: 14, scope: !5147)
!5157 = !DILocation(line: 1351, column: 6, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1351, column: 6)
!5159 = !DILocation(line: 1351, column: 18, scope: !5158)
!5160 = !DILocation(line: 1351, column: 21, scope: !5158)
!5161 = !DILocation(line: 1351, column: 50, scope: !5158)
!5162 = !DILocation(line: 1351, column: 6, scope: !5147)
!5163 = !DILocation(line: 1353, column: 11, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 1351, column: 56)
!5165 = !DILocation(line: 1353, column: 19, scope: !5164)
!5166 = !DILocation(line: 1352, column: 17, scope: !5164)
!5167 = !DILocation(line: 1352, column: 15, scope: !5164)
!5168 = !DILocation(line: 1354, column: 2, scope: !5164)
!5169 = !DILocation(line: 1356, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1356, column: 6)
!5171 = !DILocation(line: 1356, column: 6, scope: !5147)
!5172 = !DILocation(line: 1357, column: 3, scope: !5170)
!5173 = !DILocation(line: 1359, column: 25, scope: !5147)
!5174 = !DILocation(line: 1359, column: 23, scope: !5147)
!5175 = !DILocation(line: 1360, column: 2, scope: !5147)
!5176 = !DILocation(line: 1361, column: 1, scope: !5147)
!5177 = distinct !DISubprogram(name: "pci_set_dma_mask", scope: !5178, file: !5178, line: 113, type: !5179, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5178 = !DIFile(filename: "./include/linux/pci-dma-compat.h", directory: "/home/lizy2001/genbc/linux")
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!170, !3165, !175}
!5181 = !DILocalVariable(name: "dev", arg: 1, scope: !5177, file: !5178, line: 113, type: !3165)
!5182 = !DILocation(line: 113, column: 52, scope: !5177)
!5183 = !DILocalVariable(name: "mask", arg: 2, scope: !5177, file: !5178, line: 113, type: !175)
!5184 = !DILocation(line: 113, column: 61, scope: !5177)
!5185 = !DILocation(line: 115, column: 23, scope: !5177)
!5186 = !DILocation(line: 115, column: 28, scope: !5177)
!5187 = !DILocation(line: 115, column: 33, scope: !5177)
!5188 = !DILocation(line: 115, column: 9, scope: !5177)
!5189 = !DILocation(line: 115, column: 2, scope: !5177)
!5190 = distinct !DISubprogram(name: "pci_set_consistent_dma_mask", scope: !5178, file: !5178, line: 118, type: !5179, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5191 = !DILocalVariable(name: "dev", arg: 1, scope: !5190, file: !5178, line: 118, type: !3165)
!5192 = !DILocation(line: 118, column: 63, scope: !5190)
!5193 = !DILocalVariable(name: "mask", arg: 2, scope: !5190, file: !5178, line: 118, type: !175)
!5194 = !DILocation(line: 118, column: 72, scope: !5190)
!5195 = !DILocation(line: 120, column: 32, scope: !5190)
!5196 = !DILocation(line: 120, column: 37, scope: !5190)
!5197 = !DILocation(line: 120, column: 42, scope: !5190)
!5198 = !DILocation(line: 120, column: 9, scope: !5190)
!5199 = !DILocation(line: 120, column: 2, scope: !5190)
!5200 = distinct !DISubprogram(name: "intel_gtt_init", scope: !3, file: !3, line: 604, type: !3093, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5201 = !DILocalVariable(name: "gtt_map_size", scope: !5200, file: !3, line: 606, type: !171)
!5202 = !DILocation(line: 606, column: 6, scope: !5200)
!5203 = !DILocalVariable(name: "ret", scope: !5200, file: !3, line: 607, type: !170)
!5204 = !DILocation(line: 607, column: 6, scope: !5200)
!5205 = !DILocalVariable(name: "bar", scope: !5200, file: !3, line: 607, type: !170)
!5206 = !DILocation(line: 607, column: 11, scope: !5200)
!5207 = !DILocation(line: 609, column: 22, scope: !5200)
!5208 = !DILocation(line: 609, column: 30, scope: !5200)
!5209 = !DILocation(line: 609, column: 8, scope: !5200)
!5210 = !DILocation(line: 609, column: 6, scope: !5200)
!5211 = !DILocation(line: 610, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 610, column: 6)
!5213 = !DILocation(line: 610, column: 10, scope: !5212)
!5214 = !DILocation(line: 610, column: 6, scope: !5200)
!5215 = !DILocation(line: 611, column: 10, scope: !5212)
!5216 = !DILocation(line: 611, column: 3, scope: !5212)
!5217 = !DILocation(line: 613, column: 39, scope: !5200)
!5218 = !DILocation(line: 613, column: 37, scope: !5200)
!5219 = !DILocation(line: 614, column: 36, scope: !5200)
!5220 = !DILocation(line: 614, column: 34, scope: !5200)
!5221 = !DILocation(line: 618, column: 23, scope: !5200)
!5222 = !DILocation(line: 618, column: 32, scope: !5200)
!5223 = !DILocation(line: 618, column: 3, scope: !5200)
!5224 = !DILocation(line: 619, column: 4, scope: !5200)
!5225 = !DILocation(line: 617, column: 28, scope: !5200)
!5226 = !DILocation(line: 621, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 621, column: 6)
!5228 = !DILocation(line: 621, column: 6, scope: !5200)
!5229 = !DILocation(line: 622, column: 29, scope: !5227)
!5230 = !DILocation(line: 622, column: 3, scope: !5227)
!5231 = !DILocation(line: 624, column: 2, scope: !5200)
!5232 = !DILocation(line: 629, column: 31, scope: !5200)
!5233 = !DILocation(line: 629, column: 49, scope: !5200)
!5234 = !DILocation(line: 629, column: 15, scope: !5200)
!5235 = !DILocation(line: 631, column: 20, scope: !5200)
!5236 = !DILocation(line: 632, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 632, column: 6)
!5238 = !DILocation(line: 632, column: 6, scope: !5200)
!5239 = !DILocation(line: 633, column: 48, scope: !5237)
!5240 = !DILocation(line: 634, column: 13, scope: !5237)
!5241 = !DILocation(line: 633, column: 23, scope: !5237)
!5242 = !DILocation(line: 633, column: 21, scope: !5237)
!5243 = !DILocation(line: 633, column: 3, scope: !5237)
!5244 = !DILocation(line: 635, column: 20, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 635, column: 6)
!5246 = !DILocation(line: 635, column: 24, scope: !5245)
!5247 = !DILocation(line: 635, column: 6, scope: !5200)
!5248 = !DILocation(line: 636, column: 45, scope: !5245)
!5249 = !DILocation(line: 637, column: 10, scope: !5245)
!5250 = !DILocation(line: 636, column: 23, scope: !5245)
!5251 = !DILocation(line: 636, column: 21, scope: !5245)
!5252 = !DILocation(line: 636, column: 3, scope: !5245)
!5253 = !DILocation(line: 638, column: 20, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 638, column: 6)
!5255 = !DILocation(line: 638, column: 24, scope: !5254)
!5256 = !DILocation(line: 638, column: 6, scope: !5200)
!5257 = !DILocation(line: 639, column: 17, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 638, column: 33)
!5259 = !DILocation(line: 639, column: 25, scope: !5258)
!5260 = !DILocation(line: 639, column: 3, scope: !5258)
!5261 = !DILocation(line: 640, column: 25, scope: !5258)
!5262 = !DILocation(line: 640, column: 3, scope: !5258)
!5263 = !DILocation(line: 641, column: 3, scope: !5258)
!5264 = !DILocation(line: 645, column: 2, scope: !5200)
!5265 = !DILocation(line: 648, column: 30, scope: !5200)
!5266 = !DILocation(line: 648, column: 28, scope: !5200)
!5267 = !DILocation(line: 650, column: 27, scope: !5200)
!5268 = !DILocation(line: 652, column: 8, scope: !5200)
!5269 = !DILocation(line: 652, column: 6, scope: !5200)
!5270 = !DILocation(line: 653, column: 6, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 653, column: 6)
!5272 = !DILocation(line: 653, column: 10, scope: !5271)
!5273 = !DILocation(line: 653, column: 6, scope: !5200)
!5274 = !DILocation(line: 654, column: 3, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 653, column: 16)
!5276 = !DILocation(line: 655, column: 10, scope: !5275)
!5277 = !DILocation(line: 655, column: 3, scope: !5275)
!5278 = !DILocation(line: 658, column: 6, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 658, column: 6)
!5280 = !DILocation(line: 658, column: 20, scope: !5279)
!5281 = !DILocation(line: 658, column: 6, scope: !5200)
!5282 = !DILocation(line: 659, column: 7, scope: !5279)
!5283 = !DILocation(line: 659, column: 3, scope: !5279)
!5284 = !DILocation(line: 661, column: 7, scope: !5279)
!5285 = !DILocation(line: 663, column: 61, scope: !5200)
!5286 = !DILocation(line: 663, column: 69, scope: !5200)
!5287 = !DILocation(line: 663, column: 31, scope: !5200)
!5288 = !DILocation(line: 663, column: 29, scope: !5200)
!5289 = !DILocation(line: 664, column: 2, scope: !5200)
!5290 = !DILocation(line: 665, column: 1, scope: !5200)
!5291 = distinct !DISubprogram(name: "intel_gmch_remove", scope: !3, file: !3, line: 1450, type: !2103, scopeLine: 1451, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5292 = !DILocation(line: 1452, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 1452, column: 6)
!5294 = !DILocation(line: 1452, column: 6, scope: !5291)
!5295 = !DILocation(line: 1453, column: 3, scope: !5293)
!5296 = !DILocation(line: 1455, column: 20, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 1455, column: 6)
!5298 = !DILocation(line: 1455, column: 6, scope: !5297)
!5299 = !DILocation(line: 1455, column: 6, scope: !5291)
!5300 = !DILocation(line: 1456, column: 3, scope: !5297)
!5301 = !DILocation(line: 1457, column: 20, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 1457, column: 6)
!5303 = !DILocation(line: 1457, column: 6, scope: !5302)
!5304 = !DILocation(line: 1457, column: 6, scope: !5291)
!5305 = !DILocation(line: 1458, column: 29, scope: !5302)
!5306 = !DILocation(line: 1458, column: 3, scope: !5302)
!5307 = !DILocation(line: 1459, column: 20, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 1459, column: 6)
!5309 = !DILocation(line: 1459, column: 6, scope: !5308)
!5310 = !DILocation(line: 1459, column: 6, scope: !5291)
!5311 = !DILocation(line: 1460, column: 29, scope: !5308)
!5312 = !DILocation(line: 1460, column: 3, scope: !5308)
!5313 = !DILocation(line: 1461, column: 23, scope: !5291)
!5314 = !DILocation(line: 1462, column: 1, scope: !5291)
!5315 = distinct !DISubprogram(name: "intel_gtt_get", scope: !3, file: !3, line: 1433, type: !5316, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !4277, !5318, !5319}
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!5320 = !DILocalVariable(name: "gtt_total", arg: 1, scope: !5315, file: !3, line: 1433, type: !4277)
!5321 = !DILocation(line: 1433, column: 25, scope: !5315)
!5322 = !DILocalVariable(name: "mappable_base", arg: 2, scope: !5315, file: !3, line: 1434, type: !5318)
!5323 = !DILocation(line: 1434, column: 19, scope: !5315)
!5324 = !DILocalVariable(name: "mappable_end", arg: 3, scope: !5315, file: !3, line: 1435, type: !5319)
!5325 = !DILocation(line: 1435, column: 23, scope: !5315)
!5326 = !DILocation(line: 1437, column: 29, scope: !5315)
!5327 = !DILocation(line: 1437, column: 47, scope: !5315)
!5328 = !DILocation(line: 1437, column: 15, scope: !5315)
!5329 = !DILocation(line: 1437, column: 3, scope: !5315)
!5330 = !DILocation(line: 1437, column: 13, scope: !5315)
!5331 = !DILocation(line: 1438, column: 33, scope: !5315)
!5332 = !DILocation(line: 1438, column: 3, scope: !5315)
!5333 = !DILocation(line: 1438, column: 17, scope: !5315)
!5334 = !DILocation(line: 1439, column: 32, scope: !5315)
!5335 = !DILocation(line: 1439, column: 53, scope: !5315)
!5336 = !DILocation(line: 1439, column: 18, scope: !5315)
!5337 = !DILocation(line: 1439, column: 3, scope: !5315)
!5338 = !DILocation(line: 1439, column: 16, scope: !5315)
!5339 = !DILocation(line: 1440, column: 1, scope: !5315)
!5340 = distinct !DISubprogram(name: "intel_gtt_chipset_flush", scope: !3, file: !3, line: 1443, type: !2103, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5341 = !DILocation(line: 1445, column: 20, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 1445, column: 6)
!5343 = !DILocation(line: 1445, column: 28, scope: !5342)
!5344 = !DILocation(line: 1445, column: 6, scope: !5342)
!5345 = !DILocation(line: 1445, column: 6, scope: !5340)
!5346 = !DILocation(line: 1446, column: 17, scope: !5342)
!5347 = !DILocation(line: 1446, column: 25, scope: !5342)
!5348 = !DILocation(line: 1446, column: 3, scope: !5342)
!5349 = !DILocation(line: 1447, column: 1, scope: !5340)
!5350 = distinct !DISubprogram(name: "intel_gtt_teardown_scratch_page", scope: !3, file: !3, line: 550, type: !2103, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5351 = !DILocation(line: 552, column: 29, scope: !5350)
!5352 = !DILocation(line: 552, column: 2, scope: !5350)
!5353 = !DILocation(line: 553, column: 20, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 553, column: 6)
!5355 = !DILocation(line: 553, column: 6, scope: !5354)
!5356 = !DILocation(line: 553, column: 6, scope: !5350)
!5357 = !DILocation(line: 554, column: 32, scope: !5354)
!5358 = !DILocation(line: 555, column: 25, scope: !5354)
!5359 = !DILocation(line: 554, column: 3, scope: !5354)
!5360 = !DILocation(line: 557, column: 2, scope: !5350)
!5361 = !DILocation(line: 558, column: 1, scope: !5350)
!5362 = distinct !DISubprogram(name: "i810_setup", scope: !3, file: !3, line: 173, type: !3093, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5363 = !DILocalVariable(name: "reg_addr", scope: !5362, file: !3, line: 175, type: !2346)
!5364 = !DILocation(line: 175, column: 14, scope: !5362)
!5365 = !DILocalVariable(name: "gtt_table", scope: !5362, file: !3, line: 176, type: !164)
!5366 = !DILocation(line: 176, column: 8, scope: !5362)
!5367 = !DILocation(line: 179, column: 14, scope: !5362)
!5368 = !DILocation(line: 179, column: 12, scope: !5362)
!5369 = !DILocation(line: 180, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 180, column: 6)
!5371 = !DILocation(line: 180, column: 16, scope: !5370)
!5372 = !DILocation(line: 180, column: 6, scope: !5362)
!5373 = !DILocation(line: 181, column: 3, scope: !5370)
!5374 = !DILocation(line: 182, column: 33, scope: !5362)
!5375 = !DILocation(line: 182, column: 31, scope: !5362)
!5376 = !DILocation(line: 184, column: 13, scope: !5362)
!5377 = !DILocation(line: 184, column: 11, scope: !5362)
!5378 = !DILocation(line: 186, column: 36, scope: !5362)
!5379 = !DILocation(line: 186, column: 28, scope: !5362)
!5380 = !DILocation(line: 186, column: 26, scope: !5362)
!5381 = !DILocation(line: 187, column: 21, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 187, column: 6)
!5383 = !DILocation(line: 187, column: 7, scope: !5382)
!5384 = !DILocation(line: 187, column: 6, scope: !5362)
!5385 = !DILocation(line: 188, column: 3, scope: !5382)
!5386 = !DILocation(line: 190, column: 22, scope: !5362)
!5387 = !DILocation(line: 190, column: 9, scope: !5362)
!5388 = !DILocation(line: 190, column: 33, scope: !5362)
!5389 = !DILocation(line: 191, column: 23, scope: !5362)
!5390 = !DILocation(line: 191, column: 32, scope: !5362)
!5391 = !DILocation(line: 190, column: 2, scope: !5362)
!5392 = !DILocation(line: 193, column: 32, scope: !5362)
!5393 = !DILocation(line: 193, column: 41, scope: !5362)
!5394 = !DILocation(line: 193, column: 30, scope: !5362)
!5395 = !DILocation(line: 195, column: 27, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 195, column: 6)
!5397 = !DILocation(line: 195, column: 36, scope: !5396)
!5398 = !DILocation(line: 195, column: 7, scope: !5396)
!5399 = !DILocation(line: 196, column: 3, scope: !5396)
!5400 = !DILocation(line: 196, column: 22, scope: !5396)
!5401 = !DILocation(line: 195, column: 6, scope: !5362)
!5402 = !DILocation(line: 197, column: 3, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 196, column: 48)
!5404 = !DILocation(line: 199, column: 36, scope: !5403)
!5405 = !DILocation(line: 200, column: 2, scope: !5403)
!5406 = !DILocation(line: 202, column: 2, scope: !5362)
!5407 = !DILocation(line: 203, column: 1, scope: !5362)
!5408 = distinct !DISubprogram(name: "i810_cleanup", scope: !3, file: !3, line: 205, type: !2103, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5409 = !DILocation(line: 207, column: 26, scope: !5408)
!5410 = !DILocation(line: 207, column: 35, scope: !5408)
!5411 = !DILocation(line: 207, column: 2, scope: !5408)
!5412 = !DILocation(line: 208, column: 2, scope: !5408)
!5413 = !DILocation(line: 209, column: 1, scope: !5408)
!5414 = distinct !DISubprogram(name: "i810_write_entry", scope: !3, file: !3, line: 321, type: !3099, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5415 = !DILocalVariable(name: "addr", arg: 1, scope: !5414, file: !3, line: 321, type: !178)
!5416 = !DILocation(line: 321, column: 41, scope: !5414)
!5417 = !DILocalVariable(name: "entry", arg: 2, scope: !5414, file: !3, line: 321, type: !7)
!5418 = !DILocation(line: 321, column: 60, scope: !5414)
!5419 = !DILocalVariable(name: "flags", arg: 3, scope: !5414, file: !3, line: 322, type: !7)
!5420 = !DILocation(line: 322, column: 22, scope: !5414)
!5421 = !DILocalVariable(name: "pte_flags", scope: !5414, file: !3, line: 324, type: !171)
!5422 = !DILocation(line: 324, column: 6, scope: !5414)
!5423 = !DILocation(line: 326, column: 10, scope: !5414)
!5424 = !DILocation(line: 326, column: 2, scope: !5414)
!5425 = !DILocation(line: 328, column: 13, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 326, column: 17)
!5427 = !DILocation(line: 329, column: 3, scope: !5426)
!5428 = !DILocation(line: 331, column: 13, scope: !5426)
!5429 = !DILocation(line: 332, column: 3, scope: !5426)
!5430 = !DILocation(line: 335, column: 2, scope: !5414)
!5431 = !DILocation(line: 336, column: 1, scope: !5414)
!5432 = distinct !DISubprogram(name: "i830_check_flags", scope: !3, file: !3, line: 833, type: !3103, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5433 = !DILocalVariable(name: "flags", arg: 1, scope: !5432, file: !3, line: 833, type: !7)
!5434 = !DILocation(line: 833, column: 43, scope: !5432)
!5435 = !DILocation(line: 835, column: 10, scope: !5432)
!5436 = !DILocation(line: 835, column: 2, scope: !5432)
!5437 = !DILocation(line: 840, column: 3, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 835, column: 17)
!5439 = !DILocation(line: 843, column: 2, scope: !5432)
!5440 = !DILocation(line: 844, column: 1, scope: !5432)
!5441 = distinct !DISubprogram(name: "virt_to_phys", scope: !4866, file: !4866, line: 129, type: !5442, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!2346, !4869}
!5444 = !DILocalVariable(name: "address", arg: 1, scope: !5441, file: !4866, line: 129, type: !4869)
!5445 = !DILocation(line: 129, column: 55, scope: !5441)
!5446 = !DILocation(line: 131, column: 9, scope: !5441)
!5447 = !DILocation(line: 131, column: 2, scope: !5441)
!5448 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5449, file: !5449, line: 18, type: !5450, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5449 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!168, !168}
!5452 = !DILocalVariable(name: "x", arg: 1, scope: !5448, file: !5449, line: 18, type: !168)
!5453 = !DILocation(line: 18, column: 63, scope: !5448)
!5454 = !DILocalVariable(name: "y", scope: !5448, file: !5449, line: 20, type: !168)
!5455 = !DILocation(line: 20, column: 16, scope: !5448)
!5456 = !DILocation(line: 20, column: 20, scope: !5448)
!5457 = !DILocation(line: 20, column: 22, scope: !5448)
!5458 = !DILocation(line: 23, column: 6, scope: !5448)
!5459 = !DILocation(line: 23, column: 12, scope: !5448)
!5460 = !DILocation(line: 23, column: 16, scope: !5448)
!5461 = !DILocation(line: 23, column: 14, scope: !5448)
!5462 = !DILocation(line: 23, column: 11, scope: !5448)
!5463 = !DILocation(line: 23, column: 21, scope: !5448)
!5464 = !DILocation(line: 23, column: 55, scope: !5448)
!5465 = !DILocation(line: 23, column: 53, scope: !5448)
!5466 = !DILocation(line: 23, column: 8, scope: !5448)
!5467 = !DILocation(line: 23, column: 4, scope: !5448)
!5468 = !DILocation(line: 25, column: 9, scope: !5448)
!5469 = !DILocation(line: 25, column: 2, scope: !5448)
!5470 = distinct !DISubprogram(name: "__writel", scope: !4866, file: !4866, line: 71, type: !4867, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5471 = !DILocalVariable(name: "val", arg: 1, scope: !5470, file: !4866, line: 71, type: !7)
!5472 = !DILocation(line: 71, column: 1, scope: !5470)
!5473 = !DILocalVariable(name: "addr", arg: 2, scope: !5470, file: !4866, line: 71, type: !4869)
!5474 = !{i32 -2143395584}
!5475 = distinct !DISubprogram(name: "i830_setup", scope: !3, file: !3, line: 791, type: !3093, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5476 = !DILocalVariable(name: "reg_addr", scope: !5475, file: !3, line: 793, type: !2346)
!5477 = !DILocation(line: 793, column: 14, scope: !5475)
!5478 = !DILocation(line: 795, column: 13, scope: !5475)
!5479 = !DILocation(line: 795, column: 11, scope: !5475)
!5480 = !DILocation(line: 797, column: 36, scope: !5475)
!5481 = !DILocation(line: 797, column: 28, scope: !5475)
!5482 = !DILocation(line: 797, column: 26, scope: !5475)
!5483 = !DILocation(line: 798, column: 21, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 798, column: 6)
!5485 = !DILocation(line: 798, column: 7, scope: !5484)
!5486 = !DILocation(line: 798, column: 6, scope: !5475)
!5487 = !DILocation(line: 799, column: 3, scope: !5484)
!5488 = !DILocation(line: 801, column: 32, scope: !5475)
!5489 = !DILocation(line: 801, column: 41, scope: !5475)
!5490 = !DILocation(line: 801, column: 30, scope: !5475)
!5491 = !DILocation(line: 803, column: 2, scope: !5475)
!5492 = !DILocation(line: 804, column: 1, scope: !5475)
!5493 = distinct !DISubprogram(name: "i830_cleanup", scope: !3, file: !3, line: 696, type: !2103, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5494 = !DILocation(line: 698, column: 1, scope: !5493)
!5495 = distinct !DISubprogram(name: "i830_write_entry", scope: !3, file: !3, line: 735, type: !3099, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5496 = !DILocalVariable(name: "addr", arg: 1, scope: !5495, file: !3, line: 735, type: !178)
!5497 = !DILocation(line: 735, column: 41, scope: !5495)
!5498 = !DILocalVariable(name: "entry", arg: 2, scope: !5495, file: !3, line: 735, type: !7)
!5499 = !DILocation(line: 735, column: 60, scope: !5495)
!5500 = !DILocalVariable(name: "flags", arg: 3, scope: !5495, file: !3, line: 736, type: !7)
!5501 = !DILocation(line: 736, column: 22, scope: !5495)
!5502 = !DILocalVariable(name: "pte_flags", scope: !5495, file: !3, line: 738, type: !171)
!5503 = !DILocation(line: 738, column: 6, scope: !5495)
!5504 = !DILocation(line: 740, column: 6, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 740, column: 6)
!5506 = !DILocation(line: 740, column: 12, scope: !5505)
!5507 = !DILocation(line: 740, column: 6, scope: !5495)
!5508 = !DILocation(line: 741, column: 13, scope: !5505)
!5509 = !DILocation(line: 741, column: 3, scope: !5505)
!5510 = !DILocation(line: 743, column: 2, scope: !5495)
!5511 = !DILocation(line: 744, column: 1, scope: !5495)
!5512 = distinct !DISubprogram(name: "i830_chipset_flush", scope: !3, file: !3, line: 710, type: !2103, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5513 = !DILocalVariable(name: "m", arg: 1, scope: !5514, file: !5515, line: 363, type: !2751)
!5514 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5515, file: !5515, line: 363, type: !5516, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5515 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!168, !2751}
!5518 = !DILocation(line: 363, column: 74, scope: !5514, inlinedAt: !5519)
!5519 = distinct !DILocation(line: 712, column: 36, scope: !5512)
!5520 = !DILocalVariable(name: "timeout", scope: !5512, file: !3, line: 712, type: !168)
!5521 = !DILocation(line: 712, column: 16, scope: !5512)
!5522 = !DILocation(line: 712, column: 26, scope: !5512)
!5523 = !DILocation(line: 365, column: 27, scope: !5524, inlinedAt: !5519)
!5524 = distinct !DILexicalBlock(scope: !5514, file: !5515, line: 365, column: 6)
!5525 = !DILocation(line: 365, column: 6, scope: !5524, inlinedAt: !5519)
!5526 = !DILocation(line: 365, column: 6, scope: !5514, inlinedAt: !5519)
!5527 = !DILocation(line: 366, column: 12, scope: !5528, inlinedAt: !5519)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !5515, line: 366, column: 7)
!5529 = distinct !DILexicalBlock(scope: !5524, file: !5515, line: 365, column: 31)
!5530 = !DILocation(line: 366, column: 14, scope: !5528, inlinedAt: !5519)
!5531 = !DILocation(line: 366, column: 7, scope: !5529, inlinedAt: !5519)
!5532 = !DILocation(line: 367, column: 4, scope: !5528, inlinedAt: !5519)
!5533 = !DILocation(line: 368, column: 28, scope: !5529, inlinedAt: !5519)
!5534 = !DILocation(line: 368, column: 10, scope: !5529, inlinedAt: !5519)
!5535 = !DILocation(line: 368, column: 3, scope: !5529, inlinedAt: !5519)
!5536 = !DILocation(line: 370, column: 29, scope: !5537, inlinedAt: !5519)
!5537 = distinct !DILexicalBlock(scope: !5524, file: !5515, line: 369, column: 9)
!5538 = !DILocation(line: 370, column: 10, scope: !5537, inlinedAt: !5519)
!5539 = !DILocation(line: 370, column: 3, scope: !5537, inlinedAt: !5519)
!5540 = !DILocation(line: 372, column: 1, scope: !5514, inlinedAt: !5519)
!5541 = !DILocation(line: 712, column: 34, scope: !5512)
!5542 = !DILocation(line: 717, column: 2, scope: !5512)
!5543 = !DILocation(line: 724, column: 29, scope: !5512)
!5544 = !DILocation(line: 724, column: 38, scope: !5512)
!5545 = !DILocation(line: 724, column: 9, scope: !5512)
!5546 = !DILocation(line: 724, column: 49, scope: !5512)
!5547 = !DILocation(line: 725, column: 23, scope: !5512)
!5548 = !DILocation(line: 725, column: 32, scope: !5512)
!5549 = !DILocation(line: 724, column: 2, scope: !5512)
!5550 = !DILocation(line: 727, column: 2, scope: !5512)
!5551 = !DILocation(line: 727, column: 29, scope: !5512)
!5552 = !DILocation(line: 727, column: 38, scope: !5512)
!5553 = !DILocation(line: 727, column: 9, scope: !5512)
!5554 = !DILocation(line: 727, column: 49, scope: !5512)
!5555 = !DILocation(line: 728, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 728, column: 7)
!5557 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 727, column: 60)
!5558 = !DILocation(line: 728, column: 7, scope: !5557)
!5559 = !DILocation(line: 729, column: 4, scope: !5556)
!5560 = !DILocation(line: 731, column: 3, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 731, column: 3)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 731, column: 3)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 731, column: 3)
!5564 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 731, column: 3)
!5565 = distinct !{!5565, !5550, !5566}
!5566 = !DILocation(line: 732, column: 2, scope: !5512)
!5567 = !DILocation(line: 733, column: 1, scope: !5512)
!5568 = distinct !DISubprogram(name: "wbinvd_on_all_cpus", scope: !5569, file: !5569, line: 168, type: !3093, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5569 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/lizy2001/genbc/linux")
!5570 = !DILocation(line: 170, column: 2, scope: !5568)
!5571 = !DILocation(line: 171, column: 2, scope: !5568)
!5572 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5515, file: !5515, line: 308, type: !5516, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5573 = !DILocalVariable(name: "m", arg: 1, scope: !5572, file: !5515, line: 308, type: !2751)
!5574 = !DILocation(line: 308, column: 66, scope: !5572)
!5575 = !DILocation(line: 310, column: 10, scope: !5572)
!5576 = !DILocation(line: 310, column: 12, scope: !5572)
!5577 = !DILocation(line: 310, column: 34, scope: !5572)
!5578 = !DILocation(line: 310, column: 39, scope: !5572)
!5579 = !DILocation(line: 310, column: 2, scope: !5572)
!5580 = distinct !DISubprogram(name: "wbinvd", scope: !5581, file: !5581, line: 158, type: !2103, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5581 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5582 = !DILocalVariable(name: "__edi", scope: !5583, file: !5581, line: 160, type: !168)
!5583 = distinct !DILexicalBlock(scope: !5580, file: !5581, line: 160, column: 2)
!5584 = !DILocation(line: 160, column: 2, scope: !5583)
!5585 = !DILocalVariable(name: "__esi", scope: !5583, file: !5581, line: 160, type: !168)
!5586 = !DILocalVariable(name: "__edx", scope: !5583, file: !5581, line: 160, type: !168)
!5587 = !DILocalVariable(name: "__ecx", scope: !5583, file: !5581, line: 160, type: !168)
!5588 = !DILocalVariable(name: "__eax", scope: !5583, file: !5581, line: 160, type: !168)
!5589 = !{i32 -2145958503, i32 -2145957621, i32 -2145957387, i32 -2145957336, i32 -2145957308, i32 -2145957283, i32 -2145957599, i32 -2145957586, i32 -2145957148, i32 -2145957029, i32 -2145957494, i32 -2145957467, i32 -2145957439, i32 -2145957409}
!5590 = !DILocation(line: 161, column: 1, scope: !5580)
!5591 = distinct !DISubprogram(name: "i9xx_setup", scope: !3, file: !3, line: 1131, type: !3093, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5592 = !DILocalVariable(name: "reg_addr", scope: !5591, file: !3, line: 1133, type: !2346)
!5593 = !DILocation(line: 1133, column: 14, scope: !5591)
!5594 = !DILocalVariable(name: "size", scope: !5591, file: !3, line: 1134, type: !170)
!5595 = !DILocation(line: 1134, column: 6, scope: !5591)
!5596 = !DILocation(line: 1136, column: 13, scope: !5591)
!5597 = !DILocation(line: 1136, column: 11, scope: !5591)
!5598 = !DILocation(line: 1138, column: 36, scope: !5591)
!5599 = !DILocation(line: 1138, column: 46, scope: !5591)
!5600 = !DILocation(line: 1138, column: 28, scope: !5591)
!5601 = !DILocation(line: 1138, column: 26, scope: !5591)
!5602 = !DILocation(line: 1139, column: 21, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 1139, column: 6)
!5604 = !DILocation(line: 1139, column: 7, scope: !5603)
!5605 = !DILocation(line: 1139, column: 6, scope: !5591)
!5606 = !DILocation(line: 1140, column: 3, scope: !5603)
!5607 = !DILocation(line: 1142, column: 10, scope: !5591)
!5608 = !DILocation(line: 1142, column: 2, scope: !5591)
!5609 = !DILocation(line: 1145, column: 4, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 1142, column: 25)
!5611 = !DILocation(line: 1144, column: 31, scope: !5610)
!5612 = !DILocation(line: 1146, column: 3, scope: !5610)
!5613 = !DILocation(line: 1148, column: 33, scope: !5610)
!5614 = !DILocation(line: 1148, column: 42, scope: !5610)
!5615 = !DILocation(line: 1148, column: 31, scope: !5610)
!5616 = !DILocation(line: 1149, column: 3, scope: !5610)
!5617 = !DILocation(line: 1151, column: 33, scope: !5610)
!5618 = !DILocation(line: 1151, column: 42, scope: !5610)
!5619 = !DILocation(line: 1151, column: 31, scope: !5610)
!5620 = !DILocation(line: 1152, column: 3, scope: !5610)
!5621 = !DILocation(line: 1155, column: 2, scope: !5591)
!5622 = !DILocation(line: 1157, column: 2, scope: !5591)
!5623 = !DILocation(line: 1158, column: 1, scope: !5591)
!5624 = distinct !DISubprogram(name: "i9xx_cleanup", scope: !3, file: !3, line: 1099, type: !2103, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5625 = !DILocation(line: 1101, column: 20, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1101, column: 6)
!5627 = !DILocation(line: 1101, column: 6, scope: !5626)
!5628 = !DILocation(line: 1101, column: 6, scope: !5624)
!5629 = !DILocation(line: 1102, column: 25, scope: !5626)
!5630 = !DILocation(line: 1102, column: 3, scope: !5626)
!5631 = !DILocation(line: 1103, column: 20, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1103, column: 6)
!5633 = !DILocation(line: 1103, column: 6, scope: !5632)
!5634 = !DILocation(line: 1103, column: 6, scope: !5624)
!5635 = !DILocation(line: 1104, column: 3, scope: !5632)
!5636 = !DILocation(line: 1105, column: 35, scope: !5624)
!5637 = !DILocation(line: 1106, column: 31, scope: !5624)
!5638 = !DILocation(line: 1107, column: 1, scope: !5624)
!5639 = distinct !DISubprogram(name: "i9xx_chipset_flush", scope: !3, file: !3, line: 1109, type: !2103, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5640 = !DILocation(line: 1111, column: 2, scope: !5639)
!5641 = !{i32 -2140821638}
!5642 = !DILocation(line: 1112, column: 20, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 1112, column: 6)
!5644 = !DILocation(line: 1112, column: 6, scope: !5643)
!5645 = !DILocation(line: 1112, column: 6, scope: !5639)
!5646 = !DILocation(line: 1113, column: 27, scope: !5643)
!5647 = !DILocation(line: 1113, column: 3, scope: !5643)
!5648 = !DILocation(line: 1114, column: 1, scope: !5639)
!5649 = distinct !DISubprogram(name: "intel_i9xx_setup_flush", scope: !3, file: !3, line: 1072, type: !2103, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5650 = !DILocation(line: 1075, column: 33, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 1075, column: 6)
!5652 = !DILocation(line: 1075, column: 6, scope: !5651)
!5653 = !DILocation(line: 1075, column: 6, scope: !5649)
!5654 = !DILocation(line: 1076, column: 3, scope: !5651)
!5655 = !DILocation(line: 1078, column: 6, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 1078, column: 6)
!5657 = !DILocation(line: 1078, column: 20, scope: !5656)
!5658 = !DILocation(line: 1078, column: 6, scope: !5649)
!5659 = !DILocation(line: 1079, column: 3, scope: !5656)
!5660 = !DILocation(line: 1082, column: 34, scope: !5649)
!5661 = !DILocation(line: 1083, column: 35, scope: !5649)
!5662 = !DILocation(line: 1086, column: 6, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 1086, column: 6)
!5664 = !DILocation(line: 1086, column: 13, scope: !5663)
!5665 = !DILocation(line: 1086, column: 16, scope: !5663)
!5666 = !DILocation(line: 1086, column: 30, scope: !5663)
!5667 = !DILocation(line: 1086, column: 6, scope: !5649)
!5668 = !DILocation(line: 1087, column: 3, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 1086, column: 36)
!5670 = !DILocation(line: 1088, column: 2, scope: !5669)
!5671 = !DILocation(line: 1089, column: 3, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 1088, column: 9)
!5673 = !DILocation(line: 1092, column: 33, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 1092, column: 6)
!5675 = !DILocation(line: 1092, column: 6, scope: !5674)
!5676 = !DILocation(line: 1092, column: 6, scope: !5649)
!5677 = !DILocation(line: 1093, column: 70, scope: !5674)
!5678 = !DILocation(line: 1093, column: 35, scope: !5674)
!5679 = !DILocation(line: 1093, column: 33, scope: !5674)
!5680 = !DILocation(line: 1093, column: 3, scope: !5674)
!5681 = !DILocation(line: 1094, column: 21, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 1094, column: 6)
!5683 = !DILocation(line: 1094, column: 7, scope: !5682)
!5684 = !DILocation(line: 1094, column: 6, scope: !5649)
!5685 = !DILocation(line: 1095, column: 3, scope: !5682)
!5686 = !DILocation(line: 1097, column: 1, scope: !5649)
!5687 = distinct !DISubprogram(name: "intel_i965_g33_setup_chipset_flush", scope: !3, file: !3, line: 1040, type: !2103, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5688 = !DILocalVariable(name: "temp_hi", scope: !5687, file: !3, line: 1042, type: !171)
!5689 = !DILocation(line: 1042, column: 6, scope: !5687)
!5690 = !DILocalVariable(name: "temp_lo", scope: !5687, file: !3, line: 1042, type: !171)
!5691 = !DILocation(line: 1042, column: 15, scope: !5687)
!5692 = !DILocalVariable(name: "ret", scope: !5687, file: !3, line: 1043, type: !170)
!5693 = !DILocation(line: 1043, column: 6, scope: !5687)
!5694 = !DILocation(line: 1045, column: 38, scope: !5687)
!5695 = !DILocation(line: 1045, column: 2, scope: !5687)
!5696 = !DILocation(line: 1046, column: 38, scope: !5687)
!5697 = !DILocation(line: 1046, column: 2, scope: !5687)
!5698 = !DILocation(line: 1048, column: 8, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 1048, column: 6)
!5700 = !DILocation(line: 1048, column: 16, scope: !5699)
!5701 = !DILocation(line: 1048, column: 6, scope: !5687)
!5702 = !DILocation(line: 1050, column: 3, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 1048, column: 24)
!5704 = !DILocation(line: 1052, column: 32, scope: !5703)
!5705 = !DILocation(line: 1053, column: 40, scope: !5703)
!5706 = !DILocation(line: 1054, column: 4, scope: !5703)
!5707 = !DILocation(line: 1053, column: 3, scope: !5703)
!5708 = !DILocation(line: 1055, column: 40, scope: !5703)
!5709 = !DILocation(line: 1055, column: 94, scope: !5703)
!5710 = !DILocation(line: 1055, column: 100, scope: !5703)
!5711 = !DILocation(line: 1055, column: 114, scope: !5703)
!5712 = !DILocation(line: 1055, column: 66, scope: !5703)
!5713 = !DILocation(line: 1055, column: 3, scope: !5703)
!5714 = !DILocation(line: 1056, column: 2, scope: !5703)
!5715 = !DILocalVariable(name: "l64", scope: !5716, file: !3, line: 1057, type: !175)
!5716 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 1056, column: 9)
!5717 = !DILocation(line: 1057, column: 7, scope: !5716)
!5718 = !DILocation(line: 1059, column: 11, scope: !5716)
!5719 = !DILocation(line: 1060, column: 15, scope: !5716)
!5720 = !DILocation(line: 1060, column: 10, scope: !5716)
!5721 = !DILocation(line: 1060, column: 23, scope: !5716)
!5722 = !DILocation(line: 1060, column: 32, scope: !5716)
!5723 = !DILocation(line: 1060, column: 30, scope: !5716)
!5724 = !DILocation(line: 1060, column: 7, scope: !5716)
!5725 = !DILocation(line: 1062, column: 32, scope: !5716)
!5726 = !DILocation(line: 1063, column: 38, scope: !5716)
!5727 = !DILocation(line: 1063, column: 36, scope: !5716)
!5728 = !DILocation(line: 1064, column: 36, scope: !5716)
!5729 = !DILocation(line: 1064, column: 40, scope: !5716)
!5730 = !DILocation(line: 1064, column: 34, scope: !5716)
!5731 = !DILocation(line: 1065, column: 9, scope: !5716)
!5732 = !DILocation(line: 1065, column: 7, scope: !5716)
!5733 = !DILocation(line: 1067, column: 7, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 1067, column: 7)
!5735 = !DILocation(line: 1067, column: 7, scope: !5716)
!5736 = !DILocation(line: 1068, column: 33, scope: !5734)
!5737 = !DILocation(line: 1068, column: 4, scope: !5734)
!5738 = !DILocation(line: 1070, column: 1, scope: !5687)
!5739 = distinct !DISubprogram(name: "intel_i915_setup_chipset_flush", scope: !3, file: !3, line: 1017, type: !2103, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5740 = !DILocalVariable(name: "ret", scope: !5739, file: !3, line: 1019, type: !170)
!5741 = !DILocation(line: 1019, column: 6, scope: !5739)
!5742 = !DILocalVariable(name: "temp", scope: !5739, file: !3, line: 1020, type: !171)
!5743 = !DILocation(line: 1020, column: 6, scope: !5739)
!5744 = !DILocation(line: 1022, column: 38, scope: !5739)
!5745 = !DILocation(line: 1022, column: 2, scope: !5739)
!5746 = !DILocation(line: 1023, column: 8, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 1023, column: 6)
!5748 = !DILocation(line: 1023, column: 13, scope: !5747)
!5749 = !DILocation(line: 1023, column: 6, scope: !5739)
!5750 = !DILocation(line: 1024, column: 3, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 1023, column: 21)
!5752 = !DILocation(line: 1025, column: 32, scope: !5751)
!5753 = !DILocation(line: 1026, column: 40, scope: !5751)
!5754 = !DILocation(line: 1026, column: 94, scope: !5751)
!5755 = !DILocation(line: 1026, column: 100, scope: !5751)
!5756 = !DILocation(line: 1026, column: 114, scope: !5751)
!5757 = !DILocation(line: 1026, column: 66, scope: !5751)
!5758 = !DILocation(line: 1026, column: 3, scope: !5751)
!5759 = !DILocation(line: 1027, column: 2, scope: !5751)
!5760 = !DILocation(line: 1028, column: 8, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 1027, column: 9)
!5762 = !DILocation(line: 1030, column: 32, scope: !5761)
!5763 = !DILocation(line: 1031, column: 38, scope: !5761)
!5764 = !DILocation(line: 1031, column: 36, scope: !5761)
!5765 = !DILocation(line: 1032, column: 36, scope: !5761)
!5766 = !DILocation(line: 1032, column: 41, scope: !5761)
!5767 = !DILocation(line: 1032, column: 34, scope: !5761)
!5768 = !DILocation(line: 1033, column: 9, scope: !5761)
!5769 = !DILocation(line: 1033, column: 7, scope: !5761)
!5770 = !DILocation(line: 1035, column: 7, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 1035, column: 7)
!5772 = !DILocation(line: 1035, column: 7, scope: !5761)
!5773 = !DILocation(line: 1036, column: 33, scope: !5771)
!5774 = !DILocation(line: 1036, column: 4, scope: !5771)
!5775 = !DILocation(line: 1038, column: 1, scope: !5739)
!5776 = distinct !DISubprogram(name: "intel_alloc_chipset_flush_resource", scope: !3, file: !3, line: 1007, type: !3093, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5777 = !DILocalVariable(name: "ret", scope: !5776, file: !3, line: 1009, type: !170)
!5778 = !DILocation(line: 1009, column: 6, scope: !5776)
!5779 = !DILocation(line: 1010, column: 45, scope: !5776)
!5780 = !DILocation(line: 1010, column: 57, scope: !5776)
!5781 = !DILocation(line: 1011, column: 21, scope: !5776)
!5782 = !DILocation(line: 1012, column: 48, scope: !5776)
!5783 = !DILocation(line: 1012, column: 34, scope: !5776)
!5784 = !DILocation(line: 1010, column: 8, scope: !5776)
!5785 = !DILocation(line: 1010, column: 6, scope: !5776)
!5786 = !DILocation(line: 1014, column: 9, scope: !5776)
!5787 = !DILocation(line: 1014, column: 2, scope: !5776)
!5788 = distinct !DISubprogram(name: "i965_write_entry", scope: !3, file: !3, line: 1116, type: !3099, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5789 = !DILocalVariable(name: "addr", arg: 1, scope: !5788, file: !3, line: 1116, type: !178)
!5790 = !DILocation(line: 1116, column: 41, scope: !5788)
!5791 = !DILocalVariable(name: "entry", arg: 2, scope: !5788, file: !3, line: 1117, type: !7)
!5792 = !DILocation(line: 1117, column: 22, scope: !5788)
!5793 = !DILocalVariable(name: "flags", arg: 3, scope: !5788, file: !3, line: 1118, type: !7)
!5794 = !DILocation(line: 1118, column: 22, scope: !5788)
!5795 = !DILocalVariable(name: "pte_flags", scope: !5788, file: !3, line: 1120, type: !171)
!5796 = !DILocation(line: 1120, column: 6, scope: !5788)
!5797 = !DILocation(line: 1122, column: 12, scope: !5788)
!5798 = !DILocation(line: 1123, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 1123, column: 6)
!5800 = !DILocation(line: 1123, column: 12, scope: !5799)
!5801 = !DILocation(line: 1123, column: 6, scope: !5788)
!5802 = !DILocation(line: 1124, column: 13, scope: !5799)
!5803 = !DILocation(line: 1124, column: 3, scope: !5799)
!5804 = !DILocation(line: 1127, column: 11, scope: !5788)
!5805 = !DILocation(line: 1127, column: 16, scope: !5788)
!5806 = !DILocation(line: 1127, column: 23, scope: !5788)
!5807 = !DILocation(line: 1127, column: 7, scope: !5788)
!5808 = !DILocation(line: 1128, column: 2, scope: !5788)
!5809 = !DILocation(line: 1129, column: 1, scope: !5788)
!5810 = distinct !DISubprogram(name: "intel_fake_agp_fetch_size", scope: !3, file: !3, line: 676, type: !3093, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5811 = !DILocalVariable(name: "num_sizes", scope: !5810, file: !3, line: 678, type: !170)
!5812 = !DILocation(line: 678, column: 6, scope: !5810)
!5813 = !DILocalVariable(name: "aper_size", scope: !5810, file: !3, line: 679, type: !7)
!5814 = !DILocation(line: 679, column: 15, scope: !5810)
!5815 = !DILocalVariable(name: "i", scope: !5810, file: !3, line: 680, type: !170)
!5816 = !DILocation(line: 680, column: 6, scope: !5810)
!5817 = !DILocation(line: 682, column: 29, scope: !5810)
!5818 = !DILocation(line: 682, column: 50, scope: !5810)
!5819 = !DILocation(line: 682, column: 65, scope: !5810)
!5820 = !DILocation(line: 682, column: 12, scope: !5810)
!5821 = !DILocation(line: 684, column: 9, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 684, column: 2)
!5823 = !DILocation(line: 684, column: 7, scope: !5822)
!5824 = !DILocation(line: 684, column: 14, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 684, column: 2)
!5826 = !DILocation(line: 684, column: 18, scope: !5825)
!5827 = !DILocation(line: 684, column: 16, scope: !5825)
!5828 = !DILocation(line: 684, column: 2, scope: !5822)
!5829 = !DILocation(line: 685, column: 7, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 685, column: 7)
!5831 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 684, column: 34)
!5832 = !DILocation(line: 685, column: 41, scope: !5830)
!5833 = !DILocation(line: 685, column: 20, scope: !5830)
!5834 = !DILocation(line: 685, column: 44, scope: !5830)
!5835 = !DILocation(line: 685, column: 17, scope: !5830)
!5836 = !DILocation(line: 685, column: 7, scope: !5831)
!5837 = !DILocation(line: 687, column: 38, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 685, column: 50)
!5839 = !DILocation(line: 687, column: 36, scope: !5838)
!5840 = !DILocation(line: 687, column: 5, scope: !5838)
!5841 = !DILocation(line: 686, column: 4, scope: !5838)
!5842 = !DILocation(line: 686, column: 16, scope: !5838)
!5843 = !DILocation(line: 686, column: 29, scope: !5838)
!5844 = !DILocation(line: 688, column: 11, scope: !5838)
!5845 = !DILocation(line: 688, column: 4, scope: !5838)
!5846 = !DILocation(line: 690, column: 2, scope: !5831)
!5847 = !DILocation(line: 684, column: 30, scope: !5825)
!5848 = !DILocation(line: 684, column: 2, scope: !5825)
!5849 = distinct !{!5849, !5828, !5850}
!5850 = !DILocation(line: 690, column: 2, scope: !5822)
!5851 = !DILocation(line: 692, column: 2, scope: !5810)
!5852 = !DILocation(line: 693, column: 1, scope: !5810)
!5853 = distinct !DISubprogram(name: "intel_fake_agp_configure", scope: !3, file: !3, line: 821, type: !3093, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5854 = !DILocation(line: 823, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 823, column: 6)
!5856 = !DILocation(line: 823, column: 6, scope: !5853)
!5857 = !DILocation(line: 824, column: 6, scope: !5855)
!5858 = !DILocation(line: 826, column: 31, scope: !5853)
!5859 = !DILocation(line: 827, column: 44, scope: !5853)
!5860 = !DILocation(line: 827, column: 2, scope: !5853)
!5861 = !DILocation(line: 827, column: 14, scope: !5853)
!5862 = !DILocation(line: 827, column: 28, scope: !5853)
!5863 = !DILocation(line: 829, column: 2, scope: !5853)
!5864 = !DILocation(line: 830, column: 1, scope: !5853)
!5865 = distinct !DISubprogram(name: "intel_fake_agp_enable", scope: !3, file: !3, line: 138, type: !3146, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5866 = !DILocalVariable(name: "bridge", arg: 1, scope: !5865, file: !3, line: 138, type: !3148)
!5867 = !DILocation(line: 138, column: 59, scope: !5865)
!5868 = !DILocalVariable(name: "mode", arg: 2, scope: !5865, file: !3, line: 138, type: !171)
!5869 = !DILocation(line: 138, column: 71, scope: !5865)
!5870 = !DILocation(line: 140, column: 2, scope: !5865)
!5871 = distinct !DISubprogram(name: "intel_gtt_cleanup", scope: !3, file: !3, line: 560, type: !2103, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5872 = !DILocation(line: 562, column: 16, scope: !5871)
!5873 = !DILocation(line: 562, column: 24, scope: !5871)
!5874 = !DILocation(line: 562, column: 2, scope: !5871)
!5875 = !DILocation(line: 564, column: 24, scope: !5871)
!5876 = !DILocation(line: 564, column: 10, scope: !5871)
!5877 = !DILocation(line: 564, column: 2, scope: !5871)
!5878 = !DILocation(line: 565, column: 24, scope: !5871)
!5879 = !DILocation(line: 565, column: 2, scope: !5871)
!5880 = !DILocation(line: 567, column: 2, scope: !5871)
!5881 = !DILocation(line: 568, column: 1, scope: !5871)
!5882 = distinct !DISubprogram(name: "intel_fake_agp_create_gatt_table", scope: !3, file: !3, line: 807, type: !4727, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5883 = !DILocalVariable(name: "bridge", arg: 1, scope: !5882, file: !3, line: 807, type: !3148)
!5884 = !DILocation(line: 807, column: 69, scope: !5882)
!5885 = !DILocation(line: 809, column: 2, scope: !5882)
!5886 = !DILocation(line: 809, column: 14, scope: !5882)
!5887 = !DILocation(line: 809, column: 30, scope: !5882)
!5888 = !DILocation(line: 810, column: 2, scope: !5882)
!5889 = !DILocation(line: 810, column: 14, scope: !5882)
!5890 = !DILocation(line: 810, column: 25, scope: !5882)
!5891 = !DILocation(line: 811, column: 2, scope: !5882)
!5892 = !DILocation(line: 811, column: 14, scope: !5882)
!5893 = !DILocation(line: 811, column: 28, scope: !5882)
!5894 = !DILocation(line: 813, column: 2, scope: !5882)
!5895 = distinct !DISubprogram(name: "intel_fake_agp_free_gatt_table", scope: !3, file: !3, line: 816, type: !4727, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5896 = !DILocalVariable(name: "bridge", arg: 1, scope: !5895, file: !3, line: 816, type: !3148)
!5897 = !DILocation(line: 816, column: 67, scope: !5895)
!5898 = !DILocation(line: 818, column: 2, scope: !5895)
!5899 = distinct !DISubprogram(name: "intel_fake_agp_insert_entries", scope: !3, file: !3, line: 899, type: !4732, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!5900 = !DILocalVariable(name: "mem", arg: 1, scope: !5899, file: !3, line: 899, type: !4691)
!5901 = !DILocation(line: 899, column: 61, scope: !5899)
!5902 = !DILocalVariable(name: "pg_start", arg: 2, scope: !5899, file: !3, line: 900, type: !4702)
!5903 = !DILocation(line: 900, column: 13, scope: !5899)
!5904 = !DILocalVariable(name: "type", arg: 3, scope: !5899, file: !3, line: 900, type: !170)
!5905 = !DILocation(line: 900, column: 27, scope: !5899)
!5906 = !DILocalVariable(name: "ret", scope: !5899, file: !3, line: 902, type: !170)
!5907 = !DILocation(line: 902, column: 6, scope: !5899)
!5908 = !DILocation(line: 904, column: 20, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 904, column: 6)
!5910 = !DILocation(line: 904, column: 6, scope: !5899)
!5911 = !DILocalVariable(name: "start", scope: !5912, file: !3, line: 905, type: !170)
!5912 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 904, column: 36)
!5913 = !DILocation(line: 905, column: 7, scope: !5912)
!5914 = !DILocation(line: 905, column: 29, scope: !5912)
!5915 = !DILocation(line: 905, column: 41, scope: !5912)
!5916 = !DILocation(line: 905, column: 15, scope: !5912)
!5917 = !DILocalVariable(name: "end", scope: !5912, file: !3, line: 906, type: !170)
!5918 = !DILocation(line: 906, column: 7, scope: !5912)
!5919 = !DILocation(line: 906, column: 27, scope: !5912)
!5920 = !DILocation(line: 907, column: 25, scope: !5912)
!5921 = !DILocation(line: 907, column: 32, scope: !5912)
!5922 = !DILocation(line: 907, column: 38, scope: !5912)
!5923 = !DILocation(line: 907, column: 36, scope: !5912)
!5924 = !DILocation(line: 907, column: 3, scope: !5912)
!5925 = !DILocation(line: 908, column: 32, scope: !5912)
!5926 = !DILocation(line: 909, column: 2, scope: !5912)
!5927 = !DILocation(line: 911, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 911, column: 6)
!5929 = !DILocation(line: 911, column: 20, scope: !5928)
!5930 = !DILocation(line: 911, column: 25, scope: !5928)
!5931 = !DILocation(line: 911, column: 28, scope: !5928)
!5932 = !DILocation(line: 911, column: 33, scope: !5928)
!5933 = !DILocation(line: 911, column: 6, scope: !5899)
!5934 = !DILocation(line: 912, column: 37, scope: !5928)
!5935 = !DILocation(line: 912, column: 42, scope: !5928)
!5936 = !DILocation(line: 912, column: 52, scope: !5928)
!5937 = !DILocation(line: 912, column: 10, scope: !5928)
!5938 = !DILocation(line: 912, column: 3, scope: !5928)
!5939 = !DILocation(line: 914, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 914, column: 6)
!5941 = !DILocation(line: 914, column: 11, scope: !5940)
!5942 = !DILocation(line: 914, column: 22, scope: !5940)
!5943 = !DILocation(line: 914, column: 6, scope: !5899)
!5944 = !DILocation(line: 915, column: 3, scope: !5940)
!5945 = !DILocation(line: 917, column: 6, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 917, column: 6)
!5947 = !DILocation(line: 917, column: 17, scope: !5946)
!5948 = !DILocation(line: 917, column: 22, scope: !5946)
!5949 = !DILocation(line: 917, column: 15, scope: !5946)
!5950 = !DILocation(line: 917, column: 49, scope: !5946)
!5951 = !DILocation(line: 917, column: 35, scope: !5946)
!5952 = !DILocation(line: 917, column: 33, scope: !5946)
!5953 = !DILocation(line: 917, column: 6, scope: !5899)
!5954 = !DILocation(line: 918, column: 3, scope: !5946)
!5955 = !DILocation(line: 920, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 920, column: 6)
!5957 = !DILocation(line: 920, column: 14, scope: !5956)
!5958 = !DILocation(line: 920, column: 19, scope: !5956)
!5959 = !DILocation(line: 920, column: 11, scope: !5956)
!5960 = !DILocation(line: 920, column: 6, scope: !5899)
!5961 = !DILocation(line: 921, column: 3, scope: !5956)
!5962 = !DILocation(line: 923, column: 21, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 923, column: 6)
!5964 = !DILocation(line: 923, column: 29, scope: !5963)
!5965 = !DILocation(line: 923, column: 41, scope: !5963)
!5966 = !DILocation(line: 923, column: 7, scope: !5963)
!5967 = !DILocation(line: 923, column: 6, scope: !5899)
!5968 = !DILocation(line: 924, column: 3, scope: !5963)
!5969 = !DILocation(line: 926, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 926, column: 6)
!5971 = !DILocation(line: 926, column: 12, scope: !5970)
!5972 = !DILocation(line: 926, column: 6, scope: !5899)
!5973 = !DILocation(line: 927, column: 3, scope: !5970)
!5974 = !DILocation(line: 929, column: 20, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 929, column: 6)
!5976 = !DILocation(line: 929, column: 6, scope: !5975)
!5977 = !DILocation(line: 929, column: 6, scope: !5899)
!5978 = !DILocalVariable(name: "st", scope: !5979, file: !3, line: 930, type: !4915)
!5979 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 929, column: 32)
!5980 = !DILocation(line: 930, column: 19, scope: !5979)
!5981 = !DILocation(line: 932, column: 30, scope: !5979)
!5982 = !DILocation(line: 932, column: 35, scope: !5979)
!5983 = !DILocation(line: 932, column: 42, scope: !5979)
!5984 = !DILocation(line: 932, column: 47, scope: !5979)
!5985 = !DILocation(line: 932, column: 9, scope: !5979)
!5986 = !DILocation(line: 932, column: 7, scope: !5979)
!5987 = !DILocation(line: 933, column: 7, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 933, column: 7)
!5989 = !DILocation(line: 933, column: 11, scope: !5988)
!5990 = !DILocation(line: 933, column: 7, scope: !5979)
!5991 = !DILocation(line: 934, column: 11, scope: !5988)
!5992 = !DILocation(line: 934, column: 4, scope: !5988)
!5993 = !DILocation(line: 936, column: 36, scope: !5979)
!5994 = !DILocation(line: 936, column: 46, scope: !5979)
!5995 = !DILocation(line: 936, column: 3, scope: !5979)
!5996 = !DILocation(line: 937, column: 21, scope: !5979)
!5997 = !DILocation(line: 937, column: 3, scope: !5979)
!5998 = !DILocation(line: 937, column: 8, scope: !5979)
!5999 = !DILocation(line: 937, column: 16, scope: !5979)
!6000 = !DILocation(line: 938, column: 20, scope: !5979)
!6001 = !DILocation(line: 938, column: 3, scope: !5979)
!6002 = !DILocation(line: 938, column: 8, scope: !5979)
!6003 = !DILocation(line: 938, column: 15, scope: !5979)
!6004 = !DILocation(line: 939, column: 2, scope: !5979)
!6005 = !DILocation(line: 940, column: 26, scope: !5975)
!6006 = !DILocation(line: 940, column: 36, scope: !5975)
!6007 = !DILocation(line: 940, column: 41, scope: !5975)
!6008 = !DILocation(line: 940, column: 53, scope: !5975)
!6009 = !DILocation(line: 940, column: 58, scope: !5975)
!6010 = !DILocation(line: 941, column: 12, scope: !5975)
!6011 = !DILocation(line: 940, column: 3, scope: !5975)
!6012 = !DILabel(scope: !5899, name: "out", file: !3, line: 943)
!6013 = !DILocation(line: 943, column: 1, scope: !5899)
!6014 = !DILocation(line: 944, column: 6, scope: !5899)
!6015 = !DILocation(line: 944, column: 2, scope: !5899)
!6016 = !DILabel(scope: !5899, name: "out_err", file: !3, line: 945)
!6017 = !DILocation(line: 945, column: 1, scope: !5899)
!6018 = !DILocation(line: 946, column: 2, scope: !5899)
!6019 = !DILocation(line: 946, column: 7, scope: !5899)
!6020 = !DILocation(line: 946, column: 18, scope: !5899)
!6021 = !DILocation(line: 947, column: 9, scope: !5899)
!6022 = !DILocation(line: 947, column: 2, scope: !5899)
!6023 = !DILocation(line: 948, column: 1, scope: !5899)
!6024 = distinct !DISubprogram(name: "intel_fake_agp_remove_entries", scope: !3, file: !3, line: 964, type: !4732, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6025 = !DILocalVariable(name: "mem", arg: 1, scope: !6024, file: !3, line: 964, type: !4691)
!6026 = !DILocation(line: 964, column: 61, scope: !6024)
!6027 = !DILocalVariable(name: "pg_start", arg: 2, scope: !6024, file: !3, line: 965, type: !4702)
!6028 = !DILocation(line: 965, column: 13, scope: !6024)
!6029 = !DILocalVariable(name: "type", arg: 3, scope: !6024, file: !3, line: 965, type: !170)
!6030 = !DILocation(line: 965, column: 27, scope: !6024)
!6031 = !DILocation(line: 967, column: 6, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 967, column: 6)
!6033 = !DILocation(line: 967, column: 11, scope: !6032)
!6034 = !DILocation(line: 967, column: 22, scope: !6032)
!6035 = !DILocation(line: 967, column: 6, scope: !6024)
!6036 = !DILocation(line: 968, column: 3, scope: !6032)
!6037 = !DILocation(line: 970, column: 24, scope: !6024)
!6038 = !DILocation(line: 970, column: 34, scope: !6024)
!6039 = !DILocation(line: 970, column: 39, scope: !6024)
!6040 = !DILocation(line: 970, column: 2, scope: !6024)
!6041 = !DILocation(line: 972, column: 20, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 972, column: 6)
!6043 = !DILocation(line: 972, column: 6, scope: !6042)
!6044 = !DILocation(line: 972, column: 6, scope: !6024)
!6045 = !DILocation(line: 973, column: 26, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 972, column: 32)
!6047 = !DILocation(line: 973, column: 31, scope: !6046)
!6048 = !DILocation(line: 973, column: 40, scope: !6046)
!6049 = !DILocation(line: 973, column: 45, scope: !6046)
!6050 = !DILocation(line: 973, column: 3, scope: !6046)
!6051 = !DILocation(line: 974, column: 3, scope: !6046)
!6052 = !DILocation(line: 974, column: 8, scope: !6046)
!6053 = !DILocation(line: 974, column: 16, scope: !6046)
!6054 = !DILocation(line: 975, column: 3, scope: !6046)
!6055 = !DILocation(line: 975, column: 8, scope: !6046)
!6056 = !DILocation(line: 975, column: 15, scope: !6046)
!6057 = !DILocation(line: 976, column: 2, scope: !6046)
!6058 = !DILocation(line: 978, column: 2, scope: !6024)
!6059 = !DILocation(line: 979, column: 1, scope: !6024)
!6060 = distinct !DISubprogram(name: "intel_fake_agp_alloc_by_type", scope: !3, file: !3, line: 981, type: !4737, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6061 = !DILocalVariable(name: "pg_count", arg: 1, scope: !6060, file: !3, line: 981, type: !1161)
!6062 = !DILocation(line: 981, column: 63, scope: !6060)
!6063 = !DILocalVariable(name: "type", arg: 2, scope: !6060, file: !3, line: 982, type: !170)
!6064 = !DILocation(line: 982, column: 18, scope: !6060)
!6065 = !DILocalVariable(name: "new", scope: !6060, file: !3, line: 984, type: !4691)
!6066 = !DILocation(line: 984, column: 21, scope: !6060)
!6067 = !DILocation(line: 986, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 986, column: 6)
!6069 = !DILocation(line: 986, column: 11, scope: !6068)
!6070 = !DILocation(line: 986, column: 32, scope: !6068)
!6071 = !DILocation(line: 986, column: 35, scope: !6068)
!6072 = !DILocation(line: 986, column: 49, scope: !6068)
!6073 = !DILocation(line: 986, column: 6, scope: !6060)
!6074 = !DILocation(line: 987, column: 7, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 987, column: 7)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 986, column: 55)
!6077 = !DILocation(line: 987, column: 33, scope: !6075)
!6078 = !DILocation(line: 987, column: 19, scope: !6075)
!6079 = !DILocation(line: 987, column: 16, scope: !6075)
!6080 = !DILocation(line: 987, column: 7, scope: !6076)
!6081 = !DILocation(line: 988, column: 4, scope: !6075)
!6082 = !DILocation(line: 990, column: 9, scope: !6076)
!6083 = !DILocation(line: 990, column: 7, scope: !6076)
!6084 = !DILocation(line: 991, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 991, column: 7)
!6086 = !DILocation(line: 991, column: 11, scope: !6085)
!6087 = !DILocation(line: 991, column: 7, scope: !6076)
!6088 = !DILocation(line: 992, column: 4, scope: !6085)
!6089 = !DILocation(line: 994, column: 3, scope: !6076)
!6090 = !DILocation(line: 994, column: 8, scope: !6076)
!6091 = !DILocation(line: 994, column: 13, scope: !6076)
!6092 = !DILocation(line: 995, column: 21, scope: !6076)
!6093 = !DILocation(line: 995, column: 3, scope: !6076)
!6094 = !DILocation(line: 995, column: 8, scope: !6076)
!6095 = !DILocation(line: 995, column: 19, scope: !6076)
!6096 = !DILocation(line: 996, column: 3, scope: !6076)
!6097 = !DILocation(line: 996, column: 8, scope: !6076)
!6098 = !DILocation(line: 996, column: 26, scope: !6076)
!6099 = !DILocation(line: 997, column: 23, scope: !6076)
!6100 = !DILocation(line: 997, column: 3, scope: !6076)
!6101 = !DILocation(line: 998, column: 10, scope: !6076)
!6102 = !DILocation(line: 998, column: 3, scope: !6076)
!6103 = !DILocation(line: 1000, column: 6, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 1000, column: 6)
!6105 = !DILocation(line: 1000, column: 11, scope: !6104)
!6106 = !DILocation(line: 1000, column: 6, scope: !6060)
!6107 = !DILocation(line: 1001, column: 32, scope: !6104)
!6108 = !DILocation(line: 1001, column: 42, scope: !6104)
!6109 = !DILocation(line: 1001, column: 10, scope: !6104)
!6110 = !DILocation(line: 1001, column: 3, scope: !6104)
!6111 = !DILocation(line: 1003, column: 2, scope: !6060)
!6112 = !DILocation(line: 1004, column: 1, scope: !6060)
!6113 = distinct !DISubprogram(name: "intel_i810_free_by_type", scope: !3, file: !3, line: 276, type: !4689, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6114 = !DILocalVariable(name: "curr", arg: 1, scope: !6113, file: !3, line: 276, type: !4691)
!6115 = !DILocation(line: 276, column: 56, scope: !6113)
!6116 = !DILocation(line: 278, column: 15, scope: !6113)
!6117 = !DILocation(line: 278, column: 21, scope: !6113)
!6118 = !DILocation(line: 278, column: 2, scope: !6113)
!6119 = !DILocation(line: 279, column: 6, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 279, column: 6)
!6121 = !DILocation(line: 279, column: 12, scope: !6120)
!6122 = !DILocation(line: 279, column: 17, scope: !6120)
!6123 = !DILocation(line: 279, column: 6, scope: !6113)
!6124 = !DILocation(line: 280, column: 7, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 280, column: 7)
!6126 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 279, column: 37)
!6127 = !DILocation(line: 280, column: 13, scope: !6125)
!6128 = !DILocation(line: 280, column: 24, scope: !6125)
!6129 = !DILocation(line: 280, column: 7, scope: !6126)
!6130 = !DILocation(line: 281, column: 23, scope: !6125)
!6131 = !DILocation(line: 281, column: 29, scope: !6125)
!6132 = !DILocation(line: 281, column: 4, scope: !6125)
!6133 = !DILocation(line: 283, column: 4, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 282, column: 8)
!6135 = !DILocation(line: 283, column: 16, scope: !6134)
!6136 = !DILocation(line: 283, column: 24, scope: !6134)
!6137 = !DILocation(line: 283, column: 41, scope: !6134)
!6138 = !DILocation(line: 283, column: 47, scope: !6134)
!6139 = !DILocation(line: 285, column: 4, scope: !6134)
!6140 = !DILocation(line: 285, column: 16, scope: !6134)
!6141 = !DILocation(line: 285, column: 24, scope: !6134)
!6142 = !DILocation(line: 285, column: 41, scope: !6134)
!6143 = !DILocation(line: 285, column: 47, scope: !6134)
!6144 = !DILocation(line: 288, column: 23, scope: !6126)
!6145 = !DILocation(line: 288, column: 3, scope: !6126)
!6146 = !DILocation(line: 289, column: 2, scope: !6126)
!6147 = !DILocation(line: 290, column: 8, scope: !6113)
!6148 = !DILocation(line: 290, column: 2, scope: !6113)
!6149 = !DILocation(line: 291, column: 1, scope: !6113)
!6150 = distinct !DISubprogram(name: "i810_insert_dcache_entries", scope: !3, file: !3, line: 212, type: !4732, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6151 = !DILocalVariable(name: "mem", arg: 1, scope: !6150, file: !3, line: 212, type: !4691)
!6152 = !DILocation(line: 212, column: 58, scope: !6150)
!6153 = !DILocalVariable(name: "pg_start", arg: 2, scope: !6150, file: !3, line: 212, type: !4702)
!6154 = !DILocation(line: 212, column: 69, scope: !6150)
!6155 = !DILocalVariable(name: "type", arg: 3, scope: !6150, file: !3, line: 213, type: !170)
!6156 = !DILocation(line: 213, column: 15, scope: !6150)
!6157 = !DILocalVariable(name: "i", scope: !6150, file: !3, line: 215, type: !170)
!6158 = !DILocation(line: 215, column: 6, scope: !6150)
!6159 = !DILocation(line: 217, column: 7, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 217, column: 6)
!6161 = !DILocation(line: 217, column: 18, scope: !6160)
!6162 = !DILocation(line: 217, column: 23, scope: !6160)
!6163 = !DILocation(line: 217, column: 16, scope: !6160)
!6164 = !DILocation(line: 218, column: 20, scope: !6160)
!6165 = !DILocation(line: 218, column: 6, scope: !6160)
!6166 = !DILocation(line: 218, column: 4, scope: !6160)
!6167 = !DILocation(line: 217, column: 6, scope: !6150)
!6168 = !DILocation(line: 219, column: 3, scope: !6160)
!6169 = !DILocation(line: 221, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 221, column: 6)
!6171 = !DILocation(line: 221, column: 12, scope: !6170)
!6172 = !DILocation(line: 221, column: 6, scope: !6150)
!6173 = !DILocation(line: 222, column: 3, scope: !6170)
!6174 = !DILocation(line: 224, column: 11, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 224, column: 2)
!6176 = !DILocation(line: 224, column: 9, scope: !6175)
!6177 = !DILocation(line: 224, column: 7, scope: !6175)
!6178 = !DILocation(line: 224, column: 21, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 224, column: 2)
!6180 = !DILocation(line: 224, column: 26, scope: !6179)
!6181 = !DILocation(line: 224, column: 37, scope: !6179)
!6182 = !DILocation(line: 224, column: 42, scope: !6179)
!6183 = !DILocation(line: 224, column: 35, scope: !6179)
!6184 = !DILocation(line: 224, column: 23, scope: !6179)
!6185 = !DILocation(line: 224, column: 2, scope: !6175)
!6186 = !DILocalVariable(name: "addr", scope: !6187, file: !3, line: 225, type: !178)
!6187 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 224, column: 60)
!6188 = !DILocation(line: 225, column: 14, scope: !6187)
!6189 = !DILocation(line: 225, column: 21, scope: !6187)
!6190 = !DILocation(line: 225, column: 23, scope: !6187)
!6191 = !DILocation(line: 226, column: 17, scope: !6187)
!6192 = !DILocation(line: 226, column: 25, scope: !6187)
!6193 = !DILocation(line: 226, column: 37, scope: !6187)
!6194 = !DILocation(line: 227, column: 9, scope: !6187)
!6195 = !DILocation(line: 227, column: 12, scope: !6187)
!6196 = !DILocation(line: 226, column: 3, scope: !6187)
!6197 = !DILocation(line: 228, column: 2, scope: !6187)
!6198 = !DILocation(line: 224, column: 56, scope: !6179)
!6199 = !DILocation(line: 224, column: 2, scope: !6179)
!6200 = distinct !{!6200, !6185, !6201}
!6201 = !DILocation(line: 228, column: 2, scope: !6175)
!6202 = !DILocation(line: 229, column: 2, scope: !6150)
!6203 = !{i32 -2140833469}
!6204 = !DILocation(line: 231, column: 2, scope: !6150)
!6205 = !DILocation(line: 232, column: 1, scope: !6150)
!6206 = distinct !DISubprogram(name: "intel_gtt_map_memory", scope: !3, file: !3, line: 98, type: !6207, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!170, !2343, !7, !4914}
!6209 = !DILocalVariable(name: "pages", arg: 1, scope: !6206, file: !3, line: 98, type: !2343)
!6210 = !DILocation(line: 98, column: 47, scope: !6206)
!6211 = !DILocalVariable(name: "num_entries", arg: 2, scope: !6206, file: !3, line: 99, type: !7)
!6212 = !DILocation(line: 99, column: 18, scope: !6206)
!6213 = !DILocalVariable(name: "st", arg: 3, scope: !6206, file: !3, line: 100, type: !4914)
!6214 = !DILocation(line: 100, column: 22, scope: !6206)
!6215 = !DILocalVariable(name: "sg", scope: !6206, file: !3, line: 102, type: !4710)
!6216 = !DILocation(line: 102, column: 22, scope: !6206)
!6217 = !DILocalVariable(name: "i", scope: !6206, file: !3, line: 103, type: !170)
!6218 = !DILocation(line: 103, column: 6, scope: !6206)
!6219 = !DILocation(line: 105, column: 2, scope: !6206)
!6220 = !DILocation(line: 105, column: 2, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 105, column: 2)
!6222 = !DILocation(line: 107, column: 21, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 107, column: 6)
!6224 = !DILocation(line: 107, column: 25, scope: !6223)
!6225 = !DILocation(line: 107, column: 6, scope: !6223)
!6226 = !DILocation(line: 107, column: 6, scope: !6206)
!6227 = !DILocation(line: 108, column: 3, scope: !6223)
!6228 = !DILocation(line: 110, column: 2, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 110, column: 2)
!6230 = !DILocation(line: 110, column: 2, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 110, column: 2)
!6232 = !DILocation(line: 111, column: 15, scope: !6231)
!6233 = !DILocation(line: 111, column: 19, scope: !6231)
!6234 = !DILocation(line: 111, column: 25, scope: !6231)
!6235 = !DILocation(line: 111, column: 3, scope: !6231)
!6236 = distinct !{!6236, !6228, !6237}
!6237 = !DILocation(line: 111, column: 41, scope: !6229)
!6238 = !DILocation(line: 113, column: 32, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 113, column: 6)
!6240 = !DILocation(line: 114, column: 4, scope: !6239)
!6241 = !DILocation(line: 114, column: 8, scope: !6239)
!6242 = !DILocation(line: 114, column: 13, scope: !6239)
!6243 = !DILocation(line: 114, column: 17, scope: !6239)
!6244 = !DILocation(line: 113, column: 7, scope: !6239)
!6245 = !DILocation(line: 113, column: 6, scope: !6206)
!6246 = !DILocation(line: 115, column: 3, scope: !6239)
!6247 = !DILocation(line: 117, column: 2, scope: !6206)
!6248 = !DILabel(scope: !6206, name: "err", file: !3, line: 119)
!6249 = !DILocation(line: 119, column: 1, scope: !6206)
!6250 = !DILocation(line: 120, column: 16, scope: !6206)
!6251 = !DILocation(line: 120, column: 2, scope: !6206)
!6252 = !DILocation(line: 121, column: 2, scope: !6206)
!6253 = !DILocation(line: 122, column: 1, scope: !6206)
!6254 = distinct !DISubprogram(name: "intel_gtt_insert_pages", scope: !3, file: !3, line: 884, type: !6255, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{null, !7, !7, !2343, !7}
!6257 = !DILocalVariable(name: "first_entry", arg: 1, scope: !6254, file: !3, line: 884, type: !7)
!6258 = !DILocation(line: 884, column: 49, scope: !6254)
!6259 = !DILocalVariable(name: "num_entries", arg: 2, scope: !6254, file: !3, line: 885, type: !7)
!6260 = !DILocation(line: 885, column: 21, scope: !6254)
!6261 = !DILocalVariable(name: "pages", arg: 3, scope: !6254, file: !3, line: 886, type: !2343)
!6262 = !DILocation(line: 886, column: 22, scope: !6254)
!6263 = !DILocalVariable(name: "flags", arg: 4, scope: !6254, file: !3, line: 887, type: !7)
!6264 = !DILocation(line: 887, column: 21, scope: !6254)
!6265 = !DILocalVariable(name: "i", scope: !6254, file: !3, line: 889, type: !170)
!6266 = !DILocation(line: 889, column: 6, scope: !6254)
!6267 = !DILocalVariable(name: "j", scope: !6254, file: !3, line: 889, type: !170)
!6268 = !DILocation(line: 889, column: 9, scope: !6254)
!6269 = !DILocation(line: 891, column: 9, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 891, column: 2)
!6271 = !DILocation(line: 891, column: 18, scope: !6270)
!6272 = !DILocation(line: 891, column: 16, scope: !6270)
!6273 = !DILocation(line: 891, column: 7, scope: !6270)
!6274 = !DILocation(line: 891, column: 31, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 891, column: 2)
!6276 = !DILocation(line: 891, column: 35, scope: !6275)
!6277 = !DILocation(line: 891, column: 33, scope: !6275)
!6278 = !DILocation(line: 891, column: 2, scope: !6270)
!6279 = !DILocalVariable(name: "addr", scope: !6280, file: !3, line: 892, type: !178)
!6280 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 891, column: 58)
!6281 = !DILocation(line: 892, column: 14, scope: !6280)
!6282 = !DILocation(line: 892, column: 21, scope: !6280)
!6283 = !DILocation(line: 893, column: 17, scope: !6280)
!6284 = !DILocation(line: 893, column: 25, scope: !6280)
!6285 = !DILocation(line: 893, column: 37, scope: !6280)
!6286 = !DILocation(line: 894, column: 9, scope: !6280)
!6287 = !DILocation(line: 894, column: 12, scope: !6280)
!6288 = !DILocation(line: 893, column: 3, scope: !6280)
!6289 = !DILocation(line: 895, column: 2, scope: !6280)
!6290 = !DILocation(line: 891, column: 49, scope: !6275)
!6291 = !DILocation(line: 891, column: 54, scope: !6275)
!6292 = !DILocation(line: 891, column: 2, scope: !6275)
!6293 = distinct !{!6293, !6278, !6294}
!6294 = !DILocation(line: 895, column: 2, scope: !6270)
!6295 = !DILocation(line: 896, column: 2, scope: !6254)
!6296 = !{i32 -2140823224}
!6297 = !DILocation(line: 897, column: 1, scope: !6254)
!6298 = distinct !DISubprogram(name: "sg_set_page", scope: !4712, file: !4712, line: 116, type: !6299, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{null, !4710, !179, !7, !7}
!6301 = !DILocalVariable(name: "sg", arg: 1, scope: !6298, file: !4712, line: 116, type: !4710)
!6302 = !DILocation(line: 116, column: 52, scope: !6298)
!6303 = !DILocalVariable(name: "page", arg: 2, scope: !6298, file: !4712, line: 116, type: !179)
!6304 = !DILocation(line: 116, column: 69, scope: !6298)
!6305 = !DILocalVariable(name: "len", arg: 3, scope: !6298, file: !4712, line: 117, type: !7)
!6306 = !DILocation(line: 117, column: 24, scope: !6298)
!6307 = !DILocalVariable(name: "offset", arg: 4, scope: !6298, file: !4712, line: 117, type: !7)
!6308 = !DILocation(line: 117, column: 42, scope: !6298)
!6309 = !DILocation(line: 119, column: 17, scope: !6298)
!6310 = !DILocation(line: 119, column: 21, scope: !6298)
!6311 = !DILocation(line: 119, column: 2, scope: !6298)
!6312 = !DILocation(line: 120, column: 15, scope: !6298)
!6313 = !DILocation(line: 120, column: 2, scope: !6298)
!6314 = !DILocation(line: 120, column: 6, scope: !6298)
!6315 = !DILocation(line: 120, column: 13, scope: !6298)
!6316 = !DILocation(line: 121, column: 15, scope: !6298)
!6317 = !DILocation(line: 121, column: 2, scope: !6298)
!6318 = !DILocation(line: 121, column: 6, scope: !6298)
!6319 = !DILocation(line: 121, column: 13, scope: !6298)
!6320 = !DILocation(line: 122, column: 1, scope: !6298)
!6321 = distinct !DISubprogram(name: "pci_map_sg", scope: !5178, file: !5178, line: 65, type: !6322, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!170, !3165, !4710, !170, !170}
!6324 = !DILocalVariable(name: "hwdev", arg: 1, scope: !6321, file: !5178, line: 65, type: !3165)
!6325 = !DILocation(line: 65, column: 28, scope: !6321)
!6326 = !DILocalVariable(name: "sg", arg: 2, scope: !6321, file: !5178, line: 65, type: !4710)
!6327 = !DILocation(line: 65, column: 55, scope: !6321)
!6328 = !DILocalVariable(name: "nents", arg: 3, scope: !6321, file: !5178, line: 66, type: !170)
!6329 = !DILocation(line: 66, column: 9, scope: !6321)
!6330 = !DILocalVariable(name: "direction", arg: 4, scope: !6321, file: !5178, line: 66, type: !170)
!6331 = !DILocation(line: 66, column: 20, scope: !6321)
!6332 = !DILocation(line: 68, column: 9, scope: !6321)
!6333 = !DILocation(line: 68, column: 2, scope: !6321)
!6334 = distinct !DISubprogram(name: "sg_assign_page", scope: !4712, file: !4712, line: 87, type: !6335, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6335 = !DISubroutineType(types: !6336)
!6336 = !{null, !4710, !179}
!6337 = !DILocalVariable(name: "sg", arg: 1, scope: !6334, file: !4712, line: 87, type: !4710)
!6338 = !DILocation(line: 87, column: 55, scope: !6334)
!6339 = !DILocalVariable(name: "page", arg: 2, scope: !6334, file: !4712, line: 87, type: !179)
!6340 = !DILocation(line: 87, column: 72, scope: !6334)
!6341 = !DILocalVariable(name: "page_link", scope: !6334, file: !4712, line: 89, type: !168)
!6342 = !DILocation(line: 89, column: 16, scope: !6334)
!6343 = !DILocation(line: 89, column: 28, scope: !6334)
!6344 = !DILocation(line: 89, column: 32, scope: !6334)
!6345 = !DILocation(line: 89, column: 42, scope: !6334)
!6346 = !DILocation(line: 95, column: 2, scope: !6334)
!6347 = !DILocation(line: 95, column: 2, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6349, file: !4712, line: 95, column: 2)
!6349 = distinct !DILexicalBlock(scope: !6334, file: !4712, line: 95, column: 2)
!6350 = !DILocation(line: 95, column: 2, scope: !6349)
!6351 = !DILocation(line: 95, column: 2, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6348, file: !4712, line: 95, column: 2)
!6353 = !DILocation(line: 95, column: 2, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6352, file: !4712, line: 95, column: 2)
!6355 = !DILocation(line: 95, column: 2, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6352, file: !4712, line: 95, column: 2)
!6357 = !{i32 -2141772495, i32 -2141772466, i32 -2141772420, i32 -2141772362, i32 -2141772308, i32 -2141772254, i32 -2141772199, i32 -2141772168}
!6358 = !DILocation(line: 95, column: 2, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6360, file: !4712, line: 95, column: 2)
!6360 = distinct !DILexicalBlock(scope: !6352, file: !4712, line: 95, column: 2)
!6361 = !{i32 -2141771719, i32 -2141771712, i32 -2141771658, i32 -2141771627, i32 -2141771597}
!6362 = !DILocation(line: 95, column: 2, scope: !6360)
!6363 = !DILocation(line: 99, column: 18, scope: !6334)
!6364 = !DILocation(line: 99, column: 46, scope: !6334)
!6365 = !DILocation(line: 99, column: 30, scope: !6334)
!6366 = !DILocation(line: 99, column: 28, scope: !6334)
!6367 = !DILocation(line: 99, column: 2, scope: !6334)
!6368 = !DILocation(line: 99, column: 6, scope: !6334)
!6369 = !DILocation(line: 99, column: 16, scope: !6334)
!6370 = !DILocation(line: 100, column: 1, scope: !6334)
!6371 = distinct !DISubprogram(name: "intel_gtt_unmap_memory", scope: !3, file: !3, line: 124, type: !6372, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6372 = !DISubroutineType(types: !6373)
!6373 = !{null, !4710, !170}
!6374 = !DILocalVariable(name: "sg_list", arg: 1, scope: !6371, file: !3, line: 124, type: !4710)
!6375 = !DILocation(line: 124, column: 56, scope: !6371)
!6376 = !DILocalVariable(name: "num_sg", arg: 2, scope: !6371, file: !3, line: 124, type: !170)
!6377 = !DILocation(line: 124, column: 69, scope: !6371)
!6378 = !DILocalVariable(name: "st", scope: !6371, file: !3, line: 126, type: !4915)
!6379 = !DILocation(line: 126, column: 18, scope: !6371)
!6380 = !DILocation(line: 127, column: 2, scope: !6371)
!6381 = !DILocation(line: 127, column: 2, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 127, column: 2)
!6383 = !DILocation(line: 129, column: 29, scope: !6371)
!6384 = !DILocation(line: 129, column: 37, scope: !6371)
!6385 = !DILocation(line: 130, column: 8, scope: !6371)
!6386 = !DILocation(line: 129, column: 2, scope: !6371)
!6387 = !DILocation(line: 132, column: 11, scope: !6371)
!6388 = !DILocation(line: 132, column: 5, scope: !6371)
!6389 = !DILocation(line: 132, column: 9, scope: !6371)
!6390 = !DILocation(line: 133, column: 29, scope: !6371)
!6391 = !DILocation(line: 133, column: 21, scope: !6371)
!6392 = !DILocation(line: 133, column: 27, scope: !6371)
!6393 = !DILocation(line: 133, column: 5, scope: !6371)
!6394 = !DILocation(line: 133, column: 16, scope: !6371)
!6395 = !DILocation(line: 135, column: 2, scope: !6371)
!6396 = !DILocation(line: 136, column: 1, scope: !6371)
!6397 = distinct !DISubprogram(name: "pci_unmap_sg", scope: !5178, file: !5178, line: 72, type: !6398, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !3165, !4710, !170, !170}
!6400 = !DILocalVariable(name: "hwdev", arg: 1, scope: !6397, file: !5178, line: 72, type: !3165)
!6401 = !DILocation(line: 72, column: 30, scope: !6397)
!6402 = !DILocalVariable(name: "sg", arg: 2, scope: !6397, file: !5178, line: 72, type: !4710)
!6403 = !DILocation(line: 72, column: 57, scope: !6397)
!6404 = !DILocalVariable(name: "nents", arg: 3, scope: !6397, file: !5178, line: 73, type: !170)
!6405 = !DILocation(line: 73, column: 11, scope: !6397)
!6406 = !DILocalVariable(name: "direction", arg: 4, scope: !6397, file: !5178, line: 73, type: !170)
!6407 = !DILocation(line: 73, column: 22, scope: !6397)
!6408 = !DILocation(line: 75, column: 2, scope: !6397)
!6409 = !DILocation(line: 76, column: 1, scope: !6397)
!6410 = distinct !DISubprogram(name: "agp_free_page_array", scope: !141, file: !141, line: 222, type: !4689, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6411 = !DILocalVariable(name: "mem", arg: 1, scope: !6410, file: !141, line: 222, type: !4691)
!6412 = !DILocation(line: 222, column: 59, scope: !6410)
!6413 = !DILocation(line: 224, column: 9, scope: !6410)
!6414 = !DILocation(line: 224, column: 14, scope: !6410)
!6415 = !DILocation(line: 224, column: 2, scope: !6410)
!6416 = !DILocation(line: 225, column: 1, scope: !6410)
!6417 = distinct !DISubprogram(name: "alloc_agpphysmem_i8xx", scope: !3, file: !3, line: 239, type: !4737, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6418 = !DILocalVariable(name: "pg_count", arg: 1, scope: !6417, file: !3, line: 239, type: !1161)
!6419 = !DILocation(line: 239, column: 56, scope: !6417)
!6420 = !DILocalVariable(name: "type", arg: 2, scope: !6417, file: !3, line: 239, type: !170)
!6421 = !DILocation(line: 239, column: 70, scope: !6417)
!6422 = !DILocalVariable(name: "new", scope: !6417, file: !3, line: 241, type: !4691)
!6423 = !DILocation(line: 241, column: 21, scope: !6417)
!6424 = !DILocalVariable(name: "page", scope: !6417, file: !3, line: 242, type: !179)
!6425 = !DILocation(line: 242, column: 15, scope: !6417)
!6426 = !DILocation(line: 244, column: 10, scope: !6417)
!6427 = !DILocation(line: 244, column: 2, scope: !6417)
!6428 = !DILocation(line: 245, column: 17, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 244, column: 20)
!6430 = !DILocation(line: 245, column: 29, scope: !6429)
!6431 = !DILocation(line: 245, column: 37, scope: !6429)
!6432 = !DILocation(line: 245, column: 52, scope: !6429)
!6433 = !DILocation(line: 245, column: 15, scope: !6429)
!6434 = !DILocation(line: 246, column: 3, scope: !6429)
!6435 = !DILocation(line: 249, column: 10, scope: !6429)
!6436 = !DILocation(line: 249, column: 8, scope: !6429)
!6437 = !DILocation(line: 250, column: 3, scope: !6429)
!6438 = !DILocation(line: 252, column: 3, scope: !6429)
!6439 = !DILocation(line: 255, column: 6, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 255, column: 6)
!6441 = !DILocation(line: 255, column: 11, scope: !6440)
!6442 = !DILocation(line: 255, column: 6, scope: !6417)
!6443 = !DILocation(line: 256, column: 3, scope: !6440)
!6444 = !DILocation(line: 258, column: 26, scope: !6417)
!6445 = !DILocation(line: 258, column: 8, scope: !6417)
!6446 = !DILocation(line: 258, column: 6, scope: !6417)
!6447 = !DILocation(line: 259, column: 6, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 259, column: 6)
!6449 = !DILocation(line: 259, column: 10, scope: !6448)
!6450 = !DILocation(line: 259, column: 6, scope: !6417)
!6451 = !DILocation(line: 260, column: 3, scope: !6448)
!6452 = !DILocation(line: 262, column: 18, scope: !6417)
!6453 = !DILocation(line: 262, column: 2, scope: !6417)
!6454 = !DILocation(line: 262, column: 7, scope: !6417)
!6455 = !DILocation(line: 262, column: 16, scope: !6417)
!6456 = !DILocation(line: 263, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 263, column: 6)
!6458 = !DILocation(line: 263, column: 15, scope: !6457)
!6459 = !DILocation(line: 263, column: 6, scope: !6417)
!6460 = !DILocation(line: 265, column: 19, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 263, column: 21)
!6462 = !DILocation(line: 265, column: 24, scope: !6461)
!6463 = !DILocation(line: 265, column: 33, scope: !6461)
!6464 = !DILocation(line: 265, column: 3, scope: !6461)
!6465 = !DILocation(line: 265, column: 8, scope: !6461)
!6466 = !DILocation(line: 265, column: 17, scope: !6461)
!6467 = !DILocation(line: 266, column: 19, scope: !6461)
!6468 = !DILocation(line: 266, column: 24, scope: !6461)
!6469 = !DILocation(line: 266, column: 33, scope: !6461)
!6470 = !DILocation(line: 266, column: 3, scope: !6461)
!6471 = !DILocation(line: 266, column: 8, scope: !6461)
!6472 = !DILocation(line: 266, column: 17, scope: !6461)
!6473 = !DILocation(line: 267, column: 19, scope: !6461)
!6474 = !DILocation(line: 267, column: 24, scope: !6461)
!6475 = !DILocation(line: 267, column: 33, scope: !6461)
!6476 = !DILocation(line: 267, column: 3, scope: !6461)
!6477 = !DILocation(line: 267, column: 8, scope: !6461)
!6478 = !DILocation(line: 267, column: 17, scope: !6461)
!6479 = !DILocation(line: 268, column: 2, scope: !6461)
!6480 = !DILocation(line: 269, column: 20, scope: !6417)
!6481 = !DILocation(line: 269, column: 2, scope: !6417)
!6482 = !DILocation(line: 269, column: 7, scope: !6417)
!6483 = !DILocation(line: 269, column: 18, scope: !6417)
!6484 = !DILocation(line: 270, column: 27, scope: !6417)
!6485 = !DILocation(line: 270, column: 2, scope: !6417)
!6486 = !DILocation(line: 270, column: 7, scope: !6417)
!6487 = !DILocation(line: 270, column: 25, scope: !6417)
!6488 = !DILocation(line: 271, column: 2, scope: !6417)
!6489 = !DILocation(line: 271, column: 7, scope: !6417)
!6490 = !DILocation(line: 271, column: 12, scope: !6417)
!6491 = !DILocation(line: 272, column: 18, scope: !6417)
!6492 = !DILocation(line: 272, column: 2, scope: !6417)
!6493 = !DILocation(line: 272, column: 7, scope: !6417)
!6494 = !DILocation(line: 272, column: 16, scope: !6417)
!6495 = !DILocation(line: 273, column: 9, scope: !6417)
!6496 = !DILocation(line: 273, column: 2, scope: !6417)
!6497 = !DILocation(line: 274, column: 1, scope: !6417)
!6498 = distinct !DISubprogram(name: "i8xx_alloc_pages", scope: !3, file: !3, line: 144, type: !6499, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6499 = !DISubroutineType(types: !6500)
!6500 = !{!179}
!6501 = !DILocalVariable(name: "v", arg: 1, scope: !6502, file: !6503, line: 93, type: !6506)
!6502 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6503, file: !6503, line: 93, type: !6504, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6503 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6504 = !DISubroutineType(types: !6505)
!6505 = !{null, !6506}
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!6507 = !DILocation(line: 93, column: 55, scope: !6502, inlinedAt: !6508)
!6508 = distinct !DILocation(line: 241, column: 2, scope: !6509, inlinedAt: !6511)
!6509 = distinct !DISubprogram(name: "atomic_inc", scope: !6510, file: !6510, line: 238, type: !6504, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6510 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6511 = distinct !DILocation(line: 157, column: 2, scope: !6498)
!6512 = !DILocalVariable(name: "v", arg: 1, scope: !6513, file: !6514, line: 99, type: !4878)
!6513 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6514, file: !6514, line: 99, type: !6515, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6514 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6515 = !DISubroutineType(types: !6516)
!6516 = !{null, !4878, !1161}
!6517 = !DILocation(line: 99, column: 79, scope: !6513, inlinedAt: !6518)
!6518 = distinct !DILocation(line: 240, column: 2, scope: !6509, inlinedAt: !6511)
!6519 = !DILocalVariable(name: "size", arg: 2, scope: !6513, file: !6514, line: 99, type: !1161)
!6520 = !DILocation(line: 99, column: 89, scope: !6513, inlinedAt: !6518)
!6521 = !DILocalVariable(name: "v", arg: 1, scope: !6509, file: !6510, line: 238, type: !6506)
!6522 = !DILocation(line: 238, column: 22, scope: !6509, inlinedAt: !6511)
!6523 = !DILocalVariable(name: "page", scope: !6498, file: !3, line: 146, type: !179)
!6524 = !DILocation(line: 146, column: 15, scope: !6498)
!6525 = !DILocation(line: 148, column: 9, scope: !6498)
!6526 = !DILocation(line: 148, column: 7, scope: !6498)
!6527 = !DILocation(line: 149, column: 6, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 149, column: 6)
!6529 = !DILocation(line: 149, column: 11, scope: !6528)
!6530 = !DILocation(line: 149, column: 6, scope: !6498)
!6531 = !DILocation(line: 150, column: 3, scope: !6528)
!6532 = !DILocation(line: 152, column: 19, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 152, column: 6)
!6534 = !DILocation(line: 152, column: 6, scope: !6533)
!6535 = !DILocation(line: 152, column: 28, scope: !6533)
!6536 = !DILocation(line: 152, column: 6, scope: !6498)
!6537 = !DILocation(line: 153, column: 16, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 152, column: 33)
!6539 = !DILocation(line: 153, column: 3, scope: !6538)
!6540 = !DILocation(line: 154, column: 16, scope: !6538)
!6541 = !DILocation(line: 154, column: 3, scope: !6538)
!6542 = !DILocation(line: 155, column: 3, scope: !6538)
!6543 = !DILocation(line: 157, column: 14, scope: !6498)
!6544 = !DILocation(line: 157, column: 26, scope: !6498)
!6545 = !DILocation(line: 240, column: 31, scope: !6509, inlinedAt: !6511)
!6546 = !DILocation(line: 101, column: 20, scope: !6513, inlinedAt: !6518)
!6547 = !DILocation(line: 101, column: 23, scope: !6513, inlinedAt: !6518)
!6548 = !DILocation(line: 101, column: 2, scope: !6513, inlinedAt: !6518)
!6549 = !DILocation(line: 102, column: 2, scope: !6513, inlinedAt: !6518)
!6550 = !DILocation(line: 241, column: 18, scope: !6509, inlinedAt: !6511)
!6551 = !DILocation(line: 96, column: 16, scope: !6502, inlinedAt: !6508)
!6552 = !DILocation(line: 96, column: 19, scope: !6502, inlinedAt: !6508)
!6553 = !DILocation(line: 95, column: 2, scope: !6502, inlinedAt: !6508)
!6554 = !{i32 -2146594001}
!6555 = !DILocation(line: 158, column: 9, scope: !6498)
!6556 = !DILocation(line: 158, column: 2, scope: !6498)
!6557 = !DILocation(line: 159, column: 1, scope: !6498)
!6558 = distinct !DISubprogram(name: "alloc_pages", scope: !6559, file: !6559, line: 555, type: !6560, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6559 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/lizy2001/genbc/linux")
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!179, !166, !7}
!6562 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6558, file: !6559, line: 555, type: !166)
!6563 = !DILocation(line: 555, column: 46, scope: !6558)
!6564 = !DILocalVariable(name: "order", arg: 2, scope: !6558, file: !6559, line: 555, type: !7)
!6565 = !DILocation(line: 555, column: 69, scope: !6558)
!6566 = !DILocation(line: 557, column: 26, scope: !6558)
!6567 = !DILocation(line: 557, column: 42, scope: !6558)
!6568 = !DILocation(line: 557, column: 52, scope: !6558)
!6569 = !DILocation(line: 557, column: 9, scope: !6558)
!6570 = !DILocation(line: 557, column: 2, scope: !6558)
!6571 = distinct !DISubprogram(name: "alloc_pages_node", scope: !6559, file: !6559, line: 532, type: !6572, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6572 = !DISubroutineType(types: !6573)
!6573 = !{!179, !170, !166, !7}
!6574 = !DILocalVariable(name: "nid", arg: 1, scope: !6571, file: !6559, line: 532, type: !170)
!6575 = !DILocation(line: 532, column: 49, scope: !6571)
!6576 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6571, file: !6559, line: 532, type: !166)
!6577 = !DILocation(line: 532, column: 60, scope: !6571)
!6578 = !DILocalVariable(name: "order", arg: 3, scope: !6571, file: !6559, line: 533, type: !7)
!6579 = !DILocation(line: 533, column: 20, scope: !6571)
!6580 = !DILocation(line: 535, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6571, file: !6559, line: 535, column: 6)
!6582 = !DILocation(line: 535, column: 10, scope: !6581)
!6583 = !DILocation(line: 535, column: 6, scope: !6571)
!6584 = !DILocation(line: 536, column: 9, scope: !6581)
!6585 = !DILocation(line: 536, column: 7, scope: !6581)
!6586 = !DILocation(line: 536, column: 3, scope: !6581)
!6587 = !DILocation(line: 538, column: 28, scope: !6571)
!6588 = !DILocation(line: 538, column: 33, scope: !6571)
!6589 = !DILocation(line: 538, column: 43, scope: !6571)
!6590 = !DILocation(line: 538, column: 9, scope: !6571)
!6591 = !DILocation(line: 538, column: 2, scope: !6571)
!6592 = distinct !DISubprogram(name: "numa_node_id", scope: !6593, file: !6593, line: 85, type: !3093, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6593 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!6594 = !DILocation(line: 87, column: 2, scope: !6592)
!6595 = distinct !DISubprogram(name: "numa_mem_id", scope: !6596, file: !6596, line: 167, type: !3093, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6596 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/lizy2001/genbc/linux")
!6597 = !DILocation(line: 169, column: 9, scope: !6595)
!6598 = !DILocation(line: 169, column: 2, scope: !6595)
!6599 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !6559, file: !6559, line: 519, type: !6572, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6600 = !DILocalVariable(name: "nid", arg: 1, scope: !6599, file: !6559, line: 519, type: !170)
!6601 = !DILocation(line: 519, column: 24, scope: !6599)
!6602 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6599, file: !6559, line: 519, type: !166)
!6603 = !DILocation(line: 519, column: 35, scope: !6599)
!6604 = !DILocalVariable(name: "order", arg: 3, scope: !6599, file: !6559, line: 519, type: !7)
!6605 = !DILocation(line: 519, column: 58, scope: !6599)
!6606 = !DILocation(line: 524, column: 23, scope: !6599)
!6607 = !DILocation(line: 524, column: 33, scope: !6599)
!6608 = !DILocation(line: 524, column: 40, scope: !6599)
!6609 = !DILocation(line: 524, column: 9, scope: !6599)
!6610 = !DILocation(line: 524, column: 2, scope: !6599)
!6611 = distinct !DISubprogram(name: "__alloc_pages", scope: !6559, file: !6559, line: 509, type: !6612, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!179, !166, !7, !170}
!6614 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6611, file: !6559, line: 509, type: !166)
!6615 = !DILocation(line: 509, column: 21, scope: !6611)
!6616 = !DILocalVariable(name: "order", arg: 2, scope: !6611, file: !6559, line: 509, type: !7)
!6617 = !DILocation(line: 509, column: 44, scope: !6611)
!6618 = !DILocalVariable(name: "preferred_nid", arg: 3, scope: !6611, file: !6559, line: 509, type: !170)
!6619 = !DILocation(line: 509, column: 55, scope: !6611)
!6620 = !DILocation(line: 511, column: 32, scope: !6611)
!6621 = !DILocation(line: 511, column: 42, scope: !6611)
!6622 = !DILocation(line: 511, column: 49, scope: !6611)
!6623 = !DILocation(line: 511, column: 9, scope: !6611)
!6624 = !DILocation(line: 511, column: 2, scope: !6611)
!6625 = distinct !DISubprogram(name: "kasan_check_write", scope: !6626, file: !6626, line: 38, type: !6627, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6626 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6627 = !DISubroutineType(types: !6628)
!6628 = !{!370, !4878, !7}
!6629 = !DILocalVariable(name: "p", arg: 1, scope: !6625, file: !6626, line: 38, type: !4878)
!6630 = !DILocation(line: 38, column: 59, scope: !6625)
!6631 = !DILocalVariable(name: "size", arg: 2, scope: !6625, file: !6626, line: 38, type: !7)
!6632 = !DILocation(line: 38, column: 75, scope: !6625)
!6633 = !DILocation(line: 40, column: 2, scope: !6625)
!6634 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6635, file: !6635, line: 178, type: !6636, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6635 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6636 = !DISubroutineType(types: !6637)
!6637 = !{null, !4878, !1161, !170}
!6638 = !DILocalVariable(name: "ptr", arg: 1, scope: !6634, file: !6635, line: 178, type: !4878)
!6639 = !DILocation(line: 178, column: 60, scope: !6634)
!6640 = !DILocalVariable(name: "size", arg: 2, scope: !6634, file: !6635, line: 178, type: !1161)
!6641 = !DILocation(line: 178, column: 72, scope: !6634)
!6642 = !DILocalVariable(name: "type", arg: 3, scope: !6634, file: !6635, line: 179, type: !170)
!6643 = !DILocation(line: 179, column: 15, scope: !6634)
!6644 = !DILocation(line: 179, column: 23, scope: !6634)
!6645 = distinct !DISubprogram(name: "i8xx_destroy_pages", scope: !3, file: !3, line: 161, type: !2880, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6646 = !DILocalVariable(name: "v", arg: 1, scope: !6647, file: !6503, line: 106, type: !6506)
!6647 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6503, file: !6503, line: 106, type: !6504, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6648 = !DILocation(line: 106, column: 55, scope: !6647, inlinedAt: !6649)
!6649 = distinct !DILocation(line: 331, column: 2, scope: !6650, inlinedAt: !6651)
!6650 = distinct !DISubprogram(name: "atomic_dec", scope: !6510, file: !6510, line: 328, type: !6504, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6651 = distinct !DILocation(line: 168, column: 2, scope: !6645)
!6652 = !DILocation(line: 99, column: 79, scope: !6513, inlinedAt: !6653)
!6653 = distinct !DILocation(line: 330, column: 2, scope: !6650, inlinedAt: !6651)
!6654 = !DILocation(line: 99, column: 89, scope: !6513, inlinedAt: !6653)
!6655 = !DILocalVariable(name: "v", arg: 1, scope: !6650, file: !6510, line: 328, type: !6506)
!6656 = !DILocation(line: 328, column: 22, scope: !6650, inlinedAt: !6651)
!6657 = !DILocalVariable(name: "page", arg: 1, scope: !6645, file: !3, line: 161, type: !179)
!6658 = !DILocation(line: 161, column: 45, scope: !6645)
!6659 = !DILocation(line: 163, column: 6, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 163, column: 6)
!6661 = !DILocation(line: 163, column: 11, scope: !6660)
!6662 = !DILocation(line: 163, column: 6, scope: !6645)
!6663 = !DILocation(line: 164, column: 3, scope: !6660)
!6664 = !DILocation(line: 166, column: 15, scope: !6645)
!6665 = !DILocation(line: 166, column: 2, scope: !6645)
!6666 = !DILocation(line: 167, column: 15, scope: !6645)
!6667 = !DILocation(line: 167, column: 2, scope: !6645)
!6668 = !DILocation(line: 168, column: 14, scope: !6645)
!6669 = !DILocation(line: 168, column: 26, scope: !6645)
!6670 = !DILocation(line: 330, column: 31, scope: !6650, inlinedAt: !6651)
!6671 = !DILocation(line: 101, column: 20, scope: !6513, inlinedAt: !6653)
!6672 = !DILocation(line: 101, column: 23, scope: !6513, inlinedAt: !6653)
!6673 = !DILocation(line: 101, column: 2, scope: !6513, inlinedAt: !6653)
!6674 = !DILocation(line: 102, column: 2, scope: !6513, inlinedAt: !6653)
!6675 = !DILocation(line: 331, column: 18, scope: !6650, inlinedAt: !6651)
!6676 = !DILocation(line: 109, column: 16, scope: !6647, inlinedAt: !6649)
!6677 = !DILocation(line: 109, column: 19, scope: !6647, inlinedAt: !6649)
!6678 = !DILocation(line: 108, column: 2, scope: !6647, inlinedAt: !6649)
!6679 = !{i32 -2146593791}
!6680 = !DILocation(line: 169, column: 1, scope: !6645)
!6681 = distinct !DISubprogram(name: "intel_gtt_mappable_entries", scope: !3, file: !3, line: 517, type: !6682, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{!7}
!6684 = !DILocalVariable(name: "aperture_size", scope: !6681, file: !3, line: 519, type: !7)
!6685 = !DILocation(line: 519, column: 15, scope: !6681)
!6686 = !DILocation(line: 521, column: 6, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 521, column: 6)
!6688 = !DILocation(line: 521, column: 20, scope: !6687)
!6689 = !DILocation(line: 521, column: 6, scope: !6681)
!6690 = !DILocalVariable(name: "smram_miscc", scope: !6691, file: !3, line: 522, type: !171)
!6691 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 521, column: 26)
!6692 = !DILocation(line: 522, column: 7, scope: !6691)
!6693 = !DILocation(line: 524, column: 39, scope: !6691)
!6694 = !DILocation(line: 524, column: 3, scope: !6691)
!6695 = !DILocation(line: 527, column: 8, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 527, column: 7)
!6697 = !DILocation(line: 527, column: 20, scope: !6696)
!6698 = !DILocation(line: 528, column: 5, scope: !6696)
!6699 = !DILocation(line: 527, column: 7, scope: !6691)
!6700 = !DILocation(line: 529, column: 18, scope: !6696)
!6701 = !DILocation(line: 529, column: 4, scope: !6696)
!6702 = !DILocation(line: 531, column: 18, scope: !6696)
!6703 = !DILocation(line: 532, column: 2, scope: !6691)
!6704 = !DILocation(line: 532, column: 13, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 532, column: 13)
!6706 = !DILocation(line: 532, column: 27, scope: !6705)
!6707 = !DILocation(line: 532, column: 13, scope: !6687)
!6708 = !DILocalVariable(name: "gmch_ctrl", scope: !6709, file: !3, line: 533, type: !1185)
!6709 = distinct !DILexicalBlock(scope: !6705, file: !3, line: 532, column: 33)
!6710 = !DILocation(line: 533, column: 7, scope: !6709)
!6711 = !DILocation(line: 535, column: 38, scope: !6709)
!6712 = !DILocation(line: 535, column: 3, scope: !6709)
!6713 = !DILocation(line: 538, column: 8, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 538, column: 7)
!6715 = !DILocation(line: 538, column: 18, scope: !6714)
!6716 = !DILocation(line: 538, column: 40, scope: !6714)
!6717 = !DILocation(line: 538, column: 7, scope: !6709)
!6718 = !DILocation(line: 539, column: 18, scope: !6714)
!6719 = !DILocation(line: 539, column: 4, scope: !6714)
!6720 = !DILocation(line: 541, column: 18, scope: !6714)
!6721 = !DILocation(line: 542, column: 2, scope: !6709)
!6722 = !DILocation(line: 544, column: 19, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6705, file: !3, line: 542, column: 9)
!6724 = !DILocation(line: 544, column: 17, scope: !6723)
!6725 = !DILocation(line: 547, column: 9, scope: !6681)
!6726 = !DILocation(line: 547, column: 23, scope: !6681)
!6727 = !DILocation(line: 547, column: 2, scope: !6681)
!6728 = distinct !DISubprogram(name: "intel_gtt_total_entries", scope: !3, file: !3, line: 505, type: !6682, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6729 = !DILocation(line: 507, column: 6, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6728, file: !3, line: 507, column: 6)
!6731 = !DILocation(line: 507, column: 13, scope: !6730)
!6732 = !DILocation(line: 507, column: 16, scope: !6730)
!6733 = !DILocation(line: 507, column: 30, scope: !6730)
!6734 = !DILocation(line: 507, column: 35, scope: !6730)
!6735 = !DILocation(line: 507, column: 38, scope: !6730)
!6736 = !DILocation(line: 507, column: 52, scope: !6730)
!6737 = !DILocation(line: 507, column: 6, scope: !6728)
!6738 = !DILocation(line: 508, column: 10, scope: !6730)
!6739 = !DILocation(line: 508, column: 3, scope: !6730)
!6740 = !DILocation(line: 513, column: 24, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 509, column: 7)
!6742 = !DILocation(line: 513, column: 3, scope: !6741)
!6743 = !DILocation(line: 515, column: 1, scope: !6728)
!6744 = distinct !DISubprogram(name: "intel_gtt_can_wc", scope: !3, file: !3, line: 589, type: !3352, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6745 = !DILocation(line: 591, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 591, column: 6)
!6747 = !DILocation(line: 591, column: 20, scope: !6746)
!6748 = !DILocation(line: 591, column: 6, scope: !6744)
!6749 = !DILocation(line: 592, column: 3, scope: !6746)
!6750 = !DILocation(line: 594, column: 6, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 594, column: 6)
!6752 = !DILocation(line: 594, column: 20, scope: !6751)
!6753 = !DILocation(line: 594, column: 6, scope: !6744)
!6754 = !DILocation(line: 595, column: 3, scope: !6751)
!6755 = !DILocation(line: 598, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 598, column: 6)
!6757 = !DILocation(line: 598, column: 6, scope: !6744)
!6758 = !DILocation(line: 599, column: 3, scope: !6756)
!6759 = !DILocation(line: 601, column: 2, scope: !6744)
!6760 = !DILocation(line: 602, column: 1, scope: !6744)
!6761 = !DILocalVariable(name: "gmch_ctrl", scope: !4770, file: !3, line: 340, type: !1185)
!6762 = !DILocation(line: 340, column: 6, scope: !4770)
!6763 = !DILocalVariable(name: "rdct", scope: !4770, file: !3, line: 341, type: !982)
!6764 = !DILocation(line: 341, column: 5, scope: !4770)
!6765 = !DILocalVariable(name: "local", scope: !4770, file: !3, line: 342, type: !170)
!6766 = !DILocation(line: 342, column: 6, scope: !4770)
!6767 = !DILocalVariable(name: "stolen_size", scope: !4770, file: !3, line: 344, type: !3187)
!6768 = !DILocation(line: 344, column: 18, scope: !4770)
!6769 = !DILocation(line: 346, column: 6, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 346, column: 6)
!6771 = !DILocation(line: 346, column: 20, scope: !6770)
!6772 = !DILocation(line: 346, column: 6, scope: !4770)
!6773 = !DILocation(line: 347, column: 3, scope: !6770)
!6774 = !DILocation(line: 349, column: 37, scope: !4770)
!6775 = !DILocation(line: 349, column: 2, scope: !4770)
!6776 = !DILocation(line: 352, column: 20, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 352, column: 6)
!6778 = !DILocation(line: 352, column: 32, scope: !6777)
!6779 = !DILocation(line: 352, column: 6, scope: !6777)
!6780 = !DILocation(line: 352, column: 39, scope: !6777)
!6781 = !DILocation(line: 352, column: 71, scope: !6777)
!6782 = !DILocation(line: 353, column: 20, scope: !6777)
!6783 = !DILocation(line: 353, column: 32, scope: !6777)
!6784 = !DILocation(line: 353, column: 6, scope: !6777)
!6785 = !DILocation(line: 353, column: 39, scope: !6777)
!6786 = !DILocation(line: 352, column: 6, scope: !4770)
!6787 = !DILocation(line: 354, column: 11, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6777, file: !3, line: 353, column: 73)
!6789 = !DILocation(line: 354, column: 21, scope: !6788)
!6790 = !DILocation(line: 354, column: 3, scope: !6788)
!6791 = !DILocation(line: 356, column: 16, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6788, file: !3, line: 354, column: 43)
!6793 = !DILocation(line: 357, column: 4, scope: !6792)
!6794 = !DILocation(line: 359, column: 16, scope: !6792)
!6795 = !DILocation(line: 360, column: 4, scope: !6792)
!6796 = !DILocation(line: 362, column: 16, scope: !6792)
!6797 = !DILocation(line: 363, column: 4, scope: !6792)
!6798 = !DILocation(line: 365, column: 31, scope: !6792)
!6799 = !DILocation(line: 365, column: 40, scope: !6792)
!6800 = !DILocation(line: 365, column: 11, scope: !6792)
!6801 = !DILocation(line: 365, column: 9, scope: !6792)
!6802 = !DILocation(line: 366, column: 19, scope: !6792)
!6803 = !DILocation(line: 366, column: 39, scope: !6792)
!6804 = !DILocation(line: 367, column: 6, scope: !6792)
!6805 = !DILocation(line: 366, column: 44, scope: !6792)
!6806 = !DILocation(line: 366, column: 18, scope: !6792)
!6807 = !DILocation(line: 366, column: 16, scope: !6792)
!6808 = !DILocation(line: 368, column: 10, scope: !6792)
!6809 = !DILocation(line: 369, column: 4, scope: !6792)
!6810 = !DILocation(line: 371, column: 16, scope: !6792)
!6811 = !DILocation(line: 372, column: 4, scope: !6792)
!6812 = !DILocation(line: 374, column: 2, scope: !6788)
!6813 = !DILocation(line: 375, column: 11, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6777, file: !3, line: 374, column: 9)
!6815 = !DILocation(line: 375, column: 21, scope: !6814)
!6816 = !DILocation(line: 375, column: 3, scope: !6814)
!6817 = !DILocation(line: 377, column: 16, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 375, column: 43)
!6819 = !DILocation(line: 378, column: 4, scope: !6818)
!6820 = !DILocation(line: 380, column: 16, scope: !6818)
!6821 = !DILocation(line: 381, column: 4, scope: !6818)
!6822 = !DILocation(line: 383, column: 16, scope: !6818)
!6823 = !DILocation(line: 384, column: 4, scope: !6818)
!6824 = !DILocation(line: 386, column: 16, scope: !6818)
!6825 = !DILocation(line: 387, column: 4, scope: !6818)
!6826 = !DILocation(line: 389, column: 16, scope: !6818)
!6827 = !DILocation(line: 390, column: 4, scope: !6818)
!6828 = !DILocation(line: 392, column: 16, scope: !6818)
!6829 = !DILocation(line: 393, column: 4, scope: !6818)
!6830 = !DILocation(line: 395, column: 16, scope: !6818)
!6831 = !DILocation(line: 396, column: 4, scope: !6818)
!6832 = !DILocation(line: 398, column: 16, scope: !6818)
!6833 = !DILocation(line: 399, column: 4, scope: !6818)
!6834 = !DILocation(line: 401, column: 16, scope: !6818)
!6835 = !DILocation(line: 402, column: 4, scope: !6818)
!6836 = !DILocation(line: 404, column: 16, scope: !6818)
!6837 = !DILocation(line: 405, column: 4, scope: !6818)
!6838 = !DILocation(line: 407, column: 16, scope: !6818)
!6839 = !DILocation(line: 408, column: 4, scope: !6818)
!6840 = !DILocation(line: 410, column: 16, scope: !6818)
!6841 = !DILocation(line: 411, column: 4, scope: !6818)
!6842 = !DILocation(line: 413, column: 16, scope: !6818)
!6843 = !DILocation(line: 414, column: 4, scope: !6818)
!6844 = !DILocation(line: 416, column: 16, scope: !6818)
!6845 = !DILocation(line: 417, column: 4, scope: !6818)
!6846 = !DILocation(line: 421, column: 6, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 421, column: 6)
!6848 = !DILocation(line: 421, column: 18, scope: !6847)
!6849 = !DILocation(line: 421, column: 6, scope: !4770)
!6850 = !DILocation(line: 422, column: 3, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 421, column: 23)
!6852 = !DILocation(line: 424, column: 2, scope: !6851)
!6853 = !DILocation(line: 425, column: 3, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 424, column: 9)
!6855 = !DILocation(line: 427, column: 15, scope: !6854)
!6856 = !DILocation(line: 430, column: 9, scope: !4770)
!6857 = !DILocation(line: 430, column: 2, scope: !4770)
!6858 = !DILocation(line: 431, column: 1, scope: !4770)
!6859 = distinct !DISubprogram(name: "intel_gtt_setup_scratch_page", scope: !3, file: !3, line: 294, type: !3093, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6860 = !DILocalVariable(name: "page", scope: !6859, file: !3, line: 296, type: !179)
!6861 = !DILocation(line: 296, column: 15, scope: !6859)
!6862 = !DILocalVariable(name: "dma_addr", scope: !6859, file: !3, line: 297, type: !178)
!6863 = !DILocation(line: 297, column: 13, scope: !6859)
!6864 = !DILocation(line: 299, column: 9, scope: !6859)
!6865 = !DILocation(line: 299, column: 7, scope: !6859)
!6866 = !DILocation(line: 300, column: 6, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6859, file: !3, line: 300, column: 6)
!6868 = !DILocation(line: 300, column: 11, scope: !6867)
!6869 = !DILocation(line: 300, column: 6, scope: !6859)
!6870 = !DILocation(line: 301, column: 3, scope: !6867)
!6871 = !DILocation(line: 302, column: 15, scope: !6859)
!6872 = !DILocation(line: 302, column: 2, scope: !6859)
!6873 = !DILocation(line: 304, column: 20, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6859, file: !3, line: 304, column: 6)
!6875 = !DILocation(line: 304, column: 6, scope: !6874)
!6876 = !DILocation(line: 304, column: 6, scope: !6859)
!6877 = !DILocation(line: 305, column: 41, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 304, column: 32)
!6879 = !DILocation(line: 305, column: 49, scope: !6878)
!6880 = !DILocation(line: 305, column: 14, scope: !6878)
!6881 = !DILocation(line: 305, column: 12, scope: !6878)
!6882 = !DILocation(line: 307, column: 43, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6878, file: !3, line: 307, column: 7)
!6884 = !DILocation(line: 307, column: 51, scope: !6883)
!6885 = !DILocation(line: 307, column: 7, scope: !6883)
!6886 = !DILocation(line: 307, column: 7, scope: !6878)
!6887 = !DILocation(line: 308, column: 4, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6883, file: !3, line: 307, column: 62)
!6889 = !DILocation(line: 309, column: 4, scope: !6888)
!6890 = !DILocation(line: 312, column: 36, scope: !6878)
!6891 = !DILocation(line: 312, column: 34, scope: !6878)
!6892 = !DILocation(line: 313, column: 2, scope: !6878)
!6893 = !DILocation(line: 314, column: 36, scope: !6874)
!6894 = !DILocation(line: 314, column: 34, scope: !6874)
!6895 = !DILocation(line: 316, column: 31, scope: !6859)
!6896 = !DILocation(line: 316, column: 29, scope: !6859)
!6897 = !DILocation(line: 318, column: 2, scope: !6859)
!6898 = !DILocation(line: 319, column: 1, scope: !6859)
!6899 = distinct !DISubprogram(name: "pci_bus_address", scope: !3167, file: !3167, line: 1364, type: !6900, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6900 = !DISubroutineType(types: !6901)
!6901 = !{!6902, !3165, !170}
!6902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !3167, line: 749, baseType: !175)
!6903 = !DILocalVariable(name: "pdev", arg: 1, scope: !6899, file: !3167, line: 1364, type: !3165)
!6904 = !DILocation(line: 1364, column: 62, scope: !6899)
!6905 = !DILocalVariable(name: "bar", arg: 2, scope: !6899, file: !3167, line: 1364, type: !170)
!6906 = !DILocation(line: 1364, column: 72, scope: !6899)
!6907 = !DILocalVariable(name: "region", scope: !6899, file: !3167, line: 1366, type: !6908)
!6908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !3167, line: 754, size: 128, elements: !6909)
!6909 = !{!6910, !6911}
!6910 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6908, file: !3167, line: 755, baseType: !6902, size: 64)
!6911 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6908, file: !3167, line: 756, baseType: !6902, size: 64, offset: 64)
!6912 = !DILocation(line: 1366, column: 24, scope: !6899)
!6913 = !DILocation(line: 1368, column: 26, scope: !6899)
!6914 = !DILocation(line: 1368, column: 32, scope: !6899)
!6915 = !DILocation(line: 1368, column: 47, scope: !6899)
!6916 = !DILocation(line: 1368, column: 53, scope: !6899)
!6917 = !DILocation(line: 1368, column: 62, scope: !6899)
!6918 = !DILocation(line: 1368, column: 2, scope: !6899)
!6919 = !DILocation(line: 1369, column: 16, scope: !6899)
!6920 = !DILocation(line: 1369, column: 2, scope: !6899)
!6921 = distinct !DISubprogram(name: "i965_gtt_total_entries", scope: !3, file: !3, line: 449, type: !6682, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6922 = !DILocalVariable(name: "size", scope: !6921, file: !3, line: 451, type: !170)
!6923 = !DILocation(line: 451, column: 6, scope: !6921)
!6924 = !DILocalVariable(name: "pgetbl_ctl", scope: !6921, file: !3, line: 452, type: !171)
!6925 = !DILocation(line: 452, column: 6, scope: !6921)
!6926 = !DILocalVariable(name: "gmch_ctl", scope: !6921, file: !3, line: 453, type: !1185)
!6927 = !DILocation(line: 453, column: 6, scope: !6921)
!6928 = !DILocation(line: 455, column: 37, scope: !6921)
!6929 = !DILocation(line: 455, column: 2, scope: !6921)
!6930 = !DILocation(line: 458, column: 6, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 458, column: 6)
!6932 = !DILocation(line: 458, column: 20, scope: !6931)
!6933 = !DILocation(line: 458, column: 6, scope: !6921)
!6934 = !DILocation(line: 459, column: 11, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6931, file: !3, line: 458, column: 26)
!6936 = !DILocation(line: 459, column: 20, scope: !6935)
!6937 = !DILocation(line: 459, column: 3, scope: !6935)
!6938 = !DILocation(line: 462, column: 4, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 459, column: 42)
!6940 = !DILocation(line: 463, column: 4, scope: !6939)
!6941 = !DILocation(line: 465, column: 4, scope: !6939)
!6942 = !DILocation(line: 466, column: 4, scope: !6939)
!6943 = !DILocation(line: 469, column: 4, scope: !6939)
!6944 = !DILocation(line: 470, column: 4, scope: !6939)
!6945 = !DILocation(line: 472, column: 2, scope: !6935)
!6946 = !DILocation(line: 474, column: 35, scope: !6921)
!6947 = !DILocation(line: 474, column: 44, scope: !6921)
!6948 = !DILocation(line: 474, column: 15, scope: !6921)
!6949 = !DILocation(line: 474, column: 13, scope: !6921)
!6950 = !DILocation(line: 476, column: 10, scope: !6921)
!6951 = !DILocation(line: 476, column: 21, scope: !6921)
!6952 = !DILocation(line: 476, column: 2, scope: !6921)
!6953 = !DILocation(line: 478, column: 8, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 476, column: 46)
!6955 = !DILocation(line: 479, column: 3, scope: !6954)
!6956 = !DILocation(line: 481, column: 8, scope: !6954)
!6957 = !DILocation(line: 482, column: 3, scope: !6954)
!6958 = !DILocation(line: 484, column: 8, scope: !6954)
!6959 = !DILocation(line: 485, column: 3, scope: !6954)
!6960 = !DILocation(line: 488, column: 8, scope: !6954)
!6961 = !DILocation(line: 489, column: 3, scope: !6954)
!6962 = !DILocation(line: 491, column: 8, scope: !6954)
!6963 = !DILocation(line: 492, column: 3, scope: !6954)
!6964 = !DILocation(line: 494, column: 8, scope: !6954)
!6965 = !DILocation(line: 495, column: 3, scope: !6954)
!6966 = !DILocation(line: 497, column: 3, scope: !6954)
!6967 = !DILocation(line: 499, column: 8, scope: !6954)
!6968 = !DILocation(line: 500, column: 2, scope: !6954)
!6969 = !DILocation(line: 502, column: 9, scope: !6921)
!6970 = !DILocation(line: 502, column: 13, scope: !6921)
!6971 = !DILocation(line: 502, column: 2, scope: !6921)
!6972 = distinct !DISubprogram(name: "i965_adjust_pgetbl_size", scope: !3, file: !3, line: 433, type: !6973, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!6973 = !DISubroutineType(types: !6974)
!6974 = !{null, !7}
!6975 = !DILocalVariable(name: "size_flag", arg: 1, scope: !6972, file: !3, line: 433, type: !7)
!6976 = !DILocation(line: 433, column: 50, scope: !6972)
!6977 = !DILocalVariable(name: "pgetbl_ctl", scope: !6972, file: !3, line: 435, type: !171)
!6978 = !DILocation(line: 435, column: 6, scope: !6972)
!6979 = !DILocalVariable(name: "pgetbl_ctl2", scope: !6972, file: !3, line: 435, type: !171)
!6980 = !DILocation(line: 435, column: 18, scope: !6972)
!6981 = !DILocation(line: 438, column: 36, scope: !6972)
!6982 = !DILocation(line: 438, column: 45, scope: !6972)
!6983 = !DILocation(line: 438, column: 16, scope: !6972)
!6984 = !DILocation(line: 438, column: 14, scope: !6972)
!6985 = !DILocation(line: 439, column: 14, scope: !6972)
!6986 = !DILocation(line: 440, column: 9, scope: !6972)
!6987 = !DILocation(line: 440, column: 36, scope: !6972)
!6988 = !DILocation(line: 440, column: 45, scope: !6972)
!6989 = !DILocation(line: 440, column: 2, scope: !6972)
!6990 = !DILocation(line: 443, column: 35, scope: !6972)
!6991 = !DILocation(line: 443, column: 44, scope: !6972)
!6992 = !DILocation(line: 443, column: 15, scope: !6972)
!6993 = !DILocation(line: 443, column: 13, scope: !6972)
!6994 = !DILocation(line: 444, column: 13, scope: !6972)
!6995 = !DILocation(line: 445, column: 16, scope: !6972)
!6996 = !DILocation(line: 445, column: 13, scope: !6972)
!6997 = !DILocation(line: 446, column: 9, scope: !6972)
!6998 = !DILocation(line: 446, column: 35, scope: !6972)
!6999 = !DILocation(line: 446, column: 44, scope: !6972)
!7000 = !DILocation(line: 446, column: 2, scope: !6972)
!7001 = !DILocation(line: 447, column: 1, scope: !6972)
!7002 = distinct !DISubprogram(name: "needs_ilk_vtd_wa", scope: !3, file: !3, line: 573, type: !3093, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7003 = !DILocation(line: 586, column: 2, scope: !7002)
!7004 = distinct !DISubprogram(name: "readb", scope: !4866, file: !4866, line: 57, type: !7005, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7005 = !DISubroutineType(types: !7006)
!7006 = !{!273, !4878}
!7007 = !DILocalVariable(name: "addr", arg: 1, scope: !7004, file: !4866, line: 57, type: !4878)
!7008 = !DILocation(line: 57, column: 1, scope: !7004)
!7009 = !DILocalVariable(name: "ret", scope: !7004, file: !4866, line: 57, type: !273)
!7010 = !{i32 -2143399944}
!7011 = distinct !DISubprogram(name: "pci_map_page", scope: !5178, file: !5178, line: 51, type: !7012, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7012 = !DISubroutineType(types: !7013)
!7013 = !{!178, !3165, !179, !168, !1161, !170}
!7014 = !DILocalVariable(name: "hwdev", arg: 1, scope: !7011, file: !5178, line: 51, type: !3165)
!7015 = !DILocation(line: 51, column: 30, scope: !7011)
!7016 = !DILocalVariable(name: "page", arg: 2, scope: !7011, file: !5178, line: 51, type: !179)
!7017 = !DILocation(line: 51, column: 50, scope: !7011)
!7018 = !DILocalVariable(name: "offset", arg: 3, scope: !7011, file: !5178, line: 52, type: !168)
!7019 = !DILocation(line: 52, column: 21, scope: !7011)
!7020 = !DILocalVariable(name: "size", arg: 4, scope: !7011, file: !5178, line: 52, type: !1161)
!7021 = !DILocation(line: 52, column: 36, scope: !7011)
!7022 = !DILocalVariable(name: "direction", arg: 5, scope: !7011, file: !5178, line: 52, type: !170)
!7023 = !DILocation(line: 52, column: 46, scope: !7011)
!7024 = !DILocation(line: 54, column: 9, scope: !7011)
!7025 = !DILocation(line: 54, column: 2, scope: !7011)
!7026 = distinct !DISubprogram(name: "pci_dma_mapping_error", scope: !5178, file: !5178, line: 107, type: !7027, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7027 = !DISubroutineType(types: !7028)
!7028 = !{!170, !3165, !178}
!7029 = !DILocalVariable(name: "pdev", arg: 1, scope: !7026, file: !5178, line: 107, type: !3165)
!7030 = !DILocation(line: 107, column: 39, scope: !7026)
!7031 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7026, file: !5178, line: 107, type: !178)
!7032 = !DILocation(line: 107, column: 56, scope: !7026)
!7033 = !DILocation(line: 109, column: 28, scope: !7026)
!7034 = !DILocation(line: 109, column: 34, scope: !7026)
!7035 = !DILocation(line: 109, column: 39, scope: !7026)
!7036 = !DILocation(line: 109, column: 9, scope: !7026)
!7037 = !DILocation(line: 109, column: 2, scope: !7026)
!7038 = distinct !DISubprogram(name: "dma_mapping_error", scope: !7039, file: !7039, line: 94, type: !7040, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7039 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!7040 = !DISubroutineType(types: !7041)
!7041 = !{!170, !3228, !178}
!7042 = !DILocalVariable(name: "dev", arg: 1, scope: !7038, file: !7039, line: 94, type: !3228)
!7043 = !DILocation(line: 94, column: 52, scope: !7038)
!7044 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7038, file: !7039, line: 94, type: !178)
!7045 = !DILocation(line: 94, column: 68, scope: !7038)
!7046 = !DILocation(line: 96, column: 26, scope: !7038)
!7047 = !DILocation(line: 96, column: 31, scope: !7038)
!7048 = !DILocation(line: 96, column: 2, scope: !7038)
!7049 = !DILocation(line: 98, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !7038, file: !7039, line: 98, column: 6)
!7051 = !DILocation(line: 98, column: 15, scope: !7050)
!7052 = !DILocation(line: 98, column: 6, scope: !7038)
!7053 = !DILocation(line: 99, column: 3, scope: !7050)
!7054 = !DILocation(line: 100, column: 2, scope: !7038)
!7055 = !DILocation(line: 101, column: 1, scope: !7038)
!7056 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !7039, file: !7039, line: 83, type: !7057, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7057 = !DISubroutineType(types: !7058)
!7058 = !{null, !3228, !178}
!7059 = !DILocalVariable(name: "dev", arg: 1, scope: !7056, file: !7039, line: 83, type: !3228)
!7060 = !DILocation(line: 83, column: 59, scope: !7056)
!7061 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7056, file: !7039, line: 84, type: !178)
!7062 = !DILocation(line: 84, column: 14, scope: !7056)
!7063 = !DILocation(line: 86, column: 1, scope: !7056)
!7064 = distinct !DISubprogram(name: "pci_unmap_page", scope: !5178, file: !5178, line: 58, type: !7065, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !304)
!7065 = !DISubroutineType(types: !7066)
!7066 = !{null, !3165, !178, !1161, !170}
!7067 = !DILocalVariable(name: "hwdev", arg: 1, scope: !7064, file: !5178, line: 58, type: !3165)
!7068 = !DILocation(line: 58, column: 32, scope: !7064)
!7069 = !DILocalVariable(name: "dma_address", arg: 2, scope: !7064, file: !5178, line: 58, type: !178)
!7070 = !DILocation(line: 58, column: 50, scope: !7064)
!7071 = !DILocalVariable(name: "size", arg: 3, scope: !7064, file: !5178, line: 59, type: !1161)
!7072 = !DILocation(line: 59, column: 16, scope: !7064)
!7073 = !DILocalVariable(name: "direction", arg: 4, scope: !7064, file: !5178, line: 59, type: !170)
!7074 = !DILocation(line: 59, column: 26, scope: !7064)
!7075 = !DILocation(line: 61, column: 2, scope: !7064)
!7076 = !DILocation(line: 62, column: 1, scope: !7064)
