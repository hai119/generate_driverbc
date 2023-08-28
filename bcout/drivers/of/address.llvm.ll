; ModuleID = '../bcout/drivers/of/address.llvm.bc'
source_filename = "drivers/of/address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.of_bus = type { i8*, i8*, i32 (%struct.device_node*)*, void (%struct.device_node*, i32*, i32*)*, i64 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i64, i32)*, i8, i32 (i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wake_irq = type opaque
%struct.atomic_t = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type { i8* (%struct.device*, i64, i64*, i32, i64)*, void (%struct.device*, i64, i8*, i64, i64)*, %struct.page* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, %struct.page*, i64, i32)*, i8* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, i8*, i64, i32)*, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64)*, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, i64)*, i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, void (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, i64 (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, i8*, i64, i32)*, i32 (%struct.device*, i64)*, i64 (%struct.device*)*, i64 (%struct.device*)*, i64 (%struct.device*)* }
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.bus_dma_region = type { i64, i64, i64, i64 }
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kmem_cache = type opaque
%struct.of_pci_range = type { %union.anon.65, i64, i64, i32 }
%union.anon.65 = type { i64 }
%struct.logic_pio_hwaddr = type { %struct.list_head, %struct.fwnode_handle*, i64, i64, i64, i64, i8*, %struct.logic_pio_host_ops* }
%struct.logic_pio_host_ops = type { i32 (i8*, i64, i64)*, void (i8*, i64, i32, i64)*, i32 (i8*, i64, i8*, i64, i32)*, void (i8*, i64, i8*, i64, i32)* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.of_pci_range_parser = type { %struct.device_node*, %struct.of_bus*, i32*, i32*, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.4 = private unnamed_addr constant [73 x i8] c"\013OF: translation of DMA address(%llx) to CPU address failed node(%pOF)\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@of_busses = internal global [3 x %struct.of_bus] [%struct.of_bus { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.device_node*)* @of_bus_pci_match, void (%struct.device_node*, i32*, i32*)* @of_bus_pci_count_cells, i64 (i32*, i32*, i32, i32, i32)* @of_bus_pci_map, i32 (i32*, i64, i32)* @of_bus_pci_translate, i8 1, i32 (i32*)* @of_bus_pci_get_flags }, %struct.of_bus { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.device_node*)* @of_bus_isa_match, void (%struct.device_node*, i32*, i32*)* @of_bus_isa_count_cells, i64 (i32*, i32*, i32, i32, i32)* @of_bus_isa_map, i32 (i32*, i64, i32)* @of_bus_isa_translate, i8 1, i32 (i32*)* @of_bus_isa_get_flags }, %struct.of_bus { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.device_node*)* null, void (%struct.device_node*, i32*, i32*)* @of_bus_default_count_cells, i64 (i32*, i32*, i32, i32, i32)* @of_bus_default_map, i32 (i32*, i64, i32)* @of_bus_default_translate, i8 0, i32 (i32*)* @of_bus_default_get_flags }], align 16, !dbg !0
@.str.6 = private unnamed_addr constant [21 x i8] c"drivers/of/address.c\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pciex\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ht\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@of_node_is_pcie.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !135
@.str.16 = private unnamed_addr constant [33 x i8] c"\014OF: %pOF: Missing device_type\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"translating address:\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\013OF: Bad cell count for %pOF\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"one level translation:\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"parent translation for:\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"interconnect-names\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"dma-mem\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.25 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32* @of_get_pci_address(%struct.device_node* %dev, i32 %bar_no, i64* %size, i32* %flags) #0 !dbg !3908 {
entry:
  %retval = alloca i32*, align 8
  %dev.addr = alloca %struct.device_node*, align 8
  %bar_no.addr = alloca i32, align 4
  %size.addr = alloca i64*, align 8
  %flags.addr = alloca i32*, align 8
  %prop = alloca i32*, align 8
  %psize = alloca i32, align 4
  %parent = alloca %struct.device_node*, align 8
  %bus = alloca %struct.of_bus*, align 8
  %onesize = alloca i32, align 4
  %i = alloca i32, align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i32 %bar_no, i32* %bar_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar_no.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  store i64* %size, i64** %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !3917, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.declare(metadata i32** %prop, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.declare(metadata i32* %psize, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata %struct.of_bus** %bus, metadata !3925, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.declare(metadata i32* %onesize, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata i32* %na, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.declare(metadata i32* %ns, metadata !3934, metadata !DIExpression()), !dbg !3935
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3936
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* %0) #8, !dbg !3937
  store %struct.device_node* %call, %struct.device_node** %parent, align 8, !dbg !3938
  %1 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3939
  %cmp = icmp eq %struct.device_node* %1, null, !dbg !3941
  br i1 %cmp, label %if.then, label %if.end, !dbg !3942

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 8, !dbg !3943
  br label %return, !dbg !3943

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3944
  %call1 = call %struct.of_bus* @of_match_bus(%struct.device_node* %2) #8, !dbg !3945
  store %struct.of_bus* %call1, %struct.of_bus** %bus, align 8, !dbg !3946
  %3 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !3947
  %name = getelementptr inbounds %struct.of_bus, %struct.of_bus* %3, i32 0, i32 0, !dbg !3949
  %4 = load i8*, i8** %name, align 8, !dbg !3949
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3950
  %tobool = icmp ne i32 %call2, 0, !dbg !3950
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !3951

if.then3:                                         ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3952
  call void @of_node_put(%struct.device_node* %5) #8, !dbg !3954
  store i32* null, i32** %retval, align 8, !dbg !3955
  br label %return, !dbg !3955

if.end4:                                          ; preds = %if.end
  %6 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !3956
  %count_cells = getelementptr inbounds %struct.of_bus, %struct.of_bus* %6, i32 0, i32 3, !dbg !3957
  %7 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells, align 8, !dbg !3957
  %8 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3958
  call void %7(%struct.device_node* %8, i32* %na, i32* %ns) #8, !dbg !3956
  %9 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3959
  call void @of_node_put(%struct.device_node* %9) #8, !dbg !3960
  %10 = load i32, i32* %na, align 4, !dbg !3961
  %cmp5 = icmp sgt i32 %10, 0, !dbg !3961
  br i1 %cmp5, label %land.lhs.true, label %if.then7, !dbg !3961

land.lhs.true:                                    ; preds = %if.end4
  %11 = load i32, i32* %na, align 4, !dbg !3961
  %cmp6 = icmp sle i32 %11, 4, !dbg !3961
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !3963

if.then7:                                         ; preds = %land.lhs.true, %if.end4
  store i32* null, i32** %retval, align 8, !dbg !3964
  br label %return, !dbg !3964

if.end8:                                          ; preds = %land.lhs.true
  %12 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3965
  %13 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !3966
  %addresses = getelementptr inbounds %struct.of_bus, %struct.of_bus* %13, i32 0, i32 1, !dbg !3967
  %14 = load i8*, i8** %addresses, align 8, !dbg !3967
  %call9 = call i8* @of_get_property(%struct.device_node* %12, i8* %14, i32* %psize) #8, !dbg !3968
  %15 = bitcast i8* %call9 to i32*, !dbg !3968
  store i32* %15, i32** %prop, align 8, !dbg !3969
  %16 = load i32*, i32** %prop, align 8, !dbg !3970
  %cmp10 = icmp eq i32* %16, null, !dbg !3972
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3973

if.then11:                                        ; preds = %if.end8
  store i32* null, i32** %retval, align 8, !dbg !3974
  br label %return, !dbg !3974

if.end12:                                         ; preds = %if.end8
  %17 = load i32, i32* %psize, align 4, !dbg !3975
  %div = udiv i32 %17, 4, !dbg !3975
  store i32 %div, i32* %psize, align 4, !dbg !3975
  %18 = load i32, i32* %na, align 4, !dbg !3976
  %19 = load i32, i32* %ns, align 4, !dbg !3977
  %add = add i32 %18, %19, !dbg !3978
  store i32 %add, i32* %onesize, align 4, !dbg !3979
  store i32 0, i32* %i, align 4, !dbg !3980
  br label %for.cond, !dbg !3982

for.cond:                                         ; preds = %for.inc, %if.end12
  %20 = load i32, i32* %psize, align 4, !dbg !3983
  %21 = load i32, i32* %onesize, align 4, !dbg !3985
  %cmp13 = icmp uge i32 %20, %21, !dbg !3986
  br i1 %cmp13, label %for.body, label %for.end, !dbg !3987

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3988, metadata !DIExpression()), !dbg !3990
  %22 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx = getelementptr i32, i32* %22, i64 0, !dbg !3991
  %23 = load i32, i32* %arrayidx, align 4, !dbg !3991
  %24 = call i1 @llvm.is.constant.i32(i32 %23), !dbg !3991
  br i1 %24, label %cond.true, label %cond.false, !dbg !3991

cond.true:                                        ; preds = %for.body
  %25 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx14 = getelementptr i32, i32* %25, i64 0, !dbg !3991
  %26 = load i32, i32* %arrayidx14, align 4, !dbg !3991
  %and = and i32 %26, 255, !dbg !3991
  %shl = shl i32 %and, 24, !dbg !3991
  %27 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx15 = getelementptr i32, i32* %27, i64 0, !dbg !3991
  %28 = load i32, i32* %arrayidx15, align 4, !dbg !3991
  %and16 = and i32 %28, 65280, !dbg !3991
  %shl17 = shl i32 %and16, 8, !dbg !3991
  %or = or i32 %shl, %shl17, !dbg !3991
  %29 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx18 = getelementptr i32, i32* %29, i64 0, !dbg !3991
  %30 = load i32, i32* %arrayidx18, align 4, !dbg !3991
  %and19 = and i32 %30, 16711680, !dbg !3991
  %shr = lshr i32 %and19, 8, !dbg !3991
  %or20 = or i32 %or, %shr, !dbg !3991
  %31 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx21 = getelementptr i32, i32* %31, i64 0, !dbg !3991
  %32 = load i32, i32* %arrayidx21, align 4, !dbg !3991
  %and22 = and i32 %32, -16777216, !dbg !3991
  %shr23 = lshr i32 %and22, 24, !dbg !3991
  %or24 = or i32 %or20, %shr23, !dbg !3991
  br label %cond.end, !dbg !3991

cond.false:                                       ; preds = %for.body
  %33 = load i32*, i32** %prop, align 8, !dbg !3991
  %arrayidx25 = getelementptr i32, i32* %33, i64 0, !dbg !3991
  %34 = load i32, i32* %arrayidx25, align 4, !dbg !3991
  %call26 = call i32 @__fswab32(i32 %34) #9, !dbg !3991
  br label %cond.end, !dbg !3991

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or24, %cond.true ], [ %call26, %cond.false ], !dbg !3991
  store i32 %cond, i32* %val, align 4, !dbg !3990
  %35 = load i32, i32* %val, align 4, !dbg !3992
  %and27 = and i32 %35, 255, !dbg !3994
  %36 = load i32, i32* %bar_no.addr, align 4, !dbg !3995
  %mul = mul i32 %36, 4, !dbg !3996
  %add28 = add i32 %mul, 16, !dbg !3997
  %cmp29 = icmp eq i32 %and27, %add28, !dbg !3998
  br i1 %cmp29, label %if.then30, label %if.end39, !dbg !3999

if.then30:                                        ; preds = %cond.end
  %37 = load i64*, i64** %size.addr, align 8, !dbg !4000
  %tobool31 = icmp ne i64* %37, null, !dbg !4000
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4003

if.then32:                                        ; preds = %if.then30
  %38 = load i32*, i32** %prop, align 8, !dbg !4004
  %39 = load i32, i32* %na, align 4, !dbg !4005
  %idx.ext = sext i32 %39 to i64, !dbg !4006
  %add.ptr = getelementptr i32, i32* %38, i64 %idx.ext, !dbg !4006
  %40 = load i32, i32* %ns, align 4, !dbg !4007
  %call33 = call i64 @of_read_number(i32* %add.ptr, i32 %40) #8, !dbg !4008
  %41 = load i64*, i64** %size.addr, align 8, !dbg !4009
  store i64 %call33, i64* %41, align 8, !dbg !4010
  br label %if.end34, !dbg !4011

if.end34:                                         ; preds = %if.then32, %if.then30
  %42 = load i32*, i32** %flags.addr, align 8, !dbg !4012
  %tobool35 = icmp ne i32* %42, null, !dbg !4012
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !4014

if.then36:                                        ; preds = %if.end34
  %43 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4015
  %get_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %43, i32 0, i32 7, !dbg !4016
  %44 = load i32 (i32*)*, i32 (i32*)** %get_flags, align 8, !dbg !4016
  %45 = load i32*, i32** %prop, align 8, !dbg !4017
  %call37 = call i32 %44(i32* %45) #8, !dbg !4015
  %46 = load i32*, i32** %flags.addr, align 8, !dbg !4018
  store i32 %call37, i32* %46, align 4, !dbg !4019
  br label %if.end38, !dbg !4020

if.end38:                                         ; preds = %if.then36, %if.end34
  %47 = load i32*, i32** %prop, align 8, !dbg !4021
  store i32* %47, i32** %retval, align 8, !dbg !4022
  br label %return, !dbg !4022

if.end39:                                         ; preds = %cond.end
  br label %for.inc, !dbg !4023

for.inc:                                          ; preds = %if.end39
  %48 = load i32, i32* %onesize, align 4, !dbg !4024
  %49 = load i32, i32* %psize, align 4, !dbg !4025
  %sub = sub i32 %49, %48, !dbg !4025
  store i32 %sub, i32* %psize, align 4, !dbg !4025
  %50 = load i32, i32* %onesize, align 4, !dbg !4026
  %51 = load i32*, i32** %prop, align 8, !dbg !4027
  %idx.ext40 = sext i32 %50 to i64, !dbg !4027
  %add.ptr41 = getelementptr i32, i32* %51, i64 %idx.ext40, !dbg !4027
  store i32* %add.ptr41, i32** %prop, align 8, !dbg !4027
  %52 = load i32, i32* %i, align 4, !dbg !4028
  %inc = add i32 %52, 1, !dbg !4028
  store i32 %inc, i32* %i, align 4, !dbg !4028
  br label %for.cond, !dbg !4029, !llvm.loop !4030

for.end:                                          ; preds = %for.cond
  store i32* null, i32** %retval, align 8, !dbg !4032
  br label %return, !dbg !4032

return:                                           ; preds = %for.end, %if.end38, %if.then11, %if.then7, %if.then3, %if.then
  %53 = load i32*, i32** %retval, align 8, !dbg !4033
  ret i32* %53, !dbg !4033
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.of_bus* @of_match_bus(%struct.device_node* %np) #0 !dbg !4034 {
entry:
  %retval = alloca %struct.of_bus*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %i = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i32 0, i32* %i, align 4, !dbg !4041
  br label %for.cond, !dbg !4043

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4044
  %conv = sext i32 %0 to i64, !dbg !4044
  %cmp = icmp ult i64 %conv, 3, !dbg !4046
  br i1 %cmp, label %for.body, label %for.end, !dbg !4047

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !4048
  %idxprom = sext i32 %1 to i64, !dbg !4050
  %arrayidx = getelementptr [3 x %struct.of_bus], [3 x %struct.of_bus]* @of_busses, i64 0, i64 %idxprom, !dbg !4050
  %match = getelementptr inbounds %struct.of_bus, %struct.of_bus* %arrayidx, i32 0, i32 2, !dbg !4051
  %2 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %match, align 16, !dbg !4051
  %tobool = icmp ne i32 (%struct.device_node*)* %2, null, !dbg !4050
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4052

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !4053
  %idxprom2 = sext i32 %3 to i64, !dbg !4054
  %arrayidx3 = getelementptr [3 x %struct.of_bus], [3 x %struct.of_bus]* @of_busses, i64 0, i64 %idxprom2, !dbg !4054
  %match4 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %arrayidx3, i32 0, i32 2, !dbg !4055
  %4 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %match4, align 16, !dbg !4055
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4056
  %call = call i32 %4(%struct.device_node* %5) #8, !dbg !4054
  %tobool5 = icmp ne i32 %call, 0, !dbg !4054
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4057

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4058
  %idxprom6 = sext i32 %6 to i64, !dbg !4059
  %arrayidx7 = getelementptr [3 x %struct.of_bus], [3 x %struct.of_bus]* @of_busses, i64 0, i64 %idxprom6, !dbg !4059
  store %struct.of_bus* %arrayidx7, %struct.of_bus** %retval, align 8, !dbg !4060
  br label %return, !dbg !4060

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !4061

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !4062
  %inc = add i32 %7, 1, !dbg !4062
  store i32 %inc, i32* %i, align 4, !dbg !4062
  br label %for.cond, !dbg !4063, !llvm.loop !4064

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !4066

do.body:                                          ; preds = %for.end
  br label %do.body8, !dbg !4067

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4069

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4067

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 417, i32 0, i64 12) #10, !dbg !4071, !srcloc !4073
  br label %do.end10, !dbg !4071

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4067

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #10, !dbg !4074, !srcloc !4077
  unreachable, !dbg !4078

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !4067

do.end13:                                         ; preds = %do.end12
  store %struct.of_bus* null, %struct.of_bus** %retval, align 8, !dbg !4079
  br label %return, !dbg !4079

return:                                           ; preds = %do.end13, %if.then
  %8 = load %struct.of_bus*, %struct.of_bus** %retval, align 8, !dbg !4080
  ret %struct.of_bus* %8, !dbg !4080
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !4081 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4084, metadata !DIExpression()), !dbg !4085
  ret void, !dbg !4086
}

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #4 !dbg !4087 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  %0 = load i32, i32* %val.addr, align 4, !dbg !4093
  %call = call i32 @__arch_swab32(i32 %0) #9, !dbg !4094
  ret i32 %call, !dbg !4095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_read_number(i32* %cell, i32 %size) #0 !dbg !4096 {
entry:
  %cell.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %r = alloca i64, align 8
  store i32* %cell, i32** %cell.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cell.addr, metadata !4099, metadata !DIExpression()), !dbg !4100
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.declare(metadata i64* %r, metadata !4103, metadata !DIExpression()), !dbg !4104
  store i64 0, i64* %r, align 8, !dbg !4104
  br label %for.cond, !dbg !4105

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4, !dbg !4106
  %dec = add i32 %0, -1, !dbg !4106
  store i32 %dec, i32* %size.addr, align 4, !dbg !4106
  %tobool = icmp ne i32 %0, 0, !dbg !4109
  br i1 %tobool, label %for.body, label %for.end, !dbg !4109

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %r, align 8, !dbg !4110
  %shl = shl i64 %1, 32, !dbg !4111
  %2 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %3 = load i32, i32* %2, align 4, !dbg !4112
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !4112
  br i1 %4, label %cond.true, label %cond.false, !dbg !4112

cond.true:                                        ; preds = %for.body
  %5 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %6 = load i32, i32* %5, align 4, !dbg !4112
  %and = and i32 %6, 255, !dbg !4112
  %shl1 = shl i32 %and, 24, !dbg !4112
  %7 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %8 = load i32, i32* %7, align 4, !dbg !4112
  %and2 = and i32 %8, 65280, !dbg !4112
  %shl3 = shl i32 %and2, 8, !dbg !4112
  %or = or i32 %shl1, %shl3, !dbg !4112
  %9 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %10 = load i32, i32* %9, align 4, !dbg !4112
  %and4 = and i32 %10, 16711680, !dbg !4112
  %shr = lshr i32 %and4, 8, !dbg !4112
  %or5 = or i32 %or, %shr, !dbg !4112
  %11 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %12 = load i32, i32* %11, align 4, !dbg !4112
  %and6 = and i32 %12, -16777216, !dbg !4112
  %shr7 = lshr i32 %and6, 24, !dbg !4112
  %or8 = or i32 %or5, %shr7, !dbg !4112
  br label %cond.end, !dbg !4112

cond.false:                                       ; preds = %for.body
  %13 = load i32*, i32** %cell.addr, align 8, !dbg !4112
  %14 = load i32, i32* %13, align 4, !dbg !4112
  %call = call i32 @__fswab32(i32 %14) #9, !dbg !4112
  br label %cond.end, !dbg !4112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or8, %cond.true ], [ %call, %cond.false ], !dbg !4112
  %conv = zext i32 %cond to i64, !dbg !4112
  %or9 = or i64 %shl, %conv, !dbg !4113
  store i64 %or9, i64* %r, align 8, !dbg !4114
  br label %for.inc, !dbg !4115

for.inc:                                          ; preds = %cond.end
  %15 = load i32*, i32** %cell.addr, align 8, !dbg !4116
  %incdec.ptr = getelementptr i32, i32* %15, i32 1, !dbg !4116
  store i32* %incdec.ptr, i32** %cell.addr, align 8, !dbg !4116
  br label %for.cond, !dbg !4117, !llvm.loop !4118

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %r, align 8, !dbg !4120
  ret i64 %16, !dbg !4121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_address_to_resource(%struct.device_node* %dev, i32 %bar, %struct.resource* %r) #0 !dbg !4122 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %bar.addr = alloca i32, align 4
  %r.addr = alloca %struct.resource*, align 8
  %addrp = alloca i32*, align 8
  %size = alloca i64, align 8
  %flags = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata i32** %addrp, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !4147, metadata !DIExpression()), !dbg !4148
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4149
  %1 = load i32, i32* %bar.addr, align 4, !dbg !4150
  %call = call i32* @of_get_pci_address(%struct.device_node* %0, i32 %1, i64* %size, i32* %flags) #8, !dbg !4151
  store i32* %call, i32** %addrp, align 8, !dbg !4152
  %2 = load i32*, i32** %addrp, align 8, !dbg !4153
  %cmp = icmp eq i32* %2, null, !dbg !4155
  br i1 %cmp, label %if.then, label %if.end, !dbg !4156

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4157
  br label %return, !dbg !4157

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4158
  %4 = load i32*, i32** %addrp, align 8, !dbg !4159
  %5 = load i64, i64* %size, align 8, !dbg !4160
  %6 = load i32, i32* %flags, align 4, !dbg !4161
  %7 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4162
  %call1 = call i32 @__of_address_to_resource(%struct.device_node* %3, i32* %4, i64 %5, i32 %6, i8* null, %struct.resource* %7) #8, !dbg !4163
  store i32 %call1, i32* %retval, align 4, !dbg !4164
  br label %return, !dbg !4164

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4165
  ret i32 %8, !dbg !4165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__of_address_to_resource(%struct.device_node* %dev, i32* %addrp, i64 %size, i32 %flags, i8* %name, %struct.resource* %r) #0 !dbg !4166 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %addrp.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %r.addr = alloca %struct.resource*, align 8
  %taddr = alloca i64, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4169, metadata !DIExpression()), !dbg !4170
  store i32* %addrp, i32** %addrp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addrp.addr, metadata !4171, metadata !DIExpression()), !dbg !4172
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4177, metadata !DIExpression()), !dbg !4178
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata i64* %taddr, metadata !4181, metadata !DIExpression()), !dbg !4182
  %0 = load i32, i32* %flags.addr, align 4, !dbg !4183
  %and = and i32 %0, 512, !dbg !4185
  %tobool = icmp ne i32 %and, 0, !dbg !4185
  br i1 %tobool, label %if.then, label %if.else, !dbg !4186

if.then:                                          ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4187
  %2 = load i32*, i32** %addrp.addr, align 8, !dbg !4188
  %call = call i64 @of_translate_address(%struct.device_node* %1, i32* %2) #8, !dbg !4189
  store i64 %call, i64* %taddr, align 8, !dbg !4190
  br label %if.end6, !dbg !4191

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %flags.addr, align 4, !dbg !4192
  %and1 = and i32 %3, 256, !dbg !4194
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4194
  br i1 %tobool2, label %if.then3, label %if.else5, !dbg !4195

if.then3:                                         ; preds = %if.else
  %4 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4196
  %5 = load i32*, i32** %addrp.addr, align 8, !dbg !4197
  %6 = load i64, i64* %size.addr, align 8, !dbg !4198
  %call4 = call i64 @of_translate_ioport(%struct.device_node* %4, i32* %5, i64 %6) #8, !dbg !4199
  store i64 %call4, i64* %taddr, align 8, !dbg !4200
  br label %if.end, !dbg !4201

if.else5:                                         ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !4202
  br label %return, !dbg !4202

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %7 = load i64, i64* %taddr, align 8, !dbg !4203
  %cmp = icmp eq i64 %7, -1, !dbg !4205
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4206

if.then7:                                         ; preds = %if.end6
  store i32 -22, i32* %retval, align 4, !dbg !4207
  br label %return, !dbg !4207

if.end8:                                          ; preds = %if.end6
  %8 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4208
  %9 = bitcast %struct.resource* %8 to i8*, !dbg !4209
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 64, i1 false), !dbg !4209
  %10 = load i64, i64* %taddr, align 8, !dbg !4210
  %11 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4211
  %start = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0, !dbg !4212
  store i64 %10, i64* %start, align 8, !dbg !4213
  %12 = load i64, i64* %taddr, align 8, !dbg !4214
  %13 = load i64, i64* %size.addr, align 8, !dbg !4215
  %add = add i64 %12, %13, !dbg !4216
  %sub = sub i64 %add, 1, !dbg !4217
  %14 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4218
  %end = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 1, !dbg !4219
  store i64 %sub, i64* %end, align 8, !dbg !4220
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4221
  %conv = zext i32 %15 to i64, !dbg !4221
  %16 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4222
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3, !dbg !4223
  store i64 %conv, i64* %flags9, align 8, !dbg !4224
  %17 = load i8*, i8** %name.addr, align 8, !dbg !4225
  %tobool10 = icmp ne i8* %17, null, !dbg !4225
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !4225

cond.true:                                        ; preds = %if.end8
  %18 = load i8*, i8** %name.addr, align 8, !dbg !4226
  br label %cond.end, !dbg !4225

cond.false:                                       ; preds = %if.end8
  %19 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4227
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 2, !dbg !4228
  %20 = load i8*, i8** %full_name, align 8, !dbg !4228
  br label %cond.end, !dbg !4225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ %20, %cond.false ], !dbg !4225
  %21 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !4229
  %name11 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 2, !dbg !4230
  store i8* %cond, i8** %name11, align 8, !dbg !4231
  store i32 0, i32* %retval, align 4, !dbg !4232
  br label %return, !dbg !4232

return:                                           ; preds = %cond.end, %if.then7, %if.else5
  %22 = load i32, i32* %retval, align 4, !dbg !4233
  ret i32 %22, !dbg !4233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_range_to_resource(%struct.of_pci_range* %range, %struct.device_node* %np, %struct.resource* %res) #0 !dbg !4234 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca %struct.of_pci_range*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %err = alloca i32, align 4
  %port = alloca i64, align 8
  store %struct.of_pci_range* %range, %struct.of_pci_range** %range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range** %range.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4255, metadata !DIExpression()), !dbg !4256
  %0 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4257
  %flags = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %0, i32 0, i32 3, !dbg !4258
  %1 = load i32, i32* %flags, align 8, !dbg !4258
  %conv = zext i32 %1 to i64, !dbg !4257
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4259
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4260
  store i64 %conv, i64* %flags1, align 8, !dbg !4261
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4262
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 6, !dbg !4263
  store %struct.resource* null, %struct.resource** %sibling, align 8, !dbg !4264
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4265
  %child = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 7, !dbg !4266
  store %struct.resource* null, %struct.resource** %child, align 8, !dbg !4267
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4268
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 5, !dbg !4269
  store %struct.resource* null, %struct.resource** %parent, align 8, !dbg !4270
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4271
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %6, i32 0, i32 2, !dbg !4272
  %7 = load i8*, i8** %full_name, align 8, !dbg !4272
  %8 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4273
  %name = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 2, !dbg !4274
  store i8* %7, i8** %name, align 8, !dbg !4275
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4276
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 3, !dbg !4278
  %10 = load i64, i64* %flags2, align 8, !dbg !4278
  %and = and i64 %10, 256, !dbg !4279
  %tobool = icmp ne i64 %and, 0, !dbg !4279
  br i1 %tobool, label %if.then, label %if.else, !dbg !4280

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %port, metadata !4281, metadata !DIExpression()), !dbg !4283
  %11 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4284
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 3, !dbg !4285
  %12 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4286
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %12, i32 0, i32 1, !dbg !4287
  %13 = load i64, i64* %cpu_addr, align 8, !dbg !4287
  %14 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4288
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %14, i32 0, i32 2, !dbg !4289
  %15 = load i64, i64* %size, align 8, !dbg !4289
  %call = call i32 @pci_register_io_range(%struct.fwnode_handle* %fwnode, i64 %13, i64 %15) #8, !dbg !4290
  store i32 %call, i32* %err, align 4, !dbg !4291
  %16 = load i32, i32* %err, align 4, !dbg !4292
  %tobool3 = icmp ne i32 %16, 0, !dbg !4292
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4294

if.then4:                                         ; preds = %if.then
  br label %invalid_range, !dbg !4295

if.end:                                           ; preds = %if.then
  %17 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4296
  %cpu_addr5 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %17, i32 0, i32 1, !dbg !4297
  %18 = load i64, i64* %cpu_addr5, align 8, !dbg !4297
  %call6 = call i64 @pci_address_to_pio(i64 %18) #8, !dbg !4298
  store i64 %call6, i64* %port, align 8, !dbg !4299
  %19 = load i64, i64* %port, align 8, !dbg !4300
  %cmp = icmp eq i64 %19, -1, !dbg !4302
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4303

if.then8:                                         ; preds = %if.end
  store i32 -22, i32* %err, align 4, !dbg !4304
  br label %invalid_range, !dbg !4306

if.end9:                                          ; preds = %if.end
  %20 = load i64, i64* %port, align 8, !dbg !4307
  %21 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4308
  %start = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0, !dbg !4309
  store i64 %20, i64* %start, align 8, !dbg !4310
  br label %if.end12, !dbg !4311

if.else:                                          ; preds = %entry
  %22 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4312
  %cpu_addr10 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %22, i32 0, i32 1, !dbg !4314
  %23 = load i64, i64* %cpu_addr10, align 8, !dbg !4314
  %24 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4315
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0, !dbg !4316
  store i64 %23, i64* %start11, align 8, !dbg !4317
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end9
  %25 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4318
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0, !dbg !4319
  %26 = load i64, i64* %start13, align 8, !dbg !4319
  %27 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4320
  %size14 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %27, i32 0, i32 2, !dbg !4321
  %28 = load i64, i64* %size14, align 8, !dbg !4321
  %add = add i64 %26, %28, !dbg !4322
  %sub = sub i64 %add, 1, !dbg !4323
  %29 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4324
  %end = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1, !dbg !4325
  store i64 %sub, i64* %end, align 8, !dbg !4326
  store i32 0, i32* %retval, align 4, !dbg !4327
  br label %return, !dbg !4327

invalid_range:                                    ; preds = %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !4328), !dbg !4329
  %30 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4330
  %start15 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0, !dbg !4331
  store i64 -1, i64* %start15, align 8, !dbg !4332
  %31 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4333
  %end16 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 1, !dbg !4334
  store i64 -1, i64* %end16, align 8, !dbg !4335
  %32 = load i32, i32* %err, align 4, !dbg !4336
  store i32 %32, i32* %retval, align 4, !dbg !4337
  br label %return, !dbg !4337

return:                                           ; preds = %invalid_range, %if.end12
  %33 = load i32, i32* %retval, align 4, !dbg !4338
  ret i32 %33, !dbg !4338
}

; Function Attrs: noredzone
declare dso_local i32 @pci_register_io_range(%struct.fwnode_handle*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local i64 @pci_address_to_pio(i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @of_translate_address(%struct.device_node* %dev, i32* %in_addr) #0 !dbg !4339 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device_node*, align 8
  %in_addr.addr = alloca i32*, align 8
  %host = alloca %struct.device_node*, align 8
  %ret = alloca i64, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  store i32* %in_addr, i32** %in_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %in_addr.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata %struct.device_node** %host, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4348, metadata !DIExpression()), !dbg !4349
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4350
  %1 = load i32*, i32** %in_addr.addr, align 8, !dbg !4351
  %call = call i64 @__of_translate_address(%struct.device_node* %0, %struct.device_node* (%struct.device_node*)* @of_get_parent, i32* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.device_node** %host) #8, !dbg !4352
  store i64 %call, i64* %ret, align 8, !dbg !4353
  %2 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !4354
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !4354
  br i1 %tobool, label %if.then, label %if.end, !dbg !4356

if.then:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !4357
  call void @of_node_put(%struct.device_node* %3) #8, !dbg !4359
  store i64 -1, i64* %retval, align 8, !dbg !4360
  br label %return, !dbg !4360

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %ret, align 8, !dbg !4361
  store i64 %4, i64* %retval, align 8, !dbg !4362
  br label %return, !dbg !4362

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !4363
  ret i64 %5, !dbg !4363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__of_translate_address(%struct.device_node* %dev, %struct.device_node* (%struct.device_node*)* %get_parent, i32* %in_addr, i8* %rprop, %struct.device_node** %host) #0 !dbg !4364 {
entry:
  %dev.addr = alloca %struct.device_node*, align 8
  %get_parent.addr = alloca %struct.device_node* (%struct.device_node*)*, align 8
  %in_addr.addr = alloca i32*, align 8
  %rprop.addr = alloca i8*, align 8
  %host.addr = alloca %struct.device_node**, align 8
  %parent = alloca %struct.device_node*, align 8
  %bus = alloca %struct.of_bus*, align 8
  %pbus = alloca %struct.of_bus*, align 8
  %addr = alloca [4 x i32], align 16
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %pna = alloca i32, align 4
  %pns = alloca i32, align 4
  %result = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %iorange = alloca %struct.logic_pio_hwaddr*, align 8
  %tmp16 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4373, metadata !DIExpression()), !dbg !4374
  store %struct.device_node* (%struct.device_node*)* %get_parent, %struct.device_node* (%struct.device_node*)** %get_parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node* (%struct.device_node*)** %get_parent.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  store i32* %in_addr, i32** %in_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %in_addr.addr, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i8* %rprop, i8** %rprop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rprop.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store %struct.device_node** %host, %struct.device_node*** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node*** %host.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !4383, metadata !DIExpression()), !dbg !4384
  store %struct.device_node* null, %struct.device_node** %parent, align 8, !dbg !4384
  call void @llvm.dbg.declare(metadata %struct.of_bus** %bus, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.declare(metadata %struct.of_bus** %pbus, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.declare(metadata [4 x i32]* %addr, metadata !4389, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.declare(metadata i32* %na, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i32* %ns, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.declare(metadata i32* %pna, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i32* %pns, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i64* %result, metadata !4400, metadata !DIExpression()), !dbg !4401
  store i64 -1, i64* %result, align 8, !dbg !4401
  store i32 0, i32* %tmp, align 4, !dbg !4402
  %0 = load i32, i32* %tmp, align 4, !dbg !4405
  %1 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4406
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %1) #8, !dbg !4407
  %2 = load %struct.device_node**, %struct.device_node*** %host.addr, align 8, !dbg !4408
  store %struct.device_node* null, %struct.device_node** %2, align 8, !dbg !4409
  %3 = load %struct.device_node* (%struct.device_node*)*, %struct.device_node* (%struct.device_node*)** %get_parent.addr, align 8, !dbg !4410
  %4 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4411
  %call1 = call %struct.device_node* %3(%struct.device_node* %4) #8, !dbg !4410
  store %struct.device_node* %call1, %struct.device_node** %parent, align 8, !dbg !4412
  %5 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4413
  %cmp = icmp eq %struct.device_node* %5, null, !dbg !4415
  br i1 %cmp, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %entry
  br label %bail, !dbg !4417

if.end:                                           ; preds = %entry
  %6 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4418
  %call2 = call %struct.of_bus* @of_match_bus(%struct.device_node* %6) #8, !dbg !4419
  store %struct.of_bus* %call2, %struct.of_bus** %bus, align 8, !dbg !4420
  %7 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4421
  %count_cells = getelementptr inbounds %struct.of_bus, %struct.of_bus* %7, i32 0, i32 3, !dbg !4422
  %8 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells, align 8, !dbg !4422
  %9 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4423
  call void %8(%struct.device_node* %9, i32* %na, i32* %ns) #8, !dbg !4421
  %10 = load i32, i32* %na, align 4, !dbg !4424
  %cmp3 = icmp sgt i32 %10, 0, !dbg !4424
  br i1 %cmp3, label %land.lhs.true, label %if.then7, !dbg !4424

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %na, align 4, !dbg !4424
  %cmp4 = icmp sle i32 %11, 4, !dbg !4424
  br i1 %cmp4, label %land.lhs.true5, label %if.then7, !dbg !4424

land.lhs.true5:                                   ; preds = %land.lhs.true
  %12 = load i32, i32* %ns, align 4, !dbg !4424
  %cmp6 = icmp sgt i32 %12, 0, !dbg !4424
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !4426

if.then7:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  store i32 0, i32* %tmp8, align 4, !dbg !4427
  %13 = load i32, i32* %tmp8, align 4, !dbg !4431
  br label %bail, !dbg !4432

if.end9:                                          ; preds = %land.lhs.true5
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4433
  %14 = bitcast i32* %arraydecay to i8*, !dbg !4433
  %15 = load i32*, i32** %in_addr.addr, align 8, !dbg !4434
  %16 = bitcast i32* %15 to i8*, !dbg !4433
  %17 = load i32, i32* %na, align 4, !dbg !4435
  %mul = mul i32 %17, 4, !dbg !4436
  %conv = sext i32 %mul to i64, !dbg !4435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 4 %16, i64 %conv, i1 false), !dbg !4433
  store i32 0, i32* %tmp10, align 4, !dbg !4437
  %18 = load i32, i32* %tmp10, align 4, !dbg !4440
  %arraydecay11 = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4441
  %19 = load i32, i32* %na, align 4, !dbg !4442
  call void @of_dump_addr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32* %arraydecay11, i32 %19) #8, !dbg !4443
  br label %for.cond, !dbg !4444

for.cond:                                         ; preds = %if.end48, %if.end9
  call void @llvm.dbg.declare(metadata %struct.logic_pio_hwaddr** %iorange, metadata !4445, metadata !DIExpression()), !dbg !4480
  %20 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4481
  call void @of_node_put(%struct.device_node* %20) #8, !dbg !4482
  %21 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4483
  store %struct.device_node* %21, %struct.device_node** %dev.addr, align 8, !dbg !4484
  %22 = load %struct.device_node* (%struct.device_node*)*, %struct.device_node* (%struct.device_node*)** %get_parent.addr, align 8, !dbg !4485
  %23 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4486
  %call12 = call %struct.device_node* %22(%struct.device_node* %23) #8, !dbg !4485
  store %struct.device_node* %call12, %struct.device_node** %parent, align 8, !dbg !4487
  %24 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4488
  %cmp13 = icmp eq %struct.device_node* %24, null, !dbg !4490
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !4491

if.then15:                                        ; preds = %for.cond
  store i32 0, i32* %tmp16, align 4, !dbg !4492
  %25 = load i32, i32* %tmp16, align 4, !dbg !4496
  %arraydecay17 = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4497
  %26 = load i32, i32* %na, align 4, !dbg !4498
  %call18 = call i64 @of_read_number(i32* %arraydecay17, i32 %26) #8, !dbg !4499
  store i64 %call18, i64* %result, align 8, !dbg !4500
  br label %for.end, !dbg !4501

if.end19:                                         ; preds = %for.cond
  %27 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4502
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 3, !dbg !4503
  %call20 = call %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* %fwnode) #8, !dbg !4504
  store %struct.logic_pio_hwaddr* %call20, %struct.logic_pio_hwaddr** %iorange, align 8, !dbg !4505
  %28 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %iorange, align 8, !dbg !4506
  %tobool = icmp ne %struct.logic_pio_hwaddr* %28, null, !dbg !4506
  br i1 %tobool, label %land.lhs.true21, label %if.end29, !dbg !4508

land.lhs.true21:                                  ; preds = %if.end19
  %29 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %iorange, align 8, !dbg !4509
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %29, i32 0, i32 5, !dbg !4510
  %30 = load i64, i64* %flags, align 8, !dbg !4510
  %cmp22 = icmp ne i64 %30, 1, !dbg !4511
  br i1 %cmp22, label %if.then24, label %if.end29, !dbg !4512

if.then24:                                        ; preds = %land.lhs.true21
  %arraydecay25 = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4513
  %add.ptr = getelementptr i32, i32* %arraydecay25, i64 1, !dbg !4515
  %31 = load i32, i32* %na, align 4, !dbg !4516
  %sub = sub i32 %31, 1, !dbg !4517
  %call26 = call i64 @of_read_number(i32* %add.ptr, i32 %sub) #8, !dbg !4518
  store i64 %call26, i64* %result, align 8, !dbg !4519
  store i32 0, i32* %tmp27, align 4, !dbg !4520
  %32 = load i32, i32* %tmp27, align 4, !dbg !4523
  %33 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4524
  %call28 = call %struct.device_node* @of_node_get(%struct.device_node* %33) #8, !dbg !4525
  %34 = load %struct.device_node**, %struct.device_node*** %host.addr, align 8, !dbg !4526
  store %struct.device_node* %call28, %struct.device_node** %34, align 8, !dbg !4527
  br label %for.end, !dbg !4528

if.end29:                                         ; preds = %land.lhs.true21, %if.end19
  %35 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4529
  %call30 = call %struct.of_bus* @of_match_bus(%struct.device_node* %35) #8, !dbg !4530
  store %struct.of_bus* %call30, %struct.of_bus** %pbus, align 8, !dbg !4531
  %36 = load %struct.of_bus*, %struct.of_bus** %pbus, align 8, !dbg !4532
  %count_cells31 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %36, i32 0, i32 3, !dbg !4533
  %37 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells31, align 8, !dbg !4533
  %38 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4534
  call void %37(%struct.device_node* %38, i32* %pna, i32* %pns) #8, !dbg !4532
  %39 = load i32, i32* %pna, align 4, !dbg !4535
  %cmp32 = icmp sgt i32 %39, 0, !dbg !4535
  br i1 %cmp32, label %land.lhs.true34, label %if.then40, !dbg !4535

land.lhs.true34:                                  ; preds = %if.end29
  %40 = load i32, i32* %pna, align 4, !dbg !4535
  %cmp35 = icmp sle i32 %40, 4, !dbg !4535
  br i1 %cmp35, label %land.lhs.true37, label %if.then40, !dbg !4535

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %41 = load i32, i32* %pns, align 4, !dbg !4535
  %cmp38 = icmp sgt i32 %41, 0, !dbg !4535
  br i1 %cmp38, label %if.end42, label %if.then40, !dbg !4537

if.then40:                                        ; preds = %land.lhs.true37, %land.lhs.true34, %if.end29
  %42 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4538
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), %struct.device_node* %42) #11, !dbg !4538
  br label %for.end, !dbg !4540

if.end42:                                         ; preds = %land.lhs.true37
  store i32 0, i32* %tmp43, align 4, !dbg !4541
  %43 = load i32, i32* %tmp43, align 4, !dbg !4544
  %44 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4545
  %45 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4547
  %46 = load %struct.of_bus*, %struct.of_bus** %pbus, align 8, !dbg !4548
  %arraydecay44 = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4549
  %47 = load i32, i32* %na, align 4, !dbg !4550
  %48 = load i32, i32* %ns, align 4, !dbg !4551
  %49 = load i32, i32* %pna, align 4, !dbg !4552
  %50 = load i8*, i8** %rprop.addr, align 8, !dbg !4553
  %call45 = call i32 @of_translate_one(%struct.device_node* %44, %struct.of_bus* %45, %struct.of_bus* %46, i32* %arraydecay44, i32 %47, i32 %48, i32 %49, i8* %50) #8, !dbg !4554
  %tobool46 = icmp ne i32 %call45, 0, !dbg !4554
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4555

if.then47:                                        ; preds = %if.end42
  br label %for.end, !dbg !4556

if.end48:                                         ; preds = %if.end42
  %51 = load i32, i32* %pna, align 4, !dbg !4557
  store i32 %51, i32* %na, align 4, !dbg !4558
  %52 = load i32, i32* %pns, align 4, !dbg !4559
  store i32 %52, i32* %ns, align 4, !dbg !4560
  %53 = load %struct.of_bus*, %struct.of_bus** %pbus, align 8, !dbg !4561
  store %struct.of_bus* %53, %struct.of_bus** %bus, align 8, !dbg !4562
  %arraydecay49 = getelementptr inbounds [4 x i32], [4 x i32]* %addr, i64 0, i64 0, !dbg !4563
  %54 = load i32, i32* %na, align 4, !dbg !4564
  call void @of_dump_addr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32* %arraydecay49, i32 %54) #8, !dbg !4565
  br label %for.cond, !dbg !4566, !llvm.loop !4567

for.end:                                          ; preds = %if.then47, %if.then40, %if.then24, %if.then15
  br label %bail, !dbg !4569

bail:                                             ; preds = %for.end, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !4570), !dbg !4571
  %55 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4572
  call void @of_node_put(%struct.device_node* %55) #8, !dbg !4573
  %56 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4574
  call void @of_node_put(%struct.device_node* %56) #8, !dbg !4575
  %57 = load i64, i64* %result, align 8, !dbg !4576
  ret i64 %57, !dbg !4577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @of_translate_dma_address(%struct.device_node* %dev, i32* %in_addr) #0 !dbg !4578 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device_node*, align 8
  %in_addr.addr = alloca i32*, align 8
  %host = alloca %struct.device_node*, align 8
  %ret = alloca i64, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i32* %in_addr, i32** %in_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %in_addr.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata %struct.device_node** %host, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4587
  %1 = load i32*, i32** %in_addr.addr, align 8, !dbg !4588
  %call = call i64 @__of_translate_address(%struct.device_node* %0, %struct.device_node* (%struct.device_node*)* @__of_get_dma_parent, i32* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.device_node** %host) #8, !dbg !4589
  store i64 %call, i64* %ret, align 8, !dbg !4590
  %2 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !4591
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !4591
  br i1 %tobool, label %if.then, label %if.end, !dbg !4593

if.then:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !4594
  call void @of_node_put(%struct.device_node* %3) #8, !dbg !4596
  store i64 -1, i64* %retval, align 8, !dbg !4597
  br label %return, !dbg !4597

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %ret, align 8, !dbg !4598
  store i64 %4, i64* %retval, align 8, !dbg !4599
  br label %return, !dbg !4599

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !4600
  ret i64 %5, !dbg !4600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @__of_get_dma_parent(%struct.device_node* %np) #0 !dbg !4601 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %args = alloca %struct.of_phandle_args, align 8
  %ret = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %args, metadata !4604, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4612, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.declare(metadata i32* %index, metadata !4614, metadata !DIExpression()), !dbg !4615
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4616
  %call = call i32 @of_property_match_string(%struct.device_node* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !4617
  store i32 %call, i32* %index, align 4, !dbg !4618
  %1 = load i32, i32* %index, align 4, !dbg !4619
  %cmp = icmp slt i32 %1, 0, !dbg !4621
  br i1 %cmp, label %if.then, label %if.end, !dbg !4622

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4623
  %call1 = call %struct.device_node* @of_get_parent(%struct.device_node* %2) #8, !dbg !4624
  store %struct.device_node* %call1, %struct.device_node** %retval, align 8, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4626
  %4 = load i32, i32* %index, align 4, !dbg !4627
  %call2 = call i32 @of_parse_phandle_with_args(%struct.device_node* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %4, %struct.of_phandle_args* %args) #8, !dbg !4628
  store i32 %call2, i32* %ret, align 4, !dbg !4629
  %5 = load i32, i32* %ret, align 4, !dbg !4630
  %cmp3 = icmp slt i32 %5, 0, !dbg !4632
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !4633

if.then4:                                         ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4634
  %call5 = call %struct.device_node* @of_get_parent(%struct.device_node* %6) #8, !dbg !4635
  store %struct.device_node* %call5, %struct.device_node** %retval, align 8, !dbg !4636
  br label %return, !dbg !4636

if.end6:                                          ; preds = %if.end
  %np7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !4637
  %7 = load %struct.device_node*, %struct.device_node** %np7, align 8, !dbg !4637
  %call8 = call %struct.device_node* @of_node_get(%struct.device_node* %7) #8, !dbg !4638
  store %struct.device_node* %call8, %struct.device_node** %retval, align 8, !dbg !4639
  br label %return, !dbg !4639

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %8 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4640
  ret %struct.device_node* %8, !dbg !4640
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32* @of_get_address(%struct.device_node* %dev, i32 %index, i64* %size, i32* %flags) #0 !dbg !4641 {
entry:
  %retval = alloca i32*, align 8
  %dev.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %size.addr = alloca i64*, align 8
  %flags.addr = alloca i32*, align 8
  %prop = alloca i32*, align 8
  %psize = alloca i32, align 4
  %parent = alloca %struct.device_node*, align 8
  %bus = alloca %struct.of_bus*, align 8
  %onesize = alloca i32, align 4
  %i = alloca i32, align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store i64* %size, i64** %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.declare(metadata i32** %prop, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.declare(metadata i32* %psize, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata %struct.of_bus** %bus, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata i32* %onesize, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4660, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.declare(metadata i32* %na, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.declare(metadata i32* %ns, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4666
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* %0) #8, !dbg !4667
  store %struct.device_node* %call, %struct.device_node** %parent, align 8, !dbg !4668
  %1 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4669
  %cmp = icmp eq %struct.device_node* %1, null, !dbg !4671
  br i1 %cmp, label %if.then, label %if.end, !dbg !4672

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 8, !dbg !4673
  br label %return, !dbg !4673

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4674
  %call1 = call %struct.of_bus* @of_match_bus(%struct.device_node* %2) #8, !dbg !4675
  store %struct.of_bus* %call1, %struct.of_bus** %bus, align 8, !dbg !4676
  %3 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4677
  %count_cells = getelementptr inbounds %struct.of_bus, %struct.of_bus* %3, i32 0, i32 3, !dbg !4678
  %4 = load void (%struct.device_node*, i32*, i32*)*, void (%struct.device_node*, i32*, i32*)** %count_cells, align 8, !dbg !4678
  %5 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4679
  call void %4(%struct.device_node* %5, i32* %na, i32* %ns) #8, !dbg !4677
  %6 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !4680
  call void @of_node_put(%struct.device_node* %6) #8, !dbg !4681
  %7 = load i32, i32* %na, align 4, !dbg !4682
  %cmp2 = icmp sgt i32 %7, 0, !dbg !4682
  br i1 %cmp2, label %land.lhs.true, label %if.then4, !dbg !4682

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %na, align 4, !dbg !4682
  %cmp3 = icmp sle i32 %8, 4, !dbg !4682
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !4684

if.then4:                                         ; preds = %land.lhs.true, %if.end
  store i32* null, i32** %retval, align 8, !dbg !4685
  br label %return, !dbg !4685

if.end5:                                          ; preds = %land.lhs.true
  %9 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !4686
  %10 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4687
  %addresses = getelementptr inbounds %struct.of_bus, %struct.of_bus* %10, i32 0, i32 1, !dbg !4688
  %11 = load i8*, i8** %addresses, align 8, !dbg !4688
  %call6 = call i8* @of_get_property(%struct.device_node* %9, i8* %11, i32* %psize) #8, !dbg !4689
  %12 = bitcast i8* %call6 to i32*, !dbg !4689
  store i32* %12, i32** %prop, align 8, !dbg !4690
  %13 = load i32*, i32** %prop, align 8, !dbg !4691
  %cmp7 = icmp eq i32* %13, null, !dbg !4693
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4694

if.then8:                                         ; preds = %if.end5
  store i32* null, i32** %retval, align 8, !dbg !4695
  br label %return, !dbg !4695

if.end9:                                          ; preds = %if.end5
  %14 = load i32, i32* %psize, align 4, !dbg !4696
  %div = udiv i32 %14, 4, !dbg !4696
  store i32 %div, i32* %psize, align 4, !dbg !4696
  %15 = load i32, i32* %na, align 4, !dbg !4697
  %16 = load i32, i32* %ns, align 4, !dbg !4698
  %add = add i32 %15, %16, !dbg !4699
  store i32 %add, i32* %onesize, align 4, !dbg !4700
  store i32 0, i32* %i, align 4, !dbg !4701
  br label %for.cond, !dbg !4703

for.cond:                                         ; preds = %for.inc, %if.end9
  %17 = load i32, i32* %psize, align 4, !dbg !4704
  %18 = load i32, i32* %onesize, align 4, !dbg !4706
  %cmp10 = icmp uge i32 %17, %18, !dbg !4707
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4708

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !dbg !4709
  %20 = load i32, i32* %index.addr, align 4, !dbg !4711
  %cmp11 = icmp eq i32 %19, %20, !dbg !4712
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !4713

if.then12:                                        ; preds = %for.body
  %21 = load i64*, i64** %size.addr, align 8, !dbg !4714
  %tobool = icmp ne i64* %21, null, !dbg !4714
  br i1 %tobool, label %if.then13, label %if.end15, !dbg !4717

if.then13:                                        ; preds = %if.then12
  %22 = load i32*, i32** %prop, align 8, !dbg !4718
  %23 = load i32, i32* %na, align 4, !dbg !4719
  %idx.ext = sext i32 %23 to i64, !dbg !4720
  %add.ptr = getelementptr i32, i32* %22, i64 %idx.ext, !dbg !4720
  %24 = load i32, i32* %ns, align 4, !dbg !4721
  %call14 = call i64 @of_read_number(i32* %add.ptr, i32 %24) #8, !dbg !4722
  %25 = load i64*, i64** %size.addr, align 8, !dbg !4723
  store i64 %call14, i64* %25, align 8, !dbg !4724
  br label %if.end15, !dbg !4725

if.end15:                                         ; preds = %if.then13, %if.then12
  %26 = load i32*, i32** %flags.addr, align 8, !dbg !4726
  %tobool16 = icmp ne i32* %26, null, !dbg !4726
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4728

if.then17:                                        ; preds = %if.end15
  %27 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4729
  %get_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %27, i32 0, i32 7, !dbg !4730
  %28 = load i32 (i32*)*, i32 (i32*)** %get_flags, align 8, !dbg !4730
  %29 = load i32*, i32** %prop, align 8, !dbg !4731
  %call18 = call i32 %28(i32* %29) #8, !dbg !4729
  %30 = load i32*, i32** %flags.addr, align 8, !dbg !4732
  store i32 %call18, i32* %30, align 4, !dbg !4733
  br label %if.end19, !dbg !4734

if.end19:                                         ; preds = %if.then17, %if.end15
  %31 = load i32*, i32** %prop, align 8, !dbg !4735
  store i32* %31, i32** %retval, align 8, !dbg !4736
  br label %return, !dbg !4736

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !4711

for.inc:                                          ; preds = %if.end20
  %32 = load i32, i32* %onesize, align 4, !dbg !4737
  %33 = load i32, i32* %psize, align 4, !dbg !4738
  %sub = sub i32 %33, %32, !dbg !4738
  store i32 %sub, i32* %psize, align 4, !dbg !4738
  %34 = load i32, i32* %onesize, align 4, !dbg !4739
  %35 = load i32*, i32** %prop, align 8, !dbg !4740
  %idx.ext21 = sext i32 %34 to i64, !dbg !4740
  %add.ptr22 = getelementptr i32, i32* %35, i64 %idx.ext21, !dbg !4740
  store i32* %add.ptr22, i32** %prop, align 8, !dbg !4740
  %36 = load i32, i32* %i, align 4, !dbg !4741
  %inc = add i32 %36, 1, !dbg !4741
  store i32 %inc, i32* %i, align 4, !dbg !4741
  br label %for.cond, !dbg !4742, !llvm.loop !4743

for.end:                                          ; preds = %for.cond
  store i32* null, i32** %retval, align 8, !dbg !4745
  br label %return, !dbg !4745

return:                                           ; preds = %for.end, %if.end19, %if.then8, %if.then4, %if.then
  %37 = load i32*, i32** %retval, align 8, !dbg !4746
  ret i32* %37, !dbg !4746
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %node) #0 !dbg !4747 {
entry:
  %parser.addr = alloca %struct.of_pci_range_parser*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.of_pci_range_parser* %parser, %struct.of_pci_range_parser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser** %parser.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  %0 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4765
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4766
  %call = call i32 @parser_init(%struct.of_pci_range_parser* %0, %struct.device_node* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !4767
  ret i32 %call, !dbg !4768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %node, i8* %name) #0 !dbg !4769 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.of_pci_range_parser*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %rlen = alloca i32, align 4
  store %struct.of_pci_range_parser* %parser, %struct.of_pci_range_parser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser** %parser.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i32* %rlen, metadata !4778, metadata !DIExpression()), !dbg !4779
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4780
  %1 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4781
  %node1 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %1, i32 0, i32 0, !dbg !4782
  store %struct.device_node* %0, %struct.device_node** %node1, align 8, !dbg !4783
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4784
  %call = call i32 @of_n_addr_cells(%struct.device_node* %2) #8, !dbg !4785
  %3 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4786
  %pna = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %3, i32 0, i32 6, !dbg !4787
  store i32 %call, i32* %pna, align 8, !dbg !4788
  %4 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4789
  %call2 = call i32 @of_bus_n_addr_cells(%struct.device_node* %4) #8, !dbg !4790
  %5 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4791
  %na = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %5, i32 0, i32 4, !dbg !4792
  store i32 %call2, i32* %na, align 8, !dbg !4793
  %6 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4794
  %call3 = call i32 @of_bus_n_size_cells(%struct.device_node* %6) #8, !dbg !4795
  %7 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4796
  %ns = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %7, i32 0, i32 5, !dbg !4797
  store i32 %call3, i32* %ns, align 4, !dbg !4798
  %8 = load i8*, i8** %name.addr, align 8, !dbg !4799
  %call4 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4800
  %tobool = icmp ne i32 %call4, 0, !dbg !4801
  %lnot = xor i1 %tobool, true, !dbg !4801
  %9 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4802
  %dma = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %9, i32 0, i32 7, !dbg !4803
  %frombool = zext i1 %lnot to i8, !dbg !4804
  store i8 %frombool, i8* %dma, align 4, !dbg !4804
  %10 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4805
  %call5 = call %struct.of_bus* @of_match_bus(%struct.device_node* %10) #8, !dbg !4806
  %11 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4807
  %bus = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %11, i32 0, i32 1, !dbg !4808
  store %struct.of_bus* %call5, %struct.of_bus** %bus, align 8, !dbg !4809
  %12 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4810
  %13 = load i8*, i8** %name.addr, align 8, !dbg !4811
  %call6 = call i8* @of_get_property(%struct.device_node* %12, i8* %13, i32* %rlen) #8, !dbg !4812
  %14 = bitcast i8* %call6 to i32*, !dbg !4812
  %15 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4813
  %range = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %15, i32 0, i32 2, !dbg !4814
  store i32* %14, i32** %range, align 8, !dbg !4815
  %16 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4816
  %range7 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %16, i32 0, i32 2, !dbg !4818
  %17 = load i32*, i32** %range7, align 8, !dbg !4818
  %cmp = icmp eq i32* %17, null, !dbg !4819
  br i1 %cmp, label %if.then, label %if.end, !dbg !4820

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

if.end:                                           ; preds = %entry
  %18 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4822
  %range8 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %18, i32 0, i32 2, !dbg !4823
  %19 = load i32*, i32** %range8, align 8, !dbg !4823
  %20 = load i32, i32* %rlen, align 4, !dbg !4824
  %conv = sext i32 %20 to i64, !dbg !4824
  %div = udiv i64 %conv, 4, !dbg !4825
  %add.ptr = getelementptr i32, i32* %19, i64 %div, !dbg !4826
  %21 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4827
  %end = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %21, i32 0, i32 3, !dbg !4828
  store i32* %add.ptr, i32** %end, align 8, !dbg !4829
  store i32 0, i32* %retval, align 4, !dbg !4830
  br label %return, !dbg !4830

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4831
  ret i32 %22, !dbg !4831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %node) #0 !dbg !4832 {
entry:
  %parser.addr = alloca %struct.of_pci_range_parser*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.of_pci_range_parser* %parser, %struct.of_pci_range_parser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser** %parser.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  %0 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4837
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4838
  %call = call i32 @parser_init(%struct.of_pci_range_parser* %0, %struct.device_node* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4839
  ret i32 %call, !dbg !4840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* %parser, %struct.of_pci_range* %range) #0 !dbg !4841 {
entry:
  %retval = alloca %struct.of_pci_range*, align 8
  %parser.addr = alloca %struct.of_pci_range_parser*, align 8
  %range.addr = alloca %struct.of_pci_range*, align 8
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %np = alloca i32, align 4
  %busflag_na = alloca i32, align 4
  %flags46 = alloca i32, align 4
  %bus_addr47 = alloca i64, align 8
  %cpu_addr48 = alloca i64, align 8
  %size49 = alloca i64, align 8
  store %struct.of_pci_range_parser* %parser, %struct.of_pci_range_parser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser** %parser.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  store %struct.of_pci_range* %range, %struct.of_pci_range** %range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_pci_range** %range.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.declare(metadata i32* %na, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4850
  %na1 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %0, i32 0, i32 4, !dbg !4851
  %1 = load i32, i32* %na1, align 8, !dbg !4851
  store i32 %1, i32* %na, align 4, !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %ns, metadata !4852, metadata !DIExpression()), !dbg !4853
  %2 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4854
  %ns2 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %2, i32 0, i32 5, !dbg !4855
  %3 = load i32, i32* %ns2, align 4, !dbg !4855
  store i32 %3, i32* %ns, align 4, !dbg !4853
  call void @llvm.dbg.declare(metadata i32* %np, metadata !4856, metadata !DIExpression()), !dbg !4857
  %4 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4858
  %pna = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %4, i32 0, i32 6, !dbg !4859
  %5 = load i32, i32* %pna, align 8, !dbg !4859
  %6 = load i32, i32* %na, align 4, !dbg !4860
  %add = add i32 %5, %6, !dbg !4861
  %7 = load i32, i32* %ns, align 4, !dbg !4862
  %add3 = add i32 %add, %7, !dbg !4863
  store i32 %add3, i32* %np, align 4, !dbg !4857
  call void @llvm.dbg.declare(metadata i32* %busflag_na, metadata !4864, metadata !DIExpression()), !dbg !4865
  store i32 0, i32* %busflag_na, align 4, !dbg !4865
  %8 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4866
  %tobool = icmp ne %struct.of_pci_range* %8, null, !dbg !4866
  br i1 %tobool, label %if.end, label %if.then, !dbg !4868

if.then:                                          ; preds = %entry
  store %struct.of_pci_range* null, %struct.of_pci_range** %retval, align 8, !dbg !4869
  br label %return, !dbg !4869

if.end:                                           ; preds = %entry
  %9 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4870
  %range4 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %9, i32 0, i32 2, !dbg !4872
  %10 = load i32*, i32** %range4, align 8, !dbg !4872
  %tobool5 = icmp ne i32* %10, null, !dbg !4870
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !4873

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4874
  %range6 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %11, i32 0, i32 2, !dbg !4875
  %12 = load i32*, i32** %range6, align 8, !dbg !4875
  %13 = load i32, i32* %np, align 4, !dbg !4876
  %idx.ext = sext i32 %13 to i64, !dbg !4877
  %add.ptr = getelementptr i32, i32* %12, i64 %idx.ext, !dbg !4877
  %14 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4878
  %end = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %14, i32 0, i32 3, !dbg !4879
  %15 = load i32*, i32** %end, align 8, !dbg !4879
  %cmp = icmp ugt i32* %add.ptr, %15, !dbg !4880
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4881

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store %struct.of_pci_range* null, %struct.of_pci_range** %retval, align 8, !dbg !4882
  br label %return, !dbg !4882

if.end8:                                          ; preds = %lor.lhs.false
  %16 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4883
  %bus = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %16, i32 0, i32 1, !dbg !4884
  %17 = load %struct.of_bus*, %struct.of_bus** %bus, align 8, !dbg !4884
  %get_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %17, i32 0, i32 7, !dbg !4885
  %18 = load i32 (i32*)*, i32 (i32*)** %get_flags, align 8, !dbg !4885
  %19 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4886
  %range9 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %19, i32 0, i32 2, !dbg !4887
  %20 = load i32*, i32** %range9, align 8, !dbg !4887
  %call = call i32 %18(i32* %20) #8, !dbg !4883
  %21 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4888
  %flags = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %21, i32 0, i32 3, !dbg !4889
  store i32 %call, i32* %flags, align 8, !dbg !4890
  %22 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4891
  %bus10 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %22, i32 0, i32 1, !dbg !4893
  %23 = load %struct.of_bus*, %struct.of_bus** %bus10, align 8, !dbg !4893
  %has_flags = getelementptr inbounds %struct.of_bus, %struct.of_bus* %23, i32 0, i32 6, !dbg !4894
  %24 = load i8, i8* %has_flags, align 8, !dbg !4894
  %tobool11 = trunc i8 %24 to i1, !dbg !4894
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4895

if.then12:                                        ; preds = %if.end8
  store i32 1, i32* %busflag_na, align 4, !dbg !4896
  br label %if.end13, !dbg !4897

if.end13:                                         ; preds = %if.then12, %if.end8
  %25 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4898
  %range14 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %25, i32 0, i32 2, !dbg !4899
  %26 = load i32*, i32** %range14, align 8, !dbg !4899
  %27 = load i32, i32* %busflag_na, align 4, !dbg !4900
  %idx.ext15 = sext i32 %27 to i64, !dbg !4901
  %add.ptr16 = getelementptr i32, i32* %26, i64 %idx.ext15, !dbg !4901
  %28 = load i32, i32* %na, align 4, !dbg !4902
  %29 = load i32, i32* %busflag_na, align 4, !dbg !4903
  %sub = sub i32 %28, %29, !dbg !4904
  %call17 = call i64 @of_read_number(i32* %add.ptr16, i32 %sub) #8, !dbg !4905
  %30 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4906
  %31 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %30, i32 0, i32 0, !dbg !4907
  %bus_addr = bitcast %union.anon.65* %31 to i64*, !dbg !4907
  store i64 %call17, i64* %bus_addr, align 8, !dbg !4908
  %32 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4909
  %dma = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %32, i32 0, i32 7, !dbg !4911
  %33 = load i8, i8* %dma, align 4, !dbg !4911
  %tobool18 = trunc i8 %33 to i1, !dbg !4911
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !4912

if.then19:                                        ; preds = %if.end13
  %34 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4913
  %node = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %34, i32 0, i32 0, !dbg !4914
  %35 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4914
  %36 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4915
  %range20 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %36, i32 0, i32 2, !dbg !4916
  %37 = load i32*, i32** %range20, align 8, !dbg !4916
  %38 = load i32, i32* %na, align 4, !dbg !4917
  %idx.ext21 = sext i32 %38 to i64, !dbg !4918
  %add.ptr22 = getelementptr i32, i32* %37, i64 %idx.ext21, !dbg !4918
  %call23 = call i64 @of_translate_dma_address(%struct.device_node* %35, i32* %add.ptr22) #8, !dbg !4919
  %39 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4920
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %39, i32 0, i32 1, !dbg !4921
  store i64 %call23, i64* %cpu_addr, align 8, !dbg !4922
  br label %if.end30, !dbg !4920

if.else:                                          ; preds = %if.end13
  %40 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4923
  %node24 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %40, i32 0, i32 0, !dbg !4924
  %41 = load %struct.device_node*, %struct.device_node** %node24, align 8, !dbg !4924
  %42 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4925
  %range25 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %42, i32 0, i32 2, !dbg !4926
  %43 = load i32*, i32** %range25, align 8, !dbg !4926
  %44 = load i32, i32* %na, align 4, !dbg !4927
  %idx.ext26 = sext i32 %44 to i64, !dbg !4928
  %add.ptr27 = getelementptr i32, i32* %43, i64 %idx.ext26, !dbg !4928
  %call28 = call i64 @of_translate_address(%struct.device_node* %41, i32* %add.ptr27) #8, !dbg !4929
  %45 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4930
  %cpu_addr29 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %45, i32 0, i32 1, !dbg !4931
  store i64 %call28, i64* %cpu_addr29, align 8, !dbg !4932
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  %46 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4933
  %range31 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %46, i32 0, i32 2, !dbg !4934
  %47 = load i32*, i32** %range31, align 8, !dbg !4934
  %48 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4935
  %pna32 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %48, i32 0, i32 6, !dbg !4936
  %49 = load i32, i32* %pna32, align 8, !dbg !4936
  %idx.ext33 = sext i32 %49 to i64, !dbg !4937
  %add.ptr34 = getelementptr i32, i32* %47, i64 %idx.ext33, !dbg !4937
  %50 = load i32, i32* %na, align 4, !dbg !4938
  %idx.ext35 = sext i32 %50 to i64, !dbg !4939
  %add.ptr36 = getelementptr i32, i32* %add.ptr34, i64 %idx.ext35, !dbg !4939
  %51 = load i32, i32* %ns, align 4, !dbg !4940
  %call37 = call i64 @of_read_number(i32* %add.ptr36, i32 %51) #8, !dbg !4941
  %52 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !4942
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %52, i32 0, i32 2, !dbg !4943
  store i64 %call37, i64* %size, align 8, !dbg !4944
  %53 = load i32, i32* %np, align 4, !dbg !4945
  %54 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4946
  %range38 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %54, i32 0, i32 2, !dbg !4947
  %55 = load i32*, i32** %range38, align 8, !dbg !4948
  %idx.ext39 = sext i32 %53 to i64, !dbg !4948
  %add.ptr40 = getelementptr i32, i32* %55, i64 %idx.ext39, !dbg !4948
  store i32* %add.ptr40, i32** %range38, align 8, !dbg !4948
  br label %while.cond, !dbg !4949

while.cond:                                       ; preds = %if.end95, %if.end30
  %56 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4950
  %range41 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %56, i32 0, i32 2, !dbg !4951
  %57 = load i32*, i32** %range41, align 8, !dbg !4951
  %58 = load i32, i32* %np, align 4, !dbg !4952
  %idx.ext42 = sext i32 %58 to i64, !dbg !4953
  %add.ptr43 = getelementptr i32, i32* %57, i64 %idx.ext42, !dbg !4953
  %59 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4954
  %end44 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %59, i32 0, i32 3, !dbg !4955
  %60 = load i32*, i32** %end44, align 8, !dbg !4955
  %cmp45 = icmp ule i32* %add.ptr43, %60, !dbg !4956
  br i1 %cmp45, label %while.body, label %while.end, !dbg !4949

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %flags46, metadata !4957, metadata !DIExpression()), !dbg !4959
  store i32 0, i32* %flags46, align 4, !dbg !4959
  call void @llvm.dbg.declare(metadata i64* %bus_addr47, metadata !4960, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.declare(metadata i64* %cpu_addr48, metadata !4962, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.declare(metadata i64* %size49, metadata !4964, metadata !DIExpression()), !dbg !4965
  %61 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4966
  %bus50 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %61, i32 0, i32 1, !dbg !4967
  %62 = load %struct.of_bus*, %struct.of_bus** %bus50, align 8, !dbg !4967
  %get_flags51 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %62, i32 0, i32 7, !dbg !4968
  %63 = load i32 (i32*)*, i32 (i32*)** %get_flags51, align 8, !dbg !4968
  %64 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4969
  %range52 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %64, i32 0, i32 2, !dbg !4970
  %65 = load i32*, i32** %range52, align 8, !dbg !4970
  %call53 = call i32 %63(i32* %65) #8, !dbg !4966
  store i32 %call53, i32* %flags46, align 4, !dbg !4971
  %66 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4972
  %range54 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %66, i32 0, i32 2, !dbg !4973
  %67 = load i32*, i32** %range54, align 8, !dbg !4973
  %68 = load i32, i32* %busflag_na, align 4, !dbg !4974
  %idx.ext55 = sext i32 %68 to i64, !dbg !4975
  %add.ptr56 = getelementptr i32, i32* %67, i64 %idx.ext55, !dbg !4975
  %69 = load i32, i32* %na, align 4, !dbg !4976
  %70 = load i32, i32* %busflag_na, align 4, !dbg !4977
  %sub57 = sub i32 %69, %70, !dbg !4978
  %call58 = call i64 @of_read_number(i32* %add.ptr56, i32 %sub57) #8, !dbg !4979
  store i64 %call58, i64* %bus_addr47, align 8, !dbg !4980
  %71 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4981
  %dma59 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %71, i32 0, i32 7, !dbg !4983
  %72 = load i8, i8* %dma59, align 4, !dbg !4983
  %tobool60 = trunc i8 %72 to i1, !dbg !4983
  br i1 %tobool60, label %if.then61, label %if.else67, !dbg !4984

if.then61:                                        ; preds = %while.body
  %73 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4985
  %node62 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %73, i32 0, i32 0, !dbg !4986
  %74 = load %struct.device_node*, %struct.device_node** %node62, align 8, !dbg !4986
  %75 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4987
  %range63 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %75, i32 0, i32 2, !dbg !4988
  %76 = load i32*, i32** %range63, align 8, !dbg !4988
  %77 = load i32, i32* %na, align 4, !dbg !4989
  %idx.ext64 = sext i32 %77 to i64, !dbg !4990
  %add.ptr65 = getelementptr i32, i32* %76, i64 %idx.ext64, !dbg !4990
  %call66 = call i64 @of_translate_dma_address(%struct.device_node* %74, i32* %add.ptr65) #8, !dbg !4991
  store i64 %call66, i64* %cpu_addr48, align 8, !dbg !4992
  br label %if.end73, !dbg !4993

if.else67:                                        ; preds = %while.body
  %78 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4994
  %node68 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %78, i32 0, i32 0, !dbg !4995
  %79 = load %struct.device_node*, %struct.device_node** %node68, align 8, !dbg !4995
  %80 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !4996
  %range69 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %80, i32 0, i32 2, !dbg !4997
  %81 = load i32*, i32** %range69, align 8, !dbg !4997
  %82 = load i32, i32* %na, align 4, !dbg !4998
  %idx.ext70 = sext i32 %82 to i64, !dbg !4999
  %add.ptr71 = getelementptr i32, i32* %81, i64 %idx.ext70, !dbg !4999
  %call72 = call i64 @of_translate_address(%struct.device_node* %79, i32* %add.ptr71) #8, !dbg !5000
  store i64 %call72, i64* %cpu_addr48, align 8, !dbg !5001
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then61
  %83 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !5002
  %range74 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %83, i32 0, i32 2, !dbg !5003
  %84 = load i32*, i32** %range74, align 8, !dbg !5003
  %85 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !5004
  %pna75 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %85, i32 0, i32 6, !dbg !5005
  %86 = load i32, i32* %pna75, align 8, !dbg !5005
  %idx.ext76 = sext i32 %86 to i64, !dbg !5006
  %add.ptr77 = getelementptr i32, i32* %84, i64 %idx.ext76, !dbg !5006
  %87 = load i32, i32* %na, align 4, !dbg !5007
  %idx.ext78 = sext i32 %87 to i64, !dbg !5008
  %add.ptr79 = getelementptr i32, i32* %add.ptr77, i64 %idx.ext78, !dbg !5008
  %88 = load i32, i32* %ns, align 4, !dbg !5009
  %call80 = call i64 @of_read_number(i32* %add.ptr79, i32 %88) #8, !dbg !5010
  store i64 %call80, i64* %size49, align 8, !dbg !5011
  %89 = load i32, i32* %flags46, align 4, !dbg !5012
  %90 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5014
  %flags81 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %90, i32 0, i32 3, !dbg !5015
  %91 = load i32, i32* %flags81, align 8, !dbg !5015
  %cmp82 = icmp ne i32 %89, %91, !dbg !5016
  br i1 %cmp82, label %if.then83, label %if.end84, !dbg !5017

if.then83:                                        ; preds = %if.end73
  br label %while.end, !dbg !5018

if.end84:                                         ; preds = %if.end73
  %92 = load i64, i64* %bus_addr47, align 8, !dbg !5019
  %93 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5021
  %94 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %93, i32 0, i32 0, !dbg !5022
  %bus_addr85 = bitcast %union.anon.65* %94 to i64*, !dbg !5022
  %95 = load i64, i64* %bus_addr85, align 8, !dbg !5022
  %96 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5023
  %size86 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %96, i32 0, i32 2, !dbg !5024
  %97 = load i64, i64* %size86, align 8, !dbg !5024
  %add87 = add i64 %95, %97, !dbg !5025
  %cmp88 = icmp ne i64 %92, %add87, !dbg !5026
  br i1 %cmp88, label %if.then94, label %lor.lhs.false89, !dbg !5027

lor.lhs.false89:                                  ; preds = %if.end84
  %98 = load i64, i64* %cpu_addr48, align 8, !dbg !5028
  %99 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5029
  %cpu_addr90 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %99, i32 0, i32 1, !dbg !5030
  %100 = load i64, i64* %cpu_addr90, align 8, !dbg !5030
  %101 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5031
  %size91 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %101, i32 0, i32 2, !dbg !5032
  %102 = load i64, i64* %size91, align 8, !dbg !5032
  %add92 = add i64 %100, %102, !dbg !5033
  %cmp93 = icmp ne i64 %98, %add92, !dbg !5034
  br i1 %cmp93, label %if.then94, label %if.end95, !dbg !5035

if.then94:                                        ; preds = %lor.lhs.false89, %if.end84
  br label %while.end, !dbg !5036

if.end95:                                         ; preds = %lor.lhs.false89
  %103 = load i64, i64* %size49, align 8, !dbg !5037
  %104 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5038
  %size96 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %104, i32 0, i32 2, !dbg !5039
  %105 = load i64, i64* %size96, align 8, !dbg !5040
  %add97 = add i64 %105, %103, !dbg !5040
  store i64 %add97, i64* %size96, align 8, !dbg !5040
  %106 = load i32, i32* %np, align 4, !dbg !5041
  %107 = load %struct.of_pci_range_parser*, %struct.of_pci_range_parser** %parser.addr, align 8, !dbg !5042
  %range98 = getelementptr inbounds %struct.of_pci_range_parser, %struct.of_pci_range_parser* %107, i32 0, i32 2, !dbg !5043
  %108 = load i32*, i32** %range98, align 8, !dbg !5044
  %idx.ext99 = sext i32 %106 to i64, !dbg !5044
  %add.ptr100 = getelementptr i32, i32* %108, i64 %idx.ext99, !dbg !5044
  store i32* %add.ptr100, i32** %range98, align 8, !dbg !5044
  br label %while.cond, !dbg !4949, !llvm.loop !5045

while.end:                                        ; preds = %if.then94, %if.then83, %while.cond
  %109 = load %struct.of_pci_range*, %struct.of_pci_range** %range.addr, align 8, !dbg !5047
  store %struct.of_pci_range* %109, %struct.of_pci_range** %retval, align 8, !dbg !5048
  br label %return, !dbg !5048

return:                                           ; preds = %while.end, %if.then7, %if.then
  %110 = load %struct.of_pci_range*, %struct.of_pci_range** %retval, align 8, !dbg !5049
  ret %struct.of_pci_range* %110, !dbg !5049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_address_to_resource(%struct.device_node* %dev, i32 %index, %struct.resource* %r) #0 !dbg !5050 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %r.addr = alloca %struct.resource*, align 8
  %addrp = alloca i32*, align 8
  %size = alloca i64, align 8
  %flags = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i32** %addrp, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %size, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5061, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.declare(metadata i8** %name, metadata !5063, metadata !DIExpression()), !dbg !5064
  store i8* null, i8** %name, align 8, !dbg !5064
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !5065
  %1 = load i32, i32* %index.addr, align 4, !dbg !5066
  %call = call i32* @of_get_address(%struct.device_node* %0, i32 %1, i64* %size, i32* %flags) #8, !dbg !5067
  store i32* %call, i32** %addrp, align 8, !dbg !5068
  %2 = load i32*, i32** %addrp, align 8, !dbg !5069
  %cmp = icmp eq i32* %2, null, !dbg !5071
  br i1 %cmp, label %if.then, label %if.end, !dbg !5072

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5073
  br label %return, !dbg !5073

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !5074
  %4 = load i32, i32* %index.addr, align 4, !dbg !5075
  %call1 = call i32 @of_property_read_string_index(%struct.device_node* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %4, i8** %name) #8, !dbg !5076
  %5 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !5077
  %6 = load i32*, i32** %addrp, align 8, !dbg !5078
  %7 = load i64, i64* %size, align 8, !dbg !5079
  %8 = load i32, i32* %flags, align 4, !dbg !5080
  %9 = load i8*, i8** %name, align 8, !dbg !5081
  %10 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !5082
  %call2 = call i32 @__of_address_to_resource(%struct.device_node* %5, i32* %6, i64 %7, i32 %8, i8* %9, %struct.resource* %10) #8, !dbg !5083
  store i32 %call2, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5085
  ret i32 %11, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_string_index(%struct.device_node* %np, i8* %propname, i32 %index, i8** %output) #0 !dbg !5086 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %output.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i8** %output, i8*** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %output.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5099
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5100
  %2 = load i8**, i8*** %output.addr, align 8, !dbg !5101
  %3 = load i32, i32* %index.addr, align 4, !dbg !5102
  %call = call i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** %2, i64 1, i32 %3) #8, !dbg !5103
  store i32 %call, i32* %rc, align 4, !dbg !5098
  %4 = load i32, i32* %rc, align 4, !dbg !5104
  %cmp = icmp slt i32 %4, 0, !dbg !5105
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5104

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !5106
  br label %cond.end, !dbg !5104

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !5104
  ret i32 %cond, !dbg !5107
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @of_iomap(%struct.device_node* %np, i32 %index) #0 !dbg !5108 {
entry:
  %retval = alloca i8*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %res = alloca %struct.resource, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5117
  %1 = load i32, i32* %index.addr, align 4, !dbg !5119
  %call = call i32 @of_address_to_resource(%struct.device_node* %0, i32 %1, %struct.resource* %res) #8, !dbg !5120
  %tobool = icmp ne i32 %call, 0, !dbg !5120
  br i1 %tobool, label %if.then, label %if.end, !dbg !5121

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5122
  br label %return, !dbg !5122

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !5123
  %2 = load i64, i64* %start, align 8, !dbg !5123
  %call1 = call i64 @resource_size(%struct.resource* %res) #8, !dbg !5124
  %call2 = call i8* @ioremap(i64 %2, i64 %call1) #8, !dbg !5125
  store i8* %call2, i8** %retval, align 8, !dbg !5126
  br label %return, !dbg !5126

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !5127
  ret i8* %3, !dbg !5127
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !5128 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5135
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !5136
  %1 = load i64, i64* %end, align 8, !dbg !5136
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5137
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !5138
  %3 = load i64, i64* %start, align 8, !dbg !5138
  %sub = sub i64 %1, %3, !dbg !5139
  %add = add i64 %sub, 1, !dbg !5140
  ret i64 %add, !dbg !5141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @of_io_request_and_map(%struct.device_node* %np, i32 %index, i8* %name) #0 !dbg !5142 {
entry:
  %retval = alloca i8*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %res = alloca %struct.resource, align 8
  %mem = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !5151, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.declare(metadata i8** %mem, metadata !5153, metadata !DIExpression()), !dbg !5154
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5155
  %1 = load i32, i32* %index.addr, align 4, !dbg !5157
  %call = call i32 @of_address_to_resource(%struct.device_node* %0, i32 %1, %struct.resource* %res) #8, !dbg !5158
  %tobool = icmp ne i32 %call, 0, !dbg !5158
  br i1 %tobool, label %if.then, label %if.end, !dbg !5159

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -22) #8, !dbg !5160
  store i8* %call1, i8** %retval, align 8, !dbg !5161
  br label %return, !dbg !5161

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !5162
  %tobool2 = icmp ne i8* %2, null, !dbg !5162
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5164

if.then3:                                         ; preds = %if.end
  %name4 = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 2, !dbg !5165
  %3 = load i8*, i8** %name4, align 8, !dbg !5165
  store i8* %3, i8** %name.addr, align 8, !dbg !5166
  br label %if.end5, !dbg !5167

if.end5:                                          ; preds = %if.then3, %if.end
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !5168
  %4 = load i64, i64* %start, align 8, !dbg !5168
  %call6 = call i64 @resource_size(%struct.resource* %res) #8, !dbg !5168
  %5 = load i8*, i8** %name.addr, align 8, !dbg !5168
  %call7 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %4, i64 %call6, i8* %5, i32 0) #8, !dbg !5168
  %tobool8 = icmp ne %struct.resource* %call7, null, !dbg !5168
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !5170

if.then9:                                         ; preds = %if.end5
  %call10 = call i8* @ERR_PTR(i64 -16) #8, !dbg !5171
  store i8* %call10, i8** %retval, align 8, !dbg !5172
  br label %return, !dbg !5172

if.end11:                                         ; preds = %if.end5
  %start12 = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !5173
  %6 = load i64, i64* %start12, align 8, !dbg !5173
  %call13 = call i64 @resource_size(%struct.resource* %res) #8, !dbg !5174
  %call14 = call i8* @ioremap(i64 %6, i64 %call13) #8, !dbg !5175
  store i8* %call14, i8** %mem, align 8, !dbg !5176
  %7 = load i8*, i8** %mem, align 8, !dbg !5177
  %tobool15 = icmp ne i8* %7, null, !dbg !5177
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !5179

if.then16:                                        ; preds = %if.end11
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !5180
  %8 = load i64, i64* %start17, align 8, !dbg !5180
  %call18 = call i64 @resource_size(%struct.resource* %res) #8, !dbg !5180
  call void @__release_region(%struct.resource* @iomem_resource, i64 %8, i64 %call18) #8, !dbg !5180
  %call19 = call i8* @ERR_PTR(i64 -12) #8, !dbg !5182
  store i8* %call19, i8** %retval, align 8, !dbg !5183
  br label %return, !dbg !5183

if.end20:                                         ; preds = %if.end11
  %9 = load i8*, i8** %mem, align 8, !dbg !5184
  store i8* %9, i8** %retval, align 8, !dbg !5185
  br label %return, !dbg !5185

return:                                           ; preds = %if.end20, %if.then16, %if.then9, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !5186
  ret i8* %10, !dbg !5186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5187 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load i64, i64* %error.addr, align 8, !dbg !5193
  %1 = inttoptr i64 %0 to i8*, !dbg !5194
  ret i8* %1, !dbg !5195
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_dma_get_range(%struct.device_node* %np, %struct.bus_dma_region** %map) #0 !dbg !5196 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %map.addr = alloca %struct.bus_dma_region**, align 8
  %node = alloca %struct.device_node*, align 8
  %ranges = alloca i32*, align 8
  %found_dma_ranges = alloca i8, align 1
  %parser = alloca %struct.of_pci_range_parser, align 8
  %range = alloca %struct.of_pci_range, align 8
  %r = alloca %struct.bus_dma_region*, align 8
  %len = alloca i32, align 4
  %num_ranges = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  store %struct.bus_dma_region** %map, %struct.bus_dma_region*** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_dma_region*** %map.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5206
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %0) #8, !dbg !5207
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !5205
  call void @llvm.dbg.declare(metadata i32** %ranges, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i32* null, i32** %ranges, align 8, !dbg !5209
  call void @llvm.dbg.declare(metadata i8* %found_dma_ranges, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i8 0, i8* %found_dma_ranges, align 1, !dbg !5211
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser* %parser, metadata !5212, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata %struct.of_pci_range* %range, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.bus_dma_region** %r, metadata !5216, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5219, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.declare(metadata i32* %num_ranges, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i32 0, i32* %num_ranges, align 4, !dbg !5222
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5223, metadata !DIExpression()), !dbg !5224
  store i32 0, i32* %ret, align 4, !dbg !5224
  br label %while.cond, !dbg !5225

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5226
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !5225
  br i1 %tobool, label %while.body, label %while.end, !dbg !5225

while.body:                                       ; preds = %while.cond
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5227
  %call1 = call i8* @of_get_property(%struct.device_node* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %len) #8, !dbg !5229
  %3 = bitcast i8* %call1 to i32*, !dbg !5229
  store i32* %3, i32** %ranges, align 8, !dbg !5230
  %4 = load i32*, i32** %ranges, align 8, !dbg !5231
  %tobool2 = icmp ne i32* %4, null, !dbg !5231
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !5233

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, i32* %len, align 4, !dbg !5234
  %cmp = icmp sgt i32 %5, 0, !dbg !5235
  br i1 %cmp, label %if.then, label %if.end, !dbg !5236

if.then:                                          ; preds = %land.lhs.true
  br label %while.end, !dbg !5237

if.end:                                           ; preds = %land.lhs.true, %while.body
  %6 = load i8, i8* %found_dma_ranges, align 1, !dbg !5238
  %tobool3 = trunc i8 %6 to i1, !dbg !5238
  br i1 %tobool3, label %land.lhs.true4, label %if.end7, !dbg !5240

land.lhs.true4:                                   ; preds = %if.end
  %7 = load i32*, i32** %ranges, align 8, !dbg !5241
  %tobool5 = icmp ne i32* %7, null, !dbg !5241
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5242

if.then6:                                         ; preds = %land.lhs.true4
  store i32 -19, i32* %ret, align 4, !dbg !5243
  br label %out, !dbg !5245

if.end7:                                          ; preds = %land.lhs.true4, %if.end
  store i8 1, i8* %found_dma_ranges, align 1, !dbg !5246
  %8 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5247
  %call8 = call %struct.device_node* @of_get_next_dma_parent(%struct.device_node* %8) #8, !dbg !5248
  store %struct.device_node* %call8, %struct.device_node** %node, align 8, !dbg !5249
  br label %while.cond, !dbg !5225, !llvm.loop !5250

while.end:                                        ; preds = %if.then, %while.cond
  %9 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5252
  %tobool9 = icmp ne %struct.device_node* %9, null, !dbg !5252
  br i1 %tobool9, label %lor.lhs.false, label %if.then11, !dbg !5254

lor.lhs.false:                                    ; preds = %while.end
  %10 = load i32*, i32** %ranges, align 8, !dbg !5255
  %tobool10 = icmp ne i32* %10, null, !dbg !5255
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5256

if.then11:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %tmp, align 4, !dbg !5257
  %11 = load i32, i32* %tmp, align 4, !dbg !5261
  store i32 -19, i32* %ret, align 4, !dbg !5262
  br label %out, !dbg !5263

if.end12:                                         ; preds = %lor.lhs.false
  %12 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5264
  %call13 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %12) #8, !dbg !5265
  br label %for.cond, !dbg !5266

for.cond:                                         ; preds = %for.body, %if.end12
  %call14 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* %parser, %struct.of_pci_range* %range) #8, !dbg !5267
  %tobool15 = icmp ne %struct.of_pci_range* %call14, null, !dbg !5270
  br i1 %tobool15, label %for.body, label %for.end, !dbg !5270

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %num_ranges, align 4, !dbg !5271
  %inc = add i32 %13, 1, !dbg !5271
  store i32 %inc, i32* %num_ranges, align 4, !dbg !5271
  br label %for.cond, !dbg !5267, !llvm.loop !5272

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %num_ranges, align 4, !dbg !5274
  %add = add i32 %14, 1, !dbg !5275
  %conv = sext i32 %add to i64, !dbg !5274
  %call16 = call i8* @kcalloc(i64 %conv, i64 32, i32 3264) #8, !dbg !5276
  %15 = bitcast i8* %call16 to %struct.bus_dma_region*, !dbg !5276
  store %struct.bus_dma_region* %15, %struct.bus_dma_region** %r, align 8, !dbg !5277
  %16 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5278
  %tobool17 = icmp ne %struct.bus_dma_region* %16, null, !dbg !5278
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5280

if.then18:                                        ; preds = %for.end
  store i32 -12, i32* %ret, align 4, !dbg !5281
  br label %out, !dbg !5283

if.end19:                                         ; preds = %for.end
  %17 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5284
  %18 = load %struct.bus_dma_region**, %struct.bus_dma_region*** %map.addr, align 8, !dbg !5285
  store %struct.bus_dma_region* %17, %struct.bus_dma_region** %18, align 8, !dbg !5286
  %19 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5287
  %call20 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %19) #8, !dbg !5288
  br label %for.cond21, !dbg !5289

for.cond21:                                       ; preds = %if.end30, %if.then28, %if.end19
  %call22 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* %parser, %struct.of_pci_range* %range) #8, !dbg !5290
  %tobool23 = icmp ne %struct.of_pci_range* %call22, null, !dbg !5293
  br i1 %tobool23, label %for.body24, label %for.end36, !dbg !5293

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %tmp25, align 4, !dbg !5294
  %20 = load i32, i32* %tmp25, align 4, !dbg !5298
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5299
  %21 = load i64, i64* %cpu_addr, align 8, !dbg !5299
  %cmp26 = icmp eq i64 %21, -1, !dbg !5301
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !5302

if.then28:                                        ; preds = %for.body24
  %22 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5303
  %bus_addr = bitcast %union.anon.65* %22 to i64*, !dbg !5303
  %23 = load i64, i64* %bus_addr, align 8, !dbg !5303
  %24 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5303
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i64 %23, %struct.device_node* %24) #11, !dbg !5303
  br label %for.cond21, !dbg !5305, !llvm.loop !5306

if.end30:                                         ; preds = %for.body24
  %cpu_addr31 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5308
  %25 = load i64, i64* %cpu_addr31, align 8, !dbg !5308
  %26 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5309
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %26, i32 0, i32 0, !dbg !5310
  store i64 %25, i64* %cpu_start, align 8, !dbg !5311
  %27 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5312
  %bus_addr32 = bitcast %union.anon.65* %27 to i64*, !dbg !5312
  %28 = load i64, i64* %bus_addr32, align 8, !dbg !5312
  %29 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5313
  %dma_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %29, i32 0, i32 1, !dbg !5314
  store i64 %28, i64* %dma_start, align 8, !dbg !5315
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 2, !dbg !5316
  %30 = load i64, i64* %size, align 8, !dbg !5316
  %31 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5317
  %size33 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %31, i32 0, i32 2, !dbg !5318
  store i64 %30, i64* %size33, align 8, !dbg !5319
  %cpu_addr34 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5320
  %32 = load i64, i64* %cpu_addr34, align 8, !dbg !5320
  %33 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5321
  %bus_addr35 = bitcast %union.anon.65* %33 to i64*, !dbg !5321
  %34 = load i64, i64* %bus_addr35, align 8, !dbg !5321
  %sub = sub i64 %32, %34, !dbg !5322
  %35 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5323
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %35, i32 0, i32 3, !dbg !5324
  store i64 %sub, i64* %offset, align 8, !dbg !5325
  %36 = load %struct.bus_dma_region*, %struct.bus_dma_region** %r, align 8, !dbg !5326
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %36, i32 1, !dbg !5326
  store %struct.bus_dma_region* %incdec.ptr, %struct.bus_dma_region** %r, align 8, !dbg !5326
  br label %for.cond21, !dbg !5290, !llvm.loop !5306

for.end36:                                        ; preds = %for.cond21
  br label %out, !dbg !5307

out:                                              ; preds = %for.end36, %if.then18, %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !5327), !dbg !5328
  %37 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5329
  call void @of_node_put(%struct.device_node* %37) #8, !dbg !5330
  %38 = load i32, i32* %ret, align 4, !dbg !5331
  ret i32 %38, !dbg !5332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !5333 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5338
  ret %struct.device_node* %0, !dbg !5339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_get_next_dma_parent(%struct.device_node* %np) #0 !dbg !5340 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %parent = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !5343, metadata !DIExpression()), !dbg !5344
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5345
  %call = call %struct.device_node* @__of_get_dma_parent(%struct.device_node* %0) #8, !dbg !5346
  store %struct.device_node* %call, %struct.device_node** %parent, align 8, !dbg !5347
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5348
  call void @of_node_put(%struct.device_node* %1) #8, !dbg !5349
  %2 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !5350
  ret %struct.device_node* %2, !dbg !5351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !5352 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  %0 = load i64, i64* %n.addr, align 8, !dbg !5361
  %1 = load i64, i64* %size.addr, align 8, !dbg !5362
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5363
  %or = or i32 %2, 256, !dbg !5364
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !5365
  ret i8* %call, !dbg !5366
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @of_dma_is_coherent(%struct.device_node* %np) #0 !dbg !5367 {
entry:
  %retval = alloca i1, align 1
  %np.addr = alloca %struct.device_node*, align 8
  %node = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !5370, metadata !DIExpression()), !dbg !5371
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5372
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %0) #8, !dbg !5373
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !5374
  br label %while.cond, !dbg !5375

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5376
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !5375
  br i1 %tobool, label %while.body, label %while.end, !dbg !5375

while.body:                                       ; preds = %while.cond
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5377
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !5380
  br i1 %call1, label %if.then, label %if.end, !dbg !5381

if.then:                                          ; preds = %while.body
  %3 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5382
  call void @of_node_put(%struct.device_node* %3) #8, !dbg !5384
  store i1 true, i1* %retval, align 1, !dbg !5385
  br label %return, !dbg !5385

if.end:                                           ; preds = %while.body
  %4 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5386
  %call2 = call %struct.device_node* @of_get_next_dma_parent(%struct.device_node* %4) #8, !dbg !5387
  store %struct.device_node* %call2, %struct.device_node** %node, align 8, !dbg !5388
  br label %while.cond, !dbg !5375, !llvm.loop !5389

while.end:                                        ; preds = %while.cond
  %5 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !5391
  call void @of_node_put(%struct.device_node* %5) #8, !dbg !5392
  store i1 false, i1* %retval, align 1, !dbg !5393
  br label %return, !dbg !5393

return:                                           ; preds = %while.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !5394
  ret i1 %6, !dbg !5394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !5395 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5404
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5405
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #8, !dbg !5406
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !5403
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !5407
  %tobool = icmp ne %struct.property* %2, null, !dbg !5407
  %3 = zext i1 %tobool to i64, !dbg !5407
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5407
  %tobool1 = icmp ne i32 %cond, 0, !dbg !5407
  ret i1 %tobool1, !dbg !5408
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #4 !dbg !5409 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  %0 = load i32, i32* %val.addr, align 4, !dbg !5413
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !5414, !srcloc !5415
  store i32 %1, i32* %val.addr, align 4, !dbg !5414
  %2 = load i32, i32* %val.addr, align 4, !dbg !5416
  ret i32 %2, !dbg !5417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_pci_match(%struct.device_node* %np) #0 !dbg !5418 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5421
  %call = call zeroext i1 @of_node_is_type(%struct.device_node* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !5422
  br i1 %call, label %lor.end, label %lor.lhs.false, !dbg !5423

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5424
  %call1 = call zeroext i1 @of_node_is_type(%struct.device_node* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !5425
  br i1 %call1, label %lor.end, label %lor.lhs.false2, !dbg !5426

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5427
  %call3 = call zeroext i1 @of_node_is_type(%struct.device_node* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !5428
  br i1 %call3, label %lor.end, label %lor.lhs.false4, !dbg !5429

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5430
  %call5 = call zeroext i1 @of_node_is_type(%struct.device_node* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !5431
  br i1 %call5, label %lor.end, label %lor.rhs, !dbg !5432

lor.rhs:                                          ; preds = %lor.lhs.false4
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5433
  %call6 = call zeroext i1 @of_node_is_pcie(%struct.device_node* %4) #8, !dbg !5434
  br label %lor.end, !dbg !5432

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %call6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32, !dbg !5432
  ret i32 %lor.ext, !dbg !5435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_bus_pci_count_cells(%struct.device_node* %np, i32* %addrc, i32* %sizec) #0 !dbg !5436 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %addrc.addr = alloca i32*, align 8
  %sizec.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  store i32* %addrc, i32** %addrc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addrc.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  store i32* %sizec, i32** %sizec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sizec.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load i32*, i32** %addrc.addr, align 8, !dbg !5443
  %tobool = icmp ne i32* %0, null, !dbg !5443
  br i1 %tobool, label %if.then, label %if.end, !dbg !5445

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %addrc.addr, align 8, !dbg !5446
  store i32 3, i32* %1, align 4, !dbg !5447
  br label %if.end, !dbg !5448

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %sizec.addr, align 8, !dbg !5449
  %tobool1 = icmp ne i32* %2, null, !dbg !5449
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5451

if.then2:                                         ; preds = %if.end
  %3 = load i32*, i32** %sizec.addr, align 8, !dbg !5452
  store i32 2, i32* %3, align 4, !dbg !5453
  br label %if.end3, !dbg !5454

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !5455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_bus_pci_map(i32* %addr, i32* %range, i32 %na, i32 %ns, i32 %pna) #0 !dbg !5456 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i32*, align 8
  %range.addr = alloca i32*, align 8
  %na.addr = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  %pna.addr = alloca i32, align 4
  %cp = alloca i64, align 8
  %s = alloca i64, align 8
  %da = alloca i64, align 8
  %af = alloca i32, align 4
  %rf = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i32* %range, i32** %range.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %range.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  store i32 %pna, i32* %pna.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pna.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.declare(metadata i64* %cp, metadata !5467, metadata !DIExpression()), !dbg !5468
  call void @llvm.dbg.declare(metadata i64* %s, metadata !5469, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.declare(metadata i64* %da, metadata !5471, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.declare(metadata i32* %af, metadata !5473, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.declare(metadata i32* %rf, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5477
  %call = call i32 @of_bus_pci_get_flags(i32* %0) #8, !dbg !5478
  store i32 %call, i32* %af, align 4, !dbg !5479
  %1 = load i32*, i32** %range.addr, align 8, !dbg !5480
  %call1 = call i32 @of_bus_pci_get_flags(i32* %1) #8, !dbg !5481
  store i32 %call1, i32* %rf, align 4, !dbg !5482
  %2 = load i32, i32* %af, align 4, !dbg !5483
  %3 = load i32, i32* %rf, align 4, !dbg !5485
  %xor = xor i32 %2, %3, !dbg !5486
  %and = and i32 %xor, 768, !dbg !5487
  %tobool = icmp ne i32 %and, 0, !dbg !5487
  br i1 %tobool, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !5489
  br label %return, !dbg !5489

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %range.addr, align 8, !dbg !5490
  %add.ptr = getelementptr i32, i32* %4, i64 1, !dbg !5491
  %5 = load i32, i32* %na.addr, align 4, !dbg !5492
  %sub = sub i32 %5, 1, !dbg !5493
  %call2 = call i64 @of_read_number(i32* %add.ptr, i32 %sub) #8, !dbg !5494
  store i64 %call2, i64* %cp, align 8, !dbg !5495
  %6 = load i32*, i32** %range.addr, align 8, !dbg !5496
  %7 = load i32, i32* %na.addr, align 4, !dbg !5497
  %idx.ext = sext i32 %7 to i64, !dbg !5498
  %add.ptr3 = getelementptr i32, i32* %6, i64 %idx.ext, !dbg !5498
  %8 = load i32, i32* %pna.addr, align 4, !dbg !5499
  %idx.ext4 = sext i32 %8 to i64, !dbg !5500
  %add.ptr5 = getelementptr i32, i32* %add.ptr3, i64 %idx.ext4, !dbg !5500
  %9 = load i32, i32* %ns.addr, align 4, !dbg !5501
  %call6 = call i64 @of_read_number(i32* %add.ptr5, i32 %9) #8, !dbg !5502
  store i64 %call6, i64* %s, align 8, !dbg !5503
  %10 = load i32*, i32** %addr.addr, align 8, !dbg !5504
  %add.ptr7 = getelementptr i32, i32* %10, i64 1, !dbg !5505
  %11 = load i32, i32* %na.addr, align 4, !dbg !5506
  %sub8 = sub i32 %11, 1, !dbg !5507
  %call9 = call i64 @of_read_number(i32* %add.ptr7, i32 %sub8) #8, !dbg !5508
  store i64 %call9, i64* %da, align 8, !dbg !5509
  store i32 0, i32* %tmp, align 4, !dbg !5510
  %12 = load i32, i32* %tmp, align 4, !dbg !5513
  %13 = load i64, i64* %da, align 8, !dbg !5514
  %14 = load i64, i64* %cp, align 8, !dbg !5516
  %cmp = icmp ult i64 %13, %14, !dbg !5517
  br i1 %cmp, label %if.then11, label %lor.lhs.false, !dbg !5518

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i64, i64* %da, align 8, !dbg !5519
  %16 = load i64, i64* %cp, align 8, !dbg !5520
  %17 = load i64, i64* %s, align 8, !dbg !5521
  %add = add i64 %16, %17, !dbg !5522
  %cmp10 = icmp uge i64 %15, %add, !dbg !5523
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5524

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i64 -1, i64* %retval, align 8, !dbg !5525
  br label %return, !dbg !5525

if.end12:                                         ; preds = %lor.lhs.false
  %18 = load i64, i64* %da, align 8, !dbg !5526
  %19 = load i64, i64* %cp, align 8, !dbg !5527
  %sub13 = sub i64 %18, %19, !dbg !5528
  store i64 %sub13, i64* %retval, align 8, !dbg !5529
  br label %return, !dbg !5529

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !5530
  ret i64 %20, !dbg !5530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_pci_translate(i32* %addr, i64 %offset, i32 %na) #0 !dbg !5531 {
entry:
  %addr.addr = alloca i32*, align 8
  %offset.addr = alloca i64, align 8
  %na.addr = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5538
  %add.ptr = getelementptr i32, i32* %0, i64 1, !dbg !5539
  %1 = load i64, i64* %offset.addr, align 8, !dbg !5540
  %2 = load i32, i32* %na.addr, align 4, !dbg !5541
  %sub = sub i32 %2, 1, !dbg !5542
  %call = call i32 @of_bus_default_translate(i32* %add.ptr, i64 %1, i32 %sub) #8, !dbg !5543
  ret i32 %call, !dbg !5544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_pci_get_flags(i32* %addr) #0 !dbg !5545 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !5546, metadata !DIExpression()), !dbg !5552
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !5559, metadata !DIExpression()), !dbg !5560
  %addr.addr = alloca i32*, align 8
  %flags = alloca i32, align 4
  %w = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5563, metadata !DIExpression()), !dbg !5564
  store i32 0, i32* %flags, align 4, !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %w, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5567
  store i32* %0, i32** %p.addr.i, align 8
  %1 = load i32*, i32** %p.addr.i, align 8, !dbg !5568
  store i32* %1, i32** %p.addr.i.i, align 8
  %2 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %3 = load i32, i32* %2, align 4, !dbg !5569
  %4 = call i1 @llvm.is.constant.i32(i32 %3) #10, !dbg !5569
  br i1 %4, label %cond.true.i.i, label %cond.false.i.i, !dbg !5569

cond.true.i.i:                                    ; preds = %entry
  %5 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %6 = load i32, i32* %5, align 4, !dbg !5569
  %and.i.i = and i32 %6, 255, !dbg !5569
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !5569
  %7 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %8 = load i32, i32* %7, align 4, !dbg !5569
  %and1.i.i = and i32 %8, 65280, !dbg !5569
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !5569
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !5569
  %9 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %10 = load i32, i32* %9, align 4, !dbg !5569
  %and3.i.i = and i32 %10, 16711680, !dbg !5569
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !5569
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !5569
  %11 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %12 = load i32, i32* %11, align 4, !dbg !5569
  %and5.i.i = and i32 %12, -16777216, !dbg !5569
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !5569
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !5569
  br label %__be32_to_cpup.exit, !dbg !5569

cond.false.i.i:                                   ; preds = %entry
  %13 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5569
  %14 = load i32, i32* %13, align 4, !dbg !5569
  %call.i.i = call i32 @__fswab32(i32 %14) #9, !dbg !5569
  br label %__be32_to_cpup.exit, !dbg !5569

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !5569
  store i32 %cond.i.i, i32* %w, align 4, !dbg !5566
  %15 = load i32, i32* %w, align 4, !dbg !5570
  %shr = lshr i32 %15, 24, !dbg !5571
  %and = and i32 %shr, 3, !dbg !5572
  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !5573

sw.bb:                                            ; preds = %__be32_to_cpup.exit
  %16 = load i32, i32* %flags, align 4, !dbg !5574
  %or = or i32 %16, 256, !dbg !5574
  store i32 %or, i32* %flags, align 4, !dbg !5574
  br label %sw.epilog, !dbg !5576

sw.bb1:                                           ; preds = %__be32_to_cpup.exit, %__be32_to_cpup.exit
  %17 = load i32, i32* %flags, align 4, !dbg !5577
  %or2 = or i32 %17, 512, !dbg !5577
  store i32 %or2, i32* %flags, align 4, !dbg !5577
  br label %sw.epilog, !dbg !5578

sw.epilog:                                        ; preds = %__be32_to_cpup.exit, %sw.bb1, %sw.bb
  %18 = load i32, i32* %w, align 4, !dbg !5579
  %and3 = and i32 %18, 1073741824, !dbg !5581
  %tobool = icmp ne i32 %and3, 0, !dbg !5581
  br i1 %tobool, label %if.then, label %if.end, !dbg !5582

if.then:                                          ; preds = %sw.epilog
  %19 = load i32, i32* %flags, align 4, !dbg !5583
  %or4 = or i32 %19, 8192, !dbg !5583
  store i32 %or4, i32* %flags, align 4, !dbg !5583
  br label %if.end, !dbg !5584

if.end:                                           ; preds = %if.then, %sw.epilog
  %20 = load i32, i32* %flags, align 4, !dbg !5585
  ret i32 %20, !dbg !5586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_isa_match(%struct.device_node* %np) #0 !dbg !5587 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5590
  %call = call zeroext i1 @of_node_name_eq(%struct.device_node* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !5591
  %conv = zext i1 %call to i32, !dbg !5591
  ret i32 %conv, !dbg !5592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_bus_isa_count_cells(%struct.device_node* %child, i32* %addrc, i32* %sizec) #0 !dbg !5593 {
entry:
  %child.addr = alloca %struct.device_node*, align 8
  %addrc.addr = alloca i32*, align 8
  %sizec.addr = alloca i32*, align 8
  store %struct.device_node* %child, %struct.device_node** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %child.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  store i32* %addrc, i32** %addrc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addrc.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store i32* %sizec, i32** %sizec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sizec.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  %0 = load i32*, i32** %addrc.addr, align 8, !dbg !5600
  %tobool = icmp ne i32* %0, null, !dbg !5600
  br i1 %tobool, label %if.then, label %if.end, !dbg !5602

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %addrc.addr, align 8, !dbg !5603
  store i32 2, i32* %1, align 4, !dbg !5604
  br label %if.end, !dbg !5605

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %sizec.addr, align 8, !dbg !5606
  %tobool1 = icmp ne i32* %2, null, !dbg !5606
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5608

if.then2:                                         ; preds = %if.end
  %3 = load i32*, i32** %sizec.addr, align 8, !dbg !5609
  store i32 1, i32* %3, align 4, !dbg !5610
  br label %if.end3, !dbg !5611

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !5612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_bus_isa_map(i32* %addr, i32* %range, i32 %na, i32 %ns, i32 %pna) #0 !dbg !5613 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i32*, align 8
  %range.addr = alloca i32*, align 8
  %na.addr = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  %pna.addr = alloca i32, align 4
  %cp = alloca i64, align 8
  %s = alloca i64, align 8
  %da = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  store i32* %range, i32** %range.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %range.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  store i32 %pna, i32* %pna.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pna.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i64* %cp, metadata !5624, metadata !DIExpression()), !dbg !5625
  call void @llvm.dbg.declare(metadata i64* %s, metadata !5626, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata i64* %da, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5630
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !5630
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5630
  %2 = load i32*, i32** %range.addr, align 8, !dbg !5632
  %arrayidx1 = getelementptr i32, i32* %2, i64 0, !dbg !5632
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !5632
  %xor = xor i32 %1, %3, !dbg !5633
  %and = and i32 %xor, 16777216, !dbg !5634
  %tobool = icmp ne i32 %and, 0, !dbg !5634
  br i1 %tobool, label %if.then, label %if.end, !dbg !5635

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !5636
  br label %return, !dbg !5636

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %range.addr, align 8, !dbg !5637
  %add.ptr = getelementptr i32, i32* %4, i64 1, !dbg !5638
  %5 = load i32, i32* %na.addr, align 4, !dbg !5639
  %sub = sub i32 %5, 1, !dbg !5640
  %call = call i64 @of_read_number(i32* %add.ptr, i32 %sub) #8, !dbg !5641
  store i64 %call, i64* %cp, align 8, !dbg !5642
  %6 = load i32*, i32** %range.addr, align 8, !dbg !5643
  %7 = load i32, i32* %na.addr, align 4, !dbg !5644
  %idx.ext = sext i32 %7 to i64, !dbg !5645
  %add.ptr2 = getelementptr i32, i32* %6, i64 %idx.ext, !dbg !5645
  %8 = load i32, i32* %pna.addr, align 4, !dbg !5646
  %idx.ext3 = sext i32 %8 to i64, !dbg !5647
  %add.ptr4 = getelementptr i32, i32* %add.ptr2, i64 %idx.ext3, !dbg !5647
  %9 = load i32, i32* %ns.addr, align 4, !dbg !5648
  %call5 = call i64 @of_read_number(i32* %add.ptr4, i32 %9) #8, !dbg !5649
  store i64 %call5, i64* %s, align 8, !dbg !5650
  %10 = load i32*, i32** %addr.addr, align 8, !dbg !5651
  %add.ptr6 = getelementptr i32, i32* %10, i64 1, !dbg !5652
  %11 = load i32, i32* %na.addr, align 4, !dbg !5653
  %sub7 = sub i32 %11, 1, !dbg !5654
  %call8 = call i64 @of_read_number(i32* %add.ptr6, i32 %sub7) #8, !dbg !5655
  store i64 %call8, i64* %da, align 8, !dbg !5656
  store i32 0, i32* %tmp, align 4, !dbg !5657
  %12 = load i32, i32* %tmp, align 4, !dbg !5660
  %13 = load i64, i64* %da, align 8, !dbg !5661
  %14 = load i64, i64* %cp, align 8, !dbg !5663
  %cmp = icmp ult i64 %13, %14, !dbg !5664
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !5665

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i64, i64* %da, align 8, !dbg !5666
  %16 = load i64, i64* %cp, align 8, !dbg !5667
  %17 = load i64, i64* %s, align 8, !dbg !5668
  %add = add i64 %16, %17, !dbg !5669
  %cmp9 = icmp uge i64 %15, %add, !dbg !5670
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5671

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  store i64 -1, i64* %retval, align 8, !dbg !5672
  br label %return, !dbg !5672

if.end11:                                         ; preds = %lor.lhs.false
  %18 = load i64, i64* %da, align 8, !dbg !5673
  %19 = load i64, i64* %cp, align 8, !dbg !5674
  %sub12 = sub i64 %18, %19, !dbg !5675
  store i64 %sub12, i64* %retval, align 8, !dbg !5676
  br label %return, !dbg !5676

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !5677
  ret i64 %20, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_isa_translate(i32* %addr, i64 %offset, i32 %na) #0 !dbg !5678 {
entry:
  %addr.addr = alloca i32*, align 8
  %offset.addr = alloca i64, align 8
  %na.addr = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5685
  %add.ptr = getelementptr i32, i32* %0, i64 1, !dbg !5686
  %1 = load i64, i64* %offset.addr, align 8, !dbg !5687
  %2 = load i32, i32* %na.addr, align 4, !dbg !5688
  %sub = sub i32 %2, 1, !dbg !5689
  %call = call i32 @of_bus_default_translate(i32* %add.ptr, i64 %1, i32 %sub) #8, !dbg !5690
  ret i32 %call, !dbg !5691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_isa_get_flags(i32* %addr) #0 !dbg !5692 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !5546, metadata !DIExpression()), !dbg !5693
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !5559, metadata !DIExpression()), !dbg !5696
  %addr.addr = alloca i32*, align 8
  %flags = alloca i32, align 4
  %w = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5699, metadata !DIExpression()), !dbg !5700
  store i32 0, i32* %flags, align 4, !dbg !5700
  call void @llvm.dbg.declare(metadata i32* %w, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5703
  store i32* %0, i32** %p.addr.i, align 8
  %1 = load i32*, i32** %p.addr.i, align 8, !dbg !5704
  store i32* %1, i32** %p.addr.i.i, align 8
  %2 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %3 = load i32, i32* %2, align 4, !dbg !5705
  %4 = call i1 @llvm.is.constant.i32(i32 %3) #10, !dbg !5705
  br i1 %4, label %cond.true.i.i, label %cond.false.i.i, !dbg !5705

cond.true.i.i:                                    ; preds = %entry
  %5 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %6 = load i32, i32* %5, align 4, !dbg !5705
  %and.i.i = and i32 %6, 255, !dbg !5705
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !5705
  %7 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %8 = load i32, i32* %7, align 4, !dbg !5705
  %and1.i.i = and i32 %8, 65280, !dbg !5705
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !5705
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !5705
  %9 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %10 = load i32, i32* %9, align 4, !dbg !5705
  %and3.i.i = and i32 %10, 16711680, !dbg !5705
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !5705
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !5705
  %11 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %12 = load i32, i32* %11, align 4, !dbg !5705
  %and5.i.i = and i32 %12, -16777216, !dbg !5705
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !5705
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !5705
  br label %__be32_to_cpup.exit, !dbg !5705

cond.false.i.i:                                   ; preds = %entry
  %13 = load i32*, i32** %p.addr.i.i, align 8, !dbg !5705
  %14 = load i32, i32* %13, align 4, !dbg !5705
  %call.i.i = call i32 @__fswab32(i32 %14) #9, !dbg !5705
  br label %__be32_to_cpup.exit, !dbg !5705

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !5705
  store i32 %cond.i.i, i32* %w, align 4, !dbg !5702
  %15 = load i32, i32* %w, align 4, !dbg !5706
  %and = and i32 %15, 1, !dbg !5708
  %tobool = icmp ne i32 %and, 0, !dbg !5708
  br i1 %tobool, label %if.then, label %if.else, !dbg !5709

if.then:                                          ; preds = %__be32_to_cpup.exit
  %16 = load i32, i32* %flags, align 4, !dbg !5710
  %or = or i32 %16, 256, !dbg !5710
  store i32 %or, i32* %flags, align 4, !dbg !5710
  br label %if.end, !dbg !5711

if.else:                                          ; preds = %__be32_to_cpup.exit
  %17 = load i32, i32* %flags, align 4, !dbg !5712
  %or1 = or i32 %17, 512, !dbg !5712
  store i32 %or1, i32* %flags, align 4, !dbg !5712
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %flags, align 4, !dbg !5713
  ret i32 %18, !dbg !5714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_bus_default_count_cells(%struct.device_node* %dev, i32* %addrc, i32* %sizec) #0 !dbg !5715 {
entry:
  %dev.addr = alloca %struct.device_node*, align 8
  %addrc.addr = alloca i32*, align 8
  %sizec.addr = alloca i32*, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store i32* %addrc, i32** %addrc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addrc.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  store i32* %sizec, i32** %sizec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sizec.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  %0 = load i32*, i32** %addrc.addr, align 8, !dbg !5722
  %tobool = icmp ne i32* %0, null, !dbg !5722
  br i1 %tobool, label %if.then, label %if.end, !dbg !5724

if.then:                                          ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !5725
  %call = call i32 @of_n_addr_cells(%struct.device_node* %1) #8, !dbg !5726
  %2 = load i32*, i32** %addrc.addr, align 8, !dbg !5727
  store i32 %call, i32* %2, align 4, !dbg !5728
  br label %if.end, !dbg !5729

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %sizec.addr, align 8, !dbg !5730
  %tobool1 = icmp ne i32* %3, null, !dbg !5730
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5732

if.then2:                                         ; preds = %if.end
  %4 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !5733
  %call3 = call i32 @of_n_size_cells(%struct.device_node* %4) #8, !dbg !5734
  %5 = load i32*, i32** %sizec.addr, align 8, !dbg !5735
  store i32 %call3, i32* %5, align 4, !dbg !5736
  br label %if.end4, !dbg !5737

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !5738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_bus_default_map(i32* %addr, i32* %range, i32 %na, i32 %ns, i32 %pna) #0 !dbg !5739 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i32*, align 8
  %range.addr = alloca i32*, align 8
  %na.addr = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  %pna.addr = alloca i32, align 4
  %cp = alloca i64, align 8
  %s = alloca i64, align 8
  %da = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32* %range, i32** %range.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %range.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  store i32 %pna, i32* %pna.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pna.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.declare(metadata i64* %cp, metadata !5750, metadata !DIExpression()), !dbg !5751
  call void @llvm.dbg.declare(metadata i64* %s, metadata !5752, metadata !DIExpression()), !dbg !5753
  call void @llvm.dbg.declare(metadata i64* %da, metadata !5754, metadata !DIExpression()), !dbg !5755
  %0 = load i32*, i32** %range.addr, align 8, !dbg !5756
  %1 = load i32, i32* %na.addr, align 4, !dbg !5757
  %call = call i64 @of_read_number(i32* %0, i32 %1) #8, !dbg !5758
  store i64 %call, i64* %cp, align 8, !dbg !5759
  %2 = load i32*, i32** %range.addr, align 8, !dbg !5760
  %3 = load i32, i32* %na.addr, align 4, !dbg !5761
  %idx.ext = sext i32 %3 to i64, !dbg !5762
  %add.ptr = getelementptr i32, i32* %2, i64 %idx.ext, !dbg !5762
  %4 = load i32, i32* %pna.addr, align 4, !dbg !5763
  %idx.ext1 = sext i32 %4 to i64, !dbg !5764
  %add.ptr2 = getelementptr i32, i32* %add.ptr, i64 %idx.ext1, !dbg !5764
  %5 = load i32, i32* %ns.addr, align 4, !dbg !5765
  %call3 = call i64 @of_read_number(i32* %add.ptr2, i32 %5) #8, !dbg !5766
  store i64 %call3, i64* %s, align 8, !dbg !5767
  %6 = load i32*, i32** %addr.addr, align 8, !dbg !5768
  %7 = load i32, i32* %na.addr, align 4, !dbg !5769
  %call4 = call i64 @of_read_number(i32* %6, i32 %7) #8, !dbg !5770
  store i64 %call4, i64* %da, align 8, !dbg !5771
  store i32 0, i32* %tmp, align 4, !dbg !5772
  %8 = load i32, i32* %tmp, align 4, !dbg !5775
  %9 = load i64, i64* %da, align 8, !dbg !5776
  %10 = load i64, i64* %cp, align 8, !dbg !5778
  %cmp = icmp ult i64 %9, %10, !dbg !5779
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5780

lor.lhs.false:                                    ; preds = %entry
  %11 = load i64, i64* %da, align 8, !dbg !5781
  %12 = load i64, i64* %cp, align 8, !dbg !5782
  %13 = load i64, i64* %s, align 8, !dbg !5783
  %add = add i64 %12, %13, !dbg !5784
  %cmp5 = icmp uge i64 %11, %add, !dbg !5785
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5786

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, i64* %retval, align 8, !dbg !5787
  br label %return, !dbg !5787

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i64, i64* %da, align 8, !dbg !5788
  %15 = load i64, i64* %cp, align 8, !dbg !5789
  %sub = sub i64 %14, %15, !dbg !5790
  store i64 %sub, i64* %retval, align 8, !dbg !5791
  br label %return, !dbg !5791

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5792
  ret i64 %16, !dbg !5792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_default_translate(i32* %addr, i64 %offset, i32 %na) #0 !dbg !5793 {
entry:
  %addr.addr = alloca i32*, align 8
  %offset.addr = alloca i64, align 8
  %na.addr = alloca i32, align 4
  %a = alloca i64, align 8
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata i64* %a, metadata !5800, metadata !DIExpression()), !dbg !5801
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !5802
  %1 = load i32, i32* %na.addr, align 4, !dbg !5803
  %call = call i64 @of_read_number(i32* %0, i32 %1) #8, !dbg !5804
  store i64 %call, i64* %a, align 8, !dbg !5801
  %2 = load i32*, i32** %addr.addr, align 8, !dbg !5805
  %3 = bitcast i32* %2 to i8*, !dbg !5806
  %4 = load i32, i32* %na.addr, align 4, !dbg !5807
  %mul = mul i32 %4, 4, !dbg !5808
  %conv = sext i32 %mul to i64, !dbg !5807
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 %conv, i1 false), !dbg !5806
  %5 = load i64, i64* %offset.addr, align 8, !dbg !5809
  %6 = load i64, i64* %a, align 8, !dbg !5810
  %add = add i64 %6, %5, !dbg !5810
  store i64 %add, i64* %a, align 8, !dbg !5810
  %7 = load i32, i32* %na.addr, align 4, !dbg !5811
  %cmp = icmp sgt i32 %7, 1, !dbg !5813
  br i1 %cmp, label %if.then, label %if.end, !dbg !5814

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %a, align 8, !dbg !5815
  %shr = lshr i64 %8, 32, !dbg !5815
  %conv2 = trunc i64 %shr to i32, !dbg !5815
  %9 = call i1 @llvm.is.constant.i32(i32 %conv2), !dbg !5815
  br i1 %9, label %cond.true, label %cond.false, !dbg !5815

cond.true:                                        ; preds = %if.then
  %10 = load i64, i64* %a, align 8, !dbg !5815
  %shr3 = lshr i64 %10, 32, !dbg !5815
  %conv4 = trunc i64 %shr3 to i32, !dbg !5815
  %and = and i32 %conv4, 255, !dbg !5815
  %shl = shl i32 %and, 24, !dbg !5815
  %11 = load i64, i64* %a, align 8, !dbg !5815
  %shr5 = lshr i64 %11, 32, !dbg !5815
  %conv6 = trunc i64 %shr5 to i32, !dbg !5815
  %and7 = and i32 %conv6, 65280, !dbg !5815
  %shl8 = shl i32 %and7, 8, !dbg !5815
  %or = or i32 %shl, %shl8, !dbg !5815
  %12 = load i64, i64* %a, align 8, !dbg !5815
  %shr9 = lshr i64 %12, 32, !dbg !5815
  %conv10 = trunc i64 %shr9 to i32, !dbg !5815
  %and11 = and i32 %conv10, 16711680, !dbg !5815
  %shr12 = lshr i32 %and11, 8, !dbg !5815
  %or13 = or i32 %or, %shr12, !dbg !5815
  %13 = load i64, i64* %a, align 8, !dbg !5815
  %shr14 = lshr i64 %13, 32, !dbg !5815
  %conv15 = trunc i64 %shr14 to i32, !dbg !5815
  %and16 = and i32 %conv15, -16777216, !dbg !5815
  %shr17 = lshr i32 %and16, 24, !dbg !5815
  %or18 = or i32 %or13, %shr17, !dbg !5815
  br label %cond.end, !dbg !5815

cond.false:                                       ; preds = %if.then
  %14 = load i64, i64* %a, align 8, !dbg !5815
  %shr19 = lshr i64 %14, 32, !dbg !5815
  %conv20 = trunc i64 %shr19 to i32, !dbg !5815
  %call21 = call i32 @__fswab32(i32 %conv20) #9, !dbg !5815
  br label %cond.end, !dbg !5815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or18, %cond.true ], [ %call21, %cond.false ], !dbg !5815
  %15 = load i32*, i32** %addr.addr, align 8, !dbg !5816
  %16 = load i32, i32* %na.addr, align 4, !dbg !5817
  %sub = sub i32 %16, 2, !dbg !5818
  %idxprom = sext i32 %sub to i64, !dbg !5816
  %arrayidx = getelementptr i32, i32* %15, i64 %idxprom, !dbg !5816
  store i32 %cond, i32* %arrayidx, align 4, !dbg !5819
  br label %if.end, !dbg !5816

if.end:                                           ; preds = %cond.end, %entry
  %17 = load i64, i64* %a, align 8, !dbg !5820
  %and22 = and i64 %17, 4294967295, !dbg !5820
  %conv23 = trunc i64 %and22 to i32, !dbg !5820
  %18 = call i1 @llvm.is.constant.i32(i32 %conv23), !dbg !5820
  br i1 %18, label %cond.true24, label %cond.false44, !dbg !5820

cond.true24:                                      ; preds = %if.end
  %19 = load i64, i64* %a, align 8, !dbg !5820
  %and25 = and i64 %19, 4294967295, !dbg !5820
  %conv26 = trunc i64 %and25 to i32, !dbg !5820
  %and27 = and i32 %conv26, 255, !dbg !5820
  %shl28 = shl i32 %and27, 24, !dbg !5820
  %20 = load i64, i64* %a, align 8, !dbg !5820
  %and29 = and i64 %20, 4294967295, !dbg !5820
  %conv30 = trunc i64 %and29 to i32, !dbg !5820
  %and31 = and i32 %conv30, 65280, !dbg !5820
  %shl32 = shl i32 %and31, 8, !dbg !5820
  %or33 = or i32 %shl28, %shl32, !dbg !5820
  %21 = load i64, i64* %a, align 8, !dbg !5820
  %and34 = and i64 %21, 4294967295, !dbg !5820
  %conv35 = trunc i64 %and34 to i32, !dbg !5820
  %and36 = and i32 %conv35, 16711680, !dbg !5820
  %shr37 = lshr i32 %and36, 8, !dbg !5820
  %or38 = or i32 %or33, %shr37, !dbg !5820
  %22 = load i64, i64* %a, align 8, !dbg !5820
  %and39 = and i64 %22, 4294967295, !dbg !5820
  %conv40 = trunc i64 %and39 to i32, !dbg !5820
  %and41 = and i32 %conv40, -16777216, !dbg !5820
  %shr42 = lshr i32 %and41, 24, !dbg !5820
  %or43 = or i32 %or38, %shr42, !dbg !5820
  br label %cond.end48, !dbg !5820

cond.false44:                                     ; preds = %if.end
  %23 = load i64, i64* %a, align 8, !dbg !5820
  %and45 = and i64 %23, 4294967295, !dbg !5820
  %conv46 = trunc i64 %and45 to i32, !dbg !5820
  %call47 = call i32 @__fswab32(i32 %conv46) #9, !dbg !5820
  br label %cond.end48, !dbg !5820

cond.end48:                                       ; preds = %cond.false44, %cond.true24
  %cond49 = phi i32 [ %or43, %cond.true24 ], [ %call47, %cond.false44 ], !dbg !5820
  %24 = load i32*, i32** %addr.addr, align 8, !dbg !5821
  %25 = load i32, i32* %na.addr, align 4, !dbg !5822
  %sub50 = sub i32 %25, 1, !dbg !5823
  %idxprom51 = sext i32 %sub50 to i64, !dbg !5821
  %arrayidx52 = getelementptr i32, i32* %24, i64 %idxprom51, !dbg !5821
  store i32 %cond49, i32* %arrayidx52, align 4, !dbg !5824
  ret i32 0, !dbg !5825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_bus_default_get_flags(i32* %addr) #0 !dbg !5826 {
entry:
  %addr.addr = alloca i32*, align 8
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  ret i32 512, !dbg !5829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_node_is_type(%struct.device_node* %np, i8* %type) #0 !dbg !5830 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %type.addr = alloca i8*, align 8
  %match = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  store i8* %type, i8** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %type.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  call void @llvm.dbg.declare(metadata i8** %match, metadata !5835, metadata !DIExpression()), !dbg !5836
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5837
  %call = call i8* @of_node_get_device_type(%struct.device_node* %0) #8, !dbg !5838
  store i8* %call, i8** %match, align 8, !dbg !5836
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5839
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !5839
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !5840

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %match, align 8, !dbg !5841
  %tobool1 = icmp ne i8* %2, null, !dbg !5841
  br i1 %tobool1, label %land.lhs.true2, label %land.end, !dbg !5842

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %type.addr, align 8, !dbg !5843
  %tobool3 = icmp ne i8* %3, null, !dbg !5843
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !5844

land.rhs:                                         ; preds = %land.lhs.true2
  %4 = load i8*, i8** %match, align 8, !dbg !5845
  %5 = load i8*, i8** %type.addr, align 8, !dbg !5846
  %call4 = call i32 @strcmp(i8* %4, i8* %5) #8, !dbg !5847
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5848
  %lnot = xor i1 %tobool5, true, !dbg !5848
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5849
  ret i1 %6, !dbg !5850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_node_is_pcie(%struct.device_node* %np) #0 !dbg !137 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %is_pcie = alloca i8, align 1
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  call void @llvm.dbg.declare(metadata i8* %is_pcie, metadata !5853, metadata !DIExpression()), !dbg !5854
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5855
  %call = call zeroext i1 @of_node_name_eq(%struct.device_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !5856
  %frombool = zext i1 %call to i8, !dbg !5854
  store i8 %frombool, i8* %is_pcie, align 1, !dbg !5854
  %1 = load i8, i8* %is_pcie, align 1, !dbg !5857
  %tobool = trunc i8 %1 to i1, !dbg !5857
  br i1 %tobool, label %if.then, label %if.end9, !dbg !5859

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !5860, metadata !DIExpression()), !dbg !5862
  %2 = load i8, i8* @of_node_is_pcie.__print_once, align 1, !dbg !5862
  %tobool1 = trunc i8 %2 to i1, !dbg !5862
  %lnot = xor i1 %tobool1, true, !dbg !5862
  %frombool2 = zext i1 %lnot to i8, !dbg !5862
  store i8 %frombool2, i8* %__ret_print_once, align 1, !dbg !5862
  %3 = load i8, i8* @of_node_is_pcie.__print_once, align 1, !dbg !5863
  %tobool3 = trunc i8 %3 to i1, !dbg !5863
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !5862

if.then4:                                         ; preds = %if.then
  store i8 1, i8* @of_node_is_pcie.__print_once, align 1, !dbg !5865
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5865
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), %struct.device_node* %4) #11, !dbg !5865
  br label %if.end, !dbg !5865

if.end:                                           ; preds = %if.then4, %if.then
  %5 = load i8, i8* %__ret_print_once, align 1, !dbg !5862
  %tobool6 = trunc i8 %5 to i1, !dbg !5862
  %lnot7 = xor i1 %tobool6, true, !dbg !5862
  %lnot8 = xor i1 %lnot7, true, !dbg !5862
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5862
  %conv = sext i32 %lnot.ext to i64, !dbg !5862
  store i64 %conv, i64* %tmp, align 8, !dbg !5863
  %6 = load i64, i64* %tmp, align 8, !dbg !5862
  br label %if.end9, !dbg !5867

if.end9:                                          ; preds = %if.end, %entry
  %7 = load i8, i8* %is_pcie, align 1, !dbg !5868
  %tobool10 = trunc i8 %7 to i1, !dbg !5868
  ret i1 %tobool10, !dbg !5869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_node_get_device_type(%struct.device_node* %np) #0 !dbg !5870 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5875
  %call = call i8* @of_get_property(%struct.device_node* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* null) #8, !dbg !5876
  ret i8* %call, !dbg !5877
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_node_name_eq(%struct.device_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_n_addr_cells(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_n_size_cells(%struct.device_node*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_dump_addr(i8* %s, i32* %addr, i32 %na) #0 !dbg !5878 {
entry:
  %s.addr = alloca i8*, align 8
  %addr.addr = alloca i32*, align 8
  %na.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: noredzone
declare dso_local %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_translate_one(%struct.device_node* %parent, %struct.of_bus* %bus, %struct.of_bus* %pbus, i32* %addr, i32 %na, i32 %ns, i32 %pna, i8* %rprop) #0 !dbg !5888 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device_node*, align 8
  %bus.addr = alloca %struct.of_bus*, align 8
  %pbus.addr = alloca %struct.of_bus*, align 8
  %addr.addr = alloca i32*, align 8
  %na.addr = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  %pna.addr = alloca i32, align 4
  %rprop.addr = alloca i8*, align 8
  %ranges = alloca i32*, align 8
  %rlen = alloca i32, align 4
  %rone = alloca i32, align 4
  %offset = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct.device_node* %parent, %struct.device_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store %struct.of_bus* %bus, %struct.of_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_bus** %bus.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  store %struct.of_bus* %pbus, %struct.of_bus** %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_bus** %pbus.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i32 %na, i32* %na.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %na.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  store i32 %pna, i32* %pna.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pna.addr, metadata !5903, metadata !DIExpression()), !dbg !5904
  store i8* %rprop, i8** %rprop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rprop.addr, metadata !5905, metadata !DIExpression()), !dbg !5906
  call void @llvm.dbg.declare(metadata i32** %ranges, metadata !5907, metadata !DIExpression()), !dbg !5908
  call void @llvm.dbg.declare(metadata i32* %rlen, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i32* %rone, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !5913, metadata !DIExpression()), !dbg !5914
  store i64 -1, i64* %offset, align 8, !dbg !5914
  %0 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !5915
  %1 = load i8*, i8** %rprop.addr, align 8, !dbg !5916
  %call = call i8* @of_get_property(%struct.device_node* %0, i8* %1, i32* %rlen) #8, !dbg !5917
  %2 = bitcast i8* %call to i32*, !dbg !5917
  store i32* %2, i32** %ranges, align 8, !dbg !5918
  %3 = load i32*, i32** %ranges, align 8, !dbg !5919
  %cmp = icmp eq i32* %3, null, !dbg !5921
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5922

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !5923
  %call1 = call i32 @of_empty_ranges_quirk(%struct.device_node* %4) #8, !dbg !5924
  %tobool = icmp ne i32 %call1, 0, !dbg !5924
  br i1 %tobool, label %if.end, label %land.lhs.true2, !dbg !5925

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load i8*, i8** %rprop.addr, align 8, !dbg !5926
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !5927
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5927
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5928

if.then:                                          ; preds = %land.lhs.true2
  store i32 0, i32* %tmp, align 4, !dbg !5929
  %6 = load i32, i32* %tmp, align 4, !dbg !5933
  store i32 1, i32* %retval, align 4, !dbg !5934
  br label %return, !dbg !5934

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %7 = load i32*, i32** %ranges, align 8, !dbg !5935
  %cmp5 = icmp eq i32* %7, null, !dbg !5937
  br i1 %cmp5, label %if.then7, label %lor.lhs.false, !dbg !5938

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %rlen, align 4, !dbg !5939
  %cmp6 = icmp eq i32 %8, 0, !dbg !5940
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !5941

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i32*, i32** %addr.addr, align 8, !dbg !5942
  %10 = load i32, i32* %na.addr, align 4, !dbg !5944
  %call8 = call i64 @of_read_number(i32* %9, i32 %10) #8, !dbg !5945
  store i64 %call8, i64* %offset, align 8, !dbg !5946
  %11 = load i32*, i32** %addr.addr, align 8, !dbg !5947
  %12 = bitcast i32* %11 to i8*, !dbg !5948
  %13 = load i32, i32* %pna.addr, align 4, !dbg !5949
  %mul = mul i32 %13, 4, !dbg !5950
  %conv = sext i32 %mul to i64, !dbg !5949
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 %conv, i1 false), !dbg !5948
  store i32 0, i32* %tmp9, align 4, !dbg !5951
  %14 = load i32, i32* %tmp9, align 4, !dbg !5954
  br label %finish, !dbg !5955

if.end10:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %tmp11, align 4, !dbg !5956
  %15 = load i32, i32* %tmp11, align 4, !dbg !5959
  %16 = load i32, i32* %rlen, align 4, !dbg !5960
  %div = udiv i32 %16, 4, !dbg !5960
  store i32 %div, i32* %rlen, align 4, !dbg !5960
  %17 = load i32, i32* %na.addr, align 4, !dbg !5961
  %18 = load i32, i32* %pna.addr, align 4, !dbg !5962
  %add = add i32 %17, %18, !dbg !5963
  %19 = load i32, i32* %ns.addr, align 4, !dbg !5964
  %add12 = add i32 %add, %19, !dbg !5965
  store i32 %add12, i32* %rone, align 4, !dbg !5966
  br label %for.cond, !dbg !5967

for.cond:                                         ; preds = %for.inc, %if.end10
  %20 = load i32, i32* %rlen, align 4, !dbg !5968
  %21 = load i32, i32* %rone, align 4, !dbg !5971
  %cmp13 = icmp uge i32 %20, %21, !dbg !5972
  br i1 %cmp13, label %for.body, label %for.end, !dbg !5973

for.body:                                         ; preds = %for.cond
  %22 = load %struct.of_bus*, %struct.of_bus** %bus.addr, align 8, !dbg !5974
  %map = getelementptr inbounds %struct.of_bus, %struct.of_bus* %22, i32 0, i32 4, !dbg !5976
  %23 = load i64 (i32*, i32*, i32, i32, i32)*, i64 (i32*, i32*, i32, i32, i32)** %map, align 8, !dbg !5976
  %24 = load i32*, i32** %addr.addr, align 8, !dbg !5977
  %25 = load i32*, i32** %ranges, align 8, !dbg !5978
  %26 = load i32, i32* %na.addr, align 4, !dbg !5979
  %27 = load i32, i32* %ns.addr, align 4, !dbg !5980
  %28 = load i32, i32* %pna.addr, align 4, !dbg !5981
  %call15 = call i64 %23(i32* %24, i32* %25, i32 %26, i32 %27, i32 %28) #8, !dbg !5974
  store i64 %call15, i64* %offset, align 8, !dbg !5982
  %29 = load i64, i64* %offset, align 8, !dbg !5983
  %cmp16 = icmp ne i64 %29, -1, !dbg !5985
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5986

if.then18:                                        ; preds = %for.body
  br label %for.end, !dbg !5987

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !5988

for.inc:                                          ; preds = %if.end19
  %30 = load i32, i32* %rone, align 4, !dbg !5989
  %31 = load i32, i32* %rlen, align 4, !dbg !5990
  %sub = sub i32 %31, %30, !dbg !5990
  store i32 %sub, i32* %rlen, align 4, !dbg !5990
  %32 = load i32, i32* %rone, align 4, !dbg !5991
  %33 = load i32*, i32** %ranges, align 8, !dbg !5992
  %idx.ext = sext i32 %32 to i64, !dbg !5992
  %add.ptr = getelementptr i32, i32* %33, i64 %idx.ext, !dbg !5992
  store i32* %add.ptr, i32** %ranges, align 8, !dbg !5992
  br label %for.cond, !dbg !5993, !llvm.loop !5994

for.end:                                          ; preds = %if.then18, %for.cond
  %34 = load i64, i64* %offset, align 8, !dbg !5996
  %cmp20 = icmp eq i64 %34, -1, !dbg !5998
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !5999

if.then22:                                        ; preds = %for.end
  store i32 0, i32* %tmp23, align 4, !dbg !6000
  %35 = load i32, i32* %tmp23, align 4, !dbg !6004
  store i32 1, i32* %retval, align 4, !dbg !6005
  br label %return, !dbg !6005

if.end24:                                         ; preds = %for.end
  %36 = load i32*, i32** %addr.addr, align 8, !dbg !6006
  %37 = bitcast i32* %36 to i8*, !dbg !6007
  %38 = load i32*, i32** %ranges, align 8, !dbg !6008
  %39 = load i32, i32* %na.addr, align 4, !dbg !6009
  %idx.ext25 = sext i32 %39 to i64, !dbg !6010
  %add.ptr26 = getelementptr i32, i32* %38, i64 %idx.ext25, !dbg !6010
  %40 = bitcast i32* %add.ptr26 to i8*, !dbg !6007
  %41 = load i32, i32* %pna.addr, align 4, !dbg !6011
  %mul27 = mul i32 4, %41, !dbg !6012
  %conv28 = sext i32 %mul27 to i64, !dbg !6013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %40, i64 %conv28, i1 false), !dbg !6007
  br label %finish, !dbg !6007

finish:                                           ; preds = %if.end24, %if.then7
  call void @llvm.dbg.label(metadata !6014), !dbg !6015
  %42 = load i32*, i32** %addr.addr, align 8, !dbg !6016
  %43 = load i32, i32* %pna.addr, align 4, !dbg !6017
  call void @of_dump_addr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32* %42, i32 %43) #8, !dbg !6018
  store i32 0, i32* %tmp29, align 4, !dbg !6019
  %44 = load i32, i32* %tmp29, align 4, !dbg !6022
  %45 = load %struct.of_bus*, %struct.of_bus** %pbus.addr, align 8, !dbg !6023
  %translate = getelementptr inbounds %struct.of_bus, %struct.of_bus* %45, i32 0, i32 5, !dbg !6024
  %46 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %translate, align 8, !dbg !6024
  %47 = load i32*, i32** %addr.addr, align 8, !dbg !6025
  %48 = load i64, i64* %offset, align 8, !dbg !6026
  %49 = load i32, i32* %pna.addr, align 4, !dbg !6027
  %call30 = call i32 %46(i32* %47, i64 %48, i32 %49) #8, !dbg !6023
  store i32 %call30, i32* %retval, align 4, !dbg !6028
  br label %return, !dbg !6028

return:                                           ; preds = %finish, %if.then22, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !6029
  ret i32 %50, !dbg !6029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_empty_ranges_quirk(%struct.device_node* %np) #0 !dbg !6030 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  ret i32 0, !dbg !6033
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_bus_n_addr_cells(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_bus_n_size_cells(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_translate_ioport(%struct.device_node* %dev, i32* %in_addr, i64 %size) #0 !dbg !6034 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device_node*, align 8
  %in_addr.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %taddr = alloca i64, align 8
  %port = alloca i64, align 8
  %host = alloca %struct.device_node*, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  store i32* %in_addr, i32** %in_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %in_addr.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.declare(metadata i64* %taddr, metadata !6043, metadata !DIExpression()), !dbg !6044
  call void @llvm.dbg.declare(metadata i64* %port, metadata !6045, metadata !DIExpression()), !dbg !6046
  call void @llvm.dbg.declare(metadata %struct.device_node** %host, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !6049
  %1 = load i32*, i32** %in_addr.addr, align 8, !dbg !6050
  %call = call i64 @__of_translate_address(%struct.device_node* %0, %struct.device_node* (%struct.device_node*)* @of_get_parent, i32* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.device_node** %host) #8, !dbg !6051
  store i64 %call, i64* %taddr, align 8, !dbg !6052
  %2 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !6053
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !6053
  br i1 %tobool, label %if.then, label %if.else, !dbg !6055

if.then:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !6056
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 3, !dbg !6058
  %4 = load i64, i64* %taddr, align 8, !dbg !6059
  %5 = load i64, i64* %size.addr, align 8, !dbg !6060
  %call1 = call i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle* %fwnode, i64 %4, i64 %5) #8, !dbg !6061
  store i64 %call1, i64* %port, align 8, !dbg !6062
  %6 = load %struct.device_node*, %struct.device_node** %host, align 8, !dbg !6063
  call void @of_node_put(%struct.device_node* %6) #8, !dbg !6064
  br label %if.end, !dbg !6065

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %taddr, align 8, !dbg !6066
  %call2 = call i64 @pci_address_to_pio(i64 %7) #8, !dbg !6068
  store i64 %call2, i64* %port, align 8, !dbg !6069
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i64, i64* %port, align 8, !dbg !6070
  %cmp = icmp eq i64 %8, -1, !dbg !6072
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6073

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !6074
  br label %return, !dbg !6074

if.end4:                                          ; preds = %if.end
  %9 = load i64, i64* %port, align 8, !dbg !6075
  store i64 %9, i64* %retval, align 8, !dbg !6076
  br label %return, !dbg !6076

return:                                           ; preds = %if.end4, %if.then3
  %10 = load i64, i64* %retval, align 8, !dbg !6077
  ret i64 %10, !dbg !6077
}

; Function Attrs: noredzone
declare dso_local i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string_helper(%struct.device_node*, i8*, i8**, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !6078 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !6079, metadata !DIExpression()), !dbg !6083
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !6092, metadata !DIExpression()), !dbg !6093
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !6094, metadata !DIExpression()), !dbg !6095
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !6096, metadata !DIExpression()), !dbg !6097
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !6098, metadata !DIExpression()), !dbg !6102
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6104, metadata !DIExpression()), !dbg !6108
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6110, metadata !DIExpression()), !dbg !6114
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6119, metadata !DIExpression()), !dbg !6120
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6121, metadata !DIExpression()), !dbg !6122
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6123, metadata !DIExpression()), !dbg !6124
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6125, metadata !DIExpression()), !dbg !6126
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6127, metadata !DIExpression()), !dbg !6128
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6129, metadata !DIExpression()), !dbg !6130
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6131, metadata !DIExpression()), !dbg !6132
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6133, metadata !DIExpression()), !dbg !6134
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6141, metadata !DIExpression()), !dbg !6142
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !6143, metadata !DIExpression()), !dbg !6146
  %0 = load i64, i64* %n.addr, align 8, !dbg !6146
  store i64 %0, i64* %__a, align 8, !dbg !6146
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !6147, metadata !DIExpression()), !dbg !6146
  %1 = load i64, i64* %size.addr, align 8, !dbg !6146
  store i64 %1, i64* %__b, align 8, !dbg !6146
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !6148, metadata !DIExpression()), !dbg !6146
  store i64* %bytes, i64** %__d, align 8, !dbg !6146
  %cmp = icmp eq i64* %__a, %__b, !dbg !6146
  %conv = zext i1 %cmp to i32, !dbg !6146
  %2 = load i64*, i64** %__d, align 8, !dbg !6146
  %cmp1 = icmp eq i64* %__a, %2, !dbg !6146
  %conv2 = zext i1 %cmp1 to i32, !dbg !6146
  %3 = load i64, i64* %__a, align 8, !dbg !6146
  %4 = load i64, i64* %__b, align 8, !dbg !6146
  %5 = load i64*, i64** %__d, align 8, !dbg !6146
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !6146
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !6146
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !6146
  store i64 %8, i64* %5, align 8, !dbg !6146
  %frombool = zext i1 %7 to i8, !dbg !6146
  store i8 %frombool, i8* %tmp, align 1, !dbg !6146
  %9 = load i8, i8* %tmp, align 1, !dbg !6146
  %tobool = trunc i8 %9 to i1, !dbg !6146
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !6150
  %lnot = xor i1 %call, true, !dbg !6150
  %lnot3 = xor i1 %lnot, true, !dbg !6150
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6150
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6150
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6150
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6151

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6152
  br label %return, !dbg !6152

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6153
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6154
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6155

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6156
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6157
  br i1 %13, label %if.then6, label %if.end8, !dbg !6158

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6159
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6160
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6161
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !6162
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6163

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6164
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6165
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6166

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6167
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6168
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6169
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !6170
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6128
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6171
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6172
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6173
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6174
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6175
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6176
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !6177
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6177
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6177
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6177
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6177
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6178
  br label %kmalloc.exit, !dbg !6178

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6179
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6180
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6180
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6182

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6183
  br label %kmalloc_index.exit.i, !dbg !6183

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6184
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6186
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6187

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6188
  br label %kmalloc_index.exit.i, !dbg !6188

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6189
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6191
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6192

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6193
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6194
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6195

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6196
  br label %kmalloc_index.exit.i, !dbg !6196

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6197
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6199
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6200

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6201
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6202
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6203

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6204
  br label %kmalloc_index.exit.i, !dbg !6204

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6205
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6207
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6208

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6209
  br label %kmalloc_index.exit.i, !dbg !6209

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6210
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6212
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6213

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6214
  br label %kmalloc_index.exit.i, !dbg !6214

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6215
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6217
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6218

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6219
  br label %kmalloc_index.exit.i, !dbg !6219

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6220
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6222
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6223

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6224
  br label %kmalloc_index.exit.i, !dbg !6224

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6225
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6227
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6228

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6229
  br label %kmalloc_index.exit.i, !dbg !6229

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6230
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6232
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6233

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6234
  br label %kmalloc_index.exit.i, !dbg !6234

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6235
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6237
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6238

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6239
  br label %kmalloc_index.exit.i, !dbg !6239

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6240
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6242
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6243

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6244
  br label %kmalloc_index.exit.i, !dbg !6244

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6245
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !6247
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6248

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6249
  br label %kmalloc_index.exit.i, !dbg !6249

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6250
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !6252
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6253

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6254
  br label %kmalloc_index.exit.i, !dbg !6254

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6255
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !6257
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6258

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6259
  br label %kmalloc_index.exit.i, !dbg !6259

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6260
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !6262
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6263

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6264
  br label %kmalloc_index.exit.i, !dbg !6264

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6265
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !6267
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6268

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6269
  br label %kmalloc_index.exit.i, !dbg !6269

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6270
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !6272
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6273

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6274
  br label %kmalloc_index.exit.i, !dbg !6274

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6275
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !6277
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6278

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6279
  br label %kmalloc_index.exit.i, !dbg !6279

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6280
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !6282
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6283

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6284
  br label %kmalloc_index.exit.i, !dbg !6284

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6285
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !6287
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6288

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6289
  br label %kmalloc_index.exit.i, !dbg !6289

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6290
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !6292
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6293

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6294
  br label %kmalloc_index.exit.i, !dbg !6294

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6295
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !6297
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6298

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6299
  br label %kmalloc_index.exit.i, !dbg !6299

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6300
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !6302
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6303

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6304
  br label %kmalloc_index.exit.i, !dbg !6304

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6305
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !6307
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6308

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6309
  br label %kmalloc_index.exit.i, !dbg !6309

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6310
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !6312
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6313

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6314
  br label %kmalloc_index.exit.i, !dbg !6314

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6315
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !6317
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6318

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6319
  br label %kmalloc_index.exit.i, !dbg !6319

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6320
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !6322
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6323

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6324
  br label %kmalloc_index.exit.i, !dbg !6324

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6325, !srcloc !6328
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !6329, !srcloc !6332
  unreachable, !dbg !6333

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6334
  store i32 %59, i32* %index.i, align 4, !dbg !6335
  %60 = load i32, i32* %index.i, align 4, !dbg !6336
  %tobool.i = icmp ne i32 %60, 0, !dbg !6336
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6338

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6339
  br label %kmalloc.exit, !dbg !6339

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6340
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6341
  %and.i.i = and i32 %62, 17, !dbg !6341
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6341
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6341
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6341
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6341
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6343

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6344
  br label %kmalloc_type.exit.i, !dbg !6344

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6345
  %and2.i.i = and i32 %63, 1, !dbg !6346
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6345
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6345
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6345
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6347
  br label %kmalloc_type.exit.i, !dbg !6347

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6348
  %idxprom.i = zext i32 %65 to i64, !dbg !6349
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6349
  %66 = load i32, i32* %index.i, align 4, !dbg !6350
  %idxprom6.i = zext i32 %66 to i64, !dbg !6349
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6349
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6349
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6351
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6352
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6353
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6354
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !6355
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6355
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6355
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6355
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6355
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6097
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6356
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6357
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6358
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6359
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !6360
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6361
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6362
  store i8* %76, i8** %retval.i, align 8, !dbg !6363
  br label %kmalloc.exit, !dbg !6363

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6364
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6365
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !6366
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6366
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6366
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6366
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6366
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6367
  br label %kmalloc.exit, !dbg !6367

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6368
  store i8* %79, i8** %retval, align 8, !dbg !6369
  br label %return, !dbg !6369

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6370
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6371
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !6372
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6372
  %maskedptr = and i64 %ptrint, 7, !dbg !6372
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6372
  call void @llvm.assume(i1 %maskcond), !dbg !6372
  store i8* %call9, i8** %retval, align 8, !dbg !6373
  br label %return, !dbg !6373

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6374
  ret i8* %82, !dbg !6374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6375 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6381
  %tobool = trunc i8 %0 to i1, !dbg !6381
  %lnot = xor i1 %tobool, true, !dbg !6381
  %lnot1 = xor i1 %lnot, true, !dbg !6381
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6381
  %conv = sext i32 %lnot.ext to i64, !dbg !6381
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6381
  ret i1 %tobool2, !dbg !6382
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #4 !dbg !6383 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6387, metadata !DIExpression()), !dbg !6392
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6394, metadata !DIExpression()), !dbg !6395
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6396, metadata !DIExpression()), !dbg !6397
  %0 = load i64, i64* %size.addr, align 8, !dbg !6398
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6400
  br i1 %1, label %if.then, label %if.end447, !dbg !6401

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6402
  %tobool = icmp ne i64 %2, 0, !dbg !6402
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6405

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6407
  %cmp = icmp ult i64 %3, 4096, !dbg !6409
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6410

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub = sub i64 %4, 1, !dbg !6412
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6412
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6412

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub4 = sub i64 %6, 1, !dbg !6412
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6412
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6412

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub6 = sub i64 %8, 1, !dbg !6412
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6412
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6412

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6412

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub9 = sub i64 %9, 1, !dbg !6412
  %and = and i64 %sub9, -9223372036854775808, !dbg !6412
  %tobool10 = icmp ne i64 %and, 0, !dbg !6412
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6412

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6412

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub13 = sub i64 %10, 1, !dbg !6412
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6412
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6412
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6412

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6412

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub18 = sub i64 %11, 1, !dbg !6412
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6412
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6412
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6412

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6412

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub23 = sub i64 %12, 1, !dbg !6412
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6412
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6412
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6412

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6412

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub28 = sub i64 %13, 1, !dbg !6412
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6412
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6412
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6412

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6412

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub33 = sub i64 %14, 1, !dbg !6412
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6412
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6412
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6412

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6412

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub38 = sub i64 %15, 1, !dbg !6412
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6412
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6412
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6412

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6412

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub43 = sub i64 %16, 1, !dbg !6412
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6412
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6412
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6412

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6412

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub48 = sub i64 %17, 1, !dbg !6412
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6412
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6412
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6412

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6412

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub53 = sub i64 %18, 1, !dbg !6412
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6412
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6412
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6412

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6412

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub58 = sub i64 %19, 1, !dbg !6412
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6412
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6412
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6412

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6412

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub63 = sub i64 %20, 1, !dbg !6412
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6412
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6412
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6412

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6412

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub68 = sub i64 %21, 1, !dbg !6412
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6412
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6412
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6412

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6412

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub73 = sub i64 %22, 1, !dbg !6412
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6412
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6412
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6412

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6412

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub78 = sub i64 %23, 1, !dbg !6412
  %and79 = and i64 %sub78, 562949953421312, !dbg !6412
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6412
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6412

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6412

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub83 = sub i64 %24, 1, !dbg !6412
  %and84 = and i64 %sub83, 281474976710656, !dbg !6412
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6412
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6412

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6412

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub88 = sub i64 %25, 1, !dbg !6412
  %and89 = and i64 %sub88, 140737488355328, !dbg !6412
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6412
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6412

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6412

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub93 = sub i64 %26, 1, !dbg !6412
  %and94 = and i64 %sub93, 70368744177664, !dbg !6412
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6412
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6412

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6412

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub98 = sub i64 %27, 1, !dbg !6412
  %and99 = and i64 %sub98, 35184372088832, !dbg !6412
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6412
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6412

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6412

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub103 = sub i64 %28, 1, !dbg !6412
  %and104 = and i64 %sub103, 17592186044416, !dbg !6412
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6412
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6412

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6412

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub108 = sub i64 %29, 1, !dbg !6412
  %and109 = and i64 %sub108, 8796093022208, !dbg !6412
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6412
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6412

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6412

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub113 = sub i64 %30, 1, !dbg !6412
  %and114 = and i64 %sub113, 4398046511104, !dbg !6412
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6412
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6412

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6412

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub118 = sub i64 %31, 1, !dbg !6412
  %and119 = and i64 %sub118, 2199023255552, !dbg !6412
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6412
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6412

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6412

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub123 = sub i64 %32, 1, !dbg !6412
  %and124 = and i64 %sub123, 1099511627776, !dbg !6412
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6412
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6412

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6412

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub128 = sub i64 %33, 1, !dbg !6412
  %and129 = and i64 %sub128, 549755813888, !dbg !6412
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6412
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6412

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6412

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub133 = sub i64 %34, 1, !dbg !6412
  %and134 = and i64 %sub133, 274877906944, !dbg !6412
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6412
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6412

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6412

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub138 = sub i64 %35, 1, !dbg !6412
  %and139 = and i64 %sub138, 137438953472, !dbg !6412
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6412
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6412

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6412

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub143 = sub i64 %36, 1, !dbg !6412
  %and144 = and i64 %sub143, 68719476736, !dbg !6412
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6412
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6412

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6412

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub148 = sub i64 %37, 1, !dbg !6412
  %and149 = and i64 %sub148, 34359738368, !dbg !6412
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6412
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6412

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6412

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub153 = sub i64 %38, 1, !dbg !6412
  %and154 = and i64 %sub153, 17179869184, !dbg !6412
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6412
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6412

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6412

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub158 = sub i64 %39, 1, !dbg !6412
  %and159 = and i64 %sub158, 8589934592, !dbg !6412
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6412
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6412

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6412

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub163 = sub i64 %40, 1, !dbg !6412
  %and164 = and i64 %sub163, 4294967296, !dbg !6412
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6412
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6412

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6412

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub168 = sub i64 %41, 1, !dbg !6412
  %and169 = and i64 %sub168, 2147483648, !dbg !6412
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6412
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6412

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6412

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub173 = sub i64 %42, 1, !dbg !6412
  %and174 = and i64 %sub173, 1073741824, !dbg !6412
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6412
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6412

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6412

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub178 = sub i64 %43, 1, !dbg !6412
  %and179 = and i64 %sub178, 536870912, !dbg !6412
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6412
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6412

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6412

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub183 = sub i64 %44, 1, !dbg !6412
  %and184 = and i64 %sub183, 268435456, !dbg !6412
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6412
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6412

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6412

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub188 = sub i64 %45, 1, !dbg !6412
  %and189 = and i64 %sub188, 134217728, !dbg !6412
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6412
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6412

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6412

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub193 = sub i64 %46, 1, !dbg !6412
  %and194 = and i64 %sub193, 67108864, !dbg !6412
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6412
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6412

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6412

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub198 = sub i64 %47, 1, !dbg !6412
  %and199 = and i64 %sub198, 33554432, !dbg !6412
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6412
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6412

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6412

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub203 = sub i64 %48, 1, !dbg !6412
  %and204 = and i64 %sub203, 16777216, !dbg !6412
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6412
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6412

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6412

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub208 = sub i64 %49, 1, !dbg !6412
  %and209 = and i64 %sub208, 8388608, !dbg !6412
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6412
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6412

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6412

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub213 = sub i64 %50, 1, !dbg !6412
  %and214 = and i64 %sub213, 4194304, !dbg !6412
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6412
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6412

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6412

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub218 = sub i64 %51, 1, !dbg !6412
  %and219 = and i64 %sub218, 2097152, !dbg !6412
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6412
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6412

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6412

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub223 = sub i64 %52, 1, !dbg !6412
  %and224 = and i64 %sub223, 1048576, !dbg !6412
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6412
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6412

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6412

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub228 = sub i64 %53, 1, !dbg !6412
  %and229 = and i64 %sub228, 524288, !dbg !6412
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6412
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6412

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6412

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub233 = sub i64 %54, 1, !dbg !6412
  %and234 = and i64 %sub233, 262144, !dbg !6412
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6412
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6412

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6412

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub238 = sub i64 %55, 1, !dbg !6412
  %and239 = and i64 %sub238, 131072, !dbg !6412
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6412
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6412

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6412

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub243 = sub i64 %56, 1, !dbg !6412
  %and244 = and i64 %sub243, 65536, !dbg !6412
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6412
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6412

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6412

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub248 = sub i64 %57, 1, !dbg !6412
  %and249 = and i64 %sub248, 32768, !dbg !6412
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6412
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6412

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6412

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub253 = sub i64 %58, 1, !dbg !6412
  %and254 = and i64 %sub253, 16384, !dbg !6412
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6412
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6412

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6412

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub258 = sub i64 %59, 1, !dbg !6412
  %and259 = and i64 %sub258, 8192, !dbg !6412
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6412
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6412

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6412

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub263 = sub i64 %60, 1, !dbg !6412
  %and264 = and i64 %sub263, 4096, !dbg !6412
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6412
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6412

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6412

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub268 = sub i64 %61, 1, !dbg !6412
  %and269 = and i64 %sub268, 2048, !dbg !6412
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6412
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6412

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6412

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub273 = sub i64 %62, 1, !dbg !6412
  %and274 = and i64 %sub273, 1024, !dbg !6412
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6412
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6412

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6412

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub278 = sub i64 %63, 1, !dbg !6412
  %and279 = and i64 %sub278, 512, !dbg !6412
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6412
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6412

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6412

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub283 = sub i64 %64, 1, !dbg !6412
  %and284 = and i64 %sub283, 256, !dbg !6412
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6412
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6412

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6412

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub288 = sub i64 %65, 1, !dbg !6412
  %and289 = and i64 %sub288, 128, !dbg !6412
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6412
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6412

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6412

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub293 = sub i64 %66, 1, !dbg !6412
  %and294 = and i64 %sub293, 64, !dbg !6412
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6412
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6412

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6412

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub298 = sub i64 %67, 1, !dbg !6412
  %and299 = and i64 %sub298, 32, !dbg !6412
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6412
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6412

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6412

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub303 = sub i64 %68, 1, !dbg !6412
  %and304 = and i64 %sub303, 16, !dbg !6412
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6412
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6412

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6412

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub308 = sub i64 %69, 1, !dbg !6412
  %and309 = and i64 %sub308, 8, !dbg !6412
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6412
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6412

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6412

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub313 = sub i64 %70, 1, !dbg !6412
  %and314 = and i64 %sub313, 4, !dbg !6412
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6412
  %71 = zext i1 %tobool315 to i64, !dbg !6412
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6412
  br label %cond.end, !dbg !6412

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6412
  br label %cond.end317, !dbg !6412

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6412
  br label %cond.end319, !dbg !6412

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6412
  br label %cond.end321, !dbg !6412

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6412
  br label %cond.end323, !dbg !6412

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6412
  br label %cond.end325, !dbg !6412

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6412
  br label %cond.end327, !dbg !6412

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6412
  br label %cond.end329, !dbg !6412

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6412
  br label %cond.end331, !dbg !6412

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6412
  br label %cond.end333, !dbg !6412

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6412
  br label %cond.end335, !dbg !6412

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6412
  br label %cond.end337, !dbg !6412

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6412
  br label %cond.end339, !dbg !6412

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6412
  br label %cond.end341, !dbg !6412

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6412
  br label %cond.end343, !dbg !6412

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6412
  br label %cond.end345, !dbg !6412

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6412
  br label %cond.end347, !dbg !6412

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6412
  br label %cond.end349, !dbg !6412

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6412
  br label %cond.end351, !dbg !6412

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6412
  br label %cond.end353, !dbg !6412

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6412
  br label %cond.end355, !dbg !6412

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6412
  br label %cond.end357, !dbg !6412

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6412
  br label %cond.end359, !dbg !6412

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6412
  br label %cond.end361, !dbg !6412

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6412
  br label %cond.end363, !dbg !6412

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6412
  br label %cond.end365, !dbg !6412

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6412
  br label %cond.end367, !dbg !6412

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6412
  br label %cond.end369, !dbg !6412

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6412
  br label %cond.end371, !dbg !6412

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6412
  br label %cond.end373, !dbg !6412

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6412
  br label %cond.end375, !dbg !6412

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6412
  br label %cond.end377, !dbg !6412

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6412
  br label %cond.end379, !dbg !6412

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6412
  br label %cond.end381, !dbg !6412

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6412
  br label %cond.end383, !dbg !6412

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6412
  br label %cond.end385, !dbg !6412

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6412
  br label %cond.end387, !dbg !6412

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6412
  br label %cond.end389, !dbg !6412

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6412
  br label %cond.end391, !dbg !6412

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6412
  br label %cond.end393, !dbg !6412

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6412
  br label %cond.end395, !dbg !6412

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6412
  br label %cond.end397, !dbg !6412

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6412
  br label %cond.end399, !dbg !6412

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6412
  br label %cond.end401, !dbg !6412

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6412
  br label %cond.end403, !dbg !6412

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6412
  br label %cond.end405, !dbg !6412

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6412
  br label %cond.end407, !dbg !6412

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6412
  br label %cond.end409, !dbg !6412

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6412
  br label %cond.end411, !dbg !6412

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6412
  br label %cond.end413, !dbg !6412

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6412
  br label %cond.end415, !dbg !6412

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6412
  br label %cond.end417, !dbg !6412

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6412
  br label %cond.end419, !dbg !6412

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6412
  br label %cond.end421, !dbg !6412

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6412
  br label %cond.end423, !dbg !6412

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6412
  br label %cond.end425, !dbg !6412

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6412
  br label %cond.end427, !dbg !6412

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6412
  br label %cond.end429, !dbg !6412

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6412
  br label %cond.end431, !dbg !6412

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6412
  br label %cond.end433, !dbg !6412

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6412
  br label %cond.end435, !dbg !6412

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6412
  br label %cond.end437, !dbg !6412

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6412
  br label %cond.end440, !dbg !6412

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6412

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6412
  br label %cond.end444, !dbg !6412

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6412
  %sub443 = sub i64 %72, 1, !dbg !6412
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !6412
  br label %cond.end444, !dbg !6412

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6412
  %sub446 = sub i32 %cond445, 12, !dbg !6413
  %add = add i32 %sub446, 1, !dbg !6414
  store i32 %add, i32* %retval, align 4, !dbg !6415
  br label %return, !dbg !6415

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6416
  %dec = add i64 %73, -1, !dbg !6416
  store i64 %dec, i64* %size.addr, align 8, !dbg !6416
  %74 = load i64, i64* %size.addr, align 8, !dbg !6417
  %shr = lshr i64 %74, 12, !dbg !6417
  store i64 %shr, i64* %size.addr, align 8, !dbg !6417
  %75 = load i64, i64* %size.addr, align 8, !dbg !6418
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6395
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6419
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6420
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6419, !srcloc !6421
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6419
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6422
  %add.i = add i32 %79, 1, !dbg !6423
  store i32 %add.i, i32* %retval, align 4, !dbg !6424
  br label %return, !dbg !6424

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6425
  ret i32 %80, !dbg !6425
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #4 !dbg !6426 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6387, metadata !DIExpression()), !dbg !6430
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6394, metadata !DIExpression()), !dbg !6432
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6433, metadata !DIExpression()), !dbg !6434
  %0 = load i64, i64* %n.addr, align 8, !dbg !6435
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6432
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6436
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6437
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6436, !srcloc !6421
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6436
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6438
  %add.i = add i32 %4, 1, !dbg !6439
  %sub = sub i32 %add.i, 1, !dbg !6440
  ret i32 %sub, !dbg !6441
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6442 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6454
  ret i8* %0, !dbg !6455
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3903, !3904, !3905, !3906}
!llvm.ident = !{!3907}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "of_busses", scope: !2, file: !3, line: 373, type: !3874, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !134, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/of/address.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105, !110}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !94, line: 5, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 13, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/logic_pio.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "LOGIC_PIO_INDIRECT", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "LOGIC_PIO_CPU_MMIO", value: 1, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !111, line: 305, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!117 = !{!118, !119, !121, !123, !124, !127, !131, !132, !133}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !120, line: 27, baseType: !7)
!120 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !122, line: 32, baseType: !119)
!122 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !125, line: 158, baseType: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !125, line: 153, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !128, line: 23, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !120, line: 31, baseType: !130)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 148, baseType: !7)
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !{!0, !135}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__print_once", scope: !137, file: !3, line: 137, type: !140, isLocal: true, isDefinition: true)
!137 = distinct !DISubprogram(name: "of_node_is_pcie", scope: !3, file: !3, line: 132, type: !138, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 30, baseType: !141)
!141 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !144, line: 51, size: 1344, elements: !145)
!144 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !150, !153, !154, !3858, !3867, !3868, !3869, !3870, !3871, !3872, !3873}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 52, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !143, file: !144, line: 53, baseType: !151, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !144, line: 28, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !128, line: 21, baseType: !119)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !143, file: !144, line: 54, baseType: !147, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !143, file: !144, line: 55, baseType: !155, size: 192, offset: 192)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !156, line: 17, size: 192, elements: !157)
!156 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !160, !3857}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !155, file: !156, line: 18, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !155, file: !156, line: 19, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !156, line: 110, size: 1152, elements: !164)
!164 = !{!165, !169, !173, !179, !3799, !3803, !3807, !3812, !3816, !3817, !3821, !3825, !3829, !3840, !3841, !3842, !3843, !3853}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !163, file: !156, line: 111, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!159, !159}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !163, file: !156, line: 112, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !159}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !163, file: !156, line: 113, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!140, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !163, file: !156, line: 114, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !177, !185}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !188)
!188 = !{!189, !3337, !3339, !3342, !3343, !3394, !3485, !3486, !3487, !3488, !3489, !3498, !3603, !3616, !3619, !3620, !3725, !3727, !3728, !3729, !3739, !3745, !3746, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3787, !3788, !3789, !3792, !3795, !3796, !3797, !3798}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !73, line: 462, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !200, !202, !262, !3188, !3327, !3332, !3333, !3334, !3335, !3336}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !147, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 66, baseType: !195, size: 128, offset: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 178, size: 128, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !125, line: 179, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !125, line: 179, baseType: !198, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 67, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !191, line: 68, baseType: !203, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !191, line: 192, size: 704, elements: !205)
!205 = !{!206, !207, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !204, file: !191, line: 193, baseType: !195, size: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !204, file: !191, line: 194, baseType: !208, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !209, line: 83, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !209, line: 71, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !209, line: 72, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !209, line: 72, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !213, file: !209, line: 73, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !209, line: 20, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !216, file: !209, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !220, line: 25, baseType: !221)
!220 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 25, elements: !222)
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !204, file: !191, line: 195, baseType: !190, size: 512, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !204, file: !191, line: 196, baseType: !225, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !191, line: 156, size: 192, elements: !228)
!228 = !{!229, !234, !239}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !227, file: !191, line: 157, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!132, !203, !201}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !191, line: 158, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!147, !203, !201}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !227, file: !191, line: 159, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!132, !203, !201, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 148, size: 20736, elements: !246)
!246 = !{!247, !252, !256, !257, !261}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !245, file: !191, line: 149, baseType: !248, size: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !245, file: !191, line: 150, baseType: !253, size: 4096, offset: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 4096, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !245, file: !191, line: 151, baseType: !132, size: 32, offset: 4288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !191, line: 152, baseType: !258, size: 16384, offset: 4320)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !245, file: !191, line: 153, baseType: !132, size: 32, offset: 20704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 138, size: 448, elements: !265)
!265 = !{!266, !270, !299, !301, !3150, !3178, !3182}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !264, file: !191, line: 139, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !201}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !264, file: !191, line: 140, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !274, line: 230, size: 128, elements: !275)
!274 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !292}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !273, file: !274, line: 231, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !201, !285, !249}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 60, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !282, line: 73, baseType: !283)
!282 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !282, line: 15, baseType: !284)
!284 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !274, line: 30, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !274, line: 31, baseType: !147, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !286, file: !274, line: 32, baseType: !290, size: 16, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 19, baseType: !291)
!291 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !273, file: !274, line: 232, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!280, !201, !285, !147, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 55, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !282, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !282, line: 16, baseType: !123)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !264, file: !191, line: 141, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !264, file: !191, line: 142, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !274, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !3147, !3148}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !274, line: 85, baseType: !147, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !274, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!290, !201, !285, !132}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !274, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!290, !201, !316, !132}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !274, line: 168, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !3142, !3143}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !274, line: 169, baseType: !286, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !274, line: 170, baseType: !296, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !274, line: 171, baseType: !118, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !274, line: 172, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!280, !326, !201, !316, !249, !496, !296}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !328)
!328 = !{!329, !347, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3125, !3126, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !327, file: !44, line: 920, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !44, line: 917, size: 128, elements: !331)
!331 = !{!332, !338}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !330, file: !44, line: 918, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !334, line: 58, size: 64, elements: !335)
!334 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !334, line: 59, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !330, file: !44, line: 919, baseType: !339, size: 128, align: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 216, size: 128, align: 64, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !125, line: 217, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !339, file: !125, line: 218, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !342}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !327, file: !44, line: 921, baseType: !348, size: 128, offset: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !349, line: 8, size: 128, elements: !350)
!349 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !348, file: !349, line: 9, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !354, line: 18, flags: DIFlagFwdDecl)
!354 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !348, file: !349, line: 10, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !354, line: 89, size: 1536, elements: !358)
!358 = !{!359, !360, !370, !378, !379, !395, !3075, !3077, !3089, !3090, !3091, !3092, !3093, !3099, !3100, !3101}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !357, file: !354, line: 91, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !357, file: !354, line: 92, baseType: !361, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !362, line: 277, baseType: !363)
!362 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !362, line: 277, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !363, file: !362, line: 277, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !362, line: 70, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !362, line: 65, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !367, file: !362, line: 66, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !357, file: !354, line: 93, baseType: !371, size: 128, offset: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !372, line: 38, size: 128, elements: !373)
!372 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !372, line: 39, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !371, file: !372, line: 39, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !357, file: !354, line: 94, baseType: !356, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !357, file: !354, line: 95, baseType: !380, size: 128, offset: 256)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !354, line: 47, size: 128, elements: !381)
!381 = !{!382, !391}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !354, line: 48, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !354, line: 48, size: 64, elements: !384)
!384 = !{!385, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !354, line: 49, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !354, line: 49, size: 64, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !386, file: !354, line: 50, baseType: !152, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !386, file: !354, line: 50, baseType: !152, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !383, file: !354, line: 52, baseType: !127, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !354, line: 54, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !357, file: !354, line: 96, baseType: !396, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !398)
!398 = !{!399, !400, !401, !409, !416, !417, !563, !2787, !2788, !2789, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !3051, !3059, !3060, !3061, !3071, !3072, !3073, !3074}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !397, file: !44, line: 611, baseType: !290, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !397, file: !44, line: 612, baseType: !291, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !397, file: !44, line: 613, baseType: !402, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !403, line: 23, baseType: !404)
!403 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 21, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !403, line: 22, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 32, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !282, line: 49, baseType: !7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !397, file: !44, line: 614, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !403, line: 28, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 26, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !403, line: 27, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 33, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !282, line: 50, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !397, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !397, file: !44, line: 622, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !421)
!421 = !{!422, !426, !439, !443, !449, !453, !457, !461, !465, !469, !473, !474, !480, !484, !510, !539, !543, !549, !554, !558, !559}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !420, file: !44, line: 1865, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!356, !396, !356, !7}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !420, file: !44, line: 1866, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!147, !356, !396, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !432, line: 10, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !431, file: !432, line: 11, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !118}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !431, file: !432, line: 12, baseType: !118, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !420, file: !44, line: 1867, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!132, !396, !132}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !420, file: !44, line: 1868, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !396, !132}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !420, file: !44, line: 1870, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!132, !356, !249, !132}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !420, file: !44, line: 1872, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!132, !396, !356, !290, !140}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !420, file: !44, line: 1873, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!132, !356, !396, !356}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !420, file: !44, line: 1874, baseType: !462, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!132, !396, !356}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !420, file: !44, line: 1875, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!132, !396, !356, !147}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !420, file: !44, line: 1876, baseType: !470, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!132, !396, !356, !290}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !420, file: !44, line: 1877, baseType: !462, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !420, file: !44, line: 1878, baseType: !475, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!132, !396, !356, !290, !478}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 16, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 13, baseType: !152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !420, file: !44, line: 1879, baseType: !481, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!132, !396, !356, !396, !356, !7}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !420, file: !44, line: 1881, baseType: !485, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!132, !356, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !499, !507, !508, !509}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !489, file: !44, line: 220, baseType: !7, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !489, file: !44, line: 221, baseType: !290, size: 16, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !489, file: !44, line: 222, baseType: !402, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !489, file: !44, line: 223, baseType: !410, size: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !489, file: !44, line: 224, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 46, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !282, line: 88, baseType: !498)
!498 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !489, file: !44, line: 225, baseType: !500, size: 128, offset: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !501, line: 13, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !500, file: !501, line: 14, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !501, line: 8, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !120, line: 30, baseType: !498)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !500, file: !501, line: 15, baseType: !284, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !489, file: !44, line: 226, baseType: !500, size: 128, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !489, file: !44, line: 227, baseType: !500, size: 128, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !489, file: !44, line: 234, baseType: !326, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !420, file: !44, line: 1882, baseType: !511, size: 64, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!132, !514, !516, !152, !7}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !518, line: 22, size: 1152, elements: !519)
!518 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !521, !522, !523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !517, file: !518, line: 23, baseType: !152, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !517, file: !518, line: 24, baseType: !290, size: 16, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !517, file: !518, line: 25, baseType: !7, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !517, file: !518, line: 26, baseType: !524, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 104, baseType: !152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !517, file: !518, line: 27, baseType: !127, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !517, file: !518, line: 28, baseType: !127, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !517, file: !518, line: 37, baseType: !127, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !517, file: !518, line: 38, baseType: !478, size: 32, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !517, file: !518, line: 39, baseType: !478, size: 32, offset: 352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !517, file: !518, line: 40, baseType: !402, size: 32, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !517, file: !518, line: 41, baseType: !410, size: 32, offset: 416)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !518, line: 42, baseType: !496, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !517, file: !518, line: 43, baseType: !500, size: 128, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !517, file: !518, line: 44, baseType: !500, size: 128, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !517, file: !518, line: 45, baseType: !500, size: 128, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !517, file: !518, line: 46, baseType: !500, size: 128, offset: 896)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !517, file: !518, line: 47, baseType: !127, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !517, file: !518, line: 48, baseType: !127, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !420, file: !44, line: 1883, baseType: !540, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!280, !356, !249, !296}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !420, file: !44, line: 1884, baseType: !544, size: 64, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!132, !396, !547, !127, !127}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !420, file: !44, line: 1886, baseType: !550, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!132, !396, !553, !132}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !420, file: !44, line: 1887, baseType: !555, size: 64, offset: 1152)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!132, !396, !356, !326, !7, !290}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !420, file: !44, line: 1890, baseType: !470, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !420, file: !44, line: 1891, baseType: !560, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!132, !396, !447, !132}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !397, file: !44, line: 623, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !622, !2394, !2476, !2559, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2575, !2579, !2580, !2583, !2584, !2587, !2588, !2589, !2630, !2657, !2658, !2659, !2660, !2661, !2662, !2665, !2667, !2674, !2675, !2677, !2678, !2679, !2738, !2739, !2754, !2755, !2756, !2757, !2758, !2761, !2762, !2763, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !565, file: !44, line: 1417, baseType: !195, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !565, file: !44, line: 1418, baseType: !478, size: 32, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !565, file: !44, line: 1419, baseType: !394, size: 8, offset: 160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !565, file: !44, line: 1420, baseType: !123, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !565, file: !44, line: 1421, baseType: !496, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !565, file: !44, line: 1422, baseType: !573, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !575)
!575 = !{!576, !577, !578, !585, !589, !593, !597, !601, !602, !612, !615, !616, !617, !619, !620, !621}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !574, file: !44, line: 2229, baseType: !147, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !574, file: !44, line: 2230, baseType: !132, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !574, file: !44, line: 2238, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!132, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !584, line: 28, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !574, file: !44, line: 2239, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !574, file: !44, line: 2240, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!356, !573, !132, !147, !118}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !574, file: !44, line: 2242, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !564}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !574, file: !44, line: 2243, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !600, line: 76, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !44, line: 2244, baseType: !573, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !574, file: !44, line: 2245, baseType: !603, size: 64, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 182, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !603, file: !125, line: 183, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 186, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !125, line: 187, baseType: !606, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !607, file: !125, line: 187, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !574, file: !44, line: 2247, baseType: !613, offset: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !614, line: 187, elements: !222)
!614 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !574, file: !44, line: 2248, baseType: !613, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !574, file: !44, line: 2249, baseType: !613, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !574, file: !44, line: 2250, baseType: !618, offset: 576)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !250)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !574, file: !44, line: 2252, baseType: !613, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !574, file: !44, line: 2253, baseType: !613, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !574, file: !44, line: 2254, baseType: !613, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !565, file: !44, line: 1423, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !626)
!626 = !{!627, !631, !635, !636, !640, !646, !650, !651, !652, !656, !660, !661, !662, !663, !669, !674, !675, !682, !683, !684, !685, !2378, !2393}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !625, file: !44, line: 1936, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!396, !564}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !625, file: !44, line: 1937, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !396}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !625, file: !44, line: 1938, baseType: !632, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !625, file: !44, line: 1940, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !396, !132}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !625, file: !44, line: 1941, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!132, !396, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !625, file: !44, line: 1942, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!132, !396}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !625, file: !44, line: 1943, baseType: !632, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !625, file: !44, line: 1944, baseType: !594, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !625, file: !44, line: 1945, baseType: !653, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!132, !564, !132}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !625, file: !44, line: 1946, baseType: !657, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!132, !564}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !625, file: !44, line: 1947, baseType: !657, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !625, file: !44, line: 1948, baseType: !657, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !625, file: !44, line: 1949, baseType: !657, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !625, file: !44, line: 1950, baseType: !664, size: 64, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!132, !356, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !625, file: !44, line: 1951, baseType: !670, size: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!132, !564, !673, !249}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !625, file: !44, line: 1952, baseType: !594, size: 64, offset: 960)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !625, file: !44, line: 1954, baseType: !676, size: 64, offset: 1024)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!132, !679, !356}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !681, line: 539, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !625, file: !44, line: 1955, baseType: !676, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !625, file: !44, line: 1956, baseType: !676, size: 64, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !625, file: !44, line: 1957, baseType: !676, size: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !625, file: !44, line: 1963, baseType: !686, size: 64, offset: 1280)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!132, !564, !689, !131}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !691, line: 68, size: 512, align: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !2370, !2377}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !691, line: 69, baseType: !123, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 77, baseType: !695, size: 320, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 77, size: 320, elements: !696)
!696 = !{!697, !884, !889, !917, !925, !931, !2301, !2369}
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 78, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 78, size: 320, elements: !699)
!699 = !{!700, !701, !882, !883}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !698, file: !691, line: 84, baseType: !195, size: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !698, file: !691, line: 86, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !704)
!704 = !{!705, !706, !713, !714, !719, !734, !750, !751, !752, !753, !875, !876, !879, !880, !881}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !703, file: !44, line: 452, baseType: !396, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !703, file: !44, line: 453, baseType: !707, size: 128, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !708, line: 292, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !707, file: !708, line: 293, baseType: !208)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !707, file: !708, line: 295, baseType: !131, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !707, file: !708, line: 296, baseType: !118, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !703, file: !44, line: 454, baseType: !131, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !703, file: !44, line: 455, baseType: !715, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 168, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 166, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !716, file: !125, line: 167, baseType: !132, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !703, file: !44, line: 460, baseType: !720, size: 128, offset: 256)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !721, line: 125, size: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !733}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !720, file: !721, line: 126, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !721, line: 31, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !724, file: !721, line: 32, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !721, line: 24, size: 192, align: 64, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !728, file: !721, line: 25, baseType: !123, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !728, file: !721, line: 26, baseType: !727, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !728, file: !721, line: 27, baseType: !727, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !720, file: !721, line: 127, baseType: !727, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !703, file: !44, line: 461, baseType: !735, size: 256, offset: 384)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !736, line: 35, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !746, !747, !749}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !735, file: !736, line: 36, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !740, line: 13, baseType: !741)
!740 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 175, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 173, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !742, file: !125, line: 174, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !128, line: 22, baseType: !505)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !735, file: !736, line: 42, baseType: !739, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !735, file: !736, line: 46, baseType: !748, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 29, baseType: !216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !735, file: !736, line: 47, baseType: !195, size: 128, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !703, file: !44, line: 462, baseType: !123, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !703, file: !44, line: 463, baseType: !123, size: 64, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !703, file: !44, line: 464, baseType: !123, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !703, file: !44, line: 465, baseType: !754, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !757)
!757 = !{!758, !762, !766, !770, !774, !778, !784, !790, !794, !799, !803, !807, !811, !839, !843, !849, !850, !851, !855, !860, !864, !871}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !756, file: !44, line: 368, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!132, !689, !644}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !756, file: !44, line: 369, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!132, !326, !689}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !756, file: !44, line: 372, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!132, !702, !644}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !756, file: !44, line: 375, baseType: !771, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!132, !689}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !756, file: !44, line: 381, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!132, !326, !702, !198, !7}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !756, file: !44, line: 383, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !756, file: !44, line: 385, baseType: !785, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!132, !326, !702, !496, !7, !7, !788, !789}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !756, file: !44, line: 388, baseType: !791, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!132, !326, !702, !496, !7, !7, !689, !118}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !756, file: !44, line: 393, baseType: !795, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!798, !702, !798}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 125, baseType: !127)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !756, file: !44, line: 394, baseType: !800, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !689, !7, !7}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !756, file: !44, line: 395, baseType: !804, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!132, !689, !131}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !756, file: !44, line: 396, baseType: !808, size: 64, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !689}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !756, file: !44, line: 397, baseType: !812, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!280, !815, !837}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !817)
!817 = !{!818, !819, !820, !824, !825, !826, !829, !830}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !816, file: !44, line: 321, baseType: !326, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !816, file: !44, line: 326, baseType: !496, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !816, file: !44, line: 327, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !815, !284, !284}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !816, file: !44, line: 328, baseType: !118, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !816, file: !44, line: 329, baseType: !132, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !816, file: !44, line: 330, baseType: !827, size: 16, offset: 288)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !128, line: 19, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !120, line: 24, baseType: !291)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !816, file: !44, line: 331, baseType: !827, size: 16, offset: 304)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !44, line: 332, baseType: !831, size: 64, offset: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !44, line: 332, size: 64, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !831, file: !44, line: 333, baseType: !7, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !831, file: !44, line: 334, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !756, file: !44, line: 402, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!132, !702, !689, !689, !5}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !756, file: !44, line: 404, baseType: !844, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!140, !689, !847}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !848, line: 305, baseType: !7)
!848 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!849 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !756, file: !44, line: 405, baseType: !808, size: 64, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !756, file: !44, line: 406, baseType: !771, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !756, file: !44, line: 407, baseType: !852, size: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!132, !689, !123, !123}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !756, file: !44, line: 409, baseType: !856, size: 64, offset: 1152)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !689, !859, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !756, file: !44, line: 410, baseType: !861, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!132, !702, !689}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !756, file: !44, line: 413, baseType: !865, size: 64, offset: 1280)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!132, !868, !326, !870}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !756, file: !44, line: 415, baseType: !872, size: 64, offset: 1344)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !326}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !44, line: 466, baseType: !123, size: 64, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !703, file: !44, line: 467, baseType: !877, size: 32, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !878, line: 8, baseType: !152)
!878 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !703, file: !44, line: 468, baseType: !208, offset: 992)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !703, file: !44, line: 469, baseType: !195, size: 128, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !703, file: !44, line: 470, baseType: !118, size: 64, offset: 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !698, file: !691, line: 87, baseType: !123, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !698, file: !691, line: 94, baseType: !123, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 96, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 96, size: 64, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !885, file: !691, line: 101, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !125, line: 143, baseType: !127)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 103, baseType: !890, size: 320)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 103, size: 320, elements: !891)
!891 = !{!892, !902, !905, !906}
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !691, line: 104, baseType: !893, size: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !691, line: 104, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !893, file: !691, line: 105, baseType: !195, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !691, line: 106, baseType: !897, size: 128)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !691, line: 106, size: 128, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !691, line: 107, baseType: !689, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !897, file: !691, line: 109, baseType: !132, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !897, file: !691, line: 110, baseType: !132, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !890, file: !691, line: 117, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !691, line: 117, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !890, file: !691, line: 119, baseType: !118, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !691, line: 120, baseType: !907, size: 64, offset: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !691, line: 120, size: 64, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !907, file: !691, line: 121, baseType: !118, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !907, file: !691, line: 122, baseType: !123, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !691, line: 123, baseType: !912, size: 32)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !691, line: 123, size: 32, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !912, file: !691, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !912, file: !691, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !912, file: !691, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 130, baseType: !918, size: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 130, size: 192, elements: !919)
!919 = !{!920, !921, !922, !923, !924}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !918, file: !691, line: 131, baseType: !123, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !918, file: !691, line: 134, baseType: !394, size: 8, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !918, file: !691, line: 135, baseType: !394, size: 8, offset: 72)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !918, file: !691, line: 136, baseType: !715, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !918, file: !691, line: 137, baseType: !7, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 139, baseType: !926, size: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 139, size: 256, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !926, file: !691, line: 140, baseType: !123, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !926, file: !691, line: 141, baseType: !715, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !926, file: !691, line: 143, baseType: !195, size: 128, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 145, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 145, size: 256, elements: !933)
!933 = !{!934, !935, !937, !938, !2300}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !932, file: !691, line: 146, baseType: !123, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !932, file: !691, line: 147, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !681, line: 509, baseType: !689)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !932, file: !691, line: 148, baseType: !123, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !691, line: 149, baseType: !939, size: 64, offset: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !691, line: 149, size: 64, elements: !940)
!940 = !{!941, !2299}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !939, file: !691, line: 150, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !691, line: 388, size: 7296, elements: !944)
!944 = !{!945, !2295}
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !691, line: 389, baseType: !946, size: 7296)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !691, line: 389, size: 7296, elements: !947)
!947 = !{!948, !1066, !1067, !1068, !1072, !1073, !1074, !1075, !1076, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1117, !1125, !1128, !1174, !1175, !2279, !2280, !2283, !2284, !2285, !2288, !2289, !2290, !2293, !2294}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !946, file: !691, line: 390, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !691, line: 305, size: 1472, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !966, !967, !972, !973, !976, !1060, !1061, !1062, !1063, !1064}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !950, file: !691, line: 308, baseType: !123, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !950, file: !691, line: 309, baseType: !123, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !950, file: !691, line: 313, baseType: !949, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !950, file: !691, line: 313, baseType: !949, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !950, file: !691, line: 315, baseType: !728, size: 192, align: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !950, file: !691, line: 323, baseType: !123, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !950, file: !691, line: 327, baseType: !942, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !950, file: !691, line: 333, baseType: !960, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !681, line: 284, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !681, line: 284, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !961, file: !681, line: 284, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !965, line: 19, baseType: !123)
!965 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !950, file: !691, line: 334, baseType: !123, size: 64, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !950, file: !691, line: 343, baseType: !968, size: 256, offset: 704)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !691, line: 340, size: 256, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !968, file: !691, line: 341, baseType: !728, size: 192, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !968, file: !691, line: 342, baseType: !123, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !950, file: !691, line: 351, baseType: !195, size: 128, offset: 960)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !950, file: !691, line: 353, baseType: !974, size: 64, offset: 1088)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !691, line: 353, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !950, file: !691, line: 356, baseType: !977, size: 64, offset: 1152)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !980)
!980 = !{!981, !985, !986, !990, !994, !1034, !1038, !1042, !1046, !1047, !1048, !1052, !1056}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !979, file: !14, line: 558, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !949}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !979, file: !14, line: 559, baseType: !982, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !979, file: !14, line: 560, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!132, !949, !123}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !979, file: !14, line: 561, baseType: !991, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!132, !949}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !979, file: !14, line: 562, baseType: !995, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !691, line: 682, baseType: !7)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1014, !1021, !1027, !1028, !1029, !1031, !1033}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1000, file: !14, line: 509, baseType: !949, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1000, file: !14, line: 511, baseType: !131, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1000, file: !14, line: 512, baseType: !123, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1000, file: !14, line: 513, baseType: !123, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1000, file: !14, line: 514, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !681, line: 385, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 385, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1010, file: !681, line: 385, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !965, line: 15, baseType: !123)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1000, file: !14, line: 516, baseType: !1015, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !681, line: 359, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 359, size: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1017, file: !681, line: 359, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !965, line: 16, baseType: !123)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1000, file: !14, line: 519, baseType: !1022, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !965, line: 21, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !965, line: 21, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1023, file: !965, line: 21, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !965, line: 14, baseType: !123)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1000, file: !14, line: 521, baseType: !689, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1000, file: !14, line: 522, baseType: !689, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1000, file: !14, line: 528, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1000, file: !14, line: 532, baseType: !1032, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1000, file: !14, line: 536, baseType: !936, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !979, file: !14, line: 563, baseType: !1035, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!998, !999, !13}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !979, file: !14, line: 565, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !999, !123, !123}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !979, file: !14, line: 567, baseType: !1043, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!123, !949}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !979, file: !14, line: 571, baseType: !995, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !979, file: !14, line: 574, baseType: !995, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !979, file: !14, line: 579, baseType: !1049, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!132, !949, !123, !118, !132, !132}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !979, file: !14, line: 585, baseType: !1053, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!147, !949}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !979, file: !14, line: 615, baseType: !1057, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!689, !949, !123}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !950, file: !691, line: 359, baseType: !123, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !950, file: !691, line: 361, baseType: !326, size: 64, offset: 1280)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !950, file: !691, line: 362, baseType: !118, size: 64, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !950, file: !691, line: 365, baseType: !739, size: 64, offset: 1408)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !950, file: !691, line: 373, baseType: !1065, offset: 1472)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !691, line: 296, elements: !222)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !946, file: !691, line: 391, baseType: !724, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !946, file: !691, line: 392, baseType: !127, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !946, file: !691, line: 394, baseType: !1069, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!123, !326, !123, !123, !123, !123}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !946, file: !691, line: 398, baseType: !123, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !946, file: !691, line: 399, baseType: !123, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !946, file: !691, line: 405, baseType: !123, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !946, file: !691, line: 406, baseType: !123, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !946, file: !691, line: 407, baseType: !1077, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !681, line: 286, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 286, size: 64, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1079, file: !681, line: 286, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !965, line: 18, baseType: !123)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !946, file: !691, line: 416, baseType: !715, size: 32, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !946, file: !691, line: 428, baseType: !715, size: 32, offset: 608)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !946, file: !691, line: 437, baseType: !715, size: 32, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !946, file: !691, line: 447, baseType: !715, size: 32, offset: 672)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !946, file: !691, line: 450, baseType: !739, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !946, file: !691, line: 452, baseType: !132, size: 32, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !946, file: !691, line: 454, baseType: !208, offset: 800)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !946, file: !691, line: 457, baseType: !735, size: 256, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !946, file: !691, line: 459, baseType: !195, size: 128, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !946, file: !691, line: 466, baseType: !123, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !946, file: !691, line: 467, baseType: !123, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !946, file: !691, line: 469, baseType: !123, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !946, file: !691, line: 470, baseType: !123, size: 64, offset: 1408)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !946, file: !691, line: 471, baseType: !741, size: 64, offset: 1472)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !946, file: !691, line: 472, baseType: !123, size: 64, offset: 1536)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !946, file: !691, line: 473, baseType: !123, size: 64, offset: 1600)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !946, file: !691, line: 474, baseType: !123, size: 64, offset: 1664)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !946, file: !691, line: 475, baseType: !123, size: 64, offset: 1728)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !946, file: !691, line: 477, baseType: !208, offset: 1792)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !946, file: !691, line: 478, baseType: !123, size: 64, offset: 1792)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !946, file: !691, line: 478, baseType: !123, size: 64, offset: 1856)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !946, file: !691, line: 478, baseType: !123, size: 64, offset: 1920)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !946, file: !691, line: 478, baseType: !123, size: 64, offset: 1984)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !946, file: !691, line: 479, baseType: !123, size: 64, offset: 2048)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !946, file: !691, line: 479, baseType: !123, size: 64, offset: 2112)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !946, file: !691, line: 479, baseType: !123, size: 64, offset: 2176)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !946, file: !691, line: 480, baseType: !123, size: 64, offset: 2240)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !946, file: !691, line: 480, baseType: !123, size: 64, offset: 2304)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !946, file: !691, line: 480, baseType: !123, size: 64, offset: 2368)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !946, file: !691, line: 480, baseType: !123, size: 64, offset: 2432)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !946, file: !691, line: 482, baseType: !1114, size: 2816, offset: 2496)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2816, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 44)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !946, file: !691, line: 488, baseType: !1118, size: 256, offset: 5312)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1119, line: 60, size: 256, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1118, file: !1119, line: 61, baseType: !1122, size: 256)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 256, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 4)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !946, file: !691, line: 490, baseType: !1126, size: 64, offset: 5568)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !691, line: 490, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !946, file: !691, line: 493, baseType: !1129, size: 896, offset: 5632)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1130, line: 53, baseType: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1130, line: 13, size: 896, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1139, !1140, !1147, !1148, !1168, !1169, !1170}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1131, file: !1130, line: 18, baseType: !127, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1131, file: !1130, line: 28, baseType: !741, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1131, file: !1130, line: 31, baseType: !735, size: 256, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1131, file: !1130, line: 32, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1130, line: 32, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1131, file: !1130, line: 37, baseType: !291, size: 16, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !1130, line: 40, baseType: !1141, size: 192, offset: 512)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1142, line: 53, size: 192, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1141, file: !1142, line: 54, baseType: !739, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1141, file: !1142, line: 55, baseType: !208, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1141, file: !1142, line: 59, baseType: !195, size: 128, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1131, file: !1130, line: 41, baseType: !118, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1131, file: !1130, line: 42, baseType: !1149, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1152, line: 13, size: 896, elements: !1153)
!1152 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1151, file: !1152, line: 14, baseType: !118, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1151, file: !1152, line: 15, baseType: !123, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1151, file: !1152, line: 17, baseType: !123, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1151, file: !1152, line: 17, baseType: !123, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1151, file: !1152, line: 19, baseType: !284, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1151, file: !1152, line: 21, baseType: !284, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1151, file: !1152, line: 22, baseType: !284, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1151, file: !1152, line: 23, baseType: !284, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1151, file: !1152, line: 24, baseType: !284, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1151, file: !1152, line: 25, baseType: !284, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1151, file: !1152, line: 26, baseType: !284, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1151, file: !1152, line: 27, baseType: !284, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1151, file: !1152, line: 28, baseType: !284, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1151, file: !1152, line: 29, baseType: !284, size: 64, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1131, file: !1130, line: 44, baseType: !715, size: 32, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1131, file: !1130, line: 50, baseType: !827, size: 16, offset: 864)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1131, file: !1130, line: 51, baseType: !1171, size: 16, offset: 880)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !128, line: 18, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !120, line: 23, baseType: !1173)
!1173 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !691, line: 495, baseType: !123, size: 64, offset: 6528)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !946, file: !691, line: 497, baseType: !1176, size: 64, offset: 6592)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !691, line: 381, size: 384, elements: !1178)
!1178 = !{!1179, !1180, !2278}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1177, file: !691, line: 382, baseType: !715, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1177, file: !691, line: 383, baseType: !1181, size: 128, offset: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !691, line: 376, size: 128, elements: !1182)
!1182 = !{!1183, !2276}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1181, file: !691, line: 377, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1186, line: 640, size: 48640, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188, !1194, !1196, !1197, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1214, !1232, !1243, !1328, !1329, !1330, !1341, !1342, !1344, !1345, !1346, !1347, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1426, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1464, !1466, !1467, !1468, !1480, !1481, !1482, !1483, !1484, !1485, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1509, !1514, !1698, !1699, !1700, !1701, !1705, !1708, !1711, !1714, !1717, !1720, !1821, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1867, !1868, !1869, !1870, !1871, !1876, !1877, !1878, !1881, !1882, !1885, !1888, !1891, !1894, !1937, !1940, !1941, !2020, !2021, !2024, !2025, !2028, !2029, !2030, !2034, !2035, !2036, !2049, !2050, !2051, !2061, !2066, !2069, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1185, file: !1186, line: 646, baseType: !1189, size: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1190, line: 56, size: 128, elements: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1189, file: !1190, line: 57, baseType: !123, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1189, file: !1190, line: 58, baseType: !152, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1185, file: !1186, line: 649, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !284)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1185, file: !1186, line: 657, baseType: !118, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1185, file: !1186, line: 658, baseType: !1198, size: 32, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1199, line: 113, baseType: !1200)
!1199 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1199, line: 111, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1200, file: !1199, line: 112, baseType: !715, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !1186, line: 660, baseType: !7, size: 32, offset: 288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1185, file: !1186, line: 661, baseType: !7, size: 32, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1185, file: !1186, line: 684, baseType: !132, size: 32, offset: 352)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1185, file: !1186, line: 686, baseType: !132, size: 32, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1185, file: !1186, line: 687, baseType: !132, size: 32, offset: 416)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1185, file: !1186, line: 688, baseType: !132, size: 32, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1185, file: !1186, line: 689, baseType: !7, size: 32, offset: 480)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1185, file: !1186, line: 691, baseType: !1211, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1186, line: 691, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1185, file: !1186, line: 692, baseType: !1215, size: 832, offset: 576)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1186, line: 451, size: 832, elements: !1216)
!1216 = !{!1217, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1215, file: !1186, line: 453, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1186, line: 325, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1218, file: !1186, line: 326, baseType: !123, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1218, file: !1186, line: 327, baseType: !152, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1215, file: !1186, line: 454, baseType: !728, size: 192, align: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1215, file: !1186, line: 455, baseType: !195, size: 128, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1215, file: !1186, line: 456, baseType: !7, size: 32, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1215, file: !1186, line: 458, baseType: !127, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1215, file: !1186, line: 459, baseType: !127, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1215, file: !1186, line: 460, baseType: !127, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1215, file: !1186, line: 461, baseType: !127, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1215, file: !1186, line: 463, baseType: !127, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1215, file: !1186, line: 465, baseType: !1231, offset: 832)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1186, line: 415, elements: !222)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1185, file: !1186, line: 693, baseType: !1233, size: 384, offset: 1408)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1186, line: 489, size: 384, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1233, file: !1186, line: 490, baseType: !195, size: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1233, file: !1186, line: 491, baseType: !123, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1233, file: !1186, line: 492, baseType: !123, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1233, file: !1186, line: 493, baseType: !7, size: 32, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1233, file: !1186, line: 494, baseType: !291, size: 16, offset: 288)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1233, file: !1186, line: 495, baseType: !291, size: 16, offset: 304)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1233, file: !1186, line: 497, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1185, file: !1186, line: 697, baseType: !1244, size: 1792, offset: 1792)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1186, line: 507, size: 1792, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1325, !1326}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1244, file: !1186, line: 508, baseType: !728, size: 192, align: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1244, file: !1186, line: 515, baseType: !127, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1244, file: !1186, line: 516, baseType: !127, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1244, file: !1186, line: 517, baseType: !127, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1244, file: !1186, line: 518, baseType: !127, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1244, file: !1186, line: 519, baseType: !127, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1244, file: !1186, line: 526, baseType: !745, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1244, file: !1186, line: 527, baseType: !127, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !1186, line: 528, baseType: !7, size: 32, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1244, file: !1186, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1244, file: !1186, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1244, file: !1186, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1244, file: !1186, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1244, file: !1186, line: 563, baseType: !1260, size: 512, offset: 704)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1261)
!1261 = !{!1262, !1270, !1271, !1276, !1319, !1322, !1323, !1324}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1260, file: !20, line: 119, baseType: !1263, size: 256)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1264, line: 9, size: 256, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1263, file: !1264, line: 10, baseType: !728, size: 192, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1263, file: !1264, line: 11, baseType: !1268, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1269, line: 29, baseType: !745)
!1269 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1260, file: !20, line: 120, baseType: !1268, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1260, file: !20, line: 121, baseType: !1272, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!19, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1260, file: !20, line: 122, baseType: !1277, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1279)
!1279 = !{!1280, !1300, !1301, !1304, !1309, !1310, !1314, !1318}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1278, file: !20, line: 160, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1282, file: !20, line: 215, baseType: !748)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1282, file: !20, line: 216, baseType: !7, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1282, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1282, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1282, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1282, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1282, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1282, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1282, file: !20, line: 233, baseType: !1268, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1282, file: !20, line: 234, baseType: !1275, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1282, file: !20, line: 235, baseType: !1268, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1282, file: !20, line: 236, baseType: !1275, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1282, file: !20, line: 237, baseType: !1297, size: 4096, offset: 512)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 4096, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 8)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1278, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1278, file: !20, line: 162, baseType: !1302, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 27, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !282, line: 96, baseType: !132)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1278, file: !20, line: 163, baseType: !1305, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !362, line: 276, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !362, line: 276, size: 32, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1306, file: !362, line: 276, baseType: !366, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1278, file: !20, line: 164, baseType: !1275, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1278, file: !20, line: 165, baseType: !1311, size: 128, offset: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1264, line: 14, size: 128, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1311, file: !1264, line: 15, baseType: !720, size: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1278, file: !20, line: 166, baseType: !1315, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1268}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1278, file: !20, line: 167, baseType: !1268, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !20, line: 123, baseType: !1320, size: 8, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !128, line: 17, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !120, line: 21, baseType: !394)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1260, file: !20, line: 124, baseType: !1320, size: 8, offset: 456)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1260, file: !20, line: 125, baseType: !1320, size: 8, offset: 464)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1260, file: !20, line: 126, baseType: !1320, size: 8, offset: 472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1244, file: !1186, line: 572, baseType: !1260, size: 512, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1244, file: !1186, line: 580, baseType: !1327, size: 64, offset: 1728)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1185, file: !1186, line: 721, baseType: !7, size: 32, offset: 3584)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1185, file: !1186, line: 722, baseType: !132, size: 32, offset: 3616)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1185, file: !1186, line: 723, baseType: !1331, size: 64, offset: 3648)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1334, line: 17, baseType: !1335)
!1334 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1334, line: 17, size: 64, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1335, file: !1334, line: 17, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 1)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1185, file: !1186, line: 724, baseType: !1333, size: 64, offset: 3712)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1185, file: !1186, line: 749, baseType: !1343, offset: 3776)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1186, line: 290, elements: !222)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1185, file: !1186, line: 751, baseType: !195, size: 128, offset: 3776)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1185, file: !1186, line: 757, baseType: !942, size: 64, offset: 3904)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1185, file: !1186, line: 758, baseType: !942, size: 64, offset: 3968)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1185, file: !1186, line: 761, baseType: !1348, size: 320, offset: 4032)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1119, line: 34, size: 320, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1348, file: !1119, line: 35, baseType: !127, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1348, file: !1119, line: 36, baseType: !1352, size: 256, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 256, elements: !1123)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1185, file: !1186, line: 766, baseType: !132, size: 32, offset: 4352)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1185, file: !1186, line: 767, baseType: !132, size: 32, offset: 4384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1185, file: !1186, line: 768, baseType: !132, size: 32, offset: 4416)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1185, file: !1186, line: 770, baseType: !132, size: 32, offset: 4448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1185, file: !1186, line: 772, baseType: !123, size: 64, offset: 4480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1185, file: !1186, line: 775, baseType: !7, size: 32, offset: 4544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1185, file: !1186, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1185, file: !1186, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1185, file: !1186, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1185, file: !1186, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1185, file: !1186, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1185, file: !1186, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1185, file: !1186, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1185, file: !1186, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1185, file: !1186, line: 831, baseType: !123, size: 64, offset: 4672)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1185, file: !1186, line: 833, baseType: !1369, size: 384, offset: 4736)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1370)
!1370 = !{!1371, !1376}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1369, file: !25, line: 26, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!284, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !25, line: 27, baseType: !1377, size: 320, offset: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1369, file: !25, line: 27, size: 320, elements: !1378)
!1378 = !{!1379, !1389, !1416}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1377, file: !25, line: 36, baseType: !1380, size: 320)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 29, size: 320, elements: !1381)
!1381 = !{!1382, !1384, !1385, !1386, !1387, !1388}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1380, file: !25, line: 30, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1380, file: !25, line: 31, baseType: !152, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !25, line: 32, baseType: !152, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1380, file: !25, line: 33, baseType: !152, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1380, file: !25, line: 34, baseType: !127, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1380, file: !25, line: 35, baseType: !1383, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1377, file: !25, line: 46, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 38, size: 192, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1415}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1390, file: !25, line: 39, baseType: !1302, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1390, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !25, line: 41, baseType: !1395, size: 64, offset: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1390, file: !25, line: 41, size: 64, elements: !1396)
!1396 = !{!1397, !1405}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1395, file: !25, line: 42, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1400, line: 7, size: 128, elements: !1401)
!1400 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1399, file: !1400, line: 8, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !282, line: 93, baseType: !498)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1399, file: !1400, line: 9, baseType: !498, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1395, file: !25, line: 43, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1408, line: 7, size: 64, elements: !1409)
!1408 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1414}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1407, file: !1408, line: 8, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1408, line: 5, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !128, line: 20, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !120, line: 26, baseType: !132)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1407, file: !1408, line: 9, baseType: !1412, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1390, file: !25, line: 45, baseType: !127, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1377, file: !25, line: 54, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 48, size: 256, elements: !1418)
!1418 = !{!1419, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1417, file: !25, line: 49, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1417, file: !25, line: 50, baseType: !132, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1417, file: !25, line: 51, baseType: !132, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1417, file: !25, line: 52, baseType: !123, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1417, file: !25, line: 53, baseType: !123, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1185, file: !1186, line: 835, baseType: !1427, size: 32, offset: 5120)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 22, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !282, line: 28, baseType: !132)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1185, file: !1186, line: 836, baseType: !1427, size: 32, offset: 5152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1185, file: !1186, line: 840, baseType: !123, size: 64, offset: 5184)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1185, file: !1186, line: 849, baseType: !1184, size: 64, offset: 5248)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1185, file: !1186, line: 852, baseType: !1184, size: 64, offset: 5312)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1185, file: !1186, line: 857, baseType: !195, size: 128, offset: 5376)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1185, file: !1186, line: 858, baseType: !195, size: 128, offset: 5504)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1185, file: !1186, line: 859, baseType: !1184, size: 64, offset: 5632)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1185, file: !1186, line: 867, baseType: !195, size: 128, offset: 5696)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1185, file: !1186, line: 868, baseType: !195, size: 128, offset: 5824)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1185, file: !1186, line: 871, baseType: !1439, size: 64, offset: 5952)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1447, !1448, !1455, !1456}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1440, file: !53, line: 61, baseType: !1198, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1440, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !53, line: 63, baseType: !208, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1440, file: !53, line: 65, baseType: !1446, size: 256, offset: 64)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !1123)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1440, file: !53, line: 66, baseType: !603, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1440, file: !53, line: 68, baseType: !1449, size: 128, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1450, line: 40, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1450, line: 36, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1451, file: !1450, line: 37, baseType: !208)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1451, file: !1450, line: 38, baseType: !195, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1440, file: !53, line: 69, baseType: !339, size: 128, align: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1440, file: !53, line: 70, baseType: !1457, size: 128, offset: 640)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1458, size: 128, elements: !1339)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1458, file: !53, line: 55, baseType: !132, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1458, file: !53, line: 56, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1185, file: !1186, line: 872, baseType: !1465, size: 512, offset: 6016)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1123)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1185, file: !1186, line: 873, baseType: !195, size: 128, offset: 6528)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1185, file: !1186, line: 874, baseType: !195, size: 128, offset: 6656)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1185, file: !1186, line: 876, baseType: !1469, size: 64, offset: 6784)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1471, line: 26, size: 192, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1470, file: !1471, line: 27, baseType: !7, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1470, file: !1471, line: 28, baseType: !1475, size: 128, offset: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1476, line: 43, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !1476, line: 44, baseType: !748)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1475, file: !1476, line: 45, baseType: !195, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1185, file: !1186, line: 879, baseType: !673, size: 64, offset: 6848)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1185, file: !1186, line: 882, baseType: !673, size: 64, offset: 6912)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1185, file: !1186, line: 884, baseType: !127, size: 64, offset: 6976)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1185, file: !1186, line: 885, baseType: !127, size: 64, offset: 7040)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1185, file: !1186, line: 890, baseType: !127, size: 64, offset: 7104)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1185, file: !1186, line: 891, baseType: !1486, size: 128, offset: 7168)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1186, line: 242, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1486, file: !1186, line: 244, baseType: !127, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1486, file: !1186, line: 245, baseType: !127, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1186, line: 246, baseType: !748, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1185, file: !1186, line: 900, baseType: !123, size: 64, offset: 7296)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1185, file: !1186, line: 901, baseType: !123, size: 64, offset: 7360)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1185, file: !1186, line: 904, baseType: !127, size: 64, offset: 7424)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1185, file: !1186, line: 907, baseType: !127, size: 64, offset: 7488)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1185, file: !1186, line: 910, baseType: !123, size: 64, offset: 7552)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1185, file: !1186, line: 911, baseType: !123, size: 64, offset: 7616)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1185, file: !1186, line: 914, baseType: !1498, size: 640, offset: 7680)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1499, line: 123, size: 640, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1507, !1508}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1498, file: !1499, line: 124, baseType: !1502, size: 576)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 576, elements: !250)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1499, line: 108, size: 192, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1503, file: !1499, line: 109, baseType: !127, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1503, file: !1499, line: 110, baseType: !1311, size: 128, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1498, file: !1499, line: 125, baseType: !7, size: 32, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1498, file: !1499, line: 126, baseType: !7, size: 32, offset: 608)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1185, file: !1186, line: 917, baseType: !1510, size: 192, offset: 8320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1499, line: 134, size: 192, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1510, file: !1499, line: 135, baseType: !339, size: 128, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1510, file: !1499, line: 136, baseType: !7, size: 32, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1185, file: !1186, line: 923, baseType: !1515, size: 64, offset: 8512)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1518, line: 111, size: 1280, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1539, !1540, !1541, !1542, !1543, !1544, !1651, !1652, !1653, !1654, !1680, !1683, !1693}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1517, file: !1518, line: 112, baseType: !715, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1517, file: !1518, line: 120, baseType: !402, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1517, file: !1518, line: 121, baseType: !410, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1517, file: !1518, line: 122, baseType: !402, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1517, file: !1518, line: 123, baseType: !410, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1517, file: !1518, line: 124, baseType: !402, size: 32, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1517, file: !1518, line: 125, baseType: !410, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1517, file: !1518, line: 126, baseType: !402, size: 32, offset: 224)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1517, file: !1518, line: 127, baseType: !410, size: 32, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1517, file: !1518, line: 128, baseType: !7, size: 32, offset: 288)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1517, file: !1518, line: 129, baseType: !1531, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1532, line: 26, baseType: !1533)
!1532 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1532, line: 24, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1533, file: !1532, line: 25, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 2)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1517, file: !1518, line: 130, baseType: !1531, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1517, file: !1518, line: 131, baseType: !1531, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1517, file: !1518, line: 132, baseType: !1531, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1517, file: !1518, line: 133, baseType: !1531, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1517, file: !1518, line: 135, baseType: !394, size: 8, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1517, file: !1518, line: 137, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1547, line: 189, size: 1664, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550, !1553, !1558, !1559, !1562, !1563, !1568, !1569, !1570, !1571, !1573, !1574, !1575, !1576, !1577, !1615, !1636}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1546, file: !1547, line: 190, baseType: !1198, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1546, file: !1547, line: 191, baseType: !1551, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1547, line: 28, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 98, baseType: !1412)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 192, baseType: !1554, size: 192, offset: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 192, size: 192, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1554, file: !1547, line: 193, baseType: !195, size: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1554, file: !1547, line: 194, baseType: !728, size: 192, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1546, file: !1547, line: 199, baseType: !735, size: 256, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1546, file: !1547, line: 200, baseType: !1560, size: 64, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1547, line: 200, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1546, file: !1547, line: 201, baseType: !118, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 202, baseType: !1564, size: 64, offset: 640)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 202, size: 64, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1564, file: !1547, line: 203, baseType: !504, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1564, file: !1547, line: 204, baseType: !504, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1546, file: !1547, line: 206, baseType: !504, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !1547, line: 207, baseType: !402, size: 32, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1546, file: !1547, line: 208, baseType: !410, size: 32, offset: 800)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1546, file: !1547, line: 209, baseType: !1572, size: 32, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1547, line: 31, baseType: !524)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1546, file: !1547, line: 210, baseType: !291, size: 16, offset: 864)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1546, file: !1547, line: 211, baseType: !291, size: 16, offset: 880)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1546, file: !1547, line: 215, baseType: !1173, size: 16, offset: 896)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1547, line: 222, baseType: !123, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 239, baseType: !1578, size: 320, offset: 1024)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 239, size: 320, elements: !1579)
!1579 = !{!1580, !1607}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1578, file: !1547, line: 240, baseType: !1581, size: 320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1547, line: 108, size: 320, elements: !1582)
!1582 = !{!1583, !1584, !1596, !1599, !1606}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1581, file: !1547, line: 110, baseType: !123, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1547, line: 111, baseType: !1585, size: 64, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1547, line: 111, size: 64, elements: !1586)
!1586 = !{!1587, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1547, line: 112, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !1547, line: 112, size: 64, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1588, file: !1547, line: 114, baseType: !827, size: 16)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1588, file: !1547, line: 115, baseType: !1592, size: 48, offset: 16)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 48, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 6)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1585, file: !1547, line: 121, baseType: !123, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1581, file: !1547, line: 123, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1547, line: 96, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1581, file: !1547, line: 124, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1547, line: 102, size: 192, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1601, file: !1547, line: 103, baseType: !339, size: 128, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1601, file: !1547, line: 104, baseType: !1198, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1601, file: !1547, line: 105, baseType: !140, size: 8, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1581, file: !1547, line: 125, baseType: !147, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1547, line: 241, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !1547, line: 241, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1547, line: 242, baseType: !123, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1608, file: !1547, line: 243, baseType: !123, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1547, line: 244, baseType: !1597, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1547, line: 245, baseType: !1600, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1547, line: 246, baseType: !249, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 254, baseType: !1616, size: 256, offset: 1344)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 254, size: 256, elements: !1617)
!1617 = !{!1618, !1624}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1616, file: !1547, line: 255, baseType: !1619, size: 256)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1547, line: 128, size: 256, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1619, file: !1547, line: 129, baseType: !118, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1619, file: !1547, line: 130, baseType: !1623, size: 256)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !1123)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1547, line: 256, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1547, line: 256, size: 256, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1625, file: !1547, line: 258, baseType: !195, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1625, file: !1547, line: 259, baseType: !1629, size: 128, offset: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1630, line: 22, size: 128, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1635}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1629, file: !1630, line: 23, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1630, line: 23, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1629, file: !1630, line: 24, baseType: !123, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1546, file: !1547, line: 274, baseType: !1637, size: 64, offset: 1600)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1547, line: 170, size: 192, elements: !1639)
!1639 = !{!1640, !1649, !1650}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1638, file: !1547, line: 171, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1547, line: 165, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!132, !1545, !1645, !1647, !1545}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1638, file: !1547, line: 172, baseType: !1545, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1638, file: !1547, line: 173, baseType: !1597, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1517, file: !1518, line: 138, baseType: !1545, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1517, file: !1518, line: 139, baseType: !1545, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1517, file: !1518, line: 140, baseType: !1545, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1517, file: !1518, line: 145, baseType: !1655, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1657, line: 13, size: 896, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1656, file: !1657, line: 14, baseType: !1198, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1656, file: !1657, line: 15, baseType: !715, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1656, file: !1657, line: 16, baseType: !715, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1656, file: !1657, line: 21, baseType: !739, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1656, file: !1657, line: 27, baseType: !123, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1656, file: !1657, line: 28, baseType: !123, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1656, file: !1657, line: 29, baseType: !739, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1656, file: !1657, line: 32, baseType: !607, size: 128, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1656, file: !1657, line: 33, baseType: !402, size: 32, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1656, file: !1657, line: 37, baseType: !739, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1656, file: !1657, line: 44, baseType: !1670, size: 256, offset: 640)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1671, line: 15, size: 256, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1670, file: !1671, line: 16, baseType: !748)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1670, file: !1671, line: 18, baseType: !132, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1670, file: !1671, line: 19, baseType: !132, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1670, file: !1671, line: 20, baseType: !132, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1670, file: !1671, line: 21, baseType: !132, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1670, file: !1671, line: 22, baseType: !123, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1671, line: 23, baseType: !123, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1517, file: !1518, line: 146, baseType: !1681, size: 64, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !403, line: 18, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1517, file: !1518, line: 147, baseType: !1684, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1518, line: 25, size: 64, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1685, file: !1518, line: 26, baseType: !715, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1685, file: !1518, line: 27, baseType: !132, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1685, file: !1518, line: 28, baseType: !1690, offset: 64)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 0)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1518, line: 149, baseType: !1694, size: 128, offset: 1152)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !1518, line: 149, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1694, file: !1518, line: 150, baseType: !132, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1694, file: !1518, line: 151, baseType: !339, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1185, file: !1186, line: 926, baseType: !1515, size: 64, offset: 8576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1185, file: !1186, line: 929, baseType: !1515, size: 64, offset: 8640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1185, file: !1186, line: 933, baseType: !1545, size: 64, offset: 8704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1185, file: !1186, line: 943, baseType: !1702, size: 128, offset: 8768)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1185, file: !1186, line: 945, baseType: !1706, size: 64, offset: 8896)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1186, line: 49, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1185, file: !1186, line: 956, baseType: !1709, size: 64, offset: 8960)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1186, line: 45, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1185, file: !1186, line: 959, baseType: !1712, size: 64, offset: 9024)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1186, line: 959, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1185, file: !1186, line: 962, baseType: !1715, size: 64, offset: 9088)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1186, line: 66, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1185, file: !1186, line: 966, baseType: !1718, size: 64, offset: 9152)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1186, line: 50, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1185, file: !1186, line: 969, baseType: !1721, size: 64, offset: 9216)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1723, line: 82, size: 7296, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1760, !1769, !1770, !1772, !1773, !1774, !1777, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1807, !1808, !1815, !1816, !1817, !1818, !1819, !1820}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1722, file: !1723, line: 83, baseType: !1198, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1722, file: !1723, line: 84, baseType: !715, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1722, file: !1723, line: 85, baseType: !132, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1722, file: !1723, line: 86, baseType: !195, size: 128, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1722, file: !1723, line: 88, baseType: !1449, size: 128, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1722, file: !1723, line: 91, baseType: !1184, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1722, file: !1723, line: 94, baseType: !1732, size: 192, offset: 448)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1733, line: 30, size: 192, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1732, file: !1733, line: 31, baseType: !195, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1732, file: !1733, line: 32, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1738, line: 25, baseType: !1739)
!1738 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1738, line: 23, size: 64, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1739, file: !1738, line: 24, baseType: !1338, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1722, file: !1723, line: 97, baseType: !603, size: 64, offset: 640)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1722, file: !1723, line: 100, baseType: !132, size: 32, offset: 704)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1722, file: !1723, line: 106, baseType: !132, size: 32, offset: 736)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1722, file: !1723, line: 107, baseType: !1184, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1722, file: !1723, line: 110, baseType: !132, size: 32, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !1723, line: 111, baseType: !7, size: 32, offset: 864)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1722, file: !1723, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1722, file: !1723, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1722, file: !1723, line: 128, baseType: !132, size: 32, offset: 928)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1722, file: !1723, line: 129, baseType: !195, size: 128, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1722, file: !1723, line: 132, baseType: !1260, size: 512, offset: 1088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1722, file: !1723, line: 133, baseType: !1268, size: 64, offset: 1600)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1722, file: !1723, line: 140, baseType: !1755, size: 256, offset: 1664)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 256, elements: !1537)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1723, line: 38, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1756, file: !1723, line: 39, baseType: !127, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1756, file: !1723, line: 40, baseType: !127, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1722, file: !1723, line: 146, baseType: !1761, size: 192, offset: 1920)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1723, line: 66, size: 192, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1761, file: !1723, line: 67, baseType: !1764, size: 192)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1723, line: 47, size: 192, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1764, file: !1723, line: 48, baseType: !741, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1764, file: !1723, line: 49, baseType: !741, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1764, file: !1723, line: 50, baseType: !741, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1722, file: !1723, line: 150, baseType: !1498, size: 640, offset: 2112)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1722, file: !1723, line: 153, baseType: !1771, size: 256, offset: 2752)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 256, elements: !1123)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1722, file: !1723, line: 159, baseType: !1439, size: 64, offset: 3008)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1722, file: !1723, line: 162, baseType: !132, size: 32, offset: 3072)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1722, file: !1723, line: 164, baseType: !1775, size: 64, offset: 3136)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1723, line: 164, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1722, file: !1723, line: 175, baseType: !1778, size: 32, offset: 3200)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !362, line: 805, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 798, size: 32, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1779, file: !362, line: 803, baseType: !361, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1779, file: !362, line: 804, baseType: !208, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1722, file: !1723, line: 176, baseType: !127, size: 64, offset: 3264)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1722, file: !1723, line: 176, baseType: !127, size: 64, offset: 3328)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1722, file: !1723, line: 176, baseType: !127, size: 64, offset: 3392)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1722, file: !1723, line: 176, baseType: !127, size: 64, offset: 3456)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1722, file: !1723, line: 177, baseType: !127, size: 64, offset: 3520)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1722, file: !1723, line: 178, baseType: !127, size: 64, offset: 3584)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1722, file: !1723, line: 179, baseType: !1486, size: 128, offset: 3648)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1722, file: !1723, line: 180, baseType: !123, size: 64, offset: 3776)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1722, file: !1723, line: 180, baseType: !123, size: 64, offset: 3840)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1722, file: !1723, line: 180, baseType: !123, size: 64, offset: 3904)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1722, file: !1723, line: 180, baseType: !123, size: 64, offset: 3968)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1722, file: !1723, line: 181, baseType: !123, size: 64, offset: 4032)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1722, file: !1723, line: 181, baseType: !123, size: 64, offset: 4096)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1722, file: !1723, line: 181, baseType: !123, size: 64, offset: 4160)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1722, file: !1723, line: 181, baseType: !123, size: 64, offset: 4224)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1722, file: !1723, line: 182, baseType: !123, size: 64, offset: 4288)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1722, file: !1723, line: 182, baseType: !123, size: 64, offset: 4352)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1722, file: !1723, line: 182, baseType: !123, size: 64, offset: 4416)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1722, file: !1723, line: 182, baseType: !123, size: 64, offset: 4480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1722, file: !1723, line: 183, baseType: !123, size: 64, offset: 4544)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1722, file: !1723, line: 183, baseType: !123, size: 64, offset: 4608)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1722, file: !1723, line: 184, baseType: !1805, offset: 4672)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1806, line: 12, elements: !222)
!1806 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1722, file: !1723, line: 192, baseType: !130, size: 64, offset: 4672)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1722, file: !1723, line: 203, baseType: !1809, size: 2048, offset: 4736)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 2048, elements: !1703)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1811, line: 43, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1810, file: !1811, line: 44, baseType: !298, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1810, file: !1811, line: 45, baseType: !298, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1722, file: !1723, line: 220, baseType: !140, size: 8, offset: 6784)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1722, file: !1723, line: 221, baseType: !1173, size: 16, offset: 6800)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1722, file: !1723, line: 222, baseType: !1173, size: 16, offset: 6816)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1722, file: !1723, line: 224, baseType: !942, size: 64, offset: 6848)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1722, file: !1723, line: 227, baseType: !1141, size: 192, offset: 6912)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1722, file: !1723, line: 233, baseType: !1141, size: 192, offset: 7104)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1185, file: !1186, line: 970, baseType: !1822, size: 64, offset: 9280)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1723, line: 20, size: 16576, elements: !1824)
!1824 = !{!1825, !1826, !1827, !1828}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1823, file: !1723, line: 21, baseType: !208)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1823, file: !1723, line: 22, baseType: !1198, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1823, file: !1723, line: 23, baseType: !1449, size: 128, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1823, file: !1723, line: 24, baseType: !1829, size: 16384, offset: 192)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 16384, elements: !254)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1733, line: 49, size: 256, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1830, file: !1733, line: 50, baseType: !1833, size: 256)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1733, line: 35, size: 256, elements: !1834)
!1834 = !{!1835, !1842, !1843, !1849}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1833, file: !1733, line: 37, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1837, line: 19, baseType: !1838)
!1837 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1837, line: 18, baseType: !1840)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !132}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1833, file: !1733, line: 38, baseType: !123, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1833, file: !1733, line: 44, baseType: !1844, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1837, line: 22, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1837, line: 21, baseType: !1847)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1833, file: !1733, line: 46, baseType: !1737, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1185, file: !1186, line: 971, baseType: !1737, size: 64, offset: 9344)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1185, file: !1186, line: 972, baseType: !1737, size: 64, offset: 9408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1185, file: !1186, line: 974, baseType: !1737, size: 64, offset: 9472)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1185, file: !1186, line: 975, baseType: !1732, size: 192, offset: 9536)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1185, file: !1186, line: 976, baseType: !123, size: 64, offset: 9728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1185, file: !1186, line: 977, baseType: !296, size: 64, offset: 9792)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1185, file: !1186, line: 978, baseType: !7, size: 32, offset: 9856)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1185, file: !1186, line: 980, baseType: !342, size: 64, offset: 9920)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1185, file: !1186, line: 989, baseType: !1859, size: 128, offset: 9984)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1860, line: 35, size: 128, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1859, file: !1860, line: 36, baseType: !132, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1859, file: !1860, line: 37, baseType: !715, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1859, file: !1860, line: 38, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1860, line: 23, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1185, file: !1186, line: 992, baseType: !127, size: 64, offset: 10112)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1185, file: !1186, line: 993, baseType: !127, size: 64, offset: 10176)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1185, file: !1186, line: 996, baseType: !208, offset: 10240)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1185, file: !1186, line: 999, baseType: !748, offset: 10240)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1185, file: !1186, line: 1001, baseType: !1872, size: 64, offset: 10240)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1186, line: 636, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1872, file: !1186, line: 637, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1185, file: !1186, line: 1005, baseType: !720, size: 128, offset: 10304)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1185, file: !1186, line: 1007, baseType: !1184, size: 64, offset: 10432)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1185, file: !1186, line: 1009, baseType: !1879, size: 64, offset: 10496)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1186, line: 1009, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1185, file: !1186, line: 1043, baseType: !118, size: 64, offset: 10560)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1185, file: !1186, line: 1046, baseType: !1883, size: 64, offset: 10624)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1186, line: 41, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1185, file: !1186, line: 1050, baseType: !1886, size: 64, offset: 10688)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1186, line: 42, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1185, file: !1186, line: 1054, baseType: !1889, size: 64, offset: 10752)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1186, line: 55, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1185, file: !1186, line: 1056, baseType: !1892, size: 64, offset: 10816)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1186, line: 40, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1185, file: !1186, line: 1058, baseType: !1895, size: 64, offset: 10880)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1897, line: 99, size: 704, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905, !1924, !1925}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1896, file: !1897, line: 100, baseType: !739, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1896, file: !1897, line: 101, baseType: !715, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1896, file: !1897, line: 102, baseType: !715, size: 32, offset: 96)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !1897, line: 105, baseType: !208, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1896, file: !1897, line: 107, baseType: !291, size: 16, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1896, file: !1897, line: 109, baseType: !707, size: 128, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1896, file: !1897, line: 110, baseType: !1906, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1897, line: 73, size: 448, elements: !1908)
!1908 = !{!1909, !1912, !1913, !1918, !1923}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1907, file: !1897, line: 74, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1897, line: 74, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1907, file: !1897, line: 75, baseType: !1895, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1897, line: 83, baseType: !1914, size: 128, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1897, line: 83, size: 128, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1914, file: !1897, line: 84, baseType: !195, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1914, file: !1897, line: 85, baseType: !903, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1897, line: 87, baseType: !1919, size: 128, offset: 256)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1897, line: 87, size: 128, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1919, file: !1897, line: 88, baseType: !607, size: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1919, file: !1897, line: 89, baseType: !339, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1897, line: 92, baseType: !7, size: 32, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1896, file: !1897, line: 111, baseType: !603, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1896, file: !1897, line: 113, baseType: !1926, size: 256, offset: 448)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1927, line: 102, size: 256, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1926, file: !1927, line: 103, baseType: !739, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1926, file: !1927, line: 104, baseType: !195, size: 128, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1926, file: !1927, line: 105, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1927, line: 21, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1185, file: !1186, line: 1061, baseType: !1938, size: 64, offset: 10944)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1186, line: 43, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1185, file: !1186, line: 1064, baseType: !123, size: 64, offset: 11008)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1185, file: !1186, line: 1065, baseType: !1942, size: 64, offset: 11072)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1733, line: 14, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1733, line: 12, size: 384, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !1733, line: 13, baseType: !1947, size: 384)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1733, line: 13, size: 384, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1947, file: !1733, line: 13, baseType: !132, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1947, file: !1733, line: 13, baseType: !132, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1947, file: !1733, line: 13, baseType: !132, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1947, file: !1733, line: 13, baseType: !1953, size: 256, offset: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1954, line: 32, size: 256, elements: !1955)
!1954 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !{!1956, !1961, !1974, !1980, !1989, !2009, !2014}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1953, file: !1954, line: 37, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 34, size: 64, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1957, file: !1954, line: 35, baseType: !1428, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1957, file: !1954, line: 36, baseType: !408, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1953, file: !1954, line: 45, baseType: !1962, size: 192)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 40, size: 192, elements: !1963)
!1963 = !{!1964, !1966, !1967, !1973}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1962, file: !1954, line: 41, baseType: !1965, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !282, line: 95, baseType: !132)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1962, file: !1954, line: 42, baseType: !132, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1962, file: !1954, line: 43, baseType: !1968, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1954, line: 11, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1954, line: 8, size: 64, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1969, file: !1954, line: 9, baseType: !132, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1969, file: !1954, line: 10, baseType: !118, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1962, file: !1954, line: 44, baseType: !132, size: 32, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1953, file: !1954, line: 52, baseType: !1975, size: 128)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 48, size: 128, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1975, file: !1954, line: 49, baseType: !1428, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1975, file: !1954, line: 50, baseType: !408, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1975, file: !1954, line: 51, baseType: !1968, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1953, file: !1954, line: 61, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 55, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1988}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1981, file: !1954, line: 56, baseType: !1428, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1981, file: !1954, line: 57, baseType: !408, size: 32, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1981, file: !1954, line: 58, baseType: !132, size: 32, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1981, file: !1954, line: 59, baseType: !1987, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !282, line: 94, baseType: !283)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1981, file: !1954, line: 60, baseType: !1987, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1953, file: !1954, line: 95, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 64, size: 256, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1990, file: !1954, line: 65, baseType: !118, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1954, line: 77, baseType: !1994, size: 192, offset: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1954, line: 77, size: 192, elements: !1995)
!1995 = !{!1996, !1997, !2004}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1994, file: !1954, line: 82, baseType: !1173, size: 16)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1994, file: !1954, line: 88, baseType: !1998, size: 192)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1994, file: !1954, line: 84, size: 192, elements: !1999)
!1999 = !{!2000, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1998, file: !1954, line: 85, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1298)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1998, file: !1954, line: 86, baseType: !118, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1998, file: !1954, line: 87, baseType: !118, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1994, file: !1954, line: 93, baseType: !2005, size: 96)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1994, file: !1954, line: 90, size: 96, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2005, file: !1954, line: 91, baseType: !2001, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2005, file: !1954, line: 92, baseType: !119, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1953, file: !1954, line: 101, baseType: !2010, size: 128)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 98, size: 128, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2010, file: !1954, line: 99, baseType: !284, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2010, file: !1954, line: 100, baseType: !132, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1953, file: !1954, line: 108, baseType: !2015, size: 128)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1954, line: 104, size: 128, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2015, file: !1954, line: 105, baseType: !118, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2015, file: !1954, line: 106, baseType: !132, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2015, file: !1954, line: 107, baseType: !7, size: 32, offset: 96)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1185, file: !1186, line: 1067, baseType: !1805, offset: 11136)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1185, file: !1186, line: 1099, baseType: !2022, size: 64, offset: 11136)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1186, line: 56, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1185, file: !1186, line: 1103, baseType: !195, size: 128, offset: 11200)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1185, file: !1186, line: 1104, baseType: !2026, size: 64, offset: 11328)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1186, line: 46, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1185, file: !1186, line: 1105, baseType: !1141, size: 192, offset: 11392)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1185, file: !1186, line: 1106, baseType: !7, size: 32, offset: 11584)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1185, file: !1186, line: 1109, baseType: !2031, size: 128, offset: 11648)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 128, elements: !1537)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1186, line: 51, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1185, file: !1186, line: 1110, baseType: !1141, size: 192, offset: 11776)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1185, file: !1186, line: 1111, baseType: !195, size: 128, offset: 11968)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1185, file: !1186, line: 1173, baseType: !2037, size: 64, offset: 12096)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2039, line: 62, size: 256, align: 256, elements: !2040)
!2039 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042, !2043, !2048}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2038, file: !2039, line: 75, baseType: !119, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2038, file: !2039, line: 90, baseType: !119, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2038, file: !2039, line: 124, baseType: !2044, size: 64, offset: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2039, line: 109, size: 64, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2044, file: !2039, line: 110, baseType: !129, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2044, file: !2039, line: 112, baseType: !129, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !2039, line: 144, baseType: !119, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1185, file: !1186, line: 1174, baseType: !152, size: 32, offset: 12160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1185, file: !1186, line: 1179, baseType: !123, size: 64, offset: 12224)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1185, file: !1186, line: 1182, baseType: !2052, size: 128, offset: 12288)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1119, line: 76, size: 128, elements: !2053)
!2053 = !{!2054, !2059, !2060}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2052, file: !1119, line: 85, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2056, line: 7, size: 64, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2055, file: !2056, line: 12, baseType: !1335, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2052, file: !1119, line: 88, baseType: !140, size: 8, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2052, file: !1119, line: 95, baseType: !140, size: 8, offset: 72)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1186, line: 1184, baseType: !2062, size: 128, offset: 12416)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1186, line: 1184, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2062, file: !1186, line: 1185, baseType: !1198, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2062, file: !1186, line: 1186, baseType: !339, size: 128, align: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1185, file: !1186, line: 1190, baseType: !2067, size: 64, offset: 12544)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1186, line: 53, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1185, file: !1186, line: 1192, baseType: !2070, size: 128, offset: 12608)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1119, line: 64, size: 128, elements: !2071)
!2071 = !{!2072, !2073, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2070, file: !1119, line: 65, baseType: !689, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2070, file: !1119, line: 67, baseType: !119, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2070, file: !1119, line: 68, baseType: !119, size: 32, offset: 96)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1185, file: !1186, line: 1206, baseType: !132, size: 32, offset: 12736)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1185, file: !1186, line: 1207, baseType: !132, size: 32, offset: 12768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1185, file: !1186, line: 1209, baseType: !123, size: 64, offset: 12800)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1185, file: !1186, line: 1219, baseType: !127, size: 64, offset: 12864)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1185, file: !1186, line: 1220, baseType: !127, size: 64, offset: 12928)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1185, file: !1186, line: 1317, baseType: !132, size: 32, offset: 12992)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1185, file: !1186, line: 1319, baseType: !1184, size: 64, offset: 13056)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1185, file: !1186, line: 1322, baseType: !2083, size: 64, offset: 13120)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2085, line: 56, size: 512, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !2085, line: 57, baseType: !2083, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2084, file: !2085, line: 58, baseType: !118, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2084, file: !2085, line: 59, baseType: !123, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !2085, line: 60, baseType: !123, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2084, file: !2085, line: 61, baseType: !788, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2084, file: !2085, line: 62, baseType: !7, size: 32, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2084, file: !2085, line: 63, baseType: !126, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2084, file: !2085, line: 64, baseType: !183, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1185, file: !1186, line: 1326, baseType: !1198, size: 32, offset: 13184)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1185, file: !1186, line: 1342, baseType: !118, size: 64, offset: 13248)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1185, file: !1186, line: 1343, baseType: !129, size: 64, offset: 13312)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1185, file: !1186, line: 1344, baseType: !127, size: 64, offset: 13376)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1185, file: !1186, line: 1345, baseType: !129, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1185, file: !1186, line: 1346, baseType: !129, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1185, file: !1186, line: 1347, baseType: !129, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1185, file: !1186, line: 1348, baseType: !339, size: 128, align: 64, offset: 13504)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1185, file: !1186, line: 1358, baseType: !2104, size: 34816, offset: 13824)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2105, line: 485, size: 34816, elements: !2106)
!2105 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2145, !2146}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2104, file: !2105, line: 487, baseType: !2108, size: 192)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 192, elements: !250)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2110, line: 16, size: 64, elements: !2111)
!2110 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2109, file: !2110, line: 17, baseType: !827, size: 16)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2109, file: !2110, line: 18, baseType: !827, size: 16, offset: 16)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2109, file: !2110, line: 19, baseType: !827, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2109, file: !2110, line: 19, baseType: !827, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2109, file: !2110, line: 19, baseType: !827, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2109, file: !2110, line: 19, baseType: !827, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2109, file: !2110, line: 19, baseType: !827, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2109, file: !2110, line: 20, baseType: !827, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2109, file: !2110, line: 20, baseType: !827, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2109, file: !2110, line: 20, baseType: !827, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2109, file: !2110, line: 20, baseType: !827, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2109, file: !2110, line: 20, baseType: !827, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2109, file: !2110, line: 20, baseType: !827, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2104, file: !2105, line: 491, baseType: !123, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2104, file: !2105, line: 495, baseType: !291, size: 16, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2104, file: !2105, line: 496, baseType: !291, size: 16, offset: 272)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2104, file: !2105, line: 497, baseType: !291, size: 16, offset: 288)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2104, file: !2105, line: 498, baseType: !291, size: 16, offset: 304)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2104, file: !2105, line: 502, baseType: !123, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2104, file: !2105, line: 503, baseType: !123, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2104, file: !2105, line: 514, baseType: !2133, size: 256, offset: 448)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2134, size: 256, elements: !1123)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2105, line: 483, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2104, file: !2105, line: 516, baseType: !123, size: 64, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2104, file: !2105, line: 518, baseType: !123, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2104, file: !2105, line: 520, baseType: !123, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2104, file: !2105, line: 521, baseType: !123, size: 64, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2104, file: !2105, line: 522, baseType: !123, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2104, file: !2105, line: 528, baseType: !2142, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2105, line: 10, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2104, file: !2105, line: 535, baseType: !123, size: 64, offset: 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2104, file: !2105, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2104, file: !2105, line: 540, baseType: !2147, size: 33280, offset: 1536)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2148, line: 317, size: 33280, elements: !2149)
!2148 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2147, file: !2148, line: 330, baseType: !7, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2147, file: !2148, line: 337, baseType: !123, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2147, file: !2148, line: 348, baseType: !2153, size: 32768, offset: 512)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2148, line: 304, size: 32768, elements: !2154)
!2154 = !{!2155, !2170, !2209, !2259, !2272}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2153, file: !2148, line: 305, baseType: !2156, size: 896)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2148, line: 12, size: 896, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2169}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2156, file: !2148, line: 13, baseType: !152, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2156, file: !2148, line: 14, baseType: !152, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2156, file: !2148, line: 15, baseType: !152, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2156, file: !2148, line: 16, baseType: !152, size: 32, offset: 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2156, file: !2148, line: 17, baseType: !152, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2156, file: !2148, line: 18, baseType: !152, size: 32, offset: 160)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2156, file: !2148, line: 19, baseType: !152, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2156, file: !2148, line: 22, baseType: !2166, size: 640, offset: 224)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 20)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2156, file: !2148, line: 25, baseType: !152, size: 32, offset: 864)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2153, file: !2148, line: 306, baseType: !2171, size: 4096, align: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2148, line: 34, size: 4096, align: 128, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2192, !2193, !2194, !2198, !2200, !2204}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2171, file: !2148, line: 35, baseType: !827, size: 16)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2171, file: !2148, line: 36, baseType: !827, size: 16, offset: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2171, file: !2148, line: 37, baseType: !827, size: 16, offset: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2171, file: !2148, line: 38, baseType: !827, size: 16, offset: 48)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2148, line: 39, baseType: !2178, size: 128, offset: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2148, line: 39, size: 128, elements: !2179)
!2179 = !{!2180, !2185}
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !2148, line: 40, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2148, line: 40, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2181, file: !2148, line: 41, baseType: !127, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2181, file: !2148, line: 42, baseType: !127, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !2148, line: 44, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2148, line: 44, size: 128, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2186, file: !2148, line: 45, baseType: !152, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2186, file: !2148, line: 46, baseType: !152, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2186, file: !2148, line: 47, baseType: !152, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2186, file: !2148, line: 48, baseType: !152, size: 32, offset: 96)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2171, file: !2148, line: 51, baseType: !152, size: 32, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2171, file: !2148, line: 52, baseType: !152, size: 32, offset: 224)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2171, file: !2148, line: 55, baseType: !2195, size: 1024, offset: 256)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2171, file: !2148, line: 58, baseType: !2199, size: 2048, offset: 1280)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !254)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2171, file: !2148, line: 60, baseType: !2201, size: 384, offset: 3328)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 12)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2148, line: 62, baseType: !2205, size: 384, offset: 3712)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2148, line: 62, size: 384, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2205, file: !2148, line: 63, baseType: !2201, size: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2205, file: !2148, line: 64, baseType: !2201, size: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2153, file: !2148, line: 307, baseType: !2210, size: 1088)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2148, line: 79, size: 1088, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2258}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2210, file: !2148, line: 80, baseType: !152, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2210, file: !2148, line: 81, baseType: !152, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2210, file: !2148, line: 82, baseType: !152, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2210, file: !2148, line: 83, baseType: !152, size: 32, offset: 96)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2210, file: !2148, line: 84, baseType: !152, size: 32, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2210, file: !2148, line: 85, baseType: !152, size: 32, offset: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2210, file: !2148, line: 86, baseType: !152, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2210, file: !2148, line: 88, baseType: !2166, size: 640, offset: 224)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2210, file: !2148, line: 89, baseType: !1320, size: 8, offset: 864)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2210, file: !2148, line: 90, baseType: !1320, size: 8, offset: 872)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2210, file: !2148, line: 91, baseType: !1320, size: 8, offset: 880)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2210, file: !2148, line: 92, baseType: !1320, size: 8, offset: 888)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2210, file: !2148, line: 93, baseType: !1320, size: 8, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2210, file: !2148, line: 94, baseType: !1320, size: 8, offset: 904)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2210, file: !2148, line: 95, baseType: !2227, size: 64, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2229, line: 11, size: 128, elements: !2230)
!2229 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2228, file: !2229, line: 12, baseType: !284, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2228, file: !2229, line: 13, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2235, line: 56, size: 1344, elements: !2236)
!2235 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2234, file: !2235, line: 61, baseType: !123, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2234, file: !2235, line: 62, baseType: !123, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2234, file: !2235, line: 63, baseType: !123, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2234, file: !2235, line: 64, baseType: !123, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2234, file: !2235, line: 65, baseType: !123, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2234, file: !2235, line: 66, baseType: !123, size: 64, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2234, file: !2235, line: 68, baseType: !123, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2234, file: !2235, line: 69, baseType: !123, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2234, file: !2235, line: 70, baseType: !123, size: 64, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2234, file: !2235, line: 71, baseType: !123, size: 64, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2234, file: !2235, line: 72, baseType: !123, size: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2234, file: !2235, line: 73, baseType: !123, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2234, file: !2235, line: 74, baseType: !123, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2234, file: !2235, line: 75, baseType: !123, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2234, file: !2235, line: 76, baseType: !123, size: 64, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2234, file: !2235, line: 81, baseType: !123, size: 64, offset: 960)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2234, file: !2235, line: 83, baseType: !123, size: 64, offset: 1024)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2234, file: !2235, line: 84, baseType: !123, size: 64, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !2235, line: 85, baseType: !123, size: 64, offset: 1152)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2234, file: !2235, line: 86, baseType: !123, size: 64, offset: 1216)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2234, file: !2235, line: 87, baseType: !123, size: 64, offset: 1280)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2210, file: !2148, line: 96, baseType: !152, size: 32, offset: 1024)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2153, file: !2148, line: 308, baseType: !2260, size: 4608, align: 512)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2148, line: 289, size: 4608, align: 512, elements: !2261)
!2261 = !{!2262, !2263, !2270}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2260, file: !2148, line: 290, baseType: !2171, size: 4096, align: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2260, file: !2148, line: 291, baseType: !2264, size: 512, offset: 4096)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2148, line: 268, size: 512, elements: !2265)
!2265 = !{!2266, !2267, !2268}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2264, file: !2148, line: 269, baseType: !127, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2264, file: !2148, line: 270, baseType: !127, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2264, file: !2148, line: 271, baseType: !2269, size: 384, offset: 128)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !1593)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2260, file: !2148, line: 292, baseType: !2271, offset: 4608)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, elements: !1691)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2153, file: !2148, line: 309, baseType: !2273, size: 32768)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 32768, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 4096)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1181, file: !691, line: 378, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1177, file: !691, line: 384, baseType: !1470, size: 192, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !946, file: !691, line: 500, baseType: !208, offset: 6656)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !946, file: !691, line: 501, baseType: !2281, size: 64, offset: 6656)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !691, line: 387, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !946, file: !691, line: 516, baseType: !1681, size: 64, offset: 6720)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !946, file: !691, line: 519, baseType: !326, size: 64, offset: 6784)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !946, file: !691, line: 521, baseType: !2286, size: 64, offset: 6848)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !691, line: 521, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !946, file: !691, line: 545, baseType: !715, size: 32, offset: 6912)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !946, file: !691, line: 548, baseType: !140, size: 8, offset: 6944)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !946, file: !691, line: 550, baseType: !2291, offset: 6952)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2292, line: 142, elements: !222)
!2292 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !946, file: !691, line: 554, baseType: !1926, size: 256, offset: 6976)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !946, file: !691, line: 557, baseType: !152, size: 32, offset: 7232)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !943, file: !691, line: 565, baseType: !2296, offset: 7296)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !2297)
!2297 = !{!2298}
!2298 = !DISubrange(count: -1)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !939, file: !691, line: 151, baseType: !715, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !932, file: !691, line: 156, baseType: !208, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 159, baseType: !2302, size: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 159, size: 128, elements: !2303)
!2303 = !{!2304, !2368}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2302, file: !691, line: 161, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2307)
!2307 = !{!2308, !2318, !2339, !2340, !2341, !2342, !2343, !2355, !2356, !2357}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2306, file: !31, line: 111, baseType: !2309, size: 384)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2310)
!2310 = !{!2311, !2313, !2314, !2315, !2316, !2317}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2309, file: !31, line: 20, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2309, file: !31, line: 21, baseType: !2312, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2309, file: !31, line: 22, baseType: !2312, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2309, file: !31, line: 23, baseType: !123, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2309, file: !31, line: 24, baseType: !123, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2309, file: !31, line: 25, baseType: !123, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2306, file: !31, line: 112, baseType: !2319, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2321, line: 105, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2320, file: !2321, line: 110, baseType: !123, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2320, file: !2321, line: 118, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2321, line: 95, size: 448, elements: !2327)
!2327 = !{!2328, !2329, !2334, !2335, !2336, !2337, !2338}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2326, file: !2321, line: 96, baseType: !739, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2326, file: !2321, line: 97, baseType: !2330, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2321, line: 60, baseType: !2332)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !2319}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2326, file: !2321, line: 98, baseType: !2330, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2326, file: !2321, line: 99, baseType: !140, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2326, file: !2321, line: 100, baseType: !140, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2326, file: !2321, line: 101, baseType: !339, size: 128, align: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2326, file: !2321, line: 102, baseType: !2319, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2306, file: !31, line: 113, baseType: !2320, size: 128, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2306, file: !31, line: 114, baseType: !1470, size: 192, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2306, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2306, file: !31, line: 117, baseType: !2344, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2346)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2347)
!2347 = !{!2348, !2349, !2353, !2354}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2346, file: !31, line: 73, baseType: !808, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2346, file: !31, line: 78, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2305}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2346, file: !31, line: 83, baseType: !2350, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2346, file: !31, line: 89, baseType: !995, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2306, file: !31, line: 118, baseType: !118, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2306, file: !31, line: 119, baseType: !132, size: 32, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !31, line: 120, baseType: !2358, size: 128, offset: 1024)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !31, line: 120, size: 128, elements: !2359)
!2359 = !{!2360, !2366}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2358, file: !31, line: 121, baseType: !2361, size: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2362, line: 6, size: 128, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2361, file: !2362, line: 7, baseType: !127, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2361, file: !2362, line: 8, baseType: !127, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2358, file: !31, line: 122, baseType: !2367)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, elements: !1691)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2302, file: !691, line: 162, baseType: !118, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !695, file: !691, line: 176, baseType: !339, size: 128, align: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 179, baseType: !2371, size: 32, offset: 384)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 179, size: 32, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2371, file: !691, line: 184, baseType: !715, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2371, file: !691, line: 192, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2371, file: !691, line: 194, baseType: !7, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2371, file: !691, line: 195, baseType: !132, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !690, file: !691, line: 199, baseType: !715, size: 32, offset: 416)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !625, file: !44, line: 1964, baseType: !2379, size: 64, offset: 1344)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!284, !564, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2384, line: 12, size: 256, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386, !2387, !2388, !2389, !2390}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2383, file: !2384, line: 13, baseType: !131, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2383, file: !2384, line: 16, baseType: !132, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2383, file: !2384, line: 23, baseType: !123, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2383, file: !2384, line: 30, baseType: !123, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2383, file: !2384, line: 33, baseType: !2391, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !691, line: 27, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !625, file: !44, line: 1966, baseType: !2379, size: 64, offset: 1408)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !565, file: !44, line: 1424, baseType: !2395, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2398)
!2398 = !{!2399, !2445, !2449, !2453, !2454, !2455, !2456, !2457, !2462, !2467, !2471}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2397, file: !38, line: 323, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!132, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2430, !2431, !2432}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2404, file: !38, line: 295, baseType: !607, size: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2404, file: !38, line: 296, baseType: !195, size: 128, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2404, file: !38, line: 297, baseType: !195, size: 128, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2404, file: !38, line: 298, baseType: !195, size: 128, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2404, file: !38, line: 299, baseType: !1141, size: 192, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2404, file: !38, line: 300, baseType: !208, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2404, file: !38, line: 301, baseType: !715, size: 32, offset: 704)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2404, file: !38, line: 302, baseType: !564, size: 64, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2404, file: !38, line: 303, baseType: !2415, size: 64, offset: 832)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2416)
!2416 = !{!2417, !2429}
!2417 = !DIDerivedType(tag: DW_TAG_member, scope: !2415, file: !38, line: 69, baseType: !2418, size: 32)
!2418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2415, file: !38, line: 69, size: 32, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2418, file: !38, line: 70, baseType: !402, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2418, file: !38, line: 71, baseType: !410, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2418, file: !38, line: 72, baseType: !2423, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2424, line: 24, baseType: !2425)
!2424 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2424, line: 22, size: 32, elements: !2426)
!2426 = !{!2427}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2425, file: !2424, line: 23, baseType: !2428, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2424, line: 20, baseType: !408)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2415, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2404, file: !38, line: 304, baseType: !496, size: 64, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2404, file: !38, line: 305, baseType: !123, size: 64, offset: 960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2404, file: !38, line: 306, baseType: !2433, size: 576, offset: 1024)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2434)
!2434 = !{!2435, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2433, file: !38, line: 206, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !498)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2433, file: !38, line: 207, baseType: !2436, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2433, file: !38, line: 208, baseType: !2436, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2433, file: !38, line: 209, baseType: !2436, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2433, file: !38, line: 210, baseType: !2436, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2433, file: !38, line: 211, baseType: !2436, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2433, file: !38, line: 212, baseType: !2436, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2433, file: !38, line: 213, baseType: !504, size: 64, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2433, file: !38, line: 214, baseType: !504, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2397, file: !38, line: 324, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!2403, !564, !132}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2397, file: !38, line: 325, baseType: !2450, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2403}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2397, file: !38, line: 326, baseType: !2400, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2397, file: !38, line: 327, baseType: !2400, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2397, file: !38, line: 328, baseType: !2400, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2397, file: !38, line: 329, baseType: !653, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2397, file: !38, line: 332, baseType: !2458, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2461, !396}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2397, file: !38, line: 333, baseType: !2463, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!132, !396, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2397, file: !38, line: 335, baseType: !2468, size: 64, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!132, !396, !2461}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2397, file: !38, line: 337, baseType: !2472, size: 64, offset: 640)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!132, !564, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !565, file: !44, line: 1425, baseType: !2477, size: 64, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2480)
!2480 = !{!2481, !2485, !2486, !2490, !2491, !2492, !2507, !2530, !2534, !2535, !2558}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2479, file: !38, line: 429, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!132, !564, !132, !132, !514}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2479, file: !38, line: 430, baseType: !653, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2479, file: !38, line: 431, baseType: !2487, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!132, !564, !7}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2479, file: !38, line: 432, baseType: !2487, size: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2479, file: !38, line: 433, baseType: !653, size: 64, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2479, file: !38, line: 434, baseType: !2493, size: 64, offset: 320)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!132, !564, !132, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2497, file: !38, line: 416, baseType: !132, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2497, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2497, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2497, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2497, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2497, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2497, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2497, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2479, file: !38, line: 435, baseType: !2508, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!132, !564, !2415, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2512, file: !38, line: 344, baseType: !132, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2512, file: !38, line: 345, baseType: !127, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2512, file: !38, line: 346, baseType: !127, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2512, file: !38, line: 347, baseType: !127, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2512, file: !38, line: 348, baseType: !127, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2512, file: !38, line: 349, baseType: !127, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2512, file: !38, line: 350, baseType: !127, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2512, file: !38, line: 351, baseType: !745, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2512, file: !38, line: 353, baseType: !745, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2512, file: !38, line: 354, baseType: !132, size: 32, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2512, file: !38, line: 355, baseType: !132, size: 32, offset: 608)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2512, file: !38, line: 356, baseType: !127, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2512, file: !38, line: 357, baseType: !127, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2512, file: !38, line: 358, baseType: !127, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2512, file: !38, line: 359, baseType: !745, size: 64, offset: 832)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2512, file: !38, line: 360, baseType: !132, size: 32, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2479, file: !38, line: 436, baseType: !2531, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!132, !564, !2475, !2511}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2479, file: !38, line: 438, baseType: !2508, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2479, file: !38, line: 439, baseType: !2536, size: 64, offset: 576)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!132, !564, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2540, file: !38, line: 410, baseType: !7, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2540, file: !38, line: 411, baseType: !2544, size: 1344, offset: 64)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, size: 1344, elements: !250)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2557}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !38, line: 396, baseType: !7, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2545, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2545, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2545, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2545, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2545, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2545, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2545, file: !38, line: 404, baseType: !130, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2545, file: !38, line: 405, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 126, baseType: !127)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2545, file: !38, line: 406, baseType: !2556, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2479, file: !38, line: 440, baseType: !2487, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !565, file: !44, line: 1426, baseType: !2560, size: 64, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !565, file: !44, line: 1427, baseType: !123, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !565, file: !44, line: 1428, baseType: !123, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !565, file: !44, line: 1429, baseType: !123, size: 64, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !565, file: !44, line: 1430, baseType: !356, size: 64, offset: 832)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !565, file: !44, line: 1431, baseType: !735, size: 256, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !565, file: !44, line: 1432, baseType: !132, size: 32, offset: 1152)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !565, file: !44, line: 1433, baseType: !715, size: 32, offset: 1184)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !565, file: !44, line: 1437, baseType: !2571, size: 64, offset: 1216)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !565, file: !44, line: 1449, baseType: !2576, size: 64, offset: 1280)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !372, line: 34, size: 64, elements: !2577)
!2577 = !{!2578}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2576, file: !372, line: 35, baseType: !375, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !565, file: !44, line: 1450, baseType: !195, size: 128, offset: 1344)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !565, file: !44, line: 1451, baseType: !2581, size: 64, offset: 1472)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !565, file: !44, line: 1452, baseType: !1892, size: 64, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !565, file: !44, line: 1453, baseType: !2585, size: 64, offset: 1600)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !565, file: !44, line: 1454, baseType: !607, size: 128, offset: 1664)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !565, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !565, file: !44, line: 1456, baseType: !2590, size: 2432, offset: 1856)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2596, !2628}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !38, line: 519, baseType: !7, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2590, file: !38, line: 520, baseType: !735, size: 256, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2590, file: !38, line: 521, baseType: !2595, size: 192, offset: 320)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 192, elements: !250)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2590, file: !38, line: 522, baseType: !2597, size: 1728, offset: 512)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2598, size: 1728, elements: !250)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2599)
!2599 = !{!2600, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2598, file: !38, line: 223, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2603)
!2603 = !{!2604, !2605, !2618, !2619}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2602, file: !38, line: 444, baseType: !132, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2602, file: !38, line: 445, baseType: !2606, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2608, file: !38, line: 311, baseType: !653, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2608, file: !38, line: 312, baseType: !653, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2608, file: !38, line: 313, baseType: !653, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2608, file: !38, line: 314, baseType: !653, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2608, file: !38, line: 315, baseType: !2400, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2608, file: !38, line: 316, baseType: !2400, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2608, file: !38, line: 317, baseType: !2400, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2608, file: !38, line: 318, baseType: !2472, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2602, file: !38, line: 446, baseType: !598, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2602, file: !38, line: 447, baseType: !2601, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2598, file: !38, line: 224, baseType: !132, size: 32, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2598, file: !38, line: 226, baseType: !195, size: 128, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2598, file: !38, line: 227, baseType: !123, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2598, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2598, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2598, file: !38, line: 230, baseType: !2436, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2598, file: !38, line: 231, baseType: !2436, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2598, file: !38, line: 232, baseType: !118, size: 64, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2590, file: !38, line: 523, baseType: !2629, size: 192, offset: 2240)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 192, elements: !250)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !565, file: !44, line: 1458, baseType: !2631, size: 2112, offset: 4288)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2632)
!2632 = !{!2633, !2634, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2631, file: !44, line: 1411, baseType: !132, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2631, file: !44, line: 1412, baseType: !1449, size: 128, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2631, file: !44, line: 1413, baseType: !2636, size: 1920, offset: 192)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 1920, elements: !250)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2638, line: 12, size: 640, elements: !2639)
!2638 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640, !2648, !2650, !2655, !2656}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2637, file: !2638, line: 13, baseType: !2641, size: 320)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2642, line: 17, size: 320, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2645, !2646, !2647}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2641, file: !2642, line: 18, baseType: !132, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2641, file: !2642, line: 19, baseType: !132, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2641, file: !2642, line: 20, baseType: !1449, size: 128, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2641, file: !2642, line: 22, baseType: !339, size: 128, align: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2637, file: !2638, line: 14, baseType: !2649, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2637, file: !2638, line: 15, baseType: !2651, size: 64, offset: 384)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2652, line: 16, size: 64, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2651, file: !2652, line: 17, baseType: !1184, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2637, file: !2638, line: 16, baseType: !1449, size: 128, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2637, file: !2638, line: 17, baseType: !715, size: 32, offset: 576)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !565, file: !44, line: 1465, baseType: !118, size: 64, offset: 6400)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !565, file: !44, line: 1468, baseType: !152, size: 32, offset: 6464)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !565, file: !44, line: 1470, baseType: !504, size: 64, offset: 6528)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !565, file: !44, line: 1471, baseType: !504, size: 64, offset: 6592)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !565, file: !44, line: 1473, baseType: !119, size: 32, offset: 6656)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !565, file: !44, line: 1474, baseType: !2663, size: 64, offset: 6720)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !565, file: !44, line: 1477, baseType: !2666, size: 256, offset: 6784)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !2196)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !565, file: !44, line: 1478, baseType: !2668, size: 128, offset: 7040)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2669, line: 18, baseType: !2670)
!2669 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2669, line: 16, size: 128, elements: !2671)
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2670, file: !2669, line: 17, baseType: !2673, size: 128)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 128, elements: !1703)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !565, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !565, file: !44, line: 1481, baseType: !2676, size: 32, offset: 7200)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 150, baseType: !7)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !565, file: !44, line: 1487, baseType: !1141, size: 192, offset: 7232)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !565, file: !44, line: 1493, baseType: !147, size: 64, offset: 7424)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !565, file: !44, line: 1495, baseType: !2680, size: 64, offset: 7488)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !354, line: 135, size: 1024, align: 512, elements: !2683)
!2683 = !{!2684, !2688, !2689, !2696, !2702, !2706, !2710, !2714, !2715, !2719, !2723, !2728, !2732}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2682, file: !354, line: 136, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!132, !356, !7}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2682, file: !354, line: 137, baseType: !2685, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2682, file: !354, line: 138, baseType: !2690, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!132, !2693, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2682, file: !354, line: 139, baseType: !2697, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!132, !2693, !7, !147, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2682, file: !354, line: 141, baseType: !2703, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!132, !2693}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2682, file: !354, line: 142, baseType: !2707, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!132, !356}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2682, file: !354, line: 143, baseType: !2711, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !356}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2682, file: !354, line: 144, baseType: !2711, size: 64, offset: 448)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2682, file: !354, line: 145, baseType: !2716, size: 64, offset: 512)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !356, !396}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2682, file: !354, line: 146, baseType: !2720, size: 64, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!249, !356, !249, !132}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2682, file: !354, line: 147, baseType: !2724, size: 64, offset: 640)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!352, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2682, file: !354, line: 148, baseType: !2729, size: 64, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!132, !514, !140}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2682, file: !354, line: 149, baseType: !2733, size: 64, offset: 768)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!356, !356, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !565, file: !44, line: 1500, baseType: !132, size: 32, offset: 7552)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !565, file: !44, line: 1502, baseType: !2740, size: 448, offset: 7616)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2384, line: 60, size: 448, elements: !2741)
!2741 = !{!2742, !2747, !2748, !2749, !2750, !2751, !2752}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2740, file: !2384, line: 61, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!123, !2746, !2382}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2740, file: !2384, line: 63, baseType: !2743, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2740, file: !2384, line: 66, baseType: !284, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2740, file: !2384, line: 67, baseType: !132, size: 32, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2740, file: !2384, line: 68, baseType: !7, size: 32, offset: 224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2740, file: !2384, line: 71, baseType: !195, size: 128, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2740, file: !2384, line: 77, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !565, file: !44, line: 1505, baseType: !739, size: 64, offset: 8064)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !565, file: !44, line: 1508, baseType: !739, size: 64, offset: 8128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !565, file: !44, line: 1511, baseType: !132, size: 32, offset: 8192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !565, file: !44, line: 1514, baseType: !877, size: 32, offset: 8224)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !565, file: !44, line: 1517, baseType: !2759, size: 64, offset: 8256)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1927, line: 18, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !565, file: !44, line: 1518, baseType: !603, size: 64, offset: 8320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !565, file: !44, line: 1525, baseType: !1681, size: 64, offset: 8384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !565, file: !44, line: 1532, baseType: !2764, size: 64, offset: 8448)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2765, line: 52, size: 64, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2764, file: !2765, line: 53, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2765, line: 40, size: 256, elements: !2770)
!2770 = !{!2771, !2772, !2777}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2769, file: !2765, line: 42, baseType: !208)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2769, file: !2765, line: 44, baseType: !2773, size: 192)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2765, line: 28, size: 192, elements: !2774)
!2774 = !{!2775, !2776}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2773, file: !2765, line: 29, baseType: !195, size: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2773, file: !2765, line: 31, baseType: !284, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2769, file: !2765, line: 49, baseType: !284, size: 64, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !565, file: !44, line: 1533, baseType: !2764, size: 64, offset: 8512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !565, file: !44, line: 1534, baseType: !339, size: 128, align: 64, offset: 8576)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !565, file: !44, line: 1535, baseType: !1926, size: 256, offset: 8704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !565, file: !44, line: 1537, baseType: !1141, size: 192, offset: 8960)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !565, file: !44, line: 1542, baseType: !132, size: 32, offset: 9152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !565, file: !44, line: 1545, baseType: !208, offset: 9184)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !565, file: !44, line: 1546, baseType: !195, size: 128, offset: 9216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !565, file: !44, line: 1548, baseType: !208, offset: 9344)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !565, file: !44, line: 1549, baseType: !195, size: 128, offset: 9344)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !397, file: !44, line: 624, baseType: !702, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !397, file: !44, line: 631, baseType: !123, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 639, baseType: !2790, size: 32, offset: 384)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 639, size: 32, elements: !2791)
!2791 = !{!2792, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2790, file: !44, line: 640, baseType: !2793, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2790, file: !44, line: 641, baseType: !7, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !397, file: !44, line: 643, baseType: !478, size: 32, offset: 416)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !397, file: !44, line: 644, baseType: !496, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !397, file: !44, line: 645, baseType: !500, size: 128, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !397, file: !44, line: 646, baseType: !500, size: 128, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !397, file: !44, line: 647, baseType: !500, size: 128, offset: 768)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !397, file: !44, line: 648, baseType: !208, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !397, file: !44, line: 649, baseType: !291, size: 16, offset: 896)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !397, file: !44, line: 650, baseType: !1320, size: 8, offset: 912)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !397, file: !44, line: 651, baseType: !1320, size: 8, offset: 920)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !397, file: !44, line: 652, baseType: !2556, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !397, file: !44, line: 659, baseType: !123, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !397, file: !44, line: 660, baseType: !735, size: 256, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !397, file: !44, line: 662, baseType: !123, size: 64, offset: 1344)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !397, file: !44, line: 663, baseType: !123, size: 64, offset: 1408)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !397, file: !44, line: 665, baseType: !607, size: 128, offset: 1472)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !397, file: !44, line: 666, baseType: !195, size: 128, offset: 1600)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !397, file: !44, line: 675, baseType: !195, size: 128, offset: 1728)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !397, file: !44, line: 676, baseType: !195, size: 128, offset: 1856)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !397, file: !44, line: 677, baseType: !195, size: 128, offset: 1984)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 678, baseType: !2815, size: 128, offset: 2112)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 678, size: 128, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2815, file: !44, line: 679, baseType: !603, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2815, file: !44, line: 680, baseType: !339, size: 128, align: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !397, file: !44, line: 682, baseType: !741, size: 64, offset: 2240)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !397, file: !44, line: 683, baseType: !741, size: 64, offset: 2304)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !397, file: !44, line: 684, baseType: !715, size: 32, offset: 2368)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !397, file: !44, line: 685, baseType: !715, size: 32, offset: 2400)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !397, file: !44, line: 686, baseType: !715, size: 32, offset: 2432)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !397, file: !44, line: 688, baseType: !715, size: 32, offset: 2464)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 690, baseType: !2826, size: 64, offset: 2496)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 690, size: 64, elements: !2827)
!2827 = !{!2828, !3050}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2826, file: !44, line: 691, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2831)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2832)
!2832 = !{!2833, !2834, !2838, !2843, !2847, !2848, !2849, !2853, !2866, !2867, !2874, !2878, !2879, !2883, !2884, !2888, !2893, !2894, !2898, !2902, !3010, !3014, !3015, !3019, !3020, !3024, !3028, !3033, !3037, !3041, !3045, !3049}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2831, file: !44, line: 1823, baseType: !598, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2831, file: !44, line: 1824, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!496, !326, !496, !132}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2831, file: !44, line: 1825, baseType: !2839, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!280, !326, !249, !296, !2842}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2831, file: !44, line: 1826, baseType: !2844, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!280, !326, !147, !296, !2842}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2831, file: !44, line: 1827, baseType: !812, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2831, file: !44, line: 1828, baseType: !812, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2831, file: !44, line: 1829, baseType: !2850, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!132, !815, !140}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2831, file: !44, line: 1830, baseType: !2854, size: 64, offset: 448)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!132, !326, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2859)
!2859 = !{!2860, !2865}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2858, file: !44, line: 1777, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2862)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!132, !2857, !147, !132, !496, !127, !7}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2858, file: !44, line: 1778, baseType: !496, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2831, file: !44, line: 1831, baseType: !2854, size: 64, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2831, file: !44, line: 1832, baseType: !2868, size: 64, offset: 576)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!2871, !326, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !122, line: 52, baseType: !7)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !584, line: 27, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2831, file: !44, line: 1833, baseType: !2875, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!284, !326, !7, !123}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2831, file: !44, line: 1834, baseType: !2875, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2831, file: !44, line: 1835, baseType: !2880, size: 64, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!132, !326, !949}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2831, file: !44, line: 1836, baseType: !123, size: 64, offset: 832)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2831, file: !44, line: 1837, baseType: !2885, size: 64, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!132, !396, !326}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2831, file: !44, line: 1838, baseType: !2889, size: 64, offset: 960)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!132, !326, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !118)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2831, file: !44, line: 1839, baseType: !2885, size: 64, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2831, file: !44, line: 1840, baseType: !2895, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!132, !326, !496, !496, !132}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2831, file: !44, line: 1841, baseType: !2899, size: 64, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!132, !132, !326, !132}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2831, file: !44, line: 1842, baseType: !2903, size: 64, offset: 1216)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!132, !326, !132, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2940, !2941, !2942, !2955, !2986}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2907, file: !44, line: 1063, baseType: !2906, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2907, file: !44, line: 1064, baseType: !195, size: 128, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2907, file: !44, line: 1065, baseType: !607, size: 128, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2907, file: !44, line: 1066, baseType: !195, size: 128, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2907, file: !44, line: 1069, baseType: !195, size: 128, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2907, file: !44, line: 1072, baseType: !2892, size: 64, offset: 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2907, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2907, file: !44, line: 1074, baseType: !394, size: 8, offset: 672)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2907, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2907, file: !44, line: 1076, baseType: !132, size: 32, offset: 736)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2907, file: !44, line: 1077, baseType: !1449, size: 128, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2907, file: !44, line: 1078, baseType: !326, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2907, file: !44, line: 1079, baseType: !496, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2907, file: !44, line: 1080, baseType: !496, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2907, file: !44, line: 1082, baseType: !2924, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2926)
!2926 = !{!2927, !2935, !2936, !2937, !2938, !2939}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2925, file: !44, line: 1315, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2929, line: 20, baseType: !2930)
!2929 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2929, line: 11, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2930, file: !2929, line: 12, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !220, line: 33, baseType: !2934)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 31, elements: !222)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2925, file: !44, line: 1316, baseType: !132, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2925, file: !44, line: 1317, baseType: !132, size: 32, offset: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2925, file: !44, line: 1318, baseType: !2924, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2925, file: !44, line: 1319, baseType: !326, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2925, file: !44, line: 1320, baseType: !339, size: 128, align: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2907, file: !44, line: 1084, baseType: !123, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2907, file: !44, line: 1085, baseType: !123, size: 64, offset: 1216)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2907, file: !44, line: 1087, baseType: !2943, size: 64, offset: 1280)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2946)
!2946 = !{!2947, !2951}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2945, file: !44, line: 1012, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2906, !2906}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2945, file: !44, line: 1013, baseType: !2952, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2906}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2907, file: !44, line: 1088, baseType: !2956, size: 64, offset: 1344)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2959)
!2959 = !{!2960, !2964, !2968, !2969, !2973, !2977, !2981, !2985}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2958, file: !44, line: 1017, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!2892, !2892}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2958, file: !44, line: 1018, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{null, !2892}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2958, file: !44, line: 1019, baseType: !2952, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2958, file: !44, line: 1020, baseType: !2970, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!132, !2906, !132}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2958, file: !44, line: 1021, baseType: !2974, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!140, !2906}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2958, file: !44, line: 1022, baseType: !2978, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!132, !2906, !132, !198}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2958, file: !44, line: 1023, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2906, !789}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2958, file: !44, line: 1024, baseType: !2974, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2907, file: !44, line: 1097, baseType: !2987, size: 256, offset: 1408)
!2987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2907, file: !44, line: 1089, size: 256, elements: !2988)
!2988 = !{!2989, !2998, !3004}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2987, file: !44, line: 1090, baseType: !2990, size: 256)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2991, line: 10, size: 256, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2992 = !{!2993, !2994, !2997}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2990, file: !2991, line: 11, baseType: !152, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2990, file: !2991, line: 12, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2991, line: 5, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2990, file: !2991, line: 13, baseType: !195, size: 128, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2987, file: !44, line: 1091, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2991, line: 17, size: 64, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2999, file: !2991, line: 18, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2991, line: 16, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2987, file: !44, line: 1096, baseType: !3005, size: 192)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2987, file: !44, line: 1092, size: 192, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3005, file: !44, line: 1093, baseType: !195, size: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3005, file: !44, line: 1094, baseType: !132, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3005, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2831, file: !44, line: 1843, baseType: !3011, size: 64, offset: 1280)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!280, !326, !689, !132, !296, !2842, !132}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2831, file: !44, line: 1844, baseType: !1069, size: 64, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2831, file: !44, line: 1845, baseType: !3016, size: 64, offset: 1408)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!132, !132}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2831, file: !44, line: 1846, baseType: !2903, size: 64, offset: 1472)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2831, file: !44, line: 1847, baseType: !3021, size: 64, offset: 1536)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!280, !2067, !326, !2842, !296, !7}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2831, file: !44, line: 1848, baseType: !3025, size: 64, offset: 1600)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!280, !326, !2842, !2067, !296, !7}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2831, file: !44, line: 1849, baseType: !3029, size: 64, offset: 1664)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!132, !326, !284, !3032, !789}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2831, file: !44, line: 1850, baseType: !3034, size: 64, offset: 1728)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!284, !326, !132, !496, !496}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2831, file: !44, line: 1852, baseType: !3038, size: 64, offset: 1792)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !679, !326}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2831, file: !44, line: 1856, baseType: !3042, size: 64, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!280, !326, !496, !326, !496, !296, !7}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2831, file: !44, line: 1858, baseType: !3046, size: 64, offset: 1920)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!496, !326, !496, !326, !496, !496, !7}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2831, file: !44, line: 1861, baseType: !2895, size: 64, offset: 1984)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2826, file: !44, line: 692, baseType: !632, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !397, file: !44, line: 694, baseType: !3052, size: 64, offset: 2560)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3053, file: !44, line: 1101, baseType: !208)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3053, file: !44, line: 1102, baseType: !195, size: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3053, file: !44, line: 1103, baseType: !195, size: 128, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3053, file: !44, line: 1104, baseType: !195, size: 128, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !397, file: !44, line: 695, baseType: !703, size: 1216, align: 64, offset: 2624)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !397, file: !44, line: 696, baseType: !195, size: 128, offset: 3840)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 697, baseType: !3062, size: 64, offset: 3968)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 697, size: 64, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3069, !3070}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3062, file: !44, line: 698, baseType: !2067, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3062, file: !44, line: 699, baseType: !2581, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3062, file: !44, line: 700, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3062, file: !44, line: 701, baseType: !249, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3062, file: !44, line: 702, baseType: !7, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !397, file: !44, line: 705, baseType: !119, size: 32, offset: 4032)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !397, file: !44, line: 708, baseType: !119, size: 32, offset: 4064)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !397, file: !44, line: 709, baseType: !2663, size: 64, offset: 4096)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !397, file: !44, line: 720, baseType: !118, size: 64, offset: 4160)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !357, file: !354, line: 98, baseType: !3076, size: 256, offset: 448)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !2196)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !357, file: !354, line: 101, baseType: !3078, size: 32, offset: 704)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3079, line: 25, size: 32, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3079, line: 26, baseType: !3082, size: 32)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3078, file: !3079, line: 26, size: 32, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !3082, file: !3079, line: 30, baseType: !3085, size: 32)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3082, file: !3079, line: 30, size: 32, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3085, file: !3079, line: 31, baseType: !208)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3085, file: !3079, line: 32, baseType: !132, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !357, file: !354, line: 102, baseType: !2680, size: 64, offset: 768)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !357, file: !354, line: 103, baseType: !564, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !357, file: !354, line: 104, baseType: !123, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !357, file: !354, line: 105, baseType: !118, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !354, line: 107, baseType: !3094, size: 128, offset: 1024)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !354, line: 107, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3094, file: !354, line: 108, baseType: !195, size: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3094, file: !354, line: 109, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !357, file: !354, line: 111, baseType: !195, size: 128, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !357, file: !354, line: 112, baseType: !195, size: 128, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !357, file: !354, line: 120, baseType: !3102, size: 128, offset: 1408)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !354, line: 116, size: 128, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3102, file: !354, line: 117, baseType: !607, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3102, file: !354, line: 118, baseType: !371, size: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3102, file: !354, line: 119, baseType: !339, size: 128, align: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !327, file: !44, line: 922, baseType: !396, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !327, file: !44, line: 923, baseType: !2829, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !327, file: !44, line: 929, baseType: !208, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !327, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !327, file: !44, line: 931, baseType: !739, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !327, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !327, file: !44, line: 933, baseType: !2676, size: 32, offset: 544)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !327, file: !44, line: 934, baseType: !1141, size: 192, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !327, file: !44, line: 935, baseType: !496, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !327, file: !44, line: 936, baseType: !3117, size: 192, offset: 832)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !44, line: 886, baseType: !2928)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3117, file: !44, line: 887, baseType: !1439, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3117, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3117, file: !44, line: 889, baseType: !402, size: 32, offset: 96)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3117, file: !44, line: 889, baseType: !402, size: 32, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3117, file: !44, line: 890, baseType: !132, size: 32, offset: 160)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !327, file: !44, line: 937, baseType: !1515, size: 64, offset: 1024)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !327, file: !44, line: 938, baseType: !3127, size: 256, offset: 1088)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3127, file: !44, line: 897, baseType: !123, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3127, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3127, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3127, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3127, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3127, file: !44, line: 904, baseType: !496, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !327, file: !44, line: 940, baseType: !127, size: 64, offset: 1344)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !327, file: !44, line: 945, baseType: !118, size: 64, offset: 1408)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !327, file: !44, line: 949, baseType: !195, size: 128, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !327, file: !44, line: 950, baseType: !195, size: 128, offset: 1600)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !327, file: !44, line: 952, baseType: !702, size: 64, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !327, file: !44, line: 953, baseType: !877, size: 32, offset: 1792)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !327, file: !44, line: 954, baseType: !877, size: 32, offset: 1824)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !274, line: 174, baseType: !323, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !274, line: 176, baseType: !3144, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!132, !326, !201, !316, !949}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !274, line: 90, baseType: !300, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !274, line: 91, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !264, file: !191, line: 143, baseType: !3151, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!3154, !201}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3156)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3157)
!3157 = !{!3158, !3159, !3163, !3167, !3173, !3177}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3156, file: !61, line: 40, baseType: !60, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3156, file: !61, line: 41, baseType: !3160, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!140}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3156, file: !61, line: 42, baseType: !3164, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!118}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3156, file: !61, line: 43, baseType: !3168, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!183, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3156, file: !61, line: 44, baseType: !3174, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!183}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3156, file: !61, line: 45, baseType: !435, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !264, file: !191, line: 144, baseType: !3179, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!183, !201}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !264, file: !191, line: 145, baseType: !3183, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !201, !3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !584, line: 123, size: 1024, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3320, !3321, !3322, !3323, !3324}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3190, file: !584, line: 124, baseType: !715, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3190, file: !584, line: 125, baseType: !715, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3190, file: !584, line: 135, baseType: !3189, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3190, file: !584, line: 136, baseType: !147, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3190, file: !584, line: 138, baseType: !728, size: 192, align: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3190, file: !584, line: 140, baseType: !183, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3190, file: !584, line: 141, baseType: !7, size: 32, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !584, line: 142, baseType: !3200, size: 256, offset: 512)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3190, file: !584, line: 142, size: 256, elements: !3201)
!3201 = !{!3202, !3248, !3252}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3200, file: !584, line: 143, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !584, line: 91, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3203, file: !584, line: 92, baseType: !123, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3203, file: !584, line: 94, baseType: !724, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3203, file: !584, line: 100, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !584, line: 180, size: 704, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3220, !3221, !3222, !3246, !3247}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3209, file: !584, line: 182, baseType: !3189, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3209, file: !584, line: 183, baseType: !7, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3209, file: !584, line: 186, baseType: !3214, size: 192, offset: 128)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3215, line: 19, size: 192, elements: !3216)
!3215 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3214, file: !3215, line: 20, baseType: !707, size: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3214, file: !3215, line: 21, baseType: !7, size: 32, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3214, file: !3215, line: 22, baseType: !7, size: 32, offset: 160)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3209, file: !584, line: 187, baseType: !152, size: 32, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3209, file: !584, line: 188, baseType: !152, size: 32, offset: 352)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3209, file: !584, line: 189, baseType: !3223, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !584, line: 168, size: 320, elements: !3225)
!3225 = !{!3226, !3230, !3234, !3238, !3242}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3224, file: !584, line: 169, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!132, !679, !3208}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3224, file: !584, line: 171, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!132, !3189, !147, !290}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3224, file: !584, line: 173, baseType: !3235, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!132, !3189}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3224, file: !584, line: 174, baseType: !3239, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!132, !3189, !3189, !147}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3224, file: !584, line: 176, baseType: !3243, size: 64, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!132, !679, !3189, !3208}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3209, file: !584, line: 192, baseType: !195, size: 128, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3209, file: !584, line: 194, baseType: !1449, size: 128, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3200, file: !584, line: 144, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !584, line: 103, size: 64, elements: !3250)
!3250 = !{!3251}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3249, file: !584, line: 104, baseType: !3189, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3200, file: !584, line: 145, baseType: !3253, size: 256)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !584, line: 107, size: 256, elements: !3254)
!3254 = !{!3255, !3315, !3318, !3319}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3253, file: !584, line: 108, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !584, line: 217, size: 768, elements: !3259)
!3259 = !{!3260, !3280, !3284, !3288, !3292, !3296, !3300, !3304, !3305, !3306, !3307, !3311}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3258, file: !584, line: 222, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!132, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !584, line: 197, size: 1088, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3265, file: !584, line: 199, baseType: !3189, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3265, file: !584, line: 200, baseType: !326, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3265, file: !584, line: 201, baseType: !679, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3265, file: !584, line: 202, baseType: !118, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3265, file: !584, line: 205, baseType: !1141, size: 192, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3265, file: !584, line: 206, baseType: !1141, size: 192, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3265, file: !584, line: 207, baseType: !132, size: 32, offset: 640)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3265, file: !584, line: 208, baseType: !195, size: 128, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3265, file: !584, line: 209, baseType: !249, size: 64, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3265, file: !584, line: 211, baseType: !296, size: 64, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3265, file: !584, line: 212, baseType: !140, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3265, file: !584, line: 213, baseType: !140, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3265, file: !584, line: 214, baseType: !977, size: 64, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3258, file: !584, line: 223, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3264}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3258, file: !584, line: 236, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!132, !679, !118}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3258, file: !584, line: 238, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!118, !679, !2842}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3258, file: !584, line: 239, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!118, !679, !118, !2842}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3258, file: !584, line: 240, baseType: !3297, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !679, !118}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3258, file: !584, line: 242, baseType: !3301, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!280, !3264, !249, !296, !496}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3258, file: !584, line: 252, baseType: !296, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3258, file: !584, line: 259, baseType: !140, size: 8, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3258, file: !584, line: 260, baseType: !3301, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3258, file: !584, line: 263, baseType: !3308, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!2871, !3264, !2872}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3258, file: !584, line: 266, baseType: !3312, size: 64, offset: 704)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!132, !3264, !949}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3253, file: !584, line: 109, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !584, line: 31, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !584, line: 110, baseType: !496, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3253, file: !584, line: 111, baseType: !3189, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3190, file: !584, line: 148, baseType: !118, size: 64, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3190, file: !584, line: 154, baseType: !127, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3190, file: !584, line: 156, baseType: !291, size: 16, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3190, file: !584, line: 157, baseType: !290, size: 16, offset: 912)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3190, file: !584, line: 158, baseType: !3325, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !584, line: 32, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3328, size: 32, offset: 448)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3329, line: 19, size: 32, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3328, file: !3329, line: 20, baseType: !1198, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !73, line: 463, baseType: !3338, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !187, file: !73, line: 465, baseType: !3340, size: 64, offset: 576)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !187, file: !73, line: 467, baseType: !147, size: 64, offset: 640)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !73, line: 468, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3354, !3359, !3363}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3346, file: !73, line: 88, baseType: !147, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3346, file: !73, line: 89, baseType: !302, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3346, file: !73, line: 90, baseType: !3351, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!132, !3338, !244}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3346, file: !73, line: 91, baseType: !3355, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!249, !3338, !3358, !3186, !3187}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3346, file: !73, line: 93, baseType: !3360, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3338}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3346, file: !73, line: 95, baseType: !3364, size: 64, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3367)
!3367 = !{!3368, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3366, file: !80, line: 279, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!132, !3338}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3366, file: !80, line: 280, baseType: !3360, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3366, file: !80, line: 281, baseType: !3369, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3366, file: !80, line: 282, baseType: !3369, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3366, file: !80, line: 283, baseType: !3369, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3366, file: !80, line: 284, baseType: !3369, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3366, file: !80, line: 285, baseType: !3369, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3366, file: !80, line: 286, baseType: !3369, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3366, file: !80, line: 287, baseType: !3369, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3366, file: !80, line: 288, baseType: !3369, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3366, file: !80, line: 289, baseType: !3369, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3366, file: !80, line: 290, baseType: !3369, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3366, file: !80, line: 291, baseType: !3369, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3366, file: !80, line: 292, baseType: !3369, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3366, file: !80, line: 293, baseType: !3369, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3366, file: !80, line: 294, baseType: !3369, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3366, file: !80, line: 295, baseType: !3369, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3366, file: !80, line: 296, baseType: !3369, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3366, file: !80, line: 297, baseType: !3369, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3366, file: !80, line: 298, baseType: !3369, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3366, file: !80, line: 299, baseType: !3369, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3366, file: !80, line: 300, baseType: !3369, size: 64, offset: 1344)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3366, file: !80, line: 301, baseType: !3369, size: 64, offset: 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !73, line: 470, baseType: !3395, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3397, line: 82, size: 1408, elements: !3398)
!3397 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3480, !3483, !3484}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3396, file: !3397, line: 83, baseType: !147, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3396, file: !3397, line: 84, baseType: !147, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3396, file: !3397, line: 85, baseType: !3338, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3396, file: !3397, line: 86, baseType: !302, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3396, file: !3397, line: 87, baseType: !302, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3396, file: !3397, line: 88, baseType: !302, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3396, file: !3397, line: 90, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!132, !3338, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3431, !3444, !3445, !3446, !3447, !3448, !3456, !3457, !3458, !3459, !3460, !3461}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3410, file: !67, line: 96, baseType: !147, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3410, file: !67, line: 97, baseType: !3395, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3410, file: !67, line: 99, baseType: !598, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3410, file: !67, line: 100, baseType: !147, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3410, file: !67, line: 102, baseType: !140, size: 8, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3410, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3410, file: !67, line: 105, baseType: !3419, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3422, line: 262, size: 1600, elements: !3423)
!3422 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3423 = !{!3424, !3425, !3426, !3430}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3421, file: !3422, line: 263, baseType: !2666, size: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3421, file: !3422, line: 264, baseType: !2666, size: 256, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3421, file: !3422, line: 265, baseType: !3427, size: 1024, offset: 512)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !3428)
!3428 = !{!3429}
!3429 = !DISubrange(count: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3421, file: !3422, line: 266, baseType: !183, size: 64, offset: 1536)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3410, file: !67, line: 106, baseType: !3432, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3422, line: 210, size: 256, elements: !3435)
!3435 = !{!3436, !3440, !3442, !3443}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3434, file: !3422, line: 211, baseType: !3437, size: 72)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 72, elements: !3438)
!3438 = !{!3439}
!3439 = !DISubrange(count: 9)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3434, file: !3422, line: 212, baseType: !3441, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3422, line: 14, baseType: !123)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3434, file: !3422, line: 213, baseType: !119, size: 32, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3434, file: !3422, line: 214, baseType: !119, size: 32, offset: 224)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3410, file: !67, line: 108, baseType: !3369, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3410, file: !67, line: 109, baseType: !3360, size: 64, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3410, file: !67, line: 110, baseType: !3369, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3410, file: !67, line: 111, baseType: !3360, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3410, file: !67, line: 112, baseType: !3449, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!132, !3338, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3454)
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3453, file: !80, line: 51, baseType: !132, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3410, file: !67, line: 113, baseType: !3369, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3410, file: !67, line: 114, baseType: !302, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3410, file: !67, line: 115, baseType: !302, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3410, file: !67, line: 117, baseType: !3364, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3410, file: !67, line: 118, baseType: !3360, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3410, file: !67, line: 120, baseType: !3462, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3396, file: !3397, line: 91, baseType: !3351, size: 64, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3396, file: !3397, line: 92, baseType: !3369, size: 64, offset: 512)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3396, file: !3397, line: 93, baseType: !3360, size: 64, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3396, file: !3397, line: 94, baseType: !3369, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3396, file: !3397, line: 95, baseType: !3360, size: 64, offset: 704)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3396, file: !3397, line: 97, baseType: !3369, size: 64, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3396, file: !3397, line: 98, baseType: !3369, size: 64, offset: 832)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3396, file: !3397, line: 100, baseType: !3449, size: 64, offset: 896)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3396, file: !3397, line: 101, baseType: !3369, size: 64, offset: 960)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3396, file: !3397, line: 103, baseType: !3369, size: 64, offset: 1024)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3396, file: !3397, line: 105, baseType: !3369, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3396, file: !3397, line: 107, baseType: !3364, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3396, file: !3397, line: 109, baseType: !3477, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3397, line: 109, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3396, file: !3397, line: 111, baseType: !3481, size: 64, offset: 1280)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3397, line: 111, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3396, file: !3397, line: 112, baseType: !613, offset: 1344)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3396, file: !3397, line: 114, baseType: !140, size: 8, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !73, line: 471, baseType: !3409, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !187, file: !73, line: 473, baseType: !118, size: 64, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !187, file: !73, line: 475, baseType: !118, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !73, line: 480, baseType: !1141, size: 192, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !187, file: !73, line: 484, baseType: !3490, size: 576, offset: 1216)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3490, file: !73, line: 362, baseType: !195, size: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3490, file: !73, line: 363, baseType: !195, size: 128, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3490, file: !73, line: 364, baseType: !195, size: 128, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3490, file: !73, line: 365, baseType: !195, size: 128, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3490, file: !73, line: 366, baseType: !140, size: 8, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3490, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !187, file: !73, line: 485, baseType: !3499, size: 2304, offset: 1792)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3596, !3600}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3499, file: !80, line: 566, baseType: !3452, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3499, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3499, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3499, file: !80, line: 569, baseType: !140, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3499, file: !80, line: 570, baseType: !140, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3499, file: !80, line: 571, baseType: !140, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3499, file: !80, line: 572, baseType: !140, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3499, file: !80, line: 573, baseType: !140, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3499, file: !80, line: 574, baseType: !140, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3499, file: !80, line: 575, baseType: !140, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3499, file: !80, line: 576, baseType: !140, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3499, file: !80, line: 577, baseType: !152, size: 32, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3499, file: !80, line: 578, baseType: !208, offset: 96)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3499, file: !80, line: 580, baseType: !195, size: 128, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3499, file: !80, line: 581, baseType: !1470, size: 192, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3499, file: !80, line: 582, baseType: !3517, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3519, line: 43, size: 1472, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3528, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 44, baseType: !147, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3518, file: !3519, line: 45, baseType: !132, size: 32, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3518, file: !3519, line: 46, baseType: !195, size: 128, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3518, file: !3519, line: 47, baseType: !208, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3518, file: !3519, line: 48, baseType: !3526, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3518, file: !3519, line: 49, baseType: !3529, size: 320, offset: 320)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3530, line: 11, size: 320, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3531 = !{!3532, !3533, !3534, !3539}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3529, file: !3530, line: 16, baseType: !607, size: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3529, file: !3530, line: 17, baseType: !123, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3529, file: !3530, line: 18, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !3538}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3529, file: !3530, line: 19, baseType: !152, size: 32, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3518, file: !3519, line: 50, baseType: !123, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3518, file: !3519, line: 51, baseType: !1268, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3518, file: !3519, line: 52, baseType: !1268, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3518, file: !3519, line: 53, baseType: !1268, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3518, file: !3519, line: 54, baseType: !1268, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3518, file: !3519, line: 55, baseType: !1268, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3518, file: !3519, line: 56, baseType: !123, size: 64, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3518, file: !3519, line: 57, baseType: !123, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3518, file: !3519, line: 58, baseType: !123, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3518, file: !3519, line: 59, baseType: !123, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3518, file: !3519, line: 60, baseType: !123, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3518, file: !3519, line: 61, baseType: !3338, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3518, file: !3519, line: 62, baseType: !140, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3518, file: !3519, line: 63, baseType: !140, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3499, file: !80, line: 583, baseType: !140, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3499, file: !80, line: 584, baseType: !140, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3499, file: !80, line: 585, baseType: !140, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3499, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3499, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3499, file: !80, line: 592, baseType: !1260, size: 512, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3499, file: !80, line: 593, baseType: !127, size: 64, offset: 1088)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3499, file: !80, line: 594, baseType: !1926, size: 256, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3499, file: !80, line: 595, baseType: !1449, size: 128, offset: 1408)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3499, file: !80, line: 596, baseType: !3526, size: 64, offset: 1536)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3499, file: !80, line: 597, baseType: !715, size: 32, offset: 1600)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3499, file: !80, line: 598, baseType: !715, size: 32, offset: 1632)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3499, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3499, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3499, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3499, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3499, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3499, file: !80, line: 604, baseType: !140, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3499, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3499, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3499, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3499, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3499, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3499, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3499, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3499, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3499, file: !80, line: 613, baseType: !132, size: 32, offset: 1792)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3499, file: !80, line: 614, baseType: !132, size: 32, offset: 1824)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3499, file: !80, line: 615, baseType: !127, size: 64, offset: 1856)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3499, file: !80, line: 616, baseType: !127, size: 64, offset: 1920)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3499, file: !80, line: 617, baseType: !127, size: 64, offset: 1984)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3499, file: !80, line: 618, baseType: !127, size: 64, offset: 2048)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3499, file: !80, line: 620, baseType: !3587, size: 64, offset: 2112)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3588, file: !80, line: 537, baseType: !208)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3588, file: !80, line: 538, baseType: !7, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3588, file: !80, line: 540, baseType: !195, size: 128, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3588, file: !80, line: 543, baseType: !3594, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3499, file: !80, line: 621, baseType: !3597, size: 64, offset: 2176)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3338, !1412}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3499, file: !80, line: 622, baseType: !3601, size: 64, offset: 2240)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !187, file: !73, line: 486, baseType: !3604, size: 64, offset: 4096)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3613, !3614, !3615}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3605, file: !80, line: 643, baseType: !3366, size: 1472)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3605, file: !80, line: 644, baseType: !3369, size: 64, offset: 1472)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3605, file: !80, line: 645, baseType: !3610, size: 64, offset: 1536)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !3338, !140}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3605, file: !80, line: 646, baseType: !3369, size: 64, offset: 1600)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3605, file: !80, line: 647, baseType: !3360, size: 64, offset: 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3605, file: !80, line: 648, baseType: !3360, size: 64, offset: 1728)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !187, file: !73, line: 493, baseType: !3617, size: 64, offset: 4160)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !187, file: !73, line: 499, baseType: !195, size: 128, offset: 4224)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !187, file: !73, line: 502, baseType: !3621, size: 64, offset: 4352)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3624, line: 14, size: 1472, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/dma-map-ops.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3631, !3635, !3639, !3643, !3647, !3651, !3655, !3674, !3678, !3682, !3686, !3690, !3694, !3695, !3699, !3700, !3704, !3705, !3709, !3713, !3717, !3721}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3623, file: !3624, line: 15, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!118, !3338, !296, !3630, !131, !123}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3623, file: !3624, line: 18, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3338, !296, !118, !888, !123}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pages", scope: !3623, file: !3624, line: 20, baseType: !3636, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!689, !3338, !296, !3630, !93, !131}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !3623, file: !3624, line: 23, baseType: !3640, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !3338, !296, !689, !888, !93}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_noncoherent", scope: !3623, file: !3624, line: 25, baseType: !3644, size: 64, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!118, !3338, !296, !3630, !93, !131}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "free_noncoherent", scope: !3623, file: !3624, line: 28, baseType: !3648, size: 64, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3338, !296, !118, !888, !93}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3623, file: !3624, line: 30, baseType: !3652, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!132, !3338, !949, !118, !888, !296, !123}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_sgtable", scope: !3623, file: !3624, line: 33, baseType: !3656, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!132, !3338, !3659, !118, !888, !296, !123}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3661, line: 42, size: 128, elements: !3662)
!3661 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3662 = !{!3663, !3672, !3673}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3660, file: !3661, line: 43, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3661, line: 11, size: 256, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670, !3671}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3665, file: !3661, line: 12, baseType: !123, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3665, file: !3661, line: 13, baseType: !7, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3665, file: !3661, line: 14, baseType: !7, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3665, file: !3661, line: 15, baseType: !888, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3665, file: !3661, line: 17, baseType: !7, size: 32, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3660, file: !3661, line: 44, baseType: !7, size: 32, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3660, file: !3661, line: 45, baseType: !7, size: 32, offset: 96)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "map_page", scope: !3623, file: !3624, line: 37, baseType: !3675, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!888, !3338, !689, !123, !296, !93, !123}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_page", scope: !3623, file: !3624, line: 40, baseType: !3679, size: 64, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3338, !888, !296, !93, !123}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "map_sg", scope: !3623, file: !3624, line: 47, baseType: !3683, size: 64, offset: 640)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!132, !3338, !3664, !132, !93, !123}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sg", scope: !3623, file: !3624, line: 49, baseType: !3687, size: 64, offset: 704)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3338, !3664, !132, !93, !123}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "map_resource", scope: !3623, file: !3624, line: 51, baseType: !3691, size: 64, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!888, !3338, !126, !296, !93, !123}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_resource", scope: !3623, file: !3624, line: 54, baseType: !3679, size: 64, offset: 832)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_cpu", scope: !3623, file: !3624, line: 57, baseType: !3696, size: 64, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3338, !888, !296, !93}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_device", scope: !3623, file: !3624, line: 59, baseType: !3696, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_cpu", scope: !3623, file: !3624, line: 62, baseType: !3701, size: 64, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3338, !3664, !132, !93}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_device", scope: !3623, file: !3624, line: 64, baseType: !3701, size: 64, offset: 1088)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sync", scope: !3623, file: !3624, line: 66, baseType: !3706, size: 64, offset: 1152)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3338, !118, !296, !93}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_supported", scope: !3623, file: !3624, line: 68, baseType: !3710, size: 64, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!132, !3338, !127}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_required_mask", scope: !3623, file: !3624, line: 69, baseType: !3714, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!127, !3338}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "max_mapping_size", scope: !3623, file: !3624, line: 70, baseType: !3718, size: 64, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!296, !3338}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_merge_boundary", scope: !3623, file: !3624, line: 71, baseType: !3722, size: 64, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!123, !3338}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !187, file: !73, line: 504, baseType: !3726, size: 64, offset: 4416)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !187, file: !73, line: 505, baseType: !127, size: 64, offset: 4480)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !187, file: !73, line: 510, baseType: !127, size: 64, offset: 4544)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !187, file: !73, line: 511, baseType: !3730, size: 64, offset: 4608)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3733, line: 20, size: 256, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/dma-direct.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_start", scope: !3732, file: !3733, line: 21, baseType: !126, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dma_start", scope: !3732, file: !3733, line: 22, baseType: !888, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3732, file: !3733, line: 23, baseType: !127, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3732, file: !3733, line: 24, baseType: !127, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !187, file: !73, line: 513, baseType: !3740, size: 64, offset: 4672)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3741, file: !73, line: 293, baseType: !7, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3741, file: !73, line: 294, baseType: !123, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !187, file: !73, line: 515, baseType: !195, size: 128, offset: 4736)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !187, file: !73, line: 526, baseType: !3747, offset: 4864)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3748, line: 5, elements: !222)
!3748 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !187, file: !73, line: 528, baseType: !142, size: 64, offset: 4864)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !187, file: !73, line: 529, baseType: !159, size: 64, offset: 4928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !187, file: !73, line: 534, baseType: !478, size: 32, offset: 4992)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !73, line: 535, baseType: !152, size: 32, offset: 5024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !187, file: !73, line: 537, baseType: !208, offset: 5056)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !187, file: !73, line: 538, baseType: !195, size: 128, offset: 5056)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !187, file: !73, line: 540, baseType: !3756, size: 64, offset: 5184)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3758, line: 54, size: 960, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !{!3760, !3761, !3762, !3763, !3764, !3765, !3766, !3770, !3774, !3775, !3776, !3777, !3781, !3785, !3786}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3757, file: !3758, line: 55, baseType: !147, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3757, file: !3758, line: 56, baseType: !598, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3757, file: !3758, line: 58, baseType: !302, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3757, file: !3758, line: 59, baseType: !302, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3757, file: !3758, line: 60, baseType: !201, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3757, file: !3758, line: 62, baseType: !3351, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3757, file: !3758, line: 63, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!249, !3338, !3358}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3757, file: !3758, line: 65, baseType: !3771, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3756}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3757, file: !3758, line: 66, baseType: !3360, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3757, file: !3758, line: 68, baseType: !3369, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3757, file: !3758, line: 70, baseType: !3154, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3757, file: !3758, line: 71, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!183, !3338}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3757, file: !3758, line: 73, baseType: !3782, size: 64, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !3338, !3186, !3187}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3757, file: !3758, line: 75, baseType: !3364, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3757, file: !3758, line: 77, baseType: !3481, size: 64, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !187, file: !73, line: 541, baseType: !302, size: 64, offset: 5248)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !73, line: 543, baseType: !3360, size: 64, offset: 5312)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !187, file: !73, line: 544, baseType: !3790, size: 64, offset: 5376)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !187, file: !73, line: 545, baseType: !3793, size: 64, offset: 5440)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !187, file: !73, line: 547, baseType: !140, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !187, file: !73, line: 548, baseType: !140, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !187, file: !73, line: 549, baseType: !140, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !187, file: !73, line: 550, baseType: !140, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !163, file: !156, line: 116, baseType: !3800, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!140, !177, !147}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !163, file: !156, line: 118, baseType: !3804, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!132, !177, !147, !7, !118, !296}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !163, file: !156, line: 123, baseType: !3808, size: 64, offset: 384)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!132, !177, !147, !3811, !296}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !163, file: !156, line: 126, baseType: !3813, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!147, !177}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !163, file: !156, line: 127, baseType: !3813, size: 64, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !163, file: !156, line: 128, baseType: !3818, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!159, !177}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !163, file: !156, line: 130, baseType: !3822, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!159, !177, !159}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !163, file: !156, line: 133, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!159, !177, !147}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !163, file: !156, line: 135, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!132, !177, !147, !147, !7, !7, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !156, line: 43, size: 640, elements: !3835)
!3835 = !{!3836, !3837, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3834, file: !156, line: 44, baseType: !159, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3834, file: !156, line: 45, baseType: !7, size: 32, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3834, file: !156, line: 46, baseType: !3839, size: 512, offset: 128)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !1298)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !163, file: !156, line: 140, baseType: !3822, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !163, file: !156, line: 143, baseType: !3818, size: 64, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !163, file: !156, line: 145, baseType: !166, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !163, file: !156, line: 146, baseType: !3844, size: 64, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!132, !177, !3847}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !156, line: 29, size: 128, elements: !3849)
!3849 = !{!3850, !3851, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3848, file: !156, line: 30, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3848, file: !156, line: 31, baseType: !7, size: 32, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3848, file: !156, line: 32, baseType: !177, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !163, file: !156, line: 148, baseType: !3854, size: 64, offset: 1088)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!132, !177, !3338}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !155, file: !156, line: 20, baseType: !3338, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !143, file: !144, line: 57, baseType: !3859, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !144, line: 31, size: 704, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3860, file: !144, line: 32, baseType: !249, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3860, file: !144, line: 33, baseType: !132, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3860, file: !144, line: 34, baseType: !118, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3860, file: !144, line: 35, baseType: !3859, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3860, file: !144, line: 43, baseType: !317, size: 448, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !143, file: !144, line: 58, baseType: !3859, size: 64, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 59, baseType: !142, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !143, file: !144, line: 60, baseType: !142, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !143, file: !144, line: 61, baseType: !142, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !144, line: 63, baseType: !190, size: 512, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !143, file: !144, line: 65, baseType: !123, size: 64, offset: 1216)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !143, file: !144, line: 66, baseType: !118, size: 64, offset: 1280)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3875, size: 1536, elements: !250)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_bus", file: !3, line: 44, size: 512, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3883, !3887, !3894, !3898, !3899}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3875, file: !3, line: 45, baseType: !147, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "addresses", scope: !3875, file: !3, line: 46, baseType: !147, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3875, file: !3, line: 47, baseType: !3880, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!132, !142}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "count_cells", scope: !3875, file: !3, line: 48, baseType: !3884, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !142, !673, !673}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3875, file: !3, line: 50, baseType: !3888, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!127, !3891, !3892, !132, !132, !132}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3875, file: !3, line: 52, baseType: !3895, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!132, !3891, !127, !132}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "has_flags", scope: !3875, file: !3, line: 53, baseType: !140, size: 8, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_flags", scope: !3875, file: !3, line: 54, baseType: !3900, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!7, !3892}
!3903 = !{i32 7, !"Dwarf Version", i32 4}
!3904 = !{i32 2, !"Debug Info Version", i32 3}
!3905 = !{i32 1, !"wchar_size", i32 2}
!3906 = !{i32 1, !"Code Model", i32 2}
!3907 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3908 = distinct !DISubprogram(name: "of_get_pci_address", scope: !3, file: !3, line: 198, type: !3909, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3892, !142, !132, !3726, !2649}
!3911 = !DILocalVariable(name: "dev", arg: 1, scope: !3908, file: !3, line: 198, type: !142)
!3912 = !DILocation(line: 198, column: 54, scope: !3908)
!3913 = !DILocalVariable(name: "bar_no", arg: 2, scope: !3908, file: !3, line: 198, type: !132)
!3914 = !DILocation(line: 198, column: 63, scope: !3908)
!3915 = !DILocalVariable(name: "size", arg: 3, scope: !3908, file: !3, line: 198, type: !3726)
!3916 = !DILocation(line: 198, column: 76, scope: !3908)
!3917 = !DILocalVariable(name: "flags", arg: 4, scope: !3908, file: !3, line: 199, type: !2649)
!3918 = !DILocation(line: 199, column: 18, scope: !3908)
!3919 = !DILocalVariable(name: "prop", scope: !3908, file: !3, line: 201, type: !3892)
!3920 = !DILocation(line: 201, column: 16, scope: !3908)
!3921 = !DILocalVariable(name: "psize", scope: !3908, file: !3, line: 202, type: !7)
!3922 = !DILocation(line: 202, column: 15, scope: !3908)
!3923 = !DILocalVariable(name: "parent", scope: !3908, file: !3, line: 203, type: !142)
!3924 = !DILocation(line: 203, column: 22, scope: !3908)
!3925 = !DILocalVariable(name: "bus", scope: !3908, file: !3, line: 204, type: !3926)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3927 = !DILocation(line: 204, column: 17, scope: !3908)
!3928 = !DILocalVariable(name: "onesize", scope: !3908, file: !3, line: 205, type: !132)
!3929 = !DILocation(line: 205, column: 6, scope: !3908)
!3930 = !DILocalVariable(name: "i", scope: !3908, file: !3, line: 205, type: !132)
!3931 = !DILocation(line: 205, column: 15, scope: !3908)
!3932 = !DILocalVariable(name: "na", scope: !3908, file: !3, line: 205, type: !132)
!3933 = !DILocation(line: 205, column: 18, scope: !3908)
!3934 = !DILocalVariable(name: "ns", scope: !3908, file: !3, line: 205, type: !132)
!3935 = !DILocation(line: 205, column: 22, scope: !3908)
!3936 = !DILocation(line: 208, column: 25, scope: !3908)
!3937 = !DILocation(line: 208, column: 11, scope: !3908)
!3938 = !DILocation(line: 208, column: 9, scope: !3908)
!3939 = !DILocation(line: 209, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 209, column: 6)
!3941 = !DILocation(line: 209, column: 13, scope: !3940)
!3942 = !DILocation(line: 209, column: 6, scope: !3908)
!3943 = !DILocation(line: 210, column: 3, scope: !3940)
!3944 = !DILocation(line: 211, column: 21, scope: !3908)
!3945 = !DILocation(line: 211, column: 8, scope: !3908)
!3946 = !DILocation(line: 211, column: 6, scope: !3908)
!3947 = !DILocation(line: 212, column: 13, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 212, column: 6)
!3949 = !DILocation(line: 212, column: 18, scope: !3948)
!3950 = !DILocation(line: 212, column: 6, scope: !3948)
!3951 = !DILocation(line: 212, column: 6, scope: !3908)
!3952 = !DILocation(line: 213, column: 15, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 212, column: 32)
!3954 = !DILocation(line: 213, column: 3, scope: !3953)
!3955 = !DILocation(line: 214, column: 3, scope: !3953)
!3956 = !DILocation(line: 216, column: 2, scope: !3908)
!3957 = !DILocation(line: 216, column: 7, scope: !3908)
!3958 = !DILocation(line: 216, column: 19, scope: !3908)
!3959 = !DILocation(line: 217, column: 14, scope: !3908)
!3960 = !DILocation(line: 217, column: 2, scope: !3908)
!3961 = !DILocation(line: 218, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 218, column: 6)
!3963 = !DILocation(line: 218, column: 6, scope: !3908)
!3964 = !DILocation(line: 219, column: 3, scope: !3962)
!3965 = !DILocation(line: 222, column: 25, scope: !3908)
!3966 = !DILocation(line: 222, column: 30, scope: !3908)
!3967 = !DILocation(line: 222, column: 35, scope: !3908)
!3968 = !DILocation(line: 222, column: 9, scope: !3908)
!3969 = !DILocation(line: 222, column: 7, scope: !3908)
!3970 = !DILocation(line: 223, column: 6, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 223, column: 6)
!3972 = !DILocation(line: 223, column: 11, scope: !3971)
!3973 = !DILocation(line: 223, column: 6, scope: !3908)
!3974 = !DILocation(line: 224, column: 3, scope: !3971)
!3975 = !DILocation(line: 225, column: 8, scope: !3908)
!3976 = !DILocation(line: 227, column: 12, scope: !3908)
!3977 = !DILocation(line: 227, column: 17, scope: !3908)
!3978 = !DILocation(line: 227, column: 15, scope: !3908)
!3979 = !DILocation(line: 227, column: 10, scope: !3908)
!3980 = !DILocation(line: 228, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 228, column: 2)
!3982 = !DILocation(line: 228, column: 7, scope: !3981)
!3983 = !DILocation(line: 228, column: 14, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 228, column: 2)
!3985 = !DILocation(line: 228, column: 23, scope: !3984)
!3986 = !DILocation(line: 228, column: 20, scope: !3984)
!3987 = !DILocation(line: 228, column: 2, scope: !3981)
!3988 = !DILocalVariable(name: "val", scope: !3989, file: !3, line: 229, type: !152)
!3989 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 228, column: 72)
!3990 = !DILocation(line: 229, column: 7, scope: !3989)
!3991 = !DILocation(line: 229, column: 13, scope: !3989)
!3992 = !DILocation(line: 230, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 230, column: 7)
!3994 = !DILocation(line: 230, column: 12, scope: !3993)
!3995 = !DILocation(line: 230, column: 25, scope: !3993)
!3996 = !DILocation(line: 230, column: 32, scope: !3993)
!3997 = !DILocation(line: 230, column: 37, scope: !3993)
!3998 = !DILocation(line: 230, column: 20, scope: !3993)
!3999 = !DILocation(line: 230, column: 7, scope: !3989)
!4000 = !DILocation(line: 231, column: 8, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 231, column: 8)
!4002 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 230, column: 60)
!4003 = !DILocation(line: 231, column: 8, scope: !4002)
!4004 = !DILocation(line: 232, column: 28, scope: !4001)
!4005 = !DILocation(line: 232, column: 35, scope: !4001)
!4006 = !DILocation(line: 232, column: 33, scope: !4001)
!4007 = !DILocation(line: 232, column: 39, scope: !4001)
!4008 = !DILocation(line: 232, column: 13, scope: !4001)
!4009 = !DILocation(line: 232, column: 6, scope: !4001)
!4010 = !DILocation(line: 232, column: 11, scope: !4001)
!4011 = !DILocation(line: 232, column: 5, scope: !4001)
!4012 = !DILocation(line: 233, column: 8, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 233, column: 8)
!4014 = !DILocation(line: 233, column: 8, scope: !4002)
!4015 = !DILocation(line: 234, column: 14, scope: !4013)
!4016 = !DILocation(line: 234, column: 19, scope: !4013)
!4017 = !DILocation(line: 234, column: 29, scope: !4013)
!4018 = !DILocation(line: 234, column: 6, scope: !4013)
!4019 = !DILocation(line: 234, column: 12, scope: !4013)
!4020 = !DILocation(line: 234, column: 5, scope: !4013)
!4021 = !DILocation(line: 235, column: 11, scope: !4002)
!4022 = !DILocation(line: 235, column: 4, scope: !4002)
!4023 = !DILocation(line: 237, column: 2, scope: !3989)
!4024 = !DILocation(line: 228, column: 41, scope: !3984)
!4025 = !DILocation(line: 228, column: 38, scope: !3984)
!4026 = !DILocation(line: 228, column: 58, scope: !3984)
!4027 = !DILocation(line: 228, column: 55, scope: !3984)
!4028 = !DILocation(line: 228, column: 68, scope: !3984)
!4029 = !DILocation(line: 228, column: 2, scope: !3984)
!4030 = distinct !{!4030, !3987, !4031}
!4031 = !DILocation(line: 237, column: 2, scope: !3981)
!4032 = !DILocation(line: 238, column: 2, scope: !3908)
!4033 = !DILocation(line: 239, column: 1, scope: !3908)
!4034 = distinct !DISubprogram(name: "of_match_bus", scope: !3, file: !3, line: 410, type: !4035, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!3926, !142}
!4037 = !DILocalVariable(name: "np", arg: 1, scope: !4034, file: !3, line: 410, type: !142)
!4038 = !DILocation(line: 410, column: 56, scope: !4034)
!4039 = !DILocalVariable(name: "i", scope: !4034, file: !3, line: 412, type: !132)
!4040 = !DILocation(line: 412, column: 6, scope: !4034)
!4041 = !DILocation(line: 414, column: 9, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 414, column: 2)
!4043 = !DILocation(line: 414, column: 7, scope: !4042)
!4044 = !DILocation(line: 414, column: 14, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 414, column: 2)
!4046 = !DILocation(line: 414, column: 16, scope: !4045)
!4047 = !DILocation(line: 414, column: 2, scope: !4042)
!4048 = !DILocation(line: 415, column: 18, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 415, column: 7)
!4050 = !DILocation(line: 415, column: 8, scope: !4049)
!4051 = !DILocation(line: 415, column: 21, scope: !4049)
!4052 = !DILocation(line: 415, column: 27, scope: !4049)
!4053 = !DILocation(line: 415, column: 40, scope: !4049)
!4054 = !DILocation(line: 415, column: 30, scope: !4049)
!4055 = !DILocation(line: 415, column: 43, scope: !4049)
!4056 = !DILocation(line: 415, column: 49, scope: !4049)
!4057 = !DILocation(line: 415, column: 7, scope: !4045)
!4058 = !DILocation(line: 416, column: 22, scope: !4049)
!4059 = !DILocation(line: 416, column: 12, scope: !4049)
!4060 = !DILocation(line: 416, column: 4, scope: !4049)
!4061 = !DILocation(line: 415, column: 51, scope: !4049)
!4062 = !DILocation(line: 414, column: 42, scope: !4045)
!4063 = !DILocation(line: 414, column: 2, scope: !4045)
!4064 = distinct !{!4064, !4047, !4065}
!4065 = !DILocation(line: 416, column: 23, scope: !4042)
!4066 = !DILocation(line: 417, column: 2, scope: !4034)
!4067 = !DILocation(line: 417, column: 2, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 417, column: 2)
!4069 = !DILocation(line: 417, column: 2, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 417, column: 2)
!4071 = !DILocation(line: 417, column: 2, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 417, column: 2)
!4073 = !{i32 -2141573764, i32 -2141573735, i32 -2141573689, i32 -2141573631, i32 -2141573577, i32 -2141573523, i32 -2141573468, i32 -2141573437}
!4074 = !DILocation(line: 417, column: 2, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 417, column: 2)
!4076 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 417, column: 2)
!4077 = !{i32 -2141572994, i32 -2141572987, i32 -2141572933, i32 -2141572902, i32 -2141572872}
!4078 = !DILocation(line: 417, column: 2, scope: !4076)
!4079 = !DILocation(line: 418, column: 2, scope: !4034)
!4080 = !DILocation(line: 419, column: 1, scope: !4034)
!4081 = distinct !DISubprogram(name: "of_node_put", scope: !144, file: !144, line: 129, type: !4082, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !142}
!4084 = !DILocalVariable(name: "node", arg: 1, scope: !4081, file: !144, line: 129, type: !142)
!4085 = !DILocation(line: 129, column: 52, scope: !4081)
!4086 = !DILocation(line: 129, column: 60, scope: !4081)
!4087 = distinct !DISubprogram(name: "__fswab32", scope: !4088, file: !4088, line: 57, type: !4089, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4088 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!119, !119}
!4091 = !DILocalVariable(name: "val", arg: 1, scope: !4087, file: !4088, line: 57, type: !119)
!4092 = !DILocation(line: 57, column: 57, scope: !4087)
!4093 = !DILocation(line: 60, column: 23, scope: !4087)
!4094 = !DILocation(line: 60, column: 9, scope: !4087)
!4095 = !DILocation(line: 60, column: 2, scope: !4087)
!4096 = distinct !DISubprogram(name: "of_read_number", scope: !144, file: !144, line: 234, type: !4097, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!127, !3892, !132}
!4099 = !DILocalVariable(name: "cell", arg: 1, scope: !4096, file: !144, line: 234, type: !3892)
!4100 = !DILocation(line: 234, column: 48, scope: !4096)
!4101 = !DILocalVariable(name: "size", arg: 2, scope: !4096, file: !144, line: 234, type: !132)
!4102 = !DILocation(line: 234, column: 58, scope: !4096)
!4103 = !DILocalVariable(name: "r", scope: !4096, file: !144, line: 236, type: !127)
!4104 = !DILocation(line: 236, column: 6, scope: !4096)
!4105 = !DILocation(line: 237, column: 2, scope: !4096)
!4106 = !DILocation(line: 237, column: 13, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !144, line: 237, column: 2)
!4108 = distinct !DILexicalBlock(scope: !4096, file: !144, line: 237, column: 2)
!4109 = !DILocation(line: 237, column: 2, scope: !4108)
!4110 = !DILocation(line: 238, column: 8, scope: !4107)
!4111 = !DILocation(line: 238, column: 10, scope: !4107)
!4112 = !DILocation(line: 238, column: 19, scope: !4107)
!4113 = !DILocation(line: 238, column: 17, scope: !4107)
!4114 = !DILocation(line: 238, column: 5, scope: !4107)
!4115 = !DILocation(line: 238, column: 3, scope: !4107)
!4116 = !DILocation(line: 237, column: 21, scope: !4107)
!4117 = !DILocation(line: 237, column: 2, scope: !4107)
!4118 = distinct !{!4118, !4109, !4119}
!4119 = !DILocation(line: 238, column: 19, scope: !4108)
!4120 = !DILocation(line: 239, column: 9, scope: !4096)
!4121 = !DILocation(line: 239, column: 2, scope: !4096)
!4122 = distinct !DISubprogram(name: "of_pci_address_to_resource", scope: !3, file: !3, line: 242, type: !4123, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!132, !142, !132, !4125}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4127, line: 20, size: 512, elements: !4128)
!4127 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4126, file: !4127, line: 21, baseType: !124, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4126, file: !4127, line: 22, baseType: !124, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4126, file: !4127, line: 23, baseType: !147, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !4127, line: 24, baseType: !123, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4126, file: !4127, line: 25, baseType: !123, size: 64, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4126, file: !4127, line: 26, baseType: !4125, size: 64, offset: 320)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4126, file: !4127, line: 26, baseType: !4125, size: 64, offset: 384)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4126, file: !4127, line: 26, baseType: !4125, size: 64, offset: 448)
!4137 = !DILocalVariable(name: "dev", arg: 1, scope: !4122, file: !3, line: 242, type: !142)
!4138 = !DILocation(line: 242, column: 52, scope: !4122)
!4139 = !DILocalVariable(name: "bar", arg: 2, scope: !4122, file: !3, line: 242, type: !132)
!4140 = !DILocation(line: 242, column: 61, scope: !4122)
!4141 = !DILocalVariable(name: "r", arg: 3, scope: !4122, file: !3, line: 243, type: !4125)
!4142 = !DILocation(line: 243, column: 28, scope: !4122)
!4143 = !DILocalVariable(name: "addrp", scope: !4122, file: !3, line: 245, type: !3892)
!4144 = !DILocation(line: 245, column: 16, scope: !4122)
!4145 = !DILocalVariable(name: "size", scope: !4122, file: !3, line: 246, type: !127)
!4146 = !DILocation(line: 246, column: 7, scope: !4122)
!4147 = !DILocalVariable(name: "flags", scope: !4122, file: !3, line: 247, type: !7)
!4148 = !DILocation(line: 247, column: 15, scope: !4122)
!4149 = !DILocation(line: 249, column: 29, scope: !4122)
!4150 = !DILocation(line: 249, column: 34, scope: !4122)
!4151 = !DILocation(line: 249, column: 10, scope: !4122)
!4152 = !DILocation(line: 249, column: 8, scope: !4122)
!4153 = !DILocation(line: 250, column: 6, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 250, column: 6)
!4155 = !DILocation(line: 250, column: 12, scope: !4154)
!4156 = !DILocation(line: 250, column: 6, scope: !4122)
!4157 = !DILocation(line: 251, column: 3, scope: !4154)
!4158 = !DILocation(line: 252, column: 34, scope: !4122)
!4159 = !DILocation(line: 252, column: 39, scope: !4122)
!4160 = !DILocation(line: 252, column: 46, scope: !4122)
!4161 = !DILocation(line: 252, column: 52, scope: !4122)
!4162 = !DILocation(line: 252, column: 65, scope: !4122)
!4163 = !DILocation(line: 252, column: 9, scope: !4122)
!4164 = !DILocation(line: 252, column: 2, scope: !4122)
!4165 = !DILocation(line: 253, column: 1, scope: !4122)
!4166 = distinct !DISubprogram(name: "__of_address_to_resource", scope: !3, file: !3, line: 833, type: !4167, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!132, !142, !3892, !127, !7, !147, !4125}
!4169 = !DILocalVariable(name: "dev", arg: 1, scope: !4166, file: !3, line: 833, type: !142)
!4170 = !DILocation(line: 833, column: 57, scope: !4166)
!4171 = !DILocalVariable(name: "addrp", arg: 2, scope: !4166, file: !3, line: 834, type: !3892)
!4172 = !DILocation(line: 834, column: 17, scope: !4166)
!4173 = !DILocalVariable(name: "size", arg: 3, scope: !4166, file: !3, line: 834, type: !127)
!4174 = !DILocation(line: 834, column: 28, scope: !4166)
!4175 = !DILocalVariable(name: "flags", arg: 4, scope: !4166, file: !3, line: 834, type: !7)
!4176 = !DILocation(line: 834, column: 47, scope: !4166)
!4177 = !DILocalVariable(name: "name", arg: 5, scope: !4166, file: !3, line: 835, type: !147)
!4178 = !DILocation(line: 835, column: 15, scope: !4166)
!4179 = !DILocalVariable(name: "r", arg: 6, scope: !4166, file: !3, line: 835, type: !4125)
!4180 = !DILocation(line: 835, column: 38, scope: !4166)
!4181 = !DILocalVariable(name: "taddr", scope: !4166, file: !3, line: 837, type: !127)
!4182 = !DILocation(line: 837, column: 6, scope: !4166)
!4183 = !DILocation(line: 839, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 839, column: 6)
!4185 = !DILocation(line: 839, column: 12, scope: !4184)
!4186 = !DILocation(line: 839, column: 6, scope: !4166)
!4187 = !DILocation(line: 840, column: 32, scope: !4184)
!4188 = !DILocation(line: 840, column: 37, scope: !4184)
!4189 = !DILocation(line: 840, column: 11, scope: !4184)
!4190 = !DILocation(line: 840, column: 9, scope: !4184)
!4191 = !DILocation(line: 840, column: 3, scope: !4184)
!4192 = !DILocation(line: 841, column: 11, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 841, column: 11)
!4194 = !DILocation(line: 841, column: 17, scope: !4193)
!4195 = !DILocation(line: 841, column: 11, scope: !4184)
!4196 = !DILocation(line: 842, column: 31, scope: !4193)
!4197 = !DILocation(line: 842, column: 36, scope: !4193)
!4198 = !DILocation(line: 842, column: 43, scope: !4193)
!4199 = !DILocation(line: 842, column: 11, scope: !4193)
!4200 = !DILocation(line: 842, column: 9, scope: !4193)
!4201 = !DILocation(line: 842, column: 3, scope: !4193)
!4202 = !DILocation(line: 844, column: 3, scope: !4193)
!4203 = !DILocation(line: 846, column: 6, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 846, column: 6)
!4205 = !DILocation(line: 846, column: 12, scope: !4204)
!4206 = !DILocation(line: 846, column: 6, scope: !4166)
!4207 = !DILocation(line: 847, column: 3, scope: !4204)
!4208 = !DILocation(line: 848, column: 9, scope: !4166)
!4209 = !DILocation(line: 848, column: 2, scope: !4166)
!4210 = !DILocation(line: 850, column: 13, scope: !4166)
!4211 = !DILocation(line: 850, column: 2, scope: !4166)
!4212 = !DILocation(line: 850, column: 5, scope: !4166)
!4213 = !DILocation(line: 850, column: 11, scope: !4166)
!4214 = !DILocation(line: 851, column: 11, scope: !4166)
!4215 = !DILocation(line: 851, column: 19, scope: !4166)
!4216 = !DILocation(line: 851, column: 17, scope: !4166)
!4217 = !DILocation(line: 851, column: 24, scope: !4166)
!4218 = !DILocation(line: 851, column: 2, scope: !4166)
!4219 = !DILocation(line: 851, column: 5, scope: !4166)
!4220 = !DILocation(line: 851, column: 9, scope: !4166)
!4221 = !DILocation(line: 852, column: 13, scope: !4166)
!4222 = !DILocation(line: 852, column: 2, scope: !4166)
!4223 = !DILocation(line: 852, column: 5, scope: !4166)
!4224 = !DILocation(line: 852, column: 11, scope: !4166)
!4225 = !DILocation(line: 853, column: 12, scope: !4166)
!4226 = !DILocation(line: 853, column: 19, scope: !4166)
!4227 = !DILocation(line: 853, column: 26, scope: !4166)
!4228 = !DILocation(line: 853, column: 31, scope: !4166)
!4229 = !DILocation(line: 853, column: 2, scope: !4166)
!4230 = !DILocation(line: 853, column: 5, scope: !4166)
!4231 = !DILocation(line: 853, column: 10, scope: !4166)
!4232 = !DILocation(line: 855, column: 2, scope: !4166)
!4233 = !DILocation(line: 856, column: 1, scope: !4166)
!4234 = distinct !DISubprogram(name: "of_pci_range_to_resource", scope: !3, file: !3, line: 271, type: !4235, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!132, !4237, !142, !4125}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_pci_range", file: !4239, line: 23, size: 256, elements: !4240)
!4239 = !DIFile(filename: "./include/linux/of_address.h", directory: "/home/lizy2001/genbc/linux")
!4240 = !{!4241, !4246, !4247, !4248}
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !4239, line: 24, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !4239, line: 24, size: 64, elements: !4243)
!4243 = !{!4244, !4245}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pci_addr", scope: !4242, file: !4239, line: 25, baseType: !127, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bus_addr", scope: !4242, file: !4239, line: 26, baseType: !127, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_addr", scope: !4238, file: !4239, line: 28, baseType: !127, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4238, file: !4239, line: 29, baseType: !127, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4238, file: !4239, line: 30, baseType: !152, size: 32, offset: 192)
!4249 = !DILocalVariable(name: "range", arg: 1, scope: !4234, file: !3, line: 271, type: !4237)
!4250 = !DILocation(line: 271, column: 51, scope: !4234)
!4251 = !DILocalVariable(name: "np", arg: 2, scope: !4234, file: !3, line: 272, type: !142)
!4252 = !DILocation(line: 272, column: 29, scope: !4234)
!4253 = !DILocalVariable(name: "res", arg: 3, scope: !4234, file: !3, line: 272, type: !4125)
!4254 = !DILocation(line: 272, column: 50, scope: !4234)
!4255 = !DILocalVariable(name: "err", scope: !4234, file: !3, line: 274, type: !132)
!4256 = !DILocation(line: 274, column: 6, scope: !4234)
!4257 = !DILocation(line: 275, column: 15, scope: !4234)
!4258 = !DILocation(line: 275, column: 22, scope: !4234)
!4259 = !DILocation(line: 275, column: 2, scope: !4234)
!4260 = !DILocation(line: 275, column: 7, scope: !4234)
!4261 = !DILocation(line: 275, column: 13, scope: !4234)
!4262 = !DILocation(line: 276, column: 29, scope: !4234)
!4263 = !DILocation(line: 276, column: 34, scope: !4234)
!4264 = !DILocation(line: 276, column: 42, scope: !4234)
!4265 = !DILocation(line: 276, column: 16, scope: !4234)
!4266 = !DILocation(line: 276, column: 21, scope: !4234)
!4267 = !DILocation(line: 276, column: 27, scope: !4234)
!4268 = !DILocation(line: 276, column: 2, scope: !4234)
!4269 = !DILocation(line: 276, column: 7, scope: !4234)
!4270 = !DILocation(line: 276, column: 14, scope: !4234)
!4271 = !DILocation(line: 277, column: 14, scope: !4234)
!4272 = !DILocation(line: 277, column: 18, scope: !4234)
!4273 = !DILocation(line: 277, column: 2, scope: !4234)
!4274 = !DILocation(line: 277, column: 7, scope: !4234)
!4275 = !DILocation(line: 277, column: 12, scope: !4234)
!4276 = !DILocation(line: 279, column: 6, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 279, column: 6)
!4278 = !DILocation(line: 279, column: 11, scope: !4277)
!4279 = !DILocation(line: 279, column: 17, scope: !4277)
!4280 = !DILocation(line: 279, column: 6, scope: !4234)
!4281 = !DILocalVariable(name: "port", scope: !4282, file: !3, line: 280, type: !123)
!4282 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 279, column: 34)
!4283 = !DILocation(line: 280, column: 17, scope: !4282)
!4284 = !DILocation(line: 281, column: 32, scope: !4282)
!4285 = !DILocation(line: 281, column: 36, scope: !4282)
!4286 = !DILocation(line: 281, column: 44, scope: !4282)
!4287 = !DILocation(line: 281, column: 51, scope: !4282)
!4288 = !DILocation(line: 282, column: 5, scope: !4282)
!4289 = !DILocation(line: 282, column: 12, scope: !4282)
!4290 = !DILocation(line: 281, column: 9, scope: !4282)
!4291 = !DILocation(line: 281, column: 7, scope: !4282)
!4292 = !DILocation(line: 283, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 283, column: 7)
!4294 = !DILocation(line: 283, column: 7, scope: !4282)
!4295 = !DILocation(line: 284, column: 4, scope: !4293)
!4296 = !DILocation(line: 285, column: 29, scope: !4282)
!4297 = !DILocation(line: 285, column: 36, scope: !4282)
!4298 = !DILocation(line: 285, column: 10, scope: !4282)
!4299 = !DILocation(line: 285, column: 8, scope: !4282)
!4300 = !DILocation(line: 286, column: 7, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 286, column: 7)
!4302 = !DILocation(line: 286, column: 12, scope: !4301)
!4303 = !DILocation(line: 286, column: 7, scope: !4282)
!4304 = !DILocation(line: 287, column: 8, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 286, column: 34)
!4306 = !DILocation(line: 288, column: 4, scope: !4305)
!4307 = !DILocation(line: 290, column: 16, scope: !4282)
!4308 = !DILocation(line: 290, column: 3, scope: !4282)
!4309 = !DILocation(line: 290, column: 8, scope: !4282)
!4310 = !DILocation(line: 290, column: 14, scope: !4282)
!4311 = !DILocation(line: 291, column: 2, scope: !4282)
!4312 = !DILocation(line: 298, column: 16, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 291, column: 9)
!4314 = !DILocation(line: 298, column: 23, scope: !4313)
!4315 = !DILocation(line: 298, column: 3, scope: !4313)
!4316 = !DILocation(line: 298, column: 8, scope: !4313)
!4317 = !DILocation(line: 298, column: 14, scope: !4313)
!4318 = !DILocation(line: 300, column: 13, scope: !4234)
!4319 = !DILocation(line: 300, column: 18, scope: !4234)
!4320 = !DILocation(line: 300, column: 26, scope: !4234)
!4321 = !DILocation(line: 300, column: 33, scope: !4234)
!4322 = !DILocation(line: 300, column: 24, scope: !4234)
!4323 = !DILocation(line: 300, column: 38, scope: !4234)
!4324 = !DILocation(line: 300, column: 2, scope: !4234)
!4325 = !DILocation(line: 300, column: 7, scope: !4234)
!4326 = !DILocation(line: 300, column: 11, scope: !4234)
!4327 = !DILocation(line: 301, column: 2, scope: !4234)
!4328 = !DILabel(scope: !4234, name: "invalid_range", file: !3, line: 303)
!4329 = !DILocation(line: 303, column: 1, scope: !4234)
!4330 = !DILocation(line: 304, column: 2, scope: !4234)
!4331 = !DILocation(line: 304, column: 7, scope: !4234)
!4332 = !DILocation(line: 304, column: 13, scope: !4234)
!4333 = !DILocation(line: 305, column: 2, scope: !4234)
!4334 = !DILocation(line: 305, column: 7, scope: !4234)
!4335 = !DILocation(line: 305, column: 11, scope: !4234)
!4336 = !DILocation(line: 306, column: 9, scope: !4234)
!4337 = !DILocation(line: 306, column: 2, scope: !4234)
!4338 = !DILocation(line: 307, column: 1, scope: !4234)
!4339 = distinct !DISubprogram(name: "of_translate_address", scope: !3, file: !3, line: 613, type: !4340, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!127, !142, !3892}
!4342 = !DILocalVariable(name: "dev", arg: 1, scope: !4339, file: !3, line: 613, type: !142)
!4343 = !DILocation(line: 613, column: 46, scope: !4339)
!4344 = !DILocalVariable(name: "in_addr", arg: 2, scope: !4339, file: !3, line: 613, type: !3892)
!4345 = !DILocation(line: 613, column: 65, scope: !4339)
!4346 = !DILocalVariable(name: "host", scope: !4339, file: !3, line: 615, type: !142)
!4347 = !DILocation(line: 615, column: 22, scope: !4339)
!4348 = !DILocalVariable(name: "ret", scope: !4339, file: !3, line: 616, type: !127)
!4349 = !DILocation(line: 616, column: 6, scope: !4339)
!4350 = !DILocation(line: 618, column: 31, scope: !4339)
!4351 = !DILocation(line: 619, column: 10, scope: !4339)
!4352 = !DILocation(line: 618, column: 8, scope: !4339)
!4353 = !DILocation(line: 618, column: 6, scope: !4339)
!4354 = !DILocation(line: 620, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 620, column: 6)
!4356 = !DILocation(line: 620, column: 6, scope: !4339)
!4357 = !DILocation(line: 621, column: 15, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 620, column: 12)
!4359 = !DILocation(line: 621, column: 3, scope: !4358)
!4360 = !DILocation(line: 622, column: 3, scope: !4358)
!4361 = !DILocation(line: 625, column: 9, scope: !4339)
!4362 = !DILocation(line: 625, column: 2, scope: !4339)
!4363 = !DILocation(line: 626, column: 1, scope: !4339)
!4364 = distinct !DISubprogram(name: "__of_translate_address", scope: !3, file: !3, line: 520, type: !4365, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!127, !142, !4367, !3892, !147, !4372}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!142, !4370}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!4373 = !DILocalVariable(name: "dev", arg: 1, scope: !4364, file: !3, line: 520, type: !142)
!4374 = !DILocation(line: 520, column: 55, scope: !4364)
!4375 = !DILocalVariable(name: "get_parent", arg: 2, scope: !4364, file: !3, line: 521, type: !4367)
!4376 = !DILocation(line: 521, column: 29, scope: !4364)
!4377 = !DILocalVariable(name: "in_addr", arg: 3, scope: !4364, file: !3, line: 522, type: !3892)
!4378 = !DILocation(line: 522, column: 21, scope: !4364)
!4379 = !DILocalVariable(name: "rprop", arg: 4, scope: !4364, file: !3, line: 522, type: !147)
!4380 = !DILocation(line: 522, column: 42, scope: !4364)
!4381 = !DILocalVariable(name: "host", arg: 5, scope: !4364, file: !3, line: 523, type: !4372)
!4382 = !DILocation(line: 523, column: 28, scope: !4364)
!4383 = !DILocalVariable(name: "parent", scope: !4364, file: !3, line: 525, type: !142)
!4384 = !DILocation(line: 525, column: 22, scope: !4364)
!4385 = !DILocalVariable(name: "bus", scope: !4364, file: !3, line: 526, type: !3926)
!4386 = !DILocation(line: 526, column: 17, scope: !4364)
!4387 = !DILocalVariable(name: "pbus", scope: !4364, file: !3, line: 526, type: !3926)
!4388 = !DILocation(line: 526, column: 23, scope: !4364)
!4389 = !DILocalVariable(name: "addr", scope: !4364, file: !3, line: 527, type: !4390)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1123)
!4391 = !DILocation(line: 527, column: 9, scope: !4364)
!4392 = !DILocalVariable(name: "na", scope: !4364, file: !3, line: 528, type: !132)
!4393 = !DILocation(line: 528, column: 6, scope: !4364)
!4394 = !DILocalVariable(name: "ns", scope: !4364, file: !3, line: 528, type: !132)
!4395 = !DILocation(line: 528, column: 10, scope: !4364)
!4396 = !DILocalVariable(name: "pna", scope: !4364, file: !3, line: 528, type: !132)
!4397 = !DILocation(line: 528, column: 14, scope: !4364)
!4398 = !DILocalVariable(name: "pns", scope: !4364, file: !3, line: 528, type: !132)
!4399 = !DILocation(line: 528, column: 19, scope: !4364)
!4400 = !DILocalVariable(name: "result", scope: !4364, file: !3, line: 529, type: !127)
!4401 = !DILocation(line: 529, column: 6, scope: !4364)
!4402 = !DILocation(line: 531, column: 2, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 531, column: 2)
!4404 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 531, column: 2)
!4405 = !DILocation(line: 531, column: 2, scope: !4404)
!4406 = !DILocation(line: 534, column: 14, scope: !4364)
!4407 = !DILocation(line: 534, column: 2, scope: !4364)
!4408 = !DILocation(line: 536, column: 3, scope: !4364)
!4409 = !DILocation(line: 536, column: 8, scope: !4364)
!4410 = !DILocation(line: 538, column: 11, scope: !4364)
!4411 = !DILocation(line: 538, column: 22, scope: !4364)
!4412 = !DILocation(line: 538, column: 9, scope: !4364)
!4413 = !DILocation(line: 539, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 539, column: 6)
!4415 = !DILocation(line: 539, column: 13, scope: !4414)
!4416 = !DILocation(line: 539, column: 6, scope: !4364)
!4417 = !DILocation(line: 540, column: 3, scope: !4414)
!4418 = !DILocation(line: 541, column: 21, scope: !4364)
!4419 = !DILocation(line: 541, column: 8, scope: !4364)
!4420 = !DILocation(line: 541, column: 6, scope: !4364)
!4421 = !DILocation(line: 544, column: 2, scope: !4364)
!4422 = !DILocation(line: 544, column: 7, scope: !4364)
!4423 = !DILocation(line: 544, column: 19, scope: !4364)
!4424 = !DILocation(line: 545, column: 7, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 545, column: 6)
!4426 = !DILocation(line: 545, column: 6, scope: !4364)
!4427 = !DILocation(line: 546, column: 3, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 546, column: 3)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 546, column: 3)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 545, column: 32)
!4431 = !DILocation(line: 546, column: 3, scope: !4429)
!4432 = !DILocation(line: 547, column: 3, scope: !4430)
!4433 = !DILocation(line: 549, column: 2, scope: !4364)
!4434 = !DILocation(line: 549, column: 15, scope: !4364)
!4435 = !DILocation(line: 549, column: 24, scope: !4364)
!4436 = !DILocation(line: 549, column: 27, scope: !4364)
!4437 = !DILocation(line: 551, column: 2, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 551, column: 2)
!4439 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 551, column: 2)
!4440 = !DILocation(line: 551, column: 2, scope: !4439)
!4441 = !DILocation(line: 553, column: 39, scope: !4364)
!4442 = !DILocation(line: 553, column: 45, scope: !4364)
!4443 = !DILocation(line: 553, column: 2, scope: !4364)
!4444 = !DILocation(line: 556, column: 2, scope: !4364)
!4445 = !DILocalVariable(name: "iorange", scope: !4446, file: !3, line: 557, type: !4449)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 556, column: 11)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 556, column: 2)
!4448 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 556, column: 2)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logic_pio_hwaddr", file: !106, line: 18, size: 576, elements: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4450, file: !106, line: 19, baseType: !195, size: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4450, file: !106, line: 20, baseType: !159, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "hw_start", scope: !4450, file: !106, line: 21, baseType: !124, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "io_start", scope: !4450, file: !106, line: 22, baseType: !124, size: 64, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4450, file: !106, line: 23, baseType: !124, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4450, file: !106, line: 24, baseType: !123, size: 64, offset: 384)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !4450, file: !106, line: 26, baseType: !118, size: 64, offset: 448)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4450, file: !106, line: 27, baseType: !4460, size: 64, offset: 512)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logic_pio_host_ops", file: !106, line: 30, size: 256, elements: !4463)
!4463 = !{!4464, !4468, !4472, !4476}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4462, file: !106, line: 31, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!152, !118, !123, !296}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4462, file: !106, line: 32, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !118, !123, !152, !296}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !4462, file: !106, line: 34, baseType: !4473, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!152, !118, !123, !118, !296, !7}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "outs", scope: !4462, file: !106, line: 36, baseType: !4477, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !118, !123, !183, !296, !7}
!4480 = !DILocation(line: 557, column: 28, scope: !4446)
!4481 = !DILocation(line: 560, column: 15, scope: !4446)
!4482 = !DILocation(line: 560, column: 3, scope: !4446)
!4483 = !DILocation(line: 561, column: 9, scope: !4446)
!4484 = !DILocation(line: 561, column: 7, scope: !4446)
!4485 = !DILocation(line: 562, column: 12, scope: !4446)
!4486 = !DILocation(line: 562, column: 23, scope: !4446)
!4487 = !DILocation(line: 562, column: 10, scope: !4446)
!4488 = !DILocation(line: 565, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 565, column: 7)
!4490 = !DILocation(line: 565, column: 14, scope: !4489)
!4491 = !DILocation(line: 565, column: 7, scope: !4446)
!4492 = !DILocation(line: 566, column: 4, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 566, column: 4)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 566, column: 4)
!4495 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 565, column: 23)
!4496 = !DILocation(line: 566, column: 4, scope: !4494)
!4497 = !DILocation(line: 567, column: 28, scope: !4495)
!4498 = !DILocation(line: 567, column: 34, scope: !4495)
!4499 = !DILocation(line: 567, column: 13, scope: !4495)
!4500 = !DILocation(line: 567, column: 11, scope: !4495)
!4501 = !DILocation(line: 568, column: 4, scope: !4495)
!4502 = !DILocation(line: 575, column: 38, scope: !4446)
!4503 = !DILocation(line: 575, column: 43, scope: !4446)
!4504 = !DILocation(line: 575, column: 13, scope: !4446)
!4505 = !DILocation(line: 575, column: 11, scope: !4446)
!4506 = !DILocation(line: 576, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 576, column: 7)
!4508 = !DILocation(line: 576, column: 15, scope: !4507)
!4509 = !DILocation(line: 576, column: 19, scope: !4507)
!4510 = !DILocation(line: 576, column: 28, scope: !4507)
!4511 = !DILocation(line: 576, column: 34, scope: !4507)
!4512 = !DILocation(line: 576, column: 7, scope: !4446)
!4513 = !DILocation(line: 577, column: 28, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 576, column: 58)
!4515 = !DILocation(line: 577, column: 33, scope: !4514)
!4516 = !DILocation(line: 577, column: 38, scope: !4514)
!4517 = !DILocation(line: 577, column: 41, scope: !4514)
!4518 = !DILocation(line: 577, column: 13, scope: !4514)
!4519 = !DILocation(line: 577, column: 11, scope: !4514)
!4520 = !DILocation(line: 578, column: 4, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 578, column: 4)
!4522 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 578, column: 4)
!4523 = !DILocation(line: 578, column: 4, scope: !4522)
!4524 = !DILocation(line: 580, column: 24, scope: !4514)
!4525 = !DILocation(line: 580, column: 12, scope: !4514)
!4526 = !DILocation(line: 580, column: 5, scope: !4514)
!4527 = !DILocation(line: 580, column: 10, scope: !4514)
!4528 = !DILocation(line: 581, column: 4, scope: !4514)
!4529 = !DILocation(line: 585, column: 23, scope: !4446)
!4530 = !DILocation(line: 585, column: 10, scope: !4446)
!4531 = !DILocation(line: 585, column: 8, scope: !4446)
!4532 = !DILocation(line: 586, column: 3, scope: !4446)
!4533 = !DILocation(line: 586, column: 9, scope: !4446)
!4534 = !DILocation(line: 586, column: 21, scope: !4446)
!4535 = !DILocation(line: 587, column: 8, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 587, column: 7)
!4537 = !DILocation(line: 587, column: 7, scope: !4446)
!4538 = !DILocation(line: 588, column: 4, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 587, column: 35)
!4540 = !DILocation(line: 589, column: 4, scope: !4539)
!4541 = !DILocation(line: 592, column: 3, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 592, column: 3)
!4543 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 592, column: 3)
!4544 = !DILocation(line: 592, column: 3, scope: !4543)
!4545 = !DILocation(line: 596, column: 24, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 596, column: 7)
!4547 = !DILocation(line: 596, column: 29, scope: !4546)
!4548 = !DILocation(line: 596, column: 34, scope: !4546)
!4549 = !DILocation(line: 596, column: 40, scope: !4546)
!4550 = !DILocation(line: 596, column: 46, scope: !4546)
!4551 = !DILocation(line: 596, column: 50, scope: !4546)
!4552 = !DILocation(line: 596, column: 54, scope: !4546)
!4553 = !DILocation(line: 596, column: 59, scope: !4546)
!4554 = !DILocation(line: 596, column: 7, scope: !4546)
!4555 = !DILocation(line: 596, column: 7, scope: !4446)
!4556 = !DILocation(line: 597, column: 4, scope: !4546)
!4557 = !DILocation(line: 600, column: 8, scope: !4446)
!4558 = !DILocation(line: 600, column: 6, scope: !4446)
!4559 = !DILocation(line: 601, column: 8, scope: !4446)
!4560 = !DILocation(line: 601, column: 6, scope: !4446)
!4561 = !DILocation(line: 602, column: 9, scope: !4446)
!4562 = !DILocation(line: 602, column: 7, scope: !4446)
!4563 = !DILocation(line: 604, column: 42, scope: !4446)
!4564 = !DILocation(line: 604, column: 48, scope: !4446)
!4565 = !DILocation(line: 604, column: 3, scope: !4446)
!4566 = !DILocation(line: 556, column: 2, scope: !4447)
!4567 = distinct !{!4567, !4568, !4569}
!4568 = !DILocation(line: 556, column: 2, scope: !4448)
!4569 = !DILocation(line: 605, column: 2, scope: !4448)
!4570 = !DILabel(scope: !4364, name: "bail", file: !3, line: 606)
!4571 = !DILocation(line: 606, column: 2, scope: !4364)
!4572 = !DILocation(line: 607, column: 14, scope: !4364)
!4573 = !DILocation(line: 607, column: 2, scope: !4364)
!4574 = !DILocation(line: 608, column: 14, scope: !4364)
!4575 = !DILocation(line: 608, column: 2, scope: !4364)
!4576 = !DILocation(line: 610, column: 9, scope: !4364)
!4577 = !DILocation(line: 610, column: 2, scope: !4364)
!4578 = distinct !DISubprogram(name: "of_translate_dma_address", scope: !3, file: !3, line: 657, type: !4340, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4579 = !DILocalVariable(name: "dev", arg: 1, scope: !4578, file: !3, line: 657, type: !142)
!4580 = !DILocation(line: 657, column: 50, scope: !4578)
!4581 = !DILocalVariable(name: "in_addr", arg: 2, scope: !4578, file: !3, line: 657, type: !3892)
!4582 = !DILocation(line: 657, column: 69, scope: !4578)
!4583 = !DILocalVariable(name: "host", scope: !4578, file: !3, line: 659, type: !142)
!4584 = !DILocation(line: 659, column: 22, scope: !4578)
!4585 = !DILocalVariable(name: "ret", scope: !4578, file: !3, line: 660, type: !127)
!4586 = !DILocation(line: 660, column: 6, scope: !4578)
!4587 = !DILocation(line: 662, column: 31, scope: !4578)
!4588 = !DILocation(line: 663, column: 10, scope: !4578)
!4589 = !DILocation(line: 662, column: 8, scope: !4578)
!4590 = !DILocation(line: 662, column: 6, scope: !4578)
!4591 = !DILocation(line: 665, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 665, column: 6)
!4593 = !DILocation(line: 665, column: 6, scope: !4578)
!4594 = !DILocation(line: 666, column: 15, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 665, column: 12)
!4596 = !DILocation(line: 666, column: 3, scope: !4595)
!4597 = !DILocation(line: 667, column: 3, scope: !4595)
!4598 = !DILocation(line: 670, column: 9, scope: !4578)
!4599 = !DILocation(line: 670, column: 2, scope: !4578)
!4600 = !DILocation(line: 671, column: 1, scope: !4578)
!4601 = distinct !DISubprogram(name: "__of_get_dma_parent", scope: !3, file: !3, line: 629, type: !4368, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4602 = !DILocalVariable(name: "np", arg: 1, scope: !4601, file: !3, line: 629, type: !4370)
!4603 = !DILocation(line: 629, column: 74, scope: !4601)
!4604 = !DILocalVariable(name: "args", scope: !4601, file: !3, line: 631, type: !4605)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !144, line: 74, size: 640, elements: !4606)
!4606 = !{!4607, !4608, !4609}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4605, file: !144, line: 75, baseType: !142, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4605, file: !144, line: 76, baseType: !132, size: 32, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4605, file: !144, line: 77, baseType: !4610, size: 512, offset: 96)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 512, elements: !1703)
!4611 = !DILocation(line: 631, column: 25, scope: !4601)
!4612 = !DILocalVariable(name: "ret", scope: !4601, file: !3, line: 632, type: !132)
!4613 = !DILocation(line: 632, column: 6, scope: !4601)
!4614 = !DILocalVariable(name: "index", scope: !4601, file: !3, line: 632, type: !132)
!4615 = !DILocation(line: 632, column: 11, scope: !4601)
!4616 = !DILocation(line: 634, column: 35, scope: !4601)
!4617 = !DILocation(line: 634, column: 10, scope: !4601)
!4618 = !DILocation(line: 634, column: 8, scope: !4601)
!4619 = !DILocation(line: 635, column: 6, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 635, column: 6)
!4621 = !DILocation(line: 635, column: 12, scope: !4620)
!4622 = !DILocation(line: 635, column: 6, scope: !4601)
!4623 = !DILocation(line: 636, column: 24, scope: !4620)
!4624 = !DILocation(line: 636, column: 10, scope: !4620)
!4625 = !DILocation(line: 636, column: 3, scope: !4620)
!4626 = !DILocation(line: 638, column: 35, scope: !4601)
!4627 = !DILocation(line: 640, column: 7, scope: !4601)
!4628 = !DILocation(line: 638, column: 8, scope: !4601)
!4629 = !DILocation(line: 638, column: 6, scope: !4601)
!4630 = !DILocation(line: 641, column: 6, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 641, column: 6)
!4632 = !DILocation(line: 641, column: 10, scope: !4631)
!4633 = !DILocation(line: 641, column: 6, scope: !4601)
!4634 = !DILocation(line: 642, column: 24, scope: !4631)
!4635 = !DILocation(line: 642, column: 10, scope: !4631)
!4636 = !DILocation(line: 642, column: 3, scope: !4631)
!4637 = !DILocation(line: 644, column: 26, scope: !4601)
!4638 = !DILocation(line: 644, column: 9, scope: !4601)
!4639 = !DILocation(line: 644, column: 2, scope: !4601)
!4640 = !DILocation(line: 645, column: 1, scope: !4601)
!4641 = distinct !DISubprogram(name: "of_get_address", scope: !3, file: !3, line: 674, type: !3909, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4642 = !DILocalVariable(name: "dev", arg: 1, scope: !4641, file: !3, line: 674, type: !142)
!4643 = !DILocation(line: 674, column: 50, scope: !4641)
!4644 = !DILocalVariable(name: "index", arg: 2, scope: !4641, file: !3, line: 674, type: !132)
!4645 = !DILocation(line: 674, column: 59, scope: !4641)
!4646 = !DILocalVariable(name: "size", arg: 3, scope: !4641, file: !3, line: 674, type: !3726)
!4647 = !DILocation(line: 674, column: 71, scope: !4641)
!4648 = !DILocalVariable(name: "flags", arg: 4, scope: !4641, file: !3, line: 675, type: !2649)
!4649 = !DILocation(line: 675, column: 21, scope: !4641)
!4650 = !DILocalVariable(name: "prop", scope: !4641, file: !3, line: 677, type: !3892)
!4651 = !DILocation(line: 677, column: 16, scope: !4641)
!4652 = !DILocalVariable(name: "psize", scope: !4641, file: !3, line: 678, type: !7)
!4653 = !DILocation(line: 678, column: 15, scope: !4641)
!4654 = !DILocalVariable(name: "parent", scope: !4641, file: !3, line: 679, type: !142)
!4655 = !DILocation(line: 679, column: 22, scope: !4641)
!4656 = !DILocalVariable(name: "bus", scope: !4641, file: !3, line: 680, type: !3926)
!4657 = !DILocation(line: 680, column: 17, scope: !4641)
!4658 = !DILocalVariable(name: "onesize", scope: !4641, file: !3, line: 681, type: !132)
!4659 = !DILocation(line: 681, column: 6, scope: !4641)
!4660 = !DILocalVariable(name: "i", scope: !4641, file: !3, line: 681, type: !132)
!4661 = !DILocation(line: 681, column: 15, scope: !4641)
!4662 = !DILocalVariable(name: "na", scope: !4641, file: !3, line: 681, type: !132)
!4663 = !DILocation(line: 681, column: 18, scope: !4641)
!4664 = !DILocalVariable(name: "ns", scope: !4641, file: !3, line: 681, type: !132)
!4665 = !DILocation(line: 681, column: 22, scope: !4641)
!4666 = !DILocation(line: 684, column: 25, scope: !4641)
!4667 = !DILocation(line: 684, column: 11, scope: !4641)
!4668 = !DILocation(line: 684, column: 9, scope: !4641)
!4669 = !DILocation(line: 685, column: 6, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 685, column: 6)
!4671 = !DILocation(line: 685, column: 13, scope: !4670)
!4672 = !DILocation(line: 685, column: 6, scope: !4641)
!4673 = !DILocation(line: 686, column: 3, scope: !4670)
!4674 = !DILocation(line: 687, column: 21, scope: !4641)
!4675 = !DILocation(line: 687, column: 8, scope: !4641)
!4676 = !DILocation(line: 687, column: 6, scope: !4641)
!4677 = !DILocation(line: 688, column: 2, scope: !4641)
!4678 = !DILocation(line: 688, column: 7, scope: !4641)
!4679 = !DILocation(line: 688, column: 19, scope: !4641)
!4680 = !DILocation(line: 689, column: 14, scope: !4641)
!4681 = !DILocation(line: 689, column: 2, scope: !4641)
!4682 = !DILocation(line: 690, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 690, column: 6)
!4684 = !DILocation(line: 690, column: 6, scope: !4641)
!4685 = !DILocation(line: 691, column: 3, scope: !4683)
!4686 = !DILocation(line: 694, column: 25, scope: !4641)
!4687 = !DILocation(line: 694, column: 30, scope: !4641)
!4688 = !DILocation(line: 694, column: 35, scope: !4641)
!4689 = !DILocation(line: 694, column: 9, scope: !4641)
!4690 = !DILocation(line: 694, column: 7, scope: !4641)
!4691 = !DILocation(line: 695, column: 6, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 695, column: 6)
!4693 = !DILocation(line: 695, column: 11, scope: !4692)
!4694 = !DILocation(line: 695, column: 6, scope: !4641)
!4695 = !DILocation(line: 696, column: 3, scope: !4692)
!4696 = !DILocation(line: 697, column: 8, scope: !4641)
!4697 = !DILocation(line: 699, column: 12, scope: !4641)
!4698 = !DILocation(line: 699, column: 17, scope: !4641)
!4699 = !DILocation(line: 699, column: 15, scope: !4641)
!4700 = !DILocation(line: 699, column: 10, scope: !4641)
!4701 = !DILocation(line: 700, column: 9, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 700, column: 2)
!4703 = !DILocation(line: 700, column: 7, scope: !4702)
!4704 = !DILocation(line: 700, column: 14, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 700, column: 2)
!4706 = !DILocation(line: 700, column: 23, scope: !4705)
!4707 = !DILocation(line: 700, column: 20, scope: !4705)
!4708 = !DILocation(line: 700, column: 2, scope: !4702)
!4709 = !DILocation(line: 701, column: 7, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 701, column: 7)
!4711 = !DILocation(line: 701, column: 12, scope: !4710)
!4712 = !DILocation(line: 701, column: 9, scope: !4710)
!4713 = !DILocation(line: 701, column: 7, scope: !4705)
!4714 = !DILocation(line: 702, column: 8, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 702, column: 8)
!4716 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 701, column: 19)
!4717 = !DILocation(line: 702, column: 8, scope: !4716)
!4718 = !DILocation(line: 703, column: 28, scope: !4715)
!4719 = !DILocation(line: 703, column: 35, scope: !4715)
!4720 = !DILocation(line: 703, column: 33, scope: !4715)
!4721 = !DILocation(line: 703, column: 39, scope: !4715)
!4722 = !DILocation(line: 703, column: 13, scope: !4715)
!4723 = !DILocation(line: 703, column: 6, scope: !4715)
!4724 = !DILocation(line: 703, column: 11, scope: !4715)
!4725 = !DILocation(line: 703, column: 5, scope: !4715)
!4726 = !DILocation(line: 704, column: 8, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 704, column: 8)
!4728 = !DILocation(line: 704, column: 8, scope: !4716)
!4729 = !DILocation(line: 705, column: 14, scope: !4727)
!4730 = !DILocation(line: 705, column: 19, scope: !4727)
!4731 = !DILocation(line: 705, column: 29, scope: !4727)
!4732 = !DILocation(line: 705, column: 6, scope: !4727)
!4733 = !DILocation(line: 705, column: 12, scope: !4727)
!4734 = !DILocation(line: 705, column: 5, scope: !4727)
!4735 = !DILocation(line: 706, column: 11, scope: !4716)
!4736 = !DILocation(line: 706, column: 4, scope: !4716)
!4737 = !DILocation(line: 700, column: 41, scope: !4705)
!4738 = !DILocation(line: 700, column: 38, scope: !4705)
!4739 = !DILocation(line: 700, column: 58, scope: !4705)
!4740 = !DILocation(line: 700, column: 55, scope: !4705)
!4741 = !DILocation(line: 700, column: 68, scope: !4705)
!4742 = !DILocation(line: 700, column: 2, scope: !4705)
!4743 = distinct !{!4743, !4708, !4744}
!4744 = !DILocation(line: 707, column: 3, scope: !4702)
!4745 = !DILocation(line: 708, column: 2, scope: !4641)
!4746 = !DILocation(line: 709, column: 1, scope: !4641)
!4747 = distinct !DISubprogram(name: "of_pci_range_parser_init", scope: !3, file: !3, line: 733, type: !4748, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!132, !4750, !142}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_pci_range_parser", file: !4239, line: 11, size: 384, elements: !4752)
!4752 = !{!4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4751, file: !4239, line: 12, baseType: !142, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4751, file: !4239, line: 13, baseType: !3926, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4751, file: !4239, line: 14, baseType: !3892, size: 64, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4751, file: !4239, line: 15, baseType: !3892, size: 64, offset: 192)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !4751, file: !4239, line: 16, baseType: !132, size: 32, offset: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4751, file: !4239, line: 17, baseType: !132, size: 32, offset: 288)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "pna", scope: !4751, file: !4239, line: 18, baseType: !132, size: 32, offset: 320)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !4751, file: !4239, line: 19, baseType: !140, size: 8, offset: 352)
!4761 = !DILocalVariable(name: "parser", arg: 1, scope: !4747, file: !3, line: 733, type: !4750)
!4762 = !DILocation(line: 733, column: 58, scope: !4747)
!4763 = !DILocalVariable(name: "node", arg: 2, scope: !4747, file: !3, line: 734, type: !142)
!4764 = !DILocation(line: 734, column: 25, scope: !4747)
!4765 = !DILocation(line: 736, column: 21, scope: !4747)
!4766 = !DILocation(line: 736, column: 29, scope: !4747)
!4767 = !DILocation(line: 736, column: 9, scope: !4747)
!4768 = !DILocation(line: 736, column: 2, scope: !4747)
!4769 = distinct !DISubprogram(name: "parser_init", scope: !3, file: !3, line: 712, type: !4770, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!132, !4750, !142, !147}
!4772 = !DILocalVariable(name: "parser", arg: 1, scope: !4769, file: !3, line: 712, type: !4750)
!4773 = !DILocation(line: 712, column: 52, scope: !4769)
!4774 = !DILocalVariable(name: "node", arg: 2, scope: !4769, file: !3, line: 713, type: !142)
!4775 = !DILocation(line: 713, column: 24, scope: !4769)
!4776 = !DILocalVariable(name: "name", arg: 3, scope: !4769, file: !3, line: 713, type: !147)
!4777 = !DILocation(line: 713, column: 42, scope: !4769)
!4778 = !DILocalVariable(name: "rlen", scope: !4769, file: !3, line: 715, type: !132)
!4779 = !DILocation(line: 715, column: 6, scope: !4769)
!4780 = !DILocation(line: 717, column: 17, scope: !4769)
!4781 = !DILocation(line: 717, column: 2, scope: !4769)
!4782 = !DILocation(line: 717, column: 10, scope: !4769)
!4783 = !DILocation(line: 717, column: 15, scope: !4769)
!4784 = !DILocation(line: 718, column: 32, scope: !4769)
!4785 = !DILocation(line: 718, column: 16, scope: !4769)
!4786 = !DILocation(line: 718, column: 2, scope: !4769)
!4787 = !DILocation(line: 718, column: 10, scope: !4769)
!4788 = !DILocation(line: 718, column: 14, scope: !4769)
!4789 = !DILocation(line: 719, column: 35, scope: !4769)
!4790 = !DILocation(line: 719, column: 15, scope: !4769)
!4791 = !DILocation(line: 719, column: 2, scope: !4769)
!4792 = !DILocation(line: 719, column: 10, scope: !4769)
!4793 = !DILocation(line: 719, column: 13, scope: !4769)
!4794 = !DILocation(line: 720, column: 35, scope: !4769)
!4795 = !DILocation(line: 720, column: 15, scope: !4769)
!4796 = !DILocation(line: 720, column: 2, scope: !4769)
!4797 = !DILocation(line: 720, column: 10, scope: !4769)
!4798 = !DILocation(line: 720, column: 13, scope: !4769)
!4799 = !DILocation(line: 721, column: 24, scope: !4769)
!4800 = !DILocation(line: 721, column: 17, scope: !4769)
!4801 = !DILocation(line: 721, column: 16, scope: !4769)
!4802 = !DILocation(line: 721, column: 2, scope: !4769)
!4803 = !DILocation(line: 721, column: 10, scope: !4769)
!4804 = !DILocation(line: 721, column: 14, scope: !4769)
!4805 = !DILocation(line: 722, column: 29, scope: !4769)
!4806 = !DILocation(line: 722, column: 16, scope: !4769)
!4807 = !DILocation(line: 722, column: 2, scope: !4769)
!4808 = !DILocation(line: 722, column: 10, scope: !4769)
!4809 = !DILocation(line: 722, column: 14, scope: !4769)
!4810 = !DILocation(line: 724, column: 34, scope: !4769)
!4811 = !DILocation(line: 724, column: 40, scope: !4769)
!4812 = !DILocation(line: 724, column: 18, scope: !4769)
!4813 = !DILocation(line: 724, column: 2, scope: !4769)
!4814 = !DILocation(line: 724, column: 10, scope: !4769)
!4815 = !DILocation(line: 724, column: 16, scope: !4769)
!4816 = !DILocation(line: 725, column: 6, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 725, column: 6)
!4818 = !DILocation(line: 725, column: 14, scope: !4817)
!4819 = !DILocation(line: 725, column: 20, scope: !4817)
!4820 = !DILocation(line: 725, column: 6, scope: !4769)
!4821 = !DILocation(line: 726, column: 3, scope: !4817)
!4822 = !DILocation(line: 728, column: 16, scope: !4769)
!4823 = !DILocation(line: 728, column: 24, scope: !4769)
!4824 = !DILocation(line: 728, column: 32, scope: !4769)
!4825 = !DILocation(line: 728, column: 37, scope: !4769)
!4826 = !DILocation(line: 728, column: 30, scope: !4769)
!4827 = !DILocation(line: 728, column: 2, scope: !4769)
!4828 = !DILocation(line: 728, column: 10, scope: !4769)
!4829 = !DILocation(line: 728, column: 14, scope: !4769)
!4830 = !DILocation(line: 730, column: 2, scope: !4769)
!4831 = !DILocation(line: 731, column: 1, scope: !4769)
!4832 = distinct !DISubprogram(name: "of_pci_dma_range_parser_init", scope: !3, file: !3, line: 740, type: !4748, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4833 = !DILocalVariable(name: "parser", arg: 1, scope: !4832, file: !3, line: 740, type: !4750)
!4834 = !DILocation(line: 740, column: 62, scope: !4832)
!4835 = !DILocalVariable(name: "node", arg: 2, scope: !4832, file: !3, line: 741, type: !142)
!4836 = !DILocation(line: 741, column: 25, scope: !4832)
!4837 = !DILocation(line: 743, column: 21, scope: !4832)
!4838 = !DILocation(line: 743, column: 29, scope: !4832)
!4839 = !DILocation(line: 743, column: 9, scope: !4832)
!4840 = !DILocation(line: 743, column: 2, scope: !4832)
!4841 = distinct !DISubprogram(name: "of_pci_range_parser_one", scope: !3, file: !3, line: 748, type: !4842, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!4237, !4750, !4237}
!4844 = !DILocalVariable(name: "parser", arg: 1, scope: !4841, file: !3, line: 748, type: !4750)
!4845 = !DILocation(line: 748, column: 74, scope: !4841)
!4846 = !DILocalVariable(name: "range", arg: 2, scope: !4841, file: !3, line: 749, type: !4237)
!4847 = !DILocation(line: 749, column: 28, scope: !4841)
!4848 = !DILocalVariable(name: "na", scope: !4841, file: !3, line: 751, type: !132)
!4849 = !DILocation(line: 751, column: 6, scope: !4841)
!4850 = !DILocation(line: 751, column: 11, scope: !4841)
!4851 = !DILocation(line: 751, column: 19, scope: !4841)
!4852 = !DILocalVariable(name: "ns", scope: !4841, file: !3, line: 752, type: !132)
!4853 = !DILocation(line: 752, column: 6, scope: !4841)
!4854 = !DILocation(line: 752, column: 11, scope: !4841)
!4855 = !DILocation(line: 752, column: 19, scope: !4841)
!4856 = !DILocalVariable(name: "np", scope: !4841, file: !3, line: 753, type: !132)
!4857 = !DILocation(line: 753, column: 6, scope: !4841)
!4858 = !DILocation(line: 753, column: 11, scope: !4841)
!4859 = !DILocation(line: 753, column: 19, scope: !4841)
!4860 = !DILocation(line: 753, column: 25, scope: !4841)
!4861 = !DILocation(line: 753, column: 23, scope: !4841)
!4862 = !DILocation(line: 753, column: 30, scope: !4841)
!4863 = !DILocation(line: 753, column: 28, scope: !4841)
!4864 = !DILocalVariable(name: "busflag_na", scope: !4841, file: !3, line: 754, type: !132)
!4865 = !DILocation(line: 754, column: 6, scope: !4841)
!4866 = !DILocation(line: 756, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 756, column: 6)
!4868 = !DILocation(line: 756, column: 6, scope: !4841)
!4869 = !DILocation(line: 757, column: 3, scope: !4867)
!4870 = !DILocation(line: 759, column: 7, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 759, column: 6)
!4872 = !DILocation(line: 759, column: 15, scope: !4871)
!4873 = !DILocation(line: 759, column: 21, scope: !4871)
!4874 = !DILocation(line: 759, column: 24, scope: !4871)
!4875 = !DILocation(line: 759, column: 32, scope: !4871)
!4876 = !DILocation(line: 759, column: 40, scope: !4871)
!4877 = !DILocation(line: 759, column: 38, scope: !4871)
!4878 = !DILocation(line: 759, column: 45, scope: !4871)
!4879 = !DILocation(line: 759, column: 53, scope: !4871)
!4880 = !DILocation(line: 759, column: 43, scope: !4871)
!4881 = !DILocation(line: 759, column: 6, scope: !4841)
!4882 = !DILocation(line: 760, column: 3, scope: !4871)
!4883 = !DILocation(line: 762, column: 17, scope: !4841)
!4884 = !DILocation(line: 762, column: 25, scope: !4841)
!4885 = !DILocation(line: 762, column: 30, scope: !4841)
!4886 = !DILocation(line: 762, column: 40, scope: !4841)
!4887 = !DILocation(line: 762, column: 48, scope: !4841)
!4888 = !DILocation(line: 762, column: 2, scope: !4841)
!4889 = !DILocation(line: 762, column: 9, scope: !4841)
!4890 = !DILocation(line: 762, column: 15, scope: !4841)
!4891 = !DILocation(line: 765, column: 6, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 765, column: 6)
!4893 = !DILocation(line: 765, column: 14, scope: !4892)
!4894 = !DILocation(line: 765, column: 19, scope: !4892)
!4895 = !DILocation(line: 765, column: 6, scope: !4841)
!4896 = !DILocation(line: 766, column: 14, scope: !4892)
!4897 = !DILocation(line: 766, column: 3, scope: !4892)
!4898 = !DILocation(line: 768, column: 35, scope: !4841)
!4899 = !DILocation(line: 768, column: 43, scope: !4841)
!4900 = !DILocation(line: 768, column: 51, scope: !4841)
!4901 = !DILocation(line: 768, column: 49, scope: !4841)
!4902 = !DILocation(line: 768, column: 63, scope: !4841)
!4903 = !DILocation(line: 768, column: 68, scope: !4841)
!4904 = !DILocation(line: 768, column: 66, scope: !4841)
!4905 = !DILocation(line: 768, column: 20, scope: !4841)
!4906 = !DILocation(line: 768, column: 2, scope: !4841)
!4907 = !DILocation(line: 768, column: 9, scope: !4841)
!4908 = !DILocation(line: 768, column: 18, scope: !4841)
!4909 = !DILocation(line: 770, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 770, column: 6)
!4911 = !DILocation(line: 770, column: 14, scope: !4910)
!4912 = !DILocation(line: 770, column: 6, scope: !4841)
!4913 = !DILocation(line: 771, column: 46, scope: !4910)
!4914 = !DILocation(line: 771, column: 54, scope: !4910)
!4915 = !DILocation(line: 772, column: 5, scope: !4910)
!4916 = !DILocation(line: 772, column: 13, scope: !4910)
!4917 = !DILocation(line: 772, column: 21, scope: !4910)
!4918 = !DILocation(line: 772, column: 19, scope: !4910)
!4919 = !DILocation(line: 771, column: 21, scope: !4910)
!4920 = !DILocation(line: 771, column: 3, scope: !4910)
!4921 = !DILocation(line: 771, column: 10, scope: !4910)
!4922 = !DILocation(line: 771, column: 19, scope: !4910)
!4923 = !DILocation(line: 774, column: 42, scope: !4910)
!4924 = !DILocation(line: 774, column: 50, scope: !4910)
!4925 = !DILocation(line: 775, column: 5, scope: !4910)
!4926 = !DILocation(line: 775, column: 13, scope: !4910)
!4927 = !DILocation(line: 775, column: 21, scope: !4910)
!4928 = !DILocation(line: 775, column: 19, scope: !4910)
!4929 = !DILocation(line: 774, column: 21, scope: !4910)
!4930 = !DILocation(line: 774, column: 3, scope: !4910)
!4931 = !DILocation(line: 774, column: 10, scope: !4910)
!4932 = !DILocation(line: 774, column: 19, scope: !4910)
!4933 = !DILocation(line: 776, column: 31, scope: !4841)
!4934 = !DILocation(line: 776, column: 39, scope: !4841)
!4935 = !DILocation(line: 776, column: 47, scope: !4841)
!4936 = !DILocation(line: 776, column: 55, scope: !4841)
!4937 = !DILocation(line: 776, column: 45, scope: !4841)
!4938 = !DILocation(line: 776, column: 61, scope: !4841)
!4939 = !DILocation(line: 776, column: 59, scope: !4841)
!4940 = !DILocation(line: 776, column: 65, scope: !4841)
!4941 = !DILocation(line: 776, column: 16, scope: !4841)
!4942 = !DILocation(line: 776, column: 2, scope: !4841)
!4943 = !DILocation(line: 776, column: 9, scope: !4841)
!4944 = !DILocation(line: 776, column: 14, scope: !4841)
!4945 = !DILocation(line: 778, column: 19, scope: !4841)
!4946 = !DILocation(line: 778, column: 2, scope: !4841)
!4947 = !DILocation(line: 778, column: 10, scope: !4841)
!4948 = !DILocation(line: 778, column: 16, scope: !4841)
!4949 = !DILocation(line: 781, column: 2, scope: !4841)
!4950 = !DILocation(line: 781, column: 9, scope: !4841)
!4951 = !DILocation(line: 781, column: 17, scope: !4841)
!4952 = !DILocation(line: 781, column: 25, scope: !4841)
!4953 = !DILocation(line: 781, column: 23, scope: !4841)
!4954 = !DILocation(line: 781, column: 31, scope: !4841)
!4955 = !DILocation(line: 781, column: 39, scope: !4841)
!4956 = !DILocation(line: 781, column: 28, scope: !4841)
!4957 = !DILocalVariable(name: "flags", scope: !4958, file: !3, line: 782, type: !152)
!4958 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 781, column: 44)
!4959 = !DILocation(line: 782, column: 7, scope: !4958)
!4960 = !DILocalVariable(name: "bus_addr", scope: !4958, file: !3, line: 783, type: !127)
!4961 = !DILocation(line: 783, column: 7, scope: !4958)
!4962 = !DILocalVariable(name: "cpu_addr", scope: !4958, file: !3, line: 783, type: !127)
!4963 = !DILocation(line: 783, column: 17, scope: !4958)
!4964 = !DILocalVariable(name: "size", scope: !4958, file: !3, line: 783, type: !127)
!4965 = !DILocation(line: 783, column: 27, scope: !4958)
!4966 = !DILocation(line: 785, column: 11, scope: !4958)
!4967 = !DILocation(line: 785, column: 19, scope: !4958)
!4968 = !DILocation(line: 785, column: 24, scope: !4958)
!4969 = !DILocation(line: 785, column: 34, scope: !4958)
!4970 = !DILocation(line: 785, column: 42, scope: !4958)
!4971 = !DILocation(line: 785, column: 9, scope: !4958)
!4972 = !DILocation(line: 786, column: 29, scope: !4958)
!4973 = !DILocation(line: 786, column: 37, scope: !4958)
!4974 = !DILocation(line: 786, column: 45, scope: !4958)
!4975 = !DILocation(line: 786, column: 43, scope: !4958)
!4976 = !DILocation(line: 786, column: 57, scope: !4958)
!4977 = !DILocation(line: 786, column: 62, scope: !4958)
!4978 = !DILocation(line: 786, column: 60, scope: !4958)
!4979 = !DILocation(line: 786, column: 14, scope: !4958)
!4980 = !DILocation(line: 786, column: 12, scope: !4958)
!4981 = !DILocation(line: 787, column: 7, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 787, column: 7)
!4983 = !DILocation(line: 787, column: 15, scope: !4982)
!4984 = !DILocation(line: 787, column: 7, scope: !4958)
!4985 = !DILocation(line: 788, column: 40, scope: !4982)
!4986 = !DILocation(line: 788, column: 48, scope: !4982)
!4987 = !DILocation(line: 789, column: 6, scope: !4982)
!4988 = !DILocation(line: 789, column: 14, scope: !4982)
!4989 = !DILocation(line: 789, column: 22, scope: !4982)
!4990 = !DILocation(line: 789, column: 20, scope: !4982)
!4991 = !DILocation(line: 788, column: 15, scope: !4982)
!4992 = !DILocation(line: 788, column: 13, scope: !4982)
!4993 = !DILocation(line: 788, column: 4, scope: !4982)
!4994 = !DILocation(line: 791, column: 36, scope: !4982)
!4995 = !DILocation(line: 791, column: 44, scope: !4982)
!4996 = !DILocation(line: 792, column: 6, scope: !4982)
!4997 = !DILocation(line: 792, column: 14, scope: !4982)
!4998 = !DILocation(line: 792, column: 22, scope: !4982)
!4999 = !DILocation(line: 792, column: 20, scope: !4982)
!5000 = !DILocation(line: 791, column: 15, scope: !4982)
!5001 = !DILocation(line: 791, column: 13, scope: !4982)
!5002 = !DILocation(line: 793, column: 25, scope: !4958)
!5003 = !DILocation(line: 793, column: 33, scope: !4958)
!5004 = !DILocation(line: 793, column: 41, scope: !4958)
!5005 = !DILocation(line: 793, column: 49, scope: !4958)
!5006 = !DILocation(line: 793, column: 39, scope: !4958)
!5007 = !DILocation(line: 793, column: 55, scope: !4958)
!5008 = !DILocation(line: 793, column: 53, scope: !4958)
!5009 = !DILocation(line: 793, column: 59, scope: !4958)
!5010 = !DILocation(line: 793, column: 10, scope: !4958)
!5011 = !DILocation(line: 793, column: 8, scope: !4958)
!5012 = !DILocation(line: 795, column: 7, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 795, column: 7)
!5014 = !DILocation(line: 795, column: 16, scope: !5013)
!5015 = !DILocation(line: 795, column: 23, scope: !5013)
!5016 = !DILocation(line: 795, column: 13, scope: !5013)
!5017 = !DILocation(line: 795, column: 7, scope: !4958)
!5018 = !DILocation(line: 796, column: 4, scope: !5013)
!5019 = !DILocation(line: 797, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 797, column: 7)
!5021 = !DILocation(line: 797, column: 19, scope: !5020)
!5022 = !DILocation(line: 797, column: 26, scope: !5020)
!5023 = !DILocation(line: 797, column: 37, scope: !5020)
!5024 = !DILocation(line: 797, column: 44, scope: !5020)
!5025 = !DILocation(line: 797, column: 35, scope: !5020)
!5026 = !DILocation(line: 797, column: 16, scope: !5020)
!5027 = !DILocation(line: 797, column: 49, scope: !5020)
!5028 = !DILocation(line: 798, column: 7, scope: !5020)
!5029 = !DILocation(line: 798, column: 19, scope: !5020)
!5030 = !DILocation(line: 798, column: 26, scope: !5020)
!5031 = !DILocation(line: 798, column: 37, scope: !5020)
!5032 = !DILocation(line: 798, column: 44, scope: !5020)
!5033 = !DILocation(line: 798, column: 35, scope: !5020)
!5034 = !DILocation(line: 798, column: 16, scope: !5020)
!5035 = !DILocation(line: 797, column: 7, scope: !4958)
!5036 = !DILocation(line: 799, column: 4, scope: !5020)
!5037 = !DILocation(line: 801, column: 18, scope: !4958)
!5038 = !DILocation(line: 801, column: 3, scope: !4958)
!5039 = !DILocation(line: 801, column: 10, scope: !4958)
!5040 = !DILocation(line: 801, column: 15, scope: !4958)
!5041 = !DILocation(line: 802, column: 20, scope: !4958)
!5042 = !DILocation(line: 802, column: 3, scope: !4958)
!5043 = !DILocation(line: 802, column: 11, scope: !4958)
!5044 = !DILocation(line: 802, column: 17, scope: !4958)
!5045 = distinct !{!5045, !4949, !5046}
!5046 = !DILocation(line: 803, column: 2, scope: !4841)
!5047 = !DILocation(line: 805, column: 9, scope: !4841)
!5048 = !DILocation(line: 805, column: 2, scope: !4841)
!5049 = !DILocation(line: 806, column: 1, scope: !4841)
!5050 = distinct !DISubprogram(name: "of_address_to_resource", scope: !3, file: !3, line: 866, type: !4123, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5051 = !DILocalVariable(name: "dev", arg: 1, scope: !5050, file: !3, line: 866, type: !142)
!5052 = !DILocation(line: 866, column: 48, scope: !5050)
!5053 = !DILocalVariable(name: "index", arg: 2, scope: !5050, file: !3, line: 866, type: !132)
!5054 = !DILocation(line: 866, column: 57, scope: !5050)
!5055 = !DILocalVariable(name: "r", arg: 3, scope: !5050, file: !3, line: 867, type: !4125)
!5056 = !DILocation(line: 867, column: 24, scope: !5050)
!5057 = !DILocalVariable(name: "addrp", scope: !5050, file: !3, line: 869, type: !3892)
!5058 = !DILocation(line: 869, column: 16, scope: !5050)
!5059 = !DILocalVariable(name: "size", scope: !5050, file: !3, line: 870, type: !127)
!5060 = !DILocation(line: 870, column: 7, scope: !5050)
!5061 = !DILocalVariable(name: "flags", scope: !5050, file: !3, line: 871, type: !7)
!5062 = !DILocation(line: 871, column: 15, scope: !5050)
!5063 = !DILocalVariable(name: "name", scope: !5050, file: !3, line: 872, type: !147)
!5064 = !DILocation(line: 872, column: 14, scope: !5050)
!5065 = !DILocation(line: 874, column: 25, scope: !5050)
!5066 = !DILocation(line: 874, column: 30, scope: !5050)
!5067 = !DILocation(line: 874, column: 10, scope: !5050)
!5068 = !DILocation(line: 874, column: 8, scope: !5050)
!5069 = !DILocation(line: 875, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 875, column: 6)
!5071 = !DILocation(line: 875, column: 12, scope: !5070)
!5072 = !DILocation(line: 875, column: 6, scope: !5050)
!5073 = !DILocation(line: 876, column: 3, scope: !5070)
!5074 = !DILocation(line: 879, column: 32, scope: !5050)
!5075 = !DILocation(line: 879, column: 50, scope: !5050)
!5076 = !DILocation(line: 879, column: 2, scope: !5050)
!5077 = !DILocation(line: 881, column: 34, scope: !5050)
!5078 = !DILocation(line: 881, column: 39, scope: !5050)
!5079 = !DILocation(line: 881, column: 46, scope: !5050)
!5080 = !DILocation(line: 881, column: 52, scope: !5050)
!5081 = !DILocation(line: 881, column: 59, scope: !5050)
!5082 = !DILocation(line: 881, column: 65, scope: !5050)
!5083 = !DILocation(line: 881, column: 9, scope: !5050)
!5084 = !DILocation(line: 881, column: 2, scope: !5050)
!5085 = !DILocation(line: 882, column: 1, scope: !5050)
!5086 = distinct !DISubprogram(name: "of_property_read_string_index", scope: !144, file: !144, line: 1176, type: !5087, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!132, !4370, !147, !132, !3811}
!5089 = !DILocalVariable(name: "np", arg: 1, scope: !5086, file: !144, line: 1176, type: !4370)
!5090 = !DILocation(line: 1176, column: 75, scope: !5086)
!5091 = !DILocalVariable(name: "propname", arg: 2, scope: !5086, file: !144, line: 1177, type: !147)
!5092 = !DILocation(line: 1177, column: 19, scope: !5086)
!5093 = !DILocalVariable(name: "index", arg: 3, scope: !5086, file: !144, line: 1178, type: !132)
!5094 = !DILocation(line: 1178, column: 11, scope: !5086)
!5095 = !DILocalVariable(name: "output", arg: 4, scope: !5086, file: !144, line: 1178, type: !3811)
!5096 = !DILocation(line: 1178, column: 31, scope: !5086)
!5097 = !DILocalVariable(name: "rc", scope: !5086, file: !144, line: 1180, type: !132)
!5098 = !DILocation(line: 1180, column: 6, scope: !5086)
!5099 = !DILocation(line: 1180, column: 42, scope: !5086)
!5100 = !DILocation(line: 1180, column: 46, scope: !5086)
!5101 = !DILocation(line: 1180, column: 56, scope: !5086)
!5102 = !DILocation(line: 1180, column: 67, scope: !5086)
!5103 = !DILocation(line: 1180, column: 11, scope: !5086)
!5104 = !DILocation(line: 1181, column: 9, scope: !5086)
!5105 = !DILocation(line: 1181, column: 12, scope: !5086)
!5106 = !DILocation(line: 1181, column: 18, scope: !5086)
!5107 = !DILocation(line: 1181, column: 2, scope: !5086)
!5108 = distinct !DISubprogram(name: "of_iomap", scope: !3, file: !3, line: 892, type: !5109, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!118, !142, !132}
!5111 = !DILocalVariable(name: "np", arg: 1, scope: !5108, file: !3, line: 892, type: !142)
!5112 = !DILocation(line: 892, column: 44, scope: !5108)
!5113 = !DILocalVariable(name: "index", arg: 2, scope: !5108, file: !3, line: 892, type: !132)
!5114 = !DILocation(line: 892, column: 52, scope: !5108)
!5115 = !DILocalVariable(name: "res", scope: !5108, file: !3, line: 894, type: !4126)
!5116 = !DILocation(line: 894, column: 18, scope: !5108)
!5117 = !DILocation(line: 896, column: 29, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 896, column: 6)
!5119 = !DILocation(line: 896, column: 33, scope: !5118)
!5120 = !DILocation(line: 896, column: 6, scope: !5118)
!5121 = !DILocation(line: 896, column: 6, scope: !5108)
!5122 = !DILocation(line: 897, column: 3, scope: !5118)
!5123 = !DILocation(line: 899, column: 21, scope: !5108)
!5124 = !DILocation(line: 899, column: 28, scope: !5108)
!5125 = !DILocation(line: 899, column: 9, scope: !5108)
!5126 = !DILocation(line: 899, column: 2, scope: !5108)
!5127 = !DILocation(line: 900, column: 1, scope: !5108)
!5128 = distinct !DISubprogram(name: "resource_size", scope: !4127, file: !4127, line: 210, type: !5129, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!124, !5131}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!5133 = !DILocalVariable(name: "res", arg: 1, scope: !5128, file: !4127, line: 210, type: !5131)
!5134 = !DILocation(line: 210, column: 68, scope: !5128)
!5135 = !DILocation(line: 212, column: 9, scope: !5128)
!5136 = !DILocation(line: 212, column: 14, scope: !5128)
!5137 = !DILocation(line: 212, column: 20, scope: !5128)
!5138 = !DILocation(line: 212, column: 25, scope: !5128)
!5139 = !DILocation(line: 212, column: 18, scope: !5128)
!5140 = !DILocation(line: 212, column: 31, scope: !5128)
!5141 = !DILocation(line: 212, column: 2, scope: !5128)
!5142 = distinct !DISubprogram(name: "of_io_request_and_map", scope: !3, file: !3, line: 917, type: !5143, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!118, !142, !132, !147}
!5145 = !DILocalVariable(name: "np", arg: 1, scope: !5142, file: !3, line: 917, type: !142)
!5146 = !DILocation(line: 917, column: 57, scope: !5142)
!5147 = !DILocalVariable(name: "index", arg: 2, scope: !5142, file: !3, line: 917, type: !132)
!5148 = !DILocation(line: 917, column: 65, scope: !5142)
!5149 = !DILocalVariable(name: "name", arg: 3, scope: !5142, file: !3, line: 918, type: !147)
!5150 = !DILocation(line: 918, column: 21, scope: !5142)
!5151 = !DILocalVariable(name: "res", scope: !5142, file: !3, line: 920, type: !4126)
!5152 = !DILocation(line: 920, column: 18, scope: !5142)
!5153 = !DILocalVariable(name: "mem", scope: !5142, file: !3, line: 921, type: !118)
!5154 = !DILocation(line: 921, column: 16, scope: !5142)
!5155 = !DILocation(line: 923, column: 29, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 923, column: 6)
!5157 = !DILocation(line: 923, column: 33, scope: !5156)
!5158 = !DILocation(line: 923, column: 6, scope: !5156)
!5159 = !DILocation(line: 923, column: 6, scope: !5142)
!5160 = !DILocation(line: 924, column: 10, scope: !5156)
!5161 = !DILocation(line: 924, column: 3, scope: !5156)
!5162 = !DILocation(line: 926, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 926, column: 6)
!5164 = !DILocation(line: 926, column: 6, scope: !5142)
!5165 = !DILocation(line: 927, column: 14, scope: !5163)
!5166 = !DILocation(line: 927, column: 8, scope: !5163)
!5167 = !DILocation(line: 927, column: 3, scope: !5163)
!5168 = !DILocation(line: 928, column: 7, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 928, column: 6)
!5170 = !DILocation(line: 928, column: 6, scope: !5142)
!5171 = !DILocation(line: 929, column: 10, scope: !5169)
!5172 = !DILocation(line: 929, column: 3, scope: !5169)
!5173 = !DILocation(line: 931, column: 20, scope: !5142)
!5174 = !DILocation(line: 931, column: 27, scope: !5142)
!5175 = !DILocation(line: 931, column: 8, scope: !5142)
!5176 = !DILocation(line: 931, column: 6, scope: !5142)
!5177 = !DILocation(line: 932, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 932, column: 6)
!5179 = !DILocation(line: 932, column: 6, scope: !5142)
!5180 = !DILocation(line: 933, column: 3, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 932, column: 12)
!5182 = !DILocation(line: 934, column: 10, scope: !5181)
!5183 = !DILocation(line: 934, column: 3, scope: !5181)
!5184 = !DILocation(line: 937, column: 9, scope: !5142)
!5185 = !DILocation(line: 937, column: 2, scope: !5142)
!5186 = !DILocation(line: 938, column: 1, scope: !5142)
!5187 = distinct !DISubprogram(name: "ERR_PTR", scope: !5188, file: !5188, line: 24, type: !5189, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5188 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!118, !284}
!5191 = !DILocalVariable(name: "error", arg: 1, scope: !5187, file: !5188, line: 24, type: !284)
!5192 = !DILocation(line: 24, column: 48, scope: !5187)
!5193 = !DILocation(line: 26, column: 18, scope: !5187)
!5194 = !DILocation(line: 26, column: 9, scope: !5187)
!5195 = !DILocation(line: 26, column: 2, scope: !5187)
!5196 = distinct !DISubprogram(name: "of_dma_get_range", scope: !3, file: !3, line: 958, type: !5197, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!132, !142, !5199}
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!5200 = !DILocalVariable(name: "np", arg: 1, scope: !5196, file: !3, line: 958, type: !142)
!5201 = !DILocation(line: 958, column: 42, scope: !5196)
!5202 = !DILocalVariable(name: "map", arg: 2, scope: !5196, file: !3, line: 958, type: !5199)
!5203 = !DILocation(line: 958, column: 76, scope: !5196)
!5204 = !DILocalVariable(name: "node", scope: !5196, file: !3, line: 960, type: !142)
!5205 = !DILocation(line: 960, column: 22, scope: !5196)
!5206 = !DILocation(line: 960, column: 41, scope: !5196)
!5207 = !DILocation(line: 960, column: 29, scope: !5196)
!5208 = !DILocalVariable(name: "ranges", scope: !5196, file: !3, line: 961, type: !3892)
!5209 = !DILocation(line: 961, column: 16, scope: !5196)
!5210 = !DILocalVariable(name: "found_dma_ranges", scope: !5196, file: !3, line: 962, type: !140)
!5211 = !DILocation(line: 962, column: 7, scope: !5196)
!5212 = !DILocalVariable(name: "parser", scope: !5196, file: !3, line: 963, type: !4751)
!5213 = !DILocation(line: 963, column: 25, scope: !5196)
!5214 = !DILocalVariable(name: "range", scope: !5196, file: !3, line: 964, type: !4238)
!5215 = !DILocation(line: 964, column: 18, scope: !5196)
!5216 = !DILocalVariable(name: "r", scope: !5196, file: !3, line: 965, type: !5217)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!5218 = !DILocation(line: 965, column: 25, scope: !5196)
!5219 = !DILocalVariable(name: "len", scope: !5196, file: !3, line: 966, type: !132)
!5220 = !DILocation(line: 966, column: 6, scope: !5196)
!5221 = !DILocalVariable(name: "num_ranges", scope: !5196, file: !3, line: 966, type: !132)
!5222 = !DILocation(line: 966, column: 11, scope: !5196)
!5223 = !DILocalVariable(name: "ret", scope: !5196, file: !3, line: 967, type: !132)
!5224 = !DILocation(line: 967, column: 6, scope: !5196)
!5225 = !DILocation(line: 969, column: 2, scope: !5196)
!5226 = !DILocation(line: 969, column: 9, scope: !5196)
!5227 = !DILocation(line: 970, column: 28, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 969, column: 15)
!5229 = !DILocation(line: 970, column: 12, scope: !5228)
!5230 = !DILocation(line: 970, column: 10, scope: !5228)
!5231 = !DILocation(line: 973, column: 7, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 973, column: 7)
!5233 = !DILocation(line: 973, column: 14, scope: !5232)
!5234 = !DILocation(line: 973, column: 17, scope: !5232)
!5235 = !DILocation(line: 973, column: 21, scope: !5232)
!5236 = !DILocation(line: 973, column: 7, scope: !5228)
!5237 = !DILocation(line: 974, column: 4, scope: !5232)
!5238 = !DILocation(line: 977, column: 7, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 977, column: 7)
!5240 = !DILocation(line: 977, column: 24, scope: !5239)
!5241 = !DILocation(line: 977, column: 28, scope: !5239)
!5242 = !DILocation(line: 977, column: 7, scope: !5228)
!5243 = !DILocation(line: 978, column: 8, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 977, column: 36)
!5245 = !DILocation(line: 979, column: 4, scope: !5244)
!5246 = !DILocation(line: 981, column: 20, scope: !5228)
!5247 = !DILocation(line: 983, column: 33, scope: !5228)
!5248 = !DILocation(line: 983, column: 10, scope: !5228)
!5249 = !DILocation(line: 983, column: 8, scope: !5228)
!5250 = distinct !{!5250, !5225, !5251}
!5251 = !DILocation(line: 984, column: 2, scope: !5196)
!5252 = !DILocation(line: 986, column: 7, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 986, column: 6)
!5254 = !DILocation(line: 986, column: 12, scope: !5253)
!5255 = !DILocation(line: 986, column: 16, scope: !5253)
!5256 = !DILocation(line: 986, column: 6, scope: !5196)
!5257 = !DILocation(line: 987, column: 3, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 987, column: 3)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 987, column: 3)
!5260 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 986, column: 24)
!5261 = !DILocation(line: 987, column: 3, scope: !5259)
!5262 = !DILocation(line: 988, column: 7, scope: !5260)
!5263 = !DILocation(line: 989, column: 3, scope: !5260)
!5264 = !DILocation(line: 992, column: 36, scope: !5196)
!5265 = !DILocation(line: 992, column: 2, scope: !5196)
!5266 = !DILocation(line: 993, column: 2, scope: !5196)
!5267 = !DILocation(line: 993, column: 2, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 993, column: 2)
!5269 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 993, column: 2)
!5270 = !DILocation(line: 993, column: 2, scope: !5269)
!5271 = !DILocation(line: 994, column: 13, scope: !5268)
!5272 = distinct !{!5272, !5270, !5273}
!5273 = !DILocation(line: 994, column: 13, scope: !5269)
!5274 = !DILocation(line: 996, column: 14, scope: !5196)
!5275 = !DILocation(line: 996, column: 25, scope: !5196)
!5276 = !DILocation(line: 996, column: 6, scope: !5196)
!5277 = !DILocation(line: 996, column: 4, scope: !5196)
!5278 = !DILocation(line: 997, column: 7, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 997, column: 6)
!5280 = !DILocation(line: 997, column: 6, scope: !5196)
!5281 = !DILocation(line: 998, column: 7, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 997, column: 10)
!5283 = !DILocation(line: 999, column: 3, scope: !5282)
!5284 = !DILocation(line: 1005, column: 9, scope: !5196)
!5285 = !DILocation(line: 1005, column: 3, scope: !5196)
!5286 = !DILocation(line: 1005, column: 7, scope: !5196)
!5287 = !DILocation(line: 1006, column: 36, scope: !5196)
!5288 = !DILocation(line: 1006, column: 2, scope: !5196)
!5289 = !DILocation(line: 1007, column: 2, scope: !5196)
!5290 = !DILocation(line: 1007, column: 2, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 1007, column: 2)
!5292 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 1007, column: 2)
!5293 = !DILocation(line: 1007, column: 2, scope: !5292)
!5294 = !DILocation(line: 1008, column: 3, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 1008, column: 3)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1008, column: 3)
!5297 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 1007, column: 37)
!5298 = !DILocation(line: 1008, column: 3, scope: !5296)
!5299 = !DILocation(line: 1010, column: 13, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1010, column: 7)
!5301 = !DILocation(line: 1010, column: 22, scope: !5300)
!5302 = !DILocation(line: 1010, column: 7, scope: !5297)
!5303 = !DILocation(line: 1011, column: 4, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 1010, column: 38)
!5305 = !DILocation(line: 1013, column: 4, scope: !5304)
!5306 = distinct !{!5306, !5293, !5307}
!5307 = !DILocation(line: 1020, column: 2, scope: !5292)
!5308 = !DILocation(line: 1015, column: 24, scope: !5297)
!5309 = !DILocation(line: 1015, column: 3, scope: !5297)
!5310 = !DILocation(line: 1015, column: 6, scope: !5297)
!5311 = !DILocation(line: 1015, column: 16, scope: !5297)
!5312 = !DILocation(line: 1016, column: 24, scope: !5297)
!5313 = !DILocation(line: 1016, column: 3, scope: !5297)
!5314 = !DILocation(line: 1016, column: 6, scope: !5297)
!5315 = !DILocation(line: 1016, column: 16, scope: !5297)
!5316 = !DILocation(line: 1017, column: 19, scope: !5297)
!5317 = !DILocation(line: 1017, column: 3, scope: !5297)
!5318 = !DILocation(line: 1017, column: 6, scope: !5297)
!5319 = !DILocation(line: 1017, column: 11, scope: !5297)
!5320 = !DILocation(line: 1018, column: 21, scope: !5297)
!5321 = !DILocation(line: 1018, column: 38, scope: !5297)
!5322 = !DILocation(line: 1018, column: 30, scope: !5297)
!5323 = !DILocation(line: 1018, column: 3, scope: !5297)
!5324 = !DILocation(line: 1018, column: 6, scope: !5297)
!5325 = !DILocation(line: 1018, column: 13, scope: !5297)
!5326 = !DILocation(line: 1019, column: 4, scope: !5297)
!5327 = !DILabel(scope: !5196, name: "out", file: !3, line: 1021)
!5328 = !DILocation(line: 1021, column: 1, scope: !5196)
!5329 = !DILocation(line: 1022, column: 14, scope: !5196)
!5330 = !DILocation(line: 1022, column: 2, scope: !5196)
!5331 = !DILocation(line: 1023, column: 9, scope: !5196)
!5332 = !DILocation(line: 1023, column: 2, scope: !5196)
!5333 = distinct !DISubprogram(name: "of_node_get", scope: !144, file: !144, line: 125, type: !5334, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!142, !142}
!5336 = !DILocalVariable(name: "node", arg: 1, scope: !5333, file: !144, line: 125, type: !142)
!5337 = !DILocation(line: 125, column: 67, scope: !5333)
!5338 = !DILocation(line: 127, column: 9, scope: !5333)
!5339 = !DILocation(line: 127, column: 2, scope: !5333)
!5340 = distinct !DISubprogram(name: "of_get_next_dma_parent", scope: !3, file: !3, line: 647, type: !5334, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5341 = !DILocalVariable(name: "np", arg: 1, scope: !5340, file: !3, line: 647, type: !142)
!5342 = !DILocation(line: 647, column: 71, scope: !5340)
!5343 = !DILocalVariable(name: "parent", scope: !5340, file: !3, line: 649, type: !142)
!5344 = !DILocation(line: 649, column: 22, scope: !5340)
!5345 = !DILocation(line: 651, column: 31, scope: !5340)
!5346 = !DILocation(line: 651, column: 11, scope: !5340)
!5347 = !DILocation(line: 651, column: 9, scope: !5340)
!5348 = !DILocation(line: 652, column: 14, scope: !5340)
!5349 = !DILocation(line: 652, column: 2, scope: !5340)
!5350 = !DILocation(line: 654, column: 9, scope: !5340)
!5351 = !DILocation(line: 654, column: 2, scope: !5340)
!5352 = distinct !DISubprogram(name: "kcalloc", scope: !111, file: !111, line: 601, type: !5353, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!118, !296, !296, !131}
!5355 = !DILocalVariable(name: "n", arg: 1, scope: !5352, file: !111, line: 601, type: !296)
!5356 = !DILocation(line: 601, column: 36, scope: !5352)
!5357 = !DILocalVariable(name: "size", arg: 2, scope: !5352, file: !111, line: 601, type: !296)
!5358 = !DILocation(line: 601, column: 46, scope: !5352)
!5359 = !DILocalVariable(name: "flags", arg: 3, scope: !5352, file: !111, line: 601, type: !131)
!5360 = !DILocation(line: 601, column: 58, scope: !5352)
!5361 = !DILocation(line: 603, column: 23, scope: !5352)
!5362 = !DILocation(line: 603, column: 26, scope: !5352)
!5363 = !DILocation(line: 603, column: 32, scope: !5352)
!5364 = !DILocation(line: 603, column: 38, scope: !5352)
!5365 = !DILocation(line: 603, column: 9, scope: !5352)
!5366 = !DILocation(line: 603, column: 2, scope: !5352)
!5367 = distinct !DISubprogram(name: "of_dma_is_coherent", scope: !3, file: !3, line: 1035, type: !138, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5368 = !DILocalVariable(name: "np", arg: 1, scope: !5367, file: !3, line: 1035, type: !142)
!5369 = !DILocation(line: 1035, column: 45, scope: !5367)
!5370 = !DILocalVariable(name: "node", scope: !5367, file: !3, line: 1037, type: !142)
!5371 = !DILocation(line: 1037, column: 22, scope: !5367)
!5372 = !DILocation(line: 1042, column: 21, scope: !5367)
!5373 = !DILocation(line: 1042, column: 9, scope: !5367)
!5374 = !DILocation(line: 1042, column: 7, scope: !5367)
!5375 = !DILocation(line: 1044, column: 2, scope: !5367)
!5376 = !DILocation(line: 1044, column: 9, scope: !5367)
!5377 = !DILocation(line: 1045, column: 29, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 1045, column: 7)
!5379 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 1044, column: 15)
!5380 = !DILocation(line: 1045, column: 7, scope: !5378)
!5381 = !DILocation(line: 1045, column: 7, scope: !5379)
!5382 = !DILocation(line: 1046, column: 16, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 1045, column: 52)
!5384 = !DILocation(line: 1046, column: 4, scope: !5383)
!5385 = !DILocation(line: 1047, column: 4, scope: !5383)
!5386 = !DILocation(line: 1049, column: 33, scope: !5379)
!5387 = !DILocation(line: 1049, column: 10, scope: !5379)
!5388 = !DILocation(line: 1049, column: 8, scope: !5379)
!5389 = distinct !{!5389, !5375, !5390}
!5390 = !DILocation(line: 1050, column: 2, scope: !5367)
!5391 = !DILocation(line: 1051, column: 14, scope: !5367)
!5392 = !DILocation(line: 1051, column: 2, scope: !5367)
!5393 = !DILocation(line: 1052, column: 2, scope: !5367)
!5394 = !DILocation(line: 1053, column: 1, scope: !5367)
!5395 = distinct !DISubprogram(name: "of_property_read_bool", scope: !144, file: !144, line: 1192, type: !5396, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!140, !4370, !147}
!5398 = !DILocalVariable(name: "np", arg: 1, scope: !5395, file: !144, line: 1192, type: !4370)
!5399 = !DILocation(line: 1192, column: 68, scope: !5395)
!5400 = !DILocalVariable(name: "propname", arg: 2, scope: !5395, file: !144, line: 1193, type: !147)
!5401 = !DILocation(line: 1193, column: 19, scope: !5395)
!5402 = !DILocalVariable(name: "prop", scope: !5395, file: !144, line: 1195, type: !3859)
!5403 = !DILocation(line: 1195, column: 19, scope: !5395)
!5404 = !DILocation(line: 1195, column: 43, scope: !5395)
!5405 = !DILocation(line: 1195, column: 47, scope: !5395)
!5406 = !DILocation(line: 1195, column: 26, scope: !5395)
!5407 = !DILocation(line: 1197, column: 9, scope: !5395)
!5408 = !DILocation(line: 1197, column: 2, scope: !5395)
!5409 = distinct !DISubprogram(name: "__arch_swab32", scope: !5410, file: !5410, line: 8, type: !4089, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5410 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5411 = !DILocalVariable(name: "val", arg: 1, scope: !5409, file: !5410, line: 8, type: !119)
!5412 = !DILocation(line: 8, column: 61, scope: !5409)
!5413 = !DILocation(line: 10, column: 38, scope: !5409)
!5414 = !DILocation(line: 10, column: 2, scope: !5409)
!5415 = !{i32 522032}
!5416 = !DILocation(line: 11, column: 9, scope: !5409)
!5417 = !DILocation(line: 11, column: 2, scope: !5409)
!5418 = distinct !DISubprogram(name: "of_bus_pci_match", scope: !3, file: !3, line: 142, type: !3881, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5419 = !DILocalVariable(name: "np", arg: 1, scope: !5418, file: !3, line: 142, type: !142)
!5420 = !DILocation(line: 142, column: 49, scope: !5418)
!5421 = !DILocation(line: 152, column: 25, scope: !5418)
!5422 = !DILocation(line: 152, column: 9, scope: !5418)
!5423 = !DILocation(line: 152, column: 36, scope: !5418)
!5424 = !DILocation(line: 152, column: 55, scope: !5418)
!5425 = !DILocation(line: 152, column: 39, scope: !5418)
!5426 = !DILocation(line: 152, column: 68, scope: !5418)
!5427 = !DILocation(line: 153, column: 19, scope: !5418)
!5428 = !DILocation(line: 153, column: 3, scope: !5418)
!5429 = !DILocation(line: 153, column: 30, scope: !5418)
!5430 = !DILocation(line: 153, column: 49, scope: !5418)
!5431 = !DILocation(line: 153, column: 33, scope: !5418)
!5432 = !DILocation(line: 153, column: 59, scope: !5418)
!5433 = !DILocation(line: 154, column: 19, scope: !5418)
!5434 = !DILocation(line: 154, column: 3, scope: !5418)
!5435 = !DILocation(line: 152, column: 2, scope: !5418)
!5436 = distinct !DISubprogram(name: "of_bus_pci_count_cells", scope: !3, file: !3, line: 157, type: !3885, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5437 = !DILocalVariable(name: "np", arg: 1, scope: !5436, file: !3, line: 157, type: !142)
!5438 = !DILocation(line: 157, column: 56, scope: !5436)
!5439 = !DILocalVariable(name: "addrc", arg: 2, scope: !5436, file: !3, line: 158, type: !673)
!5440 = !DILocation(line: 158, column: 13, scope: !5436)
!5441 = !DILocalVariable(name: "sizec", arg: 3, scope: !5436, file: !3, line: 158, type: !673)
!5442 = !DILocation(line: 158, column: 25, scope: !5436)
!5443 = !DILocation(line: 160, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 160, column: 6)
!5445 = !DILocation(line: 160, column: 6, scope: !5436)
!5446 = !DILocation(line: 161, column: 4, scope: !5444)
!5447 = !DILocation(line: 161, column: 10, scope: !5444)
!5448 = !DILocation(line: 161, column: 3, scope: !5444)
!5449 = !DILocation(line: 162, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 162, column: 6)
!5451 = !DILocation(line: 162, column: 6, scope: !5436)
!5452 = !DILocation(line: 163, column: 4, scope: !5450)
!5453 = !DILocation(line: 163, column: 10, scope: !5450)
!5454 = !DILocation(line: 163, column: 3, scope: !5450)
!5455 = !DILocation(line: 164, column: 1, scope: !5436)
!5456 = distinct !DISubprogram(name: "of_bus_pci_map", scope: !3, file: !3, line: 166, type: !3889, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5457 = !DILocalVariable(name: "addr", arg: 1, scope: !5456, file: !3, line: 166, type: !3891)
!5458 = !DILocation(line: 166, column: 35, scope: !5456)
!5459 = !DILocalVariable(name: "range", arg: 2, scope: !5456, file: !3, line: 166, type: !3892)
!5460 = !DILocation(line: 166, column: 55, scope: !5456)
!5461 = !DILocalVariable(name: "na", arg: 3, scope: !5456, file: !3, line: 166, type: !132)
!5462 = !DILocation(line: 166, column: 66, scope: !5456)
!5463 = !DILocalVariable(name: "ns", arg: 4, scope: !5456, file: !3, line: 166, type: !132)
!5464 = !DILocation(line: 166, column: 74, scope: !5456)
!5465 = !DILocalVariable(name: "pna", arg: 5, scope: !5456, file: !3, line: 167, type: !132)
!5466 = !DILocation(line: 167, column: 7, scope: !5456)
!5467 = !DILocalVariable(name: "cp", scope: !5456, file: !3, line: 169, type: !127)
!5468 = !DILocation(line: 169, column: 6, scope: !5456)
!5469 = !DILocalVariable(name: "s", scope: !5456, file: !3, line: 169, type: !127)
!5470 = !DILocation(line: 169, column: 10, scope: !5456)
!5471 = !DILocalVariable(name: "da", scope: !5456, file: !3, line: 169, type: !127)
!5472 = !DILocation(line: 169, column: 13, scope: !5456)
!5473 = !DILocalVariable(name: "af", scope: !5456, file: !3, line: 170, type: !7)
!5474 = !DILocation(line: 170, column: 15, scope: !5456)
!5475 = !DILocalVariable(name: "rf", scope: !5456, file: !3, line: 170, type: !7)
!5476 = !DILocation(line: 170, column: 19, scope: !5456)
!5477 = !DILocation(line: 172, column: 28, scope: !5456)
!5478 = !DILocation(line: 172, column: 7, scope: !5456)
!5479 = !DILocation(line: 172, column: 5, scope: !5456)
!5480 = !DILocation(line: 173, column: 28, scope: !5456)
!5481 = !DILocation(line: 173, column: 7, scope: !5456)
!5482 = !DILocation(line: 173, column: 5, scope: !5456)
!5483 = !DILocation(line: 176, column: 7, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 176, column: 6)
!5485 = !DILocation(line: 176, column: 12, scope: !5484)
!5486 = !DILocation(line: 176, column: 10, scope: !5484)
!5487 = !DILocation(line: 176, column: 16, scope: !5484)
!5488 = !DILocation(line: 176, column: 6, scope: !5456)
!5489 = !DILocation(line: 177, column: 3, scope: !5484)
!5490 = !DILocation(line: 180, column: 22, scope: !5456)
!5491 = !DILocation(line: 180, column: 28, scope: !5456)
!5492 = !DILocation(line: 180, column: 33, scope: !5456)
!5493 = !DILocation(line: 180, column: 36, scope: !5456)
!5494 = !DILocation(line: 180, column: 7, scope: !5456)
!5495 = !DILocation(line: 180, column: 5, scope: !5456)
!5496 = !DILocation(line: 181, column: 22, scope: !5456)
!5497 = !DILocation(line: 181, column: 30, scope: !5456)
!5498 = !DILocation(line: 181, column: 28, scope: !5456)
!5499 = !DILocation(line: 181, column: 35, scope: !5456)
!5500 = !DILocation(line: 181, column: 33, scope: !5456)
!5501 = !DILocation(line: 181, column: 40, scope: !5456)
!5502 = !DILocation(line: 181, column: 7, scope: !5456)
!5503 = !DILocation(line: 181, column: 5, scope: !5456)
!5504 = !DILocation(line: 182, column: 22, scope: !5456)
!5505 = !DILocation(line: 182, column: 27, scope: !5456)
!5506 = !DILocation(line: 182, column: 32, scope: !5456)
!5507 = !DILocation(line: 182, column: 35, scope: !5456)
!5508 = !DILocation(line: 182, column: 7, scope: !5456)
!5509 = !DILocation(line: 182, column: 5, scope: !5456)
!5510 = !DILocation(line: 184, column: 2, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 184, column: 2)
!5512 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 184, column: 2)
!5513 = !DILocation(line: 184, column: 2, scope: !5512)
!5514 = !DILocation(line: 188, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 188, column: 6)
!5516 = !DILocation(line: 188, column: 11, scope: !5515)
!5517 = !DILocation(line: 188, column: 9, scope: !5515)
!5518 = !DILocation(line: 188, column: 14, scope: !5515)
!5519 = !DILocation(line: 188, column: 17, scope: !5515)
!5520 = !DILocation(line: 188, column: 24, scope: !5515)
!5521 = !DILocation(line: 188, column: 29, scope: !5515)
!5522 = !DILocation(line: 188, column: 27, scope: !5515)
!5523 = !DILocation(line: 188, column: 20, scope: !5515)
!5524 = !DILocation(line: 188, column: 6, scope: !5456)
!5525 = !DILocation(line: 189, column: 3, scope: !5515)
!5526 = !DILocation(line: 190, column: 9, scope: !5456)
!5527 = !DILocation(line: 190, column: 14, scope: !5456)
!5528 = !DILocation(line: 190, column: 12, scope: !5456)
!5529 = !DILocation(line: 190, column: 2, scope: !5456)
!5530 = !DILocation(line: 191, column: 1, scope: !5456)
!5531 = distinct !DISubprogram(name: "of_bus_pci_translate", scope: !3, file: !3, line: 193, type: !3896, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5532 = !DILocalVariable(name: "addr", arg: 1, scope: !5531, file: !3, line: 193, type: !3891)
!5533 = !DILocation(line: 193, column: 41, scope: !5531)
!5534 = !DILocalVariable(name: "offset", arg: 2, scope: !5531, file: !3, line: 193, type: !127)
!5535 = !DILocation(line: 193, column: 51, scope: !5531)
!5536 = !DILocalVariable(name: "na", arg: 3, scope: !5531, file: !3, line: 193, type: !132)
!5537 = !DILocation(line: 193, column: 63, scope: !5531)
!5538 = !DILocation(line: 195, column: 34, scope: !5531)
!5539 = !DILocation(line: 195, column: 39, scope: !5531)
!5540 = !DILocation(line: 195, column: 44, scope: !5531)
!5541 = !DILocation(line: 195, column: 52, scope: !5531)
!5542 = !DILocation(line: 195, column: 55, scope: !5531)
!5543 = !DILocation(line: 195, column: 9, scope: !5531)
!5544 = !DILocation(line: 195, column: 2, scope: !5531)
!5545 = distinct !DISubprogram(name: "of_bus_pci_get_flags", scope: !3, file: !3, line: 106, type: !3901, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5546 = !DILocalVariable(name: "p", arg: 1, scope: !5547, file: !4088, line: 184, type: !5550)
!5547 = distinct !DISubprogram(name: "__swab32p", scope: !4088, file: !4088, line: 184, type: !5548, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{!119, !5550}
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!5552 = !DILocation(line: 184, column: 53, scope: !5547, inlinedAt: !5553)
!5553 = distinct !DILocation(line: 82, column: 9, scope: !5554, inlinedAt: !5558)
!5554 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !5555, file: !5555, line: 80, type: !5556, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5555 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!119, !3892}
!5558 = distinct !DILocation(line: 109, column: 10, scope: !5545)
!5559 = !DILocalVariable(name: "p", arg: 1, scope: !5554, file: !5555, line: 80, type: !3892)
!5560 = !DILocation(line: 80, column: 59, scope: !5554, inlinedAt: !5558)
!5561 = !DILocalVariable(name: "addr", arg: 1, scope: !5545, file: !3, line: 106, type: !3892)
!5562 = !DILocation(line: 106, column: 56, scope: !5545)
!5563 = !DILocalVariable(name: "flags", scope: !5545, file: !3, line: 108, type: !7)
!5564 = !DILocation(line: 108, column: 15, scope: !5545)
!5565 = !DILocalVariable(name: "w", scope: !5545, file: !3, line: 109, type: !152)
!5566 = !DILocation(line: 109, column: 6, scope: !5545)
!5567 = !DILocation(line: 109, column: 23, scope: !5545)
!5568 = !DILocation(line: 82, column: 28, scope: !5554, inlinedAt: !5558)
!5569 = !DILocation(line: 189, column: 9, scope: !5547, inlinedAt: !5553)
!5570 = !DILocation(line: 114, column: 10, scope: !5545)
!5571 = !DILocation(line: 114, column: 12, scope: !5545)
!5572 = !DILocation(line: 114, column: 19, scope: !5545)
!5573 = !DILocation(line: 114, column: 2, scope: !5545)
!5574 = !DILocation(line: 116, column: 9, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 114, column: 27)
!5576 = !DILocation(line: 117, column: 3, scope: !5575)
!5577 = !DILocation(line: 120, column: 9, scope: !5575)
!5578 = !DILocation(line: 121, column: 3, scope: !5575)
!5579 = !DILocation(line: 123, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 123, column: 6)
!5581 = !DILocation(line: 123, column: 8, scope: !5580)
!5582 = !DILocation(line: 123, column: 6, scope: !5545)
!5583 = !DILocation(line: 124, column: 9, scope: !5580)
!5584 = !DILocation(line: 124, column: 3, scope: !5580)
!5585 = !DILocation(line: 125, column: 9, scope: !5545)
!5586 = !DILocation(line: 125, column: 2, scope: !5545)
!5587 = distinct !DISubprogram(name: "of_bus_isa_match", scope: !3, file: !3, line: 315, type: !3881, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5588 = !DILocalVariable(name: "np", arg: 1, scope: !5587, file: !3, line: 315, type: !142)
!5589 = !DILocation(line: 315, column: 49, scope: !5587)
!5590 = !DILocation(line: 317, column: 25, scope: !5587)
!5591 = !DILocation(line: 317, column: 9, scope: !5587)
!5592 = !DILocation(line: 317, column: 2, scope: !5587)
!5593 = distinct !DISubprogram(name: "of_bus_isa_count_cells", scope: !3, file: !3, line: 320, type: !3885, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5594 = !DILocalVariable(name: "child", arg: 1, scope: !5593, file: !3, line: 320, type: !142)
!5595 = !DILocation(line: 320, column: 56, scope: !5593)
!5596 = !DILocalVariable(name: "addrc", arg: 2, scope: !5593, file: !3, line: 321, type: !673)
!5597 = !DILocation(line: 321, column: 13, scope: !5593)
!5598 = !DILocalVariable(name: "sizec", arg: 3, scope: !5593, file: !3, line: 321, type: !673)
!5599 = !DILocation(line: 321, column: 25, scope: !5593)
!5600 = !DILocation(line: 323, column: 6, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 323, column: 6)
!5602 = !DILocation(line: 323, column: 6, scope: !5593)
!5603 = !DILocation(line: 324, column: 4, scope: !5601)
!5604 = !DILocation(line: 324, column: 10, scope: !5601)
!5605 = !DILocation(line: 324, column: 3, scope: !5601)
!5606 = !DILocation(line: 325, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 325, column: 6)
!5608 = !DILocation(line: 325, column: 6, scope: !5593)
!5609 = !DILocation(line: 326, column: 4, scope: !5607)
!5610 = !DILocation(line: 326, column: 10, scope: !5607)
!5611 = !DILocation(line: 326, column: 3, scope: !5607)
!5612 = !DILocation(line: 327, column: 1, scope: !5593)
!5613 = distinct !DISubprogram(name: "of_bus_isa_map", scope: !3, file: !3, line: 329, type: !3889, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5614 = !DILocalVariable(name: "addr", arg: 1, scope: !5613, file: !3, line: 329, type: !3891)
!5615 = !DILocation(line: 329, column: 35, scope: !5613)
!5616 = !DILocalVariable(name: "range", arg: 2, scope: !5613, file: !3, line: 329, type: !3892)
!5617 = !DILocation(line: 329, column: 55, scope: !5613)
!5618 = !DILocalVariable(name: "na", arg: 3, scope: !5613, file: !3, line: 329, type: !132)
!5619 = !DILocation(line: 329, column: 66, scope: !5613)
!5620 = !DILocalVariable(name: "ns", arg: 4, scope: !5613, file: !3, line: 329, type: !132)
!5621 = !DILocation(line: 329, column: 74, scope: !5613)
!5622 = !DILocalVariable(name: "pna", arg: 5, scope: !5613, file: !3, line: 330, type: !132)
!5623 = !DILocation(line: 330, column: 7, scope: !5613)
!5624 = !DILocalVariable(name: "cp", scope: !5613, file: !3, line: 332, type: !127)
!5625 = !DILocation(line: 332, column: 6, scope: !5613)
!5626 = !DILocalVariable(name: "s", scope: !5613, file: !3, line: 332, type: !127)
!5627 = !DILocation(line: 332, column: 10, scope: !5613)
!5628 = !DILocalVariable(name: "da", scope: !5613, file: !3, line: 332, type: !127)
!5629 = !DILocation(line: 332, column: 13, scope: !5613)
!5630 = !DILocation(line: 335, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 335, column: 6)
!5632 = !DILocation(line: 335, column: 17, scope: !5631)
!5633 = !DILocation(line: 335, column: 15, scope: !5631)
!5634 = !DILocation(line: 335, column: 27, scope: !5631)
!5635 = !DILocation(line: 335, column: 6, scope: !5613)
!5636 = !DILocation(line: 336, column: 3, scope: !5631)
!5637 = !DILocation(line: 339, column: 22, scope: !5613)
!5638 = !DILocation(line: 339, column: 28, scope: !5613)
!5639 = !DILocation(line: 339, column: 33, scope: !5613)
!5640 = !DILocation(line: 339, column: 36, scope: !5613)
!5641 = !DILocation(line: 339, column: 7, scope: !5613)
!5642 = !DILocation(line: 339, column: 5, scope: !5613)
!5643 = !DILocation(line: 340, column: 22, scope: !5613)
!5644 = !DILocation(line: 340, column: 30, scope: !5613)
!5645 = !DILocation(line: 340, column: 28, scope: !5613)
!5646 = !DILocation(line: 340, column: 35, scope: !5613)
!5647 = !DILocation(line: 340, column: 33, scope: !5613)
!5648 = !DILocation(line: 340, column: 40, scope: !5613)
!5649 = !DILocation(line: 340, column: 7, scope: !5613)
!5650 = !DILocation(line: 340, column: 5, scope: !5613)
!5651 = !DILocation(line: 341, column: 22, scope: !5613)
!5652 = !DILocation(line: 341, column: 27, scope: !5613)
!5653 = !DILocation(line: 341, column: 32, scope: !5613)
!5654 = !DILocation(line: 341, column: 35, scope: !5613)
!5655 = !DILocation(line: 341, column: 7, scope: !5613)
!5656 = !DILocation(line: 341, column: 5, scope: !5613)
!5657 = !DILocation(line: 343, column: 2, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 343, column: 2)
!5659 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 343, column: 2)
!5660 = !DILocation(line: 343, column: 2, scope: !5659)
!5661 = !DILocation(line: 347, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 347, column: 6)
!5663 = !DILocation(line: 347, column: 11, scope: !5662)
!5664 = !DILocation(line: 347, column: 9, scope: !5662)
!5665 = !DILocation(line: 347, column: 14, scope: !5662)
!5666 = !DILocation(line: 347, column: 17, scope: !5662)
!5667 = !DILocation(line: 347, column: 24, scope: !5662)
!5668 = !DILocation(line: 347, column: 29, scope: !5662)
!5669 = !DILocation(line: 347, column: 27, scope: !5662)
!5670 = !DILocation(line: 347, column: 20, scope: !5662)
!5671 = !DILocation(line: 347, column: 6, scope: !5613)
!5672 = !DILocation(line: 348, column: 3, scope: !5662)
!5673 = !DILocation(line: 349, column: 9, scope: !5613)
!5674 = !DILocation(line: 349, column: 14, scope: !5613)
!5675 = !DILocation(line: 349, column: 12, scope: !5613)
!5676 = !DILocation(line: 349, column: 2, scope: !5613)
!5677 = !DILocation(line: 350, column: 1, scope: !5613)
!5678 = distinct !DISubprogram(name: "of_bus_isa_translate", scope: !3, file: !3, line: 352, type: !3896, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5679 = !DILocalVariable(name: "addr", arg: 1, scope: !5678, file: !3, line: 352, type: !3891)
!5680 = !DILocation(line: 352, column: 41, scope: !5678)
!5681 = !DILocalVariable(name: "offset", arg: 2, scope: !5678, file: !3, line: 352, type: !127)
!5682 = !DILocation(line: 352, column: 51, scope: !5678)
!5683 = !DILocalVariable(name: "na", arg: 3, scope: !5678, file: !3, line: 352, type: !132)
!5684 = !DILocation(line: 352, column: 63, scope: !5678)
!5685 = !DILocation(line: 354, column: 34, scope: !5678)
!5686 = !DILocation(line: 354, column: 39, scope: !5678)
!5687 = !DILocation(line: 354, column: 44, scope: !5678)
!5688 = !DILocation(line: 354, column: 52, scope: !5678)
!5689 = !DILocation(line: 354, column: 55, scope: !5678)
!5690 = !DILocation(line: 354, column: 9, scope: !5678)
!5691 = !DILocation(line: 354, column: 2, scope: !5678)
!5692 = distinct !DISubprogram(name: "of_bus_isa_get_flags", scope: !3, file: !3, line: 357, type: !3901, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5693 = !DILocation(line: 184, column: 53, scope: !5547, inlinedAt: !5694)
!5694 = distinct !DILocation(line: 82, column: 9, scope: !5554, inlinedAt: !5695)
!5695 = distinct !DILocation(line: 360, column: 10, scope: !5692)
!5696 = !DILocation(line: 80, column: 59, scope: !5554, inlinedAt: !5695)
!5697 = !DILocalVariable(name: "addr", arg: 1, scope: !5692, file: !3, line: 357, type: !3892)
!5698 = !DILocation(line: 357, column: 56, scope: !5692)
!5699 = !DILocalVariable(name: "flags", scope: !5692, file: !3, line: 359, type: !7)
!5700 = !DILocation(line: 359, column: 15, scope: !5692)
!5701 = !DILocalVariable(name: "w", scope: !5692, file: !3, line: 360, type: !152)
!5702 = !DILocation(line: 360, column: 6, scope: !5692)
!5703 = !DILocation(line: 360, column: 23, scope: !5692)
!5704 = !DILocation(line: 82, column: 28, scope: !5554, inlinedAt: !5695)
!5705 = !DILocation(line: 189, column: 9, scope: !5547, inlinedAt: !5694)
!5706 = !DILocation(line: 362, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 362, column: 6)
!5708 = !DILocation(line: 362, column: 8, scope: !5707)
!5709 = !DILocation(line: 362, column: 6, scope: !5692)
!5710 = !DILocation(line: 363, column: 9, scope: !5707)
!5711 = !DILocation(line: 363, column: 3, scope: !5707)
!5712 = !DILocation(line: 365, column: 9, scope: !5707)
!5713 = !DILocation(line: 366, column: 9, scope: !5692)
!5714 = !DILocation(line: 366, column: 2, scope: !5692)
!5715 = distinct !DISubprogram(name: "of_bus_default_count_cells", scope: !3, file: !3, line: 61, type: !3885, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5716 = !DILocalVariable(name: "dev", arg: 1, scope: !5715, file: !3, line: 61, type: !142)
!5717 = !DILocation(line: 61, column: 60, scope: !5715)
!5718 = !DILocalVariable(name: "addrc", arg: 2, scope: !5715, file: !3, line: 62, type: !673)
!5719 = !DILocation(line: 62, column: 17, scope: !5715)
!5720 = !DILocalVariable(name: "sizec", arg: 3, scope: !5715, file: !3, line: 62, type: !673)
!5721 = !DILocation(line: 62, column: 29, scope: !5715)
!5722 = !DILocation(line: 64, column: 6, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 64, column: 6)
!5724 = !DILocation(line: 64, column: 6, scope: !5715)
!5725 = !DILocation(line: 65, column: 28, scope: !5723)
!5726 = !DILocation(line: 65, column: 12, scope: !5723)
!5727 = !DILocation(line: 65, column: 4, scope: !5723)
!5728 = !DILocation(line: 65, column: 10, scope: !5723)
!5729 = !DILocation(line: 65, column: 3, scope: !5723)
!5730 = !DILocation(line: 66, column: 6, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 66, column: 6)
!5732 = !DILocation(line: 66, column: 6, scope: !5715)
!5733 = !DILocation(line: 67, column: 28, scope: !5731)
!5734 = !DILocation(line: 67, column: 12, scope: !5731)
!5735 = !DILocation(line: 67, column: 4, scope: !5731)
!5736 = !DILocation(line: 67, column: 10, scope: !5731)
!5737 = !DILocation(line: 67, column: 3, scope: !5731)
!5738 = !DILocation(line: 68, column: 1, scope: !5715)
!5739 = distinct !DISubprogram(name: "of_bus_default_map", scope: !3, file: !3, line: 70, type: !3889, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5740 = !DILocalVariable(name: "addr", arg: 1, scope: !5739, file: !3, line: 70, type: !3891)
!5741 = !DILocation(line: 70, column: 39, scope: !5739)
!5742 = !DILocalVariable(name: "range", arg: 2, scope: !5739, file: !3, line: 70, type: !3892)
!5743 = !DILocation(line: 70, column: 59, scope: !5739)
!5744 = !DILocalVariable(name: "na", arg: 3, scope: !5739, file: !3, line: 71, type: !132)
!5745 = !DILocation(line: 71, column: 7, scope: !5739)
!5746 = !DILocalVariable(name: "ns", arg: 4, scope: !5739, file: !3, line: 71, type: !132)
!5747 = !DILocation(line: 71, column: 15, scope: !5739)
!5748 = !DILocalVariable(name: "pna", arg: 5, scope: !5739, file: !3, line: 71, type: !132)
!5749 = !DILocation(line: 71, column: 23, scope: !5739)
!5750 = !DILocalVariable(name: "cp", scope: !5739, file: !3, line: 73, type: !127)
!5751 = !DILocation(line: 73, column: 6, scope: !5739)
!5752 = !DILocalVariable(name: "s", scope: !5739, file: !3, line: 73, type: !127)
!5753 = !DILocation(line: 73, column: 10, scope: !5739)
!5754 = !DILocalVariable(name: "da", scope: !5739, file: !3, line: 73, type: !127)
!5755 = !DILocation(line: 73, column: 13, scope: !5739)
!5756 = !DILocation(line: 75, column: 22, scope: !5739)
!5757 = !DILocation(line: 75, column: 29, scope: !5739)
!5758 = !DILocation(line: 75, column: 7, scope: !5739)
!5759 = !DILocation(line: 75, column: 5, scope: !5739)
!5760 = !DILocation(line: 76, column: 22, scope: !5739)
!5761 = !DILocation(line: 76, column: 30, scope: !5739)
!5762 = !DILocation(line: 76, column: 28, scope: !5739)
!5763 = !DILocation(line: 76, column: 35, scope: !5739)
!5764 = !DILocation(line: 76, column: 33, scope: !5739)
!5765 = !DILocation(line: 76, column: 40, scope: !5739)
!5766 = !DILocation(line: 76, column: 7, scope: !5739)
!5767 = !DILocation(line: 76, column: 5, scope: !5739)
!5768 = !DILocation(line: 77, column: 22, scope: !5739)
!5769 = !DILocation(line: 77, column: 28, scope: !5739)
!5770 = !DILocation(line: 77, column: 7, scope: !5739)
!5771 = !DILocation(line: 77, column: 5, scope: !5739)
!5772 = !DILocation(line: 79, column: 2, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 79, column: 2)
!5774 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 79, column: 2)
!5775 = !DILocation(line: 79, column: 2, scope: !5774)
!5776 = !DILocation(line: 83, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 83, column: 6)
!5778 = !DILocation(line: 83, column: 11, scope: !5777)
!5779 = !DILocation(line: 83, column: 9, scope: !5777)
!5780 = !DILocation(line: 83, column: 14, scope: !5777)
!5781 = !DILocation(line: 83, column: 17, scope: !5777)
!5782 = !DILocation(line: 83, column: 24, scope: !5777)
!5783 = !DILocation(line: 83, column: 29, scope: !5777)
!5784 = !DILocation(line: 83, column: 27, scope: !5777)
!5785 = !DILocation(line: 83, column: 20, scope: !5777)
!5786 = !DILocation(line: 83, column: 6, scope: !5739)
!5787 = !DILocation(line: 84, column: 3, scope: !5777)
!5788 = !DILocation(line: 85, column: 9, scope: !5739)
!5789 = !DILocation(line: 85, column: 14, scope: !5739)
!5790 = !DILocation(line: 85, column: 12, scope: !5739)
!5791 = !DILocation(line: 85, column: 2, scope: !5739)
!5792 = !DILocation(line: 86, column: 1, scope: !5739)
!5793 = distinct !DISubprogram(name: "of_bus_default_translate", scope: !3, file: !3, line: 88, type: !3896, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5794 = !DILocalVariable(name: "addr", arg: 1, scope: !5793, file: !3, line: 88, type: !3891)
!5795 = !DILocation(line: 88, column: 45, scope: !5793)
!5796 = !DILocalVariable(name: "offset", arg: 2, scope: !5793, file: !3, line: 88, type: !127)
!5797 = !DILocation(line: 88, column: 55, scope: !5793)
!5798 = !DILocalVariable(name: "na", arg: 3, scope: !5793, file: !3, line: 88, type: !132)
!5799 = !DILocation(line: 88, column: 67, scope: !5793)
!5800 = !DILocalVariable(name: "a", scope: !5793, file: !3, line: 90, type: !127)
!5801 = !DILocation(line: 90, column: 6, scope: !5793)
!5802 = !DILocation(line: 90, column: 25, scope: !5793)
!5803 = !DILocation(line: 90, column: 31, scope: !5793)
!5804 = !DILocation(line: 90, column: 10, scope: !5793)
!5805 = !DILocation(line: 91, column: 9, scope: !5793)
!5806 = !DILocation(line: 91, column: 2, scope: !5793)
!5807 = !DILocation(line: 91, column: 18, scope: !5793)
!5808 = !DILocation(line: 91, column: 21, scope: !5793)
!5809 = !DILocation(line: 92, column: 7, scope: !5793)
!5810 = !DILocation(line: 92, column: 4, scope: !5793)
!5811 = !DILocation(line: 93, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 93, column: 6)
!5813 = !DILocation(line: 93, column: 9, scope: !5812)
!5814 = !DILocation(line: 93, column: 6, scope: !5793)
!5815 = !DILocation(line: 94, column: 18, scope: !5812)
!5816 = !DILocation(line: 94, column: 3, scope: !5812)
!5817 = !DILocation(line: 94, column: 8, scope: !5812)
!5818 = !DILocation(line: 94, column: 11, scope: !5812)
!5819 = !DILocation(line: 94, column: 16, scope: !5812)
!5820 = !DILocation(line: 95, column: 17, scope: !5793)
!5821 = !DILocation(line: 95, column: 2, scope: !5793)
!5822 = !DILocation(line: 95, column: 7, scope: !5793)
!5823 = !DILocation(line: 95, column: 10, scope: !5793)
!5824 = !DILocation(line: 95, column: 15, scope: !5793)
!5825 = !DILocation(line: 97, column: 2, scope: !5793)
!5826 = distinct !DISubprogram(name: "of_bus_default_get_flags", scope: !3, file: !3, line: 100, type: !3901, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5827 = !DILocalVariable(name: "addr", arg: 1, scope: !5826, file: !3, line: 100, type: !3892)
!5828 = !DILocation(line: 100, column: 60, scope: !5826)
!5829 = !DILocation(line: 102, column: 2, scope: !5826)
!5830 = distinct !DISubprogram(name: "of_node_is_type", scope: !144, file: !144, line: 1045, type: !5396, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5831 = !DILocalVariable(name: "np", arg: 1, scope: !5830, file: !144, line: 1045, type: !4370)
!5832 = !DILocation(line: 1045, column: 62, scope: !5830)
!5833 = !DILocalVariable(name: "type", arg: 2, scope: !5830, file: !144, line: 1045, type: !147)
!5834 = !DILocation(line: 1045, column: 78, scope: !5830)
!5835 = !DILocalVariable(name: "match", scope: !5830, file: !144, line: 1047, type: !147)
!5836 = !DILocation(line: 1047, column: 14, scope: !5830)
!5837 = !DILocation(line: 1047, column: 46, scope: !5830)
!5838 = !DILocation(line: 1047, column: 22, scope: !5830)
!5839 = !DILocation(line: 1049, column: 9, scope: !5830)
!5840 = !DILocation(line: 1049, column: 12, scope: !5830)
!5841 = !DILocation(line: 1049, column: 15, scope: !5830)
!5842 = !DILocation(line: 1049, column: 21, scope: !5830)
!5843 = !DILocation(line: 1049, column: 24, scope: !5830)
!5844 = !DILocation(line: 1049, column: 29, scope: !5830)
!5845 = !DILocation(line: 1049, column: 40, scope: !5830)
!5846 = !DILocation(line: 1049, column: 47, scope: !5830)
!5847 = !DILocation(line: 1049, column: 33, scope: !5830)
!5848 = !DILocation(line: 1049, column: 32, scope: !5830)
!5849 = !DILocation(line: 0, scope: !5830)
!5850 = !DILocation(line: 1049, column: 2, scope: !5830)
!5851 = !DILocalVariable(name: "np", arg: 1, scope: !137, file: !3, line: 132, type: !142)
!5852 = !DILocation(line: 132, column: 49, scope: !137)
!5853 = !DILocalVariable(name: "is_pcie", scope: !137, file: !3, line: 134, type: !140)
!5854 = !DILocation(line: 134, column: 7, scope: !137)
!5855 = !DILocation(line: 134, column: 33, scope: !137)
!5856 = !DILocation(line: 134, column: 17, scope: !137)
!5857 = !DILocation(line: 136, column: 6, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !137, file: !3, line: 136, column: 6)
!5859 = !DILocation(line: 136, column: 6, scope: !137)
!5860 = !DILocalVariable(name: "__ret_print_once", scope: !5861, file: !3, line: 137, type: !140)
!5861 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 137, column: 3)
!5862 = !DILocation(line: 137, column: 3, scope: !5861)
!5863 = !DILocation(line: 137, column: 3, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 137, column: 3)
!5865 = !DILocation(line: 137, column: 3, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 137, column: 3)
!5867 = !DILocation(line: 137, column: 3, scope: !5858)
!5868 = !DILocation(line: 139, column: 9, scope: !137)
!5869 = !DILocation(line: 139, column: 2, scope: !137)
!5870 = distinct !DISubprogram(name: "of_node_get_device_type", scope: !144, file: !144, line: 1040, type: !5871, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{!147, !4370}
!5873 = !DILocalVariable(name: "np", arg: 1, scope: !5870, file: !144, line: 1040, type: !4370)
!5874 = !DILocation(line: 1040, column: 77, scope: !5870)
!5875 = !DILocation(line: 1042, column: 25, scope: !5870)
!5876 = !DILocation(line: 1042, column: 9, scope: !5870)
!5877 = !DILocation(line: 1042, column: 2, scope: !5870)
!5878 = distinct !DISubprogram(name: "of_dump_addr", scope: !3, file: !3, line: 40, type: !5879, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{null, !147, !3892, !132}
!5881 = !DILocalVariable(name: "s", arg: 1, scope: !5878, file: !3, line: 40, type: !147)
!5882 = !DILocation(line: 40, column: 38, scope: !5878)
!5883 = !DILocalVariable(name: "addr", arg: 2, scope: !5878, file: !3, line: 40, type: !3892)
!5884 = !DILocation(line: 40, column: 55, scope: !5878)
!5885 = !DILocalVariable(name: "na", arg: 3, scope: !5878, file: !3, line: 40, type: !132)
!5886 = !DILocation(line: 40, column: 65, scope: !5878)
!5887 = !DILocation(line: 40, column: 71, scope: !5878)
!5888 = distinct !DISubprogram(name: "of_translate_one", scope: !3, file: !3, line: 441, type: !5889, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!132, !142, !3926, !3926, !3891, !132, !132, !132, !147}
!5891 = !DILocalVariable(name: "parent", arg: 1, scope: !5888, file: !3, line: 441, type: !142)
!5892 = !DILocation(line: 441, column: 49, scope: !5888)
!5893 = !DILocalVariable(name: "bus", arg: 2, scope: !5888, file: !3, line: 441, type: !3926)
!5894 = !DILocation(line: 441, column: 72, scope: !5888)
!5895 = !DILocalVariable(name: "pbus", arg: 3, scope: !5888, file: !3, line: 442, type: !3926)
!5896 = !DILocation(line: 442, column: 23, scope: !5888)
!5897 = !DILocalVariable(name: "addr", arg: 4, scope: !5888, file: !3, line: 442, type: !3891)
!5898 = !DILocation(line: 442, column: 37, scope: !5888)
!5899 = !DILocalVariable(name: "na", arg: 5, scope: !5888, file: !3, line: 443, type: !132)
!5900 = !DILocation(line: 443, column: 12, scope: !5888)
!5901 = !DILocalVariable(name: "ns", arg: 6, scope: !5888, file: !3, line: 443, type: !132)
!5902 = !DILocation(line: 443, column: 20, scope: !5888)
!5903 = !DILocalVariable(name: "pna", arg: 7, scope: !5888, file: !3, line: 443, type: !132)
!5904 = !DILocation(line: 443, column: 28, scope: !5888)
!5905 = !DILocalVariable(name: "rprop", arg: 8, scope: !5888, file: !3, line: 443, type: !147)
!5906 = !DILocation(line: 443, column: 45, scope: !5888)
!5907 = !DILocalVariable(name: "ranges", scope: !5888, file: !3, line: 445, type: !3892)
!5908 = !DILocation(line: 445, column: 16, scope: !5888)
!5909 = !DILocalVariable(name: "rlen", scope: !5888, file: !3, line: 446, type: !7)
!5910 = !DILocation(line: 446, column: 15, scope: !5888)
!5911 = !DILocalVariable(name: "rone", scope: !5888, file: !3, line: 447, type: !132)
!5912 = !DILocation(line: 447, column: 6, scope: !5888)
!5913 = !DILocalVariable(name: "offset", scope: !5888, file: !3, line: 448, type: !127)
!5914 = !DILocation(line: 448, column: 6, scope: !5888)
!5915 = !DILocation(line: 469, column: 27, scope: !5888)
!5916 = !DILocation(line: 469, column: 35, scope: !5888)
!5917 = !DILocation(line: 469, column: 11, scope: !5888)
!5918 = !DILocation(line: 469, column: 9, scope: !5888)
!5919 = !DILocation(line: 470, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 470, column: 6)
!5921 = !DILocation(line: 470, column: 13, scope: !5920)
!5922 = !DILocation(line: 470, column: 21, scope: !5920)
!5923 = !DILocation(line: 470, column: 47, scope: !5920)
!5924 = !DILocation(line: 470, column: 25, scope: !5920)
!5925 = !DILocation(line: 470, column: 55, scope: !5920)
!5926 = !DILocation(line: 471, column: 13, scope: !5920)
!5927 = !DILocation(line: 471, column: 6, scope: !5920)
!5928 = !DILocation(line: 470, column: 6, scope: !5888)
!5929 = !DILocation(line: 472, column: 3, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 472, column: 3)
!5931 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 472, column: 3)
!5932 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 471, column: 35)
!5933 = !DILocation(line: 472, column: 3, scope: !5931)
!5934 = !DILocation(line: 473, column: 3, scope: !5932)
!5935 = !DILocation(line: 475, column: 6, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 475, column: 6)
!5937 = !DILocation(line: 475, column: 13, scope: !5936)
!5938 = !DILocation(line: 475, column: 21, scope: !5936)
!5939 = !DILocation(line: 475, column: 24, scope: !5936)
!5940 = !DILocation(line: 475, column: 29, scope: !5936)
!5941 = !DILocation(line: 475, column: 6, scope: !5888)
!5942 = !DILocation(line: 476, column: 27, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 475, column: 35)
!5944 = !DILocation(line: 476, column: 33, scope: !5943)
!5945 = !DILocation(line: 476, column: 12, scope: !5943)
!5946 = !DILocation(line: 476, column: 10, scope: !5943)
!5947 = !DILocation(line: 477, column: 10, scope: !5943)
!5948 = !DILocation(line: 477, column: 3, scope: !5943)
!5949 = !DILocation(line: 477, column: 19, scope: !5943)
!5950 = !DILocation(line: 477, column: 23, scope: !5943)
!5951 = !DILocation(line: 478, column: 3, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 478, column: 3)
!5953 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 478, column: 3)
!5954 = !DILocation(line: 478, column: 3, scope: !5953)
!5955 = !DILocation(line: 479, column: 3, scope: !5943)
!5956 = !DILocation(line: 482, column: 2, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 482, column: 2)
!5958 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 482, column: 2)
!5959 = !DILocation(line: 482, column: 2, scope: !5958)
!5960 = !DILocation(line: 485, column: 7, scope: !5888)
!5961 = !DILocation(line: 486, column: 9, scope: !5888)
!5962 = !DILocation(line: 486, column: 14, scope: !5888)
!5963 = !DILocation(line: 486, column: 12, scope: !5888)
!5964 = !DILocation(line: 486, column: 20, scope: !5888)
!5965 = !DILocation(line: 486, column: 18, scope: !5888)
!5966 = !DILocation(line: 486, column: 7, scope: !5888)
!5967 = !DILocation(line: 487, column: 2, scope: !5888)
!5968 = !DILocation(line: 487, column: 9, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 487, column: 2)
!5970 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 487, column: 2)
!5971 = !DILocation(line: 487, column: 17, scope: !5969)
!5972 = !DILocation(line: 487, column: 14, scope: !5969)
!5973 = !DILocation(line: 487, column: 2, scope: !5970)
!5974 = !DILocation(line: 488, column: 12, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 487, column: 53)
!5976 = !DILocation(line: 488, column: 17, scope: !5975)
!5977 = !DILocation(line: 488, column: 21, scope: !5975)
!5978 = !DILocation(line: 488, column: 27, scope: !5975)
!5979 = !DILocation(line: 488, column: 35, scope: !5975)
!5980 = !DILocation(line: 488, column: 39, scope: !5975)
!5981 = !DILocation(line: 488, column: 43, scope: !5975)
!5982 = !DILocation(line: 488, column: 10, scope: !5975)
!5983 = !DILocation(line: 489, column: 7, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 489, column: 7)
!5985 = !DILocation(line: 489, column: 14, scope: !5984)
!5986 = !DILocation(line: 489, column: 7, scope: !5975)
!5987 = !DILocation(line: 490, column: 4, scope: !5984)
!5988 = !DILocation(line: 491, column: 2, scope: !5975)
!5989 = !DILocation(line: 487, column: 31, scope: !5969)
!5990 = !DILocation(line: 487, column: 28, scope: !5969)
!5991 = !DILocation(line: 487, column: 47, scope: !5969)
!5992 = !DILocation(line: 487, column: 44, scope: !5969)
!5993 = !DILocation(line: 487, column: 2, scope: !5969)
!5994 = distinct !{!5994, !5973, !5995}
!5995 = !DILocation(line: 491, column: 2, scope: !5970)
!5996 = !DILocation(line: 492, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 492, column: 6)
!5998 = !DILocation(line: 492, column: 13, scope: !5997)
!5999 = !DILocation(line: 492, column: 6, scope: !5888)
!6000 = !DILocation(line: 493, column: 3, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 493, column: 3)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 493, column: 3)
!6003 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 492, column: 29)
!6004 = !DILocation(line: 493, column: 3, scope: !6002)
!6005 = !DILocation(line: 494, column: 3, scope: !6003)
!6006 = !DILocation(line: 496, column: 9, scope: !5888)
!6007 = !DILocation(line: 496, column: 2, scope: !5888)
!6008 = !DILocation(line: 496, column: 15, scope: !5888)
!6009 = !DILocation(line: 496, column: 24, scope: !5888)
!6010 = !DILocation(line: 496, column: 22, scope: !5888)
!6011 = !DILocation(line: 496, column: 32, scope: !5888)
!6012 = !DILocation(line: 496, column: 30, scope: !5888)
!6013 = !DILocation(line: 496, column: 28, scope: !5888)
!6014 = !DILabel(scope: !5888, name: "finish", file: !3, line: 498)
!6015 = !DILocation(line: 498, column: 2, scope: !5888)
!6016 = !DILocation(line: 499, column: 42, scope: !5888)
!6017 = !DILocation(line: 499, column: 48, scope: !5888)
!6018 = !DILocation(line: 499, column: 2, scope: !5888)
!6019 = !DILocation(line: 500, column: 2, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 500, column: 2)
!6021 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 500, column: 2)
!6022 = !DILocation(line: 500, column: 2, scope: !6021)
!6023 = !DILocation(line: 503, column: 9, scope: !5888)
!6024 = !DILocation(line: 503, column: 15, scope: !5888)
!6025 = !DILocation(line: 503, column: 25, scope: !5888)
!6026 = !DILocation(line: 503, column: 31, scope: !5888)
!6027 = !DILocation(line: 503, column: 39, scope: !5888)
!6028 = !DILocation(line: 503, column: 2, scope: !5888)
!6029 = !DILocation(line: 504, column: 1, scope: !5888)
!6030 = distinct !DISubprogram(name: "of_empty_ranges_quirk", scope: !3, file: !3, line: 421, type: !3881, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6031 = !DILocalVariable(name: "np", arg: 1, scope: !6030, file: !3, line: 421, type: !142)
!6032 = !DILocation(line: 421, column: 54, scope: !6030)
!6033 = !DILocation(line: 438, column: 2, scope: !6030)
!6034 = distinct !DISubprogram(name: "of_translate_ioport", scope: !3, file: !3, line: 809, type: !6035, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!127, !142, !3892, !127}
!6037 = !DILocalVariable(name: "dev", arg: 1, scope: !6034, file: !3, line: 809, type: !142)
!6038 = !DILocation(line: 809, column: 52, scope: !6034)
!6039 = !DILocalVariable(name: "in_addr", arg: 2, scope: !6034, file: !3, line: 809, type: !3892)
!6040 = !DILocation(line: 809, column: 71, scope: !6034)
!6041 = !DILocalVariable(name: "size", arg: 3, scope: !6034, file: !3, line: 810, type: !127)
!6042 = !DILocation(line: 810, column: 8, scope: !6034)
!6043 = !DILocalVariable(name: "taddr", scope: !6034, file: !3, line: 812, type: !127)
!6044 = !DILocation(line: 812, column: 6, scope: !6034)
!6045 = !DILocalVariable(name: "port", scope: !6034, file: !3, line: 813, type: !123)
!6046 = !DILocation(line: 813, column: 16, scope: !6034)
!6047 = !DILocalVariable(name: "host", scope: !6034, file: !3, line: 814, type: !142)
!6048 = !DILocation(line: 814, column: 22, scope: !6034)
!6049 = !DILocation(line: 816, column: 33, scope: !6034)
!6050 = !DILocation(line: 817, column: 12, scope: !6034)
!6051 = !DILocation(line: 816, column: 10, scope: !6034)
!6052 = !DILocation(line: 816, column: 8, scope: !6034)
!6053 = !DILocation(line: 818, column: 6, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 818, column: 6)
!6055 = !DILocation(line: 818, column: 6, scope: !6034)
!6056 = !DILocation(line: 820, column: 34, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 818, column: 12)
!6058 = !DILocation(line: 820, column: 40, scope: !6057)
!6059 = !DILocation(line: 820, column: 48, scope: !6057)
!6060 = !DILocation(line: 820, column: 55, scope: !6057)
!6061 = !DILocation(line: 820, column: 10, scope: !6057)
!6062 = !DILocation(line: 820, column: 8, scope: !6057)
!6063 = !DILocation(line: 821, column: 15, scope: !6057)
!6064 = !DILocation(line: 821, column: 3, scope: !6057)
!6065 = !DILocation(line: 822, column: 2, scope: !6057)
!6066 = !DILocation(line: 824, column: 29, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 822, column: 9)
!6068 = !DILocation(line: 824, column: 10, scope: !6067)
!6069 = !DILocation(line: 824, column: 8, scope: !6067)
!6070 = !DILocation(line: 827, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 827, column: 6)
!6072 = !DILocation(line: 827, column: 11, scope: !6071)
!6073 = !DILocation(line: 827, column: 6, scope: !6034)
!6074 = !DILocation(line: 828, column: 3, scope: !6071)
!6075 = !DILocation(line: 830, column: 9, scope: !6034)
!6076 = !DILocation(line: 830, column: 2, scope: !6034)
!6077 = !DILocation(line: 831, column: 1, scope: !6034)
!6078 = distinct !DISubprogram(name: "kmalloc_array", scope: !111, file: !111, line: 584, type: !5353, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6079 = !DILocalVariable(name: "s", arg: 1, scope: !6080, file: !111, line: 445, type: !903)
!6080 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !111, file: !111, line: 445, type: !6081, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!118, !903, !131, !296}
!6083 = !DILocation(line: 445, column: 72, scope: !6080, inlinedAt: !6084)
!6084 = distinct !DILocation(line: 552, column: 10, scope: !6085, inlinedAt: !6090)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !111, line: 540, column: 34)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !111, line: 540, column: 6)
!6087 = distinct !DISubprogram(name: "kmalloc", scope: !111, file: !111, line: 538, type: !6088, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!118, !296, !131}
!6090 = distinct !DILocation(line: 591, column: 10, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6078, file: !111, line: 590, column: 6)
!6092 = !DILocalVariable(name: "flags", arg: 2, scope: !6080, file: !111, line: 446, type: !131)
!6093 = !DILocation(line: 446, column: 9, scope: !6080, inlinedAt: !6084)
!6094 = !DILocalVariable(name: "size", arg: 3, scope: !6080, file: !111, line: 446, type: !296)
!6095 = !DILocation(line: 446, column: 23, scope: !6080, inlinedAt: !6084)
!6096 = !DILocalVariable(name: "ret", scope: !6080, file: !111, line: 448, type: !118)
!6097 = !DILocation(line: 448, column: 8, scope: !6080, inlinedAt: !6084)
!6098 = !DILocalVariable(name: "flags", arg: 1, scope: !6099, file: !111, line: 318, type: !131)
!6099 = distinct !DISubprogram(name: "kmalloc_type", scope: !111, file: !111, line: 318, type: !6100, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!110, !131}
!6102 = !DILocation(line: 318, column: 67, scope: !6099, inlinedAt: !6103)
!6103 = distinct !DILocation(line: 553, column: 20, scope: !6085, inlinedAt: !6090)
!6104 = !DILocalVariable(name: "size", arg: 1, scope: !6105, file: !111, line: 346, type: !296)
!6105 = distinct !DISubprogram(name: "kmalloc_index", scope: !111, file: !111, line: 346, type: !6106, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!7, !296}
!6108 = !DILocation(line: 346, column: 58, scope: !6105, inlinedAt: !6109)
!6109 = distinct !DILocation(line: 547, column: 11, scope: !6085, inlinedAt: !6090)
!6110 = !DILocalVariable(name: "size", arg: 1, scope: !6111, file: !111, line: 472, type: !296)
!6111 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !111, file: !111, line: 472, type: !6112, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!118, !296, !131, !7}
!6114 = !DILocation(line: 472, column: 28, scope: !6111, inlinedAt: !6115)
!6115 = distinct !DILocation(line: 481, column: 9, scope: !6116, inlinedAt: !6117)
!6116 = distinct !DISubprogram(name: "kmalloc_large", scope: !111, file: !111, line: 478, type: !6088, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6117 = distinct !DILocation(line: 545, column: 11, scope: !6118, inlinedAt: !6090)
!6118 = distinct !DILexicalBlock(scope: !6085, file: !111, line: 544, column: 7)
!6119 = !DILocalVariable(name: "flags", arg: 2, scope: !6111, file: !111, line: 472, type: !131)
!6120 = !DILocation(line: 472, column: 40, scope: !6111, inlinedAt: !6115)
!6121 = !DILocalVariable(name: "order", arg: 3, scope: !6111, file: !111, line: 472, type: !7)
!6122 = !DILocation(line: 472, column: 60, scope: !6111, inlinedAt: !6115)
!6123 = !DILocalVariable(name: "size", arg: 1, scope: !6116, file: !111, line: 478, type: !296)
!6124 = !DILocation(line: 478, column: 51, scope: !6116, inlinedAt: !6117)
!6125 = !DILocalVariable(name: "flags", arg: 2, scope: !6116, file: !111, line: 478, type: !131)
!6126 = !DILocation(line: 478, column: 63, scope: !6116, inlinedAt: !6117)
!6127 = !DILocalVariable(name: "order", scope: !6116, file: !111, line: 480, type: !7)
!6128 = !DILocation(line: 480, column: 15, scope: !6116, inlinedAt: !6117)
!6129 = !DILocalVariable(name: "size", arg: 1, scope: !6087, file: !111, line: 538, type: !296)
!6130 = !DILocation(line: 538, column: 45, scope: !6087, inlinedAt: !6090)
!6131 = !DILocalVariable(name: "flags", arg: 2, scope: !6087, file: !111, line: 538, type: !131)
!6132 = !DILocation(line: 538, column: 57, scope: !6087, inlinedAt: !6090)
!6133 = !DILocalVariable(name: "index", scope: !6085, file: !111, line: 542, type: !7)
!6134 = !DILocation(line: 542, column: 16, scope: !6085, inlinedAt: !6090)
!6135 = !DILocalVariable(name: "n", arg: 1, scope: !6078, file: !111, line: 584, type: !296)
!6136 = !DILocation(line: 584, column: 42, scope: !6078)
!6137 = !DILocalVariable(name: "size", arg: 2, scope: !6078, file: !111, line: 584, type: !296)
!6138 = !DILocation(line: 584, column: 52, scope: !6078)
!6139 = !DILocalVariable(name: "flags", arg: 3, scope: !6078, file: !111, line: 584, type: !131)
!6140 = !DILocation(line: 584, column: 64, scope: !6078)
!6141 = !DILocalVariable(name: "bytes", scope: !6078, file: !111, line: 586, type: !296)
!6142 = !DILocation(line: 586, column: 9, scope: !6078)
!6143 = !DILocalVariable(name: "__a", scope: !6144, file: !111, line: 588, type: !296)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !111, line: 588, column: 6)
!6145 = distinct !DILexicalBlock(scope: !6078, file: !111, line: 588, column: 6)
!6146 = !DILocation(line: 588, column: 6, scope: !6144)
!6147 = !DILocalVariable(name: "__b", scope: !6144, file: !111, line: 588, type: !296)
!6148 = !DILocalVariable(name: "__d", scope: !6144, file: !111, line: 588, type: !6149)
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!6150 = !DILocation(line: 588, column: 6, scope: !6145)
!6151 = !DILocation(line: 588, column: 6, scope: !6078)
!6152 = !DILocation(line: 589, column: 3, scope: !6145)
!6153 = !DILocation(line: 590, column: 27, scope: !6091)
!6154 = !DILocation(line: 590, column: 6, scope: !6091)
!6155 = !DILocation(line: 590, column: 30, scope: !6091)
!6156 = !DILocation(line: 590, column: 54, scope: !6091)
!6157 = !DILocation(line: 590, column: 33, scope: !6091)
!6158 = !DILocation(line: 590, column: 6, scope: !6078)
!6159 = !DILocation(line: 591, column: 18, scope: !6091)
!6160 = !DILocation(line: 591, column: 25, scope: !6091)
!6161 = !DILocation(line: 540, column: 27, scope: !6086, inlinedAt: !6090)
!6162 = !DILocation(line: 540, column: 6, scope: !6086, inlinedAt: !6090)
!6163 = !DILocation(line: 540, column: 6, scope: !6087, inlinedAt: !6090)
!6164 = !DILocation(line: 544, column: 7, scope: !6118, inlinedAt: !6090)
!6165 = !DILocation(line: 544, column: 12, scope: !6118, inlinedAt: !6090)
!6166 = !DILocation(line: 544, column: 7, scope: !6085, inlinedAt: !6090)
!6167 = !DILocation(line: 545, column: 25, scope: !6118, inlinedAt: !6090)
!6168 = !DILocation(line: 545, column: 31, scope: !6118, inlinedAt: !6090)
!6169 = !DILocation(line: 480, column: 33, scope: !6116, inlinedAt: !6117)
!6170 = !DILocation(line: 480, column: 23, scope: !6116, inlinedAt: !6117)
!6171 = !DILocation(line: 481, column: 29, scope: !6116, inlinedAt: !6117)
!6172 = !DILocation(line: 481, column: 35, scope: !6116, inlinedAt: !6117)
!6173 = !DILocation(line: 481, column: 42, scope: !6116, inlinedAt: !6117)
!6174 = !DILocation(line: 474, column: 23, scope: !6111, inlinedAt: !6115)
!6175 = !DILocation(line: 474, column: 29, scope: !6111, inlinedAt: !6115)
!6176 = !DILocation(line: 474, column: 36, scope: !6111, inlinedAt: !6115)
!6177 = !DILocation(line: 474, column: 9, scope: !6111, inlinedAt: !6115)
!6178 = !DILocation(line: 545, column: 4, scope: !6118, inlinedAt: !6090)
!6179 = !DILocation(line: 547, column: 25, scope: !6085, inlinedAt: !6090)
!6180 = !DILocation(line: 348, column: 7, scope: !6181, inlinedAt: !6109)
!6181 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 348, column: 6)
!6182 = !DILocation(line: 348, column: 6, scope: !6105, inlinedAt: !6109)
!6183 = !DILocation(line: 349, column: 3, scope: !6181, inlinedAt: !6109)
!6184 = !DILocation(line: 351, column: 6, scope: !6185, inlinedAt: !6109)
!6185 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 351, column: 6)
!6186 = !DILocation(line: 351, column: 11, scope: !6185, inlinedAt: !6109)
!6187 = !DILocation(line: 351, column: 6, scope: !6105, inlinedAt: !6109)
!6188 = !DILocation(line: 352, column: 3, scope: !6185, inlinedAt: !6109)
!6189 = !DILocation(line: 354, column: 32, scope: !6190, inlinedAt: !6109)
!6190 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 354, column: 6)
!6191 = !DILocation(line: 354, column: 37, scope: !6190, inlinedAt: !6109)
!6192 = !DILocation(line: 354, column: 42, scope: !6190, inlinedAt: !6109)
!6193 = !DILocation(line: 354, column: 45, scope: !6190, inlinedAt: !6109)
!6194 = !DILocation(line: 354, column: 50, scope: !6190, inlinedAt: !6109)
!6195 = !DILocation(line: 354, column: 6, scope: !6105, inlinedAt: !6109)
!6196 = !DILocation(line: 355, column: 3, scope: !6190, inlinedAt: !6109)
!6197 = !DILocation(line: 356, column: 32, scope: !6198, inlinedAt: !6109)
!6198 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 356, column: 6)
!6199 = !DILocation(line: 356, column: 37, scope: !6198, inlinedAt: !6109)
!6200 = !DILocation(line: 356, column: 43, scope: !6198, inlinedAt: !6109)
!6201 = !DILocation(line: 356, column: 46, scope: !6198, inlinedAt: !6109)
!6202 = !DILocation(line: 356, column: 51, scope: !6198, inlinedAt: !6109)
!6203 = !DILocation(line: 356, column: 6, scope: !6105, inlinedAt: !6109)
!6204 = !DILocation(line: 357, column: 3, scope: !6198, inlinedAt: !6109)
!6205 = !DILocation(line: 358, column: 6, scope: !6206, inlinedAt: !6109)
!6206 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 358, column: 6)
!6207 = !DILocation(line: 358, column: 11, scope: !6206, inlinedAt: !6109)
!6208 = !DILocation(line: 358, column: 6, scope: !6105, inlinedAt: !6109)
!6209 = !DILocation(line: 358, column: 26, scope: !6206, inlinedAt: !6109)
!6210 = !DILocation(line: 359, column: 6, scope: !6211, inlinedAt: !6109)
!6211 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 359, column: 6)
!6212 = !DILocation(line: 359, column: 11, scope: !6211, inlinedAt: !6109)
!6213 = !DILocation(line: 359, column: 6, scope: !6105, inlinedAt: !6109)
!6214 = !DILocation(line: 359, column: 26, scope: !6211, inlinedAt: !6109)
!6215 = !DILocation(line: 360, column: 6, scope: !6216, inlinedAt: !6109)
!6216 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 360, column: 6)
!6217 = !DILocation(line: 360, column: 11, scope: !6216, inlinedAt: !6109)
!6218 = !DILocation(line: 360, column: 6, scope: !6105, inlinedAt: !6109)
!6219 = !DILocation(line: 360, column: 26, scope: !6216, inlinedAt: !6109)
!6220 = !DILocation(line: 361, column: 6, scope: !6221, inlinedAt: !6109)
!6221 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 361, column: 6)
!6222 = !DILocation(line: 361, column: 11, scope: !6221, inlinedAt: !6109)
!6223 = !DILocation(line: 361, column: 6, scope: !6105, inlinedAt: !6109)
!6224 = !DILocation(line: 361, column: 26, scope: !6221, inlinedAt: !6109)
!6225 = !DILocation(line: 362, column: 6, scope: !6226, inlinedAt: !6109)
!6226 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 362, column: 6)
!6227 = !DILocation(line: 362, column: 11, scope: !6226, inlinedAt: !6109)
!6228 = !DILocation(line: 362, column: 6, scope: !6105, inlinedAt: !6109)
!6229 = !DILocation(line: 362, column: 26, scope: !6226, inlinedAt: !6109)
!6230 = !DILocation(line: 363, column: 6, scope: !6231, inlinedAt: !6109)
!6231 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 363, column: 6)
!6232 = !DILocation(line: 363, column: 11, scope: !6231, inlinedAt: !6109)
!6233 = !DILocation(line: 363, column: 6, scope: !6105, inlinedAt: !6109)
!6234 = !DILocation(line: 363, column: 26, scope: !6231, inlinedAt: !6109)
!6235 = !DILocation(line: 364, column: 6, scope: !6236, inlinedAt: !6109)
!6236 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 364, column: 6)
!6237 = !DILocation(line: 364, column: 11, scope: !6236, inlinedAt: !6109)
!6238 = !DILocation(line: 364, column: 6, scope: !6105, inlinedAt: !6109)
!6239 = !DILocation(line: 364, column: 26, scope: !6236, inlinedAt: !6109)
!6240 = !DILocation(line: 365, column: 6, scope: !6241, inlinedAt: !6109)
!6241 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 365, column: 6)
!6242 = !DILocation(line: 365, column: 11, scope: !6241, inlinedAt: !6109)
!6243 = !DILocation(line: 365, column: 6, scope: !6105, inlinedAt: !6109)
!6244 = !DILocation(line: 365, column: 26, scope: !6241, inlinedAt: !6109)
!6245 = !DILocation(line: 366, column: 6, scope: !6246, inlinedAt: !6109)
!6246 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 366, column: 6)
!6247 = !DILocation(line: 366, column: 11, scope: !6246, inlinedAt: !6109)
!6248 = !DILocation(line: 366, column: 6, scope: !6105, inlinedAt: !6109)
!6249 = !DILocation(line: 366, column: 26, scope: !6246, inlinedAt: !6109)
!6250 = !DILocation(line: 367, column: 6, scope: !6251, inlinedAt: !6109)
!6251 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 367, column: 6)
!6252 = !DILocation(line: 367, column: 11, scope: !6251, inlinedAt: !6109)
!6253 = !DILocation(line: 367, column: 6, scope: !6105, inlinedAt: !6109)
!6254 = !DILocation(line: 367, column: 26, scope: !6251, inlinedAt: !6109)
!6255 = !DILocation(line: 368, column: 6, scope: !6256, inlinedAt: !6109)
!6256 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 368, column: 6)
!6257 = !DILocation(line: 368, column: 11, scope: !6256, inlinedAt: !6109)
!6258 = !DILocation(line: 368, column: 6, scope: !6105, inlinedAt: !6109)
!6259 = !DILocation(line: 368, column: 26, scope: !6256, inlinedAt: !6109)
!6260 = !DILocation(line: 369, column: 6, scope: !6261, inlinedAt: !6109)
!6261 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 369, column: 6)
!6262 = !DILocation(line: 369, column: 11, scope: !6261, inlinedAt: !6109)
!6263 = !DILocation(line: 369, column: 6, scope: !6105, inlinedAt: !6109)
!6264 = !DILocation(line: 369, column: 26, scope: !6261, inlinedAt: !6109)
!6265 = !DILocation(line: 370, column: 6, scope: !6266, inlinedAt: !6109)
!6266 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 370, column: 6)
!6267 = !DILocation(line: 370, column: 11, scope: !6266, inlinedAt: !6109)
!6268 = !DILocation(line: 370, column: 6, scope: !6105, inlinedAt: !6109)
!6269 = !DILocation(line: 370, column: 26, scope: !6266, inlinedAt: !6109)
!6270 = !DILocation(line: 371, column: 6, scope: !6271, inlinedAt: !6109)
!6271 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 371, column: 6)
!6272 = !DILocation(line: 371, column: 11, scope: !6271, inlinedAt: !6109)
!6273 = !DILocation(line: 371, column: 6, scope: !6105, inlinedAt: !6109)
!6274 = !DILocation(line: 371, column: 26, scope: !6271, inlinedAt: !6109)
!6275 = !DILocation(line: 372, column: 6, scope: !6276, inlinedAt: !6109)
!6276 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 372, column: 6)
!6277 = !DILocation(line: 372, column: 11, scope: !6276, inlinedAt: !6109)
!6278 = !DILocation(line: 372, column: 6, scope: !6105, inlinedAt: !6109)
!6279 = !DILocation(line: 372, column: 26, scope: !6276, inlinedAt: !6109)
!6280 = !DILocation(line: 373, column: 6, scope: !6281, inlinedAt: !6109)
!6281 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 373, column: 6)
!6282 = !DILocation(line: 373, column: 11, scope: !6281, inlinedAt: !6109)
!6283 = !DILocation(line: 373, column: 6, scope: !6105, inlinedAt: !6109)
!6284 = !DILocation(line: 373, column: 26, scope: !6281, inlinedAt: !6109)
!6285 = !DILocation(line: 374, column: 6, scope: !6286, inlinedAt: !6109)
!6286 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 374, column: 6)
!6287 = !DILocation(line: 374, column: 11, scope: !6286, inlinedAt: !6109)
!6288 = !DILocation(line: 374, column: 6, scope: !6105, inlinedAt: !6109)
!6289 = !DILocation(line: 374, column: 26, scope: !6286, inlinedAt: !6109)
!6290 = !DILocation(line: 375, column: 6, scope: !6291, inlinedAt: !6109)
!6291 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 375, column: 6)
!6292 = !DILocation(line: 375, column: 11, scope: !6291, inlinedAt: !6109)
!6293 = !DILocation(line: 375, column: 6, scope: !6105, inlinedAt: !6109)
!6294 = !DILocation(line: 375, column: 27, scope: !6291, inlinedAt: !6109)
!6295 = !DILocation(line: 376, column: 6, scope: !6296, inlinedAt: !6109)
!6296 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 376, column: 6)
!6297 = !DILocation(line: 376, column: 11, scope: !6296, inlinedAt: !6109)
!6298 = !DILocation(line: 376, column: 6, scope: !6105, inlinedAt: !6109)
!6299 = !DILocation(line: 376, column: 32, scope: !6296, inlinedAt: !6109)
!6300 = !DILocation(line: 377, column: 6, scope: !6301, inlinedAt: !6109)
!6301 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 377, column: 6)
!6302 = !DILocation(line: 377, column: 11, scope: !6301, inlinedAt: !6109)
!6303 = !DILocation(line: 377, column: 6, scope: !6105, inlinedAt: !6109)
!6304 = !DILocation(line: 377, column: 32, scope: !6301, inlinedAt: !6109)
!6305 = !DILocation(line: 378, column: 6, scope: !6306, inlinedAt: !6109)
!6306 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 378, column: 6)
!6307 = !DILocation(line: 378, column: 11, scope: !6306, inlinedAt: !6109)
!6308 = !DILocation(line: 378, column: 6, scope: !6105, inlinedAt: !6109)
!6309 = !DILocation(line: 378, column: 32, scope: !6306, inlinedAt: !6109)
!6310 = !DILocation(line: 379, column: 6, scope: !6311, inlinedAt: !6109)
!6311 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 379, column: 6)
!6312 = !DILocation(line: 379, column: 11, scope: !6311, inlinedAt: !6109)
!6313 = !DILocation(line: 379, column: 6, scope: !6105, inlinedAt: !6109)
!6314 = !DILocation(line: 379, column: 33, scope: !6311, inlinedAt: !6109)
!6315 = !DILocation(line: 380, column: 6, scope: !6316, inlinedAt: !6109)
!6316 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 380, column: 6)
!6317 = !DILocation(line: 380, column: 11, scope: !6316, inlinedAt: !6109)
!6318 = !DILocation(line: 380, column: 6, scope: !6105, inlinedAt: !6109)
!6319 = !DILocation(line: 380, column: 33, scope: !6316, inlinedAt: !6109)
!6320 = !DILocation(line: 381, column: 6, scope: !6321, inlinedAt: !6109)
!6321 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 381, column: 6)
!6322 = !DILocation(line: 381, column: 11, scope: !6321, inlinedAt: !6109)
!6323 = !DILocation(line: 381, column: 6, scope: !6105, inlinedAt: !6109)
!6324 = !DILocation(line: 381, column: 33, scope: !6321, inlinedAt: !6109)
!6325 = !DILocation(line: 382, column: 2, scope: !6326, inlinedAt: !6109)
!6326 = distinct !DILexicalBlock(scope: !6327, file: !111, line: 382, column: 2)
!6327 = distinct !DILexicalBlock(scope: !6105, file: !111, line: 382, column: 2)
!6328 = !{i32 -2143176370, i32 -2143176341, i32 -2143176295, i32 -2143176237, i32 -2143176183, i32 -2143176129, i32 -2143176074, i32 -2143176043}
!6329 = !DILocation(line: 382, column: 2, scope: !6330, inlinedAt: !6109)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !111, line: 382, column: 2)
!6331 = distinct !DILexicalBlock(scope: !6327, file: !111, line: 382, column: 2)
!6332 = !{i32 -2143175600, i32 -2143175593, i32 -2143175539, i32 -2143175508, i32 -2143175478}
!6333 = !DILocation(line: 382, column: 2, scope: !6331, inlinedAt: !6109)
!6334 = !DILocation(line: 386, column: 1, scope: !6105, inlinedAt: !6109)
!6335 = !DILocation(line: 547, column: 9, scope: !6085, inlinedAt: !6090)
!6336 = !DILocation(line: 549, column: 8, scope: !6337, inlinedAt: !6090)
!6337 = distinct !DILexicalBlock(scope: !6085, file: !111, line: 549, column: 7)
!6338 = !DILocation(line: 549, column: 7, scope: !6085, inlinedAt: !6090)
!6339 = !DILocation(line: 550, column: 4, scope: !6337, inlinedAt: !6090)
!6340 = !DILocation(line: 553, column: 33, scope: !6085, inlinedAt: !6090)
!6341 = !DILocation(line: 325, column: 6, scope: !6342, inlinedAt: !6103)
!6342 = distinct !DILexicalBlock(scope: !6099, file: !111, line: 325, column: 6)
!6343 = !DILocation(line: 325, column: 6, scope: !6099, inlinedAt: !6103)
!6344 = !DILocation(line: 326, column: 3, scope: !6342, inlinedAt: !6103)
!6345 = !DILocation(line: 332, column: 9, scope: !6099, inlinedAt: !6103)
!6346 = !DILocation(line: 332, column: 15, scope: !6099, inlinedAt: !6103)
!6347 = !DILocation(line: 332, column: 2, scope: !6099, inlinedAt: !6103)
!6348 = !DILocation(line: 336, column: 1, scope: !6099, inlinedAt: !6103)
!6349 = !DILocation(line: 553, column: 5, scope: !6085, inlinedAt: !6090)
!6350 = !DILocation(line: 553, column: 41, scope: !6085, inlinedAt: !6090)
!6351 = !DILocation(line: 554, column: 5, scope: !6085, inlinedAt: !6090)
!6352 = !DILocation(line: 554, column: 12, scope: !6085, inlinedAt: !6090)
!6353 = !DILocation(line: 448, column: 31, scope: !6080, inlinedAt: !6084)
!6354 = !DILocation(line: 448, column: 34, scope: !6080, inlinedAt: !6084)
!6355 = !DILocation(line: 448, column: 14, scope: !6080, inlinedAt: !6084)
!6356 = !DILocation(line: 450, column: 22, scope: !6080, inlinedAt: !6084)
!6357 = !DILocation(line: 450, column: 25, scope: !6080, inlinedAt: !6084)
!6358 = !DILocation(line: 450, column: 30, scope: !6080, inlinedAt: !6084)
!6359 = !DILocation(line: 450, column: 36, scope: !6080, inlinedAt: !6084)
!6360 = !DILocation(line: 450, column: 8, scope: !6080, inlinedAt: !6084)
!6361 = !DILocation(line: 450, column: 6, scope: !6080, inlinedAt: !6084)
!6362 = !DILocation(line: 451, column: 9, scope: !6080, inlinedAt: !6084)
!6363 = !DILocation(line: 552, column: 3, scope: !6085, inlinedAt: !6090)
!6364 = !DILocation(line: 557, column: 19, scope: !6087, inlinedAt: !6090)
!6365 = !DILocation(line: 557, column: 25, scope: !6087, inlinedAt: !6090)
!6366 = !DILocation(line: 557, column: 9, scope: !6087, inlinedAt: !6090)
!6367 = !DILocation(line: 557, column: 2, scope: !6087, inlinedAt: !6090)
!6368 = !DILocation(line: 558, column: 1, scope: !6087, inlinedAt: !6090)
!6369 = !DILocation(line: 591, column: 3, scope: !6091)
!6370 = !DILocation(line: 592, column: 19, scope: !6078)
!6371 = !DILocation(line: 592, column: 26, scope: !6078)
!6372 = !DILocation(line: 592, column: 9, scope: !6078)
!6373 = !DILocation(line: 592, column: 2, scope: !6078)
!6374 = !DILocation(line: 593, column: 1, scope: !6078)
!6375 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6376, file: !6376, line: 52, type: !6377, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6376 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6377 = !DISubroutineType(types: !6378)
!6378 = !{!140, !140}
!6379 = !DILocalVariable(name: "overflow", arg: 1, scope: !6375, file: !6376, line: 52, type: !140)
!6380 = !DILocation(line: 52, column: 60, scope: !6375)
!6381 = !DILocation(line: 54, column: 9, scope: !6375)
!6382 = !DILocation(line: 54, column: 2, scope: !6375)
!6383 = distinct !DISubprogram(name: "get_order", scope: !6384, file: !6384, line: 29, type: !6385, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6384 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!132, !123}
!6387 = !DILocalVariable(name: "x", arg: 1, scope: !6388, file: !6389, line: 366, type: !129)
!6388 = distinct !DISubprogram(name: "fls64", scope: !6389, file: !6389, line: 366, type: !6390, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6389 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!132, !129}
!6392 = !DILocation(line: 366, column: 40, scope: !6388, inlinedAt: !6393)
!6393 = distinct !DILocation(line: 46, column: 9, scope: !6383)
!6394 = !DILocalVariable(name: "bitpos", scope: !6388, file: !6389, line: 368, type: !132)
!6395 = !DILocation(line: 368, column: 6, scope: !6388, inlinedAt: !6393)
!6396 = !DILocalVariable(name: "size", arg: 1, scope: !6383, file: !6384, line: 29, type: !123)
!6397 = !DILocation(line: 29, column: 63, scope: !6383)
!6398 = !DILocation(line: 31, column: 27, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6383, file: !6384, line: 31, column: 6)
!6400 = !DILocation(line: 31, column: 6, scope: !6399)
!6401 = !DILocation(line: 31, column: 6, scope: !6383)
!6402 = !DILocation(line: 32, column: 8, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !6384, line: 32, column: 7)
!6404 = distinct !DILexicalBlock(scope: !6399, file: !6384, line: 31, column: 34)
!6405 = !DILocation(line: 32, column: 7, scope: !6404)
!6406 = !DILocation(line: 33, column: 4, scope: !6403)
!6407 = !DILocation(line: 35, column: 7, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6404, file: !6384, line: 35, column: 7)
!6409 = !DILocation(line: 35, column: 12, scope: !6408)
!6410 = !DILocation(line: 35, column: 7, scope: !6404)
!6411 = !DILocation(line: 36, column: 4, scope: !6408)
!6412 = !DILocation(line: 38, column: 10, scope: !6404)
!6413 = !DILocation(line: 38, column: 28, scope: !6404)
!6414 = !DILocation(line: 38, column: 41, scope: !6404)
!6415 = !DILocation(line: 38, column: 3, scope: !6404)
!6416 = !DILocation(line: 41, column: 6, scope: !6383)
!6417 = !DILocation(line: 42, column: 7, scope: !6383)
!6418 = !DILocation(line: 46, column: 15, scope: !6383)
!6419 = !DILocation(line: 374, column: 2, scope: !6388, inlinedAt: !6393)
!6420 = !DILocation(line: 376, column: 14, scope: !6388, inlinedAt: !6393)
!6421 = !{i32 401808}
!6422 = !DILocation(line: 377, column: 9, scope: !6388, inlinedAt: !6393)
!6423 = !DILocation(line: 377, column: 16, scope: !6388, inlinedAt: !6393)
!6424 = !DILocation(line: 46, column: 2, scope: !6383)
!6425 = !DILocation(line: 48, column: 1, scope: !6383)
!6426 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6427, file: !6427, line: 30, type: !6428, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6427 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!132, !127}
!6430 = !DILocation(line: 366, column: 40, scope: !6388, inlinedAt: !6431)
!6431 = distinct !DILocation(line: 32, column: 9, scope: !6426)
!6432 = !DILocation(line: 368, column: 6, scope: !6388, inlinedAt: !6431)
!6433 = !DILocalVariable(name: "n", arg: 1, scope: !6426, file: !6427, line: 30, type: !127)
!6434 = !DILocation(line: 30, column: 21, scope: !6426)
!6435 = !DILocation(line: 32, column: 15, scope: !6426)
!6436 = !DILocation(line: 374, column: 2, scope: !6388, inlinedAt: !6431)
!6437 = !DILocation(line: 376, column: 14, scope: !6388, inlinedAt: !6431)
!6438 = !DILocation(line: 377, column: 9, scope: !6388, inlinedAt: !6431)
!6439 = !DILocation(line: 377, column: 16, scope: !6388, inlinedAt: !6431)
!6440 = !DILocation(line: 32, column: 18, scope: !6426)
!6441 = !DILocation(line: 32, column: 2, scope: !6426)
!6442 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6443, file: !6443, line: 137, type: !6444, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!6443 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6444 = !DISubroutineType(types: !6445)
!6445 = !{!118, !903, !183, !296, !131}
!6446 = !DILocalVariable(name: "s", arg: 1, scope: !6442, file: !6443, line: 137, type: !903)
!6447 = !DILocation(line: 137, column: 54, scope: !6442)
!6448 = !DILocalVariable(name: "object", arg: 2, scope: !6442, file: !6443, line: 137, type: !183)
!6449 = !DILocation(line: 137, column: 69, scope: !6442)
!6450 = !DILocalVariable(name: "size", arg: 3, scope: !6442, file: !6443, line: 138, type: !296)
!6451 = !DILocation(line: 138, column: 12, scope: !6442)
!6452 = !DILocalVariable(name: "flags", arg: 4, scope: !6442, file: !6443, line: 138, type: !131)
!6453 = !DILocation(line: 138, column: 24, scope: !6442)
!6454 = !DILocation(line: 140, column: 17, scope: !6442)
!6455 = !DILocation(line: 140, column: 2, scope: !6442)
